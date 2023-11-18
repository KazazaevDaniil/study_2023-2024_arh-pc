%include 'in_out.asm'

SECTION .data

msg: DB 'Введите значение х: ',0
rem: DB 'Ответ: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,msg
call sprintLF

mov ecx,x
mov edx, 80
call sread

mov eax, x
call atoi

add eax, 11
mov ebx, 2
mul ebx
sub eax, 6
mov edx,eax

mov eax,rem
call sprint
mov eax,edx
call iprintLF

call quit

