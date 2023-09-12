# Irvine32++

> A library for assembly language.
> 
> This repo gives you a convenient and powerful library that you can use to simplify
> tasks related to input-output and string handling in assembly language programming.

The above is from Eazybright/Irvine32. The same is true here, however I have made some [changes](#changes).

## Changes

1. Replace calls to `WriteConsole` with `WriteFile` (to standard output). This change allows modern shells to work with the output of binaries using this library.
2. Replace calls to `ReadConsole` with `ReadFile` (from standard output). This change allows modern shells to pipe/redirect the output of other programs into binaries using this library. 

## Development Requirements

- Windows SDK
- C++ build tools

This repo does provide a VS project if you wish to use it. It will make your life much easier, as VS will deal with some environment variable bullpoop for you.

## Credits

Assembly Language for x86 Processors, Sixth Edition.

by

KIP R. IRVINE
Florida International University
School of Computing and Information Sciences
