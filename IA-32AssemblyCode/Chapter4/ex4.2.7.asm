TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:
; Modification:
; 	Date			:					Author:

INCLUDE Irvine32.inc

.data
	; insert data here
	Rval SDWORD ?
	Xval SDWORD 26
	Yval SDWORD 30
	Zval SDWORD 40

.code
main PROC
	; insert code here
	; INC and DEC
	mov ax, 1000h
	inc ax
	dec ax

	; Rval = -Xval + (Yval - Zval)
	mov eax, Xval
	neg eax
	mov ebx, Yval
	sub ebx, Zval
	add eax, ebx
	mov Rval, eax

	; ZF
	mov cx, 1
	sub cx, 1
	mov ax, 0ffffh
	inc ax
	call DumpRegs

	; SF
	mov cx, 0
	sub cx, 1
	mov ax, 7fffh
	add ax, 2
	call DumpRegs

	; CF
	mov al, 0ffh
	add al, 1
	call DumpRegs

	; OF
	mov al, 127
	add al, 1
	mov al, -128
	sub al, 1
	call DumpRegs

	exit
main ENDP

	; insert other subroutines here

END main
