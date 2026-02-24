global _start
_start:
  mov eax,1
  mov ebx,40
  jmp skip
  mov ebx,20

skip:
  int 0x80
