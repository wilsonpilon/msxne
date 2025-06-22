#include "msxgl.h"
#include "extra.h"

u8 readKeyboard(void)
{
	u8 row[11] = {0,0,0,0,0,0,0,0,0,0,0};
	for(u8 c=0;c<12;c++)
		row[c] = Keyboard_Read(c);
	if(IS_KEY_PRESSED(row[1], KEY_9))
		return KEY_9;
	if(IS_KEY_PRESSED(row[1], KEY_8))
		return KEY_8;
	if(IS_KEY_PRESSED(row[0], KEY_7))
		return KEY_7;
	if(IS_KEY_PRESSED(row[0], KEY_6))
		return KEY_6;
	if(IS_KEY_PRESSED(row[0], KEY_5))
		return KEY_5;
	if(IS_KEY_PRESSED(row[0], KEY_4))
		return KEY_4;
	if(IS_KEY_PRESSED(row[0], KEY_3))
		return KEY_3;
	if(IS_KEY_PRESSED(row[0], KEY_2))
		return KEY_2;
	if(IS_KEY_PRESSED(row[0], KEY_1))
		return KEY_1;
	if(IS_KEY_PRESSED(row[0], KEY_0))
		return KEY_0;


	if(IS_KEY_PRESSED(row[1], KEY_1_2))
		return KEY_1_2;
	if(IS_KEY_PRESSED(row[7], KEY_ESC))
		return KEY_ESC;

	return 255;
}