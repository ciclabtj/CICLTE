/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#ifndef	_C_RNTI_H_
#define	_C_RNTI_H_


#include <asn_application.h>

/* Including external dependencies */
#include <BIT_STRING.h>

#ifdef __cplusplus
extern "C" {
#endif

/* C-RNTI */
typedef BIT_STRING_t	 C_RNTI_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_C_RNTI;
asn_struct_free_f C_RNTI_free;
asn_struct_print_f C_RNTI_print;
asn_constr_check_f C_RNTI_constraint;
ber_type_decoder_f C_RNTI_decode_ber;
der_type_encoder_f C_RNTI_encode_der;
xer_type_decoder_f C_RNTI_decode_xer;
xer_type_encoder_f C_RNTI_encode_xer;
per_type_decoder_f C_RNTI_decode_uper;
per_type_encoder_f C_RNTI_encode_uper;

#ifdef __cplusplus
}
#endif

#endif	/* _C_RNTI_H_ */
#include <asn_internal.h>
