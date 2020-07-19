"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-as" -mmcu=atmega328p blink.s -o blink.o
"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-ld" blink.o -o blink.elf
"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -R .eeprom blink.elf blink.hex  