/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_CQI_ReportConfig_H_
#define	_CQI_ReportConfig_H_


#include <asn_application.h>

/* Including external dependencies */
#include <NativeEnumerated.h>
#include <NativeInteger.h>
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum CQI_ReportConfig__cqi_ReportModeAperiodic {
	CQI_ReportConfig__cqi_ReportModeAperiodic_rm12	= 0,
	CQI_ReportConfig__cqi_ReportModeAperiodic_rm20	= 1,
	CQI_ReportConfig__cqi_ReportModeAperiodic_rm22	= 2,
	CQI_ReportConfig__cqi_ReportModeAperiodic_rm30	= 3,
	CQI_ReportConfig__cqi_ReportModeAperiodic_rm31	= 4,
	CQI_ReportConfig__cqi_ReportModeAperiodic_spare3	= 5,
	CQI_ReportConfig__cqi_ReportModeAperiodic_spare2	= 6,
	CQI_ReportConfig__cqi_ReportModeAperiodic_spare1	= 7
} e_CQI_ReportConfig__cqi_ReportModeAperiodic;

/* Forward declarations */
struct CQI_ReportPeriodic;

/* CQI-ReportConfig */
typedef struct CQI_ReportConfig {
	long	*cqi_ReportModeAperiodic	/* OPTIONAL */;
	long	 nomPDSCH_RS_EPRE_Offset;
	struct CQI_ReportPeriodic	*cqi_ReportPeriodic	/* OPTIONAL */;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} CQI_ReportConfig_t;

/* Implementation */
/* extern asn_TYPE_descriptor_t asn_DEF_cqi_ReportModeAperiodic_2;	// (Use -fall-defs-global to expose) */
extern asn_TYPE_descriptor_t asn_DEF_CQI_ReportConfig;

#ifdef __cplusplus
}
#endif

/* Referred external types */
#include "CQI-ReportPeriodic.h"

#endif	/* _CQI_ReportConfig_H_ */
#include <asn_internal.h>
