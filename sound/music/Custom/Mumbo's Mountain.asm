Mumbos_Mountain_N64_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoice     Mumbos_Mountain_N64_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Mumbos_Mountain_N64_DAC
	smpsHeaderFM        Mumbos_Mountain_N64_FM1,	$00, $00
	smpsHeaderFM        Mumbos_Mountain_N64_FM2,	$00, $00
	smpsHeaderFM        Mumbos_Mountain_N64_FM3,	$00, $00
	smpsHeaderFM        Mumbos_Mountain_N64_FM4,	$00, $00
	smpsHeaderFM        Mumbos_Mountain_N64_FM5,	$00, $00
	smpsHeaderPSG       Mumbos_Mountain_N64_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Mumbos_Mountain_N64_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Mumbos_Mountain_N64_PSG3,	$00, $00, $00, $00

; PSG1 Data
Mumbos_Mountain_N64_PSG1:
; PSG2 Data
Mumbos_Mountain_N64_PSG2:
	smpsStop

; FM1 Data
Mumbos_Mountain_N64_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $07
	smpsPan             panCenter, $00

Mumbos_Mountain_N64_Loop48:
	dc.b	nC3, $0D, nRst, $17, nG3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop48

Mumbos_Mountain_N64_Loop49:
	dc.b	nC3, $0D, nRst, $17, nFs3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop49
	dc.b	nC3, $0D, nRst, $17, nG3, $09, nRst, $1B, nD3, $0D, nRst, $17
	dc.b	nG3, $0D

Mumbos_Mountain_N64_Loop4A:
	dc.b	nRst, $17, nC3, $0D, nRst, $17, nFs3, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop4A
	dc.b	nRst, $17, nG3, $09, nRst, $1B, nG3, $09, nRst, $1B, nC3, $0D
	dc.b	nRst, $05, nG2, $09, nRst, nC3, nRst, nG2, $0D, nRst, $05
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop49
	dc.b	nCs3, $0D, nRst, $17, nAb3, $0D, nRst, $17, nG3, $0D, nRst, $17
	dc.b	nD3, $0D, nRst, $17, nC3, $0D, nRst, $17, nG3, $0D, nRst, $17
	dc.b	nFs2, $0D, nRst, $17, nCs3, $0D, nRst, $17, nB2, $0D, nRst, $17
	dc.b	nFs3, $0D, nRst, $17, nF3, $0D, nRst, $17, nC3, $0D

Mumbos_Mountain_N64_Loop4B:
	dc.b	nRst, $17, nD3, $0D, nRst, $17, nFs3, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop4B
	dc.b	nRst, $17, nG3, $0D, nRst, $17, nD3, $0D, nRst, $17, nG3, $09
	dc.b	nRst, nG2, nRst, nA2, nRst, nB2, nRst

Mumbos_Mountain_N64_Loop4C:
	dc.b	nC3, $0D, nRst, $17, nFs3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop4C
	dc.b	nC3, $0D, nRst, $17, nG3, $09, nRst, $1B, nD3, $0D, nRst, $17
	dc.b	nG3, $0D

Mumbos_Mountain_N64_Loop4D:
	dc.b	nRst, $17, nC3, $0D, nRst, $17, nFs3, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop4D
	dc.b	nRst, $17, nG3, $09, nRst, $1B, nG3, $09, nRst, $1B, nC3, $0D
	dc.b	nRst, $05, nG2, $09, nRst, nC3, nRst, nG2, $0D, nRst, $05, nF4
	dc.b	$16, nRst, $0E, nC4, $16, nRst, $0E, nA3, $16, nRst, $0E, nF3
	dc.b	$16, nRst, $0E, nG3, $12, nRst, $09, nBb3, $04, nRst, $05, nD4
	dc.b	$04, nRst, $0E, nD4, $09, nRst, nD4, $24, nRst, $12, nG3, $04
	dc.b	nRst, $05, nF3, $04, nRst, $05, nE3, $12, nRst, $09, nG3, $04
	dc.b	nRst, $05, nBb3, $04, nRst, $0E, nBb3, $04, nRst, $0E, nBb3, $1B
	dc.b	nRst, $09, nG3, $04, nRst, $0E, nE3, $09, nRst, nF3, $12, nRst
	dc.b	$09, nA3, $04, nRst, $05

Mumbos_Mountain_N64_Loop4E:
	dc.b	nC4, $04, nRst, $0E
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop4E
	dc.b	nD4, $04, nRst, $0E, nE4, $09, nRst, nF4, $16, nRst, $0E, nC4
	dc.b	$16, nRst, $0E, nA3, $16, nRst, $0E, nF3, $16, nRst, $0E, nFs3
	dc.b	$12, nRst, $09, nB3, $04, nRst, $05, nEb4, $04, nRst, $0E, nEb4
	dc.b	$04, nRst, $0E, nEb4, $24, nRst, $12, nEb4, $04, nRst, $05, nCs4
	dc.b	$04, nRst, $05, nB3, $12, nRst, $09, nC4, $04, nRst, $05, nD4
	dc.b	$04, nRst, $0E, nB3, $09, nRst, nC4, $0D, nRst, $05, nG3, $09
	dc.b	nRst, nC4, $04, nRst, $0E, nE4, $09, nRst, nF4, nRst, nE4, $04
	dc.b	nRst, $05, nD4, $04, nRst, $05, nC4, $04, nRst, $05, nBb3, $04
	dc.b	nRst, $05, nA3, $04, nRst, $05, nG3, $04, nRst, $05, nF3, $09
	dc.b	nRst, nA3, $04, nRst, $0E, nF3, $09, nRst, $1B

Mumbos_Mountain_N64_Loop4F:
	dc.b	nF3, $0D, nRst, $17, nC3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop4F
	dc.b	nG3, $12, nRst, nD3, nRst, nG3, nRst, nD3, $09, nRst, nG3, nRst
	dc.b	nC3, $12, nRst, nG2, $16, nRst, $0E, nC3, $16, nRst, $0E, nG2
	dc.b	$16, nRst, $0E, nF3, $16, nRst, $0E, nC3, $16, nRst, $0E, nF3
	dc.b	$0D, nRst, $05, nE3, $09, nRst, nD3, nRst, nC3, nRst

Mumbos_Mountain_N64_Loop50:
	dc.b	nF3, $0D, nRst, $17, nC3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop50

Mumbos_Mountain_N64_Loop51:
	dc.b	nB2, $0D, nRst, $17, nFs3, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop51
	dc.b	nG3, $0D, nRst, $17, nD3, $0D, nRst, $17, nC3, $0D, nRst, $17
	dc.b	nE3, $0D

Mumbos_Mountain_N64_Loop52:
	dc.b	nRst, $17, nF3, $0D, nRst, $17, nC3, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop52
	dc.b	nRst, $17, nCs3, $0D, nRst, $17, nAb3, $0D, nRst, $17, nG3, $0D
	dc.b	nRst, $17, nD3, $0D, nRst, $17, nC3, $0D, nRst, $17, nG3, $0D
	dc.b	nRst, $17, nFs2, $0D, nRst, $17, nCs3, $0D, nRst, $17, nB2, $0D
	dc.b	nRst, $17, nFs3, $0D, nRst, $17, nF3, $0D, nRst, $17, nC3, $0D

Mumbos_Mountain_N64_Loop53:
	dc.b	nRst, $17, nD3, $0D, nRst, $17, nFs3, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop53
	dc.b	nRst, $17, nG3, $0D, nRst, $17, nD3, $0D, nRst, $17, nG3, $09
	dc.b	nRst, nG2, nRst, nA2, nRst, nB2, nRst
	smpsPan             panCenter, $00
	smpsJump            Mumbos_Mountain_N64_Loop49

; FM2 Data
Mumbos_Mountain_N64_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $11

Mumbos_Mountain_N64_Jump02:
	smpsSetvoice        $02
	smpsAlterVol        $0A

Mumbos_Mountain_N64_Loop36:
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nBb4, $1B
	dc.b	nRst, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop36
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nG5, $04
	dc.b	nRst, $05, nFs5, $09, nG5, $04, nRst, $05, nA5, $09, nD5, $04
	dc.b	nRst, $05, nCs5, $09, nD5, $04, nRst, $05, nE5, $09, nD5, $04
	dc.b	nRst, $0E, nG4, $04, nA4, $05, nB4, $09

Mumbos_Mountain_N64_Loop37:
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nBb4, $1B
	dc.b	nRst, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop37
	dc.b	nG5, $04, nRst, $05, nFs5, $04, nRst, $05, nG5, $04, nRst, $05
	dc.b	nAb5, $04, nRst, $05, nA5, $04, nRst, $0E, nB5, $04, nRst, $0E
	dc.b	nC6, $04, nRst, $09, nEb6, $05, nE6, $04, nRst, $0E, nC6, $09
	dc.b	nRst
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nG5, $04, nA5, $05, nB5, $09

Mumbos_Mountain_N64_Loop39:
	dc.b	nC6, $0D, nEb6, $05, nE6, $12

Mumbos_Mountain_N64_Loop38:
	dc.b	nBb5, $04, nCs6, $05
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop38
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop39
	dc.b	nC6, $0D, nEb6, $05, nE6, $12, nG6, $09, nFs6, nG6, nA6, nD6
	dc.b	nCs6, nD6, nE6, nD6, $0D, nRst, $05, nG5, $04, nA5, $05, nB5
	dc.b	$09

Mumbos_Mountain_N64_Loop3B:
	dc.b	nC6, $0D, nEb6, $05, nE6, $12

Mumbos_Mountain_N64_Loop3A:
	dc.b	nBb5, $04, nCs6, $05
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop3A
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop3B
	dc.b	nG6, $09, nFs6, nG6, nAb6, nA6, $12, nB6, nC7, $0D, nEb7, $05
	dc.b	nE7, $12, nC7, $24
	smpsSetvoice        $04
	dc.b	nAb3, $12, nCs4, $09, nC4, nCs4, $12, nCs4, $04, nEb4, $05, nF4
	dc.b	$09, nG4, $12, nG4, $09, nA4, nB4, nC5, nB4, nA4, nG4, nF4
	dc.b	nE4, $12, nE4, nC4, nCs4, nBb3, $09, nB3, nCs4, $12, nFs4, nFs4
	dc.b	nB4, $04, nBb4, $05, nB4, $09, nCs5, nB4, nBb4, nB4, nA4, nG4
	dc.b	nF4, $12, nF4, nC4, nD4, nD4, $09, nCs4, nD4, $12, nFs4, $09
	dc.b	nF4, nFs4, $12, nA4, $09, nAb4, nA4, $12, nD5, nD5, $09, nD5
	dc.b	nB4, $12, nG4, nF4, nB4, $09, nB4, nG4, $12, nF4, nD4
	smpsSetvoice        $02
	smpsAlterVol        $02

Mumbos_Mountain_N64_Loop3C:
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nBb4, $1B
	dc.b	nRst, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop3C
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nG5, $04
	dc.b	nRst, $05, nFs5, $09, nG5, $04, nRst, $05, nA5, $09, nD5, $04
	dc.b	nRst, $05, nCs5, $09, nD5, $04, nRst, $05, nE5, $09, nD5, $04
	dc.b	nRst, $0E, nG4, $04, nA4, $05, nB4, $09

Mumbos_Mountain_N64_Loop3D:
	dc.b	nC5, $04, nRst, $09, nEb5, $05, nE5, $04, nRst, $0E, nBb4, $1B
	dc.b	nRst, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop3D
	dc.b	nG5, $04, nRst, $05, nFs5, $04, nRst, $05, nG5, $04, nRst, $05
	dc.b	nAb5, $04, nRst, $05, nA5, $04, nRst, $0E, nB5, $04, nRst, $0E
	dc.b	nC6, $04, nRst, $09, nEb6, $05, nE6, $04, nRst, $0E, nC6, $09
	dc.b	nRst, $1B
	smpsSetvoice        $03
	smpsAlterVol        $06

Mumbos_Mountain_N64_Loop3E:
	dc.b	nC6, $09, nF5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop3E

Mumbos_Mountain_N64_Loop3F:
	dc.b	nD6, nG5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop3F

Mumbos_Mountain_N64_Loop40:
	dc.b	nC6, nG5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop40

Mumbos_Mountain_N64_Loop41:
	dc.b	nC6, nF5
	smpsLoop            $00, $07, Mumbos_Mountain_N64_Loop41
	dc.b	nC6, nG5

Mumbos_Mountain_N64_Loop42:
	dc.b	nC6, nF5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop42

Mumbos_Mountain_N64_Loop43:
	dc.b	nEb6, nFs5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop43

Mumbos_Mountain_N64_Loop44:
	dc.b	nD6, nG5
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop44

Mumbos_Mountain_N64_Loop45:
	dc.b	nC6, nG5
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop45

Mumbos_Mountain_N64_Loop46:
	dc.b	nC6, nF5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop46
	smpsSetvoice        $02
	smpsAlterVol        $FA
	dc.b	nF5, $16, nRst, $0E, nC5, $16, nRst, $0E, nA4, $16, nRst, $0E
	dc.b	nF4, $16, nRst, $0E, nG4, $12, nRst, $09, nBb4, $04, nRst, $05
	dc.b	nD5, $04, nRst, $0E, nD5, $09, nRst, nD5, $24, nRst, $12, nG4
	dc.b	$04, nRst, $05, nF4, $04, nRst, $05, nE4, $12, nRst, $09, nG4
	dc.b	$04, nRst, $05, nBb4, $04, nRst, $0E, nBb4, $04, nRst, $0E, nBb4
	dc.b	$1B, nRst, $09, nG4, $04, nRst, $0E, nE4, $09, nRst, nF4, $12
	dc.b	nRst, $09, nA4, $04, nRst, $05

Mumbos_Mountain_N64_Loop47:
	dc.b	nC5, $04, nRst, $0E
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop47
	dc.b	nD5, $04, nRst, $0E, nE5, $04, nRst, $0E, nF5, $16, nRst, $0E
	dc.b	nC5, $16, nRst, $0E, nA4, $16, nRst, $0E, nF4, $16, nRst, $0E
	dc.b	nFs4, $12, nRst, $09, nB4, $04, nRst, $05, nEb5, $04, nRst, $0E
	dc.b	nEb5, $04, nRst, $0E, nEb5, $24, nRst, $12, nEb5, $04, nRst, $05
	dc.b	nCs5, $04, nRst, $05, nB4, $12, nRst, $09, nC5, $04, nRst, $05
	dc.b	nD5, $04, nRst, $0E, nB4, $09, nRst, nC5, $0D, nRst, $05, nG4
	dc.b	$09, nRst, nC5, nRst, nE5, nRst, nF5, nRst, nE5, $04, nRst, $05
	dc.b	nD5, $04, nRst, $05, nC5, $04, nRst, $05, nBb4, $04, nRst, $05
	dc.b	nA4, $04, nRst, $05, nG4, $04, nRst, $05, nF4, $09, nRst, nA4
	dc.b	$04, nRst, $0E, nF4, $09, nRst, $1B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nAb5, $12, nCs6, $09, nC6, nCs6, $12, nCs6, $04, nEb6, $05, nF6
	dc.b	$09, nG6, $12, nG6, $09, nA6, nB6, nC7, nB6, nA6, nG6, nF6
	dc.b	nE6, $12, nE6, nC6, nCs6, nBb5, $09, nB5, nCs6, $12, nFs6, nFs6
	dc.b	nB6, $04, nBb6, $05, nB6, $09, nCs7, nB6, nBb6, nB6, nA6, nG6
	dc.b	nF6, $12, nF6, nC6, nD6, nD6, $09, nCs6, nD6, $12, nFs6, $09
	dc.b	nF6, nFs6, $12, nA6, $09, nAb6, nA6, $12, nD7, nD7, $09, nD7
	dc.b	nB6, $12, nG6, nF6, nB6, $09, nB6, nG6, $12, nF6, nD6
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	smpsJump            Mumbos_Mountain_N64_Jump02

; FM3 Data
Mumbos_Mountain_N64_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $0A
	smpsPan             panCenter, $00

Mumbos_Mountain_N64_Loop1D:
	dc.b	nC4, $09, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nG3
	dc.b	$09, nRst, nD5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop1D

Mumbos_Mountain_N64_Loop1E:
	dc.b	nC4, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3, $09
	dc.b	nRst, nCs5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop1E
	dc.b	nC4, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nG3, $09
	dc.b	nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nD4, $09, nRst
	dc.b	nFs5, $04, nRst, $05, nFs5, $04, nRst, $05, nG3, $09, nRst, nF5
	dc.b	$04, nRst, $05, nF5, $04, nRst, $05

Mumbos_Mountain_N64_Loop1F:
	dc.b	nC4, $09, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3
	dc.b	$09, nRst, nCs5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop1F
	dc.b	nG3, nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nG3, $09
	dc.b	nRst, nD5, $04, nRst, $0E, nE5, $09, nRst, nB4, nRst, nE5, nRst
	dc.b	nF5, $12

Mumbos_Mountain_N64_Loop20:
	dc.b	nC4, $09, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3
	dc.b	$09, nRst, nCs5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop20
	dc.b	nC4, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nG3, $09
	dc.b	nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nD4, $09, nRst
	dc.b	nFs5, $04, nRst, $05, nFs5, $04, nRst, $05, nG3, $09, nRst, nF5
	dc.b	$04, nRst, $05, nF5, $04, nRst, $05

Mumbos_Mountain_N64_Loop21:
	dc.b	nC4, $09, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3
	dc.b	$09, nRst, nCs5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop21
	dc.b	nG3, nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nG3, $09
	dc.b	nRst, nD5, $04, nRst, $0E, nE5, $09, nRst, nB4, nRst, nE5, nRst
	dc.b	nF5, $12, nCs4, $09, nRst, nAb5, $04, nRst, $05, nAb5, $04, nRst
	dc.b	$05, nAb4, $09, nRst, nAb5, $04, nRst, $0E, nG4, $09, nRst, nB5
	dc.b	$04, nRst, $05, nB5, $04, nRst, $05, nD4, $09, nRst, nB5, nRst
	dc.b	nC4, nRst, nG5, $04, nRst, $05, nG5, $04, nRst, $05, nG4, $09
	dc.b	nRst, nG5, nRst, nFs4, nRst, nBb5, $04, nRst, $05, nBb5, $04, nRst
	dc.b	$05, nCs4, $09, nRst, nBb5, nRst, nB3, nRst, nFs5, $04, nRst, $05
	dc.b	nFs5, $04, nRst, $05, nFs4, $09, nRst, nFs5, nRst, nF4, nRst, nA5
	dc.b	$04, nRst, $05, nA5, $04, nRst, $05, nC4, $09

Mumbos_Mountain_N64_Loop22:
	dc.b	nRst, nA5, nRst, nD4, nRst, nA5, $04, nRst, $05, nA5, $04, nRst
	dc.b	$05, nFs4, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop22
	dc.b	nRst, nA5, nRst, nG4, nRst, nB5, $04, nRst, $05, nB5, $04, nRst
	dc.b	$05, nD4, $09, nRst, nB5, nRst, nG4, nRst, nB5, $04, nRst, $05
	dc.b	nB5, $04, nRst, $05, nA3, $09, nRst, nB5

Mumbos_Mountain_N64_Loop23:
	dc.b	nRst, nC4, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3
	dc.b	$09, nRst, nCs5
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop23
	dc.b	nRst, nC4, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nG3
	dc.b	$09, nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nD4, $09
	dc.b	nRst, nFs5, $04, nRst, $05, nFs5, $04, nRst, $05, nG3, $09, nRst
	dc.b	nF5, $04, nRst, $05, nF5, $04, nRst, $05

Mumbos_Mountain_N64_Loop24:
	dc.b	nC4, $09, nRst, nE5, $04, nRst, $05, nE5, $04, nRst, $05, nFs3
	dc.b	$09, nRst, nCs5, nRst
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop24
	dc.b	nG3, nRst, nD5, $04, nRst, $05, nD5, $04, nRst, $05, nG3, $09
	dc.b	nRst, nD5, $04, nRst, $0E, nE5, $09, nRst, nB4, nRst, nE5, nRst
	dc.b	nF5, $12
	smpsSetvoice        $03
	smpsAlterVol        $06

Mumbos_Mountain_N64_Loop25:
	dc.b	nA5, $09, nRst
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop25

Mumbos_Mountain_N64_Loop26:
	dc.b	nBb5, nRst
	smpsLoop            $00, $10, Mumbos_Mountain_N64_Loop26

Mumbos_Mountain_N64_Loop27:
	dc.b	nA5, nRst
	smpsLoop            $00, $07, Mumbos_Mountain_N64_Loop27
	dc.b	nBb5

Mumbos_Mountain_N64_Loop28:
	dc.b	nRst, nA5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop28

Mumbos_Mountain_N64_Loop29:
	dc.b	nRst, nB5
	smpsLoop            $00, $0C, Mumbos_Mountain_N64_Loop29

Mumbos_Mountain_N64_Loop2A:
	dc.b	nRst, nBb5
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop2A

Mumbos_Mountain_N64_Loop2B:
	dc.b	nRst, nA5
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop2B
	dc.b	nRst
	smpsSetvoice        $04
	smpsAlterVol        $FC

Mumbos_Mountain_N64_Loop2C:
	dc.b	nC5, nF4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop2C

Mumbos_Mountain_N64_Loop2D:
	dc.b	nD5, nG4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop2D

Mumbos_Mountain_N64_Loop2E:
	dc.b	nC5, nG4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop2E

Mumbos_Mountain_N64_Loop2F:
	dc.b	nC5, nF4
	smpsLoop            $00, $07, Mumbos_Mountain_N64_Loop2F
	dc.b	nC5, nG4

Mumbos_Mountain_N64_Loop30:
	dc.b	nC5, nF4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop30

Mumbos_Mountain_N64_Loop31:
	dc.b	nEb5, nFs4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop31

Mumbos_Mountain_N64_Loop32:
	dc.b	nD5, nG4
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop32

Mumbos_Mountain_N64_Loop33:
	dc.b	nC5, nG4
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop33

Mumbos_Mountain_N64_Loop34:
	dc.b	nC5, nF4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop34
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nCs4, nRst, nAb5, $04, nRst, $05, nAb5, $04, nRst, $05, nAb4, $09
	dc.b	nRst, nAb5, $04, nRst, $0E, nG4, $09, nRst, nB5, $04, nRst, $05
	dc.b	nB5, $04, nRst, $05, nD4, $09, nRst, nB5, nRst, nC4, nRst, nG5
	dc.b	$04, nRst, $05, nG5, $04, nRst, $05, nG4, $09, nRst, nG5, nRst
	dc.b	nFs4, nRst, nBb5, $04, nRst, $05, nBb5, $04, nRst, $05, nCs4, $09
	dc.b	nRst, nBb5, nRst, nB3, nRst, nFs5, $04, nRst, $05, nFs5, $04, nRst
	dc.b	$05, nFs4, $09, nRst, nFs5, nRst, nF4, nRst, nA5, $04, nRst, $05
	dc.b	nA5, $04, nRst, $05, nC4, $09

Mumbos_Mountain_N64_Loop35:
	dc.b	nRst, nA5, nRst, nD4, nRst, nA5, $04, nRst, $05, nA5, $04, nRst
	dc.b	$05, nFs4, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop35
	dc.b	nRst, nA5, nRst, nG4, nRst, nB5, $04, nRst, $05, nB5, $04, nRst
	dc.b	$05, nD4, $09, nRst, nB5, nRst, nG4, nRst, nB5, $04, nRst, $05
	dc.b	nB5, $04, nRst, $05, nA3, $09, nRst, nB5, nRst
	smpsPan             panCenter, $00
	smpsJump            Mumbos_Mountain_N64_Loop1E

; FM4 Data
Mumbos_Mountain_N64_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $12
	smpsSetvoice        $01
	smpsAlterVol        $0A
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nB4, $09, nRst, $1B
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nB4, $09, nRst, $09

Mumbos_Mountain_N64_Loop0B:
	dc.b	nRst, $12

Mumbos_Mountain_N64_Loop08:
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nBb4, $09, nRst, $1B
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop08
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nB4, $04, nRst, $05
	dc.b	nB4, $04

Mumbos_Mountain_N64_Loop09:
	dc.b	nRst, $17, nD5, $04, nRst, $05, nD5, $04
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop09
	dc.b	nRst, $17

Mumbos_Mountain_N64_Loop0A:
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nBb4, $09, nRst, $1B
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop0A
	dc.b	nB4, $04, nRst, $05, nB4, $04, nRst, $17, nB4, $04, nRst, $0E
	dc.b	nC4, $09, nRst, nG4, nRst, nC4, nRst, nD5, $12
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop0B
	dc.b	nRst, nF5, $04, nRst, $05, nF5, $04, nRst, $17, nF5, $04, nRst
	dc.b	$20, nG5, $04, nRst, $05, nG5, $04, nRst, $17, nG5, $09, nRst
	dc.b	$1B, nE5, $04, nRst, $05, nE5, $04, nRst, $17, nE5, $09, nRst
	dc.b	$1B, nFs5, $04, nRst, $05, nFs5, $04, nRst, $17, nFs5, $09, nRst
	dc.b	$1B, nEb5, $04, nRst, $05, nEb5, $04, nRst, $17, nEb5, $09, nRst
	dc.b	$1B, nF5, $04, nRst, $05, nF5, $04, nRst, $17, nF5, $09

Mumbos_Mountain_N64_Loop0C:
	dc.b	nRst, $1B, nFs5, $04, nRst, $05, nFs5, $04, nRst, $17, nFs5, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop0C

Mumbos_Mountain_N64_Loop0D:
	dc.b	nRst, $1B, nG5, $04, nRst, $05, nG5, $04, nRst, $17, nG5, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop0D

Mumbos_Mountain_N64_Loop0E:
	dc.b	nRst, $1B, nC5, $04, nRst, $05, nC5, $04, nRst, $17, nBb4, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop0E
	dc.b	nRst, $1B, nC5, $04, nRst, $05, nC5, $04, nRst, $17, nB4, $04
	dc.b	nRst, $05, nB4, $04

Mumbos_Mountain_N64_Loop0F:
	dc.b	nRst, $17, nD5, $04, nRst, $05, nD5, $04
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop0F
	dc.b	nRst, $17

Mumbos_Mountain_N64_Loop10:
	dc.b	nC5, $04, nRst, $05, nC5, $04, nRst, $17, nBb4, $09, nRst, $1B
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop10
	dc.b	nB4, $04, nRst, $05, nB4, $04, nRst, $17, nB4, $04, nRst, $0E
	dc.b	nC4, $09, nRst, nG4, nRst, nC4, nRst, nD5, $12, nRst, $7F, $7F
	dc.b	$7F, $7F, $44

Mumbos_Mountain_N64_Loop11:
	dc.b	nF4, $0D, nRst, $17, nC4, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop11

Mumbos_Mountain_N64_Loop12:
	dc.b	nB3, $0D, nRst, $17, nFs4, $0D, nRst, $17
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop12
	dc.b	nG4, $0D, nRst, $17, nD4, $0D, nRst, $17, nC4, $0D, nRst, $17
	dc.b	nE4, $0D

Mumbos_Mountain_N64_Loop13:
	dc.b	nRst, $17, nF4, $0D, nRst, $17, nC4, $0D
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop13
	dc.b	nRst, $17
	smpsSetvoice        $04
	smpsAlterVol        $02

Mumbos_Mountain_N64_Loop14:
	dc.b	nA4, $09, nRst
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14

Mumbos_Mountain_N64_Loop15:
	dc.b	nBb4, nRst
	smpsLoop            $00, $10, Mumbos_Mountain_N64_Loop15

Mumbos_Mountain_N64_Loop16:
	dc.b	nA4, nRst
	smpsLoop            $00, $07, Mumbos_Mountain_N64_Loop16
	dc.b	nBb4

Mumbos_Mountain_N64_Loop17:
	dc.b	nRst, nA4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17

Mumbos_Mountain_N64_Loop18:
	dc.b	nRst, nB4
	smpsLoop            $00, $0C, Mumbos_Mountain_N64_Loop18

Mumbos_Mountain_N64_Loop19:
	dc.b	nRst, nBb4
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop19

Mumbos_Mountain_N64_Loop1A:
	dc.b	nRst, nA4
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop1A
	dc.b	nRst, $1B
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nF5, $04, nRst, $05, nF5, $04, nRst, $17, nF5, $04, nRst, $20
	dc.b	nG5, $04, nRst, $05, nG5, $04, nRst, $17, nG5, $09, nRst, $1B
	dc.b	nE5, $04, nRst, $05, nE5, $04, nRst, $17, nE5, $09, nRst, $1B
	dc.b	nFs5, $04, nRst, $05, nFs5, $04, nRst, $17, nFs5, $09, nRst, $1B
	dc.b	nEb5, $04, nRst, $05, nEb5, $04, nRst, $17, nEb5, $09, nRst, $1B
	dc.b	nF5, $04, nRst, $05, nF5, $04, nRst, $17, nF5, $09

Mumbos_Mountain_N64_Loop1B:
	dc.b	nRst, $1B, nFs5, $04, nRst, $05, nFs5, $04, nRst, $17, nFs5, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop1B

Mumbos_Mountain_N64_Loop1C:
	dc.b	nRst, $1B, nG5, $04, nRst, $05, nG5, $04, nRst, $17, nG5, $09
	smpsLoop            $00, $02, Mumbos_Mountain_N64_Loop1C
	dc.b	nRst
	smpsPan             panCenter, $00
	smpsJump            Mumbos_Mountain_N64_Loop0B

; FM5 Data
Mumbos_Mountain_N64_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $11

Mumbos_Mountain_N64_Jump01:
	dc.b	nRst

Mumbos_Mountain_N64_Loop02:
	dc.b	$7F
	smpsLoop            $00, $0E, Mumbos_Mountain_N64_Loop02
	dc.b	$4C
	smpsSetvoice        $03
	smpsAlterVol        $0C
	dc.b	nG5, $04, nA5, $05, nB5, $09

Mumbos_Mountain_N64_Loop04:
	dc.b	nC6, $0D, nEb6, $05, nE6, $12

Mumbos_Mountain_N64_Loop03:
	dc.b	nBb5, $04, nCs6, $05
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop03
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop04
	dc.b	nC6, $0D, nEb6, $05, nE6, $12, nG6, $09, nFs6, nG6, nA6, nD6
	dc.b	nCs6, nD6, nE6, nD6, $0D, nRst, $05, nG5, $04, nA5, $05, nB5
	dc.b	$09

Mumbos_Mountain_N64_Loop06:
	dc.b	nC6, $0D, nEb6, $05, nE6, $12

Mumbos_Mountain_N64_Loop05:
	dc.b	nBb5, $04, nCs6, $05
	smpsLoop            $00, $04, Mumbos_Mountain_N64_Loop05
	smpsLoop            $01, $02, Mumbos_Mountain_N64_Loop06
	dc.b	nG6, $09, nFs6, nG6, nAb6, nA6, $12, nB6, nC7, $0D, nEb7, $05
	dc.b	nE7, $12, nC7

Mumbos_Mountain_N64_Loop07:
	dc.b	$7F, smpsNoAttack
	smpsLoop            $00, $09, Mumbos_Mountain_N64_Loop07
	dc.b	$51, nF5, $1B, nG5, $09, nA5, nAb5, nA5, nAb5, nA5, $12, nF5
	dc.b	nG5, $09, nFs5, nG5, nFs5, nG5, $12, nD5, nG5, $1B, nF5, $09
	dc.b	nE5, $12, nD5, nC5, $36, nC5, $09, nD5, nE5, $12, nE5, nD5
	dc.b	nC5, nF5, nF5, $09, nE5, nF5, $12, nG5, nA5, nA5, nA5, nG5
	dc.b	nF5, $24, nF5, $1B, nG5, $09, nA5, nAb5, nA5, nAb5, nA5, $12
	dc.b	nF5, nFs5, nB5, $09, nBb5, nB5, nBb5, nB5, nBb5, nB5, $12, nFs5
	dc.b	nB5, $24, nG5, $12, nB5, $09, nBb5, nB5, nBb5, nB5, $12, nG5
	dc.b	nC6, $09, nB5, nC6, nB5, nC6, $12, nF5, nF6, $09, nF6, nF6
	dc.b	$12, nE6, nF6, $09, nC6, nA5, nC6, nF6, $24, nRst, $7F, $7F
	dc.b	$7F, $7F, $7F, $55
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	smpsJump            Mumbos_Mountain_N64_Jump01

; PSG3 Data
Mumbos_Mountain_N64_PSG3:
	smpsPSGAlterVol     $06
	smpsPSGform         $E7

Mumbos_Mountain_N64_Loop54:
	smpsDetune          $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop54
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop55:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop55
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop56:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop56
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop57:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop57
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop58:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop58
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop59:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop59
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5B
	smpsDetune          $01
	dc.b	nMaxPSG

Mumbos_Mountain_N64_Jump03:
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop5F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop5F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop60:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop60
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop61:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop61
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop62:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop62
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop63:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop63
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop64:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop64
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop65:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop65
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop66:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop66
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop67:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop67
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop68:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop68
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop69:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop69
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop6F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop6F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop70:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop70
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop71:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop71
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop72:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop72
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop73:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop73
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop74:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop74
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop75:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop75
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop76:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop76
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop77:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop77
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop78:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop78
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop79:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop79
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop7F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop7F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop80:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop80
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop81:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop81
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop82:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop82
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop83:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop83
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop84:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop84
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop85:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop85
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop86:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop86
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop87:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop87
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop88:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop88
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop89:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop89
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop8F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop8F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop90:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop90
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop91:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop91
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop92:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop92
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop93:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop93
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop94:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop94
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop95:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop95
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop96:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop96
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop97:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop97
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop98:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop98
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop99:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop99
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop9F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop9F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopA9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopA9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAD:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAD
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopAF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopAF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopB9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopB9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBD:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBD
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopBF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopBF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopC9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopC9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCD:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCD
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopCF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopCF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopD9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopD9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDD:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDD
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopDF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopDF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopE9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopE9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopEA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopEA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopEB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopEB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopEC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopEC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopED:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopED
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopEE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopEE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopEF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopEF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF0:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF0
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF1:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF1
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF2:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF2
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF3:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF3
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF4:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF4
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF5:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF5
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF6:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF6
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF7:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF7
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF8:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF8
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopF9:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopF9
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFA:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFA
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFB:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFB
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFC:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFC
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFD:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFD
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFE:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFE
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_LoopFF:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_LoopFF
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop100:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop100
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop101:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop101
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop102:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop102
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop103:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop103
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop104:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop104
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop105:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop105
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop106:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop106
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop107:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop107
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop108:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop108
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop109:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop109
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop10F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop10F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop110:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop110
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop111:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop111
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop112:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop112
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop113:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop113
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop114:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop114
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop115:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop115
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop116:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop116
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop117:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop117
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop118:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop118
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop119:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop119
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop11F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop11F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop120:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop120
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop121:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop121
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop122:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop122
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop123:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop123
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop124:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop124
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop125:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop125
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop126:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop126
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop127:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop127
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop128:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop128
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop129:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop129
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop12F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop12F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop130:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop130
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop131:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop131
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop132:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop132
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop133:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop133
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop134:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop134
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop135:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop135
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop136:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop136
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop137:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop137
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop138:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop138
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop139:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop139
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop13F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop13F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop140:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop140
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop141:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop141
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop142:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop142
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop143:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop143
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop144:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop144
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop145:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop145
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop146:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop146
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop147:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop147
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop148:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop148
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop149:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop149
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop14F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop14F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop150:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop150
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop151:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop151
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop152:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop152
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop153:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop153
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop154:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop154
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop155:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop155
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop156:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop156
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop157:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop157
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop158:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop158
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop159:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop159
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop15F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop15F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop160:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop160
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop161:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop161
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop162:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop162
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop163:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop163
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop164:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop164
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop165:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop165
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop166:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop166
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop167:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop167
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop168:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop168
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop169:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop169
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop16F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop16F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop170:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop170
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop171:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop171
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop172:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop172
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop173:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop173
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop174:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop174
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop175:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop175
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop176:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop176
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop177:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop177
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop178:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop178
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop179:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop179
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17C:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17C
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17D:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17D
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17E:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17E
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop17F:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop17F
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop180:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop180
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop181:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop181
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop182:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop182
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop183:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop183
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop184:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop184
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop185:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop185
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop186:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop186
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop187:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop187
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop188:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop188
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop189:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop189
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop18A:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop18A
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Mumbos_Mountain_N64_Loop18B:
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Mumbos_Mountain_N64_Loop18B
	smpsDetune          $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsJump            Mumbos_Mountain_N64_Jump03

; DAC Data
Mumbos_Mountain_N64_DAC:
	dc.b	dKick, $12

Mumbos_Mountain_N64_Loop00:
	dc.b	dSnare, $09, dSnare, dKick, $12, dSnare
	smpsLoop            $00, $02, Mumbos_Mountain_N64_DAC

Mumbos_Mountain_N64_Jump00:
	dc.b	dKick
	smpsLoop            $01, $21, Mumbos_Mountain_N64_Loop00
	dc.b	dSnare, $09, dSnare, dKick, $12, dSnare, dKick, dSnare, $09, dSnare, dKick, $12
	dc.b	dSnare

Mumbos_Mountain_N64_Loop01:
	dc.b	$24, dSnare, $09, dSnare, $1B
	smpsLoop            $00, $0A, Mumbos_Mountain_N64_Loop01
	dc.b	dSnare, $12
	smpsJump            Mumbos_Mountain_N64_Jump00

Mumbos_Mountain_N64_Voices:
;	Voice $00
;	$18
;	$32, $30, $30, $30, 	$9E, $DC, $1C, $9A, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$B6, $B6, $36, $26, 	$2C, $22, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $00, $02
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1A, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $01
;	$38
;	$06, $05, $00, $02, 	$15, $1E, $10, $11, 	$17, $11, $00, $0F
;	$00, $00, $00, $00, 	$89, $29, $09, $1A, 	$20, $22, $17, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $00, $05, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $10, $1E, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $00, $11, $17
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $02, $08
	smpsVcReleaseRate   $0A, $09, $09, $09
	smpsVcTotalLevel    $00, $17, $22, $20

;	Voice $02
;	$3B
;	$02, $03, $04, $01, 	$5F, $54, $54, $54, 	$07, $0A, $0A, $0F
;	$00, $00, $00, $00, 	$05, $5B, $A6, $07, 	$24, $32, $24, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $04, $03, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $14, $14, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0A, $0A, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $0A, $05, $00
	smpsVcReleaseRate   $07, $06, $0B, $05
	smpsVcTotalLevel    $00, $24, $32, $24

;	Voice $03
;	$3C
;	$30, $70, $31, $34, 	$1F, $52, $5F, $5D, 	$16, $0D, $0F, $0D
;	$01, $01, $00, $01, 	$F3, $E5, $F3, $E5, 	$18, $00, $20, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $04, $01, $00, $00
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1D, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0F, $0D, $16
	smpsVcDecayRate2    $01, $00, $01, $01
	smpsVcDecayLevel    $0E, $0F, $0E, $0F
	smpsVcReleaseRate   $05, $03, $05, $03
	smpsVcTotalLevel    $00, $20, $00, $18

;	Voice $04
;	$38
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $1F, 	$2F, $2F, $2F, $1F, 	$24, $2D, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $1F, $04, $04, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

