# Build and test the library with a simple assembly file

# Build
./build.ps1

# Assemble, link, and run test file, then clean up
ml.exe /c /Zd /coff TestFile.asm && ^
link.exe /SUBSYSTEM:CONSOLE TestFile.obj && ^
TestFile.exe
