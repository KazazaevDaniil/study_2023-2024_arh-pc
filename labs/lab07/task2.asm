%include 'in_out.asm'

section .data

	msgx : db "Введите х:",0
	msga : db "Введите а:",0
	msgres : db "Результат:",0

section .bss

	x: resb 80
	a: resb 80

section .text
global _start
_start:
	mov eax,msga
	call sprint
	mov ecx, a
	mov edx, 80
	call sread
	mov eax, a
	call atoi
	cmp eax, 3
	jl _funca
	
	mov eax,msgx
	call sprint
	mov ecx,x
	mov edx,80
	call sread
	mov eax,x
	call atoi
	jge _funcx

_funcx:
	add eax, 1
	jmp _fin
	
_funca:
	mov edx,3
	mul edx
	jmp _fin
	
_fin:
	mov ecx, eax
	mov eax, msgres
	call sprint
	mov eax,ecx
	call iprintLF
	call quit
