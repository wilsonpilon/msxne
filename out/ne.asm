;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module ne
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DOS_CharOutput
	.globl _Keyboard_IsKeyPushed
	.globl _Keyboard_Update
	.globl _DOS_TPAUpperAddr
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
_DOS_TPAUpperAddr	=	0x0006
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
;./ne.c:11: int main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./ne.c:13: c8 curchar = 0;
	ld	c, #0x00
;./ne.c:14: while (1)
00183$:
;./ne.c:16: Keyboard_Update();
	push	bc
	call	_Keyboard_Update
	ld	a, #0x08
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00102$
;./ne.c:18: curchar = ' ';
	ld	c, #0x20
00102$:
;./ne.c:20: if(Keyboard_IsKeyPushed(KEY_A))
	push	bc
	ld	a, #0x62
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00104$
;./ne.c:21: curchar = 'A';
	ld	c, #0x41
00104$:
;./ne.c:22: if(Keyboard_IsKeyPushed(KEY_B))
	push	bc
	ld	a, #0x72
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00106$
;./ne.c:23: curchar = 'B';
	ld	c, #0x42
00106$:
;./ne.c:24: if(Keyboard_IsKeyPushed(KEY_C))
	push	bc
	ld	a, #0x03
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00108$
;./ne.c:25: curchar = 'C';
	ld	c, #0x43
00108$:
;./ne.c:26: if(Keyboard_IsKeyPushed(KEY_D))
	push	bc
	ld	a, #0x13
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00110$
;./ne.c:27: curchar = 'D';
	ld	c, #0x44
00110$:
;./ne.c:28: if(Keyboard_IsKeyPushed(KEY_E))
	push	bc
	ld	a, #0x23
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00112$
;./ne.c:29: curchar = 'E';
	ld	c, #0x45
00112$:
;./ne.c:30: if(Keyboard_IsKeyPushed(KEY_F))
	push	bc
	ld	a, #0x33
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00114$
;./ne.c:31: curchar = 'F';
	ld	c, #0x46
00114$:
;./ne.c:32: if(Keyboard_IsKeyPushed(KEY_G))
	push	bc
	ld	a, #0x43
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00116$
;./ne.c:33: curchar = 'G';
	ld	c, #0x47
00116$:
;./ne.c:34: if(Keyboard_IsKeyPushed(KEY_H))
	push	bc
	ld	a, #0x53
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00118$
;./ne.c:35: curchar = 'H';
	ld	c, #0x48
00118$:
;./ne.c:36: if(Keyboard_IsKeyPushed(KEY_I))
	push	bc
	ld	a, #0x63
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00120$
;./ne.c:37: curchar = 'I';
	ld	c, #0x49
00120$:
;./ne.c:38: if(Keyboard_IsKeyPushed(KEY_J))
	push	bc
	ld	a, #0x73
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00122$
;./ne.c:39: curchar = 'J';
	ld	c, #0x4a
00122$:
;./ne.c:40: if(Keyboard_IsKeyPushed(KEY_K))
	push	bc
	ld	a, #0x04
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00124$
;./ne.c:41: curchar = 'K';
	ld	c, #0x4b
00124$:
;./ne.c:42: if(Keyboard_IsKeyPushed(KEY_L))
	push	bc
	ld	a, #0x14
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00126$
;./ne.c:43: curchar = 'L';
	ld	c, #0x4c
00126$:
;./ne.c:44: if(Keyboard_IsKeyPushed(KEY_M))
	push	bc
	ld	a, #0x24
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00128$
;./ne.c:45: curchar = 'M';
	ld	c, #0x4d
00128$:
;./ne.c:46: if(Keyboard_IsKeyPushed(KEY_N))
	push	bc
	ld	a, #0x34
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00130$
;./ne.c:47: curchar = 'N';
	ld	c, #0x4e
00130$:
;./ne.c:48: if(Keyboard_IsKeyPushed(KEY_O))
	push	bc
	ld	a, #0x44
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00132$
;./ne.c:49: curchar = 'O';
	ld	c, #0x4f
00132$:
;./ne.c:50: if(Keyboard_IsKeyPushed(KEY_P))
	push	bc
	ld	a, #0x54
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00134$
;./ne.c:51: curchar = 'P';
	ld	c, #0x50
00134$:
;./ne.c:52: if(Keyboard_IsKeyPushed(KEY_Q))
	push	bc
	ld	a, #0x64
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00136$
;./ne.c:53: curchar = 'Q';
	ld	c, #0x51
00136$:
;./ne.c:54: if(Keyboard_IsKeyPushed(KEY_R))
	push	bc
	ld	a, #0x74
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00138$
;./ne.c:55: curchar = 'R';
	ld	c, #0x52
00138$:
;./ne.c:56: if(Keyboard_IsKeyPushed(KEY_S))
	push	bc
	ld	a, #0x05
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00140$
;./ne.c:57: curchar = 'S';
	ld	c, #0x53
00140$:
;./ne.c:58: if(Keyboard_IsKeyPushed(KEY_T))
	push	bc
	ld	a, #0x15
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00142$
;./ne.c:59: curchar = 'T';
	ld	c, #0x54
00142$:
;./ne.c:60: if(Keyboard_IsKeyPushed(KEY_U))
	push	bc
	ld	a, #0x25
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00144$
;./ne.c:61: curchar = 'U';
	ld	c, #0x55
00144$:
;./ne.c:62: if(Keyboard_IsKeyPushed(KEY_V))
	push	bc
	ld	a, #0x35
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00146$
;./ne.c:63: curchar = 'V';
	ld	c, #0x56
00146$:
;./ne.c:64: if(Keyboard_IsKeyPushed(KEY_W))
	push	bc
	ld	a, #0x45
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00148$
;./ne.c:65: curchar = 'W';
	ld	c, #0x57
00148$:
;./ne.c:66: if(Keyboard_IsKeyPushed(KEY_X))
	push	bc
	ld	a, #0x55
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00150$
;./ne.c:67: curchar = 'X';
	ld	c, #0x58
00150$:
;./ne.c:68: if(Keyboard_IsKeyPushed(KEY_Y))
	push	bc
	ld	a, #0x65
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00152$
;./ne.c:69: curchar = 'Y';
	ld	c, #0x59
00152$:
;./ne.c:70: if(Keyboard_IsKeyPushed(KEY_Z))
	push	bc
	ld	a, #0x75
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00154$
;./ne.c:71: curchar = 'Z';
	ld	c, #0x5a
00154$:
;./ne.c:74: if(Keyboard_IsKeyPushed(KEY_0))
	push	bc
	xor	a, a
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00156$
;./ne.c:75: curchar = '0';
	ld	c, #0x30
00156$:
;./ne.c:76: if(Keyboard_IsKeyPushed(KEY_1))
	push	bc
	ld	a, #0x10
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00158$
;./ne.c:77: curchar = '1';
	ld	c, #0x31
00158$:
;./ne.c:78: if(Keyboard_IsKeyPushed(KEY_2))
	push	bc
	ld	a, #0x20
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00160$
;./ne.c:79: curchar = '2';
	ld	c, #0x32
00160$:
;./ne.c:80: if(Keyboard_IsKeyPushed(KEY_3))
	push	bc
	ld	a, #0x30
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00162$
;./ne.c:81: curchar = '3';
	ld	c, #0x33
00162$:
;./ne.c:82: if(Keyboard_IsKeyPushed(KEY_4))
	push	bc
	ld	a, #0x40
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00164$
;./ne.c:83: curchar = '4';
	ld	c, #0x34
00164$:
;./ne.c:84: if(Keyboard_IsKeyPushed(KEY_5))
	push	bc
	ld	a, #0x50
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00166$
;./ne.c:85: curchar = '5';
	ld	c, #0x35
00166$:
;./ne.c:86: if(Keyboard_IsKeyPushed(KEY_6))
	push	bc
	ld	a, #0x60
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00168$
;./ne.c:87: curchar = '6';
	ld	c, #0x36
00168$:
;./ne.c:88: if(Keyboard_IsKeyPushed(KEY_7))
	push	bc
	ld	a, #0x70
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00170$
;./ne.c:89: curchar = '7';
	ld	c, #0x37
00170$:
;./ne.c:90: if(Keyboard_IsKeyPushed(KEY_8))
	push	bc
	ld	a, #0x01
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00172$
;./ne.c:91: curchar = '8';
	ld	c, #0x38
00172$:
;./ne.c:92: if(Keyboard_IsKeyPushed(KEY_9))
	push	bc
	ld	a, #0x11
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	Z, 00174$
;./ne.c:93: curchar = '9';
	ld	c, #0x39
00174$:
;./ne.c:94: if (Keyboard_IsKeyPushed(KEY_ESC))
	push	bc
	ld	a, #0x27
	call	_Keyboard_IsKeyPushed
	pop	bc
	or	a, a
	jr	NZ, 00184$
;./ne.c:96: if((curchar >= ' ') && (curchar <= 'Z'))
	ld	a, c
	sub	a, #0x20
	jp	C, 00183$
	ld	a, #0x5a
	sub	a, c
	jp	C, 00183$
;./ne.c:98: if(!g_CAPST)
	ld	a, (_g_CAPST+0)
	or	a, a
	jr	NZ, 00178$
;./ne.c:99: curchar = curchar - 'A' + 'a';
	ld	a, c
	add	a, #0x20
	ld	c, a
00178$:
;./ne.c:100: DOS_CharOutput(curchar);
	ld	a, c
	call	_DOS_CharOutput
;./ne.c:101: curchar = 0;
	ld	c, #0x00
	jp	00183$
00184$:
;./ne.c:104: return 0;
	ld	de, #0x0000
;./ne.c:105: }
	ret
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
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "$"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
