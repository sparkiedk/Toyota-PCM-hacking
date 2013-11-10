cls
@del test.bin
@del test.hex
@dasm\bin\dasm test.asm -otest.bin -v4 -f3
@pause
rem @dasm\bin\ftohex 3 test.bin test.hex