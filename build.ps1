# Full build process, for lazy people like me.

cd ./src

# This is based on the original build script from Eazybright/Irvine32
ml.exe -c -coff Irvine32.asm
ml.exe -c -coff floatio.asm
lib.exe /SUBSYSTEM:CONSOLE Irvine32.obj floatio.obj

# Create an archive of the required files
Compress-Archive -Update -LiteralPath "./Irvine32.inc", "./Irvine32.lib", "SmallWin.inc", "VirtualKeys.inc" -DestinationPath "../Irvine32-Plus-Plus.zip"

cd ..
