global _start

_start:
  mov eax,1
  mov ebx,5
  mov ecx,20
  cmp ecx,18
  jg skip
  mov ebx,10
  int 0x80

skip:
int 0x80
