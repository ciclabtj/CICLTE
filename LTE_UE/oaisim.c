#include <string.h>
#include <math.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cblas.h>
#include <execinfo.h>

#define __USE_GNU
#include <sched.h>
#include <pthread.h>
#include "event_handler.h"
#include "SIMULATION/RF/defs.h"
#include "PHY/types.h"
#include "PHY/defs.h"
#include "PHY/LTE_TRANSPORT/proto.h"
#include "PHY/vars.h"
#include "MAC_INTERFACE/vars.h"

#include "SIMULATION/ETH_TRANSPORT/proto.h"

//#ifdef OPENAIR2
#include "LAYER2/MAC/defs.h"
#include "LAYER2/MAC/proto.h"
#include "LAYER2/MAC/vars.h"
#include "pdcp.h"
#ifndef CELLULAR
#include "RRC/LITE/vars.h"
#endif
#include "PHY_INTERFACE/vars.h"
//#endif
#include "RRC/NAS/nas_config.h"

#include "SCHED/defs.h"
#include "SCHED/vars.h"

#include "oaisim_functions.h"

#include "oaisim.h"
#include "oaisim_config.h"
#include "UTIL/OCG/OCG_extern.h"
#include "cor_SF_sim.h"
#include "UTIL/OMG/omg_constants.h"
#include "UTIL/FIFO/pad_list.h"
#include "enb_app.h"

#include "PROC/interface.h"
#include "PROC/channel_sim_proc.h"
#include "PROC/Tsync.h"
#include "PROC/Process.h"

#include "UTIL/LOG/vcd_signal_dumper.h"
#include "UTIL/OTG/otg_kpi.h"
#include "assertions.h"
#include "ad9361/platform.h"
#include <semaphore.h>
#include "ad9361/pdma-ioctl.h"
#define AFC
#define UL_RB_ALLOC            computeRIV(lte_frame_parms->N_RB_UL,0,24)
#define CCCH_RB_ALLOC          computeRIV(lte_frame_parms->N_RB_UL,0,3)
#define RA_RB_ALLOC            computeRIV(lte_frame_parms->N_RB_UL,0,3)
#define DLSCH_RB_ALLOC         0x1fff

#define DECOR_DIST             100
#define SF_VAR                 10

frame_t frame = 0;
char stats_buffer[16384];
channel_desc_t *eNB2UE[NUMBER_OF_eNB_MAX][NUMBER_OF_UE_MAX][MAX_NUM_CCs];
channel_desc_t *UE2eNB[NUMBER_OF_UE_MAX][NUMBER_OF_eNB_MAX][MAX_NUM_CCs];
//Added for PHY abstraction
node_desc_t *enb_data[NUMBER_OF_eNB_MAX];
node_desc_t *ue_data[NUMBER_OF_UE_MAX];
// Added for PHY abstraction
extern node_list* ue_node_list;
extern node_list* enb_node_list;
extern int pdcp_period, omg_period;

extern double **s_re, **s_im, **r_re, **r_im, **r_re0, **r_im0;
int map1, map2;
extern double **ShaF;
double snr_dB, sinr_dB, snr_direction; //,sinr_direction;
extern double snr_step;
extern uint8_t set_sinr;
extern uint8_t ue_connection_test;
extern uint8_t set_seed;
extern uint8_t target_dl_mcs;
extern uint8_t target_ul_mcs;
extern uint8_t abstraction_flag;
extern uint8_t ethernet_flag;
extern uint16_t Nid_cell;

extern LTE_DL_FRAME_PARMS *frame_parms[MAX_NUM_CCs];

int ra_success_flag = 0;

int ue_SI_flag = 0;
int rtime = 0;
//make change zyb

int **Enb_rxBuf;
int **Enb_txBuf;
int Tx_number = 0, Rx_number = 0;
sem_t Tx_number_mutex, Rx_number_mutex, empty;

sem_t TA_send, tx_thread_send;
//sem_t ra_success_mutex;
//int TA_adjust = 0;
unsigned int Tx_head, Tx_tail, Rx_head, Rx_tail;
int queue_max = 16;

void init_EnbBuf(int N) {
    int i;
    Enb_rxBuf = (int **) malloc(sizeof (int *)*N);
    Enb_txBuf = (int **) malloc(sizeof (int *)*N);
    for (i = 0; i < N; i++) {
        Enb_rxBuf[i] = (int *) malloc(sizeof (int)*LENGTHOFFRAME);
        Enb_txBuf[i] = (int *) malloc(sizeof (int)*LENGTHOFFRAME * 2);
    }
    sem_init(&Rx_number_mutex, 0, 1);
    sem_init(&Tx_number_mutex, 0, 1);
    //sem_init(&TA_adjust, 0, 1);

    sem_init(&TA_send, 0, 1);
    sem_init(&tx_thread_send, 0, 1);


    //    sem_init(&ra_success_mutex, 0, 1);
    //    sem_wait(&ra_success_mutex);

    sem_init(&empty, 0, 0);
    Tx_head = 0;
    Tx_tail = 0;
    Rx_head = 0;
    Rx_tail = 0;

}

/*seconds: the seconds; mseconds: the micro seconds*/
void setTimer(int seconds, int mseconds) {
    struct timeval temp;
    temp.tv_sec = seconds;
    temp.tv_usec = mseconds;
    select(0, NULL, NULL, NULL, &temp);
    return;
}

static void *txtimer(void *argc) {

    //    cpu_set_t mask_send;
    //    CPU_ZERO(&mask_send);
    //    CPU_SET(2, &mask_send);
    //    pthread_setaffinity_np(pthread_self(), sizeof (mask_send), &mask_send);

    struct timespec start_time, end_time;
    int *tx_empty_packet;
    tx_empty_packet = (int *) malloc(sizeof (int)*LENGTHOFFRAME * 2);
    short *temp = (short *) &tx_empty_packet[0];

    FILE *fp = fopen("cxh_data/USER1TX_DATA", "r");
    for (int i = 0; i < LENGTHOFFRAME * 2; i++)
        fscanf(fp, "%hd %hd", &temp[i << 1], &temp[(i << 1) + 1]);
    fclose(fp);

    struct pdma_stat stat;
    int fd;
    fd = open("/dev/pdma", O_RDWR);

    int last_frame[76800 * 2];
    int data_to_send[76800 * 2];
    while (1) {
        clock_gettime(CLOCK_REALTIME, &start_time);

        FILE *ue_tx_pdma_info = fopen("TIME/ue_tx_pdma_info", "a+");
        ioctl(fd, PDMA_IOC_STAT, (unsigned long) &stat);
         fprintf(ue_tx_pdma_info, " wt_free_cnt =  %d             wt_submit_cnt  =  %d              wt_pending_cnt =  %d\n", stat.wt_free_cnt, stat.wt_submit_cnt, stat.wt_pending_cnt);
        fclose(ue_tx_pdma_info);

        sem_wait(&TA_send);
        sem_wait(&tx_thread_send);

        if (Tx_number == 0) {
            memcpy(tx_empty_packet, &last_frame[0], LENGTHOFFRAME * 2 * sizeof (int));
            tx_sentbuf(tx_empty_packet, LENGTHOFFRAME * 4 * 2);
        } else {
            sem_wait(&Tx_number_mutex);
            memcpy(&data_to_send[0], Enb_txBuf[Tx_head], LENGTHOFFRAME * 2 * sizeof (int));
            Tx_head = (++Tx_head) % queue_max;
            Tx_number--;
            sem_post(&Tx_number_mutex);

            memcpy(&last_frame[0], &data_to_send[0], LENGTHOFFRAME * 2 * sizeof (int));
            tx_sentbuf(&data_to_send[0], LENGTHOFFRAME * 4 * 2);

        }

        sem_post(&tx_thread_send);
        sem_post(&TA_send);
        

        clock_gettime(CLOCK_REALTIME, &end_time);
        int time_max = 19800;
        fflush(stdout);
        int tx_wait = time_max - diff_time(end_time, start_time).tv_nsec / 1000;
        if (tx_wait < 0)
            tx_wait = 0;
        setTimer(0, tx_wait);
    }
}

static void *rxtimer(void *argc) {


    //    cpu_set_t mask_send;
    //    CPU_ZERO(&mask_send);
    //    CPU_SET(4, &mask_send);
    //    pthread_setaffinity_np(pthread_self(), sizeof (mask_send), &mask_send);

    int *rx_empty_packet;
    rx_empty_packet = (int *) malloc(sizeof (int)*LENGTHOFFRAME);
    struct timespec start_time, end_time;
    struct pdma_stat stat;
    int fd;
    fd = open("/dev/pdma", O_RDWR);

    int data_rec[76800];
    while (1) {

        clock_gettime(CLOCK_REALTIME, &start_time);

        if (ra_success_flag == 1) { 
            FILE *ue_rx_pdma_info = fopen("TIME/ue_rx_pdma_info", "a+");
            ioctl(fd, PDMA_IOC_STAT, (unsigned long) &stat);
            fprintf(ue_rx_pdma_info, " rd_free_cnt =  %d             rd_submit_cnt  =  %d              rd_pending_cnt =  %d\n ", stat.rd_free_cnt, stat.rd_submit_cnt, stat.rd_pending_cnt);
            fclose(ue_rx_pdma_info);
           
            if (Rx_number == queue_max) {
                rx_getbuf(rx_empty_packet, LENGTHOFFRAME * 4);
            } else {
                rx_getbuf(data_rec, LENGTHOFFRAME * 4);

                sem_wait(&Rx_number_mutex);
                memcpy(Enb_rxBuf[Rx_head], data_rec, LENGTHOFFRAME * 4);
                Rx_head = (++Rx_head) % queue_max;
                Rx_number++;
                sem_post(&Rx_number_mutex);
            }           

        } else {            
            ;
        }
        clock_gettime(CLOCK_REALTIME, &end_time);
        int time_max = 19940;
        printf("rx wait time:%d\n", time_max - diff_time(end_time, start_time).tv_nsec / 1000);
        int rx_wait = time_max - diff_time(end_time, start_time).tv_nsec / 1000;
        if (rx_wait < 0)rx_wait = 0;
        setTimer(0, rx_wait);
    }
}

int init_pthread_timer() {

    pthread_t pid_rxtimer, pid_txtimer;
    void *retval;

    int err_code;

    init_EnbBuf(queue_max);


    err_code = pthread_create(&pid_txtimer, NULL, txtimer, (void *) 0);

    if (err_code != 0) {
        printf("Could not allocate err code, error %d\n", err_code);
        return (err_code);
    } else {
        printf("allocate set_time_thread  tx   successfully!\n");
    }


    err_code = pthread_create(&pid_rxtimer, NULL, rxtimer, (void *) 0);

    if (err_code != 0) {
        printf("Could not allocate err code, error %d\n", err_code);
        return (err_code);
    } else {
        printf("allocate set_time_thread  rx   successfully!\n");
    }
    return 0;
}

struct timespec diff_time(struct timespec end_time, struct timespec start_time) {

    struct timespec temp;
    if (end_time.tv_nsec - start_time.tv_nsec < 0) {
        temp.tv_sec = end_time.tv_sec - start_time.tv_sec - 1;
        temp.tv_nsec = 1000000000 + end_time.tv_nsec - start_time.tv_nsec;
    } else {
        temp.tv_sec = end_time.tv_sec - start_time.tv_sec;
        temp.tv_nsec = end_time.tv_nsec - start_time.tv_nsec;
    }
    return temp;

}



time_stats_t oaisim_stats;
time_stats_t oaisim_stats_f;
time_stats_t dl_chan_stats;
time_stats_t ul_chan_stats;

// this should reflect the channel models in openair1/SIMULATION/TOOLS/defs.h
mapping small_scale_names[] = {
    { "custom", custom},
    { "SCM_A", SCM_A},
    { "SCM_B", SCM_B},
    { "SCM_C", SCM_C},
    { "SCM_D", SCM_D},
    { "EPA", EPA},
    { "EVA", EVA},
    { "ETU", ETU},
    { "MBSFN", MBSFN},
    { "Rayleigh8", Rayleigh8},
    { "Rayleigh1", Rayleigh1},
    { "Rayleigh1_800", Rayleigh1_800},
    { "Rayleigh1_corr", Rayleigh1_corr},
    { "Rayleigh1_anticorr", Rayleigh1_anticorr},
    { "Rice8", Rice8},
    { "Rice1", Rice1},
    { "Rice1_corr", Rice1_corr},
    { "Rice1_anticorr", Rice1_anticorr},
    { "AWGN", AWGN},
    { NULL, -1}
};
#if !defined(ENABLE_ITTI)
static void *
sigh(void *arg);
#endif
void
oai_shutdown(void);

void
help(void) {
    printf("Usage: oaisim -h -a -F -C tdd_config -K [log_file] -V [vcd_file] -R N_RB_DL -e -x transmission_mode -m target_dl_mcs -r(ate_adaptation) -n n_frames -s snr_dB -k ricean_factor -t max_delay -f forgetting factor -A channel_model -z cooperation_flag -u nb_local_ue -U UE mobility -b nb_local_enb -B eNB_mobility -M ethernet_flag -p nb_master -g multicast_group -l log_level -c ocg_enable -T traffic model -D multicast network device\n");

    printf("-h provides this help message!\n");
    printf("-a Activates PHY abstraction mode\n");
    printf("-A set the multipath channel simulation,  options are: SCM_A, SCM_B, SCM_C, SCM_D, EPA, EVA, ETU, Rayleigh8, Rayleigh1, Rayleigh1_corr,Rayleigh1_anticorr, Rice8,, Rice1, AWGN \n");
    printf("-b Set the number of local eNB\n");
    printf("-B Set the mobility model for eNB, options are: STATIC, RWP, RWALK, \n");
    printf("-c [1,2,3,4] Activate the config generator (OCG) to process the scenario descriptor, or give the scenario manually: -c template_1.xml \n");
    printf("-C [0-6] Sets TDD configuration\n");
    printf("-e Activates extended prefix mode\n");
    printf("-E Random number generator seed\n");
    printf("-f Set the forgetting factor for time-variation\n");
    printf("-F Activates FDD transmission (TDD is default)\n");
    printf("-g Set multicast group ID (0,1,2,3) - valid if M is set\n");
    printf("-G Enable background traffic \n");
    printf("-H Enable handover operation (default disabled) \n");
    printf("-I Enable CLI interface (to connect use telnet localhost 1352)\n");
    printf("-k Set the Ricean factor (linear)\n");
    printf("-K [log_file] Enable ITTI logging into log_file\n");
    printf("-l Set the global log level (8:trace, 7:debug, 6:info, 4:warn, 3:error) \n");
    printf("-L [0-1] 0 to disable new link adaptation, 1 to enable new link adapatation\n");
    printf("-m Gives a fixed DL mcs for eNB scheduler\n");
    printf("-M Set the machine ID for Ethernet-based emulation\n");
    printf("-n Set the number of frames for the simulation\n");
    printf("-O [enb_conf_file] eNB configuration file name\n");
    printf("-p Set the total number of machine in emulation - valid if M is set\n");
    printf("-P [trace type] Enable protocol analyzer. Possible values for OPT:\n");
    printf("    - wireshark: Enable tracing of layers above PHY using an UDP socket\n");
    printf("    - pcap:      Enable tracing of layers above PHY to a pcap file\n");
    printf("    - tshark:    Not implemented yet\n");
    printf("-q Enable Openair performance profiler \n");
    printf("-Q Activate and set the MBMS service: 0 : not used (default eMBMS disabled), 1: eMBMS and RRC Connection enabled, 2: eMBMS relaying and RRC Connection enabled, 3: eMBMS enabled, RRC Connection disabled, 4: eMBMS relaying enabled, RRC Connection disabled\n");
    printf("-R [6,15,25,50,75,100] Sets N_RB_DL\n");
    printf("-r Activates rate adaptation (DL for now)\n");
    printf("-s snr_dB set a fixed (average) SNR, this deactivates the openair channel model generator (OCM)\n");
    printf("-S snir_dB set a fixed (average) SNIR, this deactivates the openair channel model generator (OCM)\n");
    printf("-t Gives a fixed UL mcs for eNB scheduler\n");
    printf("-T activate the traffic generator. Valide options are m2m,scbr,mcbr,bcbr,auto_pilot,bicycle_race,open_arena,team_fortress,m2m_traffic,auto_pilot_l,auto_pilot_m,auto_pilot_h,auto_pilot_e,virtual_game_l,virtual_game_m,virtual_game_h,virtual_game_f,alarm_humidity,alarm_smoke,alarm_temperature,openarena_dl,openarena_ul,voip_g711,voip_g729,video_vbr_10mbps,video_vbr_4mbps,video_vbr_2mbp,video_vbr_768kbps,video_vbr_384kbps,video_vbr_192kpbs,background_users\n");
    printf("-u Set the number of local UE\n");
    printf("-U Set the mobility model for UE, options are: STATIC, RWP, RWALK\n");
    printf("-V [vcd_file] Enable VCD dump into vcd_file\n");
    printf("-w number of CBA groups, if not specified or zero, CBA is inactive\n");
#ifdef SMBV
    printf("-W IP address to connect to Rohde&Schwarz SMBV100A and configure SMBV from config file. -W0 uses default IP 192.168.12.201\n");
#else
    printf("-W [Rohde&Schwarz SMBV100A functions disabled. Recompile with SMBV=1]\n");
#endif
    printf("-x Set the transmission mode (1,2,5,6 supported for now)\n");
    printf("-Y Set the global log verbosity (none, low, medium, high, full) \n");
    printf("-z Set the cooperation flag (0 for no cooperation, 1 for delay diversity and 2 for distributed alamouti\n");
    printf("-Z Reserved\n");
}

pthread_t log_thread;

void
log_thread_init(void) {
    //create log_list
    //log_list_init(&log_list);
#ifndef LOG_NO_THREAD

    log_shutdown = 0;

    if ((pthread_mutex_init(&log_lock, NULL) != 0)
            || (pthread_cond_init(&log_notify, NULL) != 0)) {
        return;
    }

    if (pthread_create(&log_thread, NULL, log_thread_function, (void*) NULL)
            != 0) {
        log_thread_finalize();
        return;
    }

#endif

}

//Call it after the last LOG call

int
log_thread_finalize(void) {
    int err = 0;

#ifndef LOG_NO_THREAD

    if (pthread_mutex_lock(&log_lock) != 0) {
        return -1;
    }

    log_shutdown = 1;

    /* Wake up LOG thread */
    if ((pthread_cond_broadcast(&log_notify) != 0)
            || (pthread_mutex_unlock(&log_lock) != 0)) {
        err = -1;
    }

    if (pthread_join(log_thread, NULL) != 0) {
        err = -1;
    }

    if (pthread_mutex_unlock(&log_lock) != 0) {
        err = -1;
    }

    if (!err) {
        //log_list_free(&log_list);
        pthread_mutex_lock(&log_lock);
        pthread_mutex_destroy(&log_lock);
        pthread_cond_destroy(&log_notify);
    }

#endif

    return err;
}

double freq_offset_est_frac(short *data, int FFT_Size, double Samplefreq) {


    double rx_CP1_re, rx_CP1_im;
    double rx_CP2_re, rx_CP2_im;
    int i;
    double sum_re = 0;
    double sum_im = 0;
    double Temp_re, Temp_im;
    double frac;
    for (i = 0; i < FFT_Size; i++) {
        if ((i >= 0 && i < 40) || (i >= 148 && i < 184) || (i >= 256 && i < 296) || (i >= 404 && i < 440)) {
            //  if(i >= 0 && i < 40){
            rx_CP1_re = (double) data[2 * (Index_extractCP[i])];
            rx_CP1_im = (double) data[2 * (Index_extractCP[i]) + 1];
            rx_CP2_re = (double) data[2 * (Index_extractCP[i] + FFT_Size)];
            rx_CP2_im = (double) data[2 * (Index_extractCP[i] + FFT_Size) + 1];
            Temp_re = (rx_CP1_re * rx_CP2_re + rx_CP1_im * rx_CP2_im); ///32768.0;
            Temp_im = (rx_CP2_re * rx_CP1_im - rx_CP1_re * rx_CP2_im); ///32768.0;
            //frac = (atan2((double)Temp_im, (double)Temp_re)) / 2.0 / M_PI;
            //printf("im: %f,re:%f\n",Temp_re,Temp_im);
            //printf("frac pre : %f\n",frac/512.0);
            sum_re += Temp_re;
            sum_im += Temp_im;
        }
    }
    frac = (-atan2((double) sum_im, (double) sum_re)) / 2.0 / M_PI;

    //printf("im2: %f,re2:%f\n",sum_im,sum_re);
    //printf("frac : %f\n",atan2((double)sum_im, (double)sum_re));;
    return (frac / FFT_Size * Samplefreq);
    // return (frac/512.0);///512.0;//*(Samplefreq/FFT_Size);
}

#ifdef OPENAIR2

int omv_write(int pfd, node_list* enb_node_list, node_list* ue_node_list, Data_Flow_Unit omv_data) {
    module_id_t i, j;
    omv_data.end = 0;

    //omv_data.total_num_nodes = NB_UE_INST + NB_eNB_INST;
    for (i = 0; i < NB_eNB_INST; i++) {
        if (enb_node_list != NULL) {
            omv_data.geo[i].x = (enb_node_list->node->x_pos < 0.0) ? 0.0 : enb_node_list->node->x_pos;
            omv_data.geo[i].y = (enb_node_list->node->y_pos < 0.0) ? 0.0 : enb_node_list->node->y_pos;
            omv_data.geo[i].z = 1.0;
            omv_data.geo[i].mobility_type = oai_emulation.info.omg_model_enb;
            omv_data.geo[i].node_type = 0; //eNB
            enb_node_list = enb_node_list->next;
            omv_data.geo[i].Neighbors = 0;

            for (j = NB_eNB_INST; j < NB_UE_INST + NB_eNB_INST; j++) {
                if (is_UE_active(i, j - NB_eNB_INST) == 1) {
                    omv_data.geo[i].Neighbor[omv_data.geo[i].Neighbors] = j;
                    omv_data.geo[i].Neighbors++;
                    LOG_D(
                            OMG,
                            "[eNB %d][UE %d] is_UE_active(i,j) %d geo (x%d, y%d) num neighbors %d\n", i, j - NB_eNB_INST, is_UE_active(i, j - NB_eNB_INST), omv_data.geo[i].x, omv_data.geo[i].y, omv_data.geo[i].Neighbors);
                }
            }
        }
    }

    for (i = NB_eNB_INST; i < NB_UE_INST + NB_eNB_INST; i++) {
        if (ue_node_list != NULL) {
            omv_data.geo[i].x = (ue_node_list->node->x_pos < 0.0) ? 0.0 : ue_node_list->node->x_pos;
            omv_data.geo[i].y = (ue_node_list->node->y_pos < 0.0) ? 0.0 : ue_node_list->node->y_pos;
            omv_data.geo[i].z = 1.0;
            omv_data.geo[i].mobility_type = oai_emulation.info.omg_model_ue;
            omv_data.geo[i].node_type = 1; //UE
            //trial
            omv_data.geo[i].state = 1;
            omv_data.geo[i].rnti = 88;
            omv_data.geo[i].connected_eNB = 0;
            omv_data.geo[i].RSRP = 66;
            omv_data.geo[i].RSRQ = 55;
            omv_data.geo[i].Pathloss = 44;
            omv_data.geo[i].RSSI[0] = 33;
            omv_data.geo[i].RSSI[1] = 22;

            if ((sizeof (omv_data.geo[0].RSSI) / sizeof (omv_data.geo[0].RSSI[0])) > 2) {
                omv_data.geo[i].RSSI[2] = 11;
            }

            ue_node_list = ue_node_list->next;
            omv_data.geo[i].Neighbors = 0;

            for (j = 0; j < NB_eNB_INST; j++) {
                if (is_UE_active(j, i - NB_eNB_INST) == 1) {
                    omv_data.geo[i].Neighbor[omv_data.geo[i].Neighbors] = j;
                    omv_data.geo[i].Neighbors++;
                    LOG_D(
                            OMG,
                            "[UE %d][eNB %d] is_UE_active  %d geo (x%d, y%d) num neighbors %d\n", i - NB_eNB_INST, j, is_UE_active(j, i - NB_eNB_INST), omv_data.geo[i].x, omv_data.geo[i].y, omv_data.geo[i].Neighbors);
                }
            }
        }
    }

    LOG_E(OMG, "pfd %d \n", pfd);

    if (write(pfd, &omv_data, sizeof (struct Data_Flow_Unit)) == -1)
        perror("write omv failed");

    return 1;
}

void omv_end(int pfd, Data_Flow_Unit omv_data) {
    omv_data.end = 1;

    if (write(pfd, &omv_data, sizeof (struct Data_Flow_Unit)) == -1)
        perror("write omv failed");
}
#endif

#ifdef OPENAIR2
int pfd[2]; // fd for omv : fixme: this could be a local var
#endif

#ifdef OPENAIR2
static Data_Flow_Unit omv_data;
#endif //ALU
static module_id_t UE_inst = 0;
static module_id_t eNB_inst = 0;
#ifdef Rel10
static module_id_t RN_id = 0;
#endif

Packet_OTG_List_t *otg_pdcp_buffer;

typedef enum l2l1_task_state_e {
    L2L1_WAITTING, L2L1_RUNNING, L2L1_TERMINATED,
} l2l1_task_state_t;

l2l1_task_state_t l2l1_state = L2L1_WAITTING;

int sequence_is_empty = 0;

void UE_SCHED(void *args_p) {
    remove("TIME/fsync_pos");
    remove("TIME/sync_count ");
    remove("TIME/ue_tx_pdma_info");
    remove("TIME/ue_rx_pdma_info");
    remove("TIME/CPUTIME_time");
    remove("TIME/TA");
    remove("TIME/TA1");
    remove("AFC_f");
    remove("TIME/fsync");
    remove("TIME/ferr_record");
    remove("TIME/snr");
    struct timespec start_time, end_time;
    int CC_id;
    int32_t slot, last_slot, next_slot;
    int syncOffset;
    short *rx_buffer_subframe;
    int intFlg = -1;
    int len = LENGTHOFFRAME;
    CC_id = 0;
    UE_inst = 0;
    int *databufer;
    databufer = (int*) malloc(len * sizeof (int));
    int *tans_buf;
    tans_buf = (int *) malloc(len * 4 * 2);

    PHY_vars_UE_g[UE_inst][0]->TA_offset = 0;

#ifdef AFC
    double freq_offset_est;
    double frame_freq_offset_est;
    static int ff = 1; //fenghubin
    int dac_value;
    int init_value;
    int new_value;
    int newdac_value;
    rw_pcie_bar_reg_5174(1, 0x03e9ffff);
    double frequence_temp = 30;

    //    FILE *fp1 = fopen("TIME/TA", "w");
    //    fclose(fp1);
    FILE *fp_afc = fopen("AFC_f", "w");
    fclose(fp_afc);
#endif


#ifdef PCIE_INTERFACE 
    for (int i = 0; i < 300; i++) {
        char fn[20];
        sprintf(fn, "data/rx_%d", i);
        rx_buffer_subframe = (short *) &databufer[0];
        rx_getbuf((short*) rx_buffer_subframe, len * 4);
        if (i > 300) {
            write_output(fn, "s", rx_buffer_subframe, len, 1, 1);
        }
    }
#endif  


    while (1) {
        for (UE_inst = 0; UE_inst < 1; UE_inst++) {          

            while (intFlg || ra_success_flag == 0) {

                FILE *cnt_check = fopen("TIME/sync_count ", "a+");
                fprintf(cnt_check, " intFlg =  %d             ra_success_flag  =  %d           \n ", intFlg, ra_success_flag);
                fclose(cnt_check);

                printf("intFlg : %d,   ra_success_flag : %d  \n", intFlg, ra_success_flag);
                intFlg = -1;
                syncOffset = 0;           
                rx_buffer_subframe = (short *) &databufer[0];
                rx_getbuf((short*) rx_buffer_subframe, len * sizeof (int));
                memcpy(&PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.rxdata[0][0], &rx_buffer_subframe[0], len * sizeof (int));

                intFlg = initial_sync(PHY_vars_UE_g[UE_inst][0],
                        normal_txrx, &syncOffset);

                if (intFlg != 0) {
                    while (intFlg == -1) {
                        if (syncOffset < 0) {
                            rx_getbuf((short*) rx_buffer_subframe, (len + syncOffset) * sizeof (int));
                            syncOffset = 0;
                        } else
                            rx_getbuf((short*) rx_buffer_subframe, syncOffset * sizeof (int));

                        rx_getbuf((short*) rx_buffer_subframe, len * sizeof (int));
                        memcpy(&PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.rxdata[0][0], &rx_buffer_subframe[0], len * sizeof (int));
                        intFlg = initial_sync(PHY_vars_UE_g[UE_inst][0], normal_txrx, &syncOffset);
                    }
                }
                rx_getbuf((short*) rx_buffer_subframe, syncOffset * sizeof (int));
                rx_getbuf((short*) rx_buffer_subframe, len * sizeof (int));
                ra_success_flag = 1;
            }
            clock_gettime(CLOCK_REALTIME, &start_time);           

            if (sequence_is_empty == 0) { 
                memcpy(&PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.rxdata[0][0], &rx_buffer_subframe[0], len * sizeof (int));
#ifdef AFC
                freq_offset_est = 0;
                frame_freq_offset_est = 0;
                for (int ii = 0; ii < 10; ii++) {
                    freq_offset_est = freq_offset_est_frac((short *) &PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.rxdata[0][ii * 7680], fftwsize, 7680000 / 2);
                    frame_freq_offset_est += freq_offset_est;
                    printf("subframe : %d ,freq_offset_est : %f\n", ii, freq_offset_est); //cxh  注释掉
                }
                frame_freq_offset_est = frame_freq_offset_est / 10;
                printf("                                                      frame_freq_offset_est: %f\n", frame_freq_offset_est);

#if 1
                FILE *fp_afc = fopen("AFC_f", "a+");
                fprintf(fp_afc, "%f\n", frame_freq_offset_est);
                fclose(fp_afc);
                //dac_value = 0x03e0ffff;
                dac_value = 0x03e9ffff;
                if (ff >= 100) {
                    if (frame_freq_offset_est > frequence_temp) {
                        printf("dingdingding\n");
                        init_value = (dac_value >> 18);
                        //  new_value = init_value - (int) (frame_freq_offset_est / 22 * 5);
                        new_value = init_value - 1;
                        newdac_value = (new_value << 18) + 0xffff;
                        rw_pcie_bar_reg_5174(1, newdac_value);
                        dac_value = newdac_value;
                    }
                    if (frame_freq_offset_est<-frequence_temp) {
                        printf("dingdingding\n");
                        init_value = (dac_value >> 18);
                        // new_value = init_value - (int) (frame_freq_offset_est / 22 * 5);
                        new_value = init_value + 1;
                        newdac_value = (new_value << 18) + 0xffff;
                        rw_pcie_bar_reg_5174(1, newdac_value);
                        dac_value = newdac_value;
                    }
                }
#endif
                ff++;
#endif

                for (slot = 0; slot < 20; slot++) {
                    last_slot = slot;
                    next_slot = slot;
                    PHY_vars_UE_g[UE_inst][0]->frame_rx = frame;
                    //LOG_E(PHY,"frame:%d\n",frame);
                    PHY_vars_UE_g[UE_inst][0]->slot_rx = last_slot;
                    PHY_vars_UE_g[UE_inst][0]->slot_tx = next_slot;
                    phy_procedures_UE_lte(PHY_vars_UE_g[UE_inst][0], 0, abstraction_flag, normal_txrx, no_relay, NULL);

                }
                static int force_sync = 0;
                force_sync++;
                if (force_sync == 200) {
                    force_sync = 0;

                    int csync_pos = lte_sync_time(PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.rxdata,
                            &PHY_vars_UE_g[UE_inst][0]->lte_frame_parms,
                            (int *) &PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.eNb_id);
                    FILE *fsync = fopen("TIME/fsync", "a+");
                    fprintf(fsync, "?? %d\n", csync_pos);
                    fclose(fsync);
                }


                int *mpbuf = (int *) &PHY_vars_UE_g[UE_inst][0]->lte_ue_common_vars.txdata[0][0];
                for (int i = 0; i < len; i++) {
                    tans_buf[2 * i] = mpbuf[i];
                    tans_buf[2 * i + 1] = mpbuf[i];
                }

              
                if (PHY_vars_UE_g[UE_inst][0]->cxh_TA != 0) {

                    sem_wait(&tx_thread_send);
                    sem_wait(&TA_send);

                    int cxh_padding[76800];
                    for (int i = 0; i < 76800; i++)
                        cxh_padding[i] = 0;
                    if (PHY_vars_UE_g[UE_inst][0]->cxh_TA > 0) {
                        tx_sentbuf(tans_buf, (len - PHY_vars_UE_g[UE_inst][0]->cxh_TA) * 4 * 2);
                    } else if (PHY_vars_UE_g[UE_inst][0]->cxh_TA < 0) {
                        tx_sentbuf(tans_buf, (len)* 4 * 2);
                        tx_sentbuf(cxh_padding, (0 - PHY_vars_UE_g[UE_inst][0]->cxh_TA) * 4 * 2);
                    }
                   
                    sem_post(&TA_send);
                    sem_post(&tx_thread_send);
                } else { 
                    ;              
                }



#if 0           
                //              clock_gettime(CLOCK_REALTIME, &start_time);
                rx_getbuf((short*) rx_buffer_subframe, len * sizeof (int));
#else
                if (Tx_number == queue_max) {
                    ; 
                } else {
                    sem_wait(&Tx_number_mutex);
                    memcpy(Enb_txBuf[Tx_tail], tans_buf, LENGTHOFFRAME * 4 * 2);
                    Tx_tail = (++Tx_tail) % queue_max;
                    Tx_number++;
                    sem_post(&Tx_number_mutex);
                }

            } 

            if (Rx_number == 0) {                 
                sequence_is_empty = 1;
            } else {
                sequence_is_empty = 0;
                sem_wait(&Rx_number_mutex);
                memcpy((short *) rx_buffer_subframe, Enb_rxBuf[Rx_tail], LENGTHOFFRAME * 4);
                Rx_tail = (++Rx_tail) % queue_max;
                Rx_number--;
                sem_post(&Rx_number_mutex);
            }

#endif
            clock_gettime(CLOCK_REALTIME, &end_time);        
            static long long time_all = 0;
            time_all = diff_time(end_time, start_time).tv_nsec;
            FILE *fp = fopen("TIME/CPUTIME_time", "a+");
            
            fclose(fp);
        }

    }
}

void otg_config() {
    int app_t = 0;
    int src_instance_t = 0;
    int dst_instance_t = 2;
    g_otg->application_idx[src_instance_t][dst_instance_t] = 1;
    g_otg->application_type[src_instance_t][dst_instance_t][app_t] = 1;
    g_otg->holding_time_off_pu[src_instance_t][dst_instance_t][app_t] = 1;
    //  g_otg->holding_time_off_ed[src_instance_t][dst_instance_t][app_t] = 0;
    //  g_otg->holding_time_off_pe[src_instance_t][dst_instance_t][app_t] = 0;
    g_otg->prob_off_pu[src_instance_t][dst_instance_t][app_t] = 1;
    g_otg->pu_size_pkts[src_instance_t][dst_instance_t][app_t] = 100;
    g_otg->ip_v[src_instance_t][dst_instance_t][app_t] = 1;
    g_otg->trans_proto[src_instance_t][dst_instance_t][app_t];
}

/*------------------------------------------------------------------------------*/
int main(int argc, char **argv) {
    clock_t t;

    Init_fftw(fftwsize);

    printf("%d\n", MAX_NUM_CCs);
    oai_emulation.info.n_frames = 0xffff; 
    oai_emulation.info.n_frames_flag = 0; 
    snr_dB = 30;

    pdcp_period = 1;
    omg_period = 1;
    // start thread for log gen
    log_thread_init();
    init_oai_emulation(); // to initialize everything !!!
    get_simulation_options(argc, argv); //Command-line options

    oaisim_config(); // config OMG and OCG, OPT, OTG, OLG
    check_and_adjust_params();
    init_seed(set_seed);
    init_openair1();
    init_time();
    init_slot_isr();
    ad9361_trx_manager();

    init_pthread_timer();

    UE_SCHED(NULL);
    return (0);
}

void reset_opp_meas(void) {
    uint8_t eNB_id = 0, UE_id = 0;

    reset_meas(&oaisim_stats);
    reset_meas(&oaisim_stats_f); // frame

    // init time stats here (including channel)
    reset_meas(&dl_chan_stats);
    reset_meas(&ul_chan_stats);

    //    for (UE_id = 0; UE_id < NB_UE_INST; UE_id++) {
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc_rx);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc_tx);
    //
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ofdm_demod_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->rx_dft_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_channel_estimation_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_freq_offset_estimation_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_decoding_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_rate_unmatching_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_turbo_decoding_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_deinterleaving_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_llr_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_unscrambling_stats);
    //
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_init_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_alpha_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_beta_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_gamma_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_ext_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_intl1_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_intl2_stats);
    //
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->tx_prach);
    //
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ofdm_mod_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_encoding_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_modulation_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_segmentation_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_rate_matching_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_turbo_encoding_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_interleaving_stats);
    //        reset_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_multiplexing_stats);
    //        /*
    //         * L2 functions
    //         */
    //
    //        // UE MAC
    //        reset_meas(&UE_mac_inst[UE_id].ue_scheduler); // total
    //        reset_meas(&UE_mac_inst[UE_id].tx_ulsch_sdu); // inlcude rlc_data_req + mac header gen
    //        reset_meas(&UE_mac_inst[UE_id].rx_dlsch_sdu); // include mac_rrc_data_ind or mac_rlc_status_ind+mac_rlc_data_ind and  mac header parser
    //        reset_meas(&UE_mac_inst[UE_id].ue_query_mch);
    //        reset_meas(&UE_mac_inst[UE_id].rx_mch_sdu); // include rld_data_ind+ parse mch header
    //        reset_meas(&UE_mac_inst[UE_id].rx_si); // include rlc_data_ind + mac header parser
    //
    //        reset_meas(&UE_pdcp_stats[UE_id].pdcp_run);
    //        reset_meas(&UE_pdcp_stats[UE_id].data_req);
    //        reset_meas(&UE_pdcp_stats[UE_id].data_ind);
    //        reset_meas(&UE_pdcp_stats[UE_id].apply_security);
    //        reset_meas(&UE_pdcp_stats[UE_id].validate_security);
    //        reset_meas(&UE_pdcp_stats[UE_id].pdcp_ip);
    //        reset_meas(&UE_pdcp_stats[UE_id].ip_pdcp);
    //
    //    }

    for (eNB_id = 0; eNB_id < NB_eNB_INST; eNB_id++) {

        for (UE_id = 0; UE_id < NB_UE_INST; UE_id++) {
            reset_meas(&eNB2UE[eNB_id][UE_id][0]->random_channel);
            reset_meas(&eNB2UE[eNB_id][UE_id][0]->interp_time);
            reset_meas(&eNB2UE[eNB_id][UE_id][0]->interp_freq);
            reset_meas(&eNB2UE[eNB_id][UE_id][0]->convolution);
            reset_meas(&UE2eNB[UE_id][eNB_id][0]->random_channel);
            reset_meas(&UE2eNB[UE_id][eNB_id][0]->interp_time);
            reset_meas(&UE2eNB[UE_id][eNB_id][0]->interp_freq);
            reset_meas(&UE2eNB[UE_id][eNB_id][0]->convolution);
        }

        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc_rx);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc_tx);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->rx_prach);

        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ofdm_mod_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_encoding_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_modulation_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_scrambling_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_rate_matching_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_turbo_encoding_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_interleaving_stats);

        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ofdm_demod_stats);
        //reset_meas(&PHY_vars_eNB_g[eNB_id]->rx_dft_stats);
        //reset_meas(&PHY_vars_eNB_g[eNB_id]->ulsch_channel_estimation_stats);
        //reset_meas(&PHY_vars_eNB_g[eNB_id]->ulsch_freq_offset_estimation_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_decoding_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_demodulation_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_rate_unmatching_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_turbo_decoding_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_deinterleaving_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_demultiplexing_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_llr_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_init_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_alpha_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_beta_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_gamma_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_ext_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_intl1_stats);
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_intl2_stats);
#ifdef LOCALIZATION
        reset_meas(&PHY_vars_eNB_g[eNB_id][0]->localization_stats);
#endif

        /*
         * L2 functions
         */
        // eNB MAC
        reset_meas(&eNB_mac_inst[eNB_id].eNB_scheduler); // total
        reset_meas(&eNB_mac_inst[eNB_id].schedule_si); // only schedule + tx
        reset_meas(&eNB_mac_inst[eNB_id].schedule_ra); // only ra
        reset_meas(&eNB_mac_inst[eNB_id].schedule_ulsch); // onlu ulsch
        reset_meas(&eNB_mac_inst[eNB_id].fill_DLSCH_dci); // only dci
        reset_meas(&eNB_mac_inst[eNB_id].schedule_dlsch_preprocessor); // include rlc_data_req + MAC header gen
        reset_meas(&eNB_mac_inst[eNB_id].schedule_dlsch); // include rlc_data_req + MAC header gen + pre-processor
        reset_meas(&eNB_mac_inst[eNB_id].schedule_mch); // only embms
        reset_meas(&eNB_mac_inst[eNB_id].rx_ulsch_sdu); // include rlc_data_ind + mac header parser

        //        reset_meas(&eNB_pdcp_stats[eNB_id].pdcp_run);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].data_req);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].data_ind);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].apply_security);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].validate_security);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].pdcp_ip);
        //        reset_meas(&eNB_pdcp_stats[eNB_id].ip_pdcp);

    }
}

void
print_opp_meas(void) {

    uint8_t eNB_id = 0, UE_id = 0;

    print_meas(&oaisim_stats, "[OAI][total_exec_time]", &oaisim_stats,
            &oaisim_stats);
    print_meas(&oaisim_stats_f, "[OAI][SF_exec_time]", &oaisim_stats,
            &oaisim_stats_f);

    print_meas(&dl_chan_stats, "[DL][chan_stats]", &oaisim_stats,
            &oaisim_stats_f);
    print_meas(&ul_chan_stats, "[UL][chan_stats]", &oaisim_stats,
            &oaisim_stats_f);

    for (UE_id = 0; UE_id < NB_UE_INST; UE_id++) {
        for (eNB_id = 0; eNB_id < NB_eNB_INST; eNB_id++) {
            print_meas(&eNB2UE[eNB_id][UE_id][0]->random_channel,
                    "[DL][random_channel]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&eNB2UE[eNB_id][UE_id][0]->interp_time,
                    "[DL][interp_time]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&eNB2UE[eNB_id][UE_id][0]->interp_freq,
                    "[DL][interp_freq]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&eNB2UE[eNB_id][UE_id][0]->convolution,
                    "[DL][convolution]", &oaisim_stats, &oaisim_stats_f);

            print_meas(&UE2eNB[UE_id][eNB_id][0]->random_channel,
                    "[UL][random_channel]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&UE2eNB[UE_id][eNB_id][0]->interp_time,
                    "[UL][interp_time]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&UE2eNB[UE_id][eNB_id][0]->interp_freq,
                    "[UL][interp_freq]", &oaisim_stats, &oaisim_stats_f);
            print_meas(&UE2eNB[UE_id][eNB_id][0]->convolution,
                    "[UL][convolution]", &oaisim_stats, &oaisim_stats_f);
        }
    }

    for (UE_id = 0; UE_id < NB_UE_INST; UE_id++) {
        print_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc, "[UE][total_phy_proc]",
                &oaisim_stats, &oaisim_stats_f);

        print_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc_rx,
                "[UE][total_phy_proc_rx]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ofdm_demod_stats,
                "[UE][ofdm_demod]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->rx_dft_stats, "[UE][rx_dft]",
                &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_channel_estimation_stats,
                "[UE][channel_est]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_freq_offset_estimation_stats,
                "[UE][freq_offset]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_llr_stats, "[UE][llr]",
                &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_unscrambling_stats,
                "[UE][unscrambling]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_decoding_stats,
                "[UE][decoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_rate_unmatching_stats,
                "[UE][rate_unmatching]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_deinterleaving_stats,
                "[UE][deinterleaving]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_turbo_decoding_stats,
                "[UE][turbo_decoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_init_stats,
                "[UE][ |_tc_init]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_alpha_stats,
                "[UE][ |_tc_alpha]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_beta_stats,
                "[UE][ |_tc_beta]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_gamma_stats,
                "[UE][ |_tc_gamma]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_ext_stats,
                "[UE][ |_tc_ext]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_intl1_stats,
                "[UE][ |_tc_intl1]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->dlsch_tc_intl2_stats,
                "[UE][ |_tc_intl2]", &oaisim_stats, &oaisim_stats_f);

        print_meas(&PHY_vars_UE_g[UE_id][0]->phy_proc_tx,
                "[UE][total_phy_proc_tx]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ofdm_mod_stats, "[UE][ofdm_mod]",
                &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_modulation_stats,
                "[UE][modulation]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_encoding_stats,
                "[UE][encoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_segmentation_stats,
                "[UE][segmentation]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_rate_matching_stats,
                "[UE][rate_matching]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_turbo_encoding_stats,
                "[UE][turbo_encoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_interleaving_stats,
                "[UE][interleaving]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_UE_g[UE_id][0]->ulsch_multiplexing_stats,
                "[UE][multiplexing]", &oaisim_stats, &oaisim_stats_f);

    }

    for (eNB_id = 0; eNB_id < NB_eNB_INST; eNB_id++) {
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc,
                "[eNB][total_phy_proc]", &oaisim_stats, &oaisim_stats_f);

        print_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc_tx,
                "[eNB][total_phy_proc_tx]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ofdm_mod_stats,
                "[eNB][ofdm_mod]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_modulation_stats,
                "[eNB][modulation]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_scrambling_stats,
                "[eNB][scrambling]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_encoding_stats,
                "[eNB][encoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_interleaving_stats,
                "[eNB][|_interleaving]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_rate_matching_stats,
                "[eNB][|_rate_matching]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->dlsch_turbo_encoding_stats,
                "[eNB][|_turbo_encoding]", &oaisim_stats, &oaisim_stats_f);

        print_meas(&PHY_vars_eNB_g[eNB_id][0]->phy_proc_rx,
                "[eNB][total_phy_proc_rx]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ofdm_demod_stats,
                "[eNB][ofdm_demod]", &oaisim_stats, &oaisim_stats_f);
        //print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_channel_estimation_stats,"[eNB][channel_est]");
        //print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_freq_offset_estimation_stats,"[eNB][freq_offset]");
        //print_meas(&PHY_vars_eNB_g[eNB_id][0]->rx_dft_stats,"[eNB][rx_dft]");
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_demodulation_stats,
                "[eNB][demodulation]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_decoding_stats,
                "[eNB][decoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_deinterleaving_stats,
                "[eNB][|_deinterleaving]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_demultiplexing_stats,
                "[eNB][|_demultiplexing]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_rate_unmatching_stats,
                "[eNB][|_rate_unmatching]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_turbo_decoding_stats,
                "[eNB][|_turbo_decoding]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_init_stats,
                "[eNB][ |_tc_init]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_alpha_stats,
                "[eNB][ |_tc_alpha]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_beta_stats,
                "[eNB][ |_tc_beta]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_gamma_stats,
                "[eNB][ |_tc_gamma]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_ext_stats,
                "[eNB][ |_tc_ext]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_intl1_stats,
                "[eNB][ |_tc_intl1]", &oaisim_stats, &oaisim_stats_f);
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->ulsch_tc_intl2_stats,
                "[eNB][ |_tc_intl2]", &oaisim_stats, &oaisim_stats_f);

        print_meas(&PHY_vars_eNB_g[eNB_id][0]->rx_prach, "[eNB][rx_prach]",
                &oaisim_stats, &oaisim_stats_f);

#ifdef LOCALIZATION
        print_meas(&PHY_vars_eNB_g[eNB_id][0]->localization_stats, "[eNB][LOCALIZATION]", &oaisim_stats, &oaisim_stats_f);
#endif
    }

    //    for (UE_id = 0; UE_id < NB_UE_INST; UE_id++) {
    //
    //        print_meas(&UE_mac_inst[UE_id].ue_scheduler, "[UE][mac_scheduler]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_mac_inst[UE_id].tx_ulsch_sdu, "[UE][tx_ulsch_sdu]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_mac_inst[UE_id].rx_dlsch_sdu, "[UE][rx_dlsch_sdu]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_mac_inst[UE_id].ue_query_mch, "[UE][query_MCH]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_mac_inst[UE_id].rx_mch_sdu, "[UE][rx_mch_sdu]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_mac_inst[UE_id].rx_si, "[UE][rx_si]", &oaisim_stats,
    //                &oaisim_stats_f);
    //
    //        print_meas(&UE_pdcp_stats[UE_id].pdcp_run, "[UE][total_pdcp_run]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_pdcp_stats[UE_id].data_req, "[UE][DL][pdcp_data_req]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_pdcp_stats[UE_id].data_ind, "[UE][UL][pdcp_data_ind]",
    //                &oaisim_stats, &oaisim_stats_f);
    //
    //        print_meas(&UE_pdcp_stats[UE_id].apply_security,
    //                "[UE][DL][apply_security]", &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_pdcp_stats[UE_id].validate_security,
    //                "[UE][UL][validate_security]", &oaisim_stats,
    //                &oaisim_stats_f);
    //        print_meas(&UE_pdcp_stats[UE_id].ip_pdcp, "[UE][DL][ip_pdcp]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&UE_pdcp_stats[UE_id].pdcp_ip, "[UE][UL][pdcp_ip]",
    //                &oaisim_stats, &oaisim_stats_f);
    //
    //    }

    //    for (eNB_id = 0; eNB_id < NB_eNB_INST; eNB_id++) {
    //
    //        print_meas(&eNB_mac_inst[eNB_id].eNB_scheduler, "[eNB][mac_scheduler]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_si, "[eNB][DL][SI]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_ra, "[eNB][DL][RA]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].fill_DLSCH_dci,
    //                "[eNB][DL/UL][fill_DCI]", &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_dlsch_preprocessor,
    //                "[eNB][DL][preprocessor]", &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_dlsch,
    //                "[eNB][DL][schedule_tx_dlsch]", &oaisim_stats,
    //                &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_mch, "[eNB][DL][mch]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].schedule_ulsch, "[eNB][UL][ULSCH]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_mac_inst[eNB_id].rx_ulsch_sdu,
    //                "[eNB][UL][rx_ulsch_sdu]", &oaisim_stats, &oaisim_stats_f);
    //
    //        print_meas(&eNB_pdcp_stats[eNB_id].pdcp_run, "[eNB][pdcp_run]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_pdcp_stats[eNB_id].data_req,
    //                "[eNB][DL][pdcp_data_req]", &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_pdcp_stats[eNB_id].data_ind,
    //                "[eNB][UL][pdcp_data_ind]", &oaisim_stats, &oaisim_stats_f);
    //
    //        print_meas(&eNB_pdcp_stats[eNB_id].apply_security,
    //                "[eNB][DL][apply_security]", &oaisim_stats,
    //                &oaisim_stats_f);
    //        print_meas(&eNB_pdcp_stats[eNB_id].validate_security,
    //                "[eNB][UL][validate_security]", &oaisim_stats,
    //                &oaisim_stats_f);
    //        print_meas(&eNB_pdcp_stats[eNB_id].ip_pdcp, "[eNB][DL][ip_pdcp]",
    //                &oaisim_stats, &oaisim_stats_f);
    //        print_meas(&eNB_pdcp_stats[eNB_id].pdcp_ip, "[eNB][UL][pdcp_ip]",
    //                &oaisim_stats, &oaisim_stats_f);
    //
    //    }

}

static void *
sigh(void *arg) {

    int signum;
    sigset_t sigcatch;
    sigemptyset(&sigcatch);
    sigaddset(&sigcatch, SIGHUP);
    sigaddset(&sigcatch, SIGINT);
    sigaddset(&sigcatch, SIGTERM);
    sigaddset(&sigcatch, SIGQUIT);

    for (;;) {
        sigwait(&sigcatch, &signum);

        //sigwait(&sigblock, &signum);
        switch (signum) {
            case SIGHUP:
            case SIGINT:
            case SIGTERM:
            case SIGQUIT:
                fprintf(stderr, "received signal %d \n", signum);
                // no need for mutx: when ITTI not used, this variable is only accessed by this function
                l2l1_state = L2L1_TERMINATED;
                break;

            default:
                fprintf(stderr, "Unexpected signal %d \n", signum);
                exit(-1);
                break;
        }
    }

    pthread_exit(NULL);
}

void
oai_shutdown(void) {
    static int done = 0;

    if (done)
        return;

    free(otg_pdcp_buffer);
    otg_pdcp_buffer = 0;

#ifdef SMBV

    // Rohde&Schwarz SMBV100A vector signal generator
    if (config_smbv) {
        smbv_send_config(smbv_fname, smbv_ip);
    }

#endif

    //Perform KPI measurements
    if (oai_emulation.info.otg_enabled == 1) {
        LOG_N(EMU, "calling OTG kpi gen .... \n");
        kpi_gen();
    }
    if (oai_emulation.info.opp_enabled == 1)
        print_opp_meas();

    // relase all rx state
    if (ethernet_flag == 1) {
        emu_transport_release();
    }

#ifdef PROC

    if (abstraction_flag == 0 && Channel_Flag == 0 && Process_Flag == 0)
#else
    if (abstraction_flag == 0)
#endif
    {
        /*
         #ifdef IFFT_FPGA
         free(txdataF2[0]);
         free(txdataF2[1]);
         free(txdataF2);
         free(txdata[0]);
         free(txdata[1]);
         free(txdata);
         #endif
         */

        for (int i = 0; i < 2; i++) {
            free(s_re[i]);
            free(s_im[i]);
            free(r_re[i]);
            free(r_im[i]);
        }

        free(s_re);
        free(s_im);
        free(r_re);
        free(r_im);
        s_re = 0;
        s_im = 0;
        r_re = 0;
        r_im = 0;

        lte_sync_time_free();
    }

    // added for PHY abstraction
    if (oai_emulation.info.ocm_enabled == 1) {
        for (eNB_inst = 0; eNB_inst < NUMBER_OF_eNB_MAX; eNB_inst++) {
            free(enb_data[eNB_inst]);
            enb_data[eNB_inst] = 0;
        }

        for (UE_inst = 0; UE_inst < NUMBER_OF_UE_MAX; UE_inst++) {
            free(ue_data[UE_inst]);
            ue_data[UE_inst] = 0;
        }
    } //End of PHY abstraction changes

#ifdef OPENAIR2
    mac_top_cleanup();
#endif

    // stop OMG
    stop_mobility_generator(omg_param_list); //omg_param_list.mobility_type
#ifdef OPENAIR2

    if (oai_emulation.info.omv_enabled == 1)
        omv_end(pfd[1], omv_data);

#endif

    if ((oai_emulation.info.ocm_enabled == 1) && (ethernet_flag == 0)
            && (ShaF != NULL)) {
        destroyMat(ShaF, map1, map2);
        ShaF = 0;
    }

    if (opt_enabled == 1)
        terminate_opt();

    if (oai_emulation.info.cli_enabled)
        cli_server_cleanup();

    for (int i = 0; i < NUMBER_OF_eNB_MAX + NUMBER_OF_UE_MAX; i++)
        if (oai_emulation.info.oai_ifup[i] == 1) {
            char interfaceName[8];
            snprintf(interfaceName, sizeof (interfaceName), "oai%d", i);
            bringInterfaceUp(interfaceName, 0);
        }

    log_thread_finalize();
    logClean();
    VCD_SIGNAL_DUMPER_CLOSE();

    done = 1; // prevent next invokation of this function

    LOG_N(EMU,
            ">>>>>>>>>>>>>>>>>>>>>>>>>>> OAIEMU shutdown <<<<<<<<<<<<<<<<<<<<<<<<<<\n\n");
}

eNB_MAC_INST*
get_eNB_mac_inst(module_id_t module_idP) {
    return (&eNB_mac_inst[module_idP]);
}

OAI_Emulation*
get_OAI_emulation() {
    return &oai_emulation;
}
