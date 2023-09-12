REM build.bat
REM Full build process, for lazy people like me.


REM Use the original makeLib to build it
./src/makeLib.bat

REM Copy out the build artifacts to the root
REM TODO: maybe make a Github Action to automate this
cp ./src/Irvine32.lib ./Irvine32.lib
cp ./src/Irvine32.obj ./Irvine32.obj
rm ./src/Irvine32.lib ./src/Irvine32.obj
