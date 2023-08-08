; =============================================================================================
; Created by Flamewing, based on S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================
; PSG conversion to S3/S&K/S3D drivers r=ire a tone shift of 12 semi-tones.
	if SMPS_PSG_Freq_Table>2
		psgdelta:	= 12
	else
		psgdelta:	= 0
        endc
; ---------------------------------------------------------------------------------------------
; Standard Octave Pitch =ates
smpsPitch10lo:	= $88
smpsPitch09lo:	= $94
smpsPitch08lo:	= $A0
smpsPitch07lo:	= $AC
smpsPitch06lo:	= $B8
smpsPitch05lo:	= $C4
smpsPitch04lo:	= $D0
smpsPitch03lo:	= $DC
smpsPitch02lo:	= $E8
smpsPitch01lo:	= $F4
smpsPitch00:	= $00
smpsPitch01hi:	= $0C
smpsPitch02hi:	= $18
smpsPitch03hi:	= $24
smpsPitch04hi:	= $30
smpsPitch05hi:	= $3C
smpsPitch06hi:	= $48
smpsPitch07hi:	= $54
smpsPitch08hi:	= $60
smpsPitch09hi:	= $6C
smpsPitch10hi:	= $78
; ---------------------------------------------------------------------------------------------
; Note =ates
; ---------------------------------------------------------------------------------------------
nRst		=	$80
nC0		=	$81
nCs0		=	$82
nD0		=	$83
nEb0		=	$84
nE0		=	$85
nF0		=	$86
nFs0		=	$87
nG0		=	$88
nAb0		=	$89
nA0		=	$8A
nBb0		=	$8B
nB0		=	$8C
nC1		=	$8D
nCs1		=	$8E
nD1		=	$8F
nEb1		=	$90
nE1		=	$91
nF1		=	$92
nFs1		=	$93
nG1		=	$94
nAb1		=	$95
nA1		=	$96
nBb1		=	$97
nB1		=	$98
nC2		=	$99
nCs2		=	$9A
nD2		=	$9B
nEb2		=	$9C
nE2		=	$9D
nF2		=	$9E
nFs2		=	$9F
nG2		=	$A0
nAb2		=	$A1
nA2		=	$A2
nBb2		=	$A3
nB2		=	$A4
nC3		=	$A5
nCs3		=	$A6
nD3		=	$A7
nEb3		=	$A8
nE3		=	$A9
nF3		=	$AA
nFs3		=	$AB
nG3		=	$AC
nAb3		=	$AD
nA3		=	$AE
nBb3		=	$AF
nB3		=	$B0
nC4		=	$B1
nCs4		=	$B2
nD4		=	$B3
nEb4		=	$B4
nE4		=	$B5
nF4		=	$B6
nFs4		=	$B7
nG4		=	$B8
nAb4		=	$B9
nA4		=	$BA
nBb4		=	$BB
nB4		=	$BC
nC5		=	$BD
nCs5		=	$BE
nD5		=	$BF
nEb5		=	$C0
nE5		=	$C1
nF5		=	$C2
nFs5		=	$C3
nG5		=	$C4
nAb5		=	$C5
nA5		=	$C6
nBb5		=	$C7
nB5		=	$C8
nC6		=	$C9
nCs6		=	$CA
nD6		=	$CB
nEb6		=	$CC
nE6		=	$CD
nF6		=	$CE
nFs6		=	$CF
nG6		=	$D0
nAb6		=	$D1
nA6		=	$D2
nBb6		=	$D3
nB6		=	$D4
nC7		=	$D5
nCs7		=	$D6
nD7		=	$D7
nEb7		=	$D8
nE7		=	$D9
nF7		=	$DA
nFs7		=	$DB
nG7		=	$DC
nAb7		=	$DD
nA7		=	$DE
nBb7		=	$DF
; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG fr=ency.
nMaxPSG		=	nBb6-psgdelta
nMaxPSG1	=	nBb6
nMaxPSG2	=	nB6
; ---------------------------------------------------------------------------------------------
; PSG Flutter =ates
sTone_01	=	$01
sTone_02	=	$02
sTone_03	=	$03
sTone_04	=	$04
sTone_05	=	$05
sTone_06	=	$06
sTone_07	=	$07	; SFX envelope, probably unused in S3K
sTone_08	=	$08
sTone_09	=	$09
sTone_0A	=	$0A
sTone_0B	=	$0B	; For FM volume envelopes
sTone_0C	=	$0C
sTone_0D	=	$0D	; This time it matches 100%
sTone_0E	=	sTone_01	; Duplicate of 01
sTone_0F	=	sTone_02	; Duplicate of 02
sTone_10	=	$10
sTone_11	=	$11
sTone_12	=	sTone_05	; Duplicate of 05
sTone_13	=	sTone_06	; Duplicate of 06
sTone_14	=	$14	; SFX envelope, probably unused in S3K
sTone_15	=	sTone_08	; Duplicate of 08
sTone_16	=	sTone_09	; Duplicate of 09
sTone_17	=	sTone_0A	; Duplicate of 0A
sTone_18	=	$18	; For FM volume envelopes
sTone_19	=	sTone_0C	; Duplicate of 0C
sTone_1A	=	$1A
sTone_1B	=	sTone_0C	; Duplicate of 0C
sTone_1C	=	$1C
sTone_1D	=	$1D
sTone_1E	=	$1E
sTone_1F	=	$1F
sTone_20	=	$20	; This time it matches 100%
sTone_21	=	$21
sTone_22	=	$22
sTone_23	=	$23
sTone_24	=	$24
sTone_25	=	$25
sTone_26	=	$26
sTone_27	=	$27

fTone_00	=	$00
	if SonicDriverVer>2
fTone_01	=	sTone_0A
fTone_02	=	$02
fTone_03	=	sTone_0C
fTone_04	=	$04
fTone_05	=	sTone_26
fTone_06	=	sTone_1C
fTone_07	=	sTone_03
fTone_08	=	sTone_1D
fTone_09	=	sTone_08
fTone_0A	=	sTone_03
fTone_0B	=	sTone_26
fTone_0C	=	$00
	else
fTone_01	=	$01
fTone_02	=	$02
fTone_03	=	$03
fTone_04	=	$04
fTone_05	=	$05
fTone_06	=	$06
fTone_07	=	$07
fTone_08	=	$08
fTone_09	=	$09
fTone_0A	=	$0A
fTone_0B	=	$0B
fTone_0C	=	$0C
	endc
fTone_0D	=	$0D
; ---------------------------------------------------------------------------------------------
; DAC =ates
; ---------------------------------------------------------------------------------------------
dKick = $81
dSnare = $82
dClap = $83
dClapS3 = $8E
dKCCrash = $84
dCrashCymbal = $9A
dRideCymbal	= $86
dKCSnare = $87
dHiTimpani = $88
dMidTimpani = $89
dLowTimpani = $8A
dVLowTimpani = $8B
dKickS3	= $8C
dSnareS3	= $8D
dElectricHighTom = $8E
dElectricMidTom = $8F
dElectricLowTom = $90
dElectricFloorTom = $91
dHighTom = $8F
dMidTomS3 = $90
dLowTomS3 = $91
dFloorTomS3 = $92
dLackOfTrack1 = $96
dLackOfTrack2 = $97
dLackOfTrack3 = $98
dLackOfTrack4 = $99
dLackOfTrack5 = $9A
dLackOfTrack6 = $9B
dMuffledSnare = $98
dCrayonKick = $9D
dCrayonSnare = $9E
dQuickLooseSnare = $99
dMidTom = $A0
dLowTom = $A1
dFloorTom = $A2
dLowMetalHit = $97
dMetalHit = $96
dHighMetalHit = $94
dHigherMetalHit = $93
dMidMetalHit = $95
dTightSnare = $A8
dMidpitchSnare = $A9
dLooseSnare = $AA
dLooserSnare = $AB
dSegaTheme = $AC
dScratch = $84
dHiTimpaniS3 = $AE
dLowTimpaniS3 = $AF
dMidTimpaniS3 = $B0
dProtoSnare = $B1
dLackOfTrack7 = $B2
dLackOfTrack8 = $B3
dLackOfTrack9 = $B4
dLackOfTrack10 = $B5
dLackOfTrack11 = $B6
dLackOfTrack12 = $B7
dLackOfTrack13 = $B8
dLackOfTrack14 = $B9
dLackOfTrack15 = $BA
dLackOfTrack16 = $BB
dLackOfTrack17 = $BC
dLackOfTrack18 = $BD
dLackOfTrack19 = $BE
dLackOfTrack20 = $BF
dLackOfTrack21 = $C0
dHiBongo = $C1
dMidBongo = $C2
dLowBongo = $C3
; ---------------------------------------------------------------------------------------------
; Channel IDs for SFX
; ---------------------------------------------------------------------------------------------
cPSG1				= $80
cPSG2				= $A0
cPSG3				= $C0
cNoise				= $E0	; Not for use in S3/S&K/S3D
cFM3				= $02
cFM4				= $04
cFM5				= $05
cFM6				= $06	; Only in S3/S&K/S3D, overrides DAC
; ---------------------------------------------------------------------------------------------
; Conversion macros and functions

;conv0To256  macro val 
	;if val<$01
		;dc.b (256-val+$FF)&$FF
	;else	
		;dc.b (256-val)&$FF	
	;endc
	;endm
; ---------------------------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro ver
SourceDriver set ver
songStart set *
	endm

smpsHeaderStartSongConvert macro ver
SourceDriver set ver
songStart set *
	endm

smpsHeaderVoiceNull macro
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	dc.w	$0000
	endm

; Header - set up Voice Location
; Common to music and SFX
smpsHeaderVoice macro loc
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	dc.w	loc-songStart
	endm

; Header - Set up Voice Location as S3's Universal Voice Bank
; Common to music and SFX
smpsHeaderVoiceUVB macro
	if songStart<>*
		fatal "Missing smpsHeaderStartSong"
	endif
	if SonicDriverVer>=3
		dc.w	0
	else
		fatal "Universal Voice Bank does not exist in Sonic 1 or Sonic 2 drivers"
	endif
	endm

; Header macros for music (not for SFX)
; Header - set up Channel Usage
smpsHeaderChan macro fm,psg
	dc.b	fm,psg
	endm

; Header - set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	div
tempoDivider set div
	dc.b    mod
	endm

; Header - set up DAC Channel
smpsHeaderDAC macro loc,pitch,vol
	dc.w	loc-songStart
	if (narg=2)
		dc.b	pitch
		if (narg=3)
			dc.b	vol
		else
			dc.b	$00
		endif
	else
		dc.w	$00
	endif
	endm

; Header - set up FM Channel
smpsHeaderFM macro loc,pitch,vol
	dc.w	loc-songStart
	dc.b	pitch,vol
	endm

; Header - set up PSG Channel
smpsHeaderPSG macro loc,pitch,vol,mod,voice
	dc.w	loc-songStart
	dc.b	(pitch+psgdelta)&$FF,vol,mod,voice
	endm

; Header macros for SFX (not for music)
; Header - set up Tempo
smpsHeaderTempoSFX macro div
	dc.b	div
	endm

; Header - set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b	chan
	endm

; Header - set up FM Channel
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
	if (chanid=cNoise)
		fatal "Using channel ID of FM6 ($06) in Sonic 1 or Sonic 2 drivers is unsupported. Change it to another channel."
	endif
	dc.b	$80,chanid
	dc.w	loc-songStart
	if (chanid&$80)<>0
	if SourceDriver>=3
		dc.b	pitch
	else
		dc.b	(pitch+psgdelta)&$FF
	endif
	else
		dc.b	pitch
	endif
	dc.b	vol
	endm
; ---------------------------------------------------------------------------------------------
; Co-ord Flag Macros and =ates
; E0xx - Panning, AMS, FMS
smpsPan macro direction,amsfms
panNone set $00
panRight set $40
panLeft set $80
panCentre set $C0
panCenter set $C0 ; silly Americans :U
	dc.b $E0,direction+amsfms
	endm

; E1xx - set channel fr=ency displacement to xx
smpsAlterNote macro val
	dc.b	$E1,val
	endm

smpsDetune macro val
	dc.b $E1, val
	endm

; Return (used after smpsCall)
smpsReturn macro val
	dc.b	$E3
	endm

; Fade in previous song (ie. 1-Up)
smpsFade macro val
	dc.b	$E4
	endm

; E5xx - set channel tempo divider to xx
smpsChanTempoDiv macro val
	dc.b	$E5,val
	endm

; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$E6,val
	endm
sVol	= $E6

; E7 - Prevent attack of next note
smpsNoAttack	= $E7
smpsNA	= smpsNoAttack
sNA	= smpsNoAttack

; E8xx - set note fill to xx
smpsNoteFill macro val
	if SourceDriver>=3
	dc.b	$FA,val
	else
	dc.b	$E8,val
	endif
	endm

; Add xx to channel pitch
smpsAlterPitch macro val
	dc.b	$E9,val
	endm

smpsChangeTransposition macro val
	dc.b	$E9,val
	endm

; set music tempo modifier to xx
smpsSetTempoMod macro val
	dc.b	$EA
	dc.b    val
	endm

; set music tempo divider to xx
smpsSetTempoDiv macro val
	dc.b	$EB,val
	endm

; ECxx - set Volume to xx
smpsSetVol macro val
	dc.b	$FC,val
	endm

; Works on all drivers
smpsPSGAlterVol macro vol
	dc.b	$EC,vol
	endm
spVol	= $EC

; Clears pushing sound flag in S1
smpsClearPush macro
	dc.b	$ED
	endm

; Stops special SFX (S1 only) and restarts overridden music track
smpsStopSpecial macro
	dc.b	$EE
	endm

; EFxx[yy] - set Voice of FM channel to xx; xx < 0 means yy present
smpsSetvoice macro voice,songID
	dc.b	$EF,voice
	endm

; EFxx - set Voice of FM channel to xx
smpsFMvoice macro voice
	dc.b	$EF,voice
	endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
; DeltaWooloo: I modified this to make the modulation accurate based on the sound source chosen for each song/SFX.
smpsModSet macro wait,speed,change,step
		dc.b	$F0	
	if SourceDriver>=3
		dc.b	wait-1,speed,change,(step*speed-1)&$FF
	else
		dc.b	wait,speed,change,step
	endif
	endm

smpsChangeVolZ80 macro val	; DeltaWooloo: The Hybrid Front really needs this
	dc.b	$FB,val	
	endm

; Turn on Modulation
smpsModOn macro
	dc.b	$F1
	endm

; F2 - End of channel
smpsStop macro
	dc.b	$F2
	endm

; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b	$F3,form
	endm

; Turn off Modulation
smpsModOff macro
	dc.b	$F4
	endm

; set Modulation
smpsModChange macro val
	dc.b	$F4,val
	endm	

; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$F5,voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b	$F6
	dc.w	loc-*-1
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	index,loops
	dc.w	loc-*-1
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	dc.w	loc-*-1
	endm
	
; FCxxxx - Jump to xxxx
smpsContinuousLoop macro loc
	dc.b	$FB
	dc.w	loc-*-1
	endm	
	
; ---------------------------------------------------------------------------------------------
; Alter Volume
smpsFMAlterVol macro val1,val2
	dc.b	$E6,val1
	endm

; ---------------------------------------------------------------------------------------------
; S1/S2 only coordination flag
;: =s D1L to maximum volume (minimum attenuation) and RR to maximum for operators 3 and 4 of FM1
smpsWeirdD1LRR macro
	dc.b	$F9
	endm
; ---------------------------------------------------------------------------------------------
; Macros for FM instruments
; Voices - Feedback
smpsVcFeedback macro val
vcFeedback set val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm set val
	endm

smpsVcUnusedBits macro val
vcUnusedBits set val
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	endm

; Voices - Coarse-Fr=ency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	endm

; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 set op1
vcAM2 set op2
vcAM3 set op3
vcAM4 set op4
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	endm

; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	endm

; Voices - Total Level
smpsVcTotalLevel macro op1,op2,op3,op4
vcTLMask4 set ((vcAlgorithm=7)<7)
vcTLMask3 set ((vcAlgorithm>=4)<7)
vcTLMask2 set ((vcAlgorithm>=5)<7)
vcTLMask1 set $80
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	dc.b	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
	dc.b	(vcDT4<<4)+vcCF4, (vcDT3<<4)+vcCF3, (vcDT2<<4)+vcCF2, (vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4, (vcRS3<<6)+vcAR3, (vcRS2<<6)+vcAR2, (vcRS1<<6)+vcAR1
	dc.b	(vcAM4<<5)+vcD1R4, (vcAM3<<5)+vcD1R3, (vcAM2<<5)+vcD1R2, (vcAM1<<5)+vcD1R1
	dc.b	vcD2R4, vcD2R3, vcD2R2, vcD2R1
	dc.b	(vcDL4<<4)+vcRR4, (vcDL3<<4)+vcRR3, (vcDL2<<4)+vcRR2, (vcDL1<<4)+vcRR1
	;dc.b	vcTL4|vcTLMask4, vcTL3|vcTLMask3, vcTL2|vcTLMask2, vcTL1|vcTLMask1
	if vcAlgorithm=7
		dc.b	op4|$80
	else
		dc.b	op4
	endif

	if vcAlgorithm>=4
		dc.b    op3|$80
	else
		dc.b    op3
	endif

	if vcAlgorithm>=5
		dc.b    op2|$80
	else
		dc.b    op2
	endif
		dc.b    op1|$80
	endm

