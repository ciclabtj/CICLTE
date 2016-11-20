/*
 * Generated by asn1c-0.9.24 (http://lionet.info/asn1c)
 * From ASN.1 module "EUTRA-RRC-Definitions"
 * 	found in "/home/yichenqian/code/openairLTE/openair2/RRC/LITE/MESSAGES/asn1c/ASN1_files/EUTRA-RRC-Definitions.asn"
 * 	`asn1c -gen-PER -fcompound-names -fnative-types`
 */

#include "RRCConnectionReestablishment-r8-IEs.h"

static ber_tlv_tag_t asn_DEF_nonCriticalExtension_tags_4[] = {
	(ASN_TAG_CLASS_CONTEXT | (2 << 2)),
	(ASN_TAG_CLASS_UNIVERSAL | (16 << 2))
};
static asn_SEQUENCE_specifics_t asn_SPC_nonCriticalExtension_specs_4 = {
	sizeof(struct RRCConnectionReestablishment_r8_IEs__nonCriticalExtension),
	offsetof(struct RRCConnectionReestablishment_r8_IEs__nonCriticalExtension, _asn_ctx),
	0,	/* No top level tags */
	0,	/* No tags in the map */
	0, 0, 0,	/* Optional elements (not needed) */
	-1,	/* Start extensions */
	-1	/* Stop extensions */
};
static /* Use -fall-defs-global to expose */
asn_TYPE_descriptor_t asn_DEF_nonCriticalExtension_4 = {
	"nonCriticalExtension",
	"nonCriticalExtension",
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
	asn_DEF_nonCriticalExtension_tags_4,
	sizeof(asn_DEF_nonCriticalExtension_tags_4)
		/sizeof(asn_DEF_nonCriticalExtension_tags_4[0]) - 1, /* 1 */
	asn_DEF_nonCriticalExtension_tags_4,	/* Same as above */
	sizeof(asn_DEF_nonCriticalExtension_tags_4)
		/sizeof(asn_DEF_nonCriticalExtension_tags_4[0]), /* 2 */
	0,	/* No PER visible constraints */
	0, 0,	/* No members */
	&asn_SPC_nonCriticalExtension_specs_4	/* Additional specs */
};

static asn_TYPE_member_t asn_MBR_RRCConnectionReestablishment_r8_IEs_1[] = {
	{ ATF_NOFLAGS, 0, offsetof(struct RRCConnectionReestablishment_r8_IEs, radioResourceConfigDedicated),
		(ASN_TAG_CLASS_CONTEXT | (0 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_RadioResourceConfigDedicated,
		0,	/* Defer constraints checking to the member type */
		0,	/* No PER visible constraints */
		0,
		"radioResourceConfigDedicated"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct RRCConnectionReestablishment_r8_IEs, nextHopChainingCount),
		(ASN_TAG_CLASS_CONTEXT | (1 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_NextHopChainingCount,
		0,	/* Defer constraints checking to the member type */
		0,	/* No PER visible constraints */
		0,
		"nextHopChainingCount"
		},
	{ ATF_POINTER, 1, offsetof(struct RRCConnectionReestablishment_r8_IEs, nonCriticalExtension),
		(ASN_TAG_CLASS_CONTEXT | (2 << 2)),
		0,
		&asn_DEF_nonCriticalExtension_4,
		0,	/* Defer constraints checking to the member type */
		0,	/* No PER visible constraints */
		0,
		"nonCriticalExtension"
		},
};
static int asn_MAP_RRCConnectionReestablishment_r8_IEs_oms_1[] = { 2 };
static ber_tlv_tag_t asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1[] = {
	(ASN_TAG_CLASS_UNIVERSAL | (16 << 2))
};
static asn_TYPE_tag2member_t asn_MAP_RRCConnectionReestablishment_r8_IEs_tag2el_1[] = {
    { (ASN_TAG_CLASS_CONTEXT | (0 << 2)), 0, 0, 0 }, /* radioResourceConfigDedicated at 401 */
    { (ASN_TAG_CLASS_CONTEXT | (1 << 2)), 1, 0, 0 }, /* nextHopChainingCount at 402 */
    { (ASN_TAG_CLASS_CONTEXT | (2 << 2)), 2, 0, 0 } /* nonCriticalExtension at 403 */
};
static asn_SEQUENCE_specifics_t asn_SPC_RRCConnectionReestablishment_r8_IEs_specs_1 = {
	sizeof(struct RRCConnectionReestablishment_r8_IEs),
	offsetof(struct RRCConnectionReestablishment_r8_IEs, _asn_ctx),
	asn_MAP_RRCConnectionReestablishment_r8_IEs_tag2el_1,
	3,	/* Count of tags in the map */
	asn_MAP_RRCConnectionReestablishment_r8_IEs_oms_1,	/* Optional members */
	1, 0,	/* Root/Additions */
	-1,	/* Start extensions */
	-1	/* Stop extensions */
};
asn_TYPE_descriptor_t asn_DEF_RRCConnectionReestablishment_r8_IEs = {
	"RRCConnectionReestablishment-r8-IEs",
	"RRCConnectionReestablishment-r8-IEs",
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
	asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1,
	sizeof(asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1)
		/sizeof(asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1[0]), /* 1 */
	asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1,	/* Same as above */
	sizeof(asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1)
		/sizeof(asn_DEF_RRCConnectionReestablishment_r8_IEs_tags_1[0]), /* 1 */
	0,	/* No PER visible constraints */
	asn_MBR_RRCConnectionReestablishment_r8_IEs_1,
	3,	/* Elements count */
	&asn_SPC_RRCConnectionReestablishment_r8_IEs_specs_1	/* Additional specs */
};

