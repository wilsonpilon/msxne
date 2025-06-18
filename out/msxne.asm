;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module msxne
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sleep
	.globl _Bios_PrintTextAt
	.globl _Char_IsControl
	.globl _Bios_SetCursorPosition
	.globl _Bios_ClearScreen
	.globl _Bios_ChangeColor
	.globl _Bios_Exit
	.globl _E
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _die
	.globl _process_control
	.globl _refresh_screen
	.globl _draw_rows
	.globl _startUp
	.globl _drawFrame
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_E::
	.ds 34
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;./msxne.c:18: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./msxne.c:20: startUp();
	call	_startUp
;./msxne.c:22: while(1)
00105$:
;./msxne.c:24: c8 key = Bios_GetCharacter();
	call	0x009f
	ld	c, a
;./msxne.c:25: if (!Char_IsControl(key))
	push	bc
	ld	a, c
	call	_Char_IsControl
	pop	bc
	or	a, a
	jr	NZ, 00102$
;./msxne.c:27: Bios_SetCursorPosition(E.cursorx, E.cursory);
	ld	hl, #_E + 33
	ld	l, (hl)
;	spillPairReg hl
	ld	de, #_E + 32
	ld	a, (de)
	ld	b, a
	push	bc
	push	de
	ld	a, b
	call	_Bios_SetCursorPosition
	pop	de
	pop	bc
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	de
	ld	a, c
	call	0x00a2
	pop	de
;./msxne.c:29: E.cursorx += 1;
	ld	a, (de)
	inc	a
	ld	(de), a
	jp	00105$
00102$:
;./msxne.c:32: process_control(key);
	ld	a, c
	call	_process_control
;./msxne.c:34: }
	jp	00105$
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
;./msxne.c:36: void die(const c8* s)
;	---------------------------------
; Function die
; ---------------------------------
_die::
;./msxne.c:39: Bios_PrintTextAt(msgx, msgy, s);
	push	hl
	ld	l, #0x18
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	call	_Bios_PrintTextAt
;./msxne.c:40: sleep(2000);
	ld	a, #0xd0
	call	_sleep
;E:/MSXgl/engine/src/system.h:155: inline void Call(u16 addr) { ((void(*)(void))addr)(); }
	call	0x00c0
;./msxne.c:42: Bios_ClearScreen();
	call	_Bios_ClearScreen
;./msxne.c:43: Bios_Exit(0);
	xor	a, a
;./msxne.c:44: }
	jp	_Bios_Exit
;./msxne.c:46: bool process_control(c8 chr)
;	---------------------------------
; Function process_control
; ---------------------------------
_process_control::
;./msxne.c:48: switch(chr)
	ld	c, a
	sub	a, #0x0d
	jr	Z, 00102$
	ld	a, c
	sub	a, #0x11
	jr	NZ, 00103$
;./msxne.c:51: die("Encerrando");
	ld	hl, #___str_0
	call	_die
;./msxne.c:52: break;
	jp	00104$
;./msxne.c:53: case 13:
00102$:
;./msxne.c:54: E.cursory += 1;
	ld	bc, #_E + 33
	ld	a, (bc)
	inc	a
	ld	(bc), a
;./msxne.c:55: E.cursorx = 2;
	ld	hl, #(_E + 32)
	ld	(hl), #0x02
;./msxne.c:56: break;
	jp	00104$
;./msxne.c:57: default:
00103$:
;E:/MSXgl/engine/src/system.h:155: inline void Call(u16 addr) { ((void(*)(void))addr)(); }
	call	0x00c0
;./msxne.c:59: }
00104$:
;./msxne.c:60: Bios_SetCursorPosition(E.cursorx, E.cursory);
	ld	hl, #_E + 33
	ld	c, (hl)
	ld	hl, #_E + 32
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	call	_Bios_SetCursorPosition
;./msxne.c:61: return true;
	ld	a, #0x01
;./msxne.c:62: }
	ret
___str_0:
	.ascii "Encerrando"
	.db 0x00
;./msxne.c:64: void refresh_screen()
;	---------------------------------
; Function refresh_screen
; ---------------------------------
_refresh_screen::
;./msxne.c:66: Bios_ClearScreen();
	call	_Bios_ClearScreen
;./msxne.c:67: Bios_SetCursorPosition(2,3);
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	call	_Bios_SetCursorPosition
;./msxne.c:68: draw_rows();
	call	_draw_rows
;./msxne.c:69: Bios_SetCursorPosition(2,3);
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
;./msxne.c:70: }
	jp	_Bios_SetCursorPosition
;./msxne.c:72: void draw_rows()
;	---------------------------------
; Function draw_rows
; ---------------------------------
_draw_rows::
;./msxne.c:74: for(u8 y=3; y<23; y++)
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
00104$:
	ld	a, l
	sub	a, #0x17
	ret	NC
;./msxne.c:76: Bios_SetCursorPosition(2,y);
	push	hl
	ld	a, #0x02
	call	_Bios_SetCursorPosition
	pop	hl
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	hl
	ld	a, #0x7e
	call	0x00a2
	pop	hl
;./msxne.c:74: for(u8 y=3; y<23; y++)
	inc	l
;./msxne.c:79: }
	jp	00104$
;./msxne.c:81: void startUp()
;	---------------------------------
; Function startUp
; ---------------------------------
_startUp::
;./msxne.c:83: __builtin_strcpy(E.name,"MSX Norton Editor");
	ld	de, #_E
	ld	hl, #___str_1
	xor	a, a
00107$:
	cp	a, (hl)
	ldi
	jr	NZ, 00107$
;E:/MSXgl/engine/src/system.h:155: inline void Call(u16 addr) { ((void(*)(void))addr)(); }
	call	0x006c
	call	0x0078
;./msxne.c:86: Bios_ChangeColor(COLOR_BLACK,COLOR_MEDIUM_GREEN,COLOR_MEDIUM_GREEN);
	ld	a, #0x02
	push	af
	inc	sp
	ld	l, #0x02
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_Bios_ChangeColor
;./msxne.c:87: refresh_screen();
	call	_refresh_screen
;./msxne.c:88: Bios_PrintTextAt(1,1,E.name);
	ld	hl, #_E
	push	hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a,#0x01
	ld	l,a
	call	_Bios_PrintTextAt
;./msxne.c:89: Bios_SetCursorPosition(E.cursorx,E.cursory);
	ld	hl, #(_E + 33)
	ld	b, (hl)
	ld	hl, #(_E + 32)
	ld	c, (hl)
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_Bios_SetCursorPosition
;./msxne.c:90: drawFrame();
	call	_drawFrame
;./msxne.c:92: E.cursorx=2, E.cursory=3;
	ld	hl, #(_E + 32)
	ld	(hl), #0x02
	ld	hl, #(_E + 33)
	ld	(hl), #0x03
;./msxne.c:94: }
	ret
___str_1:
	.ascii "MSX Norton Editor"
	.db 0x00
;./msxne.c:96: void drawFrame()
;	---------------------------------
; Function drawFrame
; ---------------------------------
_drawFrame::
;./msxne.c:100: Bios_SetCursorPosition(1,2);
	ld	l, #0x02
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_Bios_SetCursorPosition
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	ld	a, #0x2b
	call	0x00a2
;./msxne.c:102: for(x=2;x<40;x++)
	ld	c, #0x02
00112$:
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	bc
	ld	a, #0x2d
	call	0x00a2
	pop	bc
;./msxne.c:102: for(x=2;x<40;x++)
	inc	c
	ld	a, c
	sub	a, #0x28
	jr	C, 00112$
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	ld	a, #0x2b
	call	0x00a2
;./msxne.c:105: for(y=3;y<23;y++)
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
00114$:
;./msxne.c:107: Bios_SetCursorPosition(1,y);
	push	hl
	ld	a, #0x01
	call	_Bios_SetCursorPosition
	pop	hl
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	hl
	ld	a, #0x7c
	call	0x00a2
	pop	hl
;./msxne.c:109: Bios_SetCursorPosition(40,y);
	push	hl
	ld	a, #0x28
	call	_Bios_SetCursorPosition
	pop	hl
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	hl
	ld	a, #0x7c
	call	0x00a2
	pop	hl
;./msxne.c:105: for(y=3;y<23;y++)
	inc	l
	ld	a, l
	sub	a, #0x17
	jr	C, 00114$
;./msxne.c:112: Bios_SetCursorPosition(1,23);
	ld	l, #0x17
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_Bios_SetCursorPosition
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	ld	a, #0x2b
	call	0x00a2
;./msxne.c:114: for(x=2;x<40;x++)
	ld	c, #0x02
00116$:
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	bc
	ld	a, #0x2d
	call	0x00a2
	pop	bc
;./msxne.c:114: for(x=2;x<40;x++)
	inc	c
	ld	a, c
	sub	a, #0x28
	jr	C, 00116$
;E:/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	ld	a, #0x2b
;./msxne.c:116: Bios_TextPrintChar('+');
;./msxne.c:117: }
	jp	0x00a2
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
