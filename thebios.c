#include "msxgl.h"
#include "thebios.h"

bool Char_IsControl(c8 chr)
{
	if (chr < 32)
		return true;
	return false;
}

void Bios_PrintText(const c8* str)
{
	while(*str)
		Bios_TextPrintChar(*str++);
}

void Bios_PrintTextAt(u8 x, u8 y, const c8* str)
{
	Bios_SetCursorPosition(x,y);
	Bios_PrintText(str);
}

void sleep(u8 time)
{
    u8 start = g_JIFFY;
    u8 elapsed = 0;
    while(1)
    {
    	elapsed = g_JIFFY - start;
    	if (elapsed > time)
    		break;
    }
}