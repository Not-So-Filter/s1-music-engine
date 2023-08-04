; -----------------------------------------------------
; Kosinski Decompress to VRAM Routine
; -----------------------------------------------------
;
;	Usage:	lea 	(source).l,a0
;		lea 	(buffer).l,a1
;		move.w	#vram,d4
;		bsr.w   KosPlusDecVRAM

KosPlusDecVRAM:
		bsr.s	KosPlusDec
		move.w	a1,d3
		lsr.w	#1,d3
		move.l	#$FF0000,d1
		move.w	d4,d2
		bsr.w	QueueDMATransfer
		bra.w	ProcessDMAQueue