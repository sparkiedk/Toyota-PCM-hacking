cls
@del reader6301v1.bin
@del reader6301v1.hex
@dasm\bin\dasm reader6301v1.asm -oreader6301v1.bin -v4 -f3
rem @pause
rem @dasm\bin\ftohex 3 reader6301v1.bin reader6301v1.hex