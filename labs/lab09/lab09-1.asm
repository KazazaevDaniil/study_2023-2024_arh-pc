%include 'in_out.asm'

SECTION .data
	msg: DB 'Введите х:',0
	result: DB '2х+7=',0
	
SECTION .bss
	x: RESB 80
	res: RESB 80
	
SECTION .text
GLOBAL _start
	_start:
	
mov eax, msg	; вызов подпрограммы печати сообщения
call sprint	; 'Введите x: '

mov ecx, x
mov edx, 80
call sread	; вызов подпрограммы ввода сообщения

mov eax, x	; вызов подпрограммы преобразования
call atoi	; ASCII кода в число, `eax=x`

call _subcalcul
call _calcul

mov eax, result
call sprint
mov eax, [res]
call iprintLF

call quit

_calcul:
	mov ebx, 2
	mul ebx
	add eax, 7
	mov[res], eax
	
	ret

_subcalcul:
	mov ebx, 3
	mul ebx
	sub eax, 1
	
	ret

