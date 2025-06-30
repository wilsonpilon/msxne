#include <msxgl.h>
#include "msxne.h"
#include "nekeys.h"

void procKeys()
{
	c8 curchar = 0;
	bool capslock = false;
	bool capsshift = false;
	while (1)
	{
		Keyboard_Update();
		if(Keyboard_IsKeyPushed(KEY_CAPS))
			capslock = (capslock) ? false : true;
		
		capsshift = false;
		if(Keyboard_IsKeyPressed(KEY_SHIFT))
			capsshift = true;

		if(Keyboard_IsKeyPushed(KEY_SPACE))
			curchar = ' ';

		if(Keyboard_IsKeyPushed(KEY_A))
			curchar = 'A';
		if(Keyboard_IsKeyPushed(KEY_B))
			curchar = 'B';
		if(Keyboard_IsKeyPushed(KEY_C))
			curchar = 'C';
		if(Keyboard_IsKeyPushed(KEY_D))
			curchar = 'D';
		if(Keyboard_IsKeyPushed(KEY_E))
			curchar = 'E';
		if(Keyboard_IsKeyPushed(KEY_F))
			curchar = 'F';
		if(Keyboard_IsKeyPushed(KEY_G))
			curchar = 'G';
		if(Keyboard_IsKeyPushed(KEY_H))
			curchar = 'H';
		if(Keyboard_IsKeyPushed(KEY_I))
			curchar = 'I';
		if(Keyboard_IsKeyPushed(KEY_J))
			curchar = 'J';
		if(Keyboard_IsKeyPushed(KEY_K))
			curchar = 'K';
		if(Keyboard_IsKeyPushed(KEY_L))
			curchar = 'L';
		if(Keyboard_IsKeyPushed(KEY_M))
			curchar = 'M';
		if(Keyboard_IsKeyPushed(KEY_N))
			curchar = 'N';
		if(Keyboard_IsKeyPushed(KEY_O))
			curchar = 'O';
		if(Keyboard_IsKeyPushed(KEY_P))
			curchar = 'P';
		if(Keyboard_IsKeyPushed(KEY_Q))
			curchar = 'Q';
		if(Keyboard_IsKeyPushed(KEY_R))
			curchar = 'R';
		if(Keyboard_IsKeyPushed(KEY_S))
			curchar = 'S';
		if(Keyboard_IsKeyPushed(KEY_T))
			curchar = 'T';
		if(Keyboard_IsKeyPushed(KEY_U))
			curchar = 'U';
		if(Keyboard_IsKeyPushed(KEY_V))
			curchar = 'V';
		if(Keyboard_IsKeyPushed(KEY_W))
			curchar = 'W';
		if(Keyboard_IsKeyPushed(KEY_X))
			curchar = 'X';
		if(Keyboard_IsKeyPushed(KEY_Y))
			curchar = 'Y';
		if(Keyboard_IsKeyPushed(KEY_Z))
			curchar = 'Z';

		if(Keyboard_IsKeyPushed(KEY_0))
			curchar = '0';
		if(Keyboard_IsKeyPushed(KEY_1))
			curchar = '1';
		if(Keyboard_IsKeyPushed(KEY_2))
			curchar = '2';
		if(Keyboard_IsKeyPushed(KEY_3))
			curchar = '3';
		if(Keyboard_IsKeyPushed(KEY_4))
			curchar = '4';
		if(Keyboard_IsKeyPushed(KEY_5))
			curchar = '5';
		if(Keyboard_IsKeyPushed(KEY_6))
			curchar = '6';
		if(Keyboard_IsKeyPushed(KEY_7))
			curchar = '7';
		if(Keyboard_IsKeyPushed(KEY_8))
			curchar = '8';
		if(Keyboard_IsKeyPushed(KEY_9))
			curchar = '9';
		
		if(Keyboard_IsKeyPushed(KEY_ESC))
			break;

		if((curchar >= ' ') && (curchar <= 'Z'))
		{
			if(curchar != ' ')
				if(!capslock)
					curchar = curchar - 'A' + 'a';
				if(capsshift && capslock)
					curchar = curchar - 'A' + 'a';
				if(capsshift && !capslock)
					curchar = curchar - 'a' + 'A';

			Print_DrawChar(curchar);
			curchar = 0;
		}
	}
}
