// ____________________________
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │   ▄▄▄                ▄▄
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ▀█▄  ▄▀██ ▄█▄█ ██▀▄ ██  ▄███
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▄▄█▀ ▀▄██ ██ █ ██▀  ▀█▄ ▀█▄▄
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘                 ▀▀
//  Hello world sample
//─────────────────────────────────────────────────────────────────────────────
#include "msxgl.h"
#include "thebios.h"
#include "msxne.h"
//-----------------------------------------------------------------------------
// Program entry point
void main()
{
	u8 cursorx=1, cursory=1;
	Bios_InitScreen0();
	Bios_SetScreen0();
	Bios_ChangeColor(COLOR_BLACK,COLOR_MEDIUM_GREEN,COLOR_MEDIUM_GREEN);
	Bios_ClearScreen();

	Bios_SetCursorPosition(cursorx,cursory);
	while(1)
	{
		refresh_screen();
		c8 key = Bios_GetCharacter();
		if (!Char_IsControl(key))
		{
			Bios_SetCursorPosition(cursorx, cursory);
			Bios_TextPrintChar(key);
			cursorx += 1;
		}
		else
			process_control(key, &cursorx, &cursory);
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

bool process_control(c8 chr, u8* cursorx, u8* cursory)
{
	switch(chr)
	{
		case 17:
			die("Encerrando");
			break;
		case 13:
			*cursory += 1;
			*cursorx = 1;
			break;
		default:
			Bios_Beep();
	}
	Bios_SetCursorPosition(*cursorx, *cursory);
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
	for(u8 y=1; y<25; y++)
	{
		Bios_SetCursorPosition(1,y);
		Bios_TextPrintChar('~');
	}
}