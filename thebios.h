#pragma once
#include "msxgl.h"
bool Char_IsControl(c8);
void Bios_PrintText(const c8*);
void Bios_PrintTextAt(u8, u8, const c8*);
void sleep(u8);