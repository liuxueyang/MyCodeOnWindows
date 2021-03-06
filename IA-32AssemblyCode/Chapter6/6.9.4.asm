TITLE 6.9.4.asm 										(6.9.4.asm)

; Description	: This is the program in Exercise 4 in Chapter 6 Section 9 
; Author			: snowsun
; Create Date	: 2014/12/01

INCLUDE Irvine32.inc

.data
	; insert data here
	intVal SDWORD ?
	prompt BYTE "Please input a number between 0 and 100: ", 0
	errorPrompt BYTE "Your input is unavailable...", 0
	exitPrompt BYTE "exit program...", 0
	timesPrompt BYTE "This is the ", 0
	timesPromptPost BYTE " time you lookup...", 0

.code
main PROC
	; insert code here
	mov ecx, 0
	L1:
	inc ecx
	mov edx, OFFSET prompt
	call WriteString
	call Crlf
	call ReadInt
	mov intVal, eax
	mov ebx, eax

	.IF (ebx >= 90) && (ebx <= 100)
		mov al, 'A'
		call WriteChar
	.ELSEIF (ebx >= 80) && (ebx <= 89)
		mov al, 'B'
		call WriteChar
	.ELSEIF (ebx >= 70) && (ebx <= 79)
		mov al, 'C'
		call WriteChar
	.ELSEIF (ebx >= 60) && (ebx <= 69)
		mov al, 'D'
		call WriteChar
	.ELSEIF (ebx >= 0) && (ebx <= 59)
		mov al, 'E'
		call WriteChar
	.ELSEIF (ebx == -1)
		mov edx, OFFSET exitPrompt
		call WriteString
		jmp L2
	.ELSE
		mov edx, OFFSET errorPrompt
		call WriteString
	.ENDIF

	call Crlf
	mov edx, OFFSET timesPrompt
	call WriteString
	mov eax, ecx
	call WriteDec 

	mov edx, OFFSET timesPromptPost
	call WriteString
	;mov al, 20h
	;call WriteChar

	call Crlf
	call Crlf
	jmp L1
L2:
	call Crlf
	call WaitMsg
	exit
main ENDP

	; insert other subroutines here

END main
