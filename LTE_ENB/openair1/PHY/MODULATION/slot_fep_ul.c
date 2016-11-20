/*******************************************************************************
    OpenAirInterface
    Copyright(c) 1999 - 2014 Eurecom

    OpenAirInterface is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.


    OpenAirInterface is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with OpenAirInterface.The full GNU General Public License is
   included in this distribution in the file called "COPYING". If not,
   see <http://www.gnu.org/licenses/>.

  Contact Information
  OpenAirInterface Admin: openair_admin@eurecom.fr
  OpenAirInterface Tech : openair_tech@eurecom.fr
  OpenAirInterface Dev  : openair4g-devel@lists.eurecom.fr

  Address      : Eurecom, Campus SophiaTech, 450 Route des Chappes, CS 50193 - 06904 Biot Sophia Antipolis cedex, FRANCE

 *******************************************************************************/
#include "PHY/defs.h"
#include "PHY/extern.h"
#include "defs.h"
//#define DEBUG_FEP
extern int use_w;

//cxh_bgn
//#include "../../SCHED/struct_type.h"
#include "../extern.h"
#include<sys/socket.h>
extern char conn_flg;
extern int qt_ue_id;
extern PHY_Data_Send FFTData;
extern int clifd;
int send_c3 = 1;
//cxh_end

int slot_fep_ul(LTE_DL_FRAME_PARMS *frame_parms,
        LTE_eNB_COMMON *eNB_common_vars,
        unsigned char l,
        unsigned char Ns,
        unsigned char eNB_id,
        int no_prefix) {
#ifdef DEBUG_FEP
    char fname[40], vname[40];
#endif
    unsigned char aa;
    unsigned char symbol = l + ((7 - frame_parms->Ncp)*(Ns & 1)); ///symbol within sub-frame
    unsigned int nb_prefix_samples = (no_prefix ? 0 : frame_parms->nb_prefix_samples);
    unsigned int nb_prefix_samples0 = (no_prefix ? 0 : frame_parms->nb_prefix_samples0);
    //  unsigned int subframe_offset;
    unsigned int slot_offset;

    void (*dft)(int16_t *, int16_t *, int);

    switch (frame_parms->log2_symbol_size) {
        case 7:
            dft = dft128;
            break;

        case 8:
            dft = dft256;
            break;

        case 9:
            dft = dft512;
            break;

        case 10:
            dft = dft1024;
            break;

        case 11:
            dft = dft2048;
            break;

        default:
            dft = dft512;
            break;
    }

    if (no_prefix) {
        //    subframe_offset = frame_parms->ofdm_symbol_size * frame_parms->symbols_per_tti * (Ns>>1);
        slot_offset = frame_parms->ofdm_symbol_size * (frame_parms->symbols_per_tti >> 1) * (Ns % 2);
    } else {
        //    subframe_offset = frame_parms->samples_per_tti * (Ns>>1);
        slot_offset = (frame_parms->samples_per_tti >> 1) * (Ns % 2);
    }

    if (l < 0 || l >= 7 - frame_parms->Ncp) {
        LOG_E(PHY, "slot_fep: l must be between 0 and %d\n", 7 - frame_parms->Ncp);
        return (-1);
    }

    if (Ns < 0 || Ns >= 20) {
        LOG_E(PHY, "slot_fep: Ns must be between 0 and 19\n");
        return (-1);
    }

#ifdef DEBUG_FEP
    LOG_D(PHY, "slot_fep: Ns %d offset %d, symbol %d, nb_prefix_samples %d\n", Ns, slot_offset, symbol, nb_prefix_samples);
#endif

    for (aa = 0; aa < frame_parms->nb_antennas_rx; aa++) {

        if (l == 0) {
            if (!use_w) {
                dft((int16_t *) & eNB_common_vars->rxdata_7_5kHz[eNB_id][aa][slot_offset + nb_prefix_samples0],
                        (int16_t *) & eNB_common_vars->rxdataF[eNB_id][aa][frame_parms->ofdm_symbol_size * symbol], 1);
            } else {
                fftfftw((int16_t *) & eNB_common_vars->rxdata_7_5kHz[eNB_id][aa][slot_offset + nb_prefix_samples0],
                        (int16_t *) & eNB_common_vars->rxdataF[eNB_id][aa][frame_parms->ofdm_symbol_size * symbol],
                        fftwsize,
                        0);
            }
        } else {
            if (!use_w) {
                dft((short *) &eNB_common_vars->rxdata_7_5kHz[eNB_id][aa][slot_offset + (frame_parms->ofdm_symbol_size + nb_prefix_samples0 + nb_prefix_samples) +
                        (frame_parms->ofdm_symbol_size + nb_prefix_samples)*(l - 1)],
                        (short*) &eNB_common_vars->rxdataF[eNB_id][aa][frame_parms->ofdm_symbol_size * symbol], 1);
            } else {
                fftfftw((short *) &eNB_common_vars->rxdata_7_5kHz[eNB_id][aa][slot_offset + (frame_parms->ofdm_symbol_size + nb_prefix_samples0 + nb_prefix_samples) +
                        (frame_parms->ofdm_symbol_size + nb_prefix_samples)*(l - 1)],
                         (short*) &eNB_common_vars->rxdataF[eNB_id][aa][frame_parms->ofdm_symbol_size * symbol],
                        fftwsize,
                        0);
            }
        }
        //CXH_bgn       发送FFT的值////////////////////////////////////////////////////////

        //    if(conn_flg) {
        if (conn_flg && symbol == 13) {
            // char d[sizeof (PHY_Data_Send)];                           
            //short *test3 = (short *) &lte_ue_pdsch_vars[eNB_id]->rxdataF_comp[0][300 * symbol];
            short *test3 = (short *) &eNB_common_vars->rxdataF[eNB_id][aa][frame_parms->ofdm_symbol_size * symbol];

            //FILE *fp;
            //fp = fopen("check_fft.txt", "w+");
//            FILE *cxhfft;
//            cxhfft = fopen("/home/cxh/test/fft_data_inslot", "w+");
//            for (int s = 0; s < 512; s++) {
//                fprintf(cxhfft, " %d   %d\n",test3[s << 1], test3[1 + (s << 1)]);
//            }
//            fclose(cxhfft);

            int send_num;
            for (int i = 0; i < 512; i++) {
                //   fprintf(fp, "\r\n%d:     %d+%di  ", i << 1, test3[i << 1], test3[(i << 1) + 1]);
                FFTData.fft_data[i << 1] = test3[i << 1];
                FFTData.fft_data[(i << 1) + 1] = test3[(i << 1) + 1];
            }       

            //  user1 分配10个rb， 那么120个数，  user2 分配15个rb， 是180个数。
            /*if(qt_ue_id == 2){
                for(int i = 0; i < 120; i++){
                    FFTData.fft_data[361*2+ i*2] = 0;
                    FFTData.fft_data[361*2+ i*2 +1] = 0;
                }
            }else{
                for(int i = 0; i < 30; i++){
                    FFTData.fft_data[511*2 - (i*2)] = 0;
                    FFTData.fft_data[511*2 - (i*2 + 1)] = 0;
                };
                for(int i = 0; i < 150; i++){
                    FFTData.fft_data[(i*2)] = 0;
                    FFTData.fft_data[(i*2 + 1)] = 0;
                };
            }*/
            
            FFTData.fft_data[0] = FFTData.fft_data[6]; //  把中间最低的DC和谐掉
            FFTData.fft_data[1] = FFTData.fft_data[7];
            //memcpy(d, &FFTData, sizeof (PHY_Data_Send));
            //fflush(fp);
            //fclose(fp);
            //send_num = send(clifd, d, sizeof (PHY_Data_Send), 0); 

        }
        //CXH_end////////////////////////////////////////////////////////
    }
    return (0);
}
