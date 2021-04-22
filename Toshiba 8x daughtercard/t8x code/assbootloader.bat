@echo off
del 1uzbootloader.bin
del 1uzbootloader.lst
REM edit TASMTABS line to point to location of TASM8X.TAB table file
set TASMTABS=tasm
REM edit next line to point to location of your tasm32.exe executable
tasm\tasm32.exe -t8x -b -fFF -h 1uzbootloader.asm 1uzbootloader.bin
pause