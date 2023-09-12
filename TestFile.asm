TITLE "Test file for Irvine32 Plus Plus"

INCLUDE ./src/Irvine32.inc
INCLUDELIB ./src/Irvine32.lib

; Only needed for non-VS users
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.DATA
    charToShow      BYTE "A"
    stringToShow    BYTE "Hello, World!",0
    hexNumberToShow DWORD 12345678h

.CODE
main PROC
    ; Display the character
    mov     al, byte ptr [charToShow]
    call    WriteChar
    call    Crlf

    ; Display the string
    mov     edx, OFFSET stringToShow
    call    WriteString
    call    Crlf

    ; Display the hexadecimal number
    mov     eax, [hexNumberToShow]
    call    WriteHex
    call    Crlf

    exit
main ENDP

END main
