.equ _SREG, 0x3F
.equ _SPL, 0x3D
.equ _SPH, 0x3E

.text
.org 0x0000

jmp _main                                    ; 0x0000 reset vector
jmp _return_from_interrupt                   ; 0x0002
jmp _return_from_interrupt                   ; 0x0004
jmp _return_from_interrupt                   ; 0x0002
jmp _return_from_interrupt                   ; 0x0006
jmp _return_from_interrupt                   ; 0x0002
jmp _return_from_interrupt                   ; 0x0008
jmp _return_from_interrupt                   ; 0x000A
jmp _return_from_interrupt                   ; 0x000C
jmp _return_from_interrupt                   ; 0x000E
jmp _return_from_interrupt                   ; 0x0010
jmp _return_from_interrupt                   ; 0x0012
jmp _return_from_interrupt                   ; 0x0014
jmp _return_from_interrupt                   ; 0x0016
jmp _return_from_interrupt                   ; 0x0018
jmp _timer1_ovf_isr                          ; 0x001A
jmp _return_from_interrupt                   ; 0x001C
jmp _return_from_interrupt                   ; 0x001E
jmp _return_from_interrupt                   ; 0x0020
jmp _return_from_interrupt                   ; 0x0022
jmp _return_from_interrupt                   ; 0x0024
jmp _return_from_interrupt                   ; 0x0026
jmp _return_from_interrupt                   ; 0x0028
jmp _return_from_interrupt                   ; 0x002A
jmp _return_from_interrupt                   ; 0x002C
jmp _return_from_interrupt                   ; 0x002E
jmp _return_from_interrupt                   ; 0x0030
jmp _return_from_interrupt                   ; 0x0032

_return_from_interrupt:
     reti

_main:
     ldi r20, 0
     sts _SREG, r20

     sts _SPL, r20
     ldi r20, 0x80
     sts _SPH, r20

     call main

     reti

_timer1_ovf_isr:
     push r20

     lds r20, _SREG
     push r20

     call timer1_ovf_isr

     pop r20
     sts _SREG, r20

     pop r20

     reti
