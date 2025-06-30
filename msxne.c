#include <msxgl.h>
#include "msxne.h"

//=============================================================================
// READ-ONLY DATA
//=============================================================================

// Fonts data
#include "font/font_oxygene.h"

// Animation characters

u8 ne()
{



	u8 count = 0;
	while(!Keyboard_IsKeyPressed(KEY_ESC))
	{
		Halt(); // Wait V-Blank
	}

	return 0;
}

void banner()
{
	Draw_Box(64,32,384,82,COLOR_WHITE,0);
	Draw_Box(66,34,382,80,COLOR_WHITE,0);
	Print_SetPosition(108,40);
	Print_DrawText("The Norton Classic Editor");
	Print_SetPosition(88,50);
	Print_DrawText("A Programer's Full-Screen Editor");
	Print_SetPosition(116,60);
	Print_DrawText("Version 1.5 -- 06/30/25");
	Print_SetPosition(80,70);
	Print_DrawText("(C) Copyright 2025, Cybernostra, Inc.");
}

u8 init()
{
	VDP_SetMode(VDP_MODE_SCREEN6);
	VDP_SetColor(COLOR_BLACK);
	VDP_EnableVBlank(TRUE);
	VDP_ClearVRAM();

	Print_SetBitmapFont(g_Font_Oxygene);
	Print_SetColor(COLOR_WHITE, COLOR_BLACK);
	Print_SetPosition(0, 0);
	Print_DrawText("Enter the file name:");
	Draw_LineH(0,511,16,COLOR_WHITE,0);

	banner();
}