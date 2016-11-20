#ifndef __ASN1_CONSTANTS_H__
#define __ASN1_CONSTANTS_H__
#define maxBands					 64	// Maximum number of bands listed in EUTRA UE caps
#define maxCDMA_BandClass			 32	// Maximum value of the CDMA band classes
#define maxCellBlack				 16	// Maximum number of blacklisted cells
#define maxCellInter				 16	// Maximum number of neighbouring inter_frequency
#define maxCellIntra				 16	// Maximum number of neighbouring intra_frequency
#define maxCellMeas					 32	// Maximum number of neighbouring cells within a
#define maxCellReport				 8	// Maximum number of reported cells
#define maxDRB						 11	// Maximum number of Data Radio Bearers
#define maxEARFCN					 65535	// Maximum value of EUTRA carrier fequency
#define maxFreq						 8	// Maximum number of EUTRA carrier frequencies
#define maxGERAN_SI					 10	// Maximum number of GERAN SI blocks that can be
#define maxGNFG						 16	// Maximum number of GERAN neighbour freq groups
#define maxMBSFN_Allocations		 8	// Maximum number of MBSFN frame allocations with
#define maxMCS_minus_1					 16	// Maximum number of PUCCH formats (MCS)
#define maxMeasId					 32
#define maxObjectId					 32
#define maxPageRec					 16	// 
#define maxPNOffset						511	// Maximum number of CDMA2000 PNOffsets
#define maxRAT_Capabilities			 8	// Maximum number of interworking RATs (incl EUTRA)
#define maxReportConfigId			 32
#define maxSIB						 32	// Maximum number of SIBs
#define maxSIB_minus_1					 31
#define maxSI_Message				 32	// Maximum number of SI messages
#define maxUTRA_FDD_Carrier			 16	// Maximum number of UTRA FDD carrier frequencies
#define maxUTRA_TDD_Carrier			 16	// Maximum number of UTRA TDD carrier frequencies
#define maxReestabInfo				 32	// Maximum number of KeNB* and shortMAC_I forwarded
#define min_val_IMSI_Digit 0
#define min_val_DRB_Identity 1
#define min_val_P_Max -30
#define min_val_NextHopChainingCount 0
#define min_val_AdditionalSpectrumEmission 1
#define min_val_ARFCN_ValueCDMA2000 0
#define min_val_ARFCN_ValueEUTRA 0
#define min_val_ARFCN_ValueGERAN 0
#define min_val_ARFCN_ValueUTRA 0
#define min_val_CellIndex 1
#define min_val_CellReselectionPriority 0
#define min_val_PhysCellId 0
#define min_val_PhysCellIdCDMA2000 0
#define min_val_PhysCellIdUTRA_FDD 0
#define min_val_PhysCellIdUTRA_TDD 0
#define min_val_MCC_MNC_Digit 0
#define min_val_PreRegistrationZoneIdHRPD 0
#define min_val_Q_RxLevMin -70
#define min_val_Q_OffsetRangeInterRAT -15
#define min_val_ReselectionThreshold 0
#define min_val_T_Reselection 0
#define min_val_Hysteresis 0
#define min_val_MeasId 1
#define min_val_MeasObjectId 1
#define min_val_ReportConfigId 1
#define min_val_ThresholdGERAN 0
#define min_val_ThresholdCDMA2000 0
#define min_val_RRC_TransactionIdentifier 0
#define max_val_IMSI_Digit 9
#define max_val_DRB_Identity 32
#define max_val_P_Max 33
#define max_val_NextHopChainingCount 7
#define max_val_AdditionalSpectrumEmission 32
#define max_val_ARFCN_ValueCDMA2000 2047
#define max_val_ARFCN_ValueEUTRA maxEARFCN
#define max_val_ARFCN_ValueGERAN 1023
#define max_val_ARFCN_ValueUTRA 16383
#define max_val_CellIndex maxCellMeas
#define max_val_CellReselectionPriority 7
#define max_val_PhysCellId 503
#define max_val_PhysCellIdCDMA2000 maxPNOffset
#define max_val_PhysCellIdUTRA_FDD 511
#define max_val_PhysCellIdUTRA_TDD 127
#define max_val_MCC_MNC_Digit 9
#define max_val_PreRegistrationZoneIdHRPD 255
#define max_val_Q_RxLevMin -22
#define max_val_Q_OffsetRangeInterRAT 15
#define max_val_ReselectionThreshold 31
#define max_val_T_Reselection 7
#define max_val_Hysteresis 30
#define max_val_MeasId maxMeasId
#define max_val_MeasObjectId maxObjectId
#define max_val_ReportConfigId maxReportConfigId
#define max_val_ThresholdGERAN 63
#define max_val_ThresholdCDMA2000 63
#define max_val_RRC_TransactionIdentifier 3
#endif 
