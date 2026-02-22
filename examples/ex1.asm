section .bss
buffer resb 100

section .text
global _start
_start:
  mov eax, 3
  mov ebx, 0        ; stdin
  mov ecx, buffer
  mov edx, 10
  int 0x80

  mov eax,1
  mov ebx,101 

  int 0x80
