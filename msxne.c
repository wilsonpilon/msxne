// ____________________________
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │   ▄▄▄                ▄▄
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ▀█▄  ▄▀██ ▄█▄█ ██▀▄ ██  ▄███
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▄▄█▀ ▀▄██ ██ █ ██▀  ▀█▄ ▀█▄▄
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘                 ▀▀
//  Hello world sample
//─────────────────────────────────────────────────────────────────────────────
#include "msxgl.h"
#include <string.h>
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
		}
		else
			process_control(key);
	}
}

void die(const c8* s)
{
	u8 msgx=2, msgy=24;
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
	Bios_SetCursorPosition(2,3);
	draw_rows();
	Bios_SetCursorPosition(2,3);
}

void draw_rows()
{
	for(u8 y=3; y<23; y++)
	{
		Bios_SetCursorPosition(2,y);
		Bios_TextPrintChar('~');
	}
}

void startUp()
{
	__builtin_strcpy(E.name,"MSX Norton Editor");
	Bios_InitScreen0();
	Bios_SetScreen0();
	Bios_ChangeColor(COLOR_BLACK,COLOR_MEDIUM_GREEN,COLOR_MEDIUM_GREEN);
	refresh_screen();
	Bios_PrintTextAt(1,1,E.name);
	Bios_SetCursorPosition(E.cursorx,E.cursory);
	drawFrame();

	E.cursorx=2, E.cursory=3;

}

void drawFrame()
{
	u8 x,y;
	x=1;
	Bios_SetCursorPosition(1,2);
	Bios_TextPrintChar('+');
	for(x=2;x<40;x++)
		Bios_TextPrintChar('-');
	Bios_TextPrintChar('+');
	for(y=3;y<23;y++)
	{
		Bios_SetCursorPosition(1,y);
		Bios_TextPrintChar('|');
		Bios_SetCursorPosition(40,y);
		Bios_TextPrintChar('|');
	}
	Bios_SetCursorPosition(1,23);
	Bios_TextPrintChar('+');
	for(x=2;x<40;x++)
		Bios_TextPrintChar('-');
	Bios_TextPrintChar('+');
}