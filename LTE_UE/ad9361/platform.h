/***************************************************************************//**
 *   @file   platform.h
 *   @brief  Header file of Platform driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2014(c) Analog Devices, Inc.
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
#ifndef PLATFORM_H_
#define PLATFORM_H_

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include "stdint.h"
#include <stdbool.h>
  
#define __USE_GNU       //启用CPU_ZERO等相关的宏  
#include <sched.h> 
/******************************************************************************/
/********************** Macros and Constants Definitions **********************/
/******************************************************************************/
#define ADI_REG_CNTRL			0x0044
#define ADI_R1_MODE				(1 << 2)
#define ADI_DDR_EDGESEL			(1 << 1)
#define ADI_PIN_MODE			(1 << 0)

#define ADI_REG_STATUS			0x005C
#define ADI_MUX_PN_ERR			(1 << 3)
#define ADI_MUX_PN_OOS			(1 << 2)
#define ADI_MUX_OVER_RANGE		(1 << 1)
#define ADI_STATUS				(1 << 0)

#define ADI_REG_CHAN_CNTRL(c)	(0x0400 + (c) * 0x40)
#define ADI_PN_SEL				(1 << 10)
#define ADI_IQCOR_ENB			(1 << 9)
#define ADI_DCFILT_ENB			(1 << 8)
#define ADI_FORMAT_SIGNEXT		(1 << 6)
#define ADI_FORMAT_TYPE			(1 << 5)
#define ADI_FORMAT_ENABLE		(1 << 4)
#define ADI_PN23_TYPE			(1 << 1)
#define ADI_ENABLE				(1 << 0)

#define ADI_REG_CHAN_STATUS(c)	(0x0404 + (c) * 0x40)
#define ADI_PN_ERR				(1 << 2)
#define ADI_PN_OOS				(1 << 1)
#define ADI_OVER_RANGE			(1 << 0)

#define ADI_REG_CHAN_CNTRL_1(c)		(0x0410 + (c) * 0x40)
#define ADI_DCFILT_OFFSET(x)		(((x) & 0xFFFF) << 16)
#define ADI_TO_DCFILT_OFFSET(x)		(((x) >> 16) & 0xFFFF)
#define ADI_DCFILT_COEFF(x)			(((x) & 0xFFFF) << 0)
#define ADI_TO_DCFILT_COEFF(x)		(((x) >> 0) & 0xFFFF)

#define ADI_REG_CHAN_CNTRL_2(c)		(0x0414 + (c) * 0x40)
#define ADI_IQCOR_COEFF_1(x)		(((x) & 0xFFFF) << 16)
#define ADI_TO_IQCOR_COEFF_1(x)		(((x) >> 16) & 0xFFFF)
#define ADI_IQCOR_COEFF_2(x)		(((x) & 0xFFFF) << 0)
#define ADI_TO_IQCOR_COEFF_2(x)		(((x) >> 0) & 0xFFFF)


enum data_mode{

    RANDOM_DATA,
    SINE_DATA,
    SQUARE_DATA
};


/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
int32_t spi_init(uint32_t device_id,
				 uint8_t  clk_pha,
				 uint8_t  clk_pol);
int32_t spi_read(uint8_t *data,
				 uint8_t bytes_number);
int spi_write_then_read(struct spi_device *spi,
		const unsigned char *txbuf, unsigned n_tx,
		unsigned char *rxbuf, unsigned n_rx);
void gpio_init(uint32_t device_id);
void gpio_direction(uint8_t pin, uint8_t direction);
bool gpio_is_valid(int number);
void gpio_set_value(unsigned gpio, int value);
void udelay(unsigned long usecs);
void mdelay(unsigned long msecs);
unsigned long msleep_interruptible(unsigned int msecs);
void axiadc_init(struct ad9361_rf_phy *phy);
unsigned int axiadc_read(struct axiadc_state *st, unsigned long reg);
void axiadc_write(struct axiadc_state *st, unsigned reg, unsigned val);

void init_pcie_interface();

void clk_conf();
void bbpll_conf();
void ensm_conf();
void rfpll_conf();
void trxpll_conf();
void clc_buf(int n);

int check_bar_reg();

int char_to_int(char *s);
int init_reg_name();
char  *reg_getname(unsigned int reg);



int write_file1(unsigned int reg,int spi_write_cmd,int val);
int write_file2(unsigned int reg, int spi_write_cmd, int spi_read_cmd,
        unsigned char val, unsigned char w_val,unsigned char right);
int write_beginning1();
int write_beginning2();



int rx_getbuf(short *buf, int len);
int tx_sentbuf(int *buf, int len);
int ad9361_trx_manager();
int rw_pcie_bar_reg(int type, int val);
int rw_pcie_bar_reg_5174(int type, int val);
int rw_pcie_bar_reg_dac(int type, int val);
int write_output(const char *fname,const char *vname,void *data,int length,int dec,char format);
void clc_file();
#endif
