/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_UL_DCCH_Message_H_
#define	_UL_DCCH_Message_H_


#include <asn_application.h>

/* Including external dependencies */
#include "UL-DCCH-MessageType.h"
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* UL-DCCH-Message */
typedef struct UL_DCCH_Message {
	UL_DCCH_MessageType_t	 message;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} UL_DCCH_Message_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_UL_DCCH_Message;

#ifdef __cplusplus
}
#endif

#endif	/* _UL_DCCH_Message_H_ */
#include <asn_internal.h>
