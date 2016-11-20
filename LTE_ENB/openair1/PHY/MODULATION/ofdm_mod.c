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
/*
 * @defgroup _PHY_MODULATION_
 * @ingroup _physical_layer_ref_implementation_
 * @{
\section _phy_modulation_ OFDM Modulation Blocks
This section deals with basic functions for OFDM Modulation.


 */

#include "PHY/defs.h"
#include "UTIL/LOG/log.h"
#include <fftw3.h>
#include <math.h>
//static short temp2[2048*4] __attribute__((aligned(16)));

//#define DEBUG_OFDM_MOD
extern int use_w;
fftw_complex *fftw_in, *fftw_out;
fftw_plan p_fwd, p_bwd;
fftw_complex *fftw_in_sync, *fftw_out_sync;
fftw_plan p_fwd_sync, p_bwd_sync;
typedef unsigned short u16;
typedef short s16;
typedef unsigned char u8;


fftwf_complex *fftw_in_sync1, *fftw_out_sync1;
fftwf_plan p_fwd_sync1, p_bwd_sync1;

void Init_fftw(int N) {
    fftw_in = (fftw_complex *) fftw_malloc(sizeof (fftw_complex) * N);
    fftw_out = (fftw_complex *) fftw_malloc(sizeof (fftw_complex) * N);
    p_fwd = fftw_plan_dft_1d(N, fftw_in, fftw_out, FFTW_FORWARD, FFTW_MEASURE);
    p_bwd = fftw_plan_dft_1d(N, fftw_in, fftw_out, FFTW_BACKWARD, FFTW_MEASURE);
}

void Init_fftw_sync(int N) {
    fftw_in_sync = (fftw_complex *) fftw_malloc(sizeof (fftw_complex) * N);
    fftw_out_sync = (fftw_complex *) fftw_malloc(sizeof (fftw_complex) * N);
    p_fwd_sync = fftw_plan_dft_1d(N, fftw_in_sync, fftw_out_sync, FFTW_FORWARD, FFTW_MEASURE);
    p_bwd_sync = fftw_plan_dft_1d(N, fftw_in_sync, fftw_out_sync, FFTW_BACKWARD, FFTW_MEASURE);


    fftw_in_sync1 = (fftwf_complex *) fftwf_malloc(sizeof (fftwf_complex) * N);
    fftw_out_sync1 = (fftwf_complex *) fftwf_malloc(sizeof (fftwf_complex) * N);
    p_fwd_sync1 = fftwf_plan_dft_1d(N, fftw_in_sync1, fftw_out_sync1, FFTW_FORWARD, FFTW_MEASURE);
    p_bwd_sync1 = fftwf_plan_dft_1d(N, fftw_in_sync1, fftw_out_sync1, FFTW_BACKWARD, FFTW_MEASURE);

}

void fftfftw_sync(double *in, double *out, int size, int flag) {
    int i;
    //FILE *fp=fopen("/home/cic/Desktop/prach_research/freq_dot","w"); 
    for (i = 0; i < size; i++) {
        fftw_in_sync[i][0] = in[2 * i];
        fftw_in_sync[i][1] = in[2 * i + 1];
        //printf("%lf %lf\n",fftw_in_sync[i][0],fftw_in_sync[i][1]);
    }
    if (flag == 0) {
        fftw_execute(p_fwd_sync);
        for (i = 0; i < size; i++) {
            out[2 * i] = fftw_out_sync[i][0];
            out[2 * i + 1] = fftw_out_sync[i][1];
            //printf("%lf %lf\n",out[2*i],out[2*i+1]);
            // fprintf(fp,"%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
        }
    } else {
        fftw_execute(p_bwd_sync);
        for (i = 0; i < size; i++) {
            out[2 * i] = fftw_out_sync[i][0] / size;
            out[2 * i + 1] = fftw_out_sync[i][1] / size;
            //printf("%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
            //printf("%lf %lf\n",out[2*i], out[2*i+1]);
        }
    }
    //fclose(fp);
}

void fftfftw_sync_interger(int *in,int *out,int size,int flag){
//    FILE *fp=fopen("prachdata/dding_d","w"); 
//     FILE *fp1=fopen("prachdata/dding1_d","w"); 
    int i;
    for(i=0;i<size;i++){
        fftw_in_sync1[i][0]=(float)in[2*i];
        fftw_in_sync1[i][1]=(float)in[2*i+1];
        //printf("%lf %lf\n",fftw_in_sync[i][0],fftw_in_sync[i][1]);
         //fprintf(fp,"%f %f\n",fftw_in_sync1[i][0],fftw_in_sync1[i][1]);
    }
    if(flag==0){
        fftwf_execute(p_fwd_sync1);
        for(i=0;i<size;i++){
            out[2*i] = fftw_out_sync1[i][0]/32;
            out[2*i+1] = fftw_out_sync1[i][1]/32;
//            printf("%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
//            fprintf(fp,"%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
        }
    }
    else{
        fftwf_execute(p_bwd_sync1);
        for(i=0;i<size;i++){     
            out[2*i] = (int)(fftw_out_sync1[i][0]/512);
            out[2*i+1] = (int)(fftw_out_sync1[i][1]/512);
//            printf("%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
//            fprintf(fp,"%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
            //fprintf(fp1,"%f %f\n",fftw_out_sync1[i][0],fftw_out_sync1[i][1]);
        }
    }
//    fclose(fp);
//    fclose(fp1);
} 

void fftfftw(s16 *in, s16 *out, int size, int flag) {
    float offset = sqrt(size);

    int i;
    for (i = 0; i < size; i++) {
        fftw_in[i][0] = in[2 * i];
        fftw_in[i][1] = in[2 * i + 1];
    }
    if (flag == 0) {
        fftw_execute(p_fwd);
        for (i = 0; i < size; i++) {
            out[2 * i] = fftw_out[i][0] / offset;
            out[2 * i + 1] = fftw_out[i][1] / offset;
        }
    } else {
        fftw_execute(p_bwd);
        for (i = 0; i < size; i++) {
            out[2 * i] = fftw_out[i][0] / offset;
            out[2 * i + 1] = fftw_out[i][1] / offset;
        }
    }

}

void fftfftw_sync_short(short *in, short *out, int size, int flag) {
    //    FILE *fp=fopen("prachdata/dding_d","w"); 
    //     FILE *fp1=fopen("prachdata/dding1_d","w"); 
    int i;
    for (i = 0; i < size; i++) {
        fftw_in_sync1[i][0] = (float) in[2 * i];
        fftw_in_sync1[i][1] = (float) in[2 * i + 1];
        //printf("%lf %lf\n",fftw_in_sync[i][0],fftw_in_sync[i][1]);
        //fprintf(fp,"%f %f\n",fftw_in_sync1[i][0],fftw_in_sync1[i][1]);
    }
    if (flag == 0) {
        fftwf_execute(p_fwd_sync1);
        for (i = 0; i < size; i++) {
            out[2 * i] = fftw_out_sync1[i][0] / 32;
            out[2 * i + 1] = fftw_out_sync1[i][1] / 32;
            //            printf("%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
            //            fprintf(fp,"%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
        }
    } else {
        fftwf_execute(p_bwd_sync1);
        for (i = 0; i < size; i++) {
            out[2 * i] = (fftw_out_sync1[i][0] / 512);
            out[2 * i + 1] = (fftw_out_sync1[i][1] / 512);
            //            printf("%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
            //            fprintf(fp,"%lf %lf\n",fftw_out_sync[i][0],fftw_out_sync[i][1]);
            //fprintf(fp1,"%f %f\n",fftw_out_sync1[i][0],fftw_out_sync1[i][1]);
        }
    }
    //    fclose(fp);
    //    fclose(fp1);
}

void normal_prefix_mod(int32_t *txdataF, int32_t *txdata, uint8_t nsymb, LTE_DL_FRAME_PARMS *frame_parms) {

    uint8_t i;
    int short_offset = 0;

    if ((2 * nsymb) < frame_parms->symbols_per_tti)
        short_offset = 1;

    //  printf("nsymb %d\n",nsymb);
    for (i = 0; i < ((short_offset) + 2 * nsymb / frame_parms->symbols_per_tti); i++) {

#ifdef DEBUG_OFDM_MOD
        printf("slot i %d (txdata offset %d, txoutput %p)\n", i, (i * (frame_parms->samples_per_tti >> 1)),
                txdata + (i * (frame_parms->samples_per_tti >> 1)));
#endif

        PHY_ofdm_mod(txdataF + (i * NUMBER_OF_OFDM_CARRIERS * frame_parms->symbols_per_tti >> 1), // input
                txdata + (i * frame_parms->samples_per_tti >> 1), // output
                frame_parms->log2_symbol_size, // log2_fft_size
                1, // number of symbols
                frame_parms->nb_prefix_samples0, // number of prefix samples
                CYCLIC_PREFIX);
#ifdef DEBUG_OFDM_MOD
        printf("slot i %d (txdata offset %d)\n", i, OFDM_SYMBOL_SIZE_COMPLEX_SAMPLES0 + (i * frame_parms->samples_per_tti >> 1));
#endif

        PHY_ofdm_mod(txdataF + NUMBER_OF_OFDM_CARRIERS + (i * NUMBER_OF_OFDM_CARRIERS * (frame_parms->symbols_per_tti >> 1)), // input
                txdata + OFDM_SYMBOL_SIZE_COMPLEX_SAMPLES0 + (i * (frame_parms->samples_per_tti >> 1)), // output
                frame_parms->log2_symbol_size, // log2_fft_size
                (short_offset == 1) ? 1 : (frame_parms->symbols_per_tti >> 1) - 1, //6,                 // number of symbols
                frame_parms->nb_prefix_samples, // number of prefix samples
                CYCLIC_PREFIX);


    }
}

void PHY_ofdm_mod_1(int *input, /// pointer to complex input
        int *output, /// pointer to complex output
        unsigned char log2fftsize, /// log2(FFT_SIZE)
        unsigned char nb_symbols, /// number of OFDM symbols
        unsigned short nb_prefix_samples, /// cyclic prefix length
        Extension_t etype /// type of extension
        ) {

    static short temp[2048 * 4] __attribute__((aligned(16)));
    unsigned short i, j;
    short k;

    volatile int *output_ptr = (int*) 0;

    int *temp_ptr = (int*) 0;
    void (*idft)(int16_t *, int16_t *, int);
    //blake
    /* void (*dft)(int16_t *,int16_t *, int);
     dft = dft512;*/
    switch (log2fftsize) {
        case 7:
            idft = idft128;
            break;

        case 8:
            idft = idft256;
            break;

        case 9:
            idft = idft512;
            break;

        case 10:
            idft = idft1024;
            break;

        case 11:
            idft = idft2048;
            break;

        default:
            idft = idft512;
            break;
    }

#ifdef DEBUG_OFDM_MOD
    msg("[PHY] OFDM mod (size %d,prefix %d) Symbols %d, input %p, output %p\n",
            1 << log2fftsize, nb_prefix_samples, nb_symbols, input, output);
#endif



    for (i = 0; i < nb_symbols; i++) {

#ifdef DEBUG_OFDM_MOD
        msg("[PHY] symbol %d/%d (%p,%p -> %p)\n", i, nb_symbols, input, &input[i << log2fftsize], &output[(i << log2fftsize) + ((i) * nb_prefix_samples)]);
#endif

        idft((int16_t *) & input[i << log2fftsize],
                (log2fftsize == 7) ? (int16_t *) temp : (int16_t *) & output[(i << log2fftsize) + ((1 + i) * nb_prefix_samples)],
                1);
        //write_output("fft_out.m","fftout",temp,(1<<log2fftsize)*2,1,1);
        // dft512((int16_t *)&output[(i<<log2fftsize) + ((1+i)*nb_prefix_samples)],0);
        //memset(temp,0,1<<log2fftsize);
        // Copy to frame buffer with Cyclic Extension
        // Note:  will have to adjust for synchronization offset!

        switch (etype) {
            case CYCLIC_PREFIX:
                output_ptr = &output[(i << log2fftsize) + ((1 + i) * nb_prefix_samples)];
                temp_ptr = (int *) temp;


                //      msg("Doing cyclic prefix method\n");

                if (log2fftsize == 7) {
                    for (j = 0; j < ((1 << log2fftsize)); j++) {
                        output_ptr[j] = temp_ptr[j];
                    }
                }

                j = (1 << log2fftsize);

                for (k = -1; k >= -nb_prefix_samples; k--) {
                    output_ptr[k] = output_ptr[--j];
                }

                break;

            case CYCLIC_SUFFIX:


                output_ptr = &output[(i << log2fftsize)+ (i * nb_prefix_samples)];

                temp_ptr = (int *) temp;

                //      msg("Doing cyclic suffix method\n");

                for (j = 0; j < (1 << log2fftsize); j++) {
                    output_ptr[j] = temp_ptr[2 * j];
                }


                for (j = 0; j < nb_prefix_samples; j++)
                    output_ptr[(1 << log2fftsize) + j] = output_ptr[j];

                break;

            case ZEROS:

                break;

            case NONE:

                //      msg("NO EXTENSION!\n");
                output_ptr = &output[(i << log2fftsize)];

                temp_ptr = (int *) temp;

                for (j = 0; j < (1 << log2fftsize); j++) {
                    output_ptr[j] = temp_ptr[2 * j];


                }

                break;

            default:
                break;

        }



    }

    /*
    printf("input %p, output %p, log2fftsize %d, nsymb %d\n",input,output,log2fftsize,nb_symbols);
    for (i=0;i<16;i++)
      printf("%d %d\n",((short *)input)[i<<1],((short *)input)[1+(i<<1)]);
    printf("------\n");
    for (i=0;i<16;i++)
      printf("%d %d\n",((short *)output)[i<<1],((short *)output)[1+(i<<1)]);
     */
}

void PHY_ofdm_mod(int *input, /// pointer to complex input
        int *output, /// pointer to complex output
        unsigned char log2fftsize, /// log2(FFT_SIZE)
        unsigned char nb_symbols, /// number of OFDM symbols
        unsigned short nb_prefix_samples, /// cyclic prefix length
        Extension_t etype /// type of extension
        ) {

    static short temp[2048 * 4] __attribute__((aligned(16)));
    unsigned short i, j;
    short k;

    volatile int *output_ptr = (int*) 0;

    int *temp_ptr = (int*) 0;
    void (*idft)(int16_t *, int16_t *, int);

    switch (log2fftsize) {
        case 7:
            idft = idft128;
            break;

        case 8:
            idft = idft256;
            break;

        case 9:
            idft = idft512;
            break;

        case 10:
            idft = idft1024;
            break;

        case 11:
            idft = idft2048;
            break;

        default:
            idft = idft512;
            break;
    }

#ifdef DEBUG_OFDM_MOD
    msg("[PHY] OFDM mod (size %d,prefix %d) Symbols %d, input %p, output %p\n",
            1 << log2fftsize, nb_prefix_samples, nb_symbols, input, output);
#endif



    for (i = 0; i < nb_symbols; i++) {

#ifdef DEBUG_OFDM_MOD
        msg("[PHY] symbol %d/%d (%p,%p -> %p)\n", i, nb_symbols, input, &input[i << log2fftsize], &output[(i << log2fftsize) + ((i) * nb_prefix_samples)]);
#endif
        if (!use_w) {
            idft((int16_t *) & input[i << log2fftsize],
                    (log2fftsize == 7) ? (int16_t *) temp : (int16_t *) & output[(i << log2fftsize) + ((1 + i) * nb_prefix_samples)],
                    1);
        } else {
            fftfftw((int16_t *) & input[i << log2fftsize],
                    (log2fftsize == 7) ? (int16_t *) temp : (int16_t *) & output[(i << log2fftsize) + ((1 + i) * nb_prefix_samples)],
                    fftwsize,
                    1);
        }
        //    write_output("fft_out.m","fftout",temp,(1<<log2fftsize)*2,1,1);

        //memset(temp,0,1<<log2fftsize);


        // Copy to frame buffer with Cyclic Extension
        // Note:  will have to adjust for synchronization offset!

        switch (etype) {
            case CYCLIC_PREFIX:
                output_ptr = &output[(i << log2fftsize) + ((1 + i) * nb_prefix_samples)];
                temp_ptr = (int *) temp;


                //      msg("Doing cyclic prefix method\n");

                if (log2fftsize == 7) {
                    for (j = 0; j < ((1 << log2fftsize)); j++) {
                        output_ptr[j] = temp_ptr[j];
                    }
                }

                j = (1 << log2fftsize);

                for (k = -1; k >= -nb_prefix_samples; k--) {
                    output_ptr[k] = output_ptr[--j];
                }

                break;

            case CYCLIC_SUFFIX:


                output_ptr = &output[(i << log2fftsize)+ (i * nb_prefix_samples)];

                temp_ptr = (int *) temp;

                //      msg("Doing cyclic suffix method\n");

                for (j = 0; j < (1 << log2fftsize); j++) {
                    output_ptr[j] = temp_ptr[2 * j];
                }


                for (j = 0; j < nb_prefix_samples; j++)
                    output_ptr[(1 << log2fftsize) + j] = output_ptr[j];

                break;

            case ZEROS:

                break;

            case NONE:

                //      msg("NO EXTENSION!\n");
                output_ptr = &output[(i << log2fftsize)];

                temp_ptr = (int *) temp;

                for (j = 0; j < (1 << log2fftsize); j++) {
                    output_ptr[j] = temp_ptr[2 * j];


                }

                break;

            default:
                break;

        }



    }

    /*
    printf("input %p, output %p, log2fftsize %d, nsymb %d\n",input,output,log2fftsize,nb_symbols);
    for (i=0;i<16;i++)
      printf("%d %d\n",((short *)input)[i<<1],((short *)input)[1+(i<<1)]);
    printf("------\n");
    for (i=0;i<16;i++)
      printf("%d %d\n",((short *)output)[i<<1],((short *)output)[1+(i<<1)]);
     */
}

void do_OFDM_mod(mod_sym_t **txdataF, int32_t **txdata, uint32_t frame, uint16_t next_slot, LTE_DL_FRAME_PARMS *frame_parms) {

    int aa, slot_offset, slot_offset_F;

    slot_offset_F = (next_slot)*(frame_parms->ofdm_symbol_size)*((frame_parms->Ncp == 1) ? 6 : 7);
    slot_offset = (next_slot)*(frame_parms->samples_per_tti >> 1);

    for (aa = 0; aa < frame_parms->nb_antennas_tx; aa++) {
        if (is_pmch_subframe(frame, next_slot >> 1, frame_parms)) {
            if ((next_slot % 2) == 0) {
                LOG_D(PHY, "Frame %d, subframe %d: Doing MBSFN modulation (slot_offset %d)\n", frame, next_slot >> 1, slot_offset);
                PHY_ofdm_mod(&txdataF[aa][slot_offset_F], // input
                        &txdata[aa][slot_offset], // output
                        frame_parms->log2_symbol_size, // log2_fft_size
                        12, // number of symbols
                        frame_parms->ofdm_symbol_size >> 2, // number of prefix samples
                        CYCLIC_PREFIX);

                if (frame_parms->Ncp == EXTENDED)
                    PHY_ofdm_mod(&txdataF[aa][slot_offset_F], // input
                        &txdata[aa][slot_offset], // output
                        frame_parms->log2_symbol_size, // log2_fft_size
                        2, // number of symbols
                        frame_parms->nb_prefix_samples, // number of prefix samples
                        CYCLIC_PREFIX);
                else {
                    LOG_D(PHY, "Frame %d, subframe %d: Doing PDCCH modulation\n", frame, next_slot >> 1);
                    normal_prefix_mod(&txdataF[aa][slot_offset_F],
                            &txdata[aa][slot_offset],
                            2,
                            frame_parms);
                }
            }
        } else {
            if (frame_parms->Ncp == EXTENDED)
                PHY_ofdm_mod(&txdataF[aa][slot_offset_F], // input
                    &txdata[aa][slot_offset], // output
                    frame_parms->log2_symbol_size, // log2_fft_size
                    6, // number of symbols
                    frame_parms->nb_prefix_samples, // number of prefix samples
                    CYCLIC_PREFIX);
            else {
                normal_prefix_mod(&txdataF[aa][slot_offset_F],
                        &txdata[aa][slot_offset],
                        7,
                        frame_parms);
            }
        }
    }

}

/** @} */
