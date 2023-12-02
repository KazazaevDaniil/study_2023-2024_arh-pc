%include 'in_out.asm'

SECTION .data
	msg1 db 'Введите N: ', 0h
	
SECTION .bss
	N: resb 10
	
SECTION .text
	global _start
_start:


; ----- Вывод сообщения
	mov eax, msg1
	call sprint

; ----- Ввод 'N'
	mov ecx, N
	mov edx, 10
	call sread

; ----- Преобразование из символа в число
	mov eax, N
	call atoi
	mov [N],eax

; ----- Цикл
	mov ecx,[N] ; Счетчик цикла 'ecx = N'
label:
	push ecx ; добавление значения ecx в стек
	sub ecx,1
	mov [N],ecx
	mov eax,[N]
	call iprintLF
	pop ecx ; извлечение значения ecx из стека
	
	loop label

	call quit
