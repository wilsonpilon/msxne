/*

*/
#include <msxgl.h>
#include <dos.h>
#include "ne.h"
#include "extra.h"


int main(u8 argc, const c8** argv)
{
	while (1)
	{
		u8 tecla = readKeyboard();
		if((tecla >= KEY_0) && (tecla <= KEY_9))
		{
			c8 g_StrBuffer[80];
			String_Format(g_StrBuffer, "tecla: %d\n\r$", tecla);
			DOS_StringOutput(g_StrBuffer);
		}
		if(tecla == KEY_ESC)
			break;
	}
	return 0;
}