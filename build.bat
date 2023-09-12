REM build.bat
REM Full build process, for lazy people like me.

@echo off

cd ./src

REM This is based on the original build script from Eazybright/Irvine32
ML -c -coff Irvine32.asm
ML -c -coff floatio.asm
LIB /SUBSYSTEM:CONSOLE Irvine32.obj floatio.obj

REM Copy out the build artifacts to the root
REM TODO: maybe make a Github Action to automate this
move ./Irvine32.lib ../Irvine32.lib
move ./Irvine32.obj ../Irvine32.obj
move ./floatio.obj ../floatio.obj

echo done
