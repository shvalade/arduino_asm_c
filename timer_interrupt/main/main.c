#include "main.h"

int main(void)
{
  init();

  while (1) {
  }

  cli();
  return 0;
}

static void init(void)
{
     DDRB = 0x20;
     init_timer1_ovf();
     sei();

}

static void init_timer1_ovf(void) {
     TCCR1A = 0x00;
     TCCR1B = 0x01;

     TIFR1 |= 0x01;

     TCNT1 = 0x00;

     TIMSK1 - 0x01;
}

void timer1_ovf_isr(void)
{
     PORTB ^= 0x20;
}
