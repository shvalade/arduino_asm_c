cls

(set /p path_var=)<sys_vars.txt

"%path_var%\avr-as" -mmcu=atmega328p system\math\add.s system\math\sub.s system\math\mul.s system\math\div.s system\math\any.s -o tmp\math.o
"%path_var%\avr-gcc" -c -mmcu=atmega328p system\uart\uart.c -o tmp\uart.o
"%path_var%\avr-gcc" -c -mmcu=atmega328p std_hex\hex.c -o tmp\hex.o
"%path_var%\avr-gcc" -c -mmcu=atmega328p system\io\io.c -o tmp\io.o
"%path_var%\avr-gcc" -mmcu=atmega328p main\main.c tmp\uart.o tmp\io.o tmp\hex.o tmp\math.o -o tmp\main.elf
"%path_var%\avr-objcopy" -O ihex -R .eeprom tmp\main.elf main.hex
