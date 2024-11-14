%include 'in_out.asm'
section .data
msg1 db 'Введите B: ',0h
msg2 db "Наибольшее число: ",0h
A dd '20'
C dd '50'
section .bss
max resb 10
B resb 10
section .text
global _start
_start:
; ---------- Вывод сообщения 'Введите B: '
mov eax,msg1
call sprint
; ---------- Ввод 'B'
mov ecx,B
mov edx,10
call sread
; ---------- Преобразование 'B' из символа в число
mov eax,B
call atoi
mov [B],eax
; ---------- Записываем 'A' в переменную 'max'
mov ecx,[A] 
mov [max],ecx
; ---------- Сравниваем 'A' и 'С' (как символы)
cmp ecx,[C]
jg check_B
mov ecx,[C] 
mov [max],ecx
; ---------- Преобразование 'max(A,C)' из символа в число
check_B:
mov eax,
call atoi
mov [max],eax
; ---------- Сравниваем 'max(A,C)' и 'B' (как числа)
mov ecx,[max]
cmp ecx,[B]
jg fin
mov ecx,[B]
mov [max],ecx
; ---------- Вывод результата
fin:
mov eax, msg2
call sprint
mov eax,[max]
call iprintLF
call quit
