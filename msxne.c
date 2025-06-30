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
	const u8 g_ChrAnim[] = { '-', '/', '|', '\\' };

	VDP_SetMode(VDP_MODE_SCREEN5);
	VDP_SetColor(COLOR_BLACK);
	VDP_EnableVBlank(TRUE);
	VDP_ClearVRAM();

	Print_SetBitmapFont(g_Font_Oxygene);
	Print_SetColor(COLOR_WHITE, COLOR_BLACK);
	Print_SetPosition(0, 0);
	Print_DrawText(MSX_GL" The MSX Game Library");

	u8 count = 0;
	while(!Keyboard_IsKeyPressed(KEY_ESC))
	{
		Halt(); // Wait V-Blank
		Print_SetPosition(255-8, 0);
		Print_DrawChar(g_ChrAnim[count++ % 4]);
	}

	return 0;
}