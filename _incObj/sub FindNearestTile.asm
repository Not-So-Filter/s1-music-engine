; ---------------------------------------------------------------------------
; Subroutine to	find which tile	the object is standing on

; input:
;	d2 = y-position of object's bottom edge
;	d3 = x-position of object

; output:
;	a1 = address within 256x256 mappings where object is standing
;	     (refers to a 16x16 tile number)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


FindNearestTile:
		movea.l	(v_lvllayoutfg).w,a1
		; Set Y coordinate in level layout
		move.w	d2,d0		; MJ: copy Y position to d3
		lsr.w	#5,d0
		and.w	#$3C,d0
		adda.w	8(a1,d0.w),a1		
		; Set X coordinate in level layout
		move.w	d3,d0		; MJ: copy to d1
		lsr.w	#7,d0
		if ChunkCompression=0
		moveq	#0,d1			; MJ: prepare 0 in d3
		else
                moveq	#-1,d1			; MJ: prepare FFFF in d3
                endif
		; Turn chunk ID from level layout
		move.b	8(a1,d0.w),d1
		andi.w	#$FF,d1			; MJ: keep within FF
		lsl.w	#7,d1			; MJ: multiply by 80
		move.w	d2,d0			; MJ: load Y position
		andi.w	#$70,d0			; MJ: keep Y within 80 pixels
		add.w	d0,d1			; MJ: add to ror'd chunk ID
		move.w	d3,d0			; MJ: load X position
		lsr.w	#3,d0			; MJ: divide by 8
		andi.w	#$E,d0			; MJ: keep X within 10 pixels
		add.w	d0,d1			; MJ: add to ror'd chunk ID
		if ChunkCompression=0
		add.l	(v_128x128).w,d1
		endif

		movea.l	d1,a1			; MJ: set address (Chunk to read)
		rts				; MJ: return
; End of function FindNearestTile