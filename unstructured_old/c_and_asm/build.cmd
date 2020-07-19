"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-as" -mmcu=atmega328p wait.s -o wait.o
"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-gcc" -c -mmcu=atmega328p main.c -o main.o
"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-ld" main.o wait.o -o main_prog.elf
"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -R .eeprom main_prog.elf main_prog.hex  