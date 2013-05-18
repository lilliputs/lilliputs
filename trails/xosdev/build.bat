@echo on

echo +--------------------------------------+
echo      [This will compile boot.asm]
echo =--=--=--=--=--=--=--=--=--=--=--=--=--=
echo [=] nasm -f bin -o boot.bin boot.asm [=]
echo [+] nasm is our assembler
echo [+] -f is the format tag
echo [+] bin is the -f parameter
echo [+] -o means output file
echo [+] we output it as boot.bin
echo [+] boot.asm is the file we compile
echo - - - - - - - - - - - - - - - - - - - -
echo nasm -f bin -o boot.bin boot.asm
nasm -f bin -o boot.bin boot.asm
echo - - - - - - - - - - - - - - - - - - - -
echo The result is a 512 byte boot.bin
echo +--------------------------------------+
partcopy boot.bin 0 200 my.img 0
pause
