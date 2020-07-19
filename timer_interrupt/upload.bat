

(
set /p path_var=
set /p conf_path=
set /p com=
set /p baud=
)<sys_vars.txt

"%path_var%\avrdude" -C "%conf_path%\avrdude.conf" -v -p atmega328p -c arduino -P %com% -b %baud% -D -U flash:w:"main.hex":i
