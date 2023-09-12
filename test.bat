REM test.bat
REM Build and test the library with a simple assembly file

@echo off

REM Build
cmd /c build.bat

REM Assemble, link, and run test file, then clean up
ml.exe /c /Zd /coff TestFile.asm && ^
link.exe /SUBSYSTEM:CONSOLE TestFile.obj && ^
TestFile.exe
