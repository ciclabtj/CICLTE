/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#include "MeasParameters.h"

static asn_TYPE_member_t asn_MBR_MeasParameters_1[] = {
	{ ATF_NOFLAGS, 0, offsetof(struct MeasParameters, bandListEUTRA),
		(ASN_TAG_CLASS_CONTEXT | (0 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_BandListEUTRA,
		0,	/* Defer constraints checking to the member type */
		0,	/* No PER visible constraints */
		0,
		"bandListEUTRA"
		},
};
static ber_tlv_tag_t asn_DEF_MeasParameters_tags_1[] = {
	(ASN_TAG_CLASS_UNIVERSAL | (16 << 2))
};
static asn_TYPE_tag2member_t asn_MAP_MeasParameters_tag2el_1[] = {
    { (ASN_TAG_CLASS_CONTEXT | (0 << 2)), 0, 0, 0 } /* bandListEUTRA at 2494 */
};
static asn_SEQUENCE_specifics_t asn_SPC_MeasParameters_specs_1 = {
	sizeof(struct MeasParameters),
	offsetof(struct MeasParameters, _asn_ctx),
	asn_MAP_MeasParameters_tag2el_1,
	1,	/* Count of tags in the map */
	0, 0, 0,	/* Optional elements (not needed) */
	-1,	/* Start extensions */
	-1	/* Stop extensions */
};
asn_TYPE_descriptor_t asn_DEF_MeasParameters = {
	"MeasParameters",
	"MeasParameters",
	SEQUENCE_free,
	SEQUENCE_print,
	SEQUENCE_constraint,
	SEQUENCE_decode_ber,
	SEQUENCE_encode_der,
	SEQUENCE_decode_xer,
	SEQUENCE_encode_xer,
	SEQUENCE_decode_uper,
	SEQUENCE_encode_uper,
	0,	/* Use generic outmost tag fetcher */
	asn_DEF_MeasParameters_tags_1,
	sizeof(asn_DEF_MeasParameters_tags_1)
		/sizeof(asn_DEF_MeasParameters_tags_1[0]), /* 1 */
	asn_DEF_MeasParameters_tags_1,	/* Same as above */
	sizeof(asn_DEF_MeasParameters_tags_1)
		/sizeof(asn_DEF_MeasParameters_tags_1[0]), /* 1 */
	0,	/* No PER visible constraints */
	asn_MBR_MeasParameters_1,
	1,	/* Elements count */
	&asn_SPC_MeasParameters_specs_1	/* Additional specs */
};

