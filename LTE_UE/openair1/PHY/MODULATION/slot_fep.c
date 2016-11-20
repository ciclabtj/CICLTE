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
#include "MAC_INTERFACE/extern.h"
#include "defs.h"
//#define DEBUG_FEP

#define SOFFSET 0



#include <fftw3.h>
#include "emmintrin.h"
#include "mmintrin.h"
#include <math.h>
//static short temp2[2048*4] __attribute__((aligned(16)));

//#define DEBUG_OFDM_MOD
extern int use_w;
fftw_complex *fftw_in,*fftw_out;
fftw_plan p_fwd,p_bwd;
typedef unsigned short u16 ;
typedef short s16 ;
  typedef unsigned char u8 ;
void  Init_fftw(int N){
    fftw_in = (fftw_complex *) fftw_malloc(sizeof(fftw_complex) *N);
    fftw_out = (fftw_complex *) fftw_malloc(sizeof(fftw_complex) *N);
    p_fwd = fftw_plan_dft_1d(N,fftw_in,fftw_out,FFTW_FORWARD,FFTW_MEASURE);
    p_bwd = fftw_plan_dft_1d(N,fftw_in,fftw_out,FFTW_BACKWARD,FFTW_MEASURE);  
}

void fftfftw(s16 *in,s16 *out,int size,int flag){
    float offset=sqrt(size);

    int i;
    for(i=0;i<size;i++){
        fftw_in[i][0]=in[2*i];
        fftw_in[i][1]=in[2*i+1];
    }
    if(flag==0){
        fftw_execute(p_fwd);
        for(i=0;i<size;i++){
             out[2*i] = fftw_out[i][0]/offset;
            out[2*i+1] = fftw_out[i][1]/offset;
        }
    }
    else{
        fftw_execute(p_bwd);
        for(i=0;i<size;i++){     
            out[2*i] = fftw_out[i][0]/offset;
            out[2*i+1] = fftw_out[i][1]/offset;
        }
    }
    
} 




int slot_fep(PHY_VARS_UE *phy_vars_ue,
             unsigned char l,
             unsigned char Ns,
             int sample_offset,
             int no_prefix,
	     int reset_freq_est)
{

  LTE_DL_FRAME_PARMS *frame_parms = &phy_vars_ue->lte_frame_parms;
  LTE_UE_COMMON *ue_common_vars   = &phy_vars_ue->lte_ue_common_vars;
  uint8_t eNB_id = 0;//ue_common_vars->eNb_id;
  unsigned char aa;
  unsigned char symbol = l+((7-frame_parms->Ncp)*(Ns&1)); ///symbol within sub-frame
  unsigned int nb_prefix_samples = (no_prefix ? 0 : frame_parms->nb_prefix_samples);
  unsigned int nb_prefix_samples0 = (no_prefix ? 0 : frame_parms->nb_prefix_samples0);
  unsigned int subframe_offset;//,subframe_offset_F;
  unsigned int slot_offset;
  int i;
  unsigned int frame_length_samples = frame_parms->samples_per_tti * 10;
  unsigned int rx_offset;

  void (*dft)(int16_t *,int16_t *, int);
  int tmp_dft_in[256];  // This is for misalignment issues for 6 and 15 PRBs

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
    subframe_offset = frame_parms->ofdm_symbol_size * frame_parms->symbols_per_tti * (Ns>>1);
    slot_offset = frame_parms->ofdm_symbol_size * (frame_parms->symbols_per_tti>>1) * (Ns%2);
  } else {
    subframe_offset = frame_parms->samples_per_tti * (Ns>>1);
    slot_offset = (frame_parms->samples_per_tti>>1) * (Ns%2);
  }

  //  subframe_offset_F = frame_parms->ofdm_symbol_size * frame_parms->symbols_per_tti * (Ns>>1);


  if (l<0 || l>=7-frame_parms->Ncp) {
    msg("slot_fep: l must be between 0 and %d\n",7-frame_parms->Ncp);
    return(-1);
  }

  if (Ns<0 || Ns>=20) {
    msg("slot_fep: Ns must be between 0 and 19\n");
    return(-1);
  }


for (aa=0; aa<frame_parms->nb_antennas_rx; aa++) {
    memset(&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],0,frame_parms->ofdm_symbol_size*sizeof(int));

    rx_offset = sample_offset + slot_offset + nb_prefix_samples0 + subframe_offset - SOFFSET;
    // Align with 128 bit
    rx_offset = rx_offset - rx_offset % 4;

#ifdef DEBUG_FEP
    //  if (phy_vars_ue->frame <100)
    msg("slot_fep: frame %d: slot %d, symbol %d, nb_prefix_samples %d, nb_prefix_samples0 %d, slot_offset %d, subframe_offset %d, sample_offset %d,rx_offset %d\n", phy_vars_ue->frame_rx,Ns, symbol,
        nb_prefix_samples,nb_prefix_samples0,slot_offset,subframe_offset,sample_offset,rx_offset);
#endif

    if (l==0) {

      if (rx_offset > (frame_length_samples - frame_parms->ofdm_symbol_size))
        memcpy((short *)&ue_common_vars->rxdata[aa][frame_length_samples],
               (short *)&ue_common_vars->rxdata[aa][0],
               frame_parms->ofdm_symbol_size*sizeof(int));

      if ((rx_offset&3)!=0) {  // if input to dft is not 128-bit aligned, issue for size 6 and 15 PRBs
        memcpy((void *)tmp_dft_in,
               (void *)&ue_common_vars->rxdata[aa][(rx_offset-nb_prefix_samples0) % frame_length_samples],
               frame_parms->ofdm_symbol_size*sizeof(int));
        if(!use_w)
        {
        dft((int16_t *)tmp_dft_in,
            (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],1);
        }
        else
        {
               fftfftw((int16_t *)tmp_dft_in,
                  (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],
                  fftwsize,
                  0);
        }
      } else { // use dft input from RX buffer directly
        start_meas(&phy_vars_ue->rx_dft_stats);
  if(!use_w)
        {
            dft((int16_t *)&ue_common_vars->rxdata[aa][(rx_offset) % frame_length_samples],
            (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],1);
        }
        else
        {
               fftfftw((int16_t *)&ue_common_vars->rxdata[aa][(rx_offset) % frame_length_samples],
                  (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],
                  fftwsize,
                  0);
        }
        
        stop_meas(&phy_vars_ue->rx_dft_stats);

      }
    } else {
      rx_offset += (frame_parms->ofdm_symbol_size+nb_prefix_samples) +
                   (frame_parms->ofdm_symbol_size+nb_prefix_samples)*(l-1);

#ifdef DEBUG_FEP
      //  if (phy_vars_ue->frame <100)
      msg("slot_fep: frame %d: slot %d, symbol %d, nb_prefix_samples %d, nb_prefix_samples0 %d, slot_offset %d, subframe_offset %d, sample_offset %d,rx_offset %d\n", phy_vars_ue->frame_rx,Ns, symbol,
          nb_prefix_samples,nb_prefix_samples0,slot_offset,subframe_offset,sample_offset,rx_offset);
#endif

      if (rx_offset > (frame_length_samples - frame_parms->ofdm_symbol_size))
        memcpy((void *)&ue_common_vars->rxdata[aa][frame_length_samples],
               (void *)&ue_common_vars->rxdata[aa][0],
               frame_parms->ofdm_symbol_size*sizeof(int));

      start_meas(&phy_vars_ue->rx_dft_stats);

      if ((rx_offset&3)!=0) {  // if input to dft is not 128-bit aligned, issue for size 6 and 15 PRBs
        memcpy((void *)tmp_dft_in,
               (void *)&ue_common_vars->rxdata[aa][(rx_offset) % frame_length_samples],
               frame_parms->ofdm_symbol_size*sizeof(int));
        if(!use_w)
        {
            dft((int16_t *)tmp_dft_in,
                 (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],1);
        }
        else
        {
               fftfftw((int16_t *)tmp_dft_in,
                  (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],
                  fftwsize,
                  0);
        }
        
      } else { // use dft input from RX buffer directly
            if(!use_w)
        {
             dft((int16_t *)&ue_common_vars->rxdata[aa][(rx_offset) % frame_length_samples],
            (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],1);
        }
        else
        {
               fftfftw((int16_t *)&ue_common_vars->rxdata[aa][(rx_offset) % frame_length_samples],
                 (int16_t *)&ue_common_vars->rxdataF[aa][frame_parms->ofdm_symbol_size*symbol],
                  fftwsize,
                  0);
        }
       
      }

      stop_meas(&phy_vars_ue->rx_dft_stats);


    }

  }
//  blake  
  /*FILE *fp;
  fp = fopen("rxdata/offset","ab");
  fprintf(fp,"%d %d %d\n",Ns>>1,symbol,rx_offset);
  fclose(fp);
  char filename[100]; 
  //sprintf(filename,"rxdata/rxdata_sf%d_sym%d",Ns>>1,symbol);
  //write_output(filename,"w",&ue_common_vars->rxdata[0][(rx_offset) % frame_length_samples],512,1,1);
  sprintf(filename,"rxdata/rxdataF_sf%d_sym%d",Ns>>1,symbol);
  write_output(filename,"w",&ue_common_vars->rxdataF[0][frame_parms->ofdm_symbol_size*symbol],512,1,1);*/
  
  
  if (phy_vars_ue->perfect_ce == 0) {
    if ((l==0) || (l==(4-frame_parms->Ncp))) {
      for (aa=0; aa<frame_parms->nb_antennas_tx_eNB; aa++) {

#ifdef DEBUG_FEP
        msg("Channel estimation eNB %d, aatx %d, slot %d, symbol %d\n",eNB_id,aa,Ns,l);
#endif
        start_meas(&phy_vars_ue->dlsch_channel_estimation_stats);
        lte_dl_channel_estimation(phy_vars_ue,eNB_id,0,
                                  Ns,
                                  aa,
                                  l,
                                  symbol);
        stop_meas(&phy_vars_ue->dlsch_channel_estimation_stats);

        for (i=0; i<phy_vars_ue->PHY_measurements.n_adj_cells; i++) {
          lte_dl_channel_estimation(phy_vars_ue,eNB_id,i+1,
                                    Ns,
                                    aa,
                                    l,
                                    symbol);
        }
      }


      // do frequency offset estimation here!
      // use channel estimates from current symbol (=ch_t) and last symbol (ch_{t-1})
#ifdef DEBUG_FEP
      msg("Frequency offset estimation\n");
#endif

      if (l==(4-frame_parms->Ncp)) {
        start_meas(&phy_vars_ue->dlsch_freq_offset_estimation_stats);
        lte_est_freq_offset(ue_common_vars->dl_ch_estimates[0],
                            frame_parms,
                            l,
                            &ue_common_vars->freq_offset,
			    reset_freq_est);
        stop_meas(&phy_vars_ue->dlsch_freq_offset_estimation_stats);

      }
    }
  }

#ifdef DEBUG_FEP
  msg("slot_fep: done\n");
#endif
  return(0);
}