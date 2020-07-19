#include "main.h"

extern void wait(uint8_t param);

int main(void)
{
	init();
	while(1)
	{
		PORTB ^= 0x20;
		wait(50);
	}
}

static void init(void)
{
	DDRB = 0x20;
}