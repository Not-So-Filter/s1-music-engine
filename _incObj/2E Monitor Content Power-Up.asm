; ---------------------------------------------------------------------------
; Object 2E - contents of monitors
; ---------------------------------------------------------------------------

PowerUp:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Pow_Index(pc,d0.w),d1
		jsr	Pow_Index(pc,d1.w)
		bra.w	DisplaySprite
; ===========================================================================
Pow_Index:	dc.w Pow_Main-Pow_Index
		dc.w Pow_Move-Pow_Index
		dc.w Pow_Delete-Pow_Index
; ===========================================================================

Pow_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.w	#$680,obGfx(a0)
		move.b	#$24,obRender(a0)
		move.w	#$180,obPriority(a0)
		move.b	#8,obActWid(a0)
		move.w	#-$300,obVelY(a0)
		moveq	#0,d0
		move.b	obAnim(a0),d0	; get subtype
		addq.b	#2,d0
		move.b	d0,obFrame(a0)	; use correct frame
		movea.l	#Map_Monitor,a1
		add.b	d0,d0
		adda.w	(a1,d0.w),a1
		addq.w	#1,a1
		move.l	a1,obMap(a0)

Pow_Move:	; Routine 2
		tst.w	obVelY(a0)	; is object moving?
		bpl.s	Pow_Checks	; if not, branch
		addi.w	#$18,obVelY(a0)	; reduce object	speed
		bra.w	SpeedToPos
; ===========================================================================

Pow_Checks:
		addq.b	#2,obRoutine(a0)
		move.w	#29,obTimeFrame(a0) ; display icon for half a second

Pow_ChkEggman:
		move.b	obAnim(a0),d0
		cmpi.b	#1,d0		; does monitor contain Eggman?
		bne.s	Pow_ChkSonic
		rts			; Eggman monitor does nothing
; ===========================================================================

Pow_ChkSonic:
		cmpi.b	#2,d0		; does monitor contain Sonic?
		bne.s	Pow_ChkShoes

ExtraLife:
		addq.b	#1,(v_lives).w	; add 1 to the number of lives you have
		addq.b	#1,(f_lifecount).w ; update the lives counter
		moveq	#bgm_ExtraLife,d0
		jmp	(PlaySound).w	; play extra life music
; ===========================================================================

Pow_ChkShoes:
		cmpi.b	#3,d0		; does monitor contain speed shoes?
		bne.s	Pow_ChkShield

		move.b	#1,(v_shoes).w	; speed up the BG music
		move.w	#$4B0,(v_player+$34).w	; time limit for the power-up
		move.w	#$C00,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#$18,(v_sonspeedacc).w	; change Sonic's acceleration
		move.w	#$80,(v_sonspeeddec).w	; change Sonic's deceleration
		moveq	#bgm_Speedup,d0
		jmp	(PlaySound).w		; Speed	up the music
; ===========================================================================

Pow_ChkShield:
		cmpi.b	#4,d0		; does monitor contain a shield?
		bne.s	Pow_ChkInvinc

		move.b	#1,(v_shield).w	; give Sonic a shield
		move.b	#id_ShieldItem,(v_objspace+$140).w ; load shield object ($38)
		moveq	#sfx_Shield,d0
		jmp	(PlaySound_Special).w	; play shield sound
; ===========================================================================

Pow_ChkInvinc:
		cmpi.b	#5,d0		; does monitor contain invincibility?
		bne.s	Pow_ChkRings

		move.b	#1,(v_invinc).w	; make Sonic invincible
		move.w	#$4B0,(v_player+invtime).w ; time limit for the power-up
		move.b	#id_ShieldItem,(v_objspace+$140).w ; load stars object ($3801)
		move.b	#1,(v_objspace+$140+obAnim).w
		tst.b	(f_lockscreen).w ; is boss mode on?
		bne.s	Pow_NoMusic	; if yes, branch
		cmpi.w	#$C,(v_air).w
		bls.s	Pow_NoMusic
		moveq	#bgm_Invincible,d0
		jmp	(PlaySound).w ; play invincibility music
; ===========================================================================

Pow_NoMusic:
		rts
; ===========================================================================

Pow_ChkRings:
		cmpi.b	#6,d0		; does monitor contain 10 rings?
		bne.s	Pow_ChkS

		addi.w	#10,(v_rings).w	; add 10 rings to the number of rings you have
		ori.b	#1,(f_ringcount).w ; update the ring counter
		cmpi.w	#100,(v_rings).w ; check if you have 100 rings
		bcs.s	Pow_RingSound
		bset	#1,(v_lifecount).w
		beq.w	ExtraLife
		cmpi.w	#200,(v_rings).w ; check if you have 200 rings
		bcs.s	Pow_RingSound
		bset	#2,(v_lifecount).w
		beq.w	ExtraLife

Pow_RingSound:
		moveq	#sfx_Ring,d0
		jmp	(PlaySound_Special).w	; play ring sound
; ===========================================================================

Pow_ChkS:
		rts			; 'S' and goggles monitors do nothing
; ===========================================================================

Pow_Delete:	; Routine 4
		subq.w	#1,obTimeFrame(a0)
		bpl.s	.locret
		addq.w	#4,sp
		bra.w	DeleteObject	; delete after half a second
.locret:
		rts