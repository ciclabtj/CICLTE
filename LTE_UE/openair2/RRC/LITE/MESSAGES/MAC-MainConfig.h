/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_MAC_MainConfig_H_
#define	_MAC_MainConfig_H_


#include <asn_application.h>

/* Including external dependencies */
#include "TimeAlignmentTimer.h"
#include <NativeEnumerated.h>
#include <BOOLEAN.h>
#include <constr_SEQUENCE.h>
#include <NULL.h>
#include <constr_CHOICE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx {
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n1	= 0,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n2	= 1,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n3	= 2,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n4	= 3,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n5	= 4,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n6	= 5,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n7	= 6,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n8	= 7,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n10	= 8,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n12	= 9,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n16	= 10,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n20	= 11,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n24	= 12,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_n28	= 13,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_spare2	= 14,
	MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx_spare1	= 15
} e_MAC_MainConfig__ul_SCH_Config__maxHARQ_Tx;
typedef enum MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer {
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf5	= 0,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf10	= 1,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf16	= 2,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf20	= 3,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf32	= 4,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf40	= 5,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf64	= 6,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf80	= 7,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf128	= 8,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf160	= 9,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf320	= 10,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf640	= 11,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf1280	= 12,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_sf2560	= 13,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_infinity	= 14,
	MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer_spare1	= 15
} e_MAC_MainConfig__ul_SCH_Config__periodicBSR_Timer;
typedef enum MAC_MainConfig__ul_SCH_Config__retxBSR_Timer {
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf320	= 0,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf640	= 1,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf1280	= 2,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf2560	= 3,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf5120	= 4,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_sf10240	= 5,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_spare2	= 6,
	MAC_MainConfig__ul_SCH_Config__retxBSR_Timer_spare1	= 7
} e_MAC_MainConfig__ul_SCH_Config__retxBSR_Timer;
typedef enum MAC_MainConfig__phr_Config_PR {
	MAC_MainConfig__phr_Config_PR_NOTHING,	/* No components present */
	MAC_MainConfig__phr_Config_PR_release,
	MAC_MainConfig__phr_Config_PR_setup
} MAC_MainConfig__phr_Config_PR;
typedef enum MAC_MainConfig__phr_Config__setup__periodicPHR_Timer {
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf10	= 0,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf20	= 1,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf50	= 2,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf100	= 3,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf200	= 4,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf500	= 5,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_sf1000	= 6,
	MAC_MainConfig__phr_Config__setup__periodicPHR_Timer_infinity	= 7
} e_MAC_MainConfig__phr_Config__setup__periodicPHR_Timer;
typedef enum MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer {
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf0	= 0,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf10	= 1,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf20	= 2,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf50	= 3,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf100	= 4,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf200	= 5,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf500	= 6,
	MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer_sf1000	= 7
} e_MAC_MainConfig__phr_Config__setup__prohibitPHR_Timer;
typedef enum MAC_MainConfig__phr_Config__setup__dl_PathlossChange {
	MAC_MainConfig__phr_Config__setup__dl_PathlossChange_dB1	= 0,
	MAC_MainConfig__phr_Config__setup__dl_PathlossChange_dB3	= 1,
	MAC_MainConfig__phr_Config__setup__dl_PathlossChange_dB6	= 2,
	MAC_MainConfig__phr_Config__setup__dl_PathlossChange_infinity	= 3
} e_MAC_MainConfig__phr_Config__setup__dl_PathlossChange;

/* Forward declarations */
struct DRX_Config;

/* MAC-MainConfig */
typedef struct MAC_MainConfig {
	struct MAC_MainConfig__ul_SCH_Config {
		long	*maxHARQ_Tx	/* OPTIONAL */;
		long	*periodicBSR_Timer	/* OPTIONAL */;
		long	 retxBSR_Timer;
		BOOLEAN_t	 ttiBundling;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} *ul_SCH_Config;
	struct DRX_Config	*drx_Config	/* OPTIONAL */;
	TimeAlignmentTimer_t	 timeAlignmentTimerDedicated;
	struct MAC_MainConfig__phr_Config {
		MAC_MainConfig__phr_Config_PR present;
		union MAC_MainConfig__phr_Config_u {
			NULL_t	 release;
			struct MAC_MainConfig__phr_Config__setup {
				long	 periodicPHR_Timer;
				long	 prohibitPHR_Timer;
				long	 dl_PathlossChange;
				
				/* Context for parsing across buffer boundaries */
				asn_struct_ctx_t _asn_ctx;
			} setup;
		} choice;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} *phr_Config;
	/*
	 * This type is extensible,
	 * possible extensions are below.
	 */
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} MAC_MainConfig_t;

/* Implementation */
/* extern asn_TYPE_descriptor_t asn_DEF_maxHARQ_Tx_3;	// (Use -fall-defs-global to expose) */
/* extern asn_TYPE_descriptor_t asn_DEF_periodicBSR_Timer_20;	// (Use -fall-defs-global to expose) */
/* extern asn_TYPE_descriptor_t asn_DEF_retxBSR_Timer_37;	// (Use -fall-defs-global to expose) */
/* extern asn_TYPE_descriptor_t asn_DEF_periodicPHR_Timer_52;	// (Use -fall-defs-global to expose) */
/* extern asn_TYPE_descriptor_t asn_DEF_prohibitPHR_Timer_61;	// (Use -fall-defs-global to expose) */
/* extern asn_TYPE_descriptor_t asn_DEF_dl_PathlossChange_70;	// (Use -fall-defs-global to expose) */
extern asn_TYPE_descriptor_t asn_DEF_MAC_MainConfig;

#ifdef __cplusplus
}
#endif

/* Referred external types */
#include "DRX-Config.h"

#endif	/* _MAC_MainConfig_H_ */
#include <asn_internal.h>
