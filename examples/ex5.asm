global _start
section .data
  mssg db "Is this working?", 0x0a
  len equ $-mssg

section .text
_start:
  mov ebx,0
  jmp _mid
_mid:
  cmp ebx,5
  jle pr
  mov eax,1
  int 0x80

pr:
  mov eax,4
  mov ecx,mssg
  mov edx,len
  int 0x80
  add ebx,1
  jmp _mid
