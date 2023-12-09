%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0

SECTION .text
global _start

_start:

	pop ecx 
	pop edx 	
	sub ecx,1 	
	mov esi, 0	
		
_next:
	cmp ecx,0h 	
	jz _end 
		
	pop eax
	call atoi
	
	call _function

	loop _next 	
_end:
	mov eax, msg 	
	call sprint
	mov eax, esi 	
	call iprintLF 	
	call quit 	
	
_function:
	mov ebx, 2
	imul ebx
	add esi, eax
	add esi, 7
	ret