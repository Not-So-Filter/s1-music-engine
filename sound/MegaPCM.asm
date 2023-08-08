
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
	
IncludeDAC macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	"sound/dac/\Name\.\Extension\",$3A
	else
		incbin	"sound/dac/\Name\.\Extension\"
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
	DAC_Entry	$06+2, claps2, dpcm		; $83	- Clap
	DAC_Entry	$08+2, scratchs2, dpcm		; $84	- Scratch
	dc.l	0,0					; $85	- <Free>
	dc.l	0,0					; $86	- <Free>
	dc.l	0,0					; $87	- <Free>
	DAC_Entry	$12+2, timpani, dpcm		; $88	- Hi-Timpani
	DAC_Entry	$15+2, timpani, dpcm		; $89	- Mid-Timpani
	DAC_Entry	$1B+2, timpani, dpcm		; $8A	- Mid-Low-Timpani
	DAC_Entry	$1D+2, timpani, dpcm		; $8B	- Low-Timpani
	DAC_Entry	$04+3, kicks3, dpcm		; $8C	- Kick
	DAC_Entry	$04+3, snares3, dpcm		; $8D	- Snare
	DAC_Entry	$08+3, claps3, dpcm		; $8E	- Clap
	DAC_Entry	$0E+3, toms3, dpcm		; $8F	- High Tom
	DAC_Entry	$14+3, toms3, dpcm		; $90	- Mid Tom
	DAC_Entry	$1A+3, toms3, dpcm		; $91	- Low Tom
	DAC_Entry	$20+3, toms3, dpcm		; $92	- Floor Tom
	DAC_Entry	$0B+3, highermetalhits3, dpcm	; $93	- Higher Metal Hit
	DAC_Entry	$08+3, highmetalhits3, dpcm	; $94	- High Metal Hit
	DAC_Entry	$11+3, highermetalhits3, dpcm	; $95	- Mid Metal Hit
	DAC_Entry	$14+3, metalhits3, dpcm		; $96	- Metal Hit
	DAC_Entry	$1B+3, metalhits3, dpcm		; $97	- Low Metal Hit
	DAC_Entry	$04+3, muffledsnares3, dpcm	; $98	- Muffled Snare
	DAC_Entry	$04+3, quickloosesnares3, dpcm	; $99	- Quick Loose Snare
	DAC_Entry	$06+3, crashcymbals3, dpcm	; $9A	- Crash Cymbal
	dc.l	0,0					; $9B	- <Free>
	dc.l	0,0					; $9C	- <Free>
	dc.l	0,0					; $9D	- <Free>
	dc.l	0,0					; $9E	- <Free>
	dc.l	0,0					; $9F	- <Free>
	DAC_Entry	$02+2, toms2, dpcm		; $A0	- <Free>
	DAC_Entry	$05+2, toms2, dpcm		; $A1	- <Free>
	DAC_Entry	$08+2, toms2, dpcm		; $A2	- <Free>
	dc.l	0,0					; $A3	- <Free>
	dc.l	0,0					; $A4	- <Free>
	dc.l	0,0					; $A5	- <Free>
	dc.l	0,0					; $A6	- <Free>

MegaPCM_End:

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

	IncludeDAC	kick, dpcm
	IncludeDAC	snare, dpcm
	IncludeDAC	timpani, dpcm
	IncludeDAC	claps2, dpcm
	IncludeDAC	scratchs2, dpcm
	IncludeDAC	toms2, dpcm
	IncludeDAC	kicks3, dpcm
	IncludeDAC	snares3, dpcm
	IncludeDAC	claps3, dpcm
	IncludeDAC	toms3, dpcm
	IncludeDAC	highermetalhits3, dpcm
	IncludeDAC	highmetalhits3, dpcm
	IncludeDAC	metalhits3, dpcm
	IncludeDAC	muffledsnares3, dpcm
	IncludeDAC	quickloosesnares3, dpcm
	IncludeDAC	crashcymbals3, dpcm
	even

