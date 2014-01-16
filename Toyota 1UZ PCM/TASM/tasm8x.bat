@echo off
REM edit TASMTABS line to point to location of TASM8X.TAB table file
set TASMTABS=.
REM edit next line to point to location of your tasm32.exe executable
tasm32.exe -t8x -b -fFF -h %1 %2 %3 %4
