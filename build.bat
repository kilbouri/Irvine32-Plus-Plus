REM build.bat
REM Full build process, for lazy people like me.

@echo off

cd ./src

REM This is based on the original build script from Eazybright/Irvine32
ML -c -coff Irvine32.asm
ML -c -coff floatio.asm
LIB /SUBSYSTEM:CONSOLE Irvine32.obj floatio.obj
