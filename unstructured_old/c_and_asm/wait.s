.text

.global wait

wait:
	push r18
	push r19
	push r24
	
	mov r18, r24
	mov r19, r24

_wait_loop:
	dec r18
	brne _wait_loop
	dec r19
	brne _wait_loop
	dec r24
	brne _wait_loop
	
	pop r24
	pop r19
	pop r18
	ret
	
.end
