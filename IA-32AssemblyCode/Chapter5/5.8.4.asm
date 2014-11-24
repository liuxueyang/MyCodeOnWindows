TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

mx = 39
my = 12
COUNTLOOP = 3
NEWLINE = 10
.data
	; insert data here
	mynum DWORD ?
	mystr BYTE "Please input two integers: ", 0

.code
main PROC
	; insert code here
	mov ecx, COUNTLOOP
L1:
	call Clrscr
	; display prompt
	mov dh, my
	mov dl, mx
	call Gotoxy
	mov edx, OFFSET mystr
	call WriteString

	; input two integers and add them
	mov dh, my
	mov dl, mx
	inc dh
	call Gotoxy
	call ReadInt

	mov dh, my
	mov dl, mx
	add dh, 2
	call Gotoxy
	mov mynum, eax
	call ReadInt

	add eax, mynum

	; display sum
	mov dh, my
	mov dl, mx
	add dh, 3
	call Gotoxy
	call WriteInt

	mov al, NEWLINE
	call WriteChar
	call WaitMsg

	loop L1

	exit
main ENDP

	; insert other subroutines here

END main
