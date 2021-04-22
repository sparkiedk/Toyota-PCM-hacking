@echo off
del superbootloader.bin
del superbootloader.lst
REM edit TASMTABS line to point to location of TASM8X.TAB table file
set TASMTABS=tasm
REM edit next line to point to location of your tasm32.exe executable
tasm\tasm32.exe -t8x -b -fFF -h superbootloader.asm superbootloader.bin
pause