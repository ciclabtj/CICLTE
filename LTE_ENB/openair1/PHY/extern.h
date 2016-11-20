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
#ifndef __PHY_EXTERN_H__
#define __PHY_EXTERN_H__

#include "PHY/defs.h"

//cxh_bgn
typedef struct {
    int TxPower; //发送功率
    int RxPower; //接受功率
    int RFPoint; //射频频点
    int IFPoint; //中频频点
    int BW; //系统带宽
    int nb_antennas_tx; //发射天线数
    int nb_antennas_rx; //接收天线数
    int frame_type; //测试模式
} SYSTEM_PARAMETERS;

typedef struct {
    int Bandwidth;
    float length_of_slot; //时隙长度0.5或1ms
    int subcarrier_interval; //子载波间隔15kHZ或7.5
    double samples_per_tti; //BW×1.288M
    double sample_time_per_point; //取样时间  1/samples_per_tti
    int N_RB_UL; //占用自在波数  6,13,25,50,75,100,110
    int symbols_per_tti; //每时隙OFDM符号数 7,6,3
    int ofdm_symbol_size; //FFT点数 256,512,1024,1536,2048,4096
    int Ncp_UL; // CP长度 36或40
} UPLINK_PARAMETERS;

typedef struct {
    int Bandwidth; //占用带宽  单位（RB） <=系统带宽（BW）
} PUSCH_PARAMETERS;

typedef struct {
    int enable_flag; //信道使能 0或1
    int srs_Bandwidth; // 占用带宽

} SRS_PARAMETERS;

typedef struct {
    int Bandwidth; //传输带宽3,5,10,15,20
    float length_of_slot; //时隙长度0.5或1ms
    int subcarrier_interval; //子载波间隔15kHZ或7.5
    double samples_per_tti; //BW×1.288M
    double sample_time_per_point; //取样时间  1/samples_per_tti
    int N_RB_UL; //占用子载波数  6,13,25,50,75,100,110
    int symbols_per_tti; //每时隙OFDM符号数 7,6,3
    int ofdm_symbol_size; //FFT点数 256,512,1024,1536,2048,4096
    int Ncp_UL; // CP长度 36或40
} DOWNLINK_PARAMETERS;

typedef struct {
    int Bandwidth; //PDSCH占用带宽
} PDSCH_PARAMETERS;

typedef struct {
    int Bandwidth; //PDCCH占用带宽
    int enable_flag; //信道使能
} PDCCH_PARAMETERS;

typedef struct {
    int enable_flag; //PBCH信道使能
} PBCH_PARAMETERS;

typedef struct  {
    int *txdataf;
    int FFTBuffer[7168];
    int na;
    float fb;
    SYSTEM_PARAMETERS system_paras;
    UPLINK_PARAMETERS uplink_paras;
    PUSCH_PARAMETERS pusch_paras;
    SRS_PARAMETERS srs_paras;
    DOWNLINK_PARAMETERS downlink_paras;
    PDSCH_PARAMETERS pdsch_paras;
    PDCCH_PARAMETERS pdcch_paras;
    PBCH_PARAMETERS pbch_paras;
} PHY_VARS_RECV;

typedef struct {
    char magic_id[2];
    int length; // header + data
    char type; // fftdata type = 10;     
} Header ;

typedef struct  {
    PHY_VARS_RECV buffer;
    Header He;
    char magic_id;
    int cxh_test;
    short chan_info[14][300][2]; // 信道估计的值
    unsigned char eNB_offset; // 小区号
    unsigned char Ns; // 时隙
    unsigned char antenna; // 天线号
    unsigned char ofdm1; // 前时隙OFDM符号（0-6）
    unsigned char ofdm2; // 后时隙OFDM符号（7-13）
    int send_c ; // 发送的信道估计的包编号
    int send_c2 ; // 发送的星座图的包编号
    int send_c3 ; // 发送的FFT图的包编号
    //  double  cons_dia[14][300][2]; // 星座图的值 
    short cons_dia[14][300][2]; // 星座图的值 
    short fft_data[1024]; // FFT数据
    //double snr_data[14];
    double snr_data[14];
}PHY_Data_Send ;
//cxh_end

extern  char* namepointer_chMag ;
extern char* namepointer_log2;
extern  char fmageren_name2[512];

extern unsigned int RX_DMA_BUFFER[4][NB_ANTENNAS_RX];
extern unsigned int TX_DMA_BUFFER[4][NB_ANTENNAS_TX];

#ifdef OPENAIR_LTE
#include "PHY/LTE_TRANSPORT/extern.h"
#include "MAC_INTERFACE/defs.h"
#include "MAC_INTERFACE/extern.h"
#include "SIMULATION/ETH_TRANSPORT/extern.h"

extern unsigned int DAQ_MBOX;
extern int number_of_cards;

//extern PHY_CONFIG *PHY_config;
//extern PHY_VARS *PHY_vars;

extern PHY_VARS_UE ***PHY_vars_UE_g;
extern PHY_VARS_eNB ***PHY_vars_eNB_g;
extern PHY_VARS_RN **PHY_vars_RN_g;
extern LTE_DL_FRAME_PARMS *lte_frame_parms_g;



extern short primary_synch0[144];
extern short primary_synch1[144];
extern short primary_synch2[144];
extern unsigned char primary_synch0_tab[72];
extern unsigned char primary_synch1_tab[72];
extern unsigned char primary_synch2_tab[72];
extern int16_t *primary_synch0_time; //!< index: [0..ofdm_symbol_size*2[
extern int16_t *primary_synch1_time; //!< index: [0..ofdm_symbol_size*2[
extern int16_t *primary_synch2_time; //!< index: [0..ofdm_symbol_size*2[
extern int *sync_corr_ue0; //!< index [0..10*samples_per_tti[
extern int *sync_corr_ue1; //!< index [0..10*samples_per_tti[
extern int *sync_corr_ue2; //!< index [0..10*samples_per_tti[

extern int flagMag;
//extern short **txdataF_rep_tmp;

extern char mode_string[4][20];

#include "PHY/LTE_TRANSPORT/extern.h"

#endif

#ifndef OPENAIR2
extern unsigned char NB_eNB_INST;
extern unsigned char NB_UE_INST;
extern unsigned char NB_RN_INST;
#endif

extern unsigned int ULSCH_max_consecutive_errors;
extern int flag_LA;
extern double sinr_bler_map[MCS_COUNT][2][MCS_TABLE_LENGTH_MAX];
extern double sinr_bler_map_up[MCS_COUNT][2][16];
extern int table_length[MCS_COUNT];
extern double sinr_to_cqi[4][16];
extern int cqi_to_mcs[16];

//for MU-MIMO abstraction using MIESM
//this 2D arrarays contains SINR, MI and RBIR in rows 1, 2, and 3 respectively
extern double MI_map_4qam[3][162];
extern double MI_map_16qam[3][197];
extern double MI_map_64qam[3][227];

extern double beta1_dlsch_MI[6][MCS_COUNT];
extern double beta2_dlsch_MI[6][MCS_COUNT];

extern double q_qpsk[8];
extern double q_qam16[8];
extern double q_qam64[8];

extern double p_qpsk[8];
extern double p_qam16[8];
extern double p_qam64[8];

extern double beta1_dlsch[6][MCS_COUNT];
extern double beta2_dlsch[6][MCS_COUNT];


#endif /*__PHY_EXTERN_H__ */

