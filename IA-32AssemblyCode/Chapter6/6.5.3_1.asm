TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

.data
	; insert data here
	sum DWORD 0
	sample DWORD 50
	array DWORD 10, 60, 20, 33, 72, 89, 45, 65, 72, 18
	ArraySize = ($ - array) / TYPE array

.code
main PROC
	; insert code here
	mov eax, 0
	mov edx, sample
	mov esi, 0
	mov ecx, ArraySize
L3:
	cmp esi, ecx
	jnl L1
	cmp array[esi * TYPE array], edx
	jng L2
	add eax, array[esi * TYPE array]
L2:	
	inc esi
	jmp L3
L1:
	mov sum, eax
	call WriteInt

	exit
main ENDP

	; insert other subroutines here

END main
