MiniBossS3A_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoice     MiniBossS3A_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $44

	smpsHeaderDAC       MiniBossS3A_DAC
	smpsHeaderFM        MiniBossS3A_FM1,	$02, $03
	smpsHeaderFM        MiniBossS3A_FM2,	$0C, $0B
	smpsHeaderFM        MiniBossS3A_FM3,	$0C, $10
	smpsHeaderFM        MiniBossS3A_FM4,	$00, $14
	smpsHeaderFM        MiniBossS3A_FM5,	$00, $14
	smpsHeaderPSG       MiniBossS3A_PSG1,	$F4, $00, $00, $00
	smpsHeaderPSG       MiniBossS3A_PSG2,	$F7, $01, $00, $00
	smpsHeaderPSG       MiniBossS3A_PSG3,	$F4, $00, $00, $00

; FM1 Data
MiniBossS3A_FM1:
	smpsSetvoice        $04
	dc.b	nC1, $18, nRst, $48
	smpsCall            MiniBossS3A_Call05
	smpsCall            MiniBossS3A_Call06
	smpsCall            MiniBossS3A_Call05
	smpsCall            MiniBossS3A_Call07
	smpsCall            MiniBossS3A_Call05
	smpsCall            MiniBossS3A_Call06
	smpsCall            MiniBossS3A_Call05
	smpsCall            MiniBossS3A_Call08
	smpsCall            MiniBossS3A_Call09
	smpsCall            MiniBossS3A_Call0A
	smpsCall            MiniBossS3A_Call09
	smpsCall            MiniBossS3A_Call0B
	smpsCall            MiniBossS3A_Call09
	smpsCall            MiniBossS3A_Call0A
	smpsCall            MiniBossS3A_Call0C
	smpsCall            MiniBossS3A_Call0B

MiniBossS3A_Loop01:
	smpsCall            MiniBossS3A_Call09
	smpsCall            MiniBossS3A_Call0A
	smpsCall            MiniBossS3A_Call09
	smpsCall            MiniBossS3A_Call0B
	smpsLoop            $00, $02, MiniBossS3A_Loop01
	smpsSetvoice        $04
	dc.b	nC1, $12, nC1, nC1, nC1, nC1, nC1, $06, nRst, $0C, nC1, $12
	dc.b	nC1, nC1, nC1, nC1, $0C, nRst, $60
	smpsJump            MiniBossS3A_FM1

MiniBossS3A_Call05:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $07, nC1, $05, nRst, $0C, nC1, nRst, nC1, nRst
	dc.b	$18
	smpsReturn

MiniBossS3A_Call06:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $07, nC1, $05, nRst, $0C, nC1, nRst, $07, nC1
	dc.b	$05, nC1, $0C, nRst, $18
	smpsReturn

MiniBossS3A_Call07:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $18, nRst, $0C, nRst, nRst, nRst, nRst
	smpsReturn

MiniBossS3A_Call08:
	smpsSetvoice        $04
	dc.b	nC1, $18, nRst, nC1, $03, nC1, nC1, nC1, nC1, nC1, nC1, nC1
	dc.b	nC1, $18
	smpsReturn

MiniBossS3A_Call09:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $07, nC1, $05
	smpsSetvoice        $05
	dc.b	nE3, $0C
	smpsSetvoice        $04
	dc.b	nC1, nRst, nC1
	smpsSetvoice        $05
	dc.b	nE3, $18
	smpsReturn

MiniBossS3A_Call0A:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $07, nC1, $05
	smpsSetvoice        $05
	dc.b	nE3, $0C
	smpsSetvoice        $04
	dc.b	nC1, nRst, $07, nC1, $05, nC1, $0C
	smpsSetvoice        $05
	dc.b	nE3, $13, nE3, $05
	smpsReturn

MiniBossS3A_Call0B:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst
	smpsSetvoice        $05
	dc.b	nE3
	smpsSetvoice        $04
	dc.b	nC1, nC1, nC1
	smpsSetvoice        $05
	dc.b	nE3
	smpsSetvoice        $04
	dc.b	nC1, $07
	smpsSetvoice        $05
	dc.b	nE3, $05
	smpsReturn

MiniBossS3A_Call0C:
	smpsSetvoice        $04
	dc.b	nC1, $0C, nRst, $07, nC1, $05
	smpsSetvoice        $05
	dc.b	nE3, $0C
	smpsSetvoice        $04
	dc.b	nC1, nRst, $07, nRst, $05, nC1, $0C
	smpsSetvoice        $05
	dc.b	nE3, $13, nE3, $05
	smpsReturn

; FM2 Data
MiniBossS3A_FM2:
	smpsSetvoice        $00
	dc.b	nBb2, $04, nRst, $03, nBb2, $05, nRst, $07, nBb2, $05, nF2, $04
	dc.b	nRst, $03, nF2, $05, nRst, $07, nF2, $05, nBb1, $07, nRst, $29
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	smpsCall            MiniBossS3A_Call03
	dc.b	nEb2, $04, nRst, $03, nBb1, $05, nFs2, $0C, nBb1, nCs2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	dc.b	nEb2, $04, nRst, $03, nEb2, $05, nD2, $0C, nCs2, nC2, nB1, nBb1
	dc.b	nB1, nD2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	smpsCall            MiniBossS3A_Call03
	dc.b	nEb2, $04, nRst, $03, nBb1, $05, nFs2, $0C, nBb1, nCs2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	dc.b	nEb2, $04, nRst, $03, nEb2, $05, nD2, $0C, nCs2, nC2, nRst, $24
	dc.b	nE2, $0C
	smpsModSet          $17, $01, $FE, $FE
	dc.b	nEb2, $30, nRst, $30, nRst, $60, nRst, nEb2, $04, nRst, $03, nEb2
	dc.b	$05, nD2, $0C, nCs2, nC2, nB1, nC2, nRst, nD2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	smpsCall            MiniBossS3A_Call03
	dc.b	nEb2, $04, nRst, $03, nBb1, $05, nFs2, $0C, nBb1, nCs2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	dc.b	nEb2, $04, nRst, $03, nEb2, $05, nD2, $0C, nCs2, nC2, nB1, nBb1
	dc.b	nB1, nD2, nRst, $60, nRst, nRst, nRst
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	smpsCall            MiniBossS3A_Call03
	dc.b	nEb2, $04, nRst, $03, nBb1, $05, nFs2, $0C, nBb1, nCs2
	smpsCall            MiniBossS3A_Call03
	smpsCall            MiniBossS3A_Call04
	dc.b	nEb2, $04, nRst, $03, nEb2, $05, nD2, $0C, nCs2, nC2, nB1, nBb1
	dc.b	nB1, nD2, nEb2, $24, nD2, nCs2, nC2, nB1, nBb1, $6C
	smpsJump            MiniBossS3A_FM2

MiniBossS3A_Call03:
	dc.b	nEb2, $04, nRst, $03, nEb2, $05, nD2, $0C, nCs2, nD2
	smpsReturn

MiniBossS3A_Call04:
	dc.b	nEb2, $05, nRst, $07, nRst, nEb2, $05, nRst, $15, nD2, $03
	smpsReturn

; FM3 Data
MiniBossS3A_FM3:
	smpsSetvoice        $02
	smpsModSet          $00, $01, $01, $07
	dc.b	nBb4, $07, nBb4, $05, nRst, $07, nBb4, $05, nBb4, $07, nBb4, $05
	dc.b	nRst, $07, nBb4, $05, nBb4, nRst, $2B, nRst, $1F, nBb3, $05, nC4
	dc.b	nRst, $07, nCs4, $05, nRst, $07, nC4, nCs4, $05, nC4, $07, nAb3
	dc.b	$05, nFs3, nRst, $07, nRst, $60, nRst, $0C
	smpsModSet          $04, $01, $13, $0D
	dc.b	nCs4
	smpsAlterVol        $0A
	dc.b	nCs4, $06, nRst
	smpsAlterVol        $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nAb3, $0C
	smpsAlterVol        $0A
	dc.b	nAb3, $06, nRst
	smpsAlterVol        $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nFs3, $0C
	smpsAlterVol        $0A
	dc.b	nFs3, $06, nRst
	smpsAlterVol        $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nAb3, $0C
	smpsModSet          $00, $01, $01, $05
	dc.b	nRst, $07, nFs3, $05, nRst, $0C, nEb3, $13, nEb3, $05, nFs3, $07
	dc.b	nAb3, $05, nRst, $24, nRst, $1F, nBb3, $05, nC4, nRst, $07, nCs4
	dc.b	$05, nRst, $07, nC4, nCs4, $05, nC4, $07, nRst, $05, nRst, $07
	dc.b	nBb3, $05, nC4, $07, nCs4, $05, nC4, nRst, $0E, nBb3, $05, nC4
	dc.b	$07, nCs4, $05, nC4, $07, nBb3, $05, nFs3, $0C, nRst, $18, nRst
	dc.b	$30, nEb3, $04, nD3, nEb3, nF3, nEb3, nF3, nFs3, nF3, nFs3, nAb3
	dc.b	nFs3, nAb3, nBb3, nFs3, nCs4, nC4, nAb3, nB3, nBb3, nFs3, nA3, nAb3
	dc.b	nFs3, nEb3, nRst, $18
	smpsModSet          $00, $01, $F1, $70
	dc.b	nAb2
	smpsModSet          $00, $01, $01, $04
	smpsChangeTransposition $F4
	dc.b	nRst, $0C, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05
	dc.b	nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4, nFs4
	dc.b	$05, nRst, $18, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	$05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	nFs4, $05, nRst, $18, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07
	dc.b	nEb4, $05, nRst, $07, nEb4, nFs4, $05, nAb4, $07, nFs4, $05, nEb4
	dc.b	$07, nFs4, $05, nAb4, $07, nFs4, $05, nEb4, $05, nRst, $07, nEb4
	dc.b	$05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	nFs4, $05, nRst, $1F, nEb4, $04, nRst, $01
	smpsCall            MiniBossS3A_Call01

MiniBossS3A_Loop00:
	dc.b	nRst, $5B, nEb4, $03, nRst, $02
	smpsCall            MiniBossS3A_Call01
	smpsLoop            $00, $03, MiniBossS3A_Loop00
	smpsCall            MiniBossS3A_Call02
	dc.b	nRst, $60, nRst, $2B, nEb4, $05, nFs4, nRst, $07, nFs4, $05, nRst
	dc.b	$07, nFs4, nAb4, $05, nBb4, $07, nAb4, $05, nRst, $60
	smpsCall            MiniBossS3A_Call02
	smpsCall            MiniBossS3A_Call00
	smpsChangeTransposition $0C
	smpsJump            MiniBossS3A_FM3

MiniBossS3A_Call01:
	dc.b	nRst, $07, nFs4, $04, nRst, $08, nAb4, $05, nRst, $13, nEb4, $05
	dc.b	nFs4, nRst, $07, nFs4, $05, nRst, $07, nFs4, nAb4, $05, nRst, $0C
	smpsReturn

MiniBossS3A_Call02:
	dc.b	nBb4, $0C, nAb4, $07, nBb4, $05, nAb4, $0C, nFs4, $07, nAb4, $05
	dc.b	nFs4, $0C, nF4, $07, nFs4, $05, nF4, $0C, nEb4, $05, nRst, $07
	smpsReturn

MiniBossS3A_Call00:
	dc.b	nEb4, $0C, nD4, nEb4, nF4, nEb4, nF4, nFs4, nF4, nFs4, $07, nRst
	dc.b	$05, nAb4, $0C, nFs4, nAb4, nA4
	smpsModSet          $00, $01, $01, $07
	dc.b	nAb4, nA4, nBb4, $0C, smpsNoAttack, $60
	smpsReturn

; FM4 Data
MiniBossS3A_FM4:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nBb3, $07, nBb3, $05, nRst, $07, nBb3, $05, nBb3, $07, nBb3, $05
	dc.b	nRst, $07, nBb3, $05, nBb3, nRst, $2B
	smpsAlterVol        $FE
	dc.b	nBb3, $60, smpsNoAttack, $30, nRst, $18, nB4, $18, nBb3, $60, smpsNoAttack, $30
	dc.b	nRst, $30, nBb3, $60, smpsNoAttack, $30, nRst, $18, nB4, $18, nBb3, $60
	dc.b	nRst, $60, nBb3, $60, smpsNoAttack, $30, nB3, $30, nBb3, $60, smpsNoAttack, $60
	dc.b	nFs3, $48, nRst, $18, nF4, $60, nBb3, $60, nBb3, $60, nRst, $60
	dc.b	nRst, nRst, nRst, nFs4, $60, nF4, $60, nEb4, $60, nEb4, $60
	smpsChangeTransposition $F4
	smpsAlterVol        $02
	smpsCall            MiniBossS3A_Call00
	smpsAlterVol        $FE
	smpsChangeTransposition $0C
	smpsJump            MiniBossS3A_FM4

; FM5 Data
MiniBossS3A_FM5:
	smpsSetvoice        $03

MiniBossS3A_Jump00:
	smpsModSet          $00, $01, $01, $03
	smpsAlterVol        $02
	dc.b	nBb3, $07, nBb3, $05, nRst, $07, nBb3, $05, nBb3, $07, nBb3, $05
	dc.b	nRst, $07, nBb3, $05, nBb3, nRst, $2B
	smpsAlterVol        $FE
	dc.b	nF3, $60, smpsNoAttack, $30, nRst, $18, nFs3, nF3, $60, smpsNoAttack, $48, nRst
	dc.b	$18, nF3, $60, smpsNoAttack, $48, nFs3, $18, nF3, $60, nRst, $60, nF3
	dc.b	$60, smpsNoAttack, $30, nFs3, $30, nF3, $60, smpsNoAttack, nF3, $60, nEb3, $48
	dc.b	nRst, $18, nC3, $60, nB2, $60, nC3, $60, nRst, $60, nRst, nRst
	dc.b	nRst, nEb4, $60, nC4, nB3, nC4
	smpsAlterVol        $02
	smpsCall            MiniBossS3A_Call00
	smpsAlterVol        $FE
	smpsJump            MiniBossS3A_Jump00

; PSG2 Data
MiniBossS3A_PSG2:
	smpsPSGvoice        sTone_1D
	smpsModSet          $00, $01, $05, $95
	dc.b	nRst, $60, nG2, $10, nRst, $50, nRst, $60, nRst, nRst, nG2, $10
	dc.b	nRst, $50, nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nG2, $10
	dc.b	nRst, $50, nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nG2, $10
	dc.b	nRst, $50, nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsJump            MiniBossS3A_PSG2

; PSG1 Data
MiniBossS3A_PSG1:
	smpsPSGvoice        sTone_22
	smpsModSet          $00, $01, $01, $07
	dc.b	nBb4, $07, nBb4, $05, nRst, $07, nBb4, $05, nBb4, $07, nBb4, $05
	dc.b	nRst, $07, nBb4, $05, nBb4, nRst, $2B, nRst, $1F, nBb3, $05, nC4
	dc.b	nRst, $07, nCs4, $05, nRst, $07, nC4, nCs4, $05, nC4, $07, nAb3
	dc.b	$05, nFs3, nRst, $07, nRst, $60, nRst, $0C
	smpsModSet          $04, $01, $13, $0D
	dc.b	nCs4
	smpsPSGAlterVol     $0A
	dc.b	nCs4, $06, nRst
	smpsPSGAlterVol     $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nAb3, $0C
	smpsPSGAlterVol     $0A
	dc.b	nAb3, $06, nRst
	smpsPSGAlterVol     $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nFs3, $0C
	smpsPSGAlterVol     $0A
	dc.b	nFs3, $06, nRst
	smpsPSGAlterVol     $F6
	smpsModSet          $04, $01, $13, $0D
	dc.b	nAb3, $0C, nRst, $07, nFs3, $05, nRst, $0C, nEb3, $13, nEb3, $05
	dc.b	nFs3, $07, nAb3, $05, nRst, $24, nRst, $1F, nBb3, $05, nC4, nRst
	dc.b	$07, nCs4, $05, nRst, $07, nC4, nCs4, $05, nC4, $07, nRst, $05
	dc.b	nRst, $07, nBb3, $05, nC4, $07, nCs4, $05, nC4, nRst, $0E, nBb3
	dc.b	$05, nC4, $07, nCs4, $05, nC4, $07, nBb3, $05, nFs3, $0C, nRst
	dc.b	$18, nRst, $30, nEb3, $04, nD3, nEb3, nF3, nEb3, nF3, nFs3, nF3
	dc.b	nFs3, nAb3, nFs3, nAb3, nBb3, nFs3, nCs4, nC4, nAb3, nB3, nBb3, nFs3
	dc.b	nA3, nAb3, nFs3, nEb3, nRst, $18
	smpsModSet          $00, $01, $F1, $70
	dc.b	nAb2
	smpsChangeTransposition $F4
	dc.b	nRst, $0C, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05
	dc.b	nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4, nFs4
	dc.b	$05, nRst, $18, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	$05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	nFs4, $05, nRst, $18, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07
	dc.b	nEb4, $05, nRst, $07, nEb4, nFs4, $05, nAb4, $07, nFs4, $05, nEb4
	dc.b	$07, nFs4, $05, nAb4, $07, nFs4, $05, nEb4, $05, nRst, $07, nEb4
	dc.b	$05, nRst, $07, nEb4, $05, nRst, $07, nEb4, $05, nRst, $07, nEb4
	dc.b	nFs4, $05, nRst, $1F, nEb4, $04, nRst, $01
	smpsCall            MiniBossS3A_Call01

MiniBossS3A_Loop06:
	dc.b	nRst, $5B, nEb4, $03, nRst, $02
	smpsCall            MiniBossS3A_Call01
	smpsLoop            $00, $03, MiniBossS3A_Loop06
	smpsCall            MiniBossS3A_Call02
	dc.b	nRst, $60, nRst, $2B, nEb4, $05, nFs4, nRst, $07, nFs4, $05, nRst
	dc.b	$07, nFs4, nAb4, $05, nBb4, $07, nAb4, $05, nRst, $60
	smpsCall            MiniBossS3A_Call02
	smpsCall            MiniBossS3A_Call00
	smpsChangeTransposition $0C
	smpsJump            MiniBossS3A_PSG1

; PSG3 Data
MiniBossS3A_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60
	smpsPSGvoice        sTone_26
	dc.b	(nMaxPSG-$F4)&$FF, $60
	smpsPSGvoice        sTone_02
	smpsCall            MiniBossS3A_Call0D
	dc.b	nRst, $60
	smpsCall            MiniBossS3A_Call0D
	smpsPSGvoice        sTone_26
	dc.b	(nMaxPSG-$F4)&$FF, $60
	smpsPSGvoice        sTone_02
	smpsCall            MiniBossS3A_Call0D
	dc.b	nRst, $48, (nMaxPSG-$F4)&$FF, $07, nRst, $0C, (nMaxPSG-$F4)&$FF, $05, nRst, $0C, (nMaxPSG-$F4)&$FF, nRst
	dc.b	(nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, nRst

MiniBossS3A_Loop02:
	smpsCall            MiniBossS3A_Call0D
	smpsLoop            $00, $03, MiniBossS3A_Loop02
	dc.b	(nMaxPSG-$F4)&$FF, $0C, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, nRst

MiniBossS3A_Loop03:
	smpsCall            MiniBossS3A_Call0D
	smpsLoop            $00, $03, MiniBossS3A_Loop03
	dc.b	(nMaxPSG-$F4)&$FF, $07
	smpsPSGAlterVol     $04
	dc.b	$05, $07
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $04
	dc.b	$07, $05
	smpsPSGAlterVol     $FC
	dc.b	$07
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	(nMaxPSG-$F4)&$FF, $0C, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, nRst

MiniBossS3A_Loop04:
	smpsCall            MiniBossS3A_Call0D
	smpsLoop            $00, $03, MiniBossS3A_Loop04
	dc.b	nRst, $60

MiniBossS3A_Loop05:
	smpsCall            MiniBossS3A_Call0D
	smpsLoop            $00, $03, MiniBossS3A_Loop05
	dc.b	(nMaxPSG-$F4)&$FF, $0C, nRst, $07, (nMaxPSG-$F4)&$FF, $05, nRst, $0C, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF, (nMaxPSG-$F4)&$FF
	dc.b	nRst, nRst, $60, nRst, nRst
	smpsJump            MiniBossS3A_PSG3

MiniBossS3A_Call0D:
	dc.b	(nMaxPSG-$F4)&$FF, $07
	smpsPSGAlterVol     $04
	dc.b	$05, $07
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $04
	dc.b	$07, $05
	smpsPSGAlterVol     $FC
	dc.b	$07
	smpsPSGAlterVol     $04
	dc.b	$05, $0C
	smpsPSGAlterVol     $FC
	dc.b	$24
	smpsReturn

; DAC Data
MiniBossS3A_DAC:
	dc.b	nRst, $30, $0C, dCrashingNoiseWoo, dComeOn, nRst, dHipHopHitKick, nRst, $54, nRst, $0C, dLowerEchoedClapHit_S3
	dc.b	dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $0C, dBassHey, dHipHopHitKick
	dc.b	nRst, $54, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, dHipHopHitKick, dHipHopHitPowerKick
	dc.b	dPowerKickHit, dLowPowerKickHit, dHipHopHitKick, nRst, $48, dHipHopHitKick, $0C, nRst, $0C, dLowerEchoedClapHit_S3, dHipHopHitKick, $08
	dc.b	dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, dEchoedClapHit_S3, $04, dLowestPowerKickHit, $0C, dBassHey, dHipHopHitKick, $48
	dc.b	dLowerEchoedClapHit_S3, $0C, $08, $04, $08, dEchoedClapHit_S3, $04, dLowerEchoedClapHit_S3, $0C, $0C, $08, $04
	dc.b	dHipHopHitKick, $0C, dHipHopHitPowerKick, nRst, dWoo, dHipHopHitKick, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04
	dc.b	$0C, $0C, $08, $04, dEchoedClapHit_S3, $18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3
	dc.b	$04, $0C, $14, $04, dEchoedClapHit_S3, $0C, dBassHey, dHipHopHitKick, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08
	dc.b	dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $18, dHipHopHitKick, $07, $05, dHipHopHitPowerKick
	dc.b	$0C, dPowerKickHit, dLowPowerKickHit, dLowerPowerKickHit, dLowPowerKickHit, dComeOn, dHipHopHitPowerKick, dHipHopHitKick, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08
	dc.b	dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $18, nRst, $0C, dLowerEchoedClapHit_S3, dWoo
	dc.b	$08, nRst, $04, dLowerEchoedClapHit_S3, $0C, $14, $04, dEchoedClapHit_S3, $0C, dBassHey, nRst, $0C
	dc.b	dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $18, nRst
	dc.b	$0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, $04, $0C, dHipHopHitKick, dHipHopHitKick, dComeOn, dHipHopHitKick, dHipHopHitKick, $0C
	dc.b	dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $18, nRst
	dc.b	$0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, dWoo, $0C, dLowerEchoedClapHit_S3, $14, $04, dEchoedClapHit_S3
	dc.b	$0C, dBassHey, dHipHopHitKick, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, $04, $0C, $0C, $08, $04
	dc.b	dEchoedClapHit_S3, $18, nRst, $0C, nRst, dHipHopHitKick, nRst, dHipHopHitKick, dHipHopHitKick, dComeOn, dHipHopHitKick, dHipHopHitKick
	dc.b	$0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3, $18
	dc.b	nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $14, $04, dEchoedClapHit_S3, $0C
	dc.b	dBassHey, dHipHopHitKick, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04
	dc.b	dEchoedClapHit_S3, $18, nRst, $0C, nRst, dHipHopHitKick, nRst, dHipHopHitKick, dHipHopHitKick, dComeOn, dHipHopHitKick, nRst
	dc.b	$60, nRst, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08
	dc.b	$04, dEchoedClapHit_S3, $18
	smpsJump            MiniBossS3A_DAC

MiniBossS3A_Voices:
;	Voice $00
;	$02
;	$02, $00, $00, $01, 	$1F, $1F, $1F, $1F, 	$00, $10, $08, $00
;	$0E, $00, $00, $08, 	$0F, $FF, $FF, $0F, 	$20, $1A, $10, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $10, $00
	smpsVcDecayRate2    $08, $00, $00, $0E
	smpsVcDecayLevel    $00, $0F, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $10, $1A, $20

;	Voice $01
;	$05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$12, $0C, $0C, $0C
;	$12, $18, $1F, $1F, 	$1F, $1F, $1F, $1F, 	$07, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $12
	smpsVcDecayRate2    $1F, $1F, $18, $12
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $07

;	Voice $02
;	$15
;	$01, $05, $06, $06, 	$9F, $DF, $DF, $DF, 	$0B, $00, $00, $09
;	$08, $00, $00, $00, 	$40, $CF, $CF, $CF, 	$09, $10, $10, $20
	smpsVcAlgorithm     $05
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $06, $06, $05, $01
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $00, $00, $0B
	smpsVcDecayRate2    $00, $00, $00, $08
	smpsVcDecayLevel    $0C, $0C, $0C, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $00
	smpsVcTotalLevel    $20, $10, $10, $09

;	Voice $03
;	$1C
;	$01, $01, $01, $01, 	$9F, $DF, $9F, $5F, 	$0F, $12, $06, $06
;	$00, $07, $0B, $07, 	$FF, $2F, $FF, $FF, 	$18, $07, $11, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $02, $03, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $12, $0F
	smpsVcDecayRate2    $07, $0B, $07, $00
	smpsVcDecayLevel    $0F, $0F, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $11, $07, $18

;	Voice $04
;	$05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$12, $0C, $0C, $0C
;	$12, $18, $1F, $1F, 	$1F, $1F, $1F, $1F, 	$07, $06, $06, $06
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $12
	smpsVcDecayRate2    $1F, $1F, $18, $12
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $06, $06, $07

;	Voice $05
;	$3C
;	$00, $00, $F0, $F1, 	$1F, $1F, $17, $1F, 	$1F, $1F, $14, $1F
;	$09, $11, $3A, $1D, 	$02, $0F, $9F, $7F, 	$03, $00, $02, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $0F, $0F, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $17, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $14, $1F, $1F
	smpsVcDecayRate2    $1D, $3A, $11, $09
	smpsVcDecayLevel    $07, $09, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $02
	smpsVcTotalLevel    $00, $02, $00, $03

