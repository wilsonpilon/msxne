#include "msxgl.h"
#pragma once
bool process_control(c8);
void die(const c8*);
void refresh_screen();
void draw_rows();
void startUp();
void drawFrame();

struct editorConfig
{
	c8 name[32];
	u8 cursorx;
	u8 cursory;
};