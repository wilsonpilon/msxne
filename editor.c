// ____________________________
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │   ▄▄▄                ▄▄
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ▀█▄  ▄▀██ ▄█▄█ ██▀▄ ██  ▄███
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▄▄█▀ ▀▄██ ██ █ ██▀  ▀█▄ ▀█▄▄
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘                 ▀▀
//  Hello world sample
//─────────────────────────────────────────────────────────────────────────────
#include "msxgl.h"
#include <string.h>
#include <stdlib.h>
#include "thebios.h"
#include "msxne.h"


struct editorConfig E;

//-----------------------------------------------------------------------------
// Program entry point
void main()
{
	startUp();

	while(1)
	{
		c8 key = Bios_GetCharacter();
		if (!Char_IsControl(key))
		{
			Bios_SetCursorPosition(E.cursorx, E.cursory);
			Bios_TextPrintChar(key);
			E.cursorx += 1;
			drawFrame();
		}
		else
			process_control(key);
	}
}

void die(const c8* s)
{
	u8 msgx=1, msgy=24;
	Bios_PrintTextAt(msgx, msgy, s);
	sleep(2000);
	Bios_Beep();
	Bios_ClearScreen();
	Bios_Exit(0);
}

bool process_control(c8 chr)
{
	switch(chr)
	{
		case 17:
			die("Encerrando");
			break;
		case 13:
			E.cursory += 1;
			E.cursorx = 2;
			break;
		default:
			Bios_Beep();
	}
	Bios_SetCursorPosition(E.cursorx, E.cursory);
	return true;
}

void refresh_screen()
{
	Bios_ClearScreen();
	Bios_SetCursorPosition(1,1);
	draw_rows();
	Bios_SetCursorPosition(1,1);
}

void draw_rows()
{
	for(u8 y=2; y<23; y++)
	{
		Bios_SetCursorPosition(1,y);
	}
}

void startUp()
{
	__builtin_strcpy(E.name,"MSX Norton Editor");
	Bios_InitScreen0();
	Bios_SetScreen0();
	Bios_ChangeColor(COLOR_BLACK,COLOR_MEDIUM_GREEN,COLOR_MEDIUM_GREEN);
	refresh_screen();
	E.cursorx=1, E.cursory=1;
}

void drawFrame()
{
	c8 x[3];
	c8 y[3];
	__itoa(E.cursorx,x,10);
	__itoa(E.cursorx,y,10);
	Bios_SetCursorPosition(2,24);
	Bios_PrintTextAt(1,24,"Lin=");
	Bios_PrintTextAt(5,24,x);
	Bios_PrintTextAt(8,24,"Col=");
	Bios_PrintTextAt(12,24,y);
	Bios_PrintTextAt(15,24,"a:\\arquivo.bas");
	Bios_PrintTextAt(33,24,"Ins");
	Bios_PrintTextAt(37,24,"WW");
	Bios_SetCursorPosition(E.cursorx,E.cursory);
}