; Variables (v) and Flags (f)

; Set this to 0 for loading blocks from RAM (fastest, saves $17FC bytes of RAM).
; Set this to 1 for kosinski compressed blocks (fast, takes up $1800 bytes of RAM for the buffer).
; Set this to 2 for enigma compressed blocks (slow, saves the most ROM space and takes up $1800 bytes of RAM for the buffer).
BlockCompression = 0

; Set this to 0 for loading chunks from RAM (fastest, saves $7FFC bytes of RAM).
; Set this to 1 for kosinski compressed blocks (fast, takes up $8000 bytes of RAM for the buffer).
ChunkCompression = 0

	if ChunkCompression=0
v_128x128	= $FFFFB000	; 128x128 tile mappings (4 bytes)
	else
v_128x128	=   $FF0000	; 128x128 tile mappings ($8000 bytes)
	endc
v_lvllayoutfg:	= $FFFF8000	; level layout ROM address (4 bytes)
v_lvllayoutbg:	= $FFFF8004	; background layout ROM address (4 bytes)
v_bgscroll_buffer	= $FFFFA800	; background scroll buffer ($200 bytes)
v_ngfx_buffer	= $FFFFAA00	; Nemesis graphics decompression buffer ($200 bytes)
v_spritequeue	= $FFFFAC00	; sprite display queue, in order of priority ($400 bytes)
	if BlockCompression=0
v_16x16	= $FFFFB004	; 16x16 tile mappings (4 bytes)
	else
v_16x16	= $FFFFB000	; 16x16 tile mappings ($1800 bytes)
	endc
VDP_Command_Buffer:    = $FFFFC800

VDP_Command_Buffer_Slot:= $FFFFC8FC

v_tracksonic	= $FFFFCB00	; position tracking data for Sonic ($100 bytes)
v_hscrolltablebuffer	= $FFFFCC00	; scrolling table data (actually $380 bytes, but $400 is reserved for it)
v_objspace	= $FFFFD000	; object variable space ($40 bytes per object) ($2000 bytes)
v_lvlobjspace	= $FFFFD800	; level object variable space ($1800 bytes)

v_snddriver_ram  = $FFFFF000	; start of RAM for the sound driver data ($5C0 bytes)

; =================================================================================
; From here on, until otherwise stated, all offsets are relative to v_snddriver_ram
; =================================================================================
	rsset	$000
v_startofvariables:	= *
v_sndprio:		rs.b 1	; sound priority (priority of new music/SFX must be higher or equal to this value or it won't play; bit 7 of priority being set prevents this value from changing)
v_main_tempo:		rs.b 1	; Used for music only
v_main_tempo_timeout:	rs.b 1	; Counts down to zero; when zero, resets to next value and delays song by 1 frame
f_pausemusic:		rs.b 1	; flag set to stop music when paused
v_fadeout_counter:	rs.b 1
f_palupdatecount:	rs.b 1	; Used for fixing the tempo in pal mode

v_fadeout_delay:	rs.b 1
			rs.b 1	; unused
f_updating_dac:		rs.b 1	; $80 if updating DAC, $00 otherwise
v_sound_id:		rs.b 1	; sound or music copied from below
v_soundqueue0:		rs.b 1	; sound or music to play
v_soundqueue1:		rs.b 1	; special sound to play
v_soundqueue2:		rs.b 1	; unused
v_soundqueue3:		rs.b 1	; unused

f_voice_selector:	rs.b 10	; $00 = use music voice pointer; $40 = use special voice pointer; $80 = use track voice pointer

v_voice_ptr:		rs.l 1	; voice data pointer (4 bytes)

v_special_voice_ptr:	rs.l 1	; voice data pointer for special SFX ($D0-$DF) (4 bytes)

f_fadein_flag:		rs.b 1	; Flag for fade in
v_fadein_delay:		rs.b 1
v_fadein_counter:	rs.b 1	; Timer for fade in/out
f_1up_playing:		rs.b 1	; flag indicating 1-up song is playing
v_tempo_mod:		rs.b 1	; music - tempo modifier
v_speeduptempo:		rs.b 1	; music - tempo modifier with speed shoes
f_speedup:		rs.b 1	; flag indicating whether speed shoes tempo is on ($80) or off ($00)
v_ring_speaker:		rs.b 1	; which speaker the "ring" sound is played in (00 = right; 01 = left)
f_push_playing:		rs.b 1	; if set, prevents further push sounds from playing
			rs.b 1	; 29
			rs.b 1	; 2A
			rs.b 1	; 2B
			rs.b 1	; 2C
			rs.b 1	; 2D
			rs.b 1	; 2E
v_endofvariables:	rs.b 1	; 2F

        rsreset

        rsset $030

v_music_track_ram:	rs.b 1

v_music_fmdac_tracks:	= v_music_track_ram+TrackSz*0
v_music_dac_track:	= v_music_fmdac_tracks+TrackSz*0
v_music_fm_tracks:	= v_music_fmdac_tracks+TrackSz*1
v_music_fm1_track:	= v_music_fm_tracks+TrackSz*0
v_music_fm2_track:	= v_music_fm_tracks+TrackSz*1
v_music_fm3_track:	= v_music_fm_tracks+TrackSz*2
v_music_fm4_track:	= v_music_fm_tracks+TrackSz*3
v_music_fm5_track:	= v_music_fm_tracks+TrackSz*4
v_music_fm6_track:	= v_music_fm_tracks+TrackSz*5
v_music_fm_tracks_end:	= v_music_fm_tracks+TrackSz*6
v_music_fmdac_tracks_end:	= v_music_fm_tracks_end
v_music_psg_tracks:	= v_music_fmdac_tracks_end
v_music_psg1_track:	= v_music_psg_tracks+TrackSz*0
v_music_psg2_track:	= v_music_psg_tracks+TrackSz*1
v_music_psg3_track:	= v_music_psg_tracks+TrackSz*2
v_music_psg_tracks_end:	= v_music_psg_tracks+TrackSz*3
v_music_track_ram_end:	= v_music_psg_tracks_end

v_sfx_track_ram:	= v_music_track_ram_end	; Start of SFX RAM, straight after the end of music RAM

v_sfx_fm_tracks:	= v_sfx_track_ram+TrackSz*0
v_sfx_fm3_track:	= v_sfx_fm_tracks+TrackSz*0
v_sfx_fm4_track:	= v_sfx_fm_tracks+TrackSz*1
v_sfx_fm5_track:	= v_sfx_fm_tracks+TrackSz*2
v_sfx_fm_tracks_end:	= v_sfx_fm_tracks+TrackSz*3
v_sfx_psg_tracks:	= v_sfx_fm_tracks_end
v_sfx_psg1_track:	= v_sfx_psg_tracks+TrackSz*0
v_sfx_psg2_track:	= v_sfx_psg_tracks+TrackSz*1
v_sfx_psg3_track:	= v_sfx_psg_tracks+TrackSz*2
v_sfx_psg_tracks_end:	= v_sfx_psg_tracks+TrackSz*3
v_sfx_track_ram_end:	= v_sfx_psg_tracks_end

v_spcsfx_track_ram:	= v_sfx_track_ram_end	; Start of special SFX RAM, straight after the end of SFX RAM

v_spcsfx_fm4_track:	= v_spcsfx_track_ram+TrackSz*0
v_spcsfx_psg3_track:	= v_spcsfx_track_ram+TrackSz*1
v_spcsfx_track_ram_end:	= v_spcsfx_track_ram+TrackSz*2

v_1up_ram_copy:		= v_spcsfx_track_ram_end

        rsreset
; =================================================================================
; From here on, no longer relative to sound driver RAM
; =================================================================================

v_gamemode	= $FFFFF600	; game mode (00=Sega; 04=Title; 08=Demo; 0C=Level; 10=SS; 14=Cont; 18=End; 1C=Credit; +8C=PreLevel)
v_jpadhold2	= $FFFFF602	; joypad input - held, duplicate
v_jpadpress2	= $FFFFF603	; joypad input - pressed, duplicate
v_jpadhold1	= $FFFFF604	; joypad input - held
v_jpadpress1	= $FFFFF605	; joypad input - pressed

v_vdp_buffer1	= $FFFFF60C	; VDP instruction buffer (2 bytes)

v_demolength	= $FFFFF614	; the length of a demo in frames (2 bytes)
v_scrposy_vdp	= $FFFFF616	; screen position y (VDP) (2 bytes)
v_bgscrposy_vdp	= $FFFFF618	; background screen position y (VDP) (2 bytes)
v_scrposx_vdp	= $FFFFF61A	; screen position x (VDP) (2 bytes)
v_bgscrposx_vdp	= $FFFFF61C	; background screen position x (VDP) (2 bytes)
v_bg3scrposy_vdp	= $FFFFF61E	; (2 bytes)
v_bg3scrposx_vdp	= $FFFFF620	; (2 bytes)

v_hbla_hreg	= $FFFFF624	; VDP H.interrupt register buffer (8Axx) (2 bytes)
v_hbla_line	= $FFFFF625	; screen line where water starts and palette is changed by HBlank
v_pfade_start	= $FFFFF626	; palette fading - start position in bytes
v_pfade_size	= $FFFFF627	; palette fading - number of colours
v_vbla_routine	= $FFFFF62A	; VBlank - routine counter
v_spritecount	= $FFFFF62C	; number of sprites on-screen
v_pcyc_num	= $FFFFF632	; palette cycling - current reference number (2 bytes)
v_pcyc_time	= $FFFFF634	; palette cycling - time until the next change (2 bytes)
v_random	= $FFFFF636	; pseudo random number buffer (4 bytes)
f_pause	= $FFFFF63A	; flag set to pause the game (2 bytes)
v_vdp_buffer2	= $FFFFF640	; VDP instruction buffer (2 bytes)
f_hbla_pal	= $FFFFF644	; flag set to change palette during HBlank (0000 = no; 0001 = change) (2 bytes)
v_waterpos1	= $FFFFF646	; water height, actual (2 bytes)
v_waterpos2	= $FFFFF648	; water height, ignoring sway (2 bytes)
v_waterpos3	= $FFFFF64A	; water height, next target (2 bytes)
f_water	= $FFFFF64C	; flag set for water
v_wtr_routine	= $FFFFF64D	; water event - routine counter
f_wtr_state	= $FFFFF64E	; water palette state when water is above/below the screen (00 = partly/all dry; 01 = all underwater)

v_pal_buffer	= $FFFFF650	; palette data buffer (used for palette cycling) ($30 bytes)
v_plc_buffer	= $FFFFF680	; pattern load cues buffer (maximum $10 PLCs) ($60 bytes)
v_ptrnemcode	= $FFFFF6E0	; pointer for nemesis decompression code ($1502 or $150C) (4 bytes)

f_plc_execute	= $FFFFF6F8	; flag set for pattern load cue execution (2 bytes)

v_screenposx	= $FFFFF700	; screen position x (2 bytes)
v_screenposy	= $FFFFF704	; screen position y (2 bytes)
v_bgscreenposx	= $FFFFF708	; background screen position x (2 bytes)
v_bgscreenposy	= $FFFFF70C	; background screen position y (2 bytes)
v_bg2screenposx	= $FFFFF710	; 2 bytes
v_bg2screenposy	= $FFFFF714	; 2 bytes
v_bg3screenposx	= $FFFFF718	; 2 bytes
v_bg3screenposy	= $FFFFF71C	; 2 bytes

v_limitleft1	= $FFFFF720	; left level boundary (2 bytes)
v_limitright1	= $FFFFF722	; right level boundary (2 bytes)
v_limittop1	= $FFFFF724	; top level boundary (2 bytes)
v_limitbtm1	= $FFFFF726	; bottom level boundary (2 bytes)
v_limitleft2	= $FFFFF728	; left level boundary (2 bytes)
v_limitright2	= $FFFFF72A	; right level boundary (2 bytes)
v_limittop2	= $FFFFF72C	; top level boundary (2 bytes)
v_limitbtm2	= $FFFFF72E	; bottom level boundary (2 bytes)

v_limitleft3	= $FFFFF732	; left level boundary, at the end of an act (2 bytes)

v_scrshiftx	= $FFFFF73A	; x-screen shift (new - last) * $100
v_scrshifty	= $FFFFF73C	; y-screen shift (new - last) * $100

v_lookshift	= $FFFFF73E	; screen shift when Sonic looks up/down (2 bytes)
v_dle_routine	= $FFFFF742	; dynamic level event - routine counter
f_nobgscroll	= $FFFFF744	; flag set to cancel background scrolling

v_fg_xblock	= $FFFFF74A	; foreground x-block parity (for redraw)
v_fg_yblock	= $FFFFF74B	; foreground y-block parity (for redraw)
v_bg1_xblock	= $FFFFF74C	; background x-block parity (for redraw)
v_bg1_yblock	= $FFFFF74D	; background y-block parity (for redraw)
v_bg2_xblock	= $FFFFF74E	; secondary background x-block parity (for redraw)
v_bg2_yblock	= $FFFFF74F	; secondary background y-block parity (unused)
v_bg3_xblock	= $FFFFF750	; teritary background x-block parity (for redraw)
v_bg3_yblock	= $FFFFF751	; teritary background y-block parity (unused)

v_fg_scroll_flags	= $FFFFF754	; screen redraw flags for foreground
v_bg1_scroll_flags	= $FFFFF756	; screen redraw flags for background 1
v_bg2_scroll_flags	= $FFFFF758	; screen redraw flags for background 2
v_bg3_scroll_flags	= $FFFFF75A	; screen redraw flags for background 3
f_bgscrollvert	= $FFFFF75C	; flag for vertical background scrolling
v_sonspeedmax	= $FFFFF760	; Sonic's maximum speed (2 bytes)
v_sonspeedacc	= $FFFFF762	; Sonic's acceleration (2 bytes)
v_sonspeeddec	= $FFFFF764	; Sonic's deceleration (2 bytes)
v_sonframenum	= $FFFFF766	; frame to display for Sonic
f_sonframechg	= $FFFFF767	; flag set to update Sonic's sprite frame
v_anglebuffer	= $FFFFF768	; angle of collision block that Sonic or object is standing on

v_opl_routine	= $FFFFF76C	; ObjPosLoad - routine counter
v_opl_screen	= $FFFFF76E	; ObjPosLoad - screen variable
v_opl_data	= $FFFFF770	; ObjPosLoad - data buffer ($10 bytes)

v_ssangle	= $FFFFF780	; Special Stage angle (2 bytes)
v_ssrotate	= $FFFFF782	; Special Stage rotation speed (2 bytes)
v_btnpushtime1	= $FFFFF790	; button push duration - in level (2 bytes)
v_btnpushtime2	= $FFFFF792	; button push duration - in demo (2 bytes)
v_palchgspeed	= $FFFFF794	; palette fade/transition speed (0 is fastest) (2 bytes)
v_collindex	= $FFFFF796	; ROM address for collision index of current level (4 bytes)
v_palss_num	= $FFFFF79A	; palette cycling in Special Stage - reference number (2 bytes)
v_palss_time	= $FFFFF79C	; palette cycling in Special Stage - time until next change (2 bytes)

v_obj31ypos	= $FFFFF7A4	; y-position of object 31 (MZ stomper) (2 bytes)
v_bossstatus	= $FFFFF7A7	; status of boss and prison capsule (01 = boss defeated; 02 = prison opened)
v_trackpos	= $FFFFF7A8	; position tracking reference number (2 bytes)
v_trackbyte	= $FFFFF7A9	; low byte for position tracking
f_lockscreen	= $FFFFF7AA	; flag set to lock screen during bosses
v_lani0_frame	= $FFFFF7B0	; level graphics animation 0 - current frame
v_lani0_time	= $FFFFF7B1	; level graphics animation 0 - time until next frame
v_lani1_frame	= $FFFFF7B2	; level graphics animation 1 - current frame
v_lani1_time	= $FFFFF7B3	; level graphics animation 1 - time until next frame
v_lani2_frame	= $FFFFF7B4	; level graphics animation 2 - current frame
v_lani2_time	= $FFFFF7B5	; level graphics animation 2 - time until next frame
v_lani3_frame	= $FFFFF7B6	; level graphics animation 3 - current frame
v_lani3_time	= $FFFFF7B7	; level graphics animation 3 - time until next frame
v_lani4_frame	= $FFFFF7B8	; level graphics animation 4 - current frame
v_lani4_time	= $FFFFF7B9	; level graphics animation 4 - time until next frame
v_lani5_frame	= $FFFFF7BA	; level graphics animation 5 - current frame
v_lani5_time	= $FFFFF7BB	; level graphics animation 5 - time until next frame
v_gfxbigring	= $FFFFF7BE	; settings for giant ring graphics loading (2 bytes)
f_conveyrev	= $FFFFF7C0	; flag set to reverse conveyor belts in LZ/SBZ
v_obj63	= $FFFFF7C1	; object 63 (LZ/SBZ platforms) variables (6 bytes)
f_wtunnelmode	= $FFFFF7C7	; LZ water tunnel mode
f_playerctrl	= $FFFFF7C8	; Player control override flags (object ineraction, control enable)
f_wtunnelallow	= $FFFFF7C9	; LZ water tunnels (00 = enabled; 01 = disabled)
f_slidemode	= $FFFFF7CA	; LZ water slide mode
v_obj6B	= $FFFFF7CB	; object 6B (SBZ stomper) variable
f_lockctrl	= $FFFFF7CC	; flag set to lock controls during ending sequence
f_bigring	= $FFFFF7CD	; flag set when Sonic collects the giant ring
v_itembonus	= $FFFFF7D0	; item bonus from broken enemies, blocks etc. (2 bytes)
v_timebonus	= $FFFFF7D2	; time bonus at the end of an act (2 bytes)
v_ringbonus	= $FFFFF7D4	; ring bonus at the end of an act (2 bytes)
f_endactbonus	= $FFFFF7D6	; time/ring bonus update flag at the end of an act
v_sonicend	= $FFFFF7D7	; routine counter for Sonic in the ending sequence
v_lz_deform	= $FFFFF7D8	; LZ deformtaion offset, in units of $80 (2 bytes)
v_screenposx_coarse	= $FFFFF7DA	; (Camera_X_pos - 128) / 256 (2 bytes)
f_switch	= $FFFFF7E0	; flags set when Sonic stands on a switch ($10 bytes)
v_scroll_block_1_size	= $FFFFF7F0	; (2 bytes)
v_scroll_block_2_size	= $FFFFF7F2	; unused (2 bytes)
v_scroll_block_3_size	= $FFFFF7F4	; unused (2 bytes)
v_scroll_block_4_size	= $FFFFF7F6	; unused (2 bytes)

v_spritetablebuffer	= $FFFFF800 ; sprite table ($280 bytes, last $80 bytes are overwritten by v_pal_water_dup)
v_pal_water_dup	= $FFFFFA00 ; duplicate underwater palette, used for transitions ($80 bytes)
v_pal_water	= $FFFFFA80	; main underwater palette ($80 bytes)
v_pal_dry	= $FFFFFB00	; main palette ($80 bytes)
v_pal_dry_dup	= $FFFFFB80	; duplicate palette, used for transitions ($80 bytes)
v_objstate	= $FFFFFC00	; object state list ($200 bytes)

v_systemstack	= $FFFFFE00
f_restart	= $FFFFFE02	; restart level flag (2 bytes)
v_framecount	= $FFFFFE04	; frame counter (adds 1 every frame) (2 bytes)
v_framebyte	= v_framecount+1; low byte for frame counter
v_debugitem	= $FFFFFE06	; debug item currently selected (NOT the object number of the item)
v_debuguse	= $FFFFFE08	; debug mode use & routine counter (when Sonic is a ring/item) (2 bytes)
v_debugxspeed	= $FFFFFE0A	; debug mode - horizontal speed
v_debugyspeed	= $FFFFFE0B	; debug mode - vertical speed
v_vbla_count	= $FFFFFE0C	; vertical interrupt counter (adds 1 every VBlank) (4 bytes)
v_vbla_word	= v_vbla_count+2 ; low word for vertical interrupt counter (2 bytes)
v_vbla_byte	= v_vbla_word+1	; low byte for vertical interrupt counter
v_zone		= $FFFFFE10	; current zone number
v_act		= $FFFFFE11	; current act number
v_lives	= $FFFFFE12	; number of lives
v_air		= $FFFFFE14	; air remaining while underwater (2 bytes)
v_airbyte	= v_air+1	; low byte for air
v_lastspecial	= $FFFFFE16	; last special stage number
v_continues	= $FFFFFE18	; number of continues
f_timeover	= $FFFFFE1A	; time over flag
v_lifecount	= $FFFFFE1B	; lives counter value (for actual number, see "v_lives")
f_lifecount	= $FFFFFE1C	; lives counter update flag
f_ringcount	= $FFFFFE1D	; ring counter update flag
f_timecount	= $FFFFFE1E	; time counter update flag
f_scorecount	= $FFFFFE1F	; score counter update flag
v_rings	= $FFFFFE20	; rings (2 bytes)
v_ringbyte	= v_rings+1	; low byte for rings
v_time		= $FFFFFE22	; time (4 bytes)
v_timemin	= $FFFFFE23	; time - minutes
v_timesec	= $FFFFFE24	; time - seconds
v_timecent	= $FFFFFE25	; time - centiseconds
v_score	= $FFFFFE26	; score (4 bytes)
v_shield	= $FFFFFE2C	; shield status (00 = no; 01 = yes)
v_invinc	= $FFFFFE2D	; invinciblity status (00 = no; 01 = yes)
v_shoes	= $FFFFFE2E	; speed shoes status (00 = no; 01 = yes)
v_lastlamp	= $FFFFFE30	; number of the last lamppost you hit
v_lamp_xpos	= v_lastlamp+2	; x-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_ypos	= v_lastlamp+4	; y-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_rings	= v_lastlamp+6	; rings stored at lamppost (2 bytes)
v_lamp_time	= v_lastlamp+8	; time stored at lamppost (2 bytes)
v_lamp_dle	= v_lastlamp+$C	; dynamic level event routine counter at lamppost
v_lamp_limitbtm	= v_lastlamp+$E	; level bottom boundary at lamppost (2 bytes)
v_lamp_scrx	= v_lastlamp+$10 ; x-axis screen at lamppost (2 bytes)
v_lamp_scry	= v_lastlamp+$12 ; y-axis screen at lamppost (2 bytes)

v_lamp_wtrpos	= v_lastlamp+$20 ; water position at lamppost (2 bytes)
v_lamp_wtrrout	= v_lastlamp+$22 ; water routine at lamppost
v_lamp_wtrstat	= v_lastlamp+$23 ; water state at lamppost
v_lamp_lives	= v_lastlamp+$24 ; lives counter at lamppost
v_emeralds	= $FFFFFE57	; number of chaos emeralds
v_emldlist	= $FFFFFE58	; which individual emeralds you have (00 = no; 01 = yes) (6 bytes)
v_oscillate	= $FFFFFE5E	; values which oscillate - for swinging platforms, et al ($42 bytes)
v_ani0_time	= $FFFFFEC0	; synchronised sprite animation 0 - time until next frame (used for synchronised animations)
v_ani0_frame	= $FFFFFEC1	; synchronised sprite animation 0 - current frame
v_ani1_time	= $FFFFFEC2	; synchronised sprite animation 1 - time until next frame
v_ani1_frame	= $FFFFFEC3	; synchronised sprite animation 1 - current frame
v_ani2_time	= $FFFFFEC4	; synchronised sprite animation 2 - time until next frame
v_ani2_frame	= $FFFFFEC5	; synchronised sprite animation 2 - current frame
v_ani3_time	= $FFFFFEC6	; synchronised sprite animation 3 - time until next frame
v_ani3_frame	= $FFFFFEC7	; synchronised sprite animation 3 - current frame
v_ani3_buf	= $FFFFFEC8	; synchronised sprite animation 3 - info buffer (2 bytes)
v_limittopdb	= $FFFFFEF0	; level upper boundary, buffered for debug mode (2 bytes)
v_limitbtmdb	= $FFFFFEF2	; level bottom boundary, buffered for debug mode (2 bytes)

v_screenposx_dup	= $FFFFFF10	; screen position x (duplicate) (2 bytes)
v_screenposy_dup	= $FFFFFF14	; screen position y (duplicate) (2 bytes)
v_bgscreenposx_dup	= $FFFFFF18	; background screen position x (duplicate) (2 bytes)
v_bgscreenposy_dup	= $FFFFFF1C	; background screen position y (duplicate) (2 bytes)
v_bg2screenposx_dup	= $FFFFFF20	; 2 bytes
v_bg2screenposy_dup	= $FFFFFF24	; 2 bytes
v_bg3screenposx_dup	= $FFFFFF28	; 2 bytes
v_bg3screenposy_dup	= $FFFFFF2C	; 2 bytes
v_fg_scroll_flags_dup	= $FFFFFF30
v_bg1_scroll_flags_dup	= $FFFFFF32
v_bg2_scroll_flags_dup	= $FFFFFF34
v_bg3_scroll_flags_dup	= $FFFFFF36

v_levseldelay	= $FFFFFF80	; level select - time until change when up/down is held (2 bytes)
v_levselitem	= $FFFFFF82	; level select - item selected (2 bytes)
v_levselsound	= $FFFFFF84	; level select - sound selected (2 bytes)
v_scorecopy	= $FFFFFFC0	; score, duplicate (4 bytes)
v_scorelife	= $FFFFFFC0	; points required for an extra life (4 bytes) (JP1 only)
f_hudload:	= $FFFFFFC4	; flag to load the s2 hud manager
v_colladdr1:	= $FFFFFFD0	; (4 bytes)
v_colladdr2:	= $FFFFFFD4	; (4 bytes)
v_top_solid_bit:	= $FFFFFFD8
v_lrb_solid_bit:	= $FFFFFFD9
f_levselcheat	= $FFFFFFE0	; level select cheat flag
f_slomocheat	= $FFFFFFE1	; slow motion & frame advance cheat flag
f_debugcheat	= $FFFFFFE2	; debug mode cheat flag
f_creditscheat	= $FFFFFFE3	; hidden credits & press start cheat flag
v_title_dcount	= $FFFFFFE4	; number of times the d-pad is pressed on title screen (2 bytes)
v_title_ccount	= $FFFFFFE6	; number of times C is pressed on title screen (2 bytes)

f_demo		= $FFFFFFF0	; demo mode flag (0 = no; 1 = yes; $8001 = ending) (2 bytes)
v_demonum	= $FFFFFFF2	; demo level number (not the same as the level number) (2 bytes)
v_creditsnum	= $FFFFFFF4	; credits index number (2 bytes)
v_megadrive	= $FFFFFFF8	; Megadrive machine type
f_debugmode	= $FFFFFFFA	; debug mode flag (sometimes 2 bytes)
v_init		= $FFFFFFFC	; 'init' text string (4 bytes)
