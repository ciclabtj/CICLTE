/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_DLInformationTransfer_r8_IEs_H_
#define	_DLInformationTransfer_r8_IEs_H_


#include <asn_application.h>

/* Including external dependencies */
#include "DedicatedInfoNAS.h"
#include "DedicatedInfoCDMA2000.h"
#include <constr_CHOICE.h>
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum DLInformationTransfer_r8_IEs__dedicatedInfoType_PR {
	DLInformationTransfer_r8_IEs__dedicatedInfoType_PR_NOTHING,	/* No components present */
	DLInformationTransfer_r8_IEs__dedicatedInfoType_PR_dedicatedInfoNAS,
	DLInformationTransfer_r8_IEs__dedicatedInfoType_PR_dedicatedInfoCDMA2000_1XRTT,
	DLInformationTransfer_r8_IEs__dedicatedInfoType_PR_dedicatedInfoCDMA2000_HRPD
} DLInformationTransfer_r8_IEs__dedicatedInfoType_PR;

/* DLInformationTransfer-r8-IEs */
typedef struct DLInformationTransfer_r8_IEs {
	struct DLInformationTransfer_r8_IEs__dedicatedInfoType {
		DLInformationTransfer_r8_IEs__dedicatedInfoType_PR present;
		union DLInformationTransfer_r8_IEs__dedicatedInfoType_u {
			DedicatedInfoNAS_t	 dedicatedInfoNAS;
			DedicatedInfoCDMA2000_t	 dedicatedInfoCDMA2000_1XRTT;
			DedicatedInfoCDMA2000_t	 dedicatedInfoCDMA2000_HRPD;
		} choice;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} dedicatedInfoType;
	struct DLInformationTransfer_r8_IEs__nonCriticalExtension {
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} *nonCriticalExtension;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} DLInformationTransfer_r8_IEs_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_DLInformationTransfer_r8_IEs;

#ifdef __cplusplus
}
#endif

#endif	/* _DLInformationTransfer_r8_IEs_H_ */
#include <asn_internal.h>
