/***************************************************************************//**
 *   @file   Platform.c
 *   @brief  Implementation of Platform Driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2013(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include "stdint.h"

#include  <unistd.h>

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#include <string.h>
#include "pdma-lib.h"
#include "pdma-ioctl.h"
#include "platform.h"
#include <semaphore.h>
#include <math.h>
#include <pthread.h>
#include <sys/ioctl.h>
#include <fcntl.h>
/***************************************************************************//**
 * @brief usleep
*******************************************************************************/
#define buf_nb 64

static int fd;
int rd_block_size;
#define BLOCK_SIZE 7680*4

sem_t txbuf_empty, rxbuf_empty;
sem_t txbuf_full, rxbuf_full;

int **ptx_buff;
short **prx_buff;

int *rx_buf;

unsigned int tx_head, tx_tail, rx_head, rx_tail, tx_offset, rx_offset;

void init_buf_semaphore() {

    int i;

    printf("rd block size:%d\n", rd_block_size);

    rx_buf = (int *) malloc(rd_block_size * 2);

    ptx_buff = (int **) malloc(buf_nb * sizeof (int *));
    for (i = 0; i < buf_nb; i++)
        ptx_buff[i] = (int *) malloc(rd_block_size);
    prx_buff = (short **) malloc(buf_nb * sizeof (short *));
    for (i = 0; i < buf_nb; i++)
        prx_buff[i] = (short *) malloc(rd_block_size);


    sem_init(&txbuf_empty, 0, buf_nb);
    sem_init(&txbuf_full, 0, 0);
    sem_init(&rxbuf_empty, 0, buf_nb);
    sem_init(&rxbuf_full, 0, 0);



    tx_head = 0;
    tx_tail = 0;
    rx_head = 0;
    rx_tail = 0;

    tx_offset = 0;
    rx_offset = 0;

}

int init_pcie_interface_onlyonce() {

    int ret;
    struct pdma_info info;
    fd = open("/dev/pdma", O_RDWR);


    if (fd == -1) {
        printf("open failed for pdma device \n");
    }

    /* get info */
    ret = ioctl(fd, PDMA_IOC_INFO, (unsigned long) &info);
    if (ret == -1) {
        printf("get info failed\n");
        close(fd);
        return -1;
    }

    rd_block_size = info.rd_block_sz;


}

int gen_dat_to_file(char *file_name, int file_size, int data_size, int data_mode) {


    FILE *fp, *fp1;
    char fname[50];
    int i, j, k;
    char *buf[10];

    fp = fopen(file_name, "w");

    i = 0;
    while (file_name[i] != '\0') {
        fname[i] = file_name[i];
        i++;
    }

    fname[i++] = '.';
    fname[i++] = 't';
    fname[i++] = 'x';
    fname[i++] = 't';
    fname[i] = '\0';
    fp1 = fopen(fname, "w");

    for (i = 0; i < 10; i++)
        buf[i] = (char *) malloc(file_size * sizeof (char));

    switch (data_mode) {
        case 1: //sine
            for (i = 0; i < 10; i++)
                for (j = 0; j < file_size / 20; j++) {

                    ((short *) buf[i])[j] = data_size * 1024 * sin(2 * M_PI * j / (file_size / 20));
                    fprintf(fp1, "%d\n", ((short *) buf[i])[j]);
                }
            break;
        case 2: //square 
            for (i = 0; i < 10; i++)
                for (j = 0; j < file_size / 400; j++)
                    for (k = 0; k < 10; k++) {
                        ((short *) buf[i])[j + k] = 0;
                        ((short *) buf[i])[j + 10 + k] = data_size << 8;

                    }
            break;
        case 3: //all 1
            break;


    }
    fwrite(buf, 1, file_size, fp);

    for (i = 0; i < 10; i++)
        for (j = 0; j < file_size / 20; j++)
            fprintf(fp1, "%d\n", ((short *) buf[i])[j]);

    for (i = 0; i < 10; i++)
        free(buf[i]);
    fclose(fp);
    fclose(fp1);
    return 0;

}

int tx_data_pdma(int *buf) {
    static int count = 0;
    int ret, i, j = 0;
    char fname[50];

    static FILE *fp;
    static int k1 = 0;
    static int cnt = 0, frame_nb = 1;
    static int k = 0;

#ifdef PCIE_INTERFACE    
    ret = write(fd, buf, rd_block_size);
    if (ret != rd_block_size) {
        printf("write failed\n");
        ret = -1;
        return ret;
    }
#else
    for (i = 0; i < rd_block_size / 4; i += 2) {
        sprintf(fname, "data/SI_tx_data_%d.txt", frame_nb);
        if (k1 == 0) {
            fp = fopen(fname, "w");
            if (fp == NULL)
                printf("open tx_data_1 fail\n");
        }
        k1 = 1;
        fprintf(fp, "%hd %hd\n", ((short* )buf)[i << 1], ((short*)buf)[(i << 1) + 1]);
        //printf("%d %d\n",buf[i<<1],buf[(i<<1)+1]);
        cnt++;
        if (cnt == LENGTHOFFRAME) {
            cnt = 0;
            k1 = 0;
            frame_nb++;
            printf("***********************frame_nb:%d**************\n",frame_nb);
            fclose(fp);
        }
    }
#endif





}

int rx_data_pdma(short *buf) {
    int count = 0;
    int ret, i, k2;
    short p1, p2;
    // size_t k1;
    static FILE *fp,*fp2;
    static int k1 = 0;
    static int cnt = 0, frame_nb = 301;
    static int k = 0;
    long j = 0;
    char fname[100];
    char fname1[100];

    
    
    
#ifdef PCIE_INTERFACE
    ret = read(fd, rx_buf, rd_block_size);
    if (ret != rd_block_size) {
        printf("read failed\n");
        ret = -1;
        return ret;
    }
    rx_buf += rd_block_size / 4;
    ret = read(fd, rx_buf, rd_block_size);
    if (ret != rd_block_size) {
        printf("read failed\n");
        ret = -1;
        return ret;
    }
    rx_buf -= rd_block_size / 4;

    for (i = 0; i < rd_block_size / 4; i++) {
        ((int*) buf)[i] = rx_buf[(i << 1) + 1];
    }
#else 
    
    short *temp_buf1,*temp_buf2;
    temp_buf1 = (short *) malloc(rd_block_size );
    temp_buf2 = (short *) malloc(rd_block_size );
    if (frame_nb <= 2000) {
        //printf("%d\n",rd_block_size);
        for (i = 0; i < rd_block_size / 4; i++) {
           // sprintf(fname,"data/rx_%d",frame_nb);
            //sprintf(fname,"ue_txdata",frame_nb);
           // sprintf(fname, "/home/cic/Desktop/4.5/LTE_UE_multi-user1/data/UE_tx_data_1.txt", frame_nb);
           // sprintf(fname1, "/home/cic/Desktop/4.5/LTE_UE_multi-user2/data/UE_tx_data_1.txt", frame_nb);
            if (k1 == 0) {
                fp = fopen(fname, "r");
                fp2 = fopen(fname1, "r");
                //fp = fopen("tx_data_1.txt","r");
                if (fp == NULL)
                    printf("open tx_data_1 fail\n");
            }
            k1 = 1;
           // fscanf(fp, "%hd %hd\n", &temp_buf1[i << 1], &temp_buf1[(i << 1) + 1]);
           // fscanf(fp2, "%hd %hd\n", &temp_buf2[i << 1], &temp_buf2[(i << 1) + 1]);
            //buf[i<<1]=temp_buf1[i << 1]+temp_buf2[i << 1];
            //buf[(i << 1) + 1]=temp_buf1[(i << 1) + 1]+temp_buf2[(i << 1) + 1];
            //printf("%d %d\n",buf[i<<1],buf[(i<<1)+1]);
            fscanf(fp, "%hd %hd\n", &buf[i << 1], &buf[(i << 1) + 1]);
            cnt++;
            if (cnt == LENGTHOFFRAME) {
                cnt = 0;
                k1 = 0;
                frame_nb++;
                fclose(fp);
            }
        }
    }
    free(temp_buf1);
    free(temp_buf2);

#endif

}

int rx_getbuf(short *buf, int len) {

    int i = 0, k = 0, l;
    char fm[20], fl[20];


    while (len > 0) {
        if (rx_offset == 0) {

            sem_wait(&rxbuf_full);
            if (len < rd_block_size) {

                memcpy(buf, prx_buff[rx_head], len);

                rx_offset = len;
                len = 0;
            } else {
                memcpy(buf, prx_buff[rx_head], rd_block_size);
                buf += (rd_block_size / 2);
                len -= rd_block_size;
                rx_head = (++rx_head) % buf_nb;
                rx_offset = 0;
                sem_post(&rxbuf_empty);

            }
        } else {
            if (len < rd_block_size - rx_offset) {
                memcpy(buf, &prx_buff[rx_head][rx_offset / 2], len);
                rx_offset += len;
                len = 0;
            } else {
                memcpy(buf, &prx_buff[rx_head][rx_offset / 2], rd_block_size - rx_offset);
                buf += ((rd_block_size - rx_offset) / 2);
                len -= (rd_block_size - rx_offset);
                rx_offset = 0;
                rx_head = (++rx_head) % buf_nb;
                sem_post(&rxbuf_empty);
            }

        }


    }
    return 0;


}

int tx_sentbuf(int *buf, int len) {

    static int count = 0;

    while (len > 0) {
        if (tx_offset != 0) {
            if (len < rd_block_size - tx_offset) {

                memcpy(&ptx_buff[tx_tail][tx_offset / 4], buf, len);

                tx_offset += len;
                len = 0;
            } else {
                memcpy(&ptx_buff[tx_tail][tx_offset / 4], buf, rd_block_size - tx_offset);
                len -= (rd_block_size - tx_offset);


                buf += ((rd_block_size - tx_offset) / 4);
                tx_offset = 0;
                tx_tail = (++tx_tail) % buf_nb;
                sem_post(&txbuf_full);

            }

        } else {
            sem_wait(&txbuf_empty);
            if (len >= rd_block_size) {

                memcpy(ptx_buff[tx_tail], buf, rd_block_size);
                buf += (rd_block_size / 4);


                len -= rd_block_size;
                tx_tail = (++tx_tail) % buf_nb;
                tx_offset = 0;
                sem_post(&txbuf_full);

            } else {
                memcpy(ptx_buff[tx_tail], buf, len);
                tx_offset = len;
                len = 0;

            }


        }


    }
    return 0;
}

static void *ad9361_tx_thread(void *argc) {

    cpu_set_t mask_send;
    CPU_ZERO(&mask_send);
    CPU_SET(1, &mask_send);
    pthread_setaffinity_np(pthread_self(), sizeof (mask_send), &mask_send);


    while (1) {
        sem_wait(&txbuf_full);
        tx_data_pdma(ptx_buff[tx_head]);
        tx_head = (tx_head + 1) % buf_nb;
        sem_post(&txbuf_empty);
    }

}

static void *ad9361_rx_thread(void *argc) {
    int i;
    cpu_set_t mask_send;
    CPU_ZERO(&mask_send);
    CPU_SET(2, &mask_send);
    pthread_setaffinity_np(pthread_self(), sizeof (mask_send), &mask_send);


    while (1) {

        sem_getvalue(&rxbuf_empty, &i);

        sem_wait(&rxbuf_empty);

        rx_data_pdma(prx_buff[rx_tail]);
        rx_tail = (rx_tail + 1) % buf_nb;
        sem_post(&rxbuf_full);
        sem_getvalue(&rxbuf_full, &i);
        i = i;
    }


}

int ad9361_trx_manager() {

    pthread_t pid_tx, pid_rx;
    void *retval;

#ifdef PCIE_INTERFACE
    init_pcie_interface_onlyonce();
#else
    rd_block_size = (1 << 14);
#endif

    init_buf_semaphore();
    int err_code;

    err_code = pthread_create(&pid_tx, NULL, ad9361_tx_thread, (void *) 0);

    if (err_code != 0) {
        printf("Could not allocate err code, error %d\n", err_code);
        return (err_code);
    } else {
        printf("allocate ad9361_tx_thread successfully!\n");

    }

    err_code = pthread_create(&pid_rx, NULL, ad9361_rx_thread, (void *) 0);

    if (err_code != 0) {
        printf("Could not allocate err code, error %d\n", err_code);
        return (err_code);
    } else {
        printf("allocate ad9361_rx_thread successfully!\n");

    }

    // pthread_join(pid_tx, &retval);
    //  pthread_join(pid_rx, &retval);

    return 0;

}

