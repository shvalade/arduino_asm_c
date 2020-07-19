cls

(set /p path_var=)<sys_vars.txt

"%path_var%\avr-as" -mmcu=atmega328p main\startup.s -o tmp\startup.o
"%path_var%\avr-gcc" -mmcu=atmega328p tmp\startup.o main\main.c -nostartfiles -o tmp\main.elf
"%path_var%\avr-objcopy" -O ihex -R .eeprom tmp\main.elf main.hex
