/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_MeasParameters_H_
#define	_MeasParameters_H_


#include <asn_application.h>

/* Including external dependencies */
#include "BandListEUTRA.h"
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* MeasParameters */
typedef struct MeasParameters {
	BandListEUTRA_t	 bandListEUTRA;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} MeasParameters_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_MeasParameters;

#ifdef __cplusplus
}
#endif

#endif	/* _MeasParameters_H_ */
#include <asn_internal.h>
