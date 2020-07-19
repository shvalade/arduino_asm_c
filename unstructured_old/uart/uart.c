#include "uart.h"

void uart_init(void)
{
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;
	
	UCSR0B |= (1 << TXEN0);
}

void uart_transmit(uint8_t data)
{
	while(!(UCSR0A & (1 << UDRE0)));
	UDR0 = data;
}