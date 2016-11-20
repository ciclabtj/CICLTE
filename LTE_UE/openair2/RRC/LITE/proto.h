/*******************************************************************************
    OpenAirInterface
    Copyright(c) 1999 - 2014 Eurecom

    OpenAirInterface is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.


    OpenAirInterface is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with OpenAirInterface.The full GNU General Public License is
    included in this distribution in the file called "COPYING". If not,
    see <http://www.gnu.org/licenses/>.

  Contact Information
  OpenAirInterface Admin: openair_admin@eurecom.fr
  OpenAirInterface Tech : openair_tech@eurecom.fr
  OpenAirInterface Dev  : openair4g-devel@lists.eurecom.fr

  Address      : Eurecom, Campus SophiaTech, 450 Route des Chappes, CS 50193 - 06904 Biot Sophia Antipolis cedex, FRANCE

*******************************************************************************/
/*! \file proto.h
 * \brief RRC functions prototypes for eNB and UE
 * \author Navid Nikaein and Raymond Knopp
 * \date 2010 - 2014
 * \email navid.nikaein@eurecom.fr
 * \version 1.0
 
 */
/** \addtogroup _rrc
 *  @{
 */

//main.c
int rrc_init_global_param(void);
int L3_xface_init(void);
void openair_rrc_top_init(int eMBMS_active, char *uecap_xer, uint8_t cba_group_active,uint8_t HO_enabled);
#if defined(ENABLE_ITTI)
char
openair_rrc_lite_eNB_configuration(
  const module_id_t enb_mod_idP,
  RrcConfigurationReq* configuration
);
#endif
char openair_rrc_lite_eNB_init(
  const module_id_t module_idP);

char openair_rrc_lite_ue_init(
  const module_id_t module_idP,
  const uint8_t CH_IDX);
void rrc_config_buffer(SRB_INFO *srb_info, uint8_t Lchan_type, uint8_t Role);
void
openair_rrc_on(
  const protocol_ctxt_t* const ctxt_pP);
void rrc_top_cleanup(void);

/** \brief Function to update timers every subframe.  For UE it updates T300,T304 and T310.
@param ctxt_pP  running context
@param enb_index
@param CC_id
*/
RRC_status_t
rrc_rx_tx(
  protocol_ctxt_t* const ctxt_pP,
  const uint8_t      enb_index,
  const int          CC_id
);

// UE RRC Procedures

/** \brief Decodes DL-CCCH message and invokes appropriate routine to handle the message
    \param ctxt_pP Running context
    \param Srb_info Pointer to SRB_INFO structure (SRB0)
    \param eNB_index Index of corresponding eNB/CH*/
int rrc_ue_decode_ccch( const protocol_ctxt_t* const ctxt_pP, const SRB_INFO* const Srb_info, const uint8_t eNB_index );

/** \brief Decodes a DL-DCCH message and invokes appropriate routine to handle the message
    \param ctxt_pP Running context
    \param Srb_id Index of Srb (1,2)
    \param buffer_pP Pointer to received SDU
    \param eNB_index Index of corresponding eNB/CH*/
void
rrc_ue_decode_dcch(
  const protocol_ctxt_t* const ctxt_pP,
  const rb_id_t                Srb_id,
  const uint8_t*         const Buffer,
  const uint8_t                eNB_indexP
);

/** \brief Generate/Encodes RRCConnnectionRequest message at UE
    \param ctxt_pP Running context
    \param eNB_index Index of corresponding eNB/CH*/
void
rrc_ue_generate_RRCConnectionRequest(
  const protocol_ctxt_t* const ctxt_pP,
  const uint8_t                eNB_index
);

/** \brief process the received rrcConnectionReconfiguration message at UE
    \param ctxt_pP Running context
    \param *rrcConnectionReconfiguration pointer to the sturcture
    \param eNB_index Index of corresponding eNB/CH*/
void
rrc_ue_process_rrcConnectionReconfiguration(
  const protocol_ctxt_t* const       ctxt_pP,
  RRCConnectionReconfiguration_t* rrcConnectionReconfiguration,
  uint8_t eNB_index
);

/** \brief Establish SRB1 based on configuration in SRB_ToAddMod structure.  Configures RLC/PDCP accordingly
    \param module_idP Instance ID of UE
    \param frame Frame index
    \param eNB_index Index of corresponding eNB/CH
    \param SRB_config Pointer to SRB_ToAddMod IE from configuration
    @returns 0 on success*/
int32_t  rrc_ue_establish_srb1(module_id_t module_idP,frame_t frameP,uint8_t eNB_index,struct SRB_ToAddMod *SRB_config);

/** \brief Establish SRB2 based on configuration in SRB_ToAddMod structure.  Configures RLC/PDCP accordingly
    \param module_idP Instance ID of UE
    \param frame Frame index
    \param eNB_index Index of corresponding eNB/CH
    \param SRB_config Pointer to SRB_ToAddMod IE from configuration
    @returns 0 on success*/
int32_t  rrc_ue_establish_srb2(module_id_t module_idP,frame_t frameP, uint8_t eNB_index,struct SRB_ToAddMod *SRB_config);

/** \brief Establish a DRB according to DRB_ToAddMod structure
    \param module_idP Instance ID of UE
    \param eNB_index Index of corresponding CH/eNB
    \param DRB_config Pointer to DRB_ToAddMod IE from configuration
    @returns 0 on success */
int32_t  rrc_ue_establish_drb(module_id_t module_idP,frame_t frameP,uint8_t eNB_index,struct DRB_ToAddMod *DRB_config);

/** \brief Process MobilityControlInfo Message to proceed with handover and configure PHY/MAC
    \param ctxt_pP Running context
    \param eNB_index Index of corresponding CH/eNB
    \param mobilityControlInfo Pointer to mobilityControlInfo
*/
void
rrc_ue_process_mobilityControlInfo(
  const protocol_ctxt_t* const       ctxt_pP,
  const uint8_t                      eNB_index,
  struct MobilityControlInfo* const mobilityControlInfo
);

/** \brief Process a measConfig Message and configure PHY/MAC
    \param  ctxt_pP    Running context
    \param eNB_index Index of corresponding CH/eNB
    \param  measConfig Pointer to MeasConfig  IE from configuration*/
void
rrc_ue_process_measConfig(
  const protocol_ctxt_t* const       ctxt_pP,
  const uint8_t                      eNB_index,
  MeasConfig_t* const               measConfig
);

/** \brief Process a RadioResourceConfigDedicated Message and configure PHY/MAC
    \param ctxt_pP Running context
    \param eNB_index Index of corresponding CH/eNB
    \param radioResourceConfigDedicated Pointer to RadioResourceConfigDedicated IE from configuration*/
void rrc_ue_process_radioResourceConfigDedicated(
  const protocol_ctxt_t* const ctxt_pP,
  uint8_t eNB_index,
  RadioResourceConfigDedicated_t *radioResourceConfigDedicated);

// eNB/CH RRC Procedures

/**\brief Function to get the next transaction identifier.
   \param module_idP Instance ID for CH/eNB
   \return a transaction identifier*/
uint8_t rrc_eNB_get_next_transaction_identifier(module_id_t module_idP);

/**\brief Entry routine to decode a UL-CCCH-Message.  Invokes PER decoder and parses message.
   \param ctxt_pP Running context
   \param Srb_info Pointer to SRB0 information structure (buffer, etc.)*/
int
rrc_eNB_decode_ccch(
  protocol_ctxt_t* const ctxt_pP,
  const SRB_INFO*        const Srb_info,
  const int              CC_id
);

/**\brief Entry routine to decode a UL-DCCH-Message.  Invokes PER decoder and parses message.
   \param ctxt_pP Context
   \param Rx_sdu Pointer Received Message
   \param sdu_size Size of incoming SDU*/
int
rrc_eNB_decode_dcch(
  const protocol_ctxt_t* const ctxt_pP,
  const rb_id_t                Srb_id,
  const uint8_t*    const      Rx_sdu,
  const sdu_size_t             sdu_sizeP
);

/**\brief Generate the RRCConnectionSetup based on information coming from RRM
   \param ctxt_pP       Running context
   \param ue_context_pP UE context*/
void
rrc_eNB_generate_RRCConnectionSetup(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t* const ue_context_pP,
  const int                    CC_id
);

/**\brief Generate RRCConnectionReestablishmentReject
   \param ctxt_pP       Running context
   \param ue_context_pP UE context
   \param CC_id         Component Carrier ID*/
void
rrc_eNB_generate_RRCConnectionReestablishmentReject(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t* const ue_context_pP,
  const int                    CC_id
);

/**\brief Process the RRCConnectionSetupComplete based on information coming from UE
   \param ctxt_pP       Running context
   \param ue_context_pP RRC UE context
   \param rrcConnectionSetupComplete Pointer to RRCConnectionSetupComplete message*/
void
rrc_eNB_process_RRCConnectionSetupComplete(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP,
  RRCConnectionSetupComplete_r8_IEs_t* rrcConnectionSetupComplete
);

/**\brief Process the RRCConnectionReconfigurationComplete based on information coming from UE
   \param ctxt_pP       Running context
   \param ue_context_pP RRC UE context
   \param rrcConnectionReconfigurationComplete Pointer to RRCConnectionReconfigurationComplete message*/
void
rrc_eNB_process_RRCConnectionReconfigurationComplete(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP,
  RRCConnectionReconfigurationComplete_r8_IEs_t* rrcConnectionReconfigurationComplete
);

/**\brief Generate the RRCConnectionRelease
   \param ctxt_pP Running context
   \param ue_context_pP UE context of UE receiving the message*/
void
rrc_eNB_generate_RRCConnectionRelease(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP
);

void
rrc_eNB_generate_defaultRRCConnectionReconfiguration(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP,
  const uint8_t                ho_state
);

#if defined(ENABLE_ITTI)
/**\brief RRC eNB task.
   \param void *args_p Pointer on arguments to start the task. */
void *rrc_enb_task(void *args_p);

/**\brief RRC UE task.
   \param void *args_p Pointer on arguments to start the task. */
void *rrc_ue_task(void *args_p);
#endif

/**\brief Generate/decode the handover RRCConnectionReconfiguration at eNB
   \param module_idP Instance ID for eNB/CH
   \param frame Frame index
   \param ue_module_idP Index of UE transmitting the messages*/
void
rrc_eNB_generate_RRCConnectionReconfiguration_handover(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*           const ue_context_pP,
  uint8_t*                const nas_pdu,
  const uint32_t                nas_length
);

//L2_interface.c
int8_t
mac_rrc_lite_data_req(
  const module_id_t Mod_idP,
  const int         CC_id,
  const frame_t     frameP,
  const rb_id_t     Srb_id,
  const uint8_t     Nb_tb,
  uint8_t*    const buffer_pP,
  const eNB_flag_t  enb_flagP,
  const uint8_t     eNB_index,
  const uint8_t     mbsfn_sync_area
);

int8_t
mac_rrc_lite_data_ind(
  const module_id_t     module_idP,
  const int         CC_id,
  const frame_t         frameP,
  const sub_frame_t     sub_frameP,
  const rnti_t          rntiP,
  const rb_id_t         srb_idP,
  const uint8_t*        sduP,
  const sdu_size_t      sdu_lenP,
  const eNB_flag_t      eNB_flagP,
  const mac_enb_index_t eNB_indexP,
  const uint8_t         mbsfn_sync_areaP
);

void mac_sync_ind( module_id_t Mod_instP, uint8_t status);

uint8_t
rrc_lite_data_req(
  const protocol_ctxt_t*   const ctxt_pP,
  const rb_id_t                  rb_idP,
  const mui_t                    muiP,
  const confirm_t                confirmP,
  const sdu_size_t               sdu_size,
  uint8_t*                 const buffer_pP,
  const pdcp_transmission_mode_t modeP
);

void
rrc_lite_data_ind(
  const protocol_ctxt_t* const ctxt_pP,
  const rb_id_t                Srb_id,
  const sdu_size_t             sdu_sizeP,
  const uint8_t*   const       buffer_pP
);

void rrc_lite_in_sync_ind(module_id_t module_idP, frame_t frameP, uint16_t eNB_index);

void rrc_lite_out_of_sync_ind(module_id_t module_idP, frame_t frameP, unsigned short eNB_index);

int decode_MCCH_Message( const protocol_ctxt_t* const ctxt_pP, const uint8_t eNB_index, const uint8_t* const Sdu, const uint8_t Sdu_len, const uint8_t mbsfn_sync_area );

int decode_BCCH_DLSCH_Message(
  const protocol_ctxt_t* const ctxt_pP,
  const uint8_t                eNB_index,
  uint8_t*               const Sdu,
  const uint8_t                Sdu_len,
  const uint8_t                rsrq,
  const uint8_t                rsrp );

void
ue_meas_filtering(
  const protocol_ctxt_t* const ctxt_pP,
  const uint8_t                eNB_index
);

void
ue_measurement_report_triggering(
  const protocol_ctxt_t* const ctxt_pP,
  const uint8_t                 eNB_index
);

int
mac_eNB_get_rrc_lite_status(
  const module_id_t Mod_idP,
  const rnti_t      rntiP
);

int
mac_UE_get_rrc_lite_status(
  const module_id_t Mod_idP,
  const uint8_t     indexP
);

void
rrc_eNB_generate_UECapabilityEnquiry(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP
);

void
rrc_eNB_generate_SecurityModeCommand(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP
);

void
rrc_eNB_process_MeasurementReport(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP,
  const MeasResults_t*   const measResults2
);

void
rrc_eNB_generate_HandoverPreparationInformation(
  const protocol_ctxt_t* const ctxt_pP,
  rrc_eNB_ue_context_t*          const ue_context_pP,
  PhysCellId_t targetPhyId
);

void
check_handovers(
  protocol_ctxt_t* const ctxt_pP
);

//void rrc_ue_process_ueCapabilityEnquiry(uint8_t module_idP,uint32_t frame,UECapabilityEnquiry_t *UECapabilityEnquiry,uint8_t eNB_index);
/*void
rrc_ue_process_securityModeCommand(
                const protocol_ctxt_t* const ctxt_pP,
                SecurityModeCommand_t *const securityModeCommand,
                const uint8_t                eNB_index
                );
*/

#if !defined(ENABLE_USE_MME)
void rrc_eNB_emulation_notify_ue_module_id(
  const module_id_t ue_module_idP,
  const rnti_t      rntiP,
  const uint8_t     cell_identity_byte0P,
  const uint8_t     cell_identity_byte1P,
  const uint8_t     cell_identity_byte2P,
  const uint8_t     cell_identity_byte3P);
#endif


void
rrc_eNB_free_mem_UE_context(
  const protocol_ctxt_t*               const ctxt_pP,
  struct rrc_eNB_ue_context_s*         const ue_context_pP
);


void
rrc_eNB_free_UE(
  const module_id_t enb_mod_idP,
  const rnti_t      rntiP,
  const frame_t     frameP,
  const sub_frame_t subframeP
);

long binary_search_int(int elements[], long numElem, int value);

long binary_search_float(float elements[], long numElem, float value);

/** @}*/
