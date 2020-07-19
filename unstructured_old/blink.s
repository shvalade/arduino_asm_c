.equ	PORTB, 0x05
.equ	DDRB, 0x04

.text
.org 0x0000
jmp main

main:
	sbi DDRB, 5
_main_loop:
	rcall wait
	sbi PORTB, 5
	rcall wait
	cbi PORTB, 5
	rjmp _main_loop
	ret

wait:
	ldi	r18, 100
	ldi	r19, 50
	ldi	r20, 0
_wait_loop:
	dec r20
	brne _wait_loop
	dec r19
	brne _wait_loop
	dec r18
	brne _wait_loop
	ret

.end
