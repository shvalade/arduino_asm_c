(set /p path_var=)<sys_vars.txt

"%path_var%\avr-objdump" -D tmp\main.elf > main_dasm.txt
