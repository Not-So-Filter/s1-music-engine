
; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; ===============================================================

; ---------------------------------------------------------------
; Variables used in DAC table
; ---------------------------------------------------------------

; flags
panLR	= $C0
panL	= $80
panR	= $40
pcm	= 0
dpcm	= 4
loop	= 2
pri	= 1

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

z80word macro Value
	dc.w	((\Value)&$FF)<<8|((\Value)&$FF00)>>8
	endm

DAC_Entry macro Pitch,Offset,Flags
	dc.b	\Flags			; 00h	- Flags
	dc.b	\Pitch			; 01h	- Pitch
	dc.b	(\Offset>>15)&$FF	; 02h	- Start Bank
	dc.b	(\Offset\_End>>15)&$FF	; 03h	- End Bank
	z80word	(\Offset)|$8000		; 04h	- Start Offset (in Start bank)
	z80word	(\Offset\_End-1)|$8000	; 06h	- End Offset (in End bank)
	endm
	
IncludeDACS1 macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	"sound/dac/S1/\Name\.\Extension\",$3A
	else
		incbin	"sound/dac/S1/\Name\.\Extension\"
	endc
\Name\_End:
	endm

IncludeDACS2 macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	"sound/dac/S2/\Name\.\Extension\",$3A
	else
		incbin	"sound/dac/S2/\Name\.\Extension\"
	endc
\Name\_End:
	endm

IncludeDACS3 macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	"sound/dac/S3/\Name\.\Extension\",$3A
	else
		incbin	"sound/dac/S3/\Name\.\Extension\"
	endc
\Name\_End:
	endm

; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

MegaPCM:
	incbin	"sound/MegaPCM.z80"

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

	DAC_Entry	$17, kick, dpcm			; $81	- Kick
	DAC_Entry	$04, snare, dpcm		; $82	- Snare
	DAC_Entry	$06+2, clap, dpcm		; $83	- Clap
	DAC_Entry	$08+2, scratch, dpcm		; $84	- Scratch
	dc.l	0,0					; $85	- <Free>
	dc.l	0,0					; $86	- <Free>
	dc.l	0,0					; $87	- <Free>
	DAC_Entry	$12+2, timpani, dpcm		; $88	- Hi-Timpani
	DAC_Entry	$15+2, timpani, dpcm		; $89	- Mid-Timpani
	DAC_Entry	$1B+2, timpani, dpcm		; $8A	- Mid-Low-Timpani
	DAC_Entry	$1D+2, timpani, dpcm		; $8B	- Low-Timpani

; ---------------------------------------------------------------
; Sonic 3K/3D Sample definitions
; ---------------------------------------------------------------

    DAC_Entry   $04+2, D81,     dpcm ; $8C - Kick
    DAC_Entry   $0E+2, D8285,   dpcm ; $8D - High-Tom
    DAC_Entry   $14+2, D8285,   dpcm ; $8E - Mid-Tom
    DAC_Entry   $1A+2, D8285,   dpcm ; $8F - Low-Tom
    DAC_Entry   $20+2, D8285,   dpcm ; $90 - Floor Tom
    DAC_Entry   $04+2, D86,     dpcm ; $91 - Kick
    DAC_Entry   $04+2, D87,     dpcm ; $92 - Kick + Snare
    DAC_Entry   $06+2, D88,     dpcm ; $93 - Crash Cymbal
    DAC_Entry   $0A+2, D89,     dpcm ; $94 - Ride Cymbal
    DAC_Entry   $14+2, D8A8B,   dpcm ; $95 - Low Metal Hit
    DAC_Entry   $1B+2, D8A8B,   dpcm ; $96 - Metal Hit
    DAC_Entry   $08+2, D8C,     dpcm ; $97 - High Metal Hit
    DAC_Entry   $0B+2, D8D8E,   dpcm ; $98 - Higher Metal Hit
    DAC_Entry   $11+2, D8D8E,   dpcm ; $99 - Low Metal Hit
    DAC_Entry   $08+2, D8F,     dpcm ; $9A - Clap
    DAC_Entry   $03+2, D9093,   dpcm ; $9B - Electric High-Tom
    DAC_Entry   $07+2, D9093,   dpcm ; $9C - Electric Mid-Tom
    DAC_Entry   $0A+2, D9093,   dpcm ; $9D - Electric Low-Tom
    DAC_Entry   $0E+2, D9093,   dpcm ; $9E - Electric Floor Tom
    DAC_Entry   $06+2, D9497,   dpcm ; $9F - Tight Snare
    DAC_Entry   $0A+2, D9497,   dpcm ; $A0 - Mid-pitch snare
    DAC_Entry   $0D+2, D9497,   dpcm ; $A1 - Loose Snare
    DAC_Entry   $12+2, D9497,   dpcm ; $A2 - Looser Snare
    DAC_Entry   $0B+2, D989A,   dpcm ; $A3 - Hi-Timpani
    DAC_Entry   $13+2, D989A,   dpcm ; $A4 - Low-Timpani
    DAC_Entry   $16+2, D989A,   dpcm ; $A5 - Mid-Timpani
    DAC_Entry   $0C+2, D9B,     dpcm ; $A6 - Quick Loose Snare
    DAC_Entry   $0A+2, D9C,     dpcm ; $A7 - Click
    DAC_Entry   $18+2, D9D,     dpcm ; $A8 - Power Kick
    DAC_Entry   $18+2, D9E,     dpcm ; $A9 - Quick Glass Crash
    DAC_Entry   $0C+2, D9F,     dpcm ; $AA - Glass Crash with Snare
    DAC_Entry   $0C+2, DA0,     dpcm ; $AB - Glass Crash
    DAC_Entry   $0A+2, DA1,     dpcm ; $AC - Glass Crash with Kick
    DAC_Entry   $0A+2, DA2,     dpcm ; $AD - Quiet Glass Crash
    DAC_Entry   $18+2, DA3,     dpcm ; $AE - Odd Snare with Kick
    DAC_Entry   $18+2, DA4,     dpcm ; $AF - Kick with extra bass
    DAC_Entry   $0C+2, DA5,     dpcm ; $B0 - "Come on!"
    DAC_Entry   $09+2, DA6,     dpcm ; $B1 - Dance Snare
    DAC_Entry   $18+2, DA7,     dpcm ; $B2 - Loose Kick
    DAC_Entry   $18+2, DA8,     dpcm ; $B3 - Moderately Loose Kick
    DAC_Entry   $0C+2, DA9,     dpcm ; $B4 - "Woo!"
    DAC_Entry   $0A+2, DAA,     dpcm ; $B5 - "Go!"
    DAC_Entry   $0D+2, DAB,     dpcm ; $B6 - Snare with voice going "Go!"
    DAC_Entry   $06+2, DAC,     dpcm ; $B7 - Power Tom
    DAC_Entry   $10+2, DADAE,   dpcm ; $B8 - Hi-Wood Block
    DAC_Entry   $18+2, DADAE,   dpcm ; $B9 - Low-Wood Block
    DAC_Entry   $09+2, DAFB0,   dpcm ; $BA - Hi-Hit Drum
    DAC_Entry   $12+2, DAFB0,   dpcm ; $BB - Low-Hit Drum
    DAC_Entry   $18+2, DB1,     dpcm ; $BC - Metal Crash Hit
    DAC_Entry   $16+2, DB2B3,   dpcm ; $BD - Echoed Clap Hit
    DAC_Entry   $20+2, DB2B3,   dpcm ; $BE - Lower Echoed Clap Hit
    DAC_Entry   $0C+2, DB4C1C4, dpcm ; $BF - Hip-Hop style hit with a kick
    DAC_Entry   $0C+2, DB5,     dpcm ; $C0 - Hip-Hop style hit with a Power Kick
    DAC_Entry   $0C+2, DB6,     dpcm ; $C1 - Som Bass with a voice going "Hey!"
    DAC_Entry   $18+2, DB7,     dpcm ; $C2 - Dance Style Kick
    DAC_Entry   $0C+2, DB8B9,   dpcm ; $C3 - Hip-Hop hit with a kick
    DAC_Entry   $0C+2, DB8B9,   dpcm ; $C4 - Hip-Hop hit with a kick
    DAC_Entry   $18+2, DBA,     dpcm ; $C5 - Reverse Fading Wind Sound
    DAC_Entry   $18+2, DBB,     dpcm ; $C6 - Scratch
    DAC_Entry   $18+2, DBC,     dpcm ; $C7 - Loose Snare with noise
    DAC_Entry   $0C+2, DBD,     dpcm ; $C8 - Power Kick
    DAC_Entry   $0C+2, DBE,     dpcm ; $C9 - Crashing noise with voice going "Woo!"
    DAC_Entry   $1C+2, DBF,     dpcm ; $CA - Quick hit
    DAC_Entry   $0B+2, DC0,     dpcm ; $CB - Kick with a voice going "Hey!"
    DAC_Entry   $0F+2, DB4C1C4, dpcm ; $CC - Power Kick with hit
    DAC_Entry   $11+2, DB4C1C4, dpcm ; $CD - Low Power Kick with hit
    DAC_Entry   $12+2, DB4C1C4, dpcm ; $CE - Lower Power Kick with hit
    DAC_Entry   $0B+2, DB4C1C4, dpcm ; $CF - Lowest Power Kick with hit
    DAC_Entry   $01+2, D6,      dpcm ; $D0 - Orchestra Hit - S3D Intro
    DAC_Entry   $12+2, D7,      dpcm ; $D1 - Final Fight - Kick
MegaPCM_End:

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

	IncludeDACS1	kick, dpcm
	IncludeDACS1	snare, dpcm
	IncludeDACS1	timpani, dpcm
	IncludeDACS2	clap, dpcm
	IncludeDACS2	scratch, dpcm
	IncludeDACS2	tom, dpcm
    IncludeDACS3 D81, bin
    IncludeDACS3 D8285, bin
    IncludeDACS3 D86, bin
    IncludeDACS3 D87, bin
    IncludeDACS3 D88, bin
    IncludeDACS3 D89, bin
    IncludeDACS3 D8A8B, bin
    IncludeDACS3 D8C, bin
    IncludeDACS3 D8D8E, bin
    IncludeDACS3 D8F, bin
    IncludeDACS3 D9093, bin
    IncludeDACS3 D9497, bin
    IncludeDACS3 D989A, bin
    IncludeDACS3 D9B, bin
    IncludeDACS3 D9C, bin
    IncludeDACS3 D9D, bin
    IncludeDACS3 D9E, bin
    IncludeDACS3 D9F, bin
    IncludeDACS3 DA0, bin
    IncludeDACS3 DA1, bin
    IncludeDACS3 DA2, bin
    IncludeDACS3 DA3, bin
    IncludeDACS3 DA4, bin
    IncludeDACS3 DA5, bin
    IncludeDACS3 DA6, bin
    IncludeDACS3 DA7, bin
    IncludeDACS3 DA8, bin
    IncludeDACS3 DA9, bin
    IncludeDACS3 DAA, bin
    IncludeDACS3 DAB, bin
    IncludeDACS3 DAC, bin
    IncludeDACS3 DADAE, bin
    IncludeDACS3 DAFB0, bin
    IncludeDACS3 DB1, bin
    IncludeDACS3 DB2B3, bin
    IncludeDACS3 DB4C1C4, bin
    IncludeDACS3 DB5, bin
    IncludeDACS3 DB6, bin
    IncludeDACS3 DB7, bin
    IncludeDACS3 DB8B9, bin
    IncludeDACS3 DBA, bin
    IncludeDACS3 DBB, bin
    IncludeDACS3 DBC, bin
    IncludeDACS3 DBD, bin
    IncludeDACS3 DBE, bin
    IncludeDACS3 DBF, bin
    IncludeDACS3 DC0, bin
    IncludeDACS3 D6, bin
    IncludeDACS3 D7, bin
	even

