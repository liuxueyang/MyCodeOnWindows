TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	val1 WORD 1000h
	val2 WORD 2000h
	arrayB BYTE 10h, 20h, 30h, 40h, 50h
	arrayW WORD 100h, 200h, 300h
	arrayD DWORD 10000h, 20000h
.code
main PROC
	; insert code here
	; movzx
	mov bx, 0a69bh
	movzx eax, bx
	movzx edx, bl
	movzx cx, bl

	; movsx
	mov bx, 0a69bh
	movsx eax, bx
	movsx edx, bl
	mov bl, 7bh
	movsx cx, bl

	mov ax, val1
	xchg ax, val2
	mov val1, ax

	mov al, arrayB
	mov al, [arrayB + 1]
	mov al, [arrayB + 2]

	mov ax, arrayW
	mov ax, [arrayW + 2]

	mov eax, arrayD
	mov eax, [arrayD + 4]
	mov eax, [arrayD + TYPE DWORD]
	exit
main ENDP

	; insert other subroutines here

END main
