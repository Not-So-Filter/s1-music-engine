@echo off

IF EXIST s1built.bin move /Y s1built.bin s1built.prev.bin >NUL

asm68k /k /p /o ae-,c+,l.,op+,os+,ow+,oz+,oaq+,osq+,omq+ sonic.asm, s1built.bin >errors.txt, , sonic.lst
convsym sonic.lst s1built.bin -in asm68k_lst -a

fixheadr s1built.bin
