; ---------------------------------------------------------------------------
; Subroutine to	make Sonic run around loops (GHZ/SLZ)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Loops:
;		cmpi.b	#id_SLZ,(v_zone).w ; is level SLZ ?
;		beq.s	.isstarlight	; if yes, branch
		tst.b	(v_zone).w	; is level GHZ ?
		bne.w	.noloops	; if not, branch

;.isstarlight:
		movea.l	(v_lvllayoutfg).w,a1	; MJ: Load address of layout
		move.w	obY(a0),d0
		lsr.w	#5,d0
		and.w	#$3C,d0
		add.w	8(a1,d0.w),a1
		move.w	obX(a0),d1
		lsr.w	#7,d1
		move.b	8(a1,d1.w),d1		; MJ: collect correct 128x128 chunk ID based on the position of Sonic

		lea	STunnel_Chunks_End(pc),a2			; MJ: lead list of S-Tunnel chunks
		moveq	#(STunnel_Chunks_End-STunnel_Chunks)-1,d2	; MJ: get size of list

.loop:
		cmp.b	-(a2),d1	; MJ: is the chunk an S-Tunnel chunk?
		dbeq	d2,.loop	; MJ: check for each listed S-Tunnel chunk
		beq.w	Sonic_ChkRoll	; MJ: if so, branch

		bclr	#6,obRender(a0) ; return Sonic to high plane
		rts	
; ===========================================================================

.chkifinair:
		btst	#1,obStatus(a0)	; is Sonic in the air?
		beq.s	.chkifleft	; if not, branch

		bclr	#6,obRender(a0)	; return Sonic to high plane
		rts	
; ===========================================================================

.chkifleft:
		move.w	obX(a0),d2
		cmpi.b	#$2C,d2
		bcc.s	.chkifright

		bclr	#6,obRender(a0)	; return Sonic to high plane
		rts	
; ===========================================================================

.chkifright:
		cmpi.b	#$E0,d2
		bcs.s	.chkangle1

		bset	#6,obRender(a0)	; send Sonic to	low plane
		rts	
; ===========================================================================

.chkangle1:
		btst	#6,obRender(a0) ; is Sonic on low plane?
		bne.s	.chkangle2	; if yes, branch

		move.b	obAngle(a0),d1
		beq.s	.done
		cmpi.b	#$80,d1		; is Sonic upside-down?
		bhi.s	.done		; if yes, branch
		bset	#6,obRender(a0)	; send Sonic to	low plane
		rts	
; ===========================================================================

.chkangle2:
		move.b	obAngle(a0),d1
		cmpi.b	#$80,d1		; is Sonic upright?
		bls.s	.done		; if yes, branch
		bclr	#6,obRender(a0)	; send Sonic to	high plane

.noloops:
.done:
		rts	
; End of function Sonic_Loops

; ===========================================================================
STunnel_Chunks:		; MJ: list of S-Tunnel chunks
		dc.b	$75,$76,$77,$78
		dc.b	$79,$7A,$7B,$7C
STunnel_Chunks_End

