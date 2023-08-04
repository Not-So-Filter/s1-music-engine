; ---------------------------------------------------------------------------
; Modified SMPS 68k Type 1b sound driver
; ---------------------------------------------------------------------------

SonicDriverVer:	= 3

SMPS_EnableUniversalVoiceBank: = 1

; Changing this to 2 or under will enable the default PSG Frequency Table.
; Changing this to 3 or over will enable the extended PSG Frequency Table.
SMPS_PSG_Freq_Table: = 3

; Changing this to 1 or under will enable the S1 tempo wait routine.
; Changing this to 2 will enable the S2 tempo wait routine.
; Changing this to 3 or over will enable the S3K/Ristar/Treasure tempo wait routine.
SMPS_Tempo_Wait: = 3

; ---------------------------------------------------------------------------
; PSG instruments used in music
; ---------------------------------------------------------------------------
PSG_Index:
	if SonicDriverVer>2
		dc.l PSG1
                dc.l PSG2
                dc.l PSG3
		dc.l PSG4
                dc.l PSG5
                dc.l PSG6
		dc.l PSG7
                dc.l PSG8
                dc.l PSG9
                dc.l PSGA
                dc.l PSGB
                dc.l PSGC
		dc.l PSGD
                dc.l PSGE
                dc.l PSGF
                dc.l PSG10
                dc.l PSG11
                dc.l PSG12
                dc.l PSG13
		dc.l PSG14
                dc.l PSG15
                dc.l PSG16
		dc.l PSG17
                dc.l PSG18
                dc.l PSG19
                dc.l PSG1A
                dc.l PSG1B
                dc.l PSG1C
		dc.l PSG1D
                dc.l PSG1E
                dc.l PSG1F
                dc.l PSG20
                dc.l PSG21
                dc.l PSG22
                dc.l PSG23
		dc.l PSG24
                dc.l PSG25
                dc.l PSG26
		dc.l PSG27
PSG1:		incbin	"sound/s3kpsg/psg1.bin"
		even
PSG2:		incbin	"sound/s3kpsg/psg2.bin"
		even
PSG3:		incbin	"sound/s3kpsg/psg3.bin"
		even
PSG4:		incbin	"sound/s3kpsg/psg4.bin"
		even
PSG5:		incbin	"sound/s3kpsg/psg5.bin"
		even
PSG6:		incbin	"sound/s3kpsg/psg6.bin"
		even
PSG7:		incbin	"sound/s3kpsg/psg7.bin"
		even
PSG8:		incbin	"sound/s3kpsg/psg8.bin"
		even
PSG9:		incbin	"sound/s3kpsg/psg9.bin"
		even
PSGA:		incbin	"sound/s3kpsg/psgA.bin"
		even
PSGB:		incbin	"sound/s3kpsg/psgB.bin"
		even
PSGC:		incbin	"sound/s3kpsg/psgC.bin"
		even
PSGD:		incbin	"sound/s3kpsg/psgD.bin"
		even
PSGE:		incbin	"sound/s3kpsg/psgE.bin"
		even
PSGF:		incbin	"sound/s3kpsg/psgF.bin"
		even
PSG10:		incbin	"sound/s3kpsg/psg10.bin"
		even
PSG11:		incbin	"sound/s3kpsg/psg11.bin"
		even
PSG12:		incbin	"sound/s3kpsg/psg12.bin"
		even
PSG13:		incbin	"sound/s3kpsg/psg13.bin"
		even
PSG14:		incbin	"sound/s3kpsg/psg14.bin"
		even
PSG15:		incbin	"sound/s3kpsg/psg15.bin"
		even
PSG16:		incbin	"sound/s3kpsg/psg16.bin"
		even
PSG17:		incbin	"sound/s3kpsg/psg17.bin"
		even
PSG18:		incbin	"sound/s3kpsg/psg18.bin"
		even
PSG19:		incbin	"sound/s3kpsg/psg19.bin"
		even
PSG1A:		incbin	"sound/s3kpsg/psg1A.bin"
		even
PSG1B:		incbin	"sound/s3kpsg/psg1B.bin"
		even
PSG1C:		incbin	"sound/s3kpsg/psg1C.bin"
		even
PSG1D:		incbin	"sound/s3kpsg/psg1D.bin"
		even
PSG1E:		incbin	"sound/s3kpsg/psg1E.bin"
		even
PSG1F:		incbin	"sound/s3kpsg/psg1F.bin"
		even
PSG20:		incbin	"sound/s3kpsg/psg20.bin"
		even
PSG21:		incbin	"sound/s3kpsg/psg21.bin"
		even
PSG22:		incbin	"sound/s3kpsg/psg22.bin"
		even
PSG23:		incbin	"sound/s3kpsg/psg23.bin"
		even
PSG24:		incbin	"sound/s3kpsg/psg24.bin"
		even
PSG25:		incbin	"sound/s3kpsg/psg25.bin"
		even
PSG26:		incbin	"sound/s3kpsg/psg26.bin"
		even
PSG27:		incbin	"sound/s3kpsg/psg27.bin"
		even
	else
		dc.l PSG1
                dc.l PSG2
                dc.l PSG3
		dc.l PSG4
                dc.l PSG5
                dc.l PSG6
		dc.l PSG7
                dc.l PSG8
                dc.l PSG9
PSG1:		incbin	"sound/s1psg/psg1.bin"
		even
PSG2:		incbin	"sound/s1psg/psg2.bin"
		even
PSG3:		incbin	"sound/s1psg/psg3.bin"
		even
PSG4:		incbin	"sound/s1psg/psg4.bin"
		even
PSG5:		incbin	"sound/s1psg/psg5.bin"
		even
PSG6:		incbin	"sound/s1psg/psg6.bin"
		even
PSG7:		incbin	"sound/s1psg/psg7.bin"
		even
PSG8:		incbin	"sound/s1psg/psg8.bin"
		even
PSG9:		incbin	"sound/s1psg/psg9.bin"
		even
	endc
; ---------------------------------------------------------------------------
; New tempos for songs during speed shoes
; ---------------------------------------------------------------------------
; DANGER! several songs will use the first few bytes of MusicIndex as their main
; tempos while speed shoes are active. If you don't want that, you should add
; their "correct" sped-up main tempos to the list.
; byte_71A94:
SpeedUpIndex:
	if SMPS_Tempo_Wait>2
		dc.b $25	; GHZ
		dc.b $02	; LZ
		dc.b $02	; MZ
		dc.b $07	; SLZ
		dc.b $0C	; SYZ
		dc.b $20	; SBZ
		dc.b $01	; Invincibility
		dc.b $33	; Extra Life
		;dc.b ?		; Special Stage
		;dc.b ?		; Title Screen
		;dc.b ?		; Ending
		;dc.b ?		; Boss
		;dc.b ?		; FZ
		;dc.b ?		; Sonic Got Through
		;dc.b ?		; Game Over
		;dc.b ?		; Continue Screen
		;dc.b ?		; Credits
		;dc.b ?		; Drowning
		;dc.b ?		; Get Emerald
		even
	else
		dc.b $07	; GHZ
		dc.b $72	; LZ
		dc.b $73	; MZ
		dc.b $26	; SLZ
		dc.b $15	; SYZ
		dc.b $08	; SBZ
		dc.b $FF	; Invincibility
		dc.b $05	; Extra Life
		;dc.b ?		; Special Stage
		;dc.b ?		; Title Screen
		;dc.b ?		; Ending
		;dc.b ?		; Boss
		;dc.b ?		; FZ
		;dc.b ?		; Sonic Got Through
		;dc.b ?		; Game Over
		;dc.b ?		; Continue Screen
		;dc.b ?		; Credits
		;dc.b ?		; Drowning
		;dc.b ?		; Get Emerald
		even
	endc


; ---------------------------------------------------------------------------
; Music	Pointers
; ---------------------------------------------------------------------------
MusicIndex:
ptr_mus81:	dc.l Music81
ptr_mus82:	dc.l Music82
ptr_mus83:	dc.l Music83
ptr_mus84:	dc.l Music84
ptr_mus85:	dc.l Music85
ptr_mus86:	dc.l Music86
ptr_mus87:	dc.l Music87
ptr_mus88:	dc.l Music88
ptr_mus89:	dc.l Music89
ptr_mus8A:	dc.l Music8A
ptr_mus8B:	dc.l Music8B
ptr_mus8C:	dc.l Music8C
ptr_mus8D:	dc.l Music8D
ptr_mus8E:	dc.l Music8E
ptr_mus8F:	dc.l Music8F
ptr_mus90:	dc.l Music90
ptr_mus91:	dc.l Music91
ptr_mus92:	dc.l Music92
ptr_mus93:	dc.l Music93
ptr_mus94:	dc.l Music94
ptr_mus95:	dc.l Music95
ptr_mus96:	dc.l Music96
ptr_mus97:	dc.l Music97
ptr_mus98:	dc.l Music98
ptr_mus99:	dc.l Music99
ptr_mus9A:	dc.l Music9A
ptr_mus9B:	dc.l Music9B
ptr_mus9C:	dc.l Music9C
ptr_musend
; ---------------------------------------------------------------------------
; Priority of sound. New music or SFX must have a priority higher than or equal
; to what is stored in v_sndprio or it won't play. If bit 7 of new priority is
; set ($80 and up), the new music or SFX will not set its priority -- meaning
; any music or SFX can override it (as long as it can override whatever was
; playing before). Usually, SFX will only override SFX, special SFX ($D0-$DF)
; will only override special SFX and music will only override music.
; ---------------------------------------------------------------------------
; SoundTypes:
SoundPriorities:
		dc.b     $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $01
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $10
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $20
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $30
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $40
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $50
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $60
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $70
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $80
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $90
		dc.b $80,$70,$70,$70,$70,$70,$70,$70,$70,$70,$68,$70,$70,$70,$60,$70	; $A0
		dc.b $70,$60,$70,$60,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$7F	; $B0
		dc.b $60,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70	; $C0
		dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80	; $D0
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $E0
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90	; $F0
		even

; ---------------------------------------------------------------------------
; Subroutine to update music more than once per frame
; (Called by horizontal & vert. interrupts)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71B4C:
UpdateMusic:
		lea	(v_snddriver_ram).w,a6
		stopZ80
		waitZ80
		clr.b	f_voice_selector(a6)
		tst.b	f_pausemusic(a6)
		bne.w	PauseMusic
		bsr.w	DoFadeIn
		bsr.w	TempoWait
		bsr.w	DoFadeOut
		bsr.w	CycleSoundQueue
		bsr.s	DACUpdateTrack
		clr.b	f_updating_dac(a6)
		moveq	#((v_music_fm_tracks_end-v_music_fm_tracks)/TrackSz)-1,d7	; 6 FM tracks
; loc_71BDA:
.bgmfmloop:
		bsr.w	FMUpdateTrack
		dbf	d7,.bgmfmloop

		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d7 ; 3 PSG tracks
; loc_71BEC:
.bgmpsgloop:
		bsr.w	PSGUpdateTrack
		dbf	d7,.bgmpsgloop

		move.b	#$80,f_voice_selector(a6)			; Now at SFX tracks
		moveq	#((v_sfx_fm_tracks_end-v_sfx_fm_tracks)/TrackSz)-1,d7	; 3 FM tracks (SFX)
; loc_71C04:
.sfxfmloop:
		bsr.w	FMUpdateTrack
		dbf	d7,.sfxfmloop

		moveq	#((v_sfx_psg_tracks_end-v_sfx_psg_tracks)/TrackSz)-1,d7 ; 3 PSG tracks (SFX)
; loc_71C16:
.sfxpsgloop:
		bsr.w	PSGUpdateTrack
		dbf	d7,.sfxpsgloop

		move.b	#$40,f_voice_selector(a6) ; Now at special SFX tracks
		bsr.w	FMUpdateTrack
		bsr.w	PSGUpdateTrack
		btst	#6,(v_megadrive).w ; is Megadrive PAL?
		beq.s	.exit		; if not, branch
		cmpi.b	#5,f_palupdatecount(a6)
		bne.s	.exit
		clr.b	f_palupdatecount(a6)
		bra.w	UpdateMusic

.exit:
		addq.b	#1,f_palupdatecount(a6)
                lea	(ym2612_a0).l,a0
.loopDAC:
		tst.b	(a0)		; Is FM busy?
		bmi.s	.loopDAC	; Loop if so
		move.b	#$2A,(a0)
		startZ80
.locret:
                rts
; End of function UpdateMusic


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71C4E: UpdateDAC:
DACUpdateTrack:
		lea	v_music_dac_track(a6),a5
		tst.b	(a5) ; Is DAC track playing?
		bpl.s	.locret		; Branch if not
                subq.b	#1,TrackDurationTimeout(a5)	; Has DAC sample timeout expired?
		bne.s	.locret				; Return if not
		move.b	#$80,f_updating_dac(a6)		; Set flag to indicate this is the DAC
;DACDoNext:
		movea.l	TrackDataPointer(a5),a4	; DAC track data pointer
; loc_71C5E:
.sampleloop:
		moveq	#0,d5
		move.b	(a4)+,d5	; Get next SMPS unit
		cmpi.b	#$E0,d5		; Is it a coord. flag?
		blo.s	.notcoord	; Branch if not
		bsr.w	CoordFlag
		bra.s	.sampleloop
; ===========================================================================
; loc_71C6E:
.notcoord:
		tst.b	d5			; Is it a sample?
		bpl.s	.gotduration		; Branch if not (duration)
		move.b	d5,TrackSavedDAC(a5)	; Store new sample
		move.b	(a4)+,d5		; Get another byte
		bpl.s	.gotduration		; Branch if it is a duration
		subq.w	#1,a4			; Put byte back
		move.b	TrackSavedDuration(a5),TrackDurationTimeout(a5) ; Use last duration
		bra.s	.gotsampleduration
; ===========================================================================
; loc_71C84:
.gotduration:
		bsr.w	SetDuration
; loc_71C88:
.gotsampleduration:
		move.l	a4,TrackDataPointer(a5) ; Save pointer
		btst	#2,(a5)			; Is track being overridden?
		bne.s	.locret			; Return if yes
		moveq	#0,d0
		move.b	TrackSavedDAC(a5),d0	; Get sample
		cmpi.b	#$80,d0			; Is it a rest?
		beq.s	.locret			; Return if yes
	if MegaPCM_Mode=0
		btst	#3,d0			; Is bit 3 set (samples between $88-$8F)?
		bne.s	.timpani		; Various timpani
	endc
                move.b	d0,(z80_dac_sample).l
.locret:
	if MegaPCM_Mode
locret_71CAA:
	endc
		rts
; ===========================================================================

	if MegaPCM_Mode=0
; loc_71CAC:
.timpani:
		subi.b	#$88,d0		; Convert into an index
		move.b	DAC_sample_rate(pc,d0.w),(z80_dac3_pitch).l
		move.b	#$83,(z80_dac_sample).l	; Use timpani
locret_71CAA:
		rts
; End of function DACUpdateTrack

; ===========================================================================
; Note: this only defines rates for samples $88-$8D, meaning $8E-$8F are invalid.
; Also, $8C-$8D are so slow you may want to skip them.
; byte_71CC4:
DAC_sample_rate: dc.b $12, $15, $1C, $1D
	endc

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71CCA:
FMUpdateTrack:
		lea	TrackSz(a5),a5
		tst.b	(a5) ; Is track playing?
		bpl.s	locret_71CAA	; Branch if not
                subq.b	#1,TrackDurationTimeout(a5)	; Update duration timeout
		bne.s	.notegoing			; Branch if it hasn't expired
		bclr	#4,(a5)	; Clear 'do not attack next note' bit
		bsr.s	FMDoNext
		bsr.w	FMPrepareNote
		bsr.w	FMNoteOn
		bra.s	FMDoModulation
; ===========================================================================
; loc_71CE0:
.notegoing:
		bsr.w	NoteTimeoutUpdate
FMDoModulation:
		bsr.w	DoModulation
		bra.w	FMUpdateFreq
; End of function FMUpdateTrack


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71CEC:
FMDoNext:
		movea.l	TrackDataPointer(a5),a4		; Track data pointer
		bclr	#1,(a5)	; Clear 'track at rest' bit
; loc_71CF4:
.noteloop:
		moveq	#0,d5
		move.b	(a4)+,d5	; Get byte from track
		cmpi.b	#$E0,d5		; Is this a coord. flag?
		blo.s	.gotnote	; Branch if not
		bsr.w	CoordFlag
		bra.s	.noteloop
; ===========================================================================
; loc_71D04:
.gotnote:
		bsr.w	FMNoteOff
		tst.b	d5		; Is this a note?
		bpl.s	.gotduration	; Branch if not
		bsr.s	FMSetFreq
		move.b	(a4)+,d5	; Get another byte
		bpl.s	.gotduration	; Branch if it is a duration
		subq.w	#1,a4		; Otherwise, put it back
		bra.w	FinishTrackUpdate
; ===========================================================================
; loc_71D1A:
.gotduration:
		bsr.w	SetDuration
		bra.w	FinishTrackUpdate
; End of function FMDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D22:
FMSetFreq:
		subi.b	#$80,d5			; Make it a zero-based index
		beq.s	TrackSetRest
		add.b	TrackTranspose(a5),d5	; Add track transposition
		andi.w	#$7F,d5			; Clear high byte and sign bit
		add.w	d5,d5
		move.w	FMFrequencies(pc,d5.w),TrackFreq(a5)	; Store new frequency
		rts
; End of function FMSetFreq

; ===========================================================================
; loc_71D58:
TrackSetRest:
		bset	#1,(a5)	; Set 'track at rest' bit
		clr.w	TrackFreq(a5)			; Clear frequency
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; FM Note Values: b-0 to a#8
;
; Each row is an octave, starting with B and ending with A-sharp/B-flat.
; Notably, this differs from the PSG frequency table, which starts with C and
; ends with B. This is caused by 'FMSetFreq' subtracting $80 from the note
; instead of $81, meaning that the first frequency in the table ironically
; corresponds to the 'rest' note. The only way to use this frequency in a
; real note is to transpose the channel to a lower semitone.
;
; Rather than use a complete lookup table, other SMPS drivers such as
; Sonic 3's compute the octave, and only store a single octave's worth of
; notes in the table.
;
; Invalid transposition values will cause this table to be overflowed,
; resulting in garbage data being used as frequency values. In drivers that
; compute the octave instead, invalid transposition values merely cause the
; notes to wrap-around (the note below the lowest note will be the highest
; note). It's important to keep this in mind when porting buggy songs.
; ---------------------------------------------------------------------------
; word_72790: FM_Notes:
FMFrequencies:
		dc.w $025E,$0284,$02AB,$02D3,$02FE,$032D,$035C,$038F,$03C5,$03FF,$043C,$047C
		dc.w $0A5E,$0A84,$0AAB,$0AD3,$0AFE,$0B2D,$0B5C,$0B8F,$0BC5,$0BFF,$0C3C,$0C7C
		dc.w $125E,$1284,$12AB,$12D3,$12FE,$132D,$135C,$138F,$13C5,$13FF,$143C,$147C
		dc.w $1A5E,$1A84,$1AAB,$1AD3,$1AFE,$1B2D,$1B5C,$1B8F,$1BC5,$1BFF,$1C3C,$1C7C
		dc.w $225E,$2284,$22AB,$22D3,$22FE,$232D,$235C,$238F,$23C5,$23FF,$243C,$247C
		dc.w $2A5E,$2A84,$2AAB,$2AD3,$2AFE,$2B2D,$2B5C,$2B8F,$2BC5,$2BFF,$2C3C,$2C7C
		dc.w $325E,$3284,$32AB,$32D3,$32FE,$332D,$335C,$338F,$33C5,$33FF,$343C,$347C
		dc.w $3A5E,$3A84,$3AAB,$3AD3,$3AFE,$3B2D,$3B5C,$3B8F,$3BC5,$3BFF,$3C3C,$3C7C


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D40:
SetDuration:
		move.b	d5,d0
		move.b	TrackTempoDivider(a5),d1	; Get dividing timing
; loc_71D46:
.multloop:
		subq.b	#1,d1
		beq.s	.donemult
		add.b	d5,d0
		bra.s	.multloop
; ===========================================================================
; loc_71D4E:
.donemult:
		move.b	d0,TrackSavedDuration(a5)	; Save duration
		move.b	d0,TrackDurationTimeout(a5)	; Save duration timeout
		rts
; End of function SetDuration

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D60:
FinishTrackUpdate:
		move.l	a4,TrackDataPointer(a5)	; Store new track position
		move.b	TrackSavedDuration(a5),TrackDurationTimeout(a5)	; Reset note timeout
		btst	#4,(a5)	; Is track set to not attack note?
		bne.s	FinishTrackUpdate.locret	; If so, branch
		move.b	TrackNoteTimeoutMaster(a5),TrackNoteTimeout(a5)	; Reset note fill timeout
		clr.b	TrackVolEnvIndex(a5)		; Reset PSG volume envelope index (even on FM tracks...)
		btst	#3,(a5)	; Is modulation on?
		beq.s	FinishTrackUpdate.locret	; If not, return
		movea.l	TrackModulationPtr(a5),a0	; Modulation data pointer
		move.b	(a0)+,TrackModulationWait(a5)	; Reset wait
		move.b	(a0)+,TrackModulationSpeed(a5)	; Reset speed
		move.b	(a0)+,TrackModulationDelta(a5)	; Reset delta
		move.b	(a0)+,d0			; Get steps
		lsr.b	#1,d0				; Halve them
		move.b	d0,TrackModulationSteps(a5)	; Then store
		clr.w	TrackModulationVal(a5)		; Reset frequency change
; locret_71D9C:
FinishTrackUpdate.locret:
		rts
; End of function FinishTrackUpdate


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71D9E: NoteFillUpdate
NoteTimeoutUpdate:
		tst.b	TrackNoteTimeout(a5)	; Is note fill on?
		beq.s	FinishTrackUpdate.locret
		subq.b	#1,TrackNoteTimeout(a5)	; Update note fill timeout
		bne.s	FinishTrackUpdate.locret	; Return if it hasn't expired
		bset	#1,(a5)	; Put track at rest
		addq.w	#4,sp				; Do not return to caller
		tst.b	TrackVoiceControl(a5)		; Is this a psg track?
		bmi.w	PSGNoteOff			; If yes, branch
		bra.w	FMNoteOff
; End of function NoteTimeoutUpdate


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71DC6:
DoModulation:
		btst	#1,(a5)				; Is note active?
		bne.s	.return				; Return if not
                btst	#3,(a5)	; Is modulation active?
		beq.s	.return				; Return if not
		tst.b	TrackModulationWait(a5)	; Has modulation wait expired?
		beq.s	.waitdone			; If yes, branch
		subq.b	#1,TrackModulationWait(a5)	; Update wait timeout

.return:
		addq.w	#4,sp				; Do not return to caller
		rts
; ===========================================================================
; loc_71DDA:
.waitdone:
		subq.b	#1,TrackModulationSpeed(a5)	; Update speed
		beq.s	.updatemodulation		; If it expired, want to update modulation
		addq.w	#4,sp				; Do not return to caller
		rts
; ===========================================================================
; loc_71DE2:
.updatemodulation:
		movea.l	TrackModulationPtr(a5),a0	; Get modulation data
		move.b	1(a0),TrackModulationSpeed(a5)	; Restore modulation speed
		tst.b	TrackModulationSteps(a5)	; Check number of steps
		bne.s	.calcfreq			; If nonzero, branch
		move.b	3(a0),TrackModulationSteps(a5)	; Restore from modulation data
		neg.b	TrackModulationDelta(a5)	; Negate modulation delta
		addq.w	#4,sp				; Do not return to caller
		rts
; ===========================================================================
; loc_71DFE:
.calcfreq:
		subq.b	#1,TrackModulationSteps(a5)	; Update modulation steps
		move.b	TrackModulationDelta(a5),d6	; Get modulation delta
		ext.w	d6
		add.w	TrackModulationVal(a5),d6	; Add cumulative modulation change
		move.w	d6,TrackModulationVal(a5)	; Store it
		add.w	TrackFreq(a5),d6		; Add note frequency to it
; locret_71E16:
.locret:
		rts
; End of function DoModulation


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_71E18:
FMPrepareNote:
		btst	#1,(a5)	; Is track resting?
		bne.s	locret_71E48			; Return if so
		move.w	TrackFreq(a5),d6		; Get current note frequency
		beq.s	FMSetRest			; Branch if zero
; loc_71E24:
FMUpdateFreq:
		move.b	TrackDetune(a5),d0 	; Get detune value
		ext.w	d0
		add.w	d0,d6				; Add note frequency
		btst	#2,(a5)	; Is track being overridden?
		bne.s	locret_71E48			; Return if so
		move.w	d6,d1
		lsr.w	#8,d1
		moveq	#$FFFFFFA4,d0			; Register for upper 6 bits of frequency
		bsr.w	WriteFMIorII
		move.b	d6,d1
		moveq	#$FFFFFFA0,d0			; Register for lower 8 bits of frequency
		bra.w	WriteFMIorII

locret_71E48:
		rts
; ===========================================================================
; loc_71E4A:
FMSetRest:
		bset	#1,(a5)	; Set 'track at rest' bit
		rts
; End of function FMPrepareNote

; ===========================================================================
; loc_71E50:
PauseMusic:
                bmi.s	.unpausemusic		; Branch if music is being unpaused
		cmpi.b	#2,f_pausemusic(a6)
		beq.s	locret_71E48
		move.b	#2,f_pausemusic(a6)
		moveq	#2,d3
		moveq	#$FFFFFFB4,d0		; Command to set AMS/FMS/panning
		moveq	#0,d1		; No panning, AMS or FMS
; loc_71E6A:
.killpanloop:
		bsr.w	WriteFMI
		bsr.w	WriteFMII
		addq.b	#1,d0
		dbf	d3,.killpanloop

		moveq	#2,d3
		moveq	#$28,d0		; Key on/off register
; loc_71E7C:
.noteoffloop:
		move.b	d3,d1		; FM1, FM2, FM3
		bsr.w	WriteFMI
		addq.b	#4,d1		; FM4, FM5, FM6
		bsr.w	WriteFMI
		dbf	d3,.noteoffloop

	if MegaPCM_Mode
		move.b	#$7F,(z80_dac_sample).l
	endc
		bra.w	PSGSilenceAll
; ===========================================================================
; loc_71E94:
.unpausemusic:
		clr.b	f_pausemusic(a6)
		lea	v_music_fmdac_tracks(a6),a5
		moveq	#((v_music_fmdac_tracks_end-v_music_fmdac_tracks)/TrackSz)-1,d4	; 6 FM + 1 DAC tracks
; loc_71EA0:
.bgmfmloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.bgmfmnext			; Branch if not
		btst	#2,(a5)	; Is track being overridden?
		bne.s	.bgmfmnext			; Branch if yes
		moveq	#$FFFFFFB4,d0				; Command to set AMS/FMS/panning
		move.b	TrackAMSFMSPan(a5),d1		; Get value from track RAM
		bsr.w	WriteFMIorII
; loc_71EB8:
.bgmfmnext:
		lea	TrackSz(a5),a5
		dbf	d4,.bgmfmloop

		lea	v_sfx_fm_tracks(a6),a5
		moveq	#((v_sfx_fm_tracks_end-v_sfx_fm_tracks)/TrackSz)-1,d4	; 3 FM tracks (SFX)
; loc_71EC4:
.sfxfmloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.sfxfmnext			; Branch if not
		btst	#2,(a5)	; Is track being overridden?
		bne.s	.sfxfmnext			; Branch if yes
		moveq	#$FFFFFFB4,d0				; Command to set AMS/FMS/panning
		move.b	TrackAMSFMSPan(a5),d1		; Get value from track RAM
		bsr.w	WriteFMIorII
; loc_71EDC:
.sfxfmnext:
		adda.w	d3,a5
		dbf	d4,.sfxfmloop

		lea	v_spcsfx_track_ram(a6),a5
		tst.b	(a5)	; Is track playing?
		bpl.s	PauseMusic.unpausedallfm			; Branch if not
		btst	#2,(a5)	; Is track being overridden?
		bne.s	PauseMusic.unpausedallfm			; Branch if yes
		moveq	#$FFFFFFB4,d0				; Command to set AMS/FMS/panning
		move.b	TrackAMSFMSPan(a5),d1		; Get value from track RAM
		bra.w	WriteFMIorII
; loc_71EFE:
PauseMusic.unpausedallfm:
                rts

; ---------------------------------------------------------------------------
; Subroutine to	play a sound or	music track
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Sound_Play:
CycleSoundQueue:
		tst.l	v_soundqueue0(a6)	; is a music or sound queued for played?
		beq.s	PauseMusic.unpausedallfm	; if not, branch
                lea	SoundPriorities(pc),a0
		lea	v_soundqueue0(a6),a1	; load music track number
		move.b	(a6),d3	; Get priority of currently playing SFX
		moveq	#v_soundqueue3-v_soundqueue0,d4			; Number of queues-1 (v_soundqueue0, v_soundqueue1, v_soundqueue2, v_soundqueue3)
; loc_71F12:
.inputloop:
                moveq	#0,d0
                move.b	(a1),d0			; move track number to d0
		move.b	d0,d1
		clr.b	(a1)+			; Clear entry
		subq.b	#bgm__First,d0		; Make it into 0-based index
		bcs.s	.nextinput		; If negative (i.e., it was $80 or lower), branch
                move.b	(a0,d0.w),d2		; Get sound type
		cmp.b	d3,d2			; Is it a lower priority sound?
		blo.s	.nextinput		; Branch if yes
		move.b	d2,d3			; Store new priority
		move.b	d1,v_sound_id(a6)	; Queue sound for play
; loc_71F3E:
.nextinput:
		dbf	d4,.inputloop

		tst.b	d3			; We don't want to change sound priority if it is negative
		bmi.s	PlaySoundID
		move.b	d3,(a6)	; Set new sound priority
; End of function CycleSoundQueue


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Sound_ChkValue:
PlaySoundID:
		moveq	#0,d7
		move.b	v_sound_id(a6),d7
		move.b	#$80,v_sound_id(a6)	; reset	music flag
		cmpi.b	#bgm__Last,d7	; Is this music ($81-$9F)?
		bls.w	Sound_PlayBGM		; Branch if yes
		cmpi.b	#sfx__Last,d7		; Is this sfx ($A0-$CF)?
		bls.w	Sound_PlaySFX		; Branch if yes
		cmpi.b	#spec__Last,d7	; Is this special sfx ($D0-$DF)?
		bls.w	Sound_PlaySpecial	; Branch if yes
		cmpi.b	#flg__Last,d7		; Is this $E0-$E4?
		bls.s	Sound_E0toE4		; Branch if yes
; locret_71F8C:
.locret:
		rts
; ===========================================================================

Sound_E0toE4:
		subi.b	#flg__First,d7
		lsl.w	#2,d7
		jmp	Sound_ExIndex(pc,d7.w)
; ===========================================================================

Sound_ExIndex:
ptr_flgE0:	bra.w	FadeOutMusic		; $E0
ptr_flgE1:	bra.w	PlaySegaSound		; $E1
ptr_flgE2:	bra.w	SpeedUpMusic		; $E2
ptr_flgE3:	bra.w	SlowDownMusic		; $E3
ptr_flgE4:	bra.w	StopAllSound		; $E4
ptr_flgend
; ===========================================================================
; ---------------------------------------------------------------------------
; Play "Say-gaa" PCM sound
; ---------------------------------------------------------------------------
; Sound_E1: PlaySega:
PlaySegaSound:
                bra.w	PSGSilenceAll	; stop PSG from freezing
; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $81-$9F
; ---------------------------------------------------------------------------
; Sound_81to9F:
Sound_PlayBGM:
		cmpi.b	#bgm_ExtraLife,d7	; is the "extra life" music to be played?
		bne.s	.bgmnot1up		; if not, branch
		tst.b	f_1up_playing(a6)	; Is a 1-up music playing?
		bne.w	.locdblret		; if yes, branch
		lea	v_music_track_ram(a6),a5
		moveq	#((v_music_track_ram_end-v_music_track_ram)/TrackSz)-1,d0	; 1 DAC + 6 FM + 3 PSG tracks
; loc_71FE6:
.clearsfxloop:
		bclr	#2,(a5)	; Clear 'SFX is overriding' bit
		lea	TrackSz(a5),a5
		dbf	d0,.clearsfxloop

		lea	v_sfx_track_ram(a6),a5
		moveq	#((v_sfx_track_ram_end-v_sfx_track_ram)/TrackSz)-1,d0	; 3 FM + 3 PSG tracks (SFX)
; loc_71FF8:
.cleartrackplayloop:
		bclr	#7,(a5)	; Clear 'track is playing' bit
		lea	TrackSz(a5),a5
		dbf	d0,.cleartrackplayloop

		movea.l	a6,a0
		lea	v_1up_ram_copy(a6),a1
		move.w	#((v_music_track_ram_end-v_startofvariables)/4)-1,d0	; Backup $220 bytes: all variables and music track data
; loc_72012:
.backupramloop:
		move.l	(a0)+,(a1)+
		dbf	d0,.backupramloop

		move.b	#$80,f_1up_playing(a6)
		clr.b	(a6)		; Clear priority
		bra.s	.bgm_loadMusic
; ===========================================================================
; loc_72024:
.bgmnot1up:
		moveq	#0,d0
                move.b	d0,f_1up_playing(a6)
		move.b	d0,v_fadein_counter(a6)
; loc_7202C:
.bgm_loadMusic:
		bsr.w	InitMusicPlayback
		lea	SpeedUpIndex(pc),a4
		subq.b	#bgm__First,d7
		move.b	(a4,d7.w),v_speeduptempo(a6)
		lea	MusicIndex(pc),a4
		lsl.w	#2,d7
		movea.l	(a4,d7.w),a4		; a4 now points to (uncompressed) song data
		moveq	#0,d0
		move.w	(a4),d0			; load voice pointer
		bne.s	.notUVB
		move.l	#UniVoiceBank,d0
		bra.s	.got_voice_pointer

.notUVB:
		add.l	a4,d0			; It is a relative pointer

.got_voice_pointer:
		move.l	d0,v_voice_ptr(a6)
		move.b	5(a4),d0		; load tempo
		move.b	d0,v_tempo_mod(a6)
		tst.b	f_speedup(a6)
		beq.s	.nospeedshoes
		move.b	v_speeduptempo(a6),d0
; loc_72068:
.nospeedshoes:
		move.b	d0,v_main_tempo(a6)
		move.b	d0,v_main_tempo_timeout(a6)
		moveq	#0,d1
		movea.l	a4,a3
		addq.w	#6,a4			; Point past header
		move.b	4(a3),d4		; load tempo dividing timing
		moveq	#TrackSz,d6
		moveq	#1,d5			; Note duration for first "note"
		moveq	#0,d7
		move.b	2(a3),d7		; load number of FM+DAC tracks
		beq.w	.bgm_fmdone		; branch if zero
		subq.b	#1,d7
		move.b	#$C0,d1			; Default AMS+FMS+Panning
		lea	v_music_fmdac_tracks(a6),a1
		lea	FMDACInitBytes(pc),a2
; loc_72098:
.bgm_fmloadloop:
		bset	#7,(a1)	; Initial playback control: set 'track playing' bit
		move.b	(a2)+,TrackVoiceControl(a1)	; Voice control bits
		move.b	d4,TrackTempoDivider(a1)
		move.b	d6,TrackStackPointer(a1)	; set "gosub" (coord flag $F8) stack init value
		move.b	d1,TrackAMSFMSPan(a1)		; Set AMS/FMS/Panning
		move.b	d5,TrackDurationTimeout(a1)	; Set duration of first "note"
		moveq	#0,d0
		move.w	(a4)+,d0			; load DAC/FM pointer
		add.l	a3,d0				; Relative pointer
		move.l	d0,TrackDataPointer(a1)	; Store track pointer
		move.w	(a4)+,TrackTranspose(a1)	; load FM channel modifier
		adda.w	d6,a1
		dbf	d7,.bgm_fmloadloop
		cmpi.b	#7,2(a3)	; Are 7 FM tracks defined?
		bne.s	.silencefm6
		moveq	#$2B,d0		; DAC enable/disable register
		moveq	#0,d1		; Disable DAC
		bsr.w	WriteFMI
		bra.s	.bgm_fmdone
; ===========================================================================
; loc_720D8:
.silencefm6:
		moveq	#$28,d0		; Key on/off register
		moveq	#6,d1		; Note off on all operators of channel 6
		bsr.w	WriteFMI
		moveq	#$42,d0		; TL for operator 1 of FM6
		moveq	#$7F,d1		; Total silence
		bsr.w	WriteFMII
		moveq	#$4A,d0		; TL for operator 3 of FM6
		moveq	#$7F,d1		; Total silence
		bsr.w	WriteFMII
		moveq	#$46,d0		; TL for operator 2 of FM6
		moveq	#$7F,d1		; Total silence
		bsr.w	WriteFMII
		moveq	#$4E,d0		; TL for operator 4 of FM6
		moveq	#$7F,d1		; Total silence
		bsr.w	WriteFMII
		moveq	#$FFFFFFB6,d0		; AMS/FMS/panning of FM6
		moveq	#$FFFFFFC0,d1		; Stereo
		bsr.w	WriteFMII
; loc_72114:
.bgm_fmdone:
		moveq	#0,d7
		move.b	3(a3),d7	; Load number of PSG tracks
		beq.s	.bgm_psgdone	; branch if zero
		subq.b	#1,d7
		lea	v_music_psg_tracks(a6),a1
		lea	PSGInitBytes(pc),a2
; loc_72126:
.bgm_psgloadloop:
		bset	#7,(a1)	; Initial playback control: set 'track playing' bit
		move.b	(a2)+,TrackVoiceControl(a1)	; Voice control bits
		move.b	d4,TrackTempoDivider(a1)
		move.b	d6,TrackStackPointer(a1)	; set "gosub" (coord flag $F8) stack init value
		move.b	d5,TrackDurationTimeout(a1)	; Set duration of first "note"
		moveq	#0,d0
		move.w	(a4)+,d0			; load PSG channel pointer
		add.l	a3,d0				; Relative pointer
		move.l	d0,TrackDataPointer(a1)	; Store track pointer
		move.w	(a4)+,TrackTranspose(a1)	; load PSG modifier
		move.b	(a4)+,d0			; load redundant byte
		move.b	(a4)+,TrackVoiceIndex(a1)	; Initial PSG tone
		adda.w	d6,a1
		dbf	d7,.bgm_psgloadloop
; loc_72154:
.bgm_psgdone:
		lea	v_sfx_track_ram(a6),a1
		moveq	#((v_sfx_track_ram_end-v_sfx_track_ram)/TrackSz)-1,d7	; 6 SFX tracks
; loc_7215A:
.sfxstoploop:
		tst.b	(a1) ; Is SFX playing?
		bpl.s	.sfxnext		; Branch if not
		moveq	#0,d0
		move.b	TrackVoiceControl(a1),d0 ; Get voice control bits
		bmi.s	.sfxpsgchannel		; Branch if this is a PSG channel
		subq.b	#2,d0			; SFX can't have FM1 or FM2
		add.b	d0,d0			; Convert to index
		bra.s	.gotchannelindex
; ===========================================================================
; loc_7216E:
.sfxpsgchannel:
		lsr.b	#3,d0		; Convert to index
; loc_72170:
.gotchannelindex:
		lea	SFX_BGMChannelRAM(pc),a0
		movea.w	(a0,d0.w),a0
		bset	#2,(a0)	; Set 'SFX is overriding' bit
; loc_7217C:
.sfxnext:
		adda.w	d6,a1
		dbf	d7,.sfxstoploop

		tst.b	v_spcsfx_fm4_track(a6)	; Is special SFX being played?
		bpl.s	.checkspecialpsg				; Branch if not
		bset	#2,v_music_fm4_track(a6)	; Set 'SFX is overriding' bit
; loc_7218E:
.checkspecialpsg:
		tst.b	v_spcsfx_psg3_track(a6)	; Is special SFX being played?
		bpl.s	.sendfmnoteoff					; Branch if not
		bset	#2,v_music_psg3_track(a6)	; Set 'SFX is overriding' bit
; loc_7219A:
.sendfmnoteoff:
		lea	v_music_fm_tracks(a6),a5
		moveq	#((v_music_fm_tracks_end-v_music_fm_tracks)/TrackSz)-1,d4	; 6 FM tracks
; loc_721A0:
.fmnoteoffloop:
		bsr.w	FMNoteOff
		adda.w	d6,a5
		dbf	d4,.fmnoteoffloop		; run all FM tracks
		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d4 ; 3 PSG tracks
; loc_721AC:
.psgnoteoffloop:
		bsr.w	PSGNoteOff
		adda.w	d6,a5
		dbf	d4,.psgnoteoffloop		; run all PSG tracks
; loc_721B6:
.locdblret:
		addq.w	#4,sp	; Tamper with return value to not return to caller
		rts
; ===========================================================================
; byte_721BA:
FMDACInitBytes:	dc.b 6,	0, 1, 2, 4, 5, 6	; first byte is for DAC; then notice the 0, 1, 2 then 4, 5, 6; this is the gap between parts I and II for YM2612 port writes
		even
; byte_721C2:
PSGInitBytes:	dc.b $80, $A0, $C0	; Specifically, these configure writes to the PSG port for each channel
		even
; ===========================================================================
; loc_722C6:
PSGInitBytes.clear_sndprio:
		clr.b	(a6)	; Clear priority
		rts
; ---------------------------------------------------------------------------
; Play normal sound effect
; ---------------------------------------------------------------------------
; Sound_A0toCF:
Sound_PlaySFX:
		tst.b	f_1up_playing(a6)	; Is 1-up playing?
		bne.s	PSGInitBytes.clear_sndprio		; Exit is it is
		tst.b	v_fadeout_counter(a6)	; Is music being faded out?
		bne.s	PSGInitBytes.clear_sndprio		; Exit if it is
		tst.b	f_fadein_flag(a6)	; Is music being faded in?
		bne.s	PSGInitBytes.clear_sndprio		; Exit if it is
		cmpi.b	#sfx_Ring,d7		; is ring sound	effect played?
		bne.s	.sfx_notRing		; if not, branch
		tst.b	v_ring_speaker(a6)	; Is the ring sound playing on right speaker?
		bne.s	.gotringspeaker		; Branch if not
		moveq	#sfx_RingLeft,d7	; play ring sound in left speaker
; loc_721EE:
.gotringspeaker:
		bchg	#0,v_ring_speaker(a6)	; change speaker
; Sound_notB5:
.sfx_notRing:
		cmpi.b	#sfx_Push,d7		; is "pushing" sound played?
		bne.s	.sfx_notPush		; if not, branch
		tst.b	f_push_playing(a6)	; Is pushing sound already playing?
		bne.w	.locret			; Return if not
		move.b	#$80,f_push_playing(a6)	; Mark it as playing
; Sound_notA7:
.sfx_notPush:
		lea	(SoundIndex).l,a0
		subi.b	#sfx__First,d7		; Make it 0-based
		lsl.w	#2,d7			; Convert sfx ID into index
		movea.l	(a0,d7.w),a3		; SFX data pointer
		movea.l	a3,a1
		moveq	#0,d1
		move.w	(a1)+,d1		; Voice pointer
		add.l	a3,d1			; Relative pointer
		moveq	#0,d5
		move.b	(a1)+,d5		; Dividing timing
		moveq	#0,d7
                move.b	(a1)+,d7	; Number of tracks (FM + PSG)
		subq.b	#1,d7
		moveq	#TrackSz,d6
; loc_72228:
.sfx_loadloop:
		moveq	#0,d3
		move.b	1(a1),d3	; Channel assignment bits
		move.b	d3,d4
		bmi.s	.sfxinitpsg	; Branch if PSG
		subq.b	#2,d3		; SFX can only have FM3, FM4 or FM5
		add.b	d3,d3
		lea	SFX_BGMChannelRAM(pc),a5
		movea.w	(a5,d3.w),a5
		bset	#2,(a5)	; Mark music track as being overridden
		bra.s	.sfxoverridedone
; ===========================================================================
; loc_72244:
.sfxinitpsg:
		lsr.w	#4,d3
		lea	SFX_BGMChannelRAM(pc),a5
		movea.w	(a5,d3.w),a5
		bset	#2,(a5)	; Mark music track as being overridden
		cmpi.b	#$C0,d4			; Is this PSG 3?
		bne.s	.sfxoverridedone	; Branch if not
		move.b	d4,d0
		ori.b	#$1F,d0			; Command to silence PSG 3
		move.b	d0,(psg_input).l
		bchg	#5,d0			; Command to silence noise channel
		move.b	d0,(psg_input).l
; loc_7226E:
.sfxoverridedone:
		movea.w	SFX_SFXChannelRAM(pc,d3.w),a5
		movea.l	a5,a2
		moveq	#(TrackSz/4)-1,d0	; $30 bytes
; loc_72276:
.clearsfxtrackram:
		clr.l	(a2)+
		dbf	d0,.clearsfxtrackram

		move.w	(a1)+,(a5)	; Initial playback control bits
		move.b	d5,TrackTempoDivider(a5)	; Initial voice control bits
		moveq	#0,d0
		move.w	(a1)+,d0			; Track data pointer
		add.l	a3,d0				; Relative pointer
		move.l	d0,TrackDataPointer(a5)	; Store track pointer
		move.w	(a1)+,TrackTranspose(a5)	; load FM/PSG channel modifier
		move.b	#1,TrackDurationTimeout(a5)	; Set duration of first "note"
		move.b	d6,TrackStackPointer(a5)	; set "gosub" (coord flag $F8) stack init value
		tst.b	d4				; Is this a PSG channel?
		bmi.s	.sfxpsginitdone			; Branch if yes
		move.b	#$C0,TrackAMSFMSPan(a5)	; AMS/FMS/Panning
		move.l	d1,TrackVoicePtr(a5)		; Voice pointer
; loc_722A8:
.sfxpsginitdone:
		dbf	d7,.sfx_loadloop

		tst.b	v_sfx_fm4_track(a6)	; Is special SFX being played?
		bpl.s	.doneoverride					; Branch if not
		bset	#2,v_spcsfx_fm4_track(a6)	; Set 'SFX is overriding' bit
; loc_722B8:
.doneoverride:
		tst.b	v_sfx_psg3_track(a6)	; Is SFX being played?
		bpl.s	.locret						; Branch if not
		bset	#2,v_spcsfx_psg3_track(a6)	; Set 'SFX is overriding' bit
; locret_722C4:
.locret:
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; RAM addresses for FM and PSG channel variables used by the SFX
; ---------------------------------------------------------------------------
; dword_722CC: BGMChannelRAM:
SFX_BGMChannelRAM:
		dc.w v_snddriver_ram+v_music_fm3_track
		dc.w 0
		dc.w v_snddriver_ram+v_music_fm4_track
		dc.w v_snddriver_ram+v_music_fm5_track
		dc.w v_snddriver_ram+v_music_psg1_track
		dc.w v_snddriver_ram+v_music_psg2_track
		dc.w v_snddriver_ram+v_music_psg3_track	; Plain PSG3
		dc.w v_snddriver_ram+v_music_psg3_track	; Noise
; dword_722EC: SFXChannelRAM:
SFX_SFXChannelRAM:
		dc.w v_snddriver_ram+v_sfx_fm3_track
		dc.w 0
		dc.w v_snddriver_ram+v_sfx_fm4_track
		dc.w v_snddriver_ram+v_sfx_fm5_track
		dc.w v_snddriver_ram+v_sfx_psg1_track
		dc.w v_snddriver_ram+v_sfx_psg2_track
		dc.w v_snddriver_ram+v_sfx_psg3_track	; Plain PSG3
		dc.w v_snddriver_ram+v_sfx_psg3_track	; Noise
; ===========================================================================
; ---------------------------------------------------------------------------
; Play GHZ waterfall sound
; ---------------------------------------------------------------------------
; Sound_D0toDF:
Sound_PlaySpecial:
		tst.b	f_1up_playing(a6)	; Is 1-up playing?
		bne.w	.locret			; Return if so
		tst.b	v_fadeout_counter(a6)	; Is music being faded out?
		bne.w	.locret			; Exit if it is
		tst.b	f_fadein_flag(a6)	; Is music being faded in?
		bne.w	.locret			; Exit if it is
		lea	(SpecSoundIndex).l,a0
		subi.b	#spec__First,d7		; Make it 0-based
		lsl.w	#2,d7
		movea.l	(a0,d7.w),a3
		movea.l	a3,a1
		moveq	#0,d0
		move.w	(a1)+,d0			; Voice pointer
		add.l	a3,d0				; Relative pointer
		move.l	d0,v_special_voice_ptr(a6)	; Store voice pointer
		moveq	#0,d5
		move.b	(a1)+,d5			; Dividing timing
		moveq	#0,d7
                move.b	(a1)+,d7			; Number of tracks (FM + PSG)
		subq.b	#1,d7
		moveq	#TrackSz,d6
; loc_72348:
.sfxloadloop:
		move.b	1(a1),d4					; Voice control bits
		bmi.s	.sfxoverridepsg					; Branch if PSG
		bset	#2,v_music_fm4_track(a6)	; Set 'SFX is overriding' bit

		lea	v_spcsfx_fm4_track(a6),a5
		bra.s	.sfxinitpsg
; ===========================================================================
; loc_7235A:
.sfxoverridepsg:
		bset	#2,v_music_psg3_track(a6)	; Set 'SFX is overriding' bit
		lea	v_spcsfx_psg3_track(a6),a5
; loc_72364:
.sfxinitpsg:
		movea.l	a5,a2
		moveq	#(TrackSz/4)-1,d0	; $30 bytes
		moveq	#0,d1
; loc_72368:
.clearsfxtrackram:
		move.l	d1,(a2)+
		dbf	d0,.clearsfxtrackram

		move.w	(a1)+,(a5)	; Initial playback control bits & voice control bits
		move.b	d5,TrackTempoDivider(a5)
		moveq	#0,d0
		move.w	(a1)+,d0			; Track data pointer
		add.l	a3,d0				; Relative pointer
		move.l	d0,TrackDataPointer(a5)	; Store track pointer
		move.w	(a1)+,TrackTranspose(a5)	; load FM/PSG channel modifier
		move.b	#1,TrackDurationTimeout(a5)	; Set duration of first "note"
		move.b	d6,TrackStackPointer(a5)	; set "gosub" (coord flag $F8) stack init value
		tst.b	d4				; Is this a PSG channel?
		bmi.s	.sfxpsginitdone			; Branch if yes
		move.b	#$C0,TrackAMSFMSPan(a5)	; AMS/FMS/Panning
; loc_72396:
.sfxpsginitdone:
		dbf	d7,.sfxloadloop

		tst.b	v_sfx_fm4_track(a6)	; Is track playing?
		bpl.s	.doneoverride					; Branch if not
		bset	#2,v_spcsfx_fm4_track(a6)	; Set 'SFX is overriding' bit
; loc_723A6:
.doneoverride:
		tst.b	v_sfx_psg3_track(a6)	; Is track playing?
		bpl.s	.locret						; Branch if not
		bset	#2,v_spcsfx_psg3_track(a6)	; Set 'SFX is overriding' bit
		ori.b	#$1F,d4						; Command to silence channel
		move.b	d4,(psg_input).l
		bchg	#5,d4			; Command to silence noise channel
		move.b	d4,(psg_input).l
; locret_723C6:
.locret:
		rts
; End of function PlaySoundID

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Snd_FadeOut1: Snd_FadeOutSFX: FadeOutSFX:
StopSFX:
		clr.b	(a6)		; Clear priority
		lea	v_sfx_track_ram(a6),a5
		moveq	#((v_sfx_track_ram_end-v_sfx_track_ram)/TrackSz)-1,d7	; 3 FM + 3 PSG tracks (SFX)
; loc_723EA:
.trackloop:
		tst.b	(a5)	; Is track playing?
		bpl.w	.nexttrack			; Branch if not
		bclr	#7,(a5)	; Stop track
		moveq	#0,d3
		move.b	TrackVoiceControl(a5),d3	; Get voice control bits
		bmi.s	.trackpsg			; Branch if PSG
		bsr.w	FMNoteOff
		cmpi.b	#4,d3						; Is this FM4?
		bne.s	.getfmpointer					; Branch if not
		tst.b	v_spcsfx_fm4_track(a6)	; Is special SFX playing?
		bpl.s	.getfmpointer					; Branch if not
		movea.l	a5,a3
                lea	v_spcsfx_fm4_track(a6),a5
		movea.l	v_special_voice_ptr(a6),a1	; Get special voice pointer
		bra.s	.gotfmpointer
; ===========================================================================
; loc_72416:
.getfmpointer:
		subq.b	#2,d3		; SFX only has FM3 and up
		add.b	d3,d3
		lea	SFX_BGMChannelRAM(pc),a0
		movea.l	a5,a3
		movea.w	(a0,d3.w),a5
		movea.l	v_voice_ptr(a6),a1	; Get music voice pointer
; loc_72428:
.gotfmpointer:
		bclr	#2,(a5)	; Clear 'SFX is overriding' bit
		bset	#1,(a5)	; Set 'track at rest' bit
		move.b	TrackVoiceIndex(a5),d0	; Current voice
		bsr.w	SetVoice
		movea.l	a3,a5
		bra.s	.nexttrack
; ===========================================================================
; loc_7243C:
.trackpsg:
		bsr.w	PSGNoteOff
		lea	v_spcsfx_psg3_track(a6),a0
		cmpi.b	#$E0,d3			; Is this a noise channel:
		beq.s	.gotpsgpointer		; Branch if yes
		cmpi.b	#$C0,d3			; Is this PSG 3?
		beq.s	.gotpsgpointer		; Branch if yes
		lsr.b	#4,d3
		lea	SFX_BGMChannelRAM(pc),a0
		movea.w	(a0,d3.w),a0
; loc_7245A:
.gotpsgpointer:
		bclr	#2,(a0)	; Clear 'SFX is overriding' bit
		bset	#1,(a0)	; Set 'track at rest' bit
		cmpi.b	#$E0,TrackVoiceControl(a0)	; Is this a noise channel?
		bne.s	.nexttrack			; Branch if not
		move.b	TrackPSGNoise(a0),(psg_input).l ; Set noise type
; loc_72472:
.nexttrack:
		lea	TrackSz(a5),a5
		dbf	d7,.trackloop

		rts
; End of function StopSFX


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; Snd_FadeOut2: FadeOutSFX2: FadeOutSpecialSFX:
StopSpecialSFX:
		lea	v_spcsfx_fm4_track(a6),a5
		tst.b	(a5)	; Is track playing?
		bpl.s	.fadedfm			; Branch if not
		bclr	#7,(a5)	; Stop track
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	.fadedfm			; Branch if not
		bsr.w	SendFMNoteOff
		lea	v_music_fm4_track(a6),a5
		bclr	#2,(a5)	; Clear 'SFX is overriding' bit
		bset	#1,(a5)	; Set 'track at rest' bit
		tst.b	(a5)	; Is track playing?
		bpl.s	.fadedfm			; Branch if not
		movea.l	v_voice_ptr(a6),a1		; Voice pointer
		move.b	TrackVoiceIndex(a5),d0		; Current voice
		bsr.w	SetVoice
; loc_724AE:
.fadedfm:
		lea	v_spcsfx_psg3_track(a6),a5
		tst.b	(a5)	; Is track playing?
		bpl.s	.fadedpsg			; Branch if not
		bclr	#7,(a5)	; Stop track
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	.fadedpsg			; Return if not
		bsr.w	SendPSGNoteOff
		lea	v_music_psg3_track(a6),a5
		bclr	#2,(a5)	; Clear 'SFX is overriding' bit
		bset	#1,(a5)	; Set 'track at rest' bit
		tst.b	(a5)	; Is track playing?
		bpl.s	.fadedpsg			; Return if not
		cmpi.b	#$E0,TrackVoiceControl(a5)	; Is this a noise channel?
		bne.s	.fadedpsg			; Return if not
		move.b	TrackPSGNoise(a5),(psg_input).l ; Set noise type
; locret_724E4:
.fadedpsg:
		rts
; End of function StopSpecialSFX

; ===========================================================================
; ---------------------------------------------------------------------------
; Fade out music
; ---------------------------------------------------------------------------
; Sound_E0:
FadeOutMusic:
		bsr.w	StopSFX
		bsr.w	StopSpecialSFX
		move.b	#3,v_fadeout_delay(a6)			; Set fadeout delay to 3
		move.b	#$28,v_fadeout_counter(a6)		; Set fadeout counter
		clr.b	f_speedup(a6)				; Disable speed shoes tempo
		rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72504:
DoFadeOut:
		tst.b	v_fadeout_counter(a6)
		beq.s	.skipfadeout
                tst.b	v_fadeout_delay(a6)	; Has fadeout delay expired?
		beq.s	.continuefade		; Branch if yes
		subq.b	#1,v_fadeout_delay(a6)
.skipfadeout:
		rts
; ===========================================================================
; loc_72510:
.continuefade:
		subq.b	#1,v_fadeout_counter(a6)	; Update fade counter
		beq.w	StopAllSound			; Branch if fade is done
		move.b	#3,v_fadeout_delay(a6)		; Reset fade delay
		lea	v_music_fm_tracks(a6),a5
		moveq	#((v_music_fm_tracks_end-v_music_fm_tracks)/TrackSz)-1,d7	; 6 FM tracks
; loc_72524:
.fmloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.nextfm				; Branch if not
		addq.b	#1,TrackVolume(a5)		; Increase volume attenuation
		bpl.s	.sendfmtl			; Branch if still positive
		bclr	#7,(a5)	; Stop track
		bra.s	.nextfm
; ===========================================================================
; loc_72534:
.sendfmtl:
		bsr.w	SendVoiceTL
; loc_72538:
.nextfm:
		lea	TrackSz(a5),a5
		dbf	d7,.fmloop

		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d7	; 3 PSG tracks
; loc_72542:
.psgloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.nextpsg			; branch if not
		addq.b	#1,TrackVolume(a5)		; Increase volume attenuation
		cmpi.b	#$10,TrackVolume(a5)		; Is it greater than $F?
		blo.s	.sendpsgvol			; Branch if not
		bclr	#7,(a5)	; Stop track
		bra.s	.nextpsg
; ===========================================================================
; loc_72558:
.sendpsgvol:
		tst.b	TrackVoiceIndex(a5)
		bne.s	.nextpsg
		move.b	TrackVolume(a5),d6	; Store new volume attenuation
		bsr.w	SetPSGVolume
; loc_72560:
.nextpsg:
		lea	TrackSz(a5),a5
		dbf	d7,.psgloop

		rts
; End of function DoFadeOut


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7256A:
FMSilenceAll:
		moveq	#2,d3		; 3 FM channels for each YM2612 parts
		moveq	#$28,d0		; FM key on/off register
; loc_7256E:
.noteoffloop:
		move.b	d3,d1
		bsr.w	WriteFMI
		addq.b	#4,d1		; Move to YM2612 part 1
		bsr.w	WriteFMI
		dbf	d3,.noteoffloop

		moveq	#$40,d0		; Set TL on FM channels...
		moveq	#$7F,d1		; ... to total attenuation...
		moveq	#2,d4		; ... for all 3 channels...
; loc_72584:
.channelloop:
		moveq	#3,d3		; ... for all operators on each channel...
; loc_72586:
.channeltlloop:
		bsr.w	WriteFMI	; ... for part 0...
		bsr.w	WriteFMII	; ... and part 1.
		addq.w	#4,d0		; Next TL operator
		dbf	d3,.channeltlloop

		subi.b	#$F,d0		; Move to TL operator 1 of next channel
		dbf	d4,.channelloop

		rts
; End of function FMSilenceAll

; ===========================================================================
; ---------------------------------------------------------------------------
; Stop music
; ---------------------------------------------------------------------------
; Sound_E4: StopSoundAndMusic:
StopAllSound:
		moveq	#$2B,d0		; Enable/disable DAC
		moveq	#$FFFFFF80,d1		; Enable DAC
		bsr.w	WriteFMI
		moveq	#$27,d0		; Timers, FM3/FM6 mode
		moveq	#0,d1		; FM3/FM6 normal mode, disable timers
		bsr.w	WriteFMI
		movea.l	a6,a0
		moveq	#0,d1
                move.w	#((v_spcsfx_track_ram_end-v_startofvariables)/4)-1,d0	; Clear $390 bytes: all variables and most track data
; loc_725B6:
.clearramloop:
		move.l	d1,(a0)+
		dbf	d0,.clearramloop

		move.b	#$80,v_sound_id(a6)	; set music to $80 (silence)
		bsr.w	FMSilenceAll
	if MegaPCM_Mode
		move.b	#$80,(z80_dac_sample).l
	endc
		bra.w	PSGSilenceAll

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_725CA:
InitMusicPlayback:
		movea.l	a6,a0
		; Save several values
		move.b	(a6),d1
		move.b	f_1up_playing(a6),d2
		move.b	f_speedup(a6),d3
		move.b	v_fadein_counter(a6),d4
		move.l	v_soundqueue0(a6),d5
		moveq	#0,d6
		move.w	#((v_music_track_ram_end-v_startofvariables)/4)-1,d0	; Clear $220 bytes: all variables and music track data
; loc_725E4:
.clearramloop:
		move.l	d6,(a0)+
		dbf	d0,.clearramloop

		; Restore the values saved above
		move.b	d1,(a6)
		move.b	d2,f_1up_playing(a6)
		move.b	d3,f_speedup(a6)
		move.b	d4,v_fadein_counter(a6)
		move.l	d5,v_soundqueue0(a6)
		move.b	#$80,v_sound_id(a6)	; set music to $80 (silence)
		lea	v_music_track_ram+TrackVoiceControl(a6),a1
		lea	FMDACInitBytes(pc),a2
		moveq	#((v_music_fmdac_tracks_end-v_music_fmdac_tracks)/TrackSz)-1,d1		; 7 DAC/FM tracks
		bsr.s	.writeloop
		lea	PSGInitBytes(pc),a2
		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d1	; 3 PSG tracks

.writeloop:
		move.b	(a2)+,(a1)		; Write track's channel byte
		lea	TrackSz(a1),a1		; Next track
		dbf	d1,.writeloop		; Loop for all DAC/FM/PSG tracks

		rts

; End of function InitMusicPlayback


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7260C:
TempoWait:
	if SMPS_Tempo_Wait>2
		move.b	v_main_tempo(a6),d0
		add.b	d0,v_main_tempo_timeout(a6)
		bcc.s	.skipdelay
		lea	v_music_track_ram+TrackDurationTimeout(a6),a0	; note timeout
		moveq	#((v_music_track_ram_end-v_music_track_ram)/TrackSz)-1,d1		; 1 DAC + 6 FM + 3 PSG tracks
; loc_7261A:
.tempoloop:
		addq.b	#1,(a0)	; Delay note by 1 frame
		lea	TrackSz(a0),a0	; Advance to next track
		dbf	d1,.tempoloop

.skipdelay:
		rts
	else
		subq.b	#1,v_main_tempo_timeout(a6)	; Has main tempo timer expired?
		bne.s	.skipdelay
		move.b	v_main_tempo(a6),v_main_tempo_timeout(a6)	; Reset main tempo timeout
		lea	v_music_track_ram+TrackDurationTimeout(a6),a0	; note timeout
		moveq	#((v_music_track_ram_end-v_music_track_ram)/TrackSz)-1,d1		; 1 DAC + 6 FM + 3 PSG tracks
; loc_7261A:
.tempoloop:
		addq.b	#1,(a0)	; Delay note by 1 frame
		lea	TrackSz(a0),a0	; Advance to next track
		dbf	d1,.tempoloop

.skipdelay:
		rts
	endc
; End of function TempoWait

; ===========================================================================
; ---------------------------------------------------------------------------
; Speed	up music
; ---------------------------------------------------------------------------
; Sound_E2:
SpeedUpMusic:
		tst.b	f_1up_playing(a6)
		bne.s	.speedup_1up
		move.b	v_speeduptempo(a6),v_main_tempo(a6)
		move.b	#$80,f_speedup(a6)
		rts
; ===========================================================================
; loc_7263E:
.speedup_1up:
		move.b	v_1up_ram_copy+v_speeduptempo(a6),v_1up_ram_copy+v_main_tempo(a6)
		move.b	#$80,v_1up_ram_copy+f_speedup(a6)
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Change music back to normal speed
; ---------------------------------------------------------------------------
; Sound_E3:
SlowDownMusic:
		tst.b	f_1up_playing(a6)
		bne.s	.slowdown_1up
		move.b	v_tempo_mod(a6),v_main_tempo(a6)
		clr.b	f_speedup(a6)
		rts
; ===========================================================================
; loc_7266A:
.slowdown_1up:
		move.b	v_1up_ram_copy+v_tempo_mod(a6),v_1up_ram_copy+v_main_tempo(a6)
		clr.b	v_1up_ram_copy+f_speedup(a6)
		rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7267C:
DoFadeIn:
		tst.b	f_fadein_flag(a6)
		beq.s	.skipfadein
                tst.b	v_fadein_delay(a6)	; Has fadein delay expired?
		beq.s	.continuefade		; Branch if yes
		subq.b	#1,v_fadein_delay(a6)
.skipfadein:
		rts
; ===========================================================================
; loc_72688:
.continuefade:
		tst.b	v_fadein_counter(a6)	; Is fade done?
		beq.s	.fadedone		; Branch if yes
		subq.b	#1,v_fadein_counter(a6)	; Update fade counter
		move.b	#2,v_fadein_delay(a6)	; Reset fade delay
		lea	v_music_fm_tracks(a6),a5
		moveq	#((v_music_fm_tracks_end-v_music_fm_tracks)/TrackSz)-1,d7	; 6 FM tracks
; loc_7269E:
.fmloop:
		tst.b	(a5) ; Is track playing?
		bpl.s	.nextfm			; Branch if not
		subq.b	#1,TrackVolume(a5)	; Reduce volume attenuation
		bsr.w	SendVoiceTL
; loc_726AA:
.nextfm:
		lea	TrackSz(a5),a5
		dbf	d7,.fmloop
		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d7		; 3 PSG tracks
; loc_726B4:
.psgloop:
		tst.b	(a5) ; Is track playing?
		bpl.s	.nextpsg		; Branch if not
		subq.b	#1,TrackVolume(a5)	; Reduce volume attenuation
		tst.b	TrackVoiceIndex(a5)
		bne.s	.nextpsg
		move.b	TrackVolume(a5),d6	; Get value
		bsr.w	SetPSGVolume
; loc_726CC:
.nextpsg:
		lea	TrackSz(a5),a5
		dbf	d7,.psgloop
		rts
; ===========================================================================
; loc_726D6:
.fadedone:
		bclr	#2,v_music_dac_track(a6)	; Clear 'SFX overriding' bit
		clr.b	f_fadein_flag(a6)				; Stop fadein
		rts
; End of function DoFadeIn

; ===========================================================================
; loc_726E2:
FMNoteOn:
		btst	#1,(a5)	; Is track resting?
		bne.s	locret_72714			; Return if so
		btst	#2,(a5)	; Is track being overridden?
		bne.s	locret_72714			; Return if so
		moveq	#$28,d0				; Note on/off register
		move.b	TrackVoiceControl(a5),d1	; Get channel bits
		ori.b	#$F0,d1				; Note on on all operators
		bra.s	WriteFMI

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_726FE:
FMNoteOff:
		btst	#4,(a5)	; Is 'do not attack next note' set?
		bne.s	locret_72714			; Return if yes
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	locret_72714			; Return if yes
; loc_7270A:
SendFMNoteOff:
		moveq	#$28,d0				; Note on/off register
		move.b	TrackVoiceControl(a5),d1	; Note off to this channel
		bra.s	WriteFMI
; ===========================================================================

locret_72714:
		rts
; End of function FMNoteOff

; ===========================================================================
; loc_72716:
WriteFMIorIIMain:
		btst	#2,(a5)	; Is track being overriden by sfx?
		bne.s	locret_72714			; Return if yes

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72722:
WriteFMIorII:
		move.b	TrackVoiceControl(a5),d2 ; Get voice control bits
                btst	#2,d2	; Is this bound for part I or II?
		bne.s	WriteFMIIPart			; Branch if for part II
		add.b	d2,d0	; Add in voice control bits
; End of function WriteFMIorII


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7272E:
WriteFMI:
                lea	(ym2612_a0).l,a0
.loop:
		tst.b	(a0)		; Is FM busy?
		bmi.s	.loop	; Loop if so
		move.b	d0,(a0)
		move.b	d1,1(a0)
                rts
; End of function WriteFMI

; ===========================================================================
; loc_7275A:
WriteFMIIPart:
		bclr	#2,d2			; Clear chip toggle
		add.b	d2,d0			; Add in to destination register

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72764:
WriteFMII:
                lea	(ym2612_a0).l,a0
.loop:
		tst.b	(a0)		; Is FM busy?
		bmi.s	.loop	; Loop if so
		move.b	d0,2(a0)
		move.b	d1,3(a0)
WriteFMII.locret:
		rts
; End of function WriteFMII

; ===========================================================================

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72850:
PSGUpdateTrack:
		lea	TrackSz(a5),a5
		tst.b	(a5) ; Is track playing?
		bpl.s	WriteFMII.locret		; Branch if not
                subq.b	#1,TrackDurationTimeout(a5)	; Update note timeout
		bne.s	.notegoing
		bclr	#4,(a5)	; Clear 'do not attack note' bit
		bsr.s	PSGDoNext
		bsr.w	PSGDoNoteOn
		bsr.w	PSGDoVolFX
		bra.s	PSGDoModulation
; ===========================================================================
; loc_72866:
.notegoing:
		bsr.w	NoteTimeoutUpdate
		bsr.w	PSGUpdateVolFX
PSGDoModulation:
		bsr.w	DoModulation
		bra.w	PSGUpdateFreq
; End of function PSGUpdateTrack


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72878:
PSGDoNext:
		bclr	#1,(a5)	; Clear 'track at rest' bit
		movea.l	TrackDataPointer(a5),a4		; Get track data pointer
; loc_72880:
.noteloop:
		moveq	#0,d5
		move.b	(a4)+,d5	; Get byte from track
		cmpi.b	#$E0,d5		; Is it a coord. flag?
		blo.s	.gotnote	; Branch if not
		bsr.w	CoordFlag
		bra.s	.noteloop
; ===========================================================================
; loc_72890:
.gotnote:
		tst.b	d5		; Is it a note?
		bpl.s	.gotduration	; Branch if not
		bsr.s	PSGSetFreq
		move.b	(a4)+,d5	; Get another byte
		bpl.s	.gotduration	; Branch if it is a duration
		subq.w	#1,a4		; Put byte back
		bra.w	FinishTrackUpdate
; ===========================================================================
; loc_728A4:
.gotduration:
		bsr.w	SetDuration
		bra.w	FinishTrackUpdate
; End of function PSGDoNext


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728AC:
PSGSetFreq:
		subi.b	#$81,d5		; Convert to 0-based index
		bcs.s	.restpsg	; If $80, put track at rest
		add.b	TrackTranspose(a5),d5 ; Add in channel transposition
		andi.w	#$7F,d5		; Clear high byte and sign bit
		add.w	d5,d5
		move.w	PSGFrequencies(pc,d5.w),TrackFreq(a5)	; Set new frequency
		rts
; ===========================================================================
; loc_728CA:
.restpsg:
		bset	#1,(a5)	; Set 'track at rest' bit
		move.w	#-1,TrackFreq(a5)		; Invalidate note frequency
		bra.w	PSGNoteOff
; End of function PSGSetFreq

; ---------------------------------------------------------------------------
; PSG Note Values: c-1 to a-6
;
; Each row is an octave, starting with C and ending with B. Sonic 3's driver
; adds another octave at the start, as well as two more notes and the end to
; complete the last octave. Notably, a-6 is changed from 0 to $10. These
; changes need to be applied here in order for ports of songs from Sonic 3
; and later to sound correct.
; ---------------------------------------------------------------------------
; word_729CE:
PSGFrequencies:
	if SMPS_PSG_Freq_Table>2
                dc.w $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3FF, $3F7, $3BE, $388
		dc.w $356, $326, $2F9, $2CE, $2A5, $280, $25C, $23A, $21A, $1FB, $1DF, $1C4
		dc.w $1AB, $193, $17D, $167, $153, $140, $12E, $11D, $10D,  $FE,  $EF,  $E2
		dc.w  $D6,  $C9,  $BE,  $B4,  $A9,  $A0,  $97,  $8F,  $87,  $7F,  $78,  $71
		dc.w  $6B,  $65,  $5F,  $5A,  $55,  $50,  $4B,  $47,  $43,  $40,  $3C,  $39
		dc.w  $36,  $33,  $30,  $2D,  $2B,  $28,  $26,  $24,  $22,  $20,  $1F,  $1D
		dc.w  $1B,  $1A,  $18,  $17,  $16,  $15,  $13,  $12,  $11,  $10,    0,    0
	else
		dc.w $356, $326, $2F9, $2CE, $2A5, $280, $25C, $23A, $21A, $1FB, $1DF, $1C4
		dc.w $1AB, $193, $17D, $167, $153, $140, $12E, $11D, $10D,  $FE,  $EF,  $E2
		dc.w  $D6,  $C9,  $BE,  $B4,  $A9,  $A0,  $97,  $8F,  $87,  $7F,  $78,  $71
		dc.w  $6B,  $65,  $5F,  $5A,  $55,  $50,  $4B,  $47,  $43,  $40,  $3C,  $39
		dc.w  $36,  $33,  $30,  $2D,  $2B,  $28,  $26,  $24,  $22,  $20,  $1F,  $1D
		dc.w  $1B,  $1A,  $18,  $17,  $16,  $15,  $13,  $12,  $11,    0
	endc


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728DC:
PSGDoNoteOn:
		move.w	TrackFreq(a5),d6	; Get note frequency
		bmi.s	PSGSetRest		; If invalid, branch
; End of function PSGDoNoteOn


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_728E2:
PSGUpdateFreq:
		move.b	TrackDetune(a5),d0	; Get detune value
		ext.w	d0
		add.w	d0,d6				; Add to frequency
		btst	#2,(a5)	; Is track being overridden?
		bne.s	PSGUpdateFreq.locret				; Return if yes
		btst	#1,(a5)	; Is track at rest?
		bne.s	PSGUpdateFreq.locret				; Return if yes
		move.b	TrackVoiceControl(a5),d0 ; Get channel bits
		cmpi.b	#$E0,d0		; Is it a noise channel?
		bne.s	.notnoise	; Branch if not
		move.b	#$C0,d0		; Use PSG 3 channel bits
; loc_72904:
.notnoise:
		move.w	d6,d1
		andi.b	#$F,d1		; Low nibble of frequency
		or.b	d1,d0		; Latch tone data to channel
		lsr.w	#4,d6		; Get upper 6 bits of frequency
		andi.b	#$3F,d6		; Send to latched channel
		move.b	d0,(psg_input).l
		move.b	d6,(psg_input).l
; locret_7291E:
PSGUpdateFreq.locret:
		rts
; End of function PSGUpdateFreq

; ===========================================================================
; loc_72920:
PSGSetRest:
		bset	#1,(a5)	; Set 'track at rest' bit
		rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72926:
PSGUpdateVolFX:
		tst.b	TrackVoiceIndex(a5)	; Test PSG tone
		beq.s	PSGUpdateFreq.locret	; Return if it is zero
; loc_7292E:
PSGDoVolFX:
		move.b	TrackVolume(a5),d6	; Get volume
		moveq	#0,d0
		move.b	TrackVoiceIndex(a5),d0	; Get PSG tone
		beq.s	SetPSGVolume
		lea	PSG_Index(pc),a0
		subq.w	#1,d0
		lsl.w	#2,d0
		movea.l	(a0,d0.w),a0

PSGDoVolFX_Loop:
		moveq	#0,d0
                move.b	TrackVolEnvIndex(a5),d0	; Get volume envelope index
		addq.b	#1,TrackVolEnvIndex(a5)	; Increment volume envelope index
		move.b	(a0,d0.w),d0			; Volume envelope value
		bmi.s	VolEnvHold			; If so, branch
; loc_72960:
.gotflutter:
		add.w	d0,d6		; Add volume envelope value to volume
; End of function PSGUpdateVolFX


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_7296A:
SetPSGVolume:
		btst	#1,(a5)	; Is track at rest?
		bne.s	locret_7298A			; Return if so
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	locret_7298A			; Return if so
		btst	#4,(a5)	; Is track set to not attack next note?
		bne.s	PSGCheckNoteTimeout ; Branch if yes
; loc_7297C:
PSGSendVolume:
		cmpi.b	#$10,d6		; Is volume $10 or higher?
		blo.s	.psgsendvol	; Branch if not
		moveq	#$F,d6		; Limit to silence and fall through

.psgsendvol:
                or.b	TrackVoiceControl(a5),d6 ; Add in track selector bits
		addi.b	#$10,d6			; Mark it as a volume command
		move.b	d6,(psg_input).l

locret_7298A:
		rts
; ===========================================================================
; loc_7298C: PSGCheckNoteFill:
PSGCheckNoteTimeout:
		tst.b	TrackNoteTimeoutMaster(a5)	; Is note timeout on?
		beq.s	PSGSendVolume			; Branch if not
		tst.b	TrackNoteTimeout(a5)		; Has note timeout expired?
		bne.s	PSGSendVolume			; Branch if not
		rts
; End of function SetPSGVolume

; ===========================================================================
; loc_7299A: FlutterDone:
VolEnvHold:
		subq.b	#2,TrackVolEnvIndex(a5)	; Decrement volume envelope index
		bra.s	PSGDoVolFX_Loop

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_729A0:
PSGNoteOff:
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	locret_729B4			; Return if so
; loc_729A6:
SendPSGNoteOff:
		move.b	TrackVoiceControl(a5),d0	; PSG channel to change
		ori.b	#$1F,d0				; Maximum volume attenuation
		move.b	d0,(psg_input).l
		cmpi.b	#$DF,d0				; Are stopping PSG3?
		bne.s	locret_729B4
		move.b	#$FF,(psg_input).l		; If so, stop noise channel while we're at it

locret_729B4:
		rts
; End of function PSGNoteOff


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_729B6:
PSGSilenceAll:
		lea	(psg_input).l,a0
		move.b	#$9F,(a0)	; Silence PSG 1
		move.b	#$BF,(a0)	; Silence PSG 2
		move.b	#$DF,(a0)	; Silence PSG 3
		move.b	#$FF,(a0)	; Silence noise channel
		rts
; End of function PSGSilenceAll

; ===========================================================================

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72A5A:
CoordFlag:
		subi.w	#$E0,d5
		lsl.w	#2,d5
		jmp	coordflagLookup(pc,d5.w)
; End of function CoordFlag

; ===========================================================================
; loc_72A64:
coordflagLookup:
		bra.w	cfPanningAMSFMS		; $E0
; ===========================================================================
		bra.w	cfDetune		; $E1
; ===========================================================================
		bra.w	cfReturn		; $E2
; ===========================================================================
		bra.w	cfJumpReturn		; $E3
; ===========================================================================
		bra.w	cfFadeInToPrevious	; $E4
; ===========================================================================
		bra.w	cfSetTempoDivider	; $E5
; ===========================================================================
		bra.w	cfChangeFMVolume	; $E6
; ===========================================================================
		bra.w	cfHoldNote		; $E7
; ===========================================================================
		bra.w	cfNoteTimeout		; $E8
; ===========================================================================
		bra.w	cfChangeTransposition	; $E9
; ===========================================================================
		bra.w	cfSetTempo		; $EA
; ===========================================================================
		bra.w	cfSetTempoDividerAll	; $EB
; ===========================================================================
		bra.w	cfChangePSGVolume	; $EC
; ===========================================================================
		bra.w	cfClearPush		; $ED
; ===========================================================================
		bra.w	cfStopSpecialFM4	; $EE
; ===========================================================================
		bra.w	cfSetVoice		; $EF
; ===========================================================================
		bra.w	cfModulation		; $F0
; ===========================================================================
		bra.w	cfEnableModulation	; $F1
; ===========================================================================
		bra.w	cfStopTrack		; $F2
; ===========================================================================
		bra.w	cfSetPSGNoise		; $F3
; ===========================================================================
		bra.w	cfDisableModulation	; $F4
; ===========================================================================
		bra.w	cfSetPSGTone		; $F5
; ===========================================================================
		bra.w	cfJumpTo		; $F6
; ===========================================================================
		bra.w	cfRepeatAtPos		; $F7
; ===========================================================================
		bra.w	cfJumpToGosub		; $F8
; ===========================================================================
		bra.w	cfOpF9			; $F9
; ===========================================================================
; loc_72ACC:
cfPanningAMSFMS:
		move.b	(a4)+,d1		; New AMS/FMS/panning value
		tst.b	TrackVoiceControl(a5)	; Is this a PSG track?
		bmi.s	cfReturn		; Return if yes
		move.b	TrackAMSFMSPan(a5),d0	; Get current AMS/FMS/panning
		andi.b	#$37,d0			; Retain bits 0-2, 3-4 if set
		or.b	d0,d1			; Mask in new value
		move.b	d1,TrackAMSFMSPan(a5)	; Store value
		moveq	#$FFFFFFB4,d0			; Command to set AMS/FMS/panning
		bra.w	WriteFMIorIIMain
; ===========================================================================
; loc_72AEC: cfAlterNotes:
cfDetune:
		move.b	(a4)+,TrackDetune(a5)	; Set detune value
cfReturn:
		rts
; ===========================================================================
; loc_72AF2: cfUnknown1:
;cfSetCommunication:
;		move.b	(a4)+,v_communication_byte(a6)	; Set otherwise unused communication byte to parameter
;		rts
; ===========================================================================
; loc_72AF8:
cfJumpReturn:
		moveq	#0,d0
		move.b	TrackStackPointer(a5),d0 ; Track stack pointer
		movea.l	(a5,d0.w),a4		; Set track return address
		clr.l	(a5,d0.w)		; Set 'popped' value to zero
		addq.w	#2,a4			; Skip jump target address from gosub flag
;		addq.b	#4,d0			; Actually 'pop' value
;		move.b	d0,TrackStackPointer(a5) ; Set new stack pointer
		addq.b	#4,TrackStackPointer(a5) ; Actually 'pop' value and set new stack pointer
		rts
; ===========================================================================
; loc_72B14:
cfFadeInToPrevious:
		movea.l	a6,a0
		lea	v_1up_ram_copy(a6),a1
		move.w	#((v_music_track_ram_end-v_startofvariables)/4)-1,d0	; $220 bytes to restore: all variables and music track data
; loc_72B1E:
.restoreramloop:
		move.l	(a1)+,(a0)+
		dbf	d0,.restoreramloop

		moveq	#$2B,d0		; Register: DAC mode (bit 7 = enable)
		moveq	#0,d1		; Value: DAC mode disable
		bsr.w	WriteFMI	; Write to YM2612 Port 0 [sub_7272E]
                bset	#2,v_music_dac_track(a6)	; Set 'SFX overriding' bit
		movea.l	a5,a3
		moveq	#$28,d6
		sub.b	v_fadein_counter(a6),d6			; If fade already in progress, this adjusts track volume accordingly
		moveq	#((v_music_fm_tracks_end-v_music_fm_tracks)/TrackSz)-1,d7	; 6 FM tracks
		lea	v_music_fm_tracks(a6),a5
; loc_72B3A:
.fmloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.nextfm				; Branch if not
		bset	#1,(a5)	; Set 'track at rest' bit
		add.b	d6,TrackVolume(a5)		; Apply current volume fade-in
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	.nextfm				; Branch if yes
		moveq	#0,d0
		move.b	TrackVoiceIndex(a5),d0	; Get voice
		movea.l	v_voice_ptr(a6),a1	; Voice pointer
		bsr.w	SetVoice
; loc_72B5C:
.nextfm:
		lea	TrackSz(a5),a5
		dbf	d7,.fmloop

		moveq	#((v_music_psg_tracks_end-v_music_psg_tracks)/TrackSz)-1,d7	; 3 PSG tracks
; loc_72B66:
.psgloop:
		tst.b	(a5)	; Is track playing?
		bpl.s	.nextpsg			; Branch if not
		bset	#1,(a5)	; Set 'track at rest' bit
		bsr.w	PSGNoteOff
		add.b	d6,TrackVolume(a5)	; Apply current volume fade-in
		cmpi.b	#$E0,TrackVoiceControl(a5)	; is this the Noise Channel?
		bne.s	.nextpsg			; no - skip
		move.b	TrackPSGNoise(a5),(psg_input).l	; restore Noise setting
; loc_72B78:
.nextpsg:
                lea	TrackSz(a5),a5
		dbf	d7,.psgloop

		movea.l	a3,a5
		move.b	#$80,f_fadein_flag(a6)		; Trigger fade-in
		move.b	#$28,v_fadein_counter(a6)	; Fade-in delay
		clr.b	f_1up_playing(a6)
                addq.w	#8,sp		; Tamper return value so we don't return to caller
		rts
; ===========================================================================
; loc_72B9E:
cfSetTempoDivider:
		move.b	(a4)+,TrackTempoDivider(a5)	; Set tempo divider on current track
		rts
; ===========================================================================
; loc_72BA4: cfSetVolume:
cfChangeFMVolume:
		move.b	(a4)+,d0		; Get parameter
		add.b	d0,TrackVolume(a5)	; Add to current volume
		bra.w	SendVoiceTL
; ===========================================================================
; loc_72BAE: cfPreventAttack:
cfHoldNote:
		bset	#4,(a5)	; Set 'do not attack next note' bit
		rts
; ===========================================================================
; loc_72BB4: cfNoteFill
cfNoteTimeout:
		move.b	(a4),TrackNoteTimeout(a5)		; Note fill timeout
		move.b	(a4)+,TrackNoteTimeoutMaster(a5)	; Note fill master
		rts
; ===========================================================================
; loc_72BBE: cfAddKey:
cfChangeTransposition:
		move.b	(a4)+,d0		; Get parameter
		add.b	d0,TrackTranspose(a5)	; Add to transpose value
		rts
; ===========================================================================
; loc_72BC6:
cfSetTempo:
		move.b	(a4)+,v_main_tempo(a6)		; Set main tempo
		rts
; ===========================================================================
; loc_72BD0: cfSetTempoMod:
cfSetTempoDividerAll:
		move.b	(a4)+,d0			; Get new tempo divider
		lea	v_music_track_ram+TrackTempoDivider(a6),a0
		moveq	#((v_music_track_ram_end-v_music_track_ram)/TrackSz)-1,d2	; 1 DAC + 6 FM + 3 PSG tracks
; loc_72BDA:
.trackloop:
		move.b	d0,(a0)	; Set track's tempo divider
		lea	TrackSz(a0),a0	; Advance to next track
		dbf	d2,.trackloop

		rts
; ===========================================================================
; loc_72BE6: cfChangeVolume:
cfChangePSGVolume:
		move.b	(a4)+,d0		; Get volume change
		add.b	d0,TrackVolume(a5)	; Apply it
		rts
; ===========================================================================
; loc_72BEE:
cfClearPush:
		clr.b	f_push_playing(a6)	; Allow push sound to be played once more
		rts
; ===========================================================================
; loc_72BF4:
cfStopSpecialFM4:
		bclr	#7,(a5)	; Stop track
		bclr	#4,(a5)	; Clear 'do not attack next note' bit
		bsr.w	FMNoteOff
		tst.b	v_sfx_fm4_track(a6) ; Is SFX using FM4?
		bmi.s	.locexit			; Branch if yes
		movea.l	a5,a3
		lea	v_music_fm4_track(a6),a5
		movea.l	v_voice_ptr(a6),a1		; Voice pointer
		bclr	#2,(a5)	; Clear 'SFX is overriding' bit
		bset	#1,(a5)	; Set 'track at rest' bit
		move.b	TrackVoiceIndex(a5),d0		; Current voice
		bsr.s	SetVoice
		movea.l	a3,a5
; loc_72C22:
.locexit:
		addq.w	#8,sp		; Tamper with return value so we don't return to caller
		rts
; ===========================================================================
; loc_72C26:
cfSetVoice:
		moveq	#0,d0
		move.b	(a4)+,d0		; Get new voice
		move.b	d0,TrackVoiceIndex(a5)	; Store it
		btst	#2,(a5)	; Is SFX overriding this track?
		bne.w	locret_72CAA		; Return if yes
		movea.l	v_voice_ptr(a6),a1	; Music voice pointer
		tst.b	f_voice_selector(a6)	; Are we updating a music track?
		beq.s	SetVoice		; If yes, branch
		movea.l	TrackVoicePtr(a5),a1	; SFX track voice pointer
		tst.b	f_voice_selector(a6)	; Are we updating a SFX track?
		bmi.s	SetVoice		; If yes, branch
		movea.l	v_special_voice_ptr(a6),a1 ; Special SFX voice pointer

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72C4E:
SetVoice:
		subq.w	#1,d0
		bmi.s	.havevoiceptr
; loc_72C56:
.voicemultiply:
		lea	25(a1),a1
		dbf	d0,.voicemultiply
; loc_72C5C:
.havevoiceptr:
		move.b	(a1)+,d1		; feedback/algorithm
		move.b	d1,TrackFeedbackAlgo(a5) ; Save it to track RAM
		move.b	d1,d4
		moveq	#$FFFFFFB0,d0			; Command to write feedback/algorithm
		bsr.w	WriteFMIorII
		lea	FMInstrumentOperatorTable(pc),a2
		moveq	#(FMInstrumentOperatorTable_End-FMInstrumentOperatorTable)-1,d3		; Don't want to send TL yet
; loc_72C72:
.sendvoiceloop:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		bsr.w	WriteFMIorII
		dbf	d3,.sendvoiceloop

		moveq	#(FMInstrumentTLTable_End-FMInstrumentTLTable)-1,d5
		andi.w	#7,d4			; Get algorithm
		move.b	FMSlotMask(pc,d4.w),d4	; Get slot mask for algorithm
		move.b	TrackVolume(a5),d3	; Track volume attenuation
; loc_72C8C:
.sendtlloop:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4		; Is bit set for this operator in the mask?
		bcc.s	.sendtl		; Branch if not
		add.b	d3,d1		; Include additional attenuation
; loc_72C96:
.sendtl:
		bsr.w	WriteFMIorII
		dbf	d5,.sendtlloop

		moveq	#$FFFFFFB4,d0			; Register for AMS/FMS/Panning
		move.b	TrackAMSFMSPan(a5),d1	; Value to send
		bra.w	WriteFMIorII

locret_72CAA:
		rts
; End of function SetVoice

; ===========================================================================
; byte_72CAC:
FMSlotMask:	dc.b 8,	8, 8, 8, $A, $E, $E, $F

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

; sub_72CB4:
SendVoiceTL:
		btst	#2,(a5)	; Is SFX overriding?
		bne.s	.locret				; Return if so
		moveq	#0,d0
		move.b	TrackVoiceIndex(a5),d0	; Current voice
		movea.l	v_voice_ptr(a6),a1	; Voice pointer
		tst.b	f_voice_selector(a6)
		beq.s	.gotvoiceptr
		movea.l	TrackVoicePtr(a5),a1
		tst.b	f_voice_selector(a6)
		bmi.s	.gotvoiceptr
		movea.l	v_special_voice_ptr(a6),a1
; loc_72CD8:
.gotvoiceptr:
		subq.w	#1,d0
		bmi.s	.gotvoice
; loc_72CE0:
.voicemultiply:
		lea	25(a1),a1
		dbf	d0,.voicemultiply
; loc_72CE6:
.gotvoice:
		lea	21(a1),a1			; Want TL
		lea	FMInstrumentTLTable(pc),a2
		move.b	TrackFeedbackAlgo(a5),d0	; Get feedback/algorithm
		andi.w	#7,d0				; Want only algorithm
		move.b	FMSlotMask(pc,d0.w),d4		; Get slot mask
		move.b	TrackVolume(a5),d3		; Get track volume attenuation
		bmi.s	.locret				; If negative, stop
		moveq	#(FMInstrumentTLTable_End-FMInstrumentTLTable)-1,d5
; loc_72D02:
.sendtlloop:
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4		; Is bit set for this operator in the mask?
		bcc.s	.senttl		; Branch if not
		add.b	d3,d1		; Include additional attenuation
		bcs.s	.senttl		; Branch on overflow
		bsr.w	WriteFMIorII
; loc_72D12:
.senttl:
		dbf	d5,.sendtlloop
; locret_72D16:
.locret:
		rts
; End of function SendVoiceTL

; ===========================================================================
; byte_72D18:
FMInstrumentOperatorTable:
		dc.b  $30		; Detune/multiple operator 1
		dc.b  $38		; Detune/multiple operator 3
		dc.b  $34		; Detune/multiple operator 2
		dc.b  $3C		; Detune/multiple operator 4
		dc.b  $50		; Rate scalling/attack rate operator 1
		dc.b  $58		; Rate scalling/attack rate operator 3
		dc.b  $54		; Rate scalling/attack rate operator 2
		dc.b  $5C		; Rate scalling/attack rate operator 4
		dc.b  $60		; Amplitude modulation/first decay rate operator 1
		dc.b  $68		; Amplitude modulation/first decay rate operator 3
		dc.b  $64		; Amplitude modulation/first decay rate operator 2
		dc.b  $6C		; Amplitude modulation/first decay rate operator 4
		dc.b  $70		; Secondary decay rate operator 1
		dc.b  $78		; Secondary decay rate operator 3
		dc.b  $74		; Secondary decay rate operator 2
		dc.b  $7C		; Secondary decay rate operator 4
		dc.b  $80		; Secondary amplitude/release rate operator 1
		dc.b  $88		; Secondary amplitude/release rate operator 3
		dc.b  $84		; Secondary amplitude/release rate operator 2
		dc.b  $8C		; Secondary amplitude/release rate operator 4
FMInstrumentOperatorTable_End
; byte_72D2C:
FMInstrumentTLTable:
		dc.b  $40		; Total level operator 1
		dc.b  $48		; Total level operator 3
		dc.b  $44		; Total level operator 2
		dc.b  $4C		; Total level operator 4
FMInstrumentTLTable_End
; ===========================================================================
; loc_72D30:
cfModulation:
		bset	#3,(a5)	; Turn on modulation
		move.l	a4,TrackModulationPtr(a5)	; Save pointer to modulation data
		move.b	(a4)+,TrackModulationWait(a5)	; Modulation delay
		move.b	(a4)+,TrackModulationSpeed(a5)	; Modulation speed
		move.b	(a4)+,TrackModulationDelta(a5)	; Modulation delta
		move.b	(a4)+,d0			; Modulation steps...
		lsr.b	#1,d0				; ... divided by 2...
		move.b	d0,TrackModulationSteps(a5)	; ... before being stored
		clr.w	TrackModulationVal(a5)		; Total accumulated modulation frequency change
		rts
; ===========================================================================
; loc_72D52:
cfEnableModulation:
		bset	#3,(a5)	; Turn on modulation
		rts
; ===========================================================================
; loc_72D58:
cfStopTrack:
		bclr	#7,(a5)	; Stop track
		bclr	#4,(a5)	; Clear 'do not attack next note' bit
		tst.b	TrackVoiceControl(a5)		; Is this a PSG track?
		bmi.s	.stoppsg			; Branch if yes
		tst.b	f_updating_dac(a6)		; Is this the DAC we are updating?
		bmi.w	.locexit			; Exit if yes
		bsr.w	FMNoteOff
		bra.s	.stoppedchannel
; ===========================================================================
; loc_72D74:
.stoppsg:
		bsr.w	PSGNoteOff
; loc_72D78:
.stoppedchannel:
		tst.b	f_voice_selector(a6)	; Are we updating SFX?
		bpl.w	.locexit		; Exit if not
		clr.b	(a6)		; Clear priority
		moveq	#0,d0
		move.b	TrackVoiceControl(a5),d0 ; Get voice control bits
		bmi.s	.getpsgptr		; Branch if PSG
		lea	SFX_BGMChannelRAM(pc),a0
		movea.l	a5,a3
		cmpi.b	#4,d0			; Is this FM4?
		bne.s	.getpointer		; Branch if not
		tst.b	v_spcsfx_fm4_track(a6)	; Is special SFX playing?
		bpl.s	.getpointer		; Branch if not
		lea	v_spcsfx_fm4_track(a6),a5
		movea.l	v_special_voice_ptr(a6),a1	; Get voice pointer
		bra.s	.gotpointer
; ===========================================================================
; loc_72DA8:
.getpointer:
		subq.b	#2,d0		; SFX can only use FM3 and up
		add.b	d0,d0
		movea.w	(a0,d0.w),a5
		tst.b	(a5)	; Is track playing?
		bpl.s	.novoiceupd			; Branch if not
		movea.l	v_voice_ptr(a6),a1		; Get voice pointer
; loc_72DB8:
.gotpointer:
		bclr	#2,(a5)	; Clear 'SFX overriding' bit
		bset	#1,(a5)	; Set 'track at rest' bit
		move.b	TrackVoiceIndex(a5),d0		; Current voice
		bsr.w	SetVoice
; loc_72DC8:
.novoiceupd:
		movea.l	a3,a5
		bra.s	.locexit
; ===========================================================================
; loc_72DCC:
.getpsgptr:
		lea	v_spcsfx_psg3_track(a6),a0
		tst.b	(a0)	; Is track playing?
		bpl.s	.getchannelptr	; Branch if not
		cmpi.b	#$E0,d0		; Is it the noise channel?
		beq.s	.gotchannelptr	; Branch if yes
		cmpi.b	#$C0,d0		; Is it PSG 3?
		beq.s	.gotchannelptr	; Branch if yes
; loc_72DE0:
.getchannelptr:
		lea	SFX_BGMChannelRAM(pc),a0
		lsr.b	#4,d0
		movea.w	(a0,d0.w),a0
; loc_72DEA:
.gotchannelptr:
		bclr	#2,(a0)	; Clear 'SFX overriding' bit
		bset	#1,(a0)	; Set 'track at rest' bit
		cmpi.b	#$E0,TrackVoiceControl(a0)	; Is this a noise pointer?
		bne.s	.locexit			; Branch if not
		move.b	TrackPSGNoise(a0),(psg_input).l ; Set noise tone
; loc_72E02:
.locexit:
		addq.w	#8,sp		; Tamper with return value so we don't go back to caller
		rts
; ===========================================================================
; loc_72E06:
cfSetPSGNoise:
		move.b	#$E0,TrackVoiceControl(a5)	; Turn channel into noise channel
		move.b	(a4)+,TrackPSGNoise(a5)		; Save noise tone
		btst	#2,(a5)	; Is track being overridden?
		bne.s	.locret				; Return if yes
		move.b	-1(a4),(psg_input).l		; Set tone
; locret_72E1E:
.locret:
		rts
; ===========================================================================
; loc_72E20:
cfDisableModulation:
		bclr	#3,(a5)	; Disable modulation
		rts
; ===========================================================================
; loc_72E26:
cfSetPSGTone:
		move.b	(a4)+,TrackVoiceIndex(a5)	; Set current PSG tone
		rts
; ===========================================================================
; loc_72E2C:
cfJumpTo:
		move.b	(a4)+,d0	; High byte of offset
		lsl.w	#8,d0		; Shift it into place
		move.b	(a4)+,d0	; Low byte of offset
		adda.w	d0,a4		; Add to current position
		subq.w	#1,a4		; Put back one byte
		rts
; ===========================================================================
; loc_72E38:
cfRepeatAtPos:
		moveq	#0,d0
		move.b	(a4)+,d0			; Loop index
		move.b	(a4)+,d1			; Repeat count
		tst.b	TrackLoopCounters(a5,d0.w)	; Has this loop already started?
		bne.s	.loopexists			; Branch if yes
		move.b	d1,TrackLoopCounters(a5,d0.w)	; Initialize repeat count
; loc_72E48:
.loopexists:
		subq.b	#1,TrackLoopCounters(a5,d0.w)	; Decrease loop's repeat count
		bne.s	cfJumpTo			; If nonzero, branch to target
		addq.w	#2,a4				; Skip target address
		rts
; ===========================================================================
; loc_72E52:
cfJumpToGosub:
		moveq	#0,d0
		move.b	TrackStackPointer(a5),d0	; Current stack pointer
		subq.b	#4,d0				; Add space for another target
		move.l	a4,(a5,d0.w)			; Put in current address (*before* target for jump!)
		move.b	d0,TrackStackPointer(a5)	; Store new stack pointer
		bra.s	cfJumpTo
; ===========================================================================
; loc_72E64:
cfOpF9:
		moveq	#$FFFFFF88,d0		; D1L/RR of Operator 3
		moveq	#$F,d1		; Loaded with fixed value (max RR, 1TL)
		bsr.w	WriteFMI
		moveq	#$FFFFFF8C,d0		; D1L/RR of Operator 4
		moveq	#$F,d1		; Loaded with fixed value (max RR, 1TL)
		bra.w	WriteFMI
; ===========================================================================
; ---------------------------------------------------------------------------
; SMPS2ASM - A collection of macros that make SMPS's bytecode human-readable.
; ---------------------------------------------------------------------------
	if MegaPCM_Mode
		include	"sound/MegaPCM.asm"
	endc

		include "sound/_smps2asm_inc.asm"
		include	"sound/FM Universal Voice Bank.asm"

; ---------------------------------------------------------------------------
; Music data
; ---------------------------------------------------------------------------
Music81:	include	"sound/music/Mus81 - GHZ.asm"
		even
Music82:	include	"sound/music/Mus82 - LZ.asm"
		even
Music83:	include	"sound/music/Mus83 - MZ.asm"
		even
Music84:	include	"sound/music/Mus84 - SLZ.asm"
		even
Music85:	include	"sound/music/Mus85 - SYZ.asm"
		even
Music86:	include	"sound/music/Mus86 - SBZ.asm"
		even
Music87:	include	"sound/music/Mus87 - Invincibility.asm"
		even
Music88:	include	"sound/music/Mus88 - Extra Life.asm"
		even
Music89:	include	"sound/music/Mus89 - Special Stage.asm"
		even
Music8A:	include	"sound/music/Mus8A - Title Screen.asm"
		even
Music8B:	include	"sound/music/Mus8B - Ending.asm"
		even
Music8C:	include	"sound/music/Mus8C - Boss.asm"
		even
Music8D:	include	"sound/music/Mus8D - FZ.asm"
		even
Music8E:	include	"sound/music/Mus8E - Sonic Got Through.asm"
		even
Music8F:	include	"sound/music/Mus8F - Game Over.asm"
		even
Music90:	include	"sound/music/Mus90 - Continue Screen.asm"
		even
Music91:	include	"sound/music/Mus91 - Credits.asm"
		even
Music92:	include	"sound/music/Mus92 - Drowning.asm"
		even
Music93:	include	"sound/music/Mus93 - Get Emerald.asm"
		even
Music94:	include	"sound/music/AIZ1.asm"
		even
Music95:	include	"sound/music/AIZ2.asm"
		even
Music96:	include	"sound/music/HCZ1.asm"
		even
Music97:	include	"sound/music/HCZ2.asm"
		even
Music98:	include	"sound/music/07 Carnival Night 1.asm"
		even
Music99:	include	"sound/music/08 Carnival Night 2.asm"
		even
Music9A:	include	"sound/music/GreenGZ1.asm"
		even
Music9B:	include	"sound/music/GreenGZ2.asm"
		even
Music9C:	include	"sound/music/Boss2.asm"
		even

; ---------------------------------------------------------------------------
; Sound	effect pointers
; ---------------------------------------------------------------------------
SoundIndex:
ptr_sndA0:	dc.l SoundA0
ptr_sndA1:	dc.l SoundA1
ptr_sndA2:	dc.l SoundA2
ptr_sndA3:	dc.l SoundA3
ptr_sndA4:	dc.l SoundA4
ptr_sndA5:	dc.l SoundA5
ptr_sndA6:	dc.l SoundA6
ptr_sndA7:	dc.l SoundA7
ptr_sndA8:	dc.l SoundA8
ptr_sndA9:	dc.l SoundA9
ptr_sndAA:	dc.l SoundAA
ptr_sndAB:	dc.l SoundAB
ptr_sndAC:	dc.l SoundAC
ptr_sndAD:	dc.l SoundAD
ptr_sndAE:	dc.l SoundAE
ptr_sndAF:	dc.l SoundAF
ptr_sndB0:	dc.l SoundB0
ptr_sndB1:	dc.l SoundB1
ptr_sndB2:	dc.l SoundB2
ptr_sndB3:	dc.l SoundB3
ptr_sndB4:	dc.l SoundB4
ptr_sndB5:	dc.l SoundB5
ptr_sndB6:	dc.l SoundB6
ptr_sndB7:	dc.l SoundB7
ptr_sndB8:	dc.l SoundB8
ptr_sndB9:	dc.l SoundB9
ptr_sndBA:	dc.l SoundBA
ptr_sndBB:	dc.l SoundBB
ptr_sndBC:	dc.l SoundBC
ptr_sndBD:	dc.l SoundBD
ptr_sndBE:	dc.l SoundBE
ptr_sndBF:	dc.l SoundBF
ptr_sndC0:	dc.l SoundC0
ptr_sndC1:	dc.l SoundC1
ptr_sndC2:	dc.l SoundC2
ptr_sndC3:	dc.l SoundC3
ptr_sndC4:	dc.l SoundC4
ptr_sndC5:	dc.l SoundC5
ptr_sndC6:	dc.l SoundC6
ptr_sndC7:	dc.l SoundC7
ptr_sndC8:	dc.l SoundC8
ptr_sndC9:	dc.l SoundC9
ptr_sndCA:	dc.l SoundCA
ptr_sndCB:	dc.l SoundCB
ptr_sndCC:	dc.l SoundCC
ptr_sndCD:	dc.l SoundCD
ptr_sndCE:	dc.l SoundCE
ptr_sndCF:	dc.l SoundCF
ptr_sndend

; ---------------------------------------------------------------------------
; Special sound effect pointers
; ---------------------------------------------------------------------------
SpecSoundIndex:
ptr_sndD0:	dc.l SoundD0
ptr_specend

; ---------------------------------------------------------------------------
; Sound effect data
; ---------------------------------------------------------------------------
SoundA0:	include	"sound/sfx/SndA0 - Jump.asm"
		even
SoundA1:	include	"sound/sfx/SndA1 - Lamppost.asm"
		even
SoundA2:	include	"sound/sfx/SndA2.asm"
		even
SoundA3:	include	"sound/sfx/SndA3 - Death.asm"
		even
SoundA4:	include	"sound/sfx/SndA4 - Skid.asm"
		even
SoundA5:	include	"sound/sfx/SndA5.asm"
		even
SoundA6:	include	"sound/sfx/SndA6 - Hit Spikes.asm"
		even
SoundA7:	include	"sound/sfx/SndA7 - Push Block.asm"
		even
SoundA8:	include	"sound/sfx/SndA8 - SS Goal.asm"
		even
SoundA9:	include	"sound/sfx/SndA9 - SS Item.asm"
		even
SoundAA:	include	"sound/sfx/SndAA - Splash.asm"
		even
SoundAB:	include	"sound/sfx/SndAB.asm"
		even
SoundAC:	include	"sound/sfx/SndAC - Hit Boss.asm"
		even
SoundAD:	include	"sound/sfx/SndAD - Get Bubble.asm"
		even
SoundAE:	include	"sound/sfx/SndAE - Fireball.asm"
		even
SoundAF:	include	"sound/sfx/SndAF - Shield.asm"
		even
SoundB0:	include	"sound/sfx/SndB0 - Saw.asm"
		even
SoundB1:	include	"sound/sfx/SndB1 - Electric.asm"
		even
SoundB2:	include	"sound/sfx/SndB2 - Drown Death.asm"
		even
SoundB3:	include	"sound/sfx/SndB3 - Flamethrower.asm"
		even
SoundB4:	include	"sound/sfx/SndB4 - Bumper.asm"
		even
SoundB5:	include	"sound/sfx/SndB5 - Ring.asm"
		even
SoundB6:	include	"sound/sfx/SndB6 - Spikes Move.asm"
		even
SoundB7:	include	"sound/sfx/SndB7 - Rumbling.asm"
		even
SoundB8:	include	"sound/sfx/SndB8.asm"
		even
SoundB9:	include	"sound/sfx/SndB9 - Collapse.asm"
		even
SoundBA:	include	"sound/sfx/SndBA - SS Glass.asm"
		even
SoundBB:	include	"sound/sfx/SndBB - Door.asm"
		even
SoundBC:	include	"sound/sfx/SndBC - Teleport.asm"
		even
SoundBD:	include	"sound/sfx/SndBD - ChainStomp.asm"
		even
SoundBE:	include	"sound/sfx/SndBE - Roll.asm"
		even
SoundBF:	include	"sound/sfx/SndBF - Get Continue.asm"
		even
SoundC0:	include	"sound/sfx/SndC0 - Basaran Flap.asm"
		even
SoundC1:	include	"sound/sfx/SndC1 - Break Item.asm"
		even
SoundC2:	include	"sound/sfx/SndC2 - Drown Warning.asm"
		even
SoundC3:	include	"sound/sfx/SndC3 - Giant Ring.asm"
		even
SoundC4:	include	"sound/sfx/SndC4 - Bomb.asm"
		even
SoundC5:	include	"sound/sfx/SndC5 - Cash Register.asm"
		even
SoundC6:	include	"sound/sfx/SndC6 - Ring Loss.asm"
		even
SoundC7:	include	"sound/sfx/SndC7 - Chain Rising.asm"
		even
SoundC8:	include	"sound/sfx/SndC8 - Burning.asm"
		even
SoundC9:	include	"sound/sfx/SndC9 - Hidden Bonus.asm"
		even
SoundCA:	include	"sound/sfx/SndCA - Enter SS.asm"
		even
SoundCB:	include	"sound/sfx/SndCB - Wall Smash.asm"
		even
SoundCC:	include	"sound/sfx/SndCC - Spring.asm"
		even
SoundCD:	include	"sound/sfx/SndCD - Switch.asm"
		even
SoundCE:	include	"sound/sfx/SndCE - Ring Left Speaker.asm"
		even
SoundCF:	include	"sound/sfx/SndCF - Signpost.asm"
		even

; ---------------------------------------------------------------------------
; Special sound effect data
; ---------------------------------------------------------------------------
SoundD0:	include	"sound/sfx/SndD0 - Waterfall.asm"
		even