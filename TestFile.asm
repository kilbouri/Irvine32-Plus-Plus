TITLE "Test file for Irvine32 Plus Plus"
; Requests a character, string, and hex number from stdin.
; Then echoes back what was entered on stdout.

INCLUDE ./src/Irvine32.inc
INCLUDELIB ./src/Irvine32.lib

; Only needed for non-VS users
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.DATA
    inputChar BYTE ?
    inputString BYTE 128 DUP(0)
    hexValue DWORD ?
    promptMsg BYTE "Enter a character: ", 0
    strMsg BYTE "Enter a string: ", 0
    hexMsg BYTE "Enter a hexadecimal value: ", 0
    outputCharMsg BYTE "You entered character: ", 0
    outputStrMsg BYTE "You entered string: ", 0
    outputHexMsg BYTE "You entered hexadecimal value: ", 0

.CODE
main PROC
    ; Read a character
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar
    mov inputChar, al
    call Crlf
    
    ; Read a string
    mov edx, OFFSET strMsg
    call WriteString
    mov edx, OFFSET inputString
    mov ecx, SIZEOF inputString
    call ReadString
    call Crlf
    
    ; Read a hexadecimal value
    mov edx, OFFSET hexMsg
    call WriteString
    call ReadHex
    mov hexValue, eax
    call Crlf
    
    ; Output the entered values
    mov edx, OFFSET outputCharMsg
    call WriteString
    movzx eax, inputChar
    call WriteChar
    call Crlf
    
    mov edx, OFFSET outputStrMsg
    call WriteString
    mov edx, OFFSET inputString
    call WriteString
    call Crlf
    
    mov edx, OFFSET outputHexMsg
    call WriteString
    mov eax, hexValue
    call WriteHex
    call Crlf
    
    exit
main ENDP

END main

END main
