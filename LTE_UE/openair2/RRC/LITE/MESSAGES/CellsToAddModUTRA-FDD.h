/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_CellsToAddModUTRA_FDD_H_
#define	_CellsToAddModUTRA_FDD_H_


#include <asn_application.h>

/* Including external dependencies */
#include <NativeInteger.h>
#include "PhysCellIdUTRA-FDD.h"
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* CellsToAddModUTRA-FDD */
typedef struct CellsToAddModUTRA_FDD {
	long	 cellIndex;
	PhysCellIdUTRA_FDD_t	 physCellId;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} CellsToAddModUTRA_FDD_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_CellsToAddModUTRA_FDD;

#ifdef __cplusplus
}
#endif

#endif	/* _CellsToAddModUTRA_FDD_H_ */
#include <asn_internal.h>
