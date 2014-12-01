TITLE Program Name							(FINENAME.asm)

; Description	:
; Author			: snowsun
; Create Date	:

INCLUDE Irvine32.inc

.data
	; insert data here
	ProcessTable BYTE '1'
		DWORD Process_1
		EntrySize = ($ - ProcessTable)
		BYTE '2'
		DWORD Process_2
		BYTE '3'
		DWORD Process_3
		BYTE '4'
		DWORD Process_4
		BYTE '5'
		DWORD Process_5

		NumberOfEntry = ($ - ProcessTable) / EntrySize

		promptList BYTE "(1) x AND y", 20h,
		"(2) x OR y", 20h,
		"(3) NOT x", 20h,
		"(4) x XOR y", 20h,
		"(5) Exit program", 0

		msgPrompt "Enter you option: ", 0
		msgA "input two numbers: ", 0
		msgB "input a number: ", 0


.code
main PROC
	; insert code here
	mov edx, OFFSET promptList
	call WriteString
	call Crlf

	mov edx, OFFSET msgPrompt
	call ReadInt

	exit
main ENDP

	; insert other subroutines here

END main
