%include 'in_out.asm'

SECTION .data
filename db 'name.txt', 0h
msg db 'Как выс зовут?', 0h
msg2 db 'Меня зовут ',0h
SECTION .bss
name resb 255

SECTION .text
global _start
	_start:
	
mov eax,msg
call sprintLF

mov ecx, name
mov edx, 255
call sread

mov ecx, 0777o
mov ebx, filename 
mov eax, 8 
int 80h 

mov ecx, 2
mov ebx, filename
mov eax, 5
int 80h

mov esi, eax

mov edx, 80 ; количество байтов для записи
mov ecx, msg2 ; адрес строки для записи в файл
mov ebx, eax ; дескриптор файла
mov eax, 4
int 80h 

mov ebx, esi
mov eax, 6
int 80h

call quit
