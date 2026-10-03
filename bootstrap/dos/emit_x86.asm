	.intel_syntax noprefix

.section .text
.balign 16

.globl _HISREGFREE
_HISREGFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
cmp dword ptr [ebp+8], 0
jne .L_009C
cmp dword ptr [ebp+12], 4
je .L_009F
.L_00A0:
cmp dword ptr [ebp+12], 2
je .L_009F
.L_00A1:
cmp dword ptr [ebp+12], 1
jne .L_009E
.L_009F:
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [_EMIT+132]
test eax, eax
jne .L_00A3
mov dword ptr [ebp-4], 0
jmp .L_009A
.L_00A3:
.L_00A2:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+132], eax
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+128]
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [ebx+40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFINDREGNOTINVREG
_HFINDREGNOTINVREG:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .L_00A9
.L_00AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-24], 2
je .L_00AC
.L_00AD:
cmp dword ptr [ebp-24], 3
jne .L_00AB
.L_00AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00B1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AB:
.L_00A7:
mov dword ptr [ebp-16], -1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_00B3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B2:
push dword ptr [_EMIT+8]
mov eax, dword ptr [_EMIT+8]
call dword ptr [eax+24]
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -1
jne .L_00B7
cmp dword ptr [ebp+12], 0
jne .L_00B9
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00BA
.L_00BD:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00BF
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00C1
jmp .L_00BC
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
.L_00BB:
dec dword ptr [ebp-24]
.L_00BA:
cmp dword ptr [ebp-24], 0
jge .L_00BD
.L_00BC:
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00C2
.L_00C5:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00C7
cmp dword ptr [ebp-24], 2
je .L_00C9
cmp dword ptr [ebp-24], 1
je .L_00CB
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00CD
jmp .L_00C4
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C3:
dec dword ptr [ebp-24]
.L_00C2:
cmp dword ptr [ebp-24], 0
jge .L_00C5
.L_00C4:
.L_00B8:
jmp .L_00B6
.L_00B7:
cmp dword ptr [ebp+12], 0
jne .L_00CF
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00D0
.L_00D3:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-24]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-24]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D5
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00D7
jmp .L_00D2
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D1:
dec dword ptr [ebp-24]
.L_00D0:
cmp dword ptr [ebp-24], 0
jge .L_00D3
.L_00D2:
jmp .L_00CE
.L_00CF:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D8
.L_00DB:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-8]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00DD
cmp dword ptr [ebp-8], 2
je .L_00DF
cmp dword ptr [ebp-8], 1
je .L_00E1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00E3
jmp .L_00DA
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
.L_00DC:
.L_00D9:
dec dword ptr [ebp-8]
.L_00D8:
cmp dword ptr [ebp-8], 0
jge .L_00DB
.L_00DA:
.L_00CE:
.L_00B6:
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFINDFREEREG
_HFINDFREEREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E8:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+24]
add esp, 4
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00EA
.L_00ED:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00EF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00EF:
.L_00EE:
.L_00EB:
dec dword ptr [ebp-8]
.L_00EA:
cmp dword ptr [ebp-8], 0
jge .L_00ED
.L_00EC:
.L_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HISREGINVREG
_HISREGINVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 4
jne .L_00F4
.L_00F5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_00F7
mov dword ptr [ebp-4], -1
jmp .L_00F1
.L_00F7:
.L_00F6:
jmp .L_00F2
.L_00F4:
cmp dword ptr [ebp-8], 2
je .L_00F9
.L_00FA:
cmp dword ptr [ebp-8], 3
jne .L_00F8
.L_00F9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00FE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .L_0100
mov dword ptr [ebp-4], -1
jmp .L_00F1
.L_0100:
.L_00FF:
.L_00FE:
.L_00FD:
.L_00FC:
.L_00FB:
.L_00F8:
.L_00F2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_0102
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_0104
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_0106
mov dword ptr [ebp-4], -1
.L_0106:
.L_0105:
.L_0104:
.L_0103:
.L_0102:
.L_0101:
.L_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HGETREGNAME
_HGETREGNAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
cmp dword ptr [ebp+12], -1
jne .L_010A
mov dword ptr [ebp-4], 0
jmp .L_0109
.L_010A:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_010B
mov dword ptr [ebp-12], 24
jmp .L_010D
.L_010B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_010D:
mov eax, dword ptr [ebp-12]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 3
add ebx, dword ptr [ebp+12]
lea eax, [_RNAMETB+ebx*8]
mov dword ptr [ebp-4], eax
.L_0109:
.L_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HPREPOPERAND
_HPREPOPERAND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0129:
cmp dword ptr [ebp+8], 0
jne .L_012C
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_012A
.L_012C:
.L_012B:
cmp dword ptr [ebp+16], -2147483648
jne .L_012E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
.L_012E:
.L_012D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
jmp .L_0130
.L_0132:
cmp dword ptr [ebp+28], 0
je .L_0134
push 0
push 12
mov eax, dword ptr [ebp+16]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0135
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_0133
.L_0134:
push 0
push 2
push offset _Lt_0136
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0133:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 1
jne .L_0138
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [_Lt_015A], eax
jmp .L_0137
.L_0138:
push dword ptr [ebp+8]
call _HGETIDXNAME
add esp, 4
mov dword ptr [_Lt_015A], eax
.L_0137:
cmp dword ptr [_Lt_015A], 0
je .L_013A
push 0
push -1
push 0
push dword ptr [_Lt_015A]
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_013A:
.L_0139:
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx+36]
adc eax, dword ptr [ecx+40]
mov ecx, ebx
mov dword ptr [ebp+20], ecx
cmp dword ptr [ebp+24], 0
je .L_013D
add dword ptr [ebp+20], 4
.L_013D:
.L_013C:
cmp dword ptr [ebp+20], 0
jle .L_013F
cmp dword ptr [_Lt_015A], 0
je .L_0141
push 0
push 2
push offset _Lt_0116
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
.L_0141:
.L_0140:
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_013E
.L_013F:
cmp dword ptr [ebp+20], 0
jge .L_0142
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_013E
.L_0142:
cmp dword ptr [_Lt_015A], 0
jne .L_0144
push 0
push 2
push offset _Lt_0145
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
.L_0144:
.L_0143:
.L_013E:
push 0
push 2
push offset _Lt_0146
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_012F
.L_0147:
push 0
push 8
push offset _Lt_0148
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_015B
cmp dword ptr [eax+36], 0
je .L_014B
.L_015B:
push 0
push 4
push offset _Lt_014C
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_014B:
.L_014A:
jmp .L_012F
.L_014E:
cmp dword ptr [ebp+24], 0
jne .L_0150
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp+16]
call _HGETREGNAME
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_014F
.L_0150:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
push dword ptr [ecx+12]
push dword ptr [ebp+16]
call _HGETREGNAME
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_014F:
jmp .L_012F
.L_0151:
cmp dword ptr [ebp+24], 0
jne .L_0153
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [_Lt_015C], ebx
mov dword ptr [_Lt_015C+4], ecx
jmp .L_0152
.L_0153:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [_Lt_015C], eax
mov dword ptr [_Lt_015C+4], ebx
.L_0152:
cmp dword ptr [ebp+16], 1
jne .L_0155
cmp dword ptr [_Lt_015C+4], 0
jne .L_015D
cmp dword ptr [_Lt_015C], 0
je .L_0157
.L_015D:
push 0
push 2
push offset _Lt_0004
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_0156
.L_0157:
push 0
push 2
push offset _Lt_0145
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0156:
jmp .L_0154
.L_0155:
push 0
push -1
push dword ptr [_Lt_015C+4]
push dword ptr [_Lt_015C]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0154:
jmp .L_012F
.L_0158:
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_012F
.L_0130:
cmp dword ptr [ebp-4], 5
ja .L_0158
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0159+eax*4]
_.L_0159:
.int .L_0151
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_014E
.int .L_0147
.L_012F:
.L_012A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_015A,4
.balign 4
	.lcomm	_Lt_015C,8

.section .text
.balign 16

.globl _HPREPOPERAND64
_HPREPOPERAND64:
push ebp
mov ebp, esp
.L_015E:
push -1
push 0
push 0
push 9
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push -1
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
.L_015F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OUTP
_OUTP:
push ebp
mov ebp, esp
sub esp, 12
.L_0166:
cmp dword ptr [_ENV+148], 0
je .L_0169
push 0
push 2
push offset _Lt_016A
push -1
push offset _Lt_016D
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_016D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_016D
call _fb_StrAssign
add esp, 20
jmp .L_0168
.L_0169:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_016D
call _fb_StrAssign
add esp, 20
.L_0168:
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_016D
call _fb_StrConcatAssign
add esp, 20
push -1
push offset _Lt_016D
call _fb_StrLen
add esp, 8
push eax
push dword ptr [_Lt_016D]
call _OUTEX
add esp, 8
.L_0167:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_016D,12

.section .text
.balign 16

.globl _HBRANCH
_HBRANCH:
push ebp
mov ebp, esp
sub esp, 12
.L_016E:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0172
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0170
push -1
push offset _Lt_0172
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0172
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0172
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0172]
call _OUTP
add esp, 4
.L_016F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0172,12

.section .text
.balign 16

.globl _HPUSH
_HPUSH:
push ebp
mov ebp, esp
sub esp, 12
.L_0173:
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0177
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0177
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0177
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0177]
call _OUTP
add esp, 4
.L_0174:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0177,12

.section .text
.balign 16

.globl _HPOP
_HPOP:
push ebp
mov ebp, esp
sub esp, 12
.L_0178:
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_017C
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_017C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_017C
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_017C]
call _OUTP
add esp, 4
.L_0179:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017C,12

.section .text
.balign 16

.globl _HMOV
_HMOV:
push ebp
mov ebp, esp
sub esp, 24
.L_017D:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0182
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0182
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0182
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0182
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0182
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0182
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0182]
call _OUTP
add esp, 4
.L_017E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0182,12

.section .text
.balign 16

.globl _HLABEL
_HLABEL:
push ebp
mov ebp, esp
.L_0192:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0196
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0195
push -1
push offset _Lt_0196
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0196]
call _OUTEX
add esp, 8
.L_0193:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0196,12

.section .text
.balign 16

.globl _EMITVARINIBEGIN
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0A14:
push 0
push 1
call __SETSECTION
add esp, 8
push 1
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR
add esp, 8
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
je .L_0A17
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
.L_0A17:
.L_0A16:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HLABEL
add esp, 4
.L_0A15:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINII
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0A19:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 2
push offset _Lt_0170
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
mov ebx, -1
jne .L_0A22
cmp dword ptr [ebp+12], 0
jne .L_0A22
.L_0A23:
xor ebx, ebx
.L_0A22:
and eax, ebx
je .L_0A1D
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_0A1D:
.L_0A1C:
mov ebx, dword ptr [ebp+8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0A1F
push 0
push 3
push offset _Lt_0A20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_HEX_l
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0A1E
.L_0A1F:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0A1E:
push 0
push 3
push offset _Lt_016C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [ebp-12]
call _OUTEX
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0A1A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINIF
_EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 48
.L_0A26:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push -1
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX
add esp, 12
push eax
push -1
push 2
push offset _Lt_0170
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTEX
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_0A27:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINIOFS
_EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 12
.L_0A2C:
push 0
push 6
push offset _Lt_0A2E
push -1
push offset _Lt_0A32
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A32
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
je .L_0A31
push 0
push 4
push offset _Lt_014C
push -1
push offset _Lt_0A32
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0A32
call _fb_StrConcatAssign
add esp, 20
.L_0A31:
.L_0A30:
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0A32
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A32]
call _OUTEX
add esp, 8
.L_0A2D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A32,12

.section .text
.balign 16

.globl _EMITVARINISTR
_EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 12
.L_0A33:
push 0
push 9
push offset _Lt_01EB
push -1
push offset _Lt_0A37
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A37
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A37
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0A36
push -1
push offset _Lt_0A37
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A37]
call _OUTEX
add esp, 8
.L_0A34:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A37,12

.section .text
.balign 16

.globl _EMITVARINIWSTR
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 20
.L_0A38:
push 0
push 9
push offset _Lt_01EB
push -1
push offset _Lt_0A40
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A40
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-16], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-20], eax
jmp .L_0A3C
.L_0A3F:
push 0
push 3
push offset _Lt_01C9
push -1
push offset _Lt_0A40
call _fb_StrConcatAssign
add esp, 20
.L_0A3D:
inc dword ptr [ebp-16]
.L_0A3C:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0A3F
.L_0A3E:
push 0
push 4
push offset _Lt_01EE
push -1
push offset _Lt_0A40
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A40]
call _OUTEX
add esp, 8
.L_0A39:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A40,12

.section .text
.balign 16

.globl _EMITVARINIPAD
_EMITVARINIPAD:
push ebp
mov ebp, esp
sub esp, 48
.L_0A41:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push 3
push offset _Lt_0A44
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 7
push offset _Lt_0A43
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTEX
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_0A42:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITFBCTINFBEGIN
_EMITFBCTINFBEGIN:
.L_0A49:
push 0
push 7
call __SETSECTION
add esp, 8
.L_0A4A:
ret
.balign 16

.globl _EMITFBCTINFSTRING
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 36
.L_0A4B:
push 0
push 0
push 4
call dword ptr [_EMIT+228]
add esp, 4
push eax
push -1
push offset _Lt_0A52
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 4
push offset _Lt_0A4E
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_0A4D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A52
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A52
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [_Lt_0A52]
call _EMITWRITESTR
add esp, 8
.L_0A4C:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A52,12

.section .text
.balign 16

.globl _EMITFBCTINFEND
_EMITFBCTINFEND:
.L_0A53:
push 0
push offset _Lt_0000
call _EMITWRITESTR
add esp, 8
.L_0A54:
ret
.balign 16

.globl _EMITGASX86_CTOR
_EMITGASX86_CTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0B3A:
lea eax, [_EMIT+148]
push edi
push esi
mov edi, eax
mov esi, offset _Lt_0B3E
mov ecx, 22
rep movsd
pop esi
pop edi
mov eax, offset __OPFNTB
mov dword ptr [_EMIT+236], eax
cmp dword ptr [_ENV+116], 1
jl .L_0B3D
push dword ptr [_EMIT+236]
call __INIT_OPFNTB_SSE
add esp, 4
.L_0B3D:
.L_0B3C:
mov dword ptr [ebp-4], -1
.L_0B3B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0B3E:
.int __INIT
.int __END
.int __GETOPTIONVALUE
.int __OPEN
.int __CLOSE
.int __ISREGPRESERVED
.int __GETFREEPRESERVEDREG
.int __GETARGREG
.int __GETRESULTREG
.int __PROCGETFRAMEREGNAME
.int __PROCBEGIN
.int __PROCEND
.int __PROCHEADER
.int __PROCFOOTER
.int __PROCALLOCARG
.int __PROCALLOCLOCAL
.int __PROCALLOCSTATICVARS
.int __SCOPEBEGIN
.int __SCOPEEND
.int __SETSECTION
.int __GETTYPESTRING
.int __GETSECTIONSTRING

.section .text
.balign 16
_fb_ctor__emit_x86:
.L_0002:
.L_0003:
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0011:
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_0012:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETIDXNAME:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_Lt_0B3F], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [_Lt_0B40], eax
cmp dword ptr [_Lt_0B3F], 0
jne .L_0111
cmp dword ptr [_Lt_0B40], 0
jne .L_0113
mov dword ptr [ebp-4], 0
jmp .L_010F
.L_0113:
.L_0112:
push 0
push 1
push offset _Lt_0000
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
jmp .L_0110
.L_0111:
push 0
push 0
push dword ptr [_Lt_0B3F]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B40], 0
je .L_0115
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0B41
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
.L_0115:
.L_0114:
.L_0110:
mov eax, dword ptr [_Lt_0B40]
push dword ptr [eax+12]
mov eax, dword ptr [_Lt_0B40]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
mov dword ptr [_Lt_0B42], eax
push 0
push -1
push 0
push dword ptr [_Lt_0B42]
push 154
push offset _Lt_0B41
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B40], 0
je .L_011A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [_Lt_0B43], ebx
cmp dword ptr [_Lt_0B43], 1
jle .L_011C
mov dword ptr [_Lt_0B44], 0
cmp dword ptr [_Lt_0B43], 3
je .L_011F
.L_0120:
cmp dword ptr [_Lt_0B43], 5
je .L_011F
.L_0121:
cmp dword ptr [_Lt_0B43], 9
jne .L_011E
.L_011F:
dec dword ptr [_Lt_0B43]
mov dword ptr [_Lt_0B44], -1
.L_011E:
.L_011D:
push 0
push -1
push 2
push offset _Lt_0122
push 154
push offset _Lt_0B41
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_Lt_0B43]
call _fb_IntToStr
add esp, 4
push eax
push 154
push offset _Lt_0B41
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B44], 0
je .L_0126
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0B41
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [_Lt_0B42]
push 154
push offset _Lt_0B41
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B41
call _fb_StrAssign
add esp, 20
.L_0126:
.L_0125:
.L_011C:
.L_011B:
.L_011A:
.L_0119:
mov eax, offset _Lt_0B41
mov dword ptr [ebp-4], eax
.L_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B41,154
.balign 4
	.lcomm	_Lt_0B3F,4
.balign 4
	.lcomm	_Lt_0B40,4
.balign 4
	.lcomm	_Lt_0B44,4
.balign 4
	.lcomm	_Lt_0B43,4
.balign 4
	.lcomm	_Lt_0B42,4

.section .text
.balign 16
_OUTEX:
push ebp
mov ebp, esp
.L_0160:
cmp dword ptr [ebp+12], 0
jne .L_0163
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp+12], eax
.L_0163:
.L_0162:
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr
add esp, 16
test eax, eax
jne .L_0165
.L_0165:
.L_0164:
.L_0161:
mov esp, ebp
pop ebp
ret
.balign 16
_HXCHG:
push ebp
mov ebp, esp
sub esp, 24
.L_0183:
push 0
push 6
push offset _Lt_0185
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0B45
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0B45
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B45]
call _OUTP
add esp, 4
.L_0184:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B45,12

.section .text
.balign 16
_HPUBLIC:
push ebp
mov ebp, esp
sub esp, 12
.L_018D:
push 0
push 10
push offset _Lt_0190
push -1
push offset _Lt_0B46
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0B46
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B46
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0B46
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B46]
call _OUTEX
add esp, 8
.L_018E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B46,12

.section .text
.balign 16
_HALIGN:
push ebp
mov ebp, esp
.L_0197:
push 0
push 9
push offset _Lt_0199
push -1
push offset _Lt_0B47
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B47]
call _OUTEX
add esp, 8
.L_0198:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B47,12

.section .text
.balign 16
_HINITREGTB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_019A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
push offset _Lt_0B48
push 6
push 0
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+8], eax
cmp dword ptr [_ENV+116], 1
jne .L_019F
push 0
push offset _Lt_0B49
push 7
push 1
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+12], eax
mov dword ptr [ebp-12], 0
.L_01A3:
push 0
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_01A4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 8
mov eax, dword ptr [ebp-12]
lea ebx, [_RNAMETB+eax*8+192]
push ebx
call _fb_StrAssign
add esp, 20
.L_01A1:
inc dword ptr [ebp-12]
.L_01A0:
cmp dword ptr [ebp-12], 7
jle .L_01A3
.L_01A2:
jmp .L_019E
.L_019F:
push -1
push offset _Lt_0B49
push 7
push 1
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+12], eax
.L_019E:
.L_019B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0B4A:
.int 7
.int 6
.int 6
.int 7
.int 7
.int 7
.balign 4
_Lt_0B48:
.int _Lt_0B4A
.int _Lt_0B4A
.int 24
.int 4
.int 1
.int 49
.int 6
.int 0
.int 5
.balign 4
_Lt_0B4B:
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.balign 4
_Lt_0B49:
.int _Lt_0B4B
.int _Lt_0B4B
.int 28
.int 4
.int 1
.int 49
.int 7
.int 0
.int 6

.section .text
.balign 16
_HENDREGTB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01A6:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.L_01AB:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
call _REGDELCLASS
add esp, 4
.L_01A9:
inc dword ptr [ebp-4]
.L_01A8:
cmp dword ptr [ebp-4], 1
jle .L_01AB
.L_01AA:
.L_01A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETGLOBALTYPEALIGN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01AC:
cmp dword ptr [ebp+8], 16
jne .L_01AF
mov dword ptr [ebp-4], 8
jmp .L_01AE
.L_01AF:
mov dword ptr [ebp-4], 4
.L_01AE:
.L_01AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGETGLOBALVARALIGN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_01B3
mov dword ptr [ebp-4], 4
jmp .L_01B2
.L_01B3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _HGETGLOBALTYPEALIGN
add esp, 4
mov dword ptr [ebp-4], eax
.L_01B2:
.L_01B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITVARBSS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [_Lt_0B4C], ebx
push 0
push 2
call __SETSECTION
add esp, 8
mov ebx, dword ptr [_Lt_0B4C]
and ebx, 8
test ebx, ebx
jne .L_01B7
mov ebx, dword ptr [_Lt_0B4C]
and ebx, 32
test ebx, ebx
jle .L_01B9
push -1
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
.L_01B9:
.L_01B8:
push 0
push 7
push offset _Lt_01BA
push -1
push offset _Lt_0B4D
call _fb_StrAssign
add esp, 20
jmp .L_01B6
.L_01B7:
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
push 0
push 6
push offset _Lt_01BB
push -1
push offset _Lt_0B4D
call _fb_StrAssign
add esp, 20
.L_01B6:
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
push 0
push -1
push offset _Lt_0B4D
push -1
push offset _Lt_0B4E
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_016A
push -1
push offset _Lt_0B4E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B4E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B4E
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_01BD
push -1
push offset _Lt_0B4E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBGETREALSIZE
add esp, 4
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
push -1
push offset _Lt_0B4E
call _fb_StrConcatAssign
add esp, 20
push -1
push dword ptr [_Lt_0B4E]
call _EMITWRITESTR
add esp, 8
push 2
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR
add esp, 8
.L_01B5:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B4D,12
.balign 4
	.lcomm	_Lt_0B4E,12
.balign 4
	.lcomm	_Lt_0B4C,4

.section .text
.balign 16
_HWRITEHEADER:
.L_01BE:
lea eax, [_ENV+304]
push eax
call _EDBGEMITHEADER
add esp, 4
push -1
push offset _Lt_01C0
call _EMITWRITESTR
add esp, 8
.L_01BF:
ret
.balign 16
_HEMITVARCONST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [_Lt_0B4F], ebx
mov ebx, dword ptr [_Lt_0B4F]
mov dword ptr [ebp-4], ebx
jmp .L_01C4
.L_01C6:
push 0
push 2
push offset _Lt_01C7
push -1
push offset _Lt_0B50
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HESCAPE
add esp, 4
push eax
push -1
push offset _Lt_0B50
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B50
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_01CA
push -1
push offset _Lt_0B50
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C3
.L_01CB:
push 0
push 2
push offset _Lt_01C7
push -1
push offset _Lt_0B50
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HESCAPEW
add esp, 4
push eax
push -1
push offset _Lt_0B50
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B50
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-20], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-24], eax
jmp .L_01CE
.L_01D1:
push 0
push 3
push offset _Lt_01C9
push -1
push offset _Lt_0B50
call _fb_StrConcatAssign
add esp, 20
.L_01CF:
inc dword ptr [ebp-20]
.L_01CE:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_01D1
.L_01D0:
push 0
push 2
push offset _Lt_01C7
push -1
push offset _Lt_0B50
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C3
.L_01D2:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push -1
push offset _Lt_0B50
call _fb_StrAssign
add esp, 20
jmp .L_01C3
.L_01C4:
mov eax, dword ptr [ebp-4]
add eax, 4294967292
cmp eax, 3
ja .L_01D2
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_01D3+eax*4-16]
_.L_01D3:
.int .L_01C6
.int .L_01D2
.int .L_01D2
.int .L_01CB
.L_01C3:
cmp dword ptr [_ENV+108], 2
jne .L_01D5
push 0
push 0
call __SETSECTION
add esp, 8
jmp .L_01D4
.L_01D5:
push 0
push 1
call __SETSECTION
add esp, 8
.L_01D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_01D7
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call _HALIGN
add esp, 4
jmp .L_01D6
.L_01D7:
push dword ptr [_Lt_0B4F]
call _HGETGLOBALTYPEALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
.L_01D6:
push 0
push 0
push dword ptr [_Lt_0B4F]
call __GETTYPESTRING
add esp, 4
push eax
push -1
push offset _Lt_0B51
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B52
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_01D8
push -1
push offset _Lt_0B52
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B51
push -1
push offset _Lt_0B52
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_016A
push -1
push offset _Lt_0B52
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B50
push -1
push offset _Lt_0B52
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B52]
call _EMITWRITESTR
add esp, 8
.L_01C2:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B50,12
.balign 4
	.lcomm	_Lt_0B51,12
.balign 4
	.lcomm	_Lt_0B52,12
.balign 4
	.lcomm	_Lt_0B4F,4

.section .text
.balign 16
_HWRITECTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01D9:
cmp dword ptr [ebp+8], 0
jne .L_01DC
jmp .L_01DA
.L_01DC:
.L_01DB:
.L_01DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .L_01E1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+56]
cmp dword ptr [ebp+12], 0
je .L_01E2
mov dword ptr [ebp-4], 5
jmp .L_0B53
.L_01E2:
mov dword ptr [ebp-4], 6
.L_0B53:
push dword ptr [ebp-4]
call __SETSECTION
add esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _EMITVARINIOFS
add esp, 8
.L_01E1:
.L_01E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
.L_01DF:
cmp dword ptr [ebp+8], 0
jne .L_01DD
.L_01DE:
.L_01DA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITEXPORT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_01E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .L_01E7
push 0
push 4
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+292], 0
je .L_01E9
inc dword ptr [ebp-4]
.L_01E9:
.L_01E8:
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_01EE
push -1
push 0
push dword ptr [ebp-4]
push 18
push offset _Lt_01ED
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call _EMITWRITESTR
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_01E7:
.L_01E6:
.L_01E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDECLVARIABLE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_01F5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 4
je .L_01F9
.L_01FA:
cmp dword ptr [ebp-4], 7
jne .L_01F8
.L_01F9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_01FC
jmp .L_01F3
.L_01FC:
.L_01FB:
.L_01F8:
.L_01F6:
push dword ptr [ebp+8]
call _HEMITVARCONST
add esp, 4
jmp .L_01F3
.L_01F5:
.L_01F4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32768
test eax, eax
je .L_01FE
jmp .L_01F3
.L_01FE:
.L_01FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0200
jmp .L_01F3
.L_0200:
.L_01FF:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
je .L_0202
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2
test ebx, ebx
jne .L_0204
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32
test ecx, ecx
jne .L_0206
jmp .L_01F3
.L_0206:
.L_0205:
.L_0204:
.L_0203:
push 0
push 1
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01F3
.L_0202:
.L_0201:
push dword ptr [ebp+8]
call _HEMITVARBSS
add esp, 4
.L_01F3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCLEARLOCALS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_0207:
cmp dword ptr [ebp+8], 0
jne .L_020A
jmp .L_0208
.L_020A:
.L_0209:
cmp dword ptr [_ENV+112], 3
jl .L_020C
mov eax, dword ptr [ebp+8]
shr eax, 3
cmp eax, 7
jbe .L_020E
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_0210
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0210:
.L_020F:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0211
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 3
push eax
call _fb_UIntToStr
add esp, 4
push eax
push 9
push offset _Lt_0215
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0218
call _OUTP
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0B56
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B56]
call _HLABEL
add esp, 4
push offset _Lt_0219
call _OUTP
add esp, 4
push offset _Lt_021A
call _OUTP
add esp, 4
push offset _Lt_021B
call _OUTP
add esp, 4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push offset _Lt_0B56
push 5
push offset _Lt_021C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call _OUTP
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_021F
call _OUTP
add esp, 4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_0221
push offset _Lt_0084
call _HPOP
add esp, 4
.L_0221:
.L_0220:
jmp .L_020D
.L_020E:
mov eax, dword ptr [ebp+8]
shr eax, 3
test eax, eax
jbe .L_0222
push offset _Lt_0218
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
shr eax, 3
mov ebx, eax
mov dword ptr [_Lt_0B57], ebx
jmp .L_0223
.L_0226:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 7
push offset _Lt_0228
push -1
push -1
mov ebx, dword ptr [_Lt_0B57]
sal ebx, 3
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 11
push offset _Lt_0227
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0224:
dec dword ptr [_Lt_0B57]
.L_0223:
cmp dword ptr [_Lt_0B57], 1
jge .L_0226
.L_0225:
push offset _Lt_021F
call _OUTP
add esp, 4
.L_0222:
.L_020D:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_022D
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_022F
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_022E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_022D:
.L_022C:
jmp .L_0208
.L_020C:
.L_020B:
mov eax, dword ptr [ebp+8]
shr eax, 2
cmp eax, 6
jbe .L_0234
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_0236
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0236:
.L_0235:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0211
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push 9
push offset _Lt_0215
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_023C
call _OUTP
add esp, 4
push offset _Lt_023D
call _OUTP
add esp, 4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_023F
push offset _Lt_0084
call _HPOP
add esp, 4
.L_023F:
.L_023E:
jmp .L_0233
.L_0234:
mov eax, dword ptr [ebp+8]
shr eax, 2
mov ebx, eax
mov dword ptr [_Lt_0B57], ebx
jmp .L_0240
.L_0243:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_022F
push -1
push -1
mov ebx, dword ptr [_Lt_0B57]
sal ebx, 2
add ebx, dword ptr [ebp+12]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_022E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0241:
dec dword ptr [_Lt_0B57]
.L_0240:
cmp dword ptr [_Lt_0B57], 1
jge .L_0243
.L_0242:
.L_0233:
.L_0208:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B57,4
.balign 4
	.lcomm	_Lt_0B56,12

.section .text
.balign 16
_HFRAMEBYTESTOALLOC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0247:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+12]
add eax, 3
and eax, -4
mov dword ptr [_Lt_0B58], eax
mov eax, dword ptr [_ENV+284]
and eax, 64
test eax, eax
je .L_024A
mov dword ptr [_Lt_0B59], 8
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_024C
add dword ptr [_Lt_0B59], 4
.L_024C:
.L_024B:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_024E
add dword ptr [_Lt_0B59], 4
.L_024E:
.L_024D:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_0250
add dword ptr [_Lt_0B59], 4
.L_0250:
.L_024F:
mov eax, dword ptr [_Lt_0B59]
add dword ptr [_Lt_0B58], eax
mov eax, dword ptr [_Lt_0B58]
add eax, 15
and eax, -16
mov dword ptr [_Lt_0B58], eax
mov eax, dword ptr [_Lt_0B59]
sub dword ptr [_Lt_0B58], eax
.L_024A:
.L_0249:
mov eax, dword ptr [_Lt_0B58]
mov dword ptr [ebp-4], eax
.L_0248:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B58,4
.balign 4
	.lcomm	_Lt_0B59,4

.section .text
.balign 16
_HSTOREREGISTERARGUMENT:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_0251:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
push 0
push 15
push offset _Lt_0253
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-16], 0
jl .L_0255
jg .L_0B5A
cmp dword ptr [ebp-20], 0
jbe .L_0255
.L_0B5A:
push 0
push 2
push offset _Lt_0116
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign
add esp, 20
.L_0255:
.L_0254:
cmp dword ptr [ebp-16], 0
jne .L_0B5B
cmp dword ptr [ebp-20], 0
je .L_0257
.L_0B5B:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0257:
.L_0256:
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017F
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0252:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSTOREREGISTERARGUMENTS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_025C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.L_025E:
cmp dword ptr [ebp-4], 0
je .L_025F
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_0262
.L_0263:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 4
push offset _Lt_0086
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call _HSTOREREGISTERARGUMENT
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0260
.L_0262:
cmp dword ptr [ebp-8], 2
jne .L_0265
.L_0266:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 4
push offset _Lt_0083
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call _HSTOREREGISTERARGUMENT
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0265:
.L_0260:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_025E
.L_025F:
.L_025D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCREATEFRAME:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.L_0268:
cmp dword ptr [_ENV+108], 2
jne .L_026A
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0B5C
.L_026A:
mov dword ptr [ebp-4], 0
.L_0B5C:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_0B5E], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_026D
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC
add esp, 4
mov dword ptr [_Lt_0B5F], eax
mov eax, dword ptr [_Lt_0B5F]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+184]
je .L_026F
push offset _Lt_0089
call _HPUSH
add esp, 4
cmp dword ptr [_Lt_0B5E], 0
je .L_0271
push offset _Lt_0272
call _OUTP
add esp, 4
push offset _Lt_0273
call _OUTP
add esp, 4
.L_0271:
.L_0270:
push offset _Lt_0274
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0B5E], 0
je .L_0276
push offset _Lt_0277
call _OUTP
add esp, 4
.L_0276:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 4096
test ecx, ecx
je .L_0279
push offset _Lt_027A
call _OUTP
add esp, 4
add dword ptr [_Lt_0B5F], 8
.L_0279:
.L_0278:
cmp dword ptr [_Lt_0B5F], 0
jle .L_027C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [_Lt_0B5F]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_027D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call _OUTP
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_027C:
.L_027B:
.L_026F:
.L_026E:
cmp dword ptr [_ENV+108], 3
jne .L_0281
cmp dword ptr [_ENV+184], 0
je .L_0283
call _SYMBMAKEPROFILELABELNAME
mov dword ptr [_Lt_0B63], eax
push 0
push offset _Lt_0285
call _OUTEX
add esp, 8
push 0
push offset _Lt_0287
call _OUTEX
add esp, 8
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push 2
push offset _Lt_0194
push -1
push 0
push dword ptr [_Lt_0B63]
push 2
push offset _Lt_0006
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTEX
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_028C
call _OUTP
add esp, 4
push 0
push offset _Lt_028E
call _OUTEX
add esp, 8
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 0
push dword ptr [_Lt_0B63]
push 18
push offset _Lt_028F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0292
call _OUTP
add esp, 4
.L_0283:
.L_0282:
.L_0281:
.L_0280:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_0294
push offset _Lt_0087
call _HPUSH
add esp, 4
.L_0294:
.L_0293:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_0296
push offset _Lt_0085
call _HPUSH
add esp, 4
.L_0296:
.L_0295:
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_0298
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0298:
.L_0297:
push dword ptr [ebp+8]
call _HSTOREREGISTERARGUMENTS
add esp, 4
.L_026D:
.L_026C:
.L_0269:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B5F,4
.balign 4
	.lcomm	_Lt_0B64,4
.balign 4
	.lcomm	_Lt_0B65,4
.balign 4
	.lcomm	_Lt_0B63,4
.balign 4
	.lcomm	_Lt_0B5E,4

.section .text
.balign 16
_HDESTROYFRAME:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_0299:
mov eax, dword ptr [_ENV+108]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_Lt_0B68], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_029C
cmp dword ptr [_Lt_0B68], 0
je .L_029D
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0B66
.L_029D:
mov dword ptr [ebp-4], 0
.L_0B66:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_0B6A], eax
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC
add esp, 4
mov dword ptr [_Lt_0B6B], eax
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_02A0
push offset _Lt_0084
call _HPOP
add esp, 4
.L_02A0:
.L_029F:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_02A2
push offset _Lt_0085
call _HPOP
add esp, 4
.L_02A2:
.L_02A1:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_02A4
push offset _Lt_0087
call _HPOP
add esp, 4
.L_02A4:
.L_02A3:
mov eax, dword ptr [_Lt_0B6B]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+184]
je .L_02A6
push offset _Lt_02A7
call _OUTP
add esp, 4
push offset _Lt_0089
call _HPOP
add esp, 4
cmp dword ptr [_Lt_0B6A], 0
je .L_02A9
push offset _Lt_02AA
call _OUTP
add esp, 4
push offset _Lt_02AB
call _OUTP
add esp, 4
.L_02A9:
.L_02A8:
.L_02A6:
.L_02A5:
cmp dword ptr [ebp+12], 0
jle .L_02AD
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_02AE
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call _OUTP
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_02AC
.L_02AD:
push offset _Lt_02B1
call _OUTP
add esp, 4
.L_02AC:
.L_029C:
.L_029B:
cmp dword ptr [_Lt_0B68], 0
je .L_02B3
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 5
push offset _Lt_02B5
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_02B4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTEX
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.L_02B3:
.L_02B2:
.L_029A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B68,4
.balign 4
	.lcomm	_Lt_0B6B,4
.balign 4
	.lcomm	_Lt_0B6A,4

.section .text
.balign 16
__EMITLIT:
push ebp
mov ebp, esp
sub esp, 24
.L_02BB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 3
push offset _Lt_016C
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp-12]
call _OUTEX
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_02BC:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 108
push ebx
push esi
push edi
.L_02BF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push 2
push offset _Lt_0194
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTEX
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
.L_02C5:
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp-68]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-64]
sal ecx, 3
mov esi, dword ptr [ebp+12]
add esi, ecx
mov edi, dword ptr [esi]
mov ecx, dword ptr [esi+4]
cmp eax, ecx
jne .L_02C9
cmp ebx, edi
jne .L_02C9
.L_0B6F:
mov edi, dword ptr [ebp-64]
sal edi, 2
mov ecx, dword ptr [ebp+16]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-72], edi
inc dword ptr [ebp-64]
jmp .L_02C8
.L_02C9:
mov edi, dword ptr [ebp+24]
mov dword ptr [ebp-72], edi
.L_02C8:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
push dword ptr [ebp-72]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_0170
push 0
push 9
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov edi, dword ptr [ebp-68]
mov eax, edi
sar eax, 31
mov ebx, dword ptr [ebp+36]
mov ecx, dword ptr [ebp+40]
cmp eax, ecx
jne .L_02CE
cmp edi, ebx
jne .L_02CE
.L_0B70:
jmp .L_02C6
.L_02CE:
.L_02CD:
inc dword ptr [ebp-68]
.L_02C7:
jmp .L_02C5
.L_02C6:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.L_02C0:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
sub esp, 12
.L_02CF:
push 0
push 6
push offset _Lt_02D2
push -1
push offset _Lt_0B71
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B71
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B71
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B71]
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_02D5
push 0
push 10
push offset _Lt_02D6
push -1
push offset _Lt_0B71
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B71
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B71]
call _OUTP
add esp, 4
.L_02D5:
.L_02D4:
.L_02D0:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B71,12

.section .text
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
.L_02D7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B72
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_02D2
push -1
push offset _Lt_0B73
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B72
push -1
push offset _Lt_0B73
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B73]
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_02DA
push 0
push 10
push offset _Lt_02D6
push -1
push offset _Lt_0B73
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B73
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B73]
call _OUTP
add esp, 4
.L_02DA:
.L_02D9:
.L_02D8:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B72,12
.balign 4
	.lcomm	_Lt_0B73,12

.section .text
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 16
.L_02DB:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-16], eax
jmp .L_02DE
.L_02E0:
push 0
push 5
push offset _Lt_02E1
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02E2:
push 0
push 5
push offset _Lt_02E3
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02E4:
push 0
push 4
push offset _Lt_02E5
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02E6:
push 0
push 4
push offset _Lt_02E7
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02E8:
push 0
push 4
push offset _Lt_02E9
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02EA:
push 0
push 5
push offset _Lt_02EB
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
jmp .L_02DD
.L_02DE:
mov eax, dword ptr [ebp-16]
add eax, 4294967204
cmp eax, 5
ja .L_02DD
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_02EC+eax*4-368]
_.L_02EC:
.int .L_02E8
.int .L_02E6
.int .L_02E4
.int .L_02EA
.int .L_02E2
.int .L_02E0
.L_02DD:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B74
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B74
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B74]
call _OUTP
add esp, 4
.L_02DC:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B74,12

.section .text
.balign 16
__EMITJUMP:
push ebp
mov ebp, esp
sub esp, 12
.L_02EE:
push 0
push 5
push offset _Lt_02F0
push -1
push offset _Lt_0B75
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B75
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B75
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B75]
call _OUTP
add esp, 4
.L_02EF:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B75,12

.section .text
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
.L_02F2:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B76
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_02F0
push -1
push offset _Lt_0B77
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B76
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B77]
call _OUTP
add esp, 4
.L_02F3:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B76,12
.balign 4
	.lcomm	_Lt_0B77,12

.section .text
.balign 16
__EMITRET:
push ebp
mov ebp, esp
sub esp, 12
.L_02F4:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_02AE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B78
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B78]
call _OUTP
add esp, 4
.L_02F5:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B78,12

.section .text
.balign 16
__EMITPUBLIC:
push ebp
mov ebp, esp
sub esp, 12
.L_02F8:
push 0
push 10
push offset _Lt_0190
push -1
push offset _Lt_0B79
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B79
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B79
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0B79
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B79]
call _OUTEX
add esp, 8
.L_02F9:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B79,12

.section .text
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
.L_02FC:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B7A
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0195
push -1
push offset _Lt_0B7A
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B7A]
call _OUTEX
add esp, 8
.L_02FD:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B7A,12

.section .text
.balign 16
__EMITNOP:
.L_02FE:
.L_02FF:
ret
.balign 16
_HULONG2DBL:
push ebp
mov ebp, esp
.L_0301:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0B7B
call _fb_StrAssign
add esp, 20
push -1
push -1
push 0
push 8
push offset _Lt_0B7C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0303
push -1
push offset _Lt_0B7D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7C
push -1
push offset _Lt_0B7D
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0304
push -1
push offset _Lt_0B7D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B7D]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0305
push -1
push offset _Lt_0B7D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7B
push -1
push offset _Lt_0B7D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B7D]
call _OUTP
add esp, 4
push offset _Lt_0306
call _HPUSH
add esp, 4
push offset _Lt_0307
call _HPUSH
add esp, 4
push offset _Lt_0145
call _HPUSH
add esp, 4
push offset _Lt_0308
call _OUTP
add esp, 4
push offset _Lt_0309
call _OUTP
add esp, 4
push offset _Lt_030A
call _OUTP
add esp, 4
push dword ptr [_Lt_0B7B]
call _HLABEL
add esp, 4
.L_0302:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B7B,12
.balign 4
	.lcomm	_Lt_0B7C,12
.balign 4
	.lcomm	_Lt_0B7D,12

.section .text
.balign 16
__EMITSTORL2L:
push ebp
mov ebp, esp
.L_030B:
push offset _Lt_0B7E
push offset _Lt_0B7F
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0B80
push offset _Lt_0B81
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B82
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B81
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B82]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B82
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7E
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B80
push -1
push offset _Lt_0B82
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B82]
call _OUTP
add esp, 4
.L_030C:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B7F,12
.balign 4
	.lcomm	_Lt_0B7E,12
.balign 4
	.lcomm	_Lt_0B81,12
.balign 4
	.lcomm	_Lt_0B80,12
.balign 4
	.lcomm	_Lt_0B82,12

.section .text
.balign 16
__EMITSTORI2L:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_030E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0310
mov dword ptr [ebp-4], 24
jmp .L_0B83
.L_0310:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B83:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B87], ebx
push offset _Lt_0B88
push offset _Lt_0B89
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B8A
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_0313
push dword ptr [_Lt_0B8A]
push dword ptr [_Lt_0B89]
call _HMOV
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0314
mov dword ptr [ebp-12], 24
jmp .L_0B84
.L_0314:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0B84:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_0B8B
jg .L_0B8C
cmp dword ptr [eax+24], 0
jb .L_0B8B
.L_0B8C:
xor ecx, ecx
.L_0B8B:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .L_0317
push offset _Lt_0318
push dword ptr [_Lt_0B88]
call _HMOV
add esp, 8
jmp .L_0316
.L_0317:
push offset _Lt_0145
push dword ptr [_Lt_0B88]
call _HMOV
add esp, 8
.L_0316:
jmp .L_030F
.L_0313:
.L_0312:
cmp dword ptr [_Lt_0B87], 4
jge .L_031A
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B8D
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_031B
mov dword ptr [ebp-12], 24
jmp .L_0B85
.L_031B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0B85:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_031E
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
jmp .L_031D
.L_031E:
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
.L_031D:
push 0
push -1
push offset _Lt_0B8D
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B8E]
call _OUTP
add esp, 4
jmp .L_0319
.L_031A:
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B8D
call _fb_StrAssign
add esp, 20
.L_0319:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B89
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8D
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B8E]
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0321
mov dword ptr [ebp-8], 24
jmp .L_0B86
.L_0321:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0B86:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0324
push dword ptr [_Lt_0B8D]
call _HPUSH
add esp, 4
push 0
push 5
push offset _Lt_0325
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8D
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_0326
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B8E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B88
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8D
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B8E]
call _OUTP
add esp, 4
push dword ptr [_Lt_0B8D]
call _HPOP
add esp, 4
jmp .L_0323
.L_0324:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B8E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B88
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0304
push -1
push offset _Lt_0B8E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B8E]
call _OUTP
add esp, 4
.L_0323:
.L_030F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B89,12
.balign 4
	.lcomm	_Lt_0B88,12
.balign 4
	.lcomm	_Lt_0B8A,12
.balign 4
	.lcomm	_Lt_0B8D,12
.balign 4
	.lcomm	_Lt_0B8E,12
.balign 4
	.lcomm	_Lt_0B87,4

.section .text
.balign 16
__EMITSTORF2L:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0327:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B90
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0329
mov dword ptr [ebp-4], 24
jmp .L_0B8F
.L_0329:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B8F:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_032C
push 0
push 7
push offset _Lt_032D
push -1
push offset _Lt_0B91
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B90
push -1
push offset _Lt_0B91
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B91]
call _OUTP
add esp, 4
.L_032C:
.L_032B:
.L_0328:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B90,12
.balign 4
	.lcomm	_Lt_0B91,12

.section .text
.balign 16
__EMITSTORI2I:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_032E:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B95
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B96
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0330
mov dword ptr [ebp-4], 24
jmp .L_0B92
.L_0330:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B92:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B97], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0332
mov dword ptr [ebp-8], 24
jmp .L_0B93
.L_0332:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0B93:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0B98], eax
cmp dword ptr [_Lt_0B97], 1
jne .L_0335
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0337
mov dword ptr [_Lt_0B97], 4
.L_0337:
.L_0336:
.L_0335:
.L_0334:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0B98]
cmp eax, dword ptr [_Lt_0B97]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0339
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B95
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B96
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
jmp .L_0338
.L_0339:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B9C
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_0B98]
cmp dword ptr [_Lt_0B97], eax
jle .L_033B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_033C
mov dword ptr [ebp-12], 24
jmp .L_0B94
.L_033C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0B94:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_033F
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
jmp .L_033E
.L_033F:
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
.L_033E:
push 0
push -1
push offset _Lt_0B9C
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B96
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B95
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B9C
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
jmp .L_033A
.L_033B:
mov dword ptr [_Lt_0B9D], 0
cmp dword ptr [_Lt_0B97], 1
jne .L_0341
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0343
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [_Lt_0B9D], ebx
.L_0343:
.L_0342:
.L_0341:
.L_0340:
cmp dword ptr [_Lt_0B9D], 0
je .L_0345
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BA0], eax
push 0
push 0
push dword ptr [_Lt_0BA0]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BA1
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0BA0]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B9C
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BA0]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BA2], eax
cmp dword ptr [_Lt_0BA2], 0
jne .L_0347
push dword ptr [_Lt_0B9C]
call _HPUSH
add esp, 4
.L_0347:
.L_0346:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B9C
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B96
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B95
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BA1
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BA2], 0
jne .L_0349
push dword ptr [_Lt_0B9C]
call _HPOP
add esp, 4
.L_0349:
.L_0348:
jmp .L_0344
.L_0345:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0B9B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B95
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B9C
push -1
push offset _Lt_0B9B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B9B]
call _OUTP
add esp, 4
.L_0344:
.L_033A:
.L_0338:
.L_032F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B95,12
.balign 4
	.lcomm	_Lt_0B96,12
.balign 4
	.lcomm	_Lt_0B97,4
.balign 4
	.lcomm	_Lt_0B98,4
.balign 4
	.lcomm	_Lt_0B9B,12
.balign 4
	.lcomm	_Lt_0B9C,12
.balign 4
	.lcomm	_Lt_0B9D,4
.balign 4
	.lcomm	_Lt_0BA1,12
.balign 4
	.lcomm	_Lt_0BA0,4
.balign 4
	.lcomm	_Lt_0BA2,4

.section .text
.balign 16
__EMITSTORL2I:
push ebp
mov ebp, esp
.L_034A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITSTORI2I
add esp, 8
.L_034B:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORF2I:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_034C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA5
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA6
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_034E
mov dword ptr [ebp-4], 24
jmp .L_0BA3
.L_034E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BA3:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BA7], ebx
cmp dword ptr [_Lt_0BA7], 1
jne .L_0351
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_0353
call _OUTP
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_0355
push offset _Lt_0356
push dword ptr [_Lt_0BA5]
call _HMOV
add esp, 8
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0354
.L_0355:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BA8], eax
push 0
push 0
push dword ptr [_Lt_0BA8]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BA9
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0BA8]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BAA
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BA8]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BAB], eax
cmp dword ptr [_Lt_0BAB], 0
jne .L_0359
push offset _Lt_035A
push dword ptr [_Lt_0BAA]
call _HXCHG
add esp, 8
jmp .L_0358
.L_0359:
push offset _Lt_0356
push dword ptr [_Lt_0BA9]
call _HMOV
add esp, 8
.L_0358:
push dword ptr [_Lt_0BA9]
push dword ptr [_Lt_0BA5]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0BAB], 0
jne .L_035C
push dword ptr [_Lt_0BAA]
call _HPOP
add esp, 4
jmp .L_035B
.L_035C:
push offset _Lt_0357
call _OUTP
add esp, 4
.L_035B:
.L_0354:
jmp .L_0350
.L_0351:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_035D
mov dword ptr [ebp-8], 24
jmp .L_0BA4
.L_035D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BA4:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0360
push 0
push 7
push offset _Lt_032D
push -1
push offset _Lt_0BAC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BA5
push -1
push offset _Lt_0BAC
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BAC]
call _OUTP
add esp, 4
jmp .L_035F
.L_0360:
cmp dword ptr [_Lt_0BA7], 4
jne .L_0362
push offset _Lt_0363
call _OUTP
add esp, 4
push offset _Lt_0364
call _OUTP
add esp, 4
push dword ptr [_Lt_0BA5]
call _HPOP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0361
.L_0362:
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_0353
call _OUTP
add esp, 4
push dword ptr [_Lt_0BA5]
call _HPOP
add esp, 4
push offset _Lt_0365
call _OUTP
add esp, 4
.L_0361:
.L_035F:
.L_0350:
.L_034D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BA5,12
.balign 4
	.lcomm	_Lt_0BA6,12
.balign 4
	.lcomm	_Lt_0BA7,4
.balign 4
	.lcomm	_Lt_0BAC,12
.balign 4
	.lcomm	_Lt_0BA8,4
.balign 4
	.lcomm	_Lt_0BAB,4
.balign 4
	.lcomm	_Lt_0BAA,12
.balign 4
	.lcomm	_Lt_0BA9,12

.section .text
.balign 16
__EMITSTORL2F:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0366:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BAF
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BB0
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0369
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_036A
mov dword ptr [ebp-4], 24
jmp .L_0BAD
.L_036A:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0BAD:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_036D
push offset _Lt_0BB3
push offset _Lt_0BB0
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BB3]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BB0]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_036E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_036C
.L_036D:
push offset _Lt_0BB3
push offset _Lt_0BB0
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BB3]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BB0]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_036C:
jmp .L_0368
.L_0369:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0374
mov dword ptr [ebp-4], 24
jmp .L_0BAE
.L_0374:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BAE:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0377
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BB0
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
jmp .L_0376
.L_0377:
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BB0
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_0376:
.L_0368:
push 0
push 6
push offset _Lt_0378
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BAF
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
.L_0367:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BAF,12
.balign 4
	.lcomm	_Lt_0BB0,12
.balign 4
	.lcomm	_Lt_0BB3,12
.balign 4
	.lcomm	_Lt_0BB4,12

.section .text
.balign 16
__EMITSTORI2F:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0379:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BB9
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BBA
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_037B
mov dword ptr [ebp-4], 24
jmp .L_0BB5
.L_037B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BB5:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BBB], ebx
cmp dword ptr [_Lt_0BBB], 1
jne .L_037E
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BBC], eax
push 0
push 0
push dword ptr [_Lt_0BBC]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BBD
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BBC]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BBE], eax
cmp dword ptr [_Lt_0BBE], 0
jne .L_0380
push dword ptr [_Lt_0BBD]
call _HPUSH
add esp, 4
.L_0380:
.L_037F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0381
mov dword ptr [ebp-8], 24
jmp .L_0BB6
.L_0381:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BB6:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0384
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
jmp .L_0383
.L_0384:
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
.L_0383:
push 0
push -1
push offset _Lt_0BBD
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBA
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
push dword ptr [_Lt_0BBD]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BBE], 0
jne .L_0387
push dword ptr [_Lt_0BBD]
call _HPOP
add esp, 4
.L_0387:
.L_0386:
push 0
push 6
push offset _Lt_0378
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BB9
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
jmp .L_037A
.L_037E:
.L_037D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0389
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_038A
mov dword ptr [ebp-8], 24
jmp .L_0BB7
.L_038A:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0BB7:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_038D
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0BBB]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_038F
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BBA
call _fb_StrAssign
add esp, 20
.L_038F:
.L_038E:
push dword ptr [_Lt_0BBA]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_036E
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_038C
.L_038D:
cmp dword ptr [_Lt_0BBB], 4
jne .L_0393
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BBA]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_0392
.L_0393:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0395
push offset _Lt_0145
call _HPUSH
add esp, 4
.L_0395:
.L_0394:
push dword ptr [_Lt_0BBA]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0397
push offset _Lt_0398
call _OUTP
add esp, 4
jmp .L_0396
.L_0397:
push offset _Lt_0357
call _OUTP
add esp, 4
.L_0396:
.L_0392:
.L_038C:
jmp .L_0388
.L_0389:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0399
mov dword ptr [ebp-8], 24
jmp .L_0BB8
.L_0399:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BB8:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_039C
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBA
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
jmp .L_039B
.L_039C:
cmp dword ptr [_Lt_0BBB], 4
jne .L_039E
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BBA]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_039D
.L_039E:
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BBA]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0398
call _OUTP
add esp, 4
.L_039D:
.L_039B:
.L_0388:
push 0
push 6
push offset _Lt_0378
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BB9
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
.L_037A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BB9,12
.balign 4
	.lcomm	_Lt_0BBA,12
.balign 4
	.lcomm	_Lt_0BBB,4
.balign 4
	.lcomm	_Lt_0BBF,12
.balign 4
	.lcomm	_Lt_0BBD,12
.balign 4
	.lcomm	_Lt_0BBC,4
.balign 4
	.lcomm	_Lt_0BBE,4

.section .text
.balign 16
__EMITSTORF2F:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_039F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BC6
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BC7
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03A1
mov dword ptr [ebp-4], 24
jmp .L_0BC4
.L_03A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BC4:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BC8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03A3
mov dword ptr [ebp-8], 24
jmp .L_0BC5
.L_03A3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BC5:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0BC9], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03A6
push 0
push 6
push offset _Lt_0378
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC6
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
jmp .L_03A5
.L_03A6:
mov eax, dword ptr [_Lt_0BC8]
cmp dword ptr [_Lt_0BC9], eax
jne .L_03A8
push -1
push 0
push 0
push 8
push offset _Lt_0BC7
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC7
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BC9], 4
jle .L_03AA
push -1
push 0
push 4
push 8
push offset _Lt_0BC7
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC7
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
push -1
push 0
push 4
push 8
push offset _Lt_0BC6
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC6
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
.L_03AA:
.L_03A9:
push -1
push 0
push 0
push 8
push offset _Lt_0BC6
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC6
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
jmp .L_03A7
.L_03A8:
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC7
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
push 0
push 6
push offset _Lt_0378
push -1
push offset _Lt_0BCA
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC6
push -1
push offset _Lt_0BCA
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCA]
call _OUTP
add esp, 4
.L_03A7:
.L_03A5:
.L_03A0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BC6,12
.balign 4
	.lcomm	_Lt_0BC7,12
.balign 4
	.lcomm	_Lt_0BC8,4
.balign 4
	.lcomm	_Lt_0BC9,4
.balign 4
	.lcomm	_Lt_0BCA,12

.section .text
.balign 16
__EMITLOADL2L:
push ebp
mov ebp, esp
.L_03AC:
push offset _Lt_0BCB
push offset _Lt_0BCC
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0BCD
push offset _Lt_0BCE
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0BCF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCC
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCE
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCF]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0BCF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCB
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCD
push -1
push offset _Lt_0BCF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCF]
call _OUTP
add esp, 4
.L_03AD:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BCC,12
.balign 4
	.lcomm	_Lt_0BCB,12
.balign 4
	.lcomm	_Lt_0BCE,12
.balign 4
	.lcomm	_Lt_0BCD,12
.balign 4
	.lcomm	_Lt_0BCF,12

.section .text
.balign 16
__EMITLOADI2L:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_03AE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03B0
mov dword ptr [ebp-4], 24
jmp .L_0BD0
.L_03B0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BD0:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BD3], ebx
push offset _Lt_0BD4
push offset _Lt_0BD5
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BD6
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_03B3
push dword ptr [_Lt_0BD6]
push dword ptr [_Lt_0BD5]
call _HMOV
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03B4
mov dword ptr [ebp-12], 24
jmp .L_0BD1
.L_03B4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0BD1:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_0BD7
jg .L_0BD8
cmp dword ptr [eax+24], 0
jb .L_0BD7
.L_0BD8:
xor ecx, ecx
.L_0BD7:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .L_03B7
push offset _Lt_0318
push dword ptr [_Lt_0BD4]
call _HMOV
add esp, 8
jmp .L_03B6
.L_03B7:
push offset _Lt_0145
push dword ptr [_Lt_0BD4]
call _HMOV
add esp, 8
.L_03B6:
jmp .L_03AF
.L_03B3:
.L_03B2:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_03B8
mov dword ptr [ebp-8], 24
jmp .L_0BD2
.L_03B8:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BD2:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03BB
cmp dword ptr [_Lt_0BD3], 4
jge .L_03BD
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0BD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD5
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD6
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BD9]
call _OUTP
add esp, 4
jmp .L_03BC
.L_03BD:
push dword ptr [_Lt_0BD6]
push dword ptr [_Lt_0BD5]
call _HMOV
add esp, 8
.L_03BC:
push dword ptr [_Lt_0BD5]
push dword ptr [_Lt_0BD4]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_0325
push -1
push offset _Lt_0BD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD4
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_0326
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BD9]
call _OUTP
add esp, 4
jmp .L_03BA
.L_03BB:
cmp dword ptr [_Lt_0BD3], 4
jge .L_03BF
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0BD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD5
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD6
push -1
push offset _Lt_0BD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BD9]
call _OUTP
add esp, 4
jmp .L_03BE
.L_03BF:
push dword ptr [_Lt_0BD6]
push dword ptr [_Lt_0BD5]
call _HMOV
add esp, 8
.L_03BE:
push offset _Lt_0145
push dword ptr [_Lt_0BD4]
call _HMOV
add esp, 8
.L_03BA:
.L_03AF:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BD5,12
.balign 4
	.lcomm	_Lt_0BD4,12
.balign 4
	.lcomm	_Lt_0BD6,12
.balign 4
	.lcomm	_Lt_0BD3,4
.balign 4
	.lcomm	_Lt_0BD9,12

.section .text
.balign 16
__EMITLOADF2L:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_03C0:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BDC
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BDD
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03C3
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0BDE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDD
push -1
push offset _Lt_0BDE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BDE]
call _OUTP
add esp, 4
.L_03C3:
.L_03C2:
push offset _Lt_0BDF
push offset _Lt_0BDC
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03C4
mov dword ptr [ebp-4], 24
jmp .L_0BDA
.L_03C4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BDA:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03C7
push offset _Lt_0363
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_032D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BDE
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BDE]
call _OUTP
add esp, 4
push dword ptr [_Lt_0BDC]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BDF]
call _HPOP
add esp, 4
jmp .L_03C6
.L_03C7:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0BE0
call _fb_StrAssign
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0BE1
call _fb_StrAssign
add esp, 20
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BE2], eax
cmp dword ptr [_Lt_0BE2], 0
jne .L_03CA
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0BDB
.L_03CA:
mov dword ptr [ebp-8], -1
.L_0BDB:
mov eax, dword ptr [ebp-8]
mov dword ptr [_Lt_0BE2], eax
push offset _Lt_0363
call _OUTP
add esp, 4
push offset _Lt_03CC
call _OUTP
add esp, 4
cmp dword ptr [_ENV+112], 3
jl .L_03CE
push offset _Lt_03CF
call _OUTP
add esp, 4
push offset _Lt_03D0
call _OUTP
add esp, 4
push dword ptr [_Lt_0BE0]
push offset _Lt_03D1
call _HBRANCH
add esp, 8
jmp .L_03CD
.L_03CE:
push offset _Lt_03D2
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BE2], 0
je .L_03D4
push offset _Lt_03D5
call _OUTP
add esp, 4
push offset _Lt_03D6
call _OUTP
add esp, 4
jmp .L_03D3
.L_03D4:
push offset _Lt_0088
call _HPUSH
add esp, 4
push offset _Lt_03D5
call _OUTP
add esp, 4
push offset _Lt_03D6
call _OUTP
add esp, 4
push offset _Lt_0088
call _HPOP
add esp, 4
.L_03D3:
push dword ptr [_Lt_0BE0]
push offset _Lt_03D7
call _HBRANCH
add esp, 8
.L_03CD:
push offset _Lt_0364
call _OUTP
add esp, 4
push dword ptr [_Lt_0BDC]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BDF]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BE1]
push offset _Lt_03D8
call _HBRANCH
add esp, 8
push dword ptr [_Lt_0BE0]
call _HLABEL
add esp, 4
push offset _Lt_03D9
call _OUTP
add esp, 4
push offset _Lt_0364
call _OUTP
add esp, 4
push dword ptr [_Lt_0BDC]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BDF]
call _HPOP
add esp, 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 13
push offset _Lt_03DB
push -1
push -1
push offset _Lt_0BDF
push 5
push offset _Lt_03DA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _OUTP
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [_Lt_0BE1]
call _HLABEL
add esp, 4
.L_03C6:
.L_03C1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BDC,12
.balign 4
	.lcomm	_Lt_0BDD,12
.balign 4
	.lcomm	_Lt_0BDF,12
.balign 4
	.lcomm	_Lt_0BDE,12
.balign 4
	.lcomm	_Lt_0BE0,12
.balign 4
	.lcomm	_Lt_0BE1,12
.balign 4
	.lcomm	_Lt_0BE2,4

.section .text
.balign 16
__EMITLOADI2I:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_03DF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BE7
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BE8
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03E1
mov dword ptr [ebp-4], 24
jmp .L_0BE4
.L_03E1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BE4:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BE9], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03E3
mov dword ptr [ebp-8], 24
jmp .L_0BE5
.L_03E3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BE5:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0BEA], eax
cmp dword ptr [_Lt_0BE9], 1
jne .L_03E6
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_03E8
mov dword ptr [_Lt_0BE9], 4
.L_03E8:
.L_03E7:
.L_03E6:
.L_03E5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0BEA]
cmp eax, dword ptr [_Lt_0BE9]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03EA
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0BED
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE7
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE8
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BED]
call _OUTP
add esp, 4
jmp .L_03E9
.L_03EA:
mov eax, dword ptr [_Lt_0BEA]
cmp dword ptr [_Lt_0BE9], eax
jle .L_03EC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03ED
mov dword ptr [ebp-12], 24
jmp .L_0BE6
.L_03ED:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0BE6:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03F0
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0BED
call _fb_StrAssign
add esp, 20
jmp .L_03EF
.L_03F0:
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0BED
call _fb_StrAssign
add esp, 20
.L_03EF:
push 0
push -1
push offset _Lt_0BE7
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE8
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BED]
call _OUTP
add esp, 4
jmp .L_03EB
.L_03EC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03F2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .L_03F4
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [_Lt_0BEE], eax
cmp dword ptr [_Lt_0BE9], 1
jne .L_03F6
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_03F8
mov dword ptr [_Lt_0BEE], 8
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [_Lt_0BEE]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BE7
call _fb_StrAssign
add esp, 20
.L_03F8:
.L_03F7:
.L_03F6:
.L_03F5:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push dword ptr [_Lt_0BEE]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BF1
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0BED
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE7
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BF1
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BED]
call _OUTP
add esp, 4
.L_03F4:
.L_03F3:
jmp .L_03F1
.L_03F2:
push -1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push offset _Lt_0BE8
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0BED
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE7
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE8
push -1
push offset _Lt_0BED
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BED]
call _OUTP
add esp, 4
.L_03F1:
.L_03EB:
.L_03E9:
.L_03E0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BE7,12
.balign 4
	.lcomm	_Lt_0BE8,12
.balign 4
	.lcomm	_Lt_0BE9,4
.balign 4
	.lcomm	_Lt_0BEA,4
.balign 4
	.lcomm	_Lt_0BED,12
.balign 4
	.lcomm	_Lt_0BF1,12
.balign 4
	.lcomm	_Lt_0BEE,4

.section .text
.balign 16
__EMITLOADL2I:
push ebp
mov ebp, esp
.L_03F9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2I
add esp, 8
.L_03FA:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADF2I:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_03FB:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BF4
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BF5
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03FD
mov dword ptr [ebp-4], 24
jmp .L_0BF2
.L_03FD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BF2:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BF6], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_0400
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0BF7
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BF5
push -1
push offset _Lt_0BF7
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BF7]
call _OUTP
add esp, 4
.L_0400:
.L_03FF:
cmp dword ptr [_Lt_0BF6], 1
jne .L_0402
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_0353
call _OUTP
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_0404
push offset _Lt_0356
push dword ptr [_Lt_0BF4]
call _HMOV
add esp, 8
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0403
.L_0404:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BF8], eax
push 0
push 0
push dword ptr [_Lt_0BF8]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BF9
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0BF8]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BFA
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BF8]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BFB], eax
cmp dword ptr [_Lt_0BFB], 0
jne .L_0406
push offset _Lt_035A
push dword ptr [_Lt_0BFA]
call _HXCHG
add esp, 8
jmp .L_0405
.L_0406:
push offset _Lt_0356
push dword ptr [_Lt_0BF9]
call _HMOV
add esp, 8
.L_0405:
push dword ptr [_Lt_0BF9]
push dword ptr [_Lt_0BF4]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0BFB], 0
jne .L_0408
push dword ptr [_Lt_0BFA]
call _HPOP
add esp, 4
jmp .L_0407
.L_0408:
push offset _Lt_0357
call _OUTP
add esp, 4
.L_0407:
.L_0403:
jmp .L_0401
.L_0402:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0409
mov dword ptr [ebp-8], 24
jmp .L_0BF3
.L_0409:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BF3:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_040C
push offset _Lt_0352
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_032D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BF7
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BF7]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BF6], 4
jge .L_0410
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BF4
call _fb_StrAssign
add esp, 20
.L_0410:
.L_040F:
push dword ptr [_Lt_0BF4]
call _HPOP
add esp, 4
jmp .L_040B
.L_040C:
cmp dword ptr [_Lt_0BF6], 4
jne .L_0412
push offset _Lt_0363
call _OUTP
add esp, 4
push offset _Lt_0364
call _OUTP
add esp, 4
push dword ptr [_Lt_0BF4]
call _HPOP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0411
.L_0412:
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_0353
call _OUTP
add esp, 4
push dword ptr [_Lt_0BF4]
call _HPOP
add esp, 4
push offset _Lt_0365
call _OUTP
add esp, 4
.L_0411:
.L_040B:
.L_0401:
.L_03FC:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BF4,12
.balign 4
	.lcomm	_Lt_0BF5,12
.balign 4
	.lcomm	_Lt_0BF6,4
.balign 4
	.lcomm	_Lt_0BF7,12
.balign 4
	.lcomm	_Lt_0BFA,12
.balign 4
	.lcomm	_Lt_0BF9,12
.balign 4
	.lcomm	_Lt_0BF8,4
.balign 4
	.lcomm	_Lt_0BFB,4

.section .text
.balign 16
__EMITLOADL2F:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0413:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BFE
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BFF
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0416
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0417
mov dword ptr [ebp-4], 24
jmp .L_0BFC
.L_0417:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0BFC:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_041A
push offset _Lt_0C02
push offset _Lt_0BFF
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0C02]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BFF]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_036E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_0419
.L_041A:
push offset _Lt_0C02
push offset _Lt_0BFF
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0C02]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BFF]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_0419:
jmp .L_0415
.L_0416:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_041D
mov dword ptr [ebp-4], 24
jmp .L_0BFD
.L_041D:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BFD:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0420
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BFF
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
jmp .L_041F
.L_0420:
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BFF
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_041F:
.L_0415:
.L_0414:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BFE,12
.balign 4
	.lcomm	_Lt_0BFF,12
.balign 4
	.lcomm	_Lt_0C02,12
.balign 4
	.lcomm	_Lt_0C03,12

.section .text
.balign 16
__EMITLOADI2F:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0421:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C08
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C09
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0423
mov dword ptr [ebp-4], 24
jmp .L_0C04
.L_0423:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C04:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0C0A], ebx
cmp dword ptr [_Lt_0C0A], 1
jne .L_0426
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C0B], eax
push 0
push 0
push dword ptr [_Lt_0C0B]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C0C
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C0B]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C0D], eax
cmp dword ptr [_Lt_0C0D], 0
jne .L_0428
push dword ptr [_Lt_0C0C]
call _HPUSH
add esp, 4
.L_0428:
.L_0427:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0429
mov dword ptr [ebp-8], 24
jmp .L_0C05
.L_0429:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0C05:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_042C
push 0
push 7
push offset _Lt_031F
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0C
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C09
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
jmp .L_042B
.L_042C:
push 0
push 7
push offset _Lt_0320
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0C
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C09
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
.L_042B:
push dword ptr [_Lt_0C0C]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0C0D], 0
jne .L_042E
push dword ptr [_Lt_0C0C]
call _HPOP
add esp, 4
.L_042E:
.L_042D:
jmp .L_0422
.L_0426:
.L_0425:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0430
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0431
mov dword ptr [ebp-8], 24
jmp .L_0C06
.L_0431:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0C06:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0434
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0C0A]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0436
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C09
call _fb_StrAssign
add esp, 20
.L_0436:
.L_0435:
push dword ptr [_Lt_0C09]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_036E
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0433
.L_0434:
cmp dword ptr [_Lt_0C0A], 4
jne .L_043A
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C09]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_0439
.L_043A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_043C
push offset _Lt_0145
call _HPUSH
add esp, 4
.L_043C:
.L_043B:
push dword ptr [_Lt_0C09]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_043E
push offset _Lt_0398
call _OUTP
add esp, 4
jmp .L_043D
.L_043E:
push offset _Lt_0357
call _OUTP
add esp, 4
.L_043D:
.L_0439:
.L_0433:
jmp .L_042F
.L_0430:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_043F
mov dword ptr [ebp-8], 24
jmp .L_0C07
.L_043F:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0C07:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0442
push 0
push 6
push offset _Lt_036E
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C09
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
jmp .L_0441
.L_0442:
cmp dword ptr [_Lt_0C0A], 4
jne .L_0444
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C09]
call _HPUSH
add esp, 4
push offset _Lt_0373
call _OUTP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
jmp .L_0443
.L_0444:
push offset _Lt_0145
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C09]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0398
call _OUTP
add esp, 4
.L_0443:
.L_0441:
.L_042F:
.L_0422:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C08,12
.balign 4
	.lcomm	_Lt_0C09,12
.balign 4
	.lcomm	_Lt_0C0A,4
.balign 4
	.lcomm	_Lt_0C0E,12
.balign 4
	.lcomm	_Lt_0C0C,12
.balign 4
	.lcomm	_Lt_0C0D,4
.balign 4
	.lcomm	_Lt_0C0B,4

.section .text
.balign 16
__EMITLOADF2F:
push ebp
mov ebp, esp
.L_0445:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C13
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0C14
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C13
push -1
push offset _Lt_0C14
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C14]
call _OUTP
add esp, 4
.L_0446:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C13,12
.balign 4
	.lcomm	_Lt_0C14,12

.section .text
.balign 16
__EMITMOVL:
push ebp
mov ebp, esp
.L_0447:
push offset _Lt_0C15
push offset _Lt_0C16
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C17
push offset _Lt_0C18
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0C19
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C16
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C18
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C19]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0C19
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C15
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C17
push -1
push offset _Lt_0C19
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C19]
call _OUTP
add esp, 4
.L_0448:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C16,12
.balign 4
	.lcomm	_Lt_0C15,12
.balign 4
	.lcomm	_Lt_0C18,12
.balign 4
	.lcomm	_Lt_0C17,12
.balign 4
	.lcomm	_Lt_0C19,12

.section .text
.balign 16
__EMITMOVI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0449:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_044B
mov dword ptr [ebp-4], 24
jmp .L_0C1A
.L_044B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C1A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .L_044E
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C1B
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C1C
call _fb_StrAssign
add esp, 20
jmp .L_044D
.L_044E:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C1B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C1C
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
.L_044D:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0C1D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C1B
push -1
push offset _Lt_0C1D
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C1D
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C1C
push -1
push offset _Lt_0C1D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C1D]
call _OUTP
add esp, 4
.L_044A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C1B,12
.balign 4
	.lcomm	_Lt_0C1C,12
.balign 4
	.lcomm	_Lt_0C1D,12

.section .text
.balign 16
__EMITMOVF:
push ebp
mov ebp, esp
.L_044F:
.L_0450:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDL:
push ebp
mov ebp, esp
.L_0451:
push offset _Lt_0C1E
push offset _Lt_0C1F
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C20
push offset _Lt_0C21
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0453
push -1
push offset _Lt_0C22
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C1F
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C21
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C22]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0454
push -1
push offset _Lt_0C22
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C1E
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C20
push -1
push offset _Lt_0C22
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C22]
call _OUTP
add esp, 4
.L_0452:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C1F,12
.balign 4
	.lcomm	_Lt_0C1E,12
.balign 4
	.lcomm	_Lt_0C21,12
.balign 4
	.lcomm	_Lt_0C20,12
.balign 4
	.lcomm	_Lt_0C22,12

.section .text
.balign 16
__EMITADDI:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0455:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C23
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C24
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0C25], 0
mov dword ptr [_Lt_0C26], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0458
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_045B
cmp dword ptr [ebp-8], 1
jne .L_045B
.L_0C27:
.L_045C:
mov dword ptr [_Lt_0C25], -1
jmp .L_0459
.L_045B:
cmp dword ptr [ebp-4], 4294967295
jne .L_045D
cmp dword ptr [ebp-8], 4294967295
jne .L_045D
.L_0C28:
.L_045E:
mov dword ptr [_Lt_0C26], -1
.L_045D:
.L_0459:
.L_0458:
.L_0457:
cmp dword ptr [_Lt_0C25], 0
je .L_0460
push 0
push 5
push offset _Lt_0461
push -1
push offset _Lt_0C29
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C23
push -1
push offset _Lt_0C29
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C29]
call _OUTP
add esp, 4
jmp .L_045F
.L_0460:
cmp dword ptr [_Lt_0C26], 0
je .L_0462
push 0
push 5
push offset _Lt_0463
push -1
push offset _Lt_0C29
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C23
push -1
push offset _Lt_0C29
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C29]
call _OUTP
add esp, 4
jmp .L_045F
.L_0462:
push 0
push 5
push offset _Lt_0453
push -1
push offset _Lt_0C29
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C23
push -1
push offset _Lt_0C29
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C29
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C24
push -1
push offset _Lt_0C29
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C29]
call _OUTP
add esp, 4
.L_045F:
.L_0456:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C23,12
.balign 4
	.lcomm	_Lt_0C24,12
.balign 4
	.lcomm	_Lt_0C25,4
.balign 4
	.lcomm	_Lt_0C26,4
.balign 4
	.lcomm	_Lt_0C29,12

.section .text
.balign 16
__EMITADDF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0464:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C2B
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0467
push 0
push 6
push offset _Lt_030A
push -1
push offset _Lt_0C2C
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C2C]
call _OUTP
add esp, 4
jmp .L_0466
.L_0467:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0468
mov dword ptr [ebp-4], 24
jmp .L_0C2A
.L_0468:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C2A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_046B
push 0
push 6
push offset _Lt_046C
push -1
push offset _Lt_0C2C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2B
push -1
push offset _Lt_0C2C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C2C]
call _OUTP
add esp, 4
jmp .L_046A
.L_046B:
push 0
push 7
push offset _Lt_046D
push -1
push offset _Lt_0C2C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2B
push -1
push offset _Lt_0C2C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C2C]
call _OUTP
add esp, 4
.L_046A:
.L_0466:
.L_0465:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C2B,12
.balign 4
	.lcomm	_Lt_0C2C,12

.section .text
.balign 16
__EMITSUBL:
push ebp
mov ebp, esp
.L_046E:
push offset _Lt_0C2D
push offset _Lt_0C2E
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C2F
push offset _Lt_0C30
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0470
push -1
push offset _Lt_0C31
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2E
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C30
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C31]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0471
push -1
push offset _Lt_0C31
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2D
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2F
push -1
push offset _Lt_0C31
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C31]
call _OUTP
add esp, 4
.L_046F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C2E,12
.balign 4
	.lcomm	_Lt_0C2D,12
.balign 4
	.lcomm	_Lt_0C30,12
.balign 4
	.lcomm	_Lt_0C2F,12
.balign 4
	.lcomm	_Lt_0C31,12

.section .text
.balign 16
__EMITSUBI:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0472:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C32
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C33
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0C34], 0
mov dword ptr [_Lt_0C35], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0475
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0478
cmp dword ptr [ebp-8], 1
jne .L_0478
.L_0C36:
.L_0479:
mov dword ptr [_Lt_0C35], -1
jmp .L_0476
.L_0478:
cmp dword ptr [ebp-4], 4294967295
jne .L_047A
cmp dword ptr [ebp-8], 4294967295
jne .L_047A
.L_0C37:
.L_047B:
mov dword ptr [_Lt_0C34], -1
.L_047A:
.L_0476:
.L_0475:
.L_0474:
cmp dword ptr [_Lt_0C35], 0
je .L_047D
push 0
push 5
push offset _Lt_0463
push -1
push offset _Lt_0C38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C32
push -1
push offset _Lt_0C38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C38]
call _OUTP
add esp, 4
jmp .L_047C
.L_047D:
cmp dword ptr [_Lt_0C34], 0
je .L_047E
push 0
push 5
push offset _Lt_0461
push -1
push offset _Lt_0C38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C32
push -1
push offset _Lt_0C38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C38]
call _OUTP
add esp, 4
jmp .L_047C
.L_047E:
push 0
push 5
push offset _Lt_0470
push -1
push offset _Lt_0C38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C32
push -1
push offset _Lt_0C38
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C38
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C33
push -1
push offset _Lt_0C38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C38]
call _OUTP
add esp, 4
.L_047C:
.L_0473:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C32,12
.balign 4
	.lcomm	_Lt_0C33,12
.balign 4
	.lcomm	_Lt_0C34,4
.balign 4
	.lcomm	_Lt_0C35,4
.balign 4
	.lcomm	_Lt_0C38,12

.section .text
.balign 16
__EMITSUBF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_047F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C3A
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_0482
push offset _Lt_0483
call _OUTP
add esp, 4
jmp .L_0481
.L_0482:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0484
mov dword ptr [ebp-4], 24
jmp .L_0C39
.L_0484:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C39:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0487
push 0
push 6
push offset _Lt_0488
push -1
push offset _Lt_0C3B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3A
push -1
push offset _Lt_0C3B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C3B]
call _OUTP
add esp, 4
jmp .L_0486
.L_0487:
push 0
push 7
push offset _Lt_0489
push -1
push offset _Lt_0C3B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3A
push -1
push offset _Lt_0C3B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C3B]
call _OUTP
add esp, 4
.L_0486:
.L_0481:
.L_0480:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C3A,12
.balign 4
	.lcomm	_Lt_0C3C,4
.balign 4
	.lcomm	_Lt_0C3D,4
.balign 4
	.lcomm	_Lt_0C3B,12

.section .text
.balign 16
__EMITMULL:
push ebp
mov ebp, esp
sub esp, 252
.L_048A:
push offset _Lt_0C3E
push offset _Lt_0C3F
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C40
push offset _Lt_0C41
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C42], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C43], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C44], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C45], eax
push dword ptr [_Lt_0C40]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C41]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C3E]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C3F]
call _HPUSH
add esp, 4
mov dword ptr [_Lt_0C46], 0
cmp dword ptr [_Lt_0C45], 0
je .L_048D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_048F
add dword ptr [_Lt_0C46], 4
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_048F:
.L_048E:
jmp .L_048C
.L_048D:
cmp dword ptr [_Lt_0C43], 0
jne .L_0491
add dword ptr [_Lt_0C46], 4
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0491:
.L_0490:
.L_048C:
cmp dword ptr [_Lt_0C44], 0
je .L_0493
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0495
add dword ptr [_Lt_0C46], 4
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_0495:
.L_0494:
jmp .L_0492
.L_0493:
cmp dword ptr [_Lt_0C42], 0
jne .L_0497
add dword ptr [_Lt_0C46], 4
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_0497:
.L_0496:
.L_0492:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C46]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C46]
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_049C
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _OUTP
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C46]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04A0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C46]
add eax, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04A4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call _OUTP
add esp, 4
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_04A8
call _OUTP
add esp, 4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C46]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A9
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C46]
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04AD
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_04B1
call _OUTP
add esp, 4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 7
push offset _Lt_04B3
push -1
push -1
mov eax, dword ptr [_Lt_0C46]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_04B2
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-252]
call _OUTP
add esp, 4
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_Lt_0C44], 0
je .L_04B8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04BA
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04BA:
.L_04B9:
jmp .L_04B7
.L_04B8:
cmp dword ptr [_Lt_0C42], 0
jne .L_04BC
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04BC:
.L_04BB:
.L_04B7:
cmp dword ptr [_Lt_0C45], 0
je .L_04BE
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04C0
push offset _Lt_0083
call _HPOP
add esp, 4
.L_04C0:
.L_04BF:
jmp .L_04BD
.L_04BE:
cmp dword ptr [_Lt_0C43], 0
jne .L_04C2
push offset _Lt_0083
call _HPOP
add esp, 4
.L_04C2:
.L_04C1:
.L_04BD:
push dword ptr [_Lt_0C3F]
call _HPOP
add esp, 4
push dword ptr [_Lt_0C3E]
call _HPOP
add esp, 4
push offset _Lt_0372
call _OUTP
add esp, 4
.L_048B:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C3F,12
.balign 4
	.lcomm	_Lt_0C3E,12
.balign 4
	.lcomm	_Lt_0C41,12
.balign 4
	.lcomm	_Lt_0C40,12
.balign 4
	.lcomm	_Lt_0C42,4
.balign 4
	.lcomm	_Lt_0C43,4
.balign 4
	.lcomm	_Lt_0C44,4
.balign 4
	.lcomm	_Lt_0C45,4
.balign 4
	.lcomm	_Lt_0C46,4

.section .text
.balign 16
__EMITMULI:
push ebp
mov ebp, esp
.L_04C3:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C47
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C48
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04C6
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C49], eax
push 0
push 0
push dword ptr [_Lt_0C49]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C4A
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C49]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C4B], eax
cmp dword ptr [_Lt_0C4B], 0
jne .L_04C8
push dword ptr [_Lt_0C4A]
call _HPUSH
add esp, 4
.L_04C8:
.L_04C7:
push dword ptr [_Lt_0C47]
push dword ptr [_Lt_0C4A]
call _HMOV
add esp, 8
push 0
push 6
push offset _Lt_04C9
push -1
push offset _Lt_0C4C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4A
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C48
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C4C]
call _OUTP
add esp, 4
push dword ptr [_Lt_0C4A]
push dword ptr [_Lt_0C47]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C4B], 0
jne .L_04CB
push dword ptr [_Lt_0C4A]
call _HPOP
add esp, 4
.L_04CB:
.L_04CA:
jmp .L_04C5
.L_04C6:
push 0
push 6
push offset _Lt_04C9
push -1
push offset _Lt_0C4C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C47
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C48
push -1
push offset _Lt_0C4C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C4C]
call _OUTP
add esp, 4
.L_04C5:
.L_04C4:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C49,4
.balign 4
	.lcomm	_Lt_0C4B,4
.balign 4
	.lcomm	_Lt_0C4A,12
.balign 4
	.lcomm	_Lt_0C4C,12
.balign 4
	.lcomm	_Lt_0C47,12
.balign 4
	.lcomm	_Lt_0C48,12

.section .text
.balign 16
__EMITMULF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04CC:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C4E
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04CF
push offset _Lt_04D0
call _OUTP
add esp, 4
jmp .L_04CE
.L_04CF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04D1
mov dword ptr [ebp-4], 24
jmp .L_0C4D
.L_04D1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C4D:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04D4
push 0
push 6
push offset _Lt_04D5
push -1
push offset _Lt_0C4F
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4E
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C4F]
call _OUTP
add esp, 4
jmp .L_04D3
.L_04D4:
push 0
push 7
push offset _Lt_04D6
push -1
push offset _Lt_0C4F
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4E
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C4F]
call _OUTP
add esp, 4
.L_04D3:
.L_04CE:
.L_04CD:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C4E,12
.balign 4
	.lcomm	_Lt_0C4F,12

.section .text
.balign 16
__EMITDIVF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04D7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C51
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04DA
push offset _Lt_04DB
call _OUTP
add esp, 4
jmp .L_04D9
.L_04DA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04DC
mov dword ptr [ebp-4], 24
jmp .L_0C50
.L_04DC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C50:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04DF
push 0
push 6
push offset _Lt_04E0
push -1
push offset _Lt_0C52
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C51
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C52]
call _OUTP
add esp, 4
jmp .L_04DE
.L_04DF:
push 0
push 7
push offset _Lt_04E1
push -1
push offset _Lt_0C52
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C51
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C52]
call _OUTP
add esp, 4
.L_04DE:
.L_04D9:
.L_04D8:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C51,12
.balign 4
	.lcomm	_Lt_0C52,12

.section .text
.balign 16
__EMITDIVI:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04E2:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C56
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C57
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04E4
mov dword ptr [ebp-4], 24
jmp .L_0C53
.L_04E4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C53:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .L_04E7
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0C58
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0C59
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0C5A
call _fb_StrAssign
add esp, 20
jmp .L_04E6
.L_04E7:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0C58
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0C59
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0C5A
call _fb_StrAssign
add esp, 20
.L_04E6:
mov dword ptr [_Lt_0C5B], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C5C], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C5D], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C5E], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C5F], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C60], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C61], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C62], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C63], eax
mov eax, dword ptr [_Lt_0C60]
or eax, dword ptr [_Lt_0C5F]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_04E9
mov dword ptr [_Lt_0C5B], -1
cmp dword ptr [_Lt_0C63], 0
je .L_04EB
push offset _Lt_0086
call _HPUSH
add esp, 4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04ED
push -1
push 0
push 0
push 8
push offset _Lt_0C65
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0C65]
call _HPUSH
add esp, 4
.L_04ED:
.L_04EC:
jmp .L_04EA
.L_04EB:
cmp dword ptr [_Lt_0C5D], 0
jne .L_04EE
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_04EE:
.L_04EA:
push dword ptr [_Lt_0C57]
push dword ptr [_Lt_0C59]
call _HMOV
add esp, 8
push 0
push -1
push offset _Lt_0C59
push -1
push offset _Lt_0C57
call _fb_StrAssign
add esp, 20
.L_04E9:
.L_04E8:
cmp dword ptr [_Lt_0C61], 0
jne .L_04F0
mov ecx, dword ptr [_Lt_0C5B]
and ecx, dword ptr [_Lt_0C63]
je .L_04F2
cmp dword ptr [_Lt_0C5C], 0
jne .L_04F4
push offset _Lt_04F5
call _OUTP
add esp, 4
jmp .L_04F3
.L_04F4:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04F3:
jmp .L_04F1
.L_04F2:
cmp dword ptr [_Lt_0C5C], 0
jne .L_04F7
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_04F7:
.L_04F6:
push dword ptr [_Lt_0C56]
push dword ptr [_Lt_0C58]
call _HMOV
add esp, 8
.L_04F1:
jmp .L_04EF
.L_04F0:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04F9
push offset _Lt_0088
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C56]
push dword ptr [_Lt_0C58]
call _HMOV
add esp, 8
.L_04F9:
.L_04F8:
.L_04EF:
cmp dword ptr [_Lt_0C62], 0
je .L_04FB
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04FD
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_04FD:
.L_04FC:
jmp .L_04FA
.L_04FB:
cmp dword ptr [_Lt_0C5E], 0
jne .L_04FE
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_04FE:
.L_04FA:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_04FF
mov dword ptr [ebp-8], 24
jmp .L_0C54
.L_04FF:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0C54:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0502
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0503
mov dword ptr [ebp-12], 24
jmp .L_0C55
.L_0503:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0C55:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .L_0506
push offset _Lt_0507
call _OUTP
add esp, 4
jmp .L_0505
.L_0506:
push offset _Lt_0508
call _OUTP
add esp, 4
.L_0505:
push 0
push 6
push offset _Lt_0509
push -1
push offset _Lt_0C65
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C57
push -1
push offset _Lt_0C65
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C65]
call _OUTP
add esp, 4
jmp .L_0501
.L_0502:
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0C65
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C5A
push -1
push offset _Lt_0C65
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C65
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C5A
push -1
push offset _Lt_0C65
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C65]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_050A
push -1
push offset _Lt_0C65
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C57
push -1
push offset _Lt_0C65
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C65]
call _OUTP
add esp, 4
.L_0501:
cmp dword ptr [_Lt_0C62], 0
je .L_050C
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_050E
push offset _Lt_0083
call _HPOP
add esp, 4
.L_050E:
.L_050D:
jmp .L_050B
.L_050C:
cmp dword ptr [_Lt_0C5E], 0
jne .L_050F
push offset _Lt_0083
call _HPOP
add esp, 4
.L_050F:
.L_050B:
cmp dword ptr [_Lt_0C61], 0
jne .L_0511
mov ecx, dword ptr [_Lt_0C5B]
and ecx, dword ptr [_Lt_0C63]
je .L_0513
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0515
cmp dword ptr [_Lt_0C5C], 0
jne .L_0517
push offset _Lt_0086
call _HPOP
add esp, 4
push offset _Lt_0518
call _OUTP
add esp, 4
jmp .L_0516
.L_0517:
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0516:
.L_0515:
.L_0514:
.L_0513:
.L_0512:
push dword ptr [_Lt_0C58]
push dword ptr [_Lt_0C56]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C5C], 0
jne .L_051A
push offset _Lt_0088
call _HPOP
add esp, 4
.L_051A:
.L_0519:
jmp .L_0510
.L_0511:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_051C
mov ecx, dword ptr [_Lt_0C5D]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C5B]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_051E
push offset _Lt_0518
call _OUTP
add esp, 4
push offset _Lt_051F
call _OUTP
add esp, 4
jmp .L_051D
.L_051E:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV
add esp, 8
push offset _Lt_0088
call _HPOP
add esp, 4
.L_051D:
push dword ptr [_Lt_0C59]
push dword ptr [_Lt_0C56]
call _HMOV
add esp, 8
mov eax, dword ptr [_Lt_0C5D]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0C5B]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0521
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0521:
.L_0520:
.L_051C:
.L_051B:
.L_0510:
cmp dword ptr [_Lt_0C5B], 0
je .L_0523
mov ecx, dword ptr [_Lt_0C5D]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C63]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0525
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0525:
.L_0524:
.L_0523:
.L_0522:
.L_04E3:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C56,12
.balign 4
	.lcomm	_Lt_0C57,12
.balign 4
	.lcomm	_Lt_0C5B,4
.balign 4
	.lcomm	_Lt_0C5C,4
.balign 4
	.lcomm	_Lt_0C5D,4
.balign 4
	.lcomm	_Lt_0C5E,4
.balign 4
	.lcomm	_Lt_0C61,4
.balign 4
	.lcomm	_Lt_0C63,4
.balign 4
	.lcomm	_Lt_0C62,4
.balign 4
	.lcomm	_Lt_0C5F,4
.balign 4
	.lcomm	_Lt_0C60,4
.balign 4
	.lcomm	_Lt_0C58,12
.balign 4
	.lcomm	_Lt_0C59,12
.balign 4
	.lcomm	_Lt_0C5A,12
.balign 4
	.lcomm	_Lt_0C65,12

.section .text
.balign 16
__EMITMODI:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0526:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C6F
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C70
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0528
mov dword ptr [ebp-4], 24
jmp .L_0C6C
.L_0528:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C6C:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .L_052B
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0C71
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0C72
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0C73
call _fb_StrAssign
add esp, 20
jmp .L_052A
.L_052B:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0C71
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0C72
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0C73
call _fb_StrAssign
add esp, 20
.L_052A:
mov dword ptr [_Lt_0C74], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C75], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C76], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C77], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C78], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C79], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C7A], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C7B], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C7C], eax
mov eax, dword ptr [_Lt_0C79]
or eax, dword ptr [_Lt_0C78]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_052D
mov dword ptr [_Lt_0C74], -1
cmp dword ptr [_Lt_0C7C], 0
je .L_052F
push offset _Lt_0086
call _HPUSH
add esp, 4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0531
push -1
push 0
push 0
push 8
push offset _Lt_0C7E
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0C7E]
call _HPUSH
add esp, 4
.L_0531:
.L_0530:
jmp .L_052E
.L_052F:
cmp dword ptr [_Lt_0C76], 0
jne .L_0532
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_0532:
.L_052E:
push dword ptr [_Lt_0C70]
push dword ptr [_Lt_0C72]
call _HMOV
add esp, 8
push 0
push -1
push offset _Lt_0C72
push -1
push offset _Lt_0C70
call _fb_StrAssign
add esp, 20
.L_052D:
.L_052C:
cmp dword ptr [_Lt_0C7A], 0
jne .L_0534
mov ecx, dword ptr [_Lt_0C74]
and ecx, dword ptr [_Lt_0C7C]
je .L_0536
cmp dword ptr [_Lt_0C75], 0
jne .L_0538
push offset _Lt_04F5
call _OUTP
add esp, 4
jmp .L_0537
.L_0538:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0537:
jmp .L_0535
.L_0536:
cmp dword ptr [_Lt_0C75], 0
jne .L_053A
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_053A:
.L_0539:
push dword ptr [_Lt_0C6F]
push dword ptr [_Lt_0C71]
call _HMOV
add esp, 8
.L_0535:
jmp .L_0533
.L_0534:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_053C
push offset _Lt_0088
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C6F]
push dword ptr [_Lt_0C71]
call _HMOV
add esp, 8
.L_053C:
.L_053B:
.L_0533:
cmp dword ptr [_Lt_0C7B], 0
je .L_053E
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0540
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0540:
.L_053F:
jmp .L_053D
.L_053E:
cmp dword ptr [_Lt_0C77], 0
jne .L_0541
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0541:
.L_053D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0542
mov dword ptr [ebp-8], 24
jmp .L_0C6D
.L_0542:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0C6D:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0545
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0546
mov dword ptr [ebp-12], 24
jmp .L_0C6E
.L_0546:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0C6E:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .L_0549
push offset _Lt_0507
call _OUTP
add esp, 4
jmp .L_0548
.L_0549:
push offset _Lt_0508
call _OUTP
add esp, 4
.L_0548:
push 0
push 6
push offset _Lt_0509
push -1
push offset _Lt_0C7E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C70
push -1
push offset _Lt_0C7E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C7E]
call _OUTP
add esp, 4
jmp .L_0544
.L_0545:
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0C7E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C73
push -1
push offset _Lt_0C7E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C7E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C73
push -1
push offset _Lt_0C7E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C7E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_050A
push -1
push offset _Lt_0C7E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C70
push -1
push offset _Lt_0C7E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C7E]
call _OUTP
add esp, 4
.L_0544:
push dword ptr [_Lt_0C73]
push dword ptr [_Lt_0C71]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C7B], 0
je .L_054B
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_054D
push offset _Lt_0083
call _HPOP
add esp, 4
.L_054D:
.L_054C:
jmp .L_054A
.L_054B:
cmp dword ptr [_Lt_0C77], 0
jne .L_054E
push offset _Lt_0083
call _HPOP
add esp, 4
.L_054E:
.L_054A:
cmp dword ptr [_Lt_0C7A], 0
jne .L_0550
mov ecx, dword ptr [_Lt_0C74]
and ecx, dword ptr [_Lt_0C7C]
je .L_0552
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0554
cmp dword ptr [_Lt_0C75], 0
jne .L_0556
push offset _Lt_0086
call _HPOP
add esp, 4
push offset _Lt_0518
call _OUTP
add esp, 4
jmp .L_0555
.L_0556:
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0555:
.L_0554:
.L_0553:
.L_0552:
.L_0551:
push dword ptr [_Lt_0C71]
push dword ptr [_Lt_0C6F]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C75], 0
jne .L_0558
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0558:
.L_0557:
jmp .L_054F
.L_0550:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_055A
mov ecx, dword ptr [_Lt_0C76]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C74]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_055C
push offset _Lt_0518
call _OUTP
add esp, 4
push offset _Lt_051F
call _OUTP
add esp, 4
jmp .L_055B
.L_055C:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV
add esp, 8
push offset _Lt_0088
call _HPOP
add esp, 4
.L_055B:
push dword ptr [_Lt_0C72]
push dword ptr [_Lt_0C6F]
call _HMOV
add esp, 8
mov eax, dword ptr [_Lt_0C76]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0C74]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_055E
push offset _Lt_0086
call _HPOP
add esp, 4
.L_055E:
.L_055D:
.L_055A:
.L_0559:
.L_054F:
cmp dword ptr [_Lt_0C74], 0
je .L_0560
mov ecx, dword ptr [_Lt_0C76]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C7C]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0562
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0562:
.L_0561:
.L_0560:
.L_055F:
.L_0527:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C6F,12
.balign 4
	.lcomm	_Lt_0C70,12
.balign 4
	.lcomm	_Lt_0C74,4
.balign 4
	.lcomm	_Lt_0C75,4
.balign 4
	.lcomm	_Lt_0C76,4
.balign 4
	.lcomm	_Lt_0C77,4
.balign 4
	.lcomm	_Lt_0C7A,4
.balign 4
	.lcomm	_Lt_0C7C,4
.balign 4
	.lcomm	_Lt_0C7B,4
.balign 4
	.lcomm	_Lt_0C78,4
.balign 4
	.lcomm	_Lt_0C79,4
.balign 4
	.lcomm	_Lt_0C71,12
.balign 4
	.lcomm	_Lt_0C72,12
.balign 4
	.lcomm	_Lt_0C73,12
.balign 4
	.lcomm	_Lt_0C7E,12

.section .text
.balign 16
_HSHIFTL:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.L_0563:
cmp dword ptr [ebp+8], 41
jne .L_0566
push 0
push 5
push offset _Lt_0567
push -1
push offset _Lt_0C8A
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0568
push -1
push offset _Lt_0C8B
call _fb_StrAssign
add esp, 20
jmp .L_0565
.L_0566:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0569
mov dword ptr [ebp-4], 24
jmp .L_0C85
.L_0569:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C85:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_056C
push 0
push 5
push offset _Lt_0325
push -1
push offset _Lt_0C8A
call _fb_StrAssign
add esp, 20
jmp .L_056B
.L_056C:
push 0
push 5
push offset _Lt_056D
push -1
push offset _Lt_0C8A
call _fb_StrAssign
add esp, 20
.L_056B:
push 0
push 6
push offset _Lt_056E
push -1
push offset _Lt_0C8B
call _fb_StrAssign
add esp, 20
.L_0565:
push offset _Lt_0C8C
push offset _Lt_0C8D
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push 8
push offset _Lt_0C8E
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+8], 41
jne .L_0570
push 0
push -1
push offset _Lt_0C8C
push -1
push offset _Lt_0C8F
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0C90], ebx
push 0
push -1
push offset _Lt_0C8D
push -1
push offset _Lt_0C91
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C92], ebx
jmp .L_056F
.L_0570:
push 0
push -1
push offset _Lt_0C8D
push -1
push offset _Lt_0C8F
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C90], ebx
push 0
push -1
push offset _Lt_0C8C
push -1
push offset _Lt_0C91
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0C92], eax
.L_056F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0572
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_0574
jg .L_0C93
cmp dword ptr [eax+24], 64
jb .L_0574
.L_0C93:
mov eax, dword ptr [_Lt_0C92]
cmp dword ptr [eax], 4
jne .L_0576
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_03DA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0575
.L_0576:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_017F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0575:
mov eax, dword ptr [_Lt_0C90]
cmp dword ptr [eax], 4
jne .L_057F
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C8F
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push 5
push offset _Lt_03DA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_057E
.L_057F:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
push offset _Lt_0C8F
push 5
push offset _Lt_017F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_057E:
jmp .L_0573
.L_0574:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_0587
jg .L_0C94
cmp dword ptr [eax+24], 32
jb .L_0587
.L_0C94:
mov dword ptr [_Lt_0C95], -1
mov eax, dword ptr [_Lt_0C92]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0C90]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0589
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push 5
push offset _Lt_017F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0588
.L_0589:
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [_Lt_0C98], eax
cmp dword ptr [_Lt_0C98], -1
jne .L_058F
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C98], eax
mov dword ptr [_Lt_0C95], 0
.L_058F:
.L_058E:
push 0
push 0
push dword ptr [_Lt_0C98]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C99
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0C95], 0
jne .L_0591
push dword ptr [_Lt_0C99]
call _HPUSH
add esp, 4
.L_0591:
.L_0590:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C99
push 5
push offset _Lt_017F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
push offset _Lt_0C99
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push 5
push offset _Lt_017F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_0588:
mov eax, dword ptr [ebp+8]
cmp eax, 42
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_059A
mov dword ptr [ebp-4], 24
jmp .L_0C86
.L_059A:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C86:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+8]
and ecx, dword ptr [ebp-8]
je .L_059D
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 5
push offset _Lt_0326
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_0325
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _OUTP
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_059C
.L_059D:
mov eax, dword ptr [_Lt_0C92]
cmp dword ptr [eax], 4
jne .L_05A1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_03DA
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_059C
.L_05A1:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_017F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call _OUTP
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_059C:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_05AA
jg .L_0C9B
cmp dword ptr [eax+24], 32
jbe .L_05AA
.L_0C9B:
push 0
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
add ebx, 4294967264
adc ecx, 4294967295
push ecx
push ebx
call _fb_LongintToStr
add esp, 8
push eax
push -1
push offset _Lt_0C8E
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_05AA:
.L_05A9:
cmp dword ptr [_Lt_0C95], 0
jne .L_05B0
push dword ptr [_Lt_0C99]
call _HPOP
add esp, 4
.L_05B0:
.L_05AF:
jmp .L_0573
.L_0587:
mov eax, dword ptr [_Lt_0C92]
cmp dword ptr [eax], 4
jne .L_05B2
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push -1
push offset _Lt_0C8B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _OUTP
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05B1
.L_05B2:
mov eax, dword ptr [_Lt_0C90]
cmp dword ptr [eax], 4
jne .L_05BD
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push 6
push offset _Lt_0185
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push -1
push offset _Lt_0C8B
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call _OUTP
add esp, 4
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push 6
push offset _Lt_0185
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05B1
.L_05BD:
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [_Lt_0C98], eax
cmp dword ptr [_Lt_0C98], -1
jne .L_05D1
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C98], eax
mov dword ptr [_Lt_0C95], 0
jmp .L_05D0
.L_05D1:
mov dword ptr [_Lt_0C95], -1
.L_05D0:
push 0
push 0
push dword ptr [_Lt_0C98]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C99
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0C95], 0
jne .L_05D3
push dword ptr [_Lt_0C99]
call _HPUSH
add esp, 4
.L_05D3:
.L_05D2:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C91
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C99
push 5
push offset _Lt_017F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C99
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8F
push -1
push offset _Lt_0C8B
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C99
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call _OUTP
add esp, 4
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C99
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C91
push 5
push offset _Lt_017F
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_Lt_0C95], 0
jne .L_05E7
push offset _Lt_0088
call _HPOP
add esp, 4
.L_05E7:
.L_05E6:
.L_05B1:
.L_0573:
jmp .L_0571
.L_0572:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0C9C
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C8C]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C8D]
call _HPUSH
add esp, 4
mov dword ptr [_Lt_0C9D], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C9E], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C9F], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CA0], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0CA1], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0CA2], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0CA3], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_05E9
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_05EA
mov dword ptr [ebp-4], 24
jmp .L_0C88
.L_05EA:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0C88:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
je .L_05ED
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 4
jne .L_05EF
push 0
push 0
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C8E
call _fb_StrAssign
add esp, 20
.L_05EF:
.L_05EE:
.L_05ED:
.L_05EC:
cmp dword ptr [_Lt_0CA0], 0
jne .L_05F1
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [_Lt_0CA3]
je .L_05F3
push dword ptr [_Lt_0C8E]
push offset _Lt_0086
call _HMOV
add esp, 8
mov dword ptr [_Lt_0CA0], -1
jmp .L_05F2
.L_05F3:
push dword ptr [_Lt_0C8E]
call _HPUSH
add esp, 4
push offset _Lt_0518
call _OUTP
add esp, 4
add dword ptr [_Lt_0C9D], 4
.L_05F2:
jmp .L_05F0
.L_05F1:
push dword ptr [_Lt_0C8E]
push offset _Lt_0086
call _HMOV
add esp, 8
.L_05F0:
jmp .L_05E8
.L_05E9:
mov dword ptr [_Lt_0CA0], -1
.L_05E8:
cmp dword ptr [_Lt_0CA1], 0
je .L_05F5
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
je .L_05F7
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C9D]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04A0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05F6
.L_05F7:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C9D]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_05F6:
jmp .L_05F4
.L_05F5:
cmp dword ptr [_Lt_0C9E], 0
jne .L_05FF
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C9D]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04A0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05FE
.L_05FF:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
push dword ptr [_Lt_0C9D]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_05FE:
.L_05F4:
cmp dword ptr [_Lt_0CA2], 0
je .L_0607
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0609
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C9D]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_060A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0608
.L_0609:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C9D]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0608:
jmp .L_0606
.L_0607:
cmp dword ptr [_Lt_0C9F], 0
jne .L_0612
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C9D]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_060A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0611
.L_0612:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0146
push -1
push -1
mov eax, dword ptr [_Lt_0C9D]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0611:
.L_0606:
cmp dword ptr [ebp+8], 41
jne .L_061A
push offset _Lt_061B
call _OUTP
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_061C
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0619
.L_061A:
push offset _Lt_061F
call _OUTP
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_0620
push -1
push offset _Lt_0C8A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0619:
push offset _Lt_0623
call _OUTP
add esp, 4
push dword ptr [_Lt_0C9C]
push offset _Lt_03D7
call _HBRANCH
add esp, 8
cmp dword ptr [ebp+8], 41
jne .L_0625
push offset _Lt_0626
call _OUTP
add esp, 4
push offset _Lt_023C
call _OUTP
add esp, 4
jmp .L_0624
.L_0625:
push offset _Lt_0627
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0628
mov dword ptr [ebp-4], 24
jmp .L_0C89
.L_0628:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C89:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_062B
push offset _Lt_062C
call _OUTP
add esp, 4
jmp .L_062A
.L_062B:
push offset _Lt_062D
call _OUTP
add esp, 4
.L_062A:
.L_0624:
push dword ptr [_Lt_0C9C]
call _HLABEL
add esp, 4
cmp dword ptr [_Lt_0CA0], 0
jne .L_062F
push offset _Lt_0086
call _HPOP
add esp, 4
.L_062F:
.L_062E:
cmp dword ptr [_Lt_0CA2], 0
je .L_0631
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0633
push offset _Lt_0634
call _OUTP
add esp, 4
jmp .L_0632
.L_0633:
push offset _Lt_0635
call _OUTP
add esp, 4
.L_0632:
jmp .L_0630
.L_0631:
cmp dword ptr [_Lt_0C9F], 0
jne .L_0637
push offset _Lt_0634
call _OUTP
add esp, 4
jmp .L_0636
.L_0637:
push offset _Lt_0635
call _OUTP
add esp, 4
.L_0636:
.L_0630:
cmp dword ptr [_Lt_0CA1], 0
je .L_0639
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_063B
push offset _Lt_063C
call _OUTP
add esp, 4
jmp .L_063A
.L_063B:
push offset _Lt_063D
call _OUTP
add esp, 4
.L_063A:
jmp .L_0638
.L_0639:
cmp dword ptr [_Lt_0C9E], 0
jne .L_063F
push offset _Lt_063C
call _OUTP
add esp, 4
jmp .L_063E
.L_063F:
push offset _Lt_063D
call _OUTP
add esp, 4
.L_063E:
.L_0638:
push dword ptr [_Lt_0C8D]
call _HPOP
add esp, 4
push dword ptr [_Lt_0C8C]
call _HPOP
add esp, 4
.L_0571:
.L_0564:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C8D,12
.balign 4
	.lcomm	_Lt_0C8C,12
.balign 4
	.lcomm	_Lt_0C8E,12
.balign 4
	.lcomm	_Lt_0C9C,12
.balign 4
	.lcomm	_Lt_0C8A,12
.balign 4
	.lcomm	_Lt_0C8B,12
.balign 4
	.lcomm	_Lt_0C98,4
.balign 4
	.lcomm	_Lt_0C95,4
.balign 4
	.lcomm	_Lt_0C99,12
.balign 4
	.lcomm	_Lt_0C8F,12
.balign 4
	.lcomm	_Lt_0C91,12
.balign 4
	.lcomm	_Lt_0C90,4
.balign 4
	.lcomm	_Lt_0C92,4
.balign 4
	.lcomm	_Lt_0C9E,4
.balign 4
	.lcomm	_Lt_0C9F,4
.balign 4
	.lcomm	_Lt_0CA0,4
.balign 4
	.lcomm	_Lt_0CA1,4
.balign 4
	.lcomm	_Lt_0CA2,4
.balign 4
	.lcomm	_Lt_0CA3,4
.balign 4
	.lcomm	_Lt_0C9D,4

.section .text
.balign 16
_HSHIFTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0640:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0642
mov dword ptr [ebp-4], 24
jmp .L_0CA7
.L_0642:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0CA7:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0645
cmp dword ptr [ebp+8], 41
jne .L_0647
push 0
push 4
push offset _Lt_0648
push -1
push offset _Lt_0CA8
call _fb_StrAssign
add esp, 20
jmp .L_0646
.L_0647:
push 0
push 4
push offset _Lt_0649
push -1
push offset _Lt_0CA8
call _fb_StrAssign
add esp, 20
.L_0646:
jmp .L_0644
.L_0645:
cmp dword ptr [ebp+8], 41
jne .L_064B
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0CA8
call _fb_StrAssign
add esp, 20
jmp .L_064A
.L_064B:
push 0
push 4
push offset _Lt_064D
push -1
push offset _Lt_0CA8
call _fb_StrAssign
add esp, 20
.L_064A:
.L_0644:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CA9
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0CAA], 0
mov dword ptr [_Lt_0CAB], 0
mov dword ptr [_Lt_0CAC], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_064F
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CAD
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
push 0
push -1
push offset _Lt_0CA9
push -1
push offset _Lt_0CAE
call _fb_StrAssign
add esp, 20
jmp .L_064E
.L_064F:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CAF], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CB0], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_0651
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [_Lt_0CB1], ebx
jmp .L_0650
.L_0651:
mov dword ptr [_Lt_0CB1], -1
.L_0650:
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0CAA], eax
cmp dword ptr [_Lt_0CAA], 0
je .L_0653
push offset _Lt_0086
call _HPUSH
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0655
push -1
push 0
push 0
push 8
push offset _Lt_0CB2
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0CB2]
call _HPUSH
add esp, 4
.L_0655:
.L_0654:
jmp .L_0652
.L_0653:
mov eax, dword ptr [_Lt_0CB1]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0CB0]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0656
mov dword ptr [_Lt_0CAC], -1
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_0656:
.L_0652:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
je .L_0658
push -1
push 0
push 0
push 2
push offset _Lt_0CB2
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0CB2]
push offset _Lt_007A
call _HMOV
add esp, 8
jmp .L_0657
.L_0658:
cmp dword ptr [_Lt_0CB1], 3
je .L_065A
mov ebx, dword ptr [_DTYPETB+128]
sal ebx, 3
add ebx, dword ptr [_Lt_0CB1]
lea eax, [_RNAMETB+ebx*8]
push eax
push offset _Lt_0086
call _HMOV
add esp, 8
.L_065A:
.L_0659:
.L_0657:
cmp dword ptr [_Lt_0CAA], 0
je .L_065C
cmp dword ptr [_Lt_0CAF], 0
jne .L_065E
mov dword ptr [_Lt_0CAB], -1
push offset _Lt_04F5
call _OUTP
add esp, 4
jmp .L_065D
.L_065E:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_065D:
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
sal ebx, 4
mov eax, dword ptr [_DTYPETB+ebx]
sal eax, 6
lea ebx, [_RNAMETB+eax+40]
push ebx
push -1
push offset _Lt_0CAE
call _fb_StrAssign
add esp, 20
jmp .L_065B
.L_065C:
push 0
push -1
push offset _Lt_0CA9
push -1
push offset _Lt_0CAE
call _fb_StrAssign
add esp, 20
.L_065B:
push 0
push 3
push offset _Lt_007A
push -1
push offset _Lt_0CAD
call _fb_StrAssign
add esp, 20
.L_064E:
push 0
push -1
push offset _Lt_0CA8
push -1
push offset _Lt_0CB2
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0170
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAE
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAD
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB2]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0CAA], 0
je .L_0660
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_0662
push offset _Lt_0086
call _HPOP
add esp, 4
cmp dword ptr [_Lt_0CAB], 0
je .L_0664
push offset _Lt_0518
call _OUTP
add esp, 4
.L_0664:
.L_0663:
.L_0662:
.L_0661:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
sal ebx, 6
lea eax, [_RNAMETB+ebx+40]
push eax
push dword ptr [_Lt_0CA9]
call _HMOV
add esp, 8
.L_0660:
.L_065F:
cmp dword ptr [_Lt_0CAB], 0
je .L_0666
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0666:
.L_0665:
cmp dword ptr [_Lt_0CAC], 0
je .L_0668
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0668:
.L_0667:
.L_0641:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CAB,4
.balign 4
	.lcomm	_Lt_0CAC,4
.balign 4
	.lcomm	_Lt_0CAF,4
.balign 4
	.lcomm	_Lt_0CB0,4
.balign 4
	.lcomm	_Lt_0CB1,4
.balign 4
	.lcomm	_Lt_0CAA,4
.balign 4
	.lcomm	_Lt_0CB2,12
.balign 4
	.lcomm	_Lt_0CA9,12
.balign 4
	.lcomm	_Lt_0CAD,12
.balign 4
	.lcomm	_Lt_0CAE,12
.balign 4
	.lcomm	_Lt_0CA8,12

.section .text
.balign 16
__EMITSHLL:
push ebp
mov ebp, esp
.L_0669:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTL
add esp, 12
.L_066A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHLI:
push ebp
mov ebp, esp
.L_066B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTI
add esp, 12
.L_066C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHRL:
push ebp
mov ebp, esp
.L_066D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTL
add esp, 12
.L_066E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHRI:
push ebp
mov ebp, esp
.L_066F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTI
add esp, 12
.L_0670:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITANDL:
push ebp
mov ebp, esp
.L_0671:
push offset _Lt_0CB5
push offset _Lt_0CB6
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CB7
push offset _Lt_0CB8
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0673
push -1
push offset _Lt_0CB9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB6
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB8
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB9]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0673
push -1
push offset _Lt_0CB9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB5
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB7
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB9]
call _OUTP
add esp, 4
.L_0672:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CB6,12
.balign 4
	.lcomm	_Lt_0CB5,12
.balign 4
	.lcomm	_Lt_0CB8,12
.balign 4
	.lcomm	_Lt_0CB7,12
.balign 4
	.lcomm	_Lt_0CB9,12

.section .text
.balign 16
__EMITANDI:
push ebp
mov ebp, esp
.L_0674:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CBA
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CBB
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0673
push -1
push offset _Lt_0CBC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBA
push -1
push offset _Lt_0CBC
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CBC
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBB
push -1
push offset _Lt_0CBC
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CBC]
call _OUTP
add esp, 4
.L_0675:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CBA,12
.balign 4
	.lcomm	_Lt_0CBB,12
.balign 4
	.lcomm	_Lt_0CBC,12

.section .text
.balign 16
__EMITORL:
push ebp
mov ebp, esp
.L_0676:
push offset _Lt_0CBD
push offset _Lt_0CBE
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CBF
push offset _Lt_0CC0
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CC1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBE
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC0
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC1]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CC1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBD
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBF
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC1]
call _OUTP
add esp, 4
.L_0677:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CBE,12
.balign 4
	.lcomm	_Lt_0CBD,12
.balign 4
	.lcomm	_Lt_0CC0,12
.balign 4
	.lcomm	_Lt_0CBF,12
.balign 4
	.lcomm	_Lt_0CC1,12

.section .text
.balign 16
__EMITORI:
push ebp
mov ebp, esp
.L_0679:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC2
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC3
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CC4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC2
push -1
push offset _Lt_0CC4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC3
push -1
push offset _Lt_0CC4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC4]
call _OUTP
add esp, 4
.L_067A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CC2,12
.balign 4
	.lcomm	_Lt_0CC3,12
.balign 4
	.lcomm	_Lt_0CC4,12

.section .text
.balign 16
__EMITXORL:
push ebp
mov ebp, esp
.L_067B:
push offset _Lt_0CC5
push offset _Lt_0CC6
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CC7
push offset _Lt_0CC8
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CC9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC6
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC8
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC9]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CC9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC5
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC7
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC9]
call _OUTP
add esp, 4
.L_067C:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CC6,12
.balign 4
	.lcomm	_Lt_0CC5,12
.balign 4
	.lcomm	_Lt_0CC8,12
.balign 4
	.lcomm	_Lt_0CC7,12
.balign 4
	.lcomm	_Lt_0CC9,12

.section .text
.balign 16
__EMITXORI:
push ebp
mov ebp, esp
.L_067D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CCA
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CCB
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CCC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCA
push -1
push offset _Lt_0CCC
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CCC
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCB
push -1
push offset _Lt_0CCC
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CCC]
call _OUTP
add esp, 4
.L_067E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CCA,12
.balign 4
	.lcomm	_Lt_0CCB,12
.balign 4
	.lcomm	_Lt_0CCC,12

.section .text
.balign 16
__EMITEQVL:
push ebp
mov ebp, esp
.L_067F:
push offset _Lt_0CCD
push offset _Lt_0CCE
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CCF
push offset _Lt_0CD0
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCE
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD0
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCD
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCF
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCE
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCD
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
.L_0680:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CCE,12
.balign 4
	.lcomm	_Lt_0CCD,12
.balign 4
	.lcomm	_Lt_0CD0,12
.balign 4
	.lcomm	_Lt_0CCF,12
.balign 4
	.lcomm	_Lt_0CD1,12

.section .text
.balign 16
__EMITEQVI:
push ebp
mov ebp, esp
.L_0682:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD2
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD3
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CD4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD2
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD3
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD4]
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_0685
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CD4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD2
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
jmp .L_0684
.L_0685:
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CD4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD2
push -1
push offset _Lt_0CD4
call _fb_StrConcatAssign
add esp, 20
.L_0684:
push dword ptr [_Lt_0CD4]
call _OUTP
add esp, 4
.L_0683:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CD2,12
.balign 4
	.lcomm	_Lt_0CD3,12
.balign 4
	.lcomm	_Lt_0CD4,12

.section .text
.balign 16
__EMITIMPL:
push ebp
mov ebp, esp
.L_0686:
push offset _Lt_0CD5
push offset _Lt_0CD6
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CD7
push offset _Lt_0CD8
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD6
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD9]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD5
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD9]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD6
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD8
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD9]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CD9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD5
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD7
push -1
push offset _Lt_0CD9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD9]
call _OUTP
add esp, 4
.L_0687:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CD6,12
.balign 4
	.lcomm	_Lt_0CD5,12
.balign 4
	.lcomm	_Lt_0CD8,12
.balign 4
	.lcomm	_Lt_0CD7,12
.balign 4
	.lcomm	_Lt_0CD9,12

.section .text
.balign 16
__EMITIMPI:
push ebp
mov ebp, esp
.L_0688:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDA
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDB
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_068B
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CDC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDA
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
jmp .L_068A
.L_068B:
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0CDC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDA
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
.L_068A:
push dword ptr [_Lt_0CDC]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0678
push -1
push offset _Lt_0CDC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDA
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDB
push -1
push offset _Lt_0CDC
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CDC]
call _OUTP
add esp, 4
.L_0689:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CDA,12
.balign 4
	.lcomm	_Lt_0CDB,12
.balign 4
	.lcomm	_Lt_0CDC,12

.section .text
.balign 16
__EMITATN2:
push ebp
mov ebp, esp
.L_068C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDD
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_068F
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0CDE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDD
push -1
push offset _Lt_0CDE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CDE]
call _OUTP
add esp, 4
jmp .L_068E
.L_068F:
push offset _Lt_0690
call _OUTP
add esp, 4
.L_068E:
push offset _Lt_0691
call _OUTP
add esp, 4
.L_068D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CDD,12
.balign 4
	.lcomm	_Lt_0CDE,12

.section .text
.balign 16
__EMITPOW:
push ebp
mov ebp, esp
.L_0692:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDF
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0695
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0CE0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDF
push -1
push offset _Lt_0CE0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE0]
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
.L_0695:
.L_0694:
push offset _Lt_0696
call _OUTP
add esp, 4
push offset _Lt_0697
call _OUTP
add esp, 4
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0699
call _OUTP
add esp, 4
push offset _Lt_069A
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_069B
call _OUTP
add esp, 4
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_030A
call _OUTP
add esp, 4
push offset _Lt_069D
call _OUTP
add esp, 4
push offset _Lt_069E
call _OUTP
add esp, 4
.L_0693:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CDF,12
.balign 4
	.lcomm	_Lt_0CE0,12

.section .text
.balign 16
_HCMPL:
push ebp
mov ebp, esp
sub esp, 36
.L_069F:
push offset _Lt_0CE1
push offset _Lt_0CE2
push dword ptr [ebp+28]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CE3
push offset _Lt_0CE4
push dword ptr [ebp+32]
call _HPREPOPERAND64
add esp, 12
cmp dword ptr [ebp+12], 0
jne .L_06A2
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
jmp .L_06A1
.L_06A2:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
.L_06A1:
push 0
push 5
push offset _Lt_0303
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE1
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE3
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE6]
call _OUTP
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CE7
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 0
je .L_06A4
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CE8
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0318
push dword ptr [_Lt_0CE8]
call _HMOV
add esp, 8
.L_06A4:
.L_06A3:
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+36], 0
jne .L_06A8
push dword ptr [_Lt_0CE5]
push dword ptr [_Lt_0CE6]
call _HBRANCH
add esp, 8
jmp .L_06A7
.L_06A8:
push dword ptr [_Lt_0CE7]
push dword ptr [_Lt_0CE6]
call _HBRANCH
add esp, 8
.L_06A7:
push 0
push dword ptr [ebp+20]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_06AA
push 0
push -1
push 0
push dword ptr [ebp+20]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE7]
push dword ptr [_Lt_0CE6]
call _HBRANCH
add esp, 8
.L_06AA:
.L_06A9:
push 0
push 5
push offset _Lt_0303
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE2
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE4
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE6]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+24]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE5]
push dword ptr [_Lt_0CE6]
call _HBRANCH
add esp, 8
push dword ptr [_Lt_0CE7]
call _HLABEL
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_06AE
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CE6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE8
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE8
push -1
push offset _Lt_0CE6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE6]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CE5]
call _HLABEL
add esp, 4
.L_06AE:
.L_06AD:
.L_06A0:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CE2,12
.balign 4
	.lcomm	_Lt_0CE1,12
.balign 4
	.lcomm	_Lt_0CE4,12
.balign 4
	.lcomm	_Lt_0CE3,12
.balign 4
	.lcomm	_Lt_0CE8,12
.balign 4
	.lcomm	_Lt_0CE6,12
.balign 4
	.lcomm	_Lt_0CE5,12
.balign 4
	.lcomm	_Lt_0CE7,12

.section .text
.balign 16
_HCMPI:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_06AF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CE9
push dword ptr [ebp+20]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CEA
push dword ptr [ebp+24]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+12], 0
jne .L_06B2
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CEB
call _fb_StrAssign
add esp, 20
jmp .L_06B1
.L_06B2:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CEB
call _fb_StrAssign
add esp, 20
.L_06B1:
mov dword ptr [_Lt_0CEC], 0
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_06B4
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
jne .L_06B6
cmp dword ptr [ecx+24], 0
jne .L_06B6
.L_0CEF:
mov dword ptr [_Lt_0CEC], -1
.L_06B6:
.L_06B5:
.L_06B4:
.L_06B3:
cmp dword ptr [_Lt_0CEC], 0
je .L_06B8
push 0
push 6
push offset _Lt_06B9
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE9
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE9
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
jmp .L_06B7
.L_06B8:
push 0
push 5
push offset _Lt_0303
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE9
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CEA
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06B7:
cmp dword ptr [ebp+8], 0
jne .L_06BB
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ecx, [ebp-12]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CEB]
push dword ptr [_Lt_0CF0]
call _HBRANCH
add esp, 8
jmp .L_06B0
.L_06BB:
.L_06BA:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CF1
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_ENV+112]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_06BE
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0CF4
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_06C0
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CF7], eax
cmp dword ptr [_Lt_0CF7], 0
jne .L_06C2
push 0
push 11
push offset _Lt_06C3
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06C2:
.L_06C1:
push 0
push -1
push 4
push offset _Lt_06C5
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06C4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0CF7], 0
jne .L_06C9
push 0
push 11
push offset _Lt_06C3
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
jmp .L_06C8
.L_06C9:
push offset _Lt_0083
push dword ptr [_Lt_0CF1]
call _HMOV
add esp, 8
.L_06C8:
jmp .L_06BF
.L_06C0:
push 0
push -1
push -1
push offset _Lt_0CF4
push -1
push 2
push offset _Lt_0170
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06C4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06BF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
je .L_06CE
push 0
push 5
push offset _Lt_056D
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06CF
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0471
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06CE:
.L_06CD:
jmp .L_06BD
.L_06BE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_06D1
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06CF
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
jmp .L_06D0
.L_06D1:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_06D2
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
.L_06D0:
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CEB]
push dword ptr [_Lt_0CF0]
call _HBRANCH
add esp, 8
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF1
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CEB]
call _HLABEL
add esp, 4
.L_06BD:
.L_06B0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CF1,12
.balign 4
	.lcomm	_Lt_0CF4,12
.balign 4
	.lcomm	_Lt_0CE9,12
.balign 4
	.lcomm	_Lt_0CEA,12
.balign 4
	.lcomm	_Lt_0CF0,12
.balign 4
	.lcomm	_Lt_0CEB,12
.balign 4
	.lcomm	_Lt_0CF7,4
.balign 4
	.lcomm	_Lt_0CEC,4

.section .text
.balign 16
_HCMPF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_06D4:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CF8
push dword ptr [ebp+24]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CF9
push dword ptr [ebp+28]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+12], 0
jne .L_06D7
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CFA
call _fb_StrAssign
add esp, 20
jmp .L_06D6
.L_06D7:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CFA
call _fb_StrAssign
add esp, 20
.L_06D6:
cmp dword ptr [_ENV+112], 3
jl .L_06D9
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06DB
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_06DC
call _OUTP
add esp, 4
push offset _Lt_06DD
call _OUTP
add esp, 4
jmp .L_06DA
.L_06DB:
push 0
push 5
push offset _Lt_03AB
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF9
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
push offset _Lt_06DC
call _OUTP
add esp, 4
push offset _Lt_06DD
call _OUTP
add esp, 4
.L_06DA:
jmp .L_06D8
.L_06D9:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06DF
push offset _Lt_06E0
call _OUTP
add esp, 4
jmp .L_06DE
.L_06DF:
push 0
push 7
push offset _Lt_06E1
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF9
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
.L_06DE:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CFC], eax
cmp dword ptr [ebp+8], 0
je .L_06E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_Lt_0CFC], ebx
.L_06E3:
.L_06E2:
cmp dword ptr [_Lt_0CFC], 0
jne .L_06E5
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_06E5:
.L_06E4:
push offset _Lt_03D5
call _OUTP
add esp, 4
push 0
push dword ptr [ebp+20]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_06E7
push 0
push -1
push 0
push dword ptr [ebp+20]
push 10
push offset _Lt_06E8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
jmp .L_06E6
.L_06E7:
push offset _Lt_06EA
call _OUTP
add esp, 4
.L_06E6:
cmp dword ptr [_Lt_0CFC], 0
jne .L_06EC
push offset _Lt_0088
call _HPOP
add esp, 4
.L_06EC:
.L_06EB:
.L_06D8:
cmp dword ptr [ebp+8], 0
jne .L_06EE
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CFA]
push dword ptr [_Lt_0CFB]
call _HBRANCH
add esp, 8
jmp .L_06D5
.L_06EE:
.L_06ED:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CFE
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [_ENV+112], 1
jl .L_06F1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0CFF
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_06F3
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D02], eax
cmp dword ptr [_Lt_0D02], 0
jne .L_06F5
push 0
push 11
push offset _Lt_06C3
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
.L_06F5:
.L_06F4:
push 0
push -1
push 4
push offset _Lt_06F6
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06C4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D02], 0
jne .L_06FA
push 0
push 11
push offset _Lt_06C3
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
jmp .L_06F9
.L_06FA:
push offset _Lt_0083
push dword ptr [_Lt_0CFE]
call _HMOV
add esp, 8
.L_06F9:
jmp .L_06F2
.L_06F3:
push 0
push -1
push -1
push offset _Lt_0CFF
push -1
push 2
push offset _Lt_0170
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06C4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
.L_06F2:
push 0
push 5
push offset _Lt_056D
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06CF
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0471
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
jmp .L_06F0
.L_06F1:
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_06D2
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_06A5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CFA]
push dword ptr [_Lt_0CFB]
call _HBRANCH
add esp, 8
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0CFB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CFE
push -1
push offset _Lt_0CFB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CFB]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CFA]
call _HLABEL
add esp, 4
.L_06F0:
.L_06D5:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CFE,12
.balign 4
	.lcomm	_Lt_0CFF,12
.balign 4
	.lcomm	_Lt_0CF8,12
.balign 4
	.lcomm	_Lt_0CF9,12
.balign 4
	.lcomm	_Lt_0CFB,12
.balign 4
	.lcomm	_Lt_0CFA,12
.balign 4
	.lcomm	_Lt_0CFC,4
.balign 4
	.lcomm	_Lt_0D02,4

.section .text
.balign 16
__EMITCGTL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_06FF:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0702
mov dword ptr [ebp-4], 24
jmp .L_0D03
.L_0702:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D03:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0705
push 0
push 2
push offset _Lt_0706
push -1
push offset _Lt_0D04
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0707
push -1
push offset _Lt_0D05
call _fb_StrAssign
add esp, 20
jmp .L_0704
.L_0705:
push 0
push 2
push offset _Lt_0708
push -1
push offset _Lt_0D04
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0709
push -1
push offset _Lt_0D05
call _fb_StrAssign
add esp, 20
.L_0704:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0708
push dword ptr [_Lt_0D05]
push dword ptr [_Lt_0D04]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0700:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D04,12
.balign 4
	.lcomm	_Lt_0D05,12

.section .text
.balign 16
__EMITCGTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_070A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_070C
mov dword ptr [ebp-4], 24
jmp .L_0D06
.L_070C:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D06:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_070F
push 0
push 2
push offset _Lt_0706
push -1
push offset _Lt_0D07
call _fb_StrAssign
add esp, 20
jmp .L_070E
.L_070F:
push 0
push 2
push offset _Lt_0708
push -1
push offset _Lt_0D07
call _fb_StrAssign
add esp, 20
.L_070E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D07]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_070B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D07,12

.section .text
.balign 16
__EMITCGTF:
push ebp
mov ebp, esp
.L_0710:
cmp dword ptr [_ENV+112], 3
jl .L_0713
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0709
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0712
.L_0713:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0715
push offset _Lt_0714
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0712:
.L_0711:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCLTL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0716:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0718
mov dword ptr [ebp-4], 24
jmp .L_0D08
.L_0718:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D08:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_071B
push 0
push 2
push offset _Lt_0707
push -1
push offset _Lt_0D09
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0706
push -1
push offset _Lt_0D0A
call _fb_StrAssign
add esp, 20
jmp .L_071A
.L_071B:
push 0
push 2
push offset _Lt_0709
push -1
push offset _Lt_0D09
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0708
push -1
push offset _Lt_0D0A
call _fb_StrAssign
add esp, 20
.L_071A:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0709
push dword ptr [_Lt_0D0A]
push dword ptr [_Lt_0D09]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0717:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D09,12
.balign 4
	.lcomm	_Lt_0D0A,12

.section .text
.balign 16
__EMITCLTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_071C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_071E
mov dword ptr [ebp-4], 24
jmp .L_0D0B
.L_071E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D0B:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0721
push 0
push 2
push offset _Lt_0707
push -1
push offset _Lt_0D0C
call _fb_StrAssign
add esp, 20
jmp .L_0720
.L_0721:
push 0
push 2
push offset _Lt_0709
push -1
push offset _Lt_0D0C
call _fb_StrAssign
add esp, 20
.L_0720:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D0C]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_071D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D0C,12

.section .text
.balign 16
__EMITCLTF:
push ebp
mov ebp, esp
.L_0722:
cmp dword ptr [_ENV+112], 3
jl .L_0725
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0708
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0724
.L_0725:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0727
push offset _Lt_0726
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0724:
.L_0723:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQL:
push ebp
mov ebp, esp
.L_0728:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_072B
push offset _Lt_0000
push offset _Lt_072A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0729:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQI:
push ebp
mov ebp, esp
.L_072C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_072B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_072D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQF:
push ebp
mov ebp, esp
.L_072E:
cmp dword ptr [_ENV+112], 3
jl .L_0731
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0714
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0730
.L_0731:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0732
push offset _Lt_0726
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0730:
.L_072F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEL:
push ebp
mov ebp, esp
.L_0733:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_072A
push offset _Lt_0000
push offset _Lt_072A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0734:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEI:
push ebp
mov ebp, esp
.L_0735:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_072A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0736:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEF:
push ebp
mov ebp, esp
.L_0737:
cmp dword ptr [_ENV+112], 3
jl .L_073A
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0726
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0739
.L_073A:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0732
push offset _Lt_0714
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0739:
.L_0738:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCLEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_073B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_073D
mov dword ptr [ebp-4], 24
jmp .L_0D0D
.L_073D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D0D:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0740
push 0
push 2
push offset _Lt_0707
push -1
push offset _Lt_0D0E
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0706
push -1
push offset _Lt_0D0F
call _fb_StrAssign
add esp, 20
jmp .L_073F
.L_0740:
push 0
push 2
push offset _Lt_0709
push -1
push offset _Lt_0D0E
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0708
push -1
push offset _Lt_0D0F
call _fb_StrAssign
add esp, 20
.L_073F:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0741
push dword ptr [_Lt_0D0F]
push dword ptr [_Lt_0D0E]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_073C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D0E,12
.balign 4
	.lcomm	_Lt_0D0F,12

.section .text
.balign 16
__EMITCLEI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0742:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0744
mov dword ptr [ebp-4], 24
jmp .L_0D10
.L_0744:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D10:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0747
push 0
push 3
push offset _Lt_0748
push -1
push offset _Lt_0D11
call _fb_StrAssign
add esp, 20
jmp .L_0746
.L_0747:
push 0
push 3
push offset _Lt_0741
push -1
push offset _Lt_0D11
call _fb_StrAssign
add esp, 20
.L_0746:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D11]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0743:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D11,12

.section .text
.balign 16
__EMITCLEF:
push ebp
mov ebp, esp
.L_0749:
cmp dword ptr [_ENV+112], 3
jl .L_074C
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_074D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_074B
.L_074C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0715
push offset _Lt_0726
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_074B:
.L_074A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCGEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_074E:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0750
mov dword ptr [ebp-4], 24
jmp .L_0D12
.L_0750:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D12:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0753
push 0
push 2
push offset _Lt_0706
push -1
push offset _Lt_0D13
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0707
push -1
push offset _Lt_0D14
call _fb_StrAssign
add esp, 20
jmp .L_0752
.L_0753:
push 0
push 2
push offset _Lt_0708
push -1
push offset _Lt_0D13
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0709
push -1
push offset _Lt_0D14
call _fb_StrAssign
add esp, 20
.L_0752:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_074D
push dword ptr [_Lt_0D14]
push dword ptr [_Lt_0D13]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_074F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D13,12
.balign 4
	.lcomm	_Lt_0D14,12

.section .text
.balign 16
__EMITCGEI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0754:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0756
mov dword ptr [ebp-4], 24
jmp .L_0D15
.L_0756:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D15:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0759
push 0
push 3
push offset _Lt_075A
push -1
push offset _Lt_0D16
call _fb_StrAssign
add esp, 20
jmp .L_0758
.L_0759:
push 0
push 3
push offset _Lt_074D
push -1
push offset _Lt_0D16
call _fb_StrAssign
add esp, 20
.L_0758:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0755:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D16,12

.section .text
.balign 16
__EMITCGEF:
push ebp
mov ebp, esp
.L_075B:
cmp dword ptr [_ENV+112], 3
jl .L_075E
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0741
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_075D
.L_075E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_074D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_075D:
.L_075C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITNEGL:
push ebp
mov ebp, esp
.L_075F:
push offset _Lt_0D17
push offset _Lt_0D18
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0761
push -1
push offset _Lt_0D19
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D18
push -1
push offset _Lt_0D19
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D19]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0454
push -1
push offset _Lt_0D19
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D17
push -1
push offset _Lt_0D19
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0304
push -1
push offset _Lt_0D19
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D19]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0761
push -1
push offset _Lt_0D19
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D17
push -1
push offset _Lt_0D19
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D19]
call _OUTP
add esp, 4
.L_0760:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D18,12
.balign 4
	.lcomm	_Lt_0D17,12
.balign 4
	.lcomm	_Lt_0D19,12

.section .text
.balign 16
__EMITNEGI:
push ebp
mov ebp, esp
.L_0762:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D1A
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0761
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1A
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
.L_0763:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D1A,12
.balign 4
	.lcomm	_Lt_0D1B,12

.section .text
.balign 16
__EMITNEGF:
push ebp
mov ebp, esp
.L_0764:
push offset _Lt_0766
call _OUTP
add esp, 4
.L_0765:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITNOTL:
push ebp
mov ebp, esp
.L_0767:
push offset _Lt_0D1C
push offset _Lt_0D1D
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0D1E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1D
push -1
push offset _Lt_0D1E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0D1E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1C
push -1
push offset _Lt_0D1E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1E]
call _OUTP
add esp, 4
.L_0768:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D1D,12
.balign 4
	.lcomm	_Lt_0D1C,12
.balign 4
	.lcomm	_Lt_0D1E,12

.section .text
.balign 16
__EMITNOTI:
push ebp
mov ebp, esp
.L_0769:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D1F
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_076C
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0D20
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1F
push -1
push offset _Lt_0D20
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D20
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0D20
call _fb_StrConcatAssign
add esp, 20
jmp .L_076B
.L_076C:
push 0
push 5
push offset _Lt_0681
push -1
push offset _Lt_0D20
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1F
push -1
push offset _Lt_0D20
call _fb_StrConcatAssign
add esp, 20
.L_076B:
push dword ptr [_Lt_0D20]
call _OUTP
add esp, 4
.L_076A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D1F,12
.balign 4
	.lcomm	_Lt_0D20,12

.section .text
.balign 16
__EMITABSL:
push ebp
mov ebp, esp
.L_076D:
push offset _Lt_0D21
push offset _Lt_0D22
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D23], eax
push 0
push 0
push dword ptr [_Lt_0D23]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D24
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D23]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D25], eax
cmp dword ptr [_Lt_0D25], 0
jne .L_0770
push dword ptr [_Lt_0D24]
call _HPUSH
add esp, 4
.L_0770:
.L_076F:
push dword ptr [_Lt_0D21]
push dword ptr [_Lt_0D24]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_0325
push -1
push offset _Lt_0D26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D24
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_0326
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D26]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0D26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D22
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D24
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D26]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0D26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D21
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D24
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D26]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0470
push -1
push offset _Lt_0D26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D22
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D24
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D26]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0471
push -1
push offset _Lt_0D26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D21
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D24
push -1
push offset _Lt_0D26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D26]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D25], 0
jne .L_0772
push dword ptr [_Lt_0D24]
call _HPOP
add esp, 4
.L_0772:
.L_0771:
.L_076E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D22,12
.balign 4
	.lcomm	_Lt_0D21,12
.balign 4
	.lcomm	_Lt_0D23,4
.balign 4
	.lcomm	_Lt_0D25,4
.balign 4
	.lcomm	_Lt_0D24,12
.balign 4
	.lcomm	_Lt_0D26,12

.section .text
.balign 16
__EMITABSI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0773:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D28
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D29], eax
push 0
push 0
push dword ptr [_Lt_0D29]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D2A
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D29]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D2B], eax
cmp dword ptr [_Lt_0D2B], 0
jne .L_0776
push dword ptr [_Lt_0D2A]
call _HPUSH
add esp, 4
.L_0776:
.L_0775:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0777
mov dword ptr [ebp-4], 24
jmp .L_0D27
.L_0777:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D27:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [_Lt_0D2C], ebx
push dword ptr [_Lt_0D28]
push dword ptr [_Lt_0D2A]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_0325
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2A
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D2C]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03DA
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D28
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2A
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0470
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D28
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2A
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D2B], 0
jne .L_077A
push dword ptr [_Lt_0D2A]
call _HPOP
add esp, 4
.L_077A:
.L_0779:
.L_0774:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D28,12
.balign 4
	.lcomm	_Lt_0D29,4
.balign 4
	.lcomm	_Lt_0D2B,4
.balign 4
	.lcomm	_Lt_0D2A,12
.balign 4
	.lcomm	_Lt_0D2C,4
.balign 4
	.lcomm	_Lt_0D2D,12

.section .text
.balign 16
__EMITABSF:
push ebp
mov ebp, esp
.L_077B:
push offset _Lt_0696
call _OUTP
add esp, 4
.L_077C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNL:
push ebp
mov ebp, esp
sub esp, 128
.L_077D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-56], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-56], 0
jne .L_0780
push dword ptr [ebp-48]
call _HPUSH
add esp, 4
.L_0780:
.L_077F:
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call _HMOV
add esp, 8
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call _OUTP
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0318
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0318
push dword ptr [ebp-24]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
push offset _Lt_0784
call _HBRANCH
add esp, 8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0145
push dword ptr [ebp-24]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
push offset _Lt_0785
call _HBRANCH
add esp, 8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-128]
call _OUTP
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-36]
push offset _Lt_0789
call _HBRANCH
add esp, 8
push offset _Lt_0145
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
call _HLABEL
add esp, 4
cmp dword ptr [ebp-56], 0
jne .L_078B
push dword ptr [ebp-48]
call _HPOP
add esp, 4
.L_078B:
.L_078A:
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_077E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNI:
push ebp
mov ebp, esp
sub esp, 60
.L_078C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push offset _Lt_0791
call _HBRANCH
add esp, 8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-24]
push offset _Lt_0785
call _HBRANCH
add esp, 8
push offset _Lt_0318
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-24]
call _HLABEL
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_078D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNF:
push ebp
mov ebp, esp
sub esp, 28
.L_0792:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [_ENV+112], 3
jl .L_0795
push offset _Lt_0796
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_03D0
call _OUTP
add esp, 4
jmp .L_0794
.L_0795:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0798
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_0798:
.L_0797:
push offset _Lt_0799
call _OUTP
add esp, 4
push offset _Lt_03D5
call _OUTP
add esp, 4
push offset _Lt_06EA
call _OUTP
add esp, 4
cmp dword ptr [ebp-28], 0
jne .L_079B
push offset _Lt_0088
call _HPOP
add esp, 4
.L_079B:
.L_079A:
.L_0794:
push dword ptr [ebp-24]
push offset _Lt_03D7
call _HBRANCH
add esp, 8
push offset _Lt_06DD
call _OUTP
add esp, 4
push offset _Lt_069C
call _OUTP
add esp, 4
push dword ptr [ebp-24]
push offset _Lt_079C
call _HBRANCH
add esp, 8
push offset _Lt_0766
call _OUTP
add esp, 4
push dword ptr [ebp-24]
call _HLABEL
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0793:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSIN:
push ebp
mov ebp, esp
.L_079D:
push offset _Lt_079F
call _OUTP
add esp, 4
.L_079E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITASIN:
push ebp
mov ebp, esp
.L_07A0:
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_07A2
call _OUTP
add esp, 4
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_0483
call _OUTP
add esp, 4
push offset _Lt_07A3
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
.L_07A1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCOS:
push ebp
mov ebp, esp
.L_07A4:
push offset _Lt_07A6
call _OUTP
add esp, 4
.L_07A5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITACOS:
push ebp
mov ebp, esp
.L_07A7:
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_07A2
call _OUTP
add esp, 4
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_0483
call _OUTP
add esp, 4
push offset _Lt_07A3
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
.L_07A8:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITTAN:
push ebp
mov ebp, esp
.L_07A9:
push offset _Lt_07AB
call _OUTP
add esp, 4
push offset _Lt_06DD
call _OUTP
add esp, 4
.L_07AA:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITATAN:
push ebp
mov ebp, esp
.L_07AC:
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
.L_07AD:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSQRT:
push ebp
mov ebp, esp
.L_07AE:
push offset _Lt_07A3
call _OUTP
add esp, 4
.L_07AF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOG:
push ebp
mov ebp, esp
.L_07B0:
push offset _Lt_07B2
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0697
call _OUTP
add esp, 4
.L_07B1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEXP:
push ebp
mov ebp, esp
.L_07B3:
push offset _Lt_07B5
call _OUTP
add esp, 4
push offset _Lt_07B6
call _OUTP
add esp, 4
push offset _Lt_07B7
call _OUTP
add esp, 4
push offset _Lt_0699
call _OUTP
add esp, 4
push offset _Lt_07B8
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_069B
call _OUTP
add esp, 4
push offset _Lt_07B9
call _HPUSH
add esp, 4
push offset _Lt_07BA
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
push offset _Lt_069D
call _OUTP
add esp, 4
push offset _Lt_069E
call _OUTP
add esp, 4
.L_07B4:
mov esp, ebp
pop ebp
ret
.balign 16
_HFPUCHANGERC:
push ebp
mov ebp, esp
sub esp, 96
.L_07BB:
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_07BD
call _OUTP
add esp, 4
push offset _Lt_07BE
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HMOV
add esp, 8
push 3
push offset _Lt_07BF
push 0
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_07C1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 21
push offset _Lt_07C2
push -1
push -1
push dword ptr [ebp+8]
push 5
push offset _Lt_0673
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-96]
call _OUTP
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_07C1:
.L_07C0:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push 11
push offset _Lt_07C7
push -1
push 0
push dword ptr [ebp+12]
push 9
push offset _Lt_07C6
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0678
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HPUSH
add esp, 4
push offset _Lt_07CD
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
.L_07BC:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOATFUNC:
push ebp
mov ebp, esp
sub esp, 20
.L_07CE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .L_07D1
mov dword ptr [ebp-4], 5
mov dword ptr [ebp-8], 0
jmp .L_07D0
.L_07D1:
mov dword ptr [ebp-8], -1
.L_07D0:
push 0
push 0
push dword ptr [ebp-4]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-8], 0
jne .L_07D3
push dword ptr [ebp-20]
call _HPUSH
add esp, 4
.L_07D3:
.L_07D2:
cmp dword ptr [ebp+8], 1
jne .L_07D5
.L_07D6:
push offset _Lt_07D7
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0699
call _OUTP
add esp, 4
jmp .L_07D4
.L_07D5:
cmp dword ptr [ebp+8], 2
jne .L_07D8
.L_07D9:
push offset _Lt_07BF
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0699
call _OUTP
add esp, 4
jmp .L_07D4
.L_07D8:
cmp dword ptr [ebp+8], 3
jne .L_07DA
.L_07DB:
push offset _Lt_07BF
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0699
call _OUTP
add esp, 4
push offset _Lt_07DC
call _OUTP
add esp, 4
.L_07DA:
.L_07D4:
push offset _Lt_07CD
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
cmp dword ptr [ebp-8], 0
jne .L_07DE
push dword ptr [ebp-20]
call _HPOP
add esp, 4
.L_07DE:
.L_07DD:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_07CF:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOAT_INT_686:
push ebp
mov ebp, esp
.L_07DF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E2
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_07E3
call _OUTP
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
jmp .L_07E1
.L_07E2:
push offset _Lt_0363
call _OUTP
add esp, 4
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0364
call _OUTP
add esp, 4
push offset _Lt_07E4
call _OUTP
add esp, 4
.L_07E1:
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_07E5
call _OUTP
add esp, 4
push offset _Lt_07E6
call _OUTP
add esp, 4
push offset _Lt_03D0
call _OUTP
add esp, 4
push offset _Lt_07E7
call _OUTP
add esp, 4
push offset _Lt_069E
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E9
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_07E8
.L_07E9:
push offset _Lt_0372
call _OUTP
add esp, 4
.L_07E8:
.L_07E0:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOAT_FIX_686:
push ebp
mov ebp, esp
.L_07EA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07ED
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
push offset _Lt_07E3
call _OUTP
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
jmp .L_07EC
.L_07ED:
push offset _Lt_0363
call _OUTP
add esp, 4
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
push offset _Lt_0698
call _OUTP
add esp, 4
push offset _Lt_0364
call _OUTP
add esp, 4
push offset _Lt_07E4
call _OUTP
add esp, 4
.L_07EC:
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_07EE
call _OUTP
add esp, 4
push offset _Lt_07E6
call _OUTP
add esp, 4
push offset _Lt_03D0
call _OUTP
add esp, 4
push offset _Lt_07E7
call _OUTP
add esp, 4
push offset _Lt_069E
call _OUTP
add esp, 4
push offset _Lt_0796
call _OUTP
add esp, 4
push offset _Lt_07EF
call _OUTP
add esp, 4
push offset _Lt_07F0
call _OUTP
add esp, 4
push offset _Lt_0766
call _OUTP
add esp, 4
push offset _Lt_07E7
call _OUTP
add esp, 4
push offset _Lt_069E
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07F2
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_07F1
.L_07F2:
push offset _Lt_0372
call _OUTP
add esp, 4
.L_07F1:
.L_07EB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFLOOR:
push ebp
mov ebp, esp
.L_07F3:
cmp dword ptr [_ENV+112], 3
jl .L_07F6
push dword ptr [ebp+8]
call _HEMITFLOAT_INT_686
add esp, 4
jmp .L_07F5
.L_07F6:
push 1
call _HEMITFLOATFUNC
add esp, 4
.L_07F5:
.L_07F4:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFIX:
push ebp
mov ebp, esp
.L_07F7:
cmp dword ptr [_ENV+112], 3
jl .L_07FA
push dword ptr [ebp+8]
call _HEMITFLOAT_FIX_686
add esp, 4
jmp .L_07F9
.L_07FA:
push 2
call _HEMITFLOATFUNC
add esp, 4
.L_07F9:
.L_07F8:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFRAC:
push ebp
mov ebp, esp
.L_07FB:
push 3
call _HEMITFLOATFUNC
add esp, 4
.L_07FC:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVFD2FS:
push ebp
mov ebp, esp
.L_07FD:
push offset _Lt_0352
call _OUTP
add esp, 4
push offset _Lt_07FF
call _OUTP
add esp, 4
push offset _Lt_03CF
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
.L_07FE:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITXCHGTOS:
push ebp
mov ebp, esp
.L_0800:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D2E
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0802
push -1
push offset _Lt_0D2F
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2E
push -1
push offset _Lt_0D2F
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2F]
call _OUTP
add esp, 4
.L_0801:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D2E,12
.balign 4
	.lcomm	_Lt_0D2F,12

.section .text
.balign 16
__EMITSTACKALIGN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0803:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jl .L_0807
jg .L_0D30
cmp dword ptr [eax+24], 0
jbe .L_0807
.L_0D30:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_027D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0806
.L_0807:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
neg ecx
adc ebx, 0
neg ebx
push ebx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_02D6
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0806:
.L_0804:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHL:
push ebp
mov ebp, esp
.L_080C:
push offset _Lt_0D31
push offset _Lt_0D32
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0D33
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D31
push -1
push offset _Lt_0D33
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D33]
call _OUTP
add esp, 4
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0D33
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D32
push -1
push offset _Lt_0D33
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D33]
call _OUTP
add esp, 4
.L_080D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D32,12
.balign 4
	.lcomm	_Lt_0D31,12
.balign 4
	.lcomm	_Lt_0D33,12

.section .text
.balign 16
__EMITPUSHI:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_080E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0810
mov dword ptr [ebp-40], 24
jmp .L_0D34
.L_0810:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0D34:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 4
jne .L_0814
.L_0815:
cmp dword ptr [ebp-28], 4
jge .L_0817
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0817:
.L_0816:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0812
.L_0814:
cmp dword ptr [ebp-44], 0
jne .L_081A
.L_081B:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0812
.L_081A:
cmp dword ptr [ebp-28], 4
jge .L_0820
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-36], eax
push 0
push 0
push dword ptr [ebp-32]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-36], 0
jne .L_0822
push dword ptr [ebp-24]
call _HPUSH
add esp, 4
.L_0822:
.L_0821:
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call _OUTP
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-116]
call _OUTP
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-36], 0
jne .L_082A
push dword ptr [ebp-24]
call _HPOP
add esp, 4
.L_082A:
.L_0829:
jmp .L_081F
.L_0820:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
.L_081F:
.L_081E:
.L_0812:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_080F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_082D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D36
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_082F
mov dword ptr [ebp-4], 24
jmp .L_0D35
.L_082F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D35:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D37], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0832
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0834
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D36
push -1
push offset _Lt_0D38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D38]
call _OUTP
add esp, 4
jmp .L_0833
.L_0834:
push -1
push 0
push 4
push 8
push offset _Lt_0D36
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D36
push -1
push offset _Lt_0D38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D38]
call _OUTP
add esp, 4
push -1
push 0
push 0
push 8
push offset _Lt_0D36
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0175
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D36
push -1
push offset _Lt_0D38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D38]
call _OUTP
add esp, 4
.L_0833:
jmp .L_0831
.L_0832:
push 0
push 9
push offset _Lt_0835
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D37]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D38
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D38]
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 6
push offset _Lt_0378
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D38]
call _OUTP
add esp, 4
.L_0831:
.L_082E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D36,12
.balign 4
	.lcomm	_Lt_0D37,4
.balign 4
	.lcomm	_Lt_0D38,12

.section .text
.balign 16
__EMITPUSHUDT:
push ebp
mov ebp, esp
sub esp, 208
.L_0838:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
and eax, 3
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_083B
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-48], eax
push 0
push 0
push dword ptr [ebp-44]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-48], 0
jne .L_083D
push dword ptr [ebp-24]
call _HPUSH
add esp, 4
.L_083D:
.L_083C:
cmp dword ptr [ebp-52], 3
jne .L_083F
.L_0840:
push -1
push 0
mov eax, dword ptr [ebp+12]
dec eax
push eax
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 5
push offset _Lt_0845
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0567
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-160]
call _OUTP
add esp, 4
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [ebp-44]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -3
push eax
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset _Lt_017F
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-208]
call _OUTP
add esp, 4
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083E
.L_083F:
cmp dword ptr [ebp-52], 2
jne .L_084D
.L_084E:
mov eax, dword ptr [ebp+12]
add eax, -2
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_083E
.L_084D:
cmp dword ptr [ebp-52], 1
jne .L_0853
.L_0854:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.L_0853:
.L_083E:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-48], 0
jne .L_085C
push dword ptr [ebp-24]
call _HPOP
add esp, 4
.L_085C:
.L_085B:
mov eax, dword ptr [ebp-52]
sub dword ptr [ebp+12], eax
.L_083B:
.L_083A:
mov eax, dword ptr [ebp+12]
add eax, -4
mov dword ptr [ebp-40], eax
.L_085D:
cmp dword ptr [ebp-40], 0
jl .L_085E
push -1
push 0
push dword ptr [ebp-40]
push 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0175
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-40], -4
jmp .L_085D
.L_085E:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0839:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPOPL:
push ebp
mov ebp, esp
.L_0861:
push offset _Lt_0D39
push offset _Lt_0D3A
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D3B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3A
push -1
push offset _Lt_0D3B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D3B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D39
push -1
push offset _Lt_0D3B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3B]
call _OUTP
add esp, 4
.L_0862:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D3A,12
.balign 4
	.lcomm	_Lt_0D39,12
.balign 4
	.lcomm	_Lt_0D3B,12

.section .text
.balign 16
__EMITPOPI:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0863:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D3D
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0865
mov dword ptr [ebp-4], 24
jmp .L_0D3C
.L_0865:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D3C:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D3E], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
jne .L_0868
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+28], 0
jne .L_086A
cmp dword ptr [ebx+24], 4
jne .L_086A
.L_0D3F:
push 5
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_086C
push offset _Lt_0088
call _HPOP
add esp, 4
jmp .L_086B
.L_086C:
push offset _Lt_0357
call _OUTP
add esp, 4
.L_086B:
jmp .L_0869
.L_086A:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_02D6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D40
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D40]
call _OUTP
add esp, 4
.L_0869:
jmp .L_0867
.L_0868:
cmp dword ptr [_Lt_0D3E], 4
jne .L_086E
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D40
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3D
push -1
push offset _Lt_0D40
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D40]
call _OUTP
add esp, 4
jmp .L_0867
.L_086E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0870
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D3D
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D40
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3D
push -1
push offset _Lt_0D40
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D40]
call _OUTP
add esp, 4
jmp .L_086F
.L_0870:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D41], eax
push 0
push 0
push dword ptr [_Lt_0D41]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D42
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0D41]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D43
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0D41]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D44
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D41]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D45], eax
cmp dword ptr [_Lt_0D45], 0
je .L_0872
push offset _Lt_035A
push dword ptr [_Lt_0D44]
call _HMOV
add esp, 8
jmp .L_0871
.L_0872:
push offset _Lt_035A
push dword ptr [_Lt_0D44]
call _HXCHG
add esp, 8
.L_0871:
cmp dword ptr [_Lt_0D3E], 1
jne .L_0874
push dword ptr [_Lt_0D42]
push dword ptr [_Lt_0D3D]
call _HMOV
add esp, 8
jmp .L_0873
.L_0874:
push dword ptr [_Lt_0D43]
push dword ptr [_Lt_0D3D]
call _HMOV
add esp, 8
.L_0873:
cmp dword ptr [_Lt_0D45], 0
je .L_0876
push offset _Lt_0357
call _OUTP
add esp, 4
jmp .L_0875
.L_0876:
push dword ptr [_Lt_0D44]
call _HPOP
add esp, 4
.L_0875:
.L_086F:
.L_0867:
.L_0864:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D3D,12
.balign 4
	.lcomm	_Lt_0D40,12
.balign 4
	.lcomm	_Lt_0D3E,4
.balign 4
	.lcomm	_Lt_0D41,4
.balign 4
	.lcomm	_Lt_0D45,4
.balign 4
	.lcomm	_Lt_0D42,12
.balign 4
	.lcomm	_Lt_0D43,12
.balign 4
	.lcomm	_Lt_0D44,12

.section .text
.balign 16
__EMITPOPF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0877:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D47
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0879
mov dword ptr [ebp-4], 24
jmp .L_0D46
.L_0879:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D46:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D48], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_087C
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_087E
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D49
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D47
push -1
push offset _Lt_0D49
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D49]
call _OUTP
add esp, 4
jmp .L_087D
.L_087E:
push -1
push 0
push 0
push 8
push offset _Lt_0D47
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D49
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D47
push -1
push offset _Lt_0D49
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D49]
call _OUTP
add esp, 4
push -1
push 0
push 4
push 8
push offset _Lt_0D47
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017A
push -1
push offset _Lt_0D49
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D47
push -1
push offset _Lt_0D49
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D49]
call _OUTP
add esp, 4
.L_087D:
jmp .L_087B
.L_087C:
push 0
push -1
push 7
push offset _Lt_036F
push -1
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push 5
push offset _Lt_03AB
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D49
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D49]
call _OUTP
add esp, 4
push 0
push 9
push offset _Lt_0881
push -1
push offset _Lt_0D49
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D48]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D49
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D49]
call _OUTP
add esp, 4
.L_087B:
.L_0878:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D47,12
.balign 4
	.lcomm	_Lt_0D49,12
.balign 4
	.lcomm	_Lt_0D48,4

.section .text
.balign 16
__EMITPOPST0:
push ebp
mov ebp, esp
.L_0882:
push offset _Lt_06DD
call _OUTP
add esp, 4
.L_0883:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDROF:
push ebp
mov ebp, esp
.L_0884:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D4A
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
push 0
push -2147483648
push offset _Lt_0D4B
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0886
push -1
push offset _Lt_0D4C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D4A
push -1
push offset _Lt_0D4C
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D4C
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D4B
push -1
push offset _Lt_0D4C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D4C]
call _OUTP
add esp, 4
.L_0885:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D4A,12
.balign 4
	.lcomm	_Lt_0D4B,12
.balign 4
	.lcomm	_Lt_0D4C,12

.section .text
.balign 16
__EMITDEREF:
push ebp
mov ebp, esp
.L_0887:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D4D
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push 9
push offset _Lt_0D4E
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017F
push -1
push offset _Lt_0D4F
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D4D
push -1
push offset _Lt_0D4F
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D4F
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D4E
push -1
push offset _Lt_0D4F
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D4F]
call _OUTP
add esp, 4
.L_0888:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D4D,12
.balign 4
	.lcomm	_Lt_0D4E,12
.balign 4
	.lcomm	_Lt_0D4F,12

.section .text
.balign 16
_HMEMMOVEREP:
push ebp
mov ebp, esp
.L_0889:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D50
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D51
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D52], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D53], eax
push 2
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D54], eax
push 1
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0D55], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0D56], eax
cmp dword ptr [_Lt_0D52], 0
jne .L_088C
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_088C:
.L_088B:
cmp dword ptr [_Lt_0D53], 0
jne .L_088E
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_088E:
.L_088D:
cmp dword ptr [_Lt_0D54], 0
jne .L_0890
push offset _Lt_0085
call _HPUSH
add esp, 4
.L_0890:
.L_088F:
cmp dword ptr [_Lt_0D55], 0
jne .L_0892
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0894
push dword ptr [_Lt_0D50]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_0893
.L_0894:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_0896
push dword ptr [_Lt_0D50]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_0896:
.L_0895:
.L_0893:
jmp .L_0891
.L_0892:
cmp dword ptr [_Lt_0D56], 0
je .L_0898
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_0898:
.L_0897:
push dword ptr [_Lt_0D50]
push offset _Lt_0086
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0D56], 0
je .L_089A
push offset _Lt_0518
call _OUTP
add esp, 4
.L_089A:
.L_0899:
.L_0891:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_089C
push dword ptr [_Lt_0D51]
push offset _Lt_0085
call _HMOV
add esp, 8
jmp .L_089B
.L_089C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 2
je .L_089E
push dword ptr [_Lt_0D51]
push offset _Lt_0085
call _HMOV
add esp, 8
.L_089E:
.L_089D:
.L_089B:
cmp dword ptr [_Lt_0D55], 0
je .L_08A0
cmp dword ptr [_Lt_0D56], 0
jne .L_08A2
push offset _Lt_0086
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_08A1
.L_08A2:
push offset _Lt_0084
call _HPOP
add esp, 4
.L_08A1:
.L_08A0:
.L_089F:
cmp dword ptr [ebp+16], 4
jle .L_08A4
push 0
push 10
push offset _Lt_08A5
push -1
push offset _Lt_0D57
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+16]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D57
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D57]
call _OUTP
add esp, 4
push offset _Lt_08A6
call _OUTP
add esp, 4
jmp .L_08A3
.L_08A4:
cmp dword ptr [ebp+16], 4
jne .L_08A7
push offset _Lt_08A8
call _OUTP
add esp, 4
push offset _Lt_08A9
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+16]
and eax, 3
test eax, eax
jle .L_08AB
push offset _Lt_08AC
call _OUTP
add esp, 4
push offset _Lt_08AD
call _OUTP
add esp, 4
.L_08AB:
.L_08AA:
.L_08A7:
.L_08A3:
and dword ptr [ebp+16], 3
cmp dword ptr [ebp+16], 0
jle .L_08AF
cmp dword ptr [ebp+16], 2
jl .L_08B1
push offset _Lt_08B2
call _OUTP
add esp, 4
push offset _Lt_08B3
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 3
jne .L_08B5
push offset _Lt_08B6
call _OUTP
add esp, 4
push offset _Lt_08B7
call _OUTP
add esp, 4
.L_08B5:
.L_08B4:
.L_08B1:
.L_08B0:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08B9
push offset _Lt_08BA
call _OUTP
add esp, 4
push offset _Lt_08BB
call _OUTP
add esp, 4
.L_08B9:
.L_08B8:
.L_08AF:
.L_08AE:
cmp dword ptr [_Lt_0D54], 0
jne .L_08BD
push offset _Lt_0085
call _HPOP
add esp, 4
.L_08BD:
.L_08BC:
cmp dword ptr [_Lt_0D53], 0
jne .L_08BF
push offset _Lt_0084
call _HPOP
add esp, 4
.L_08BF:
.L_08BE:
cmp dword ptr [_Lt_0D52], 0
jne .L_08C1
push offset _Lt_0086
call _HPOP
add esp, 4
.L_08C1:
.L_08C0:
.L_088A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D50,12
.balign 4
	.lcomm	_Lt_0D51,12
.balign 4
	.lcomm	_Lt_0D57,12
.balign 4
	.lcomm	_Lt_0D52,4
.balign 4
	.lcomm	_Lt_0D53,4
.balign 4
	.lcomm	_Lt_0D54,4
.balign 4
	.lcomm	_Lt_0D55,4
.balign 4
	.lcomm	_Lt_0D56,4

.section .text
.balign 16
_HMEMMOVEBLK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_08C2:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D58], eax
push dword ptr [_Lt_0D58]
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
test eax, eax
je .L_08C5
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP
add esp, 12
jmp .L_08C3
.L_08C5:
.L_08C4:
push 0
push 0
push dword ptr [_Lt_0D58]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D59
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D58]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D5A], eax
cmp dword ptr [_Lt_0D5A], 0
jne .L_08C7
push dword ptr [_Lt_0D59]
call _HPUSH
add esp, 4
.L_08C7:
.L_08C6:
mov dword ptr [_Lt_0D5B], 0
mov dword ptr [_Lt_0D5C], 1
mov eax, dword ptr [ebp+16]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08C9
.L_08CC:
push -1
push 0
push dword ptr [_Lt_0D5B]
push 8
push offset _Lt_0D5D
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D5D]
push dword ptr [_Lt_0D59]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D5B]
push 8
push offset _Lt_0D5E
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D59]
push dword ptr [_Lt_0D5E]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D5B], 4
.L_08CA:
inc dword ptr [_Lt_0D5C]
.L_08C9:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0D5C], ebx
jle .L_08CC
.L_08CB:
mov ebx, dword ptr [ebp+16]
and ebx, 2
test ebx, ebx
je .L_08CE
push 0
push 0
push dword ptr [_Lt_0D58]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D59
call _fb_StrAssign
add esp, 20
push -1
push 0
push dword ptr [_Lt_0D5B]
push 5
push offset _Lt_0D5D
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D5D]
push dword ptr [_Lt_0D59]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D5B]
push 5
push offset _Lt_0D5E
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D59]
push dword ptr [_Lt_0D5E]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D5B], 2
.L_08CE:
.L_08CD:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08D0
push 0
push 0
push dword ptr [_Lt_0D58]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D59
call _fb_StrAssign
add esp, 20
push -1
push 0
push dword ptr [_Lt_0D5B]
push 2
push offset _Lt_0D5D
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D5D]
push dword ptr [_Lt_0D59]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D5B]
push 2
push offset _Lt_0D5E
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D59]
push dword ptr [_Lt_0D5E]
call _HMOV
add esp, 8
.L_08D0:
.L_08CF:
cmp dword ptr [_Lt_0D5A], 0
jne .L_08D2
push dword ptr [_Lt_0D59]
call _HPOP
add esp, 4
.L_08D2:
.L_08D1:
.L_08C3:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D5E,12
.balign 4
	.lcomm	_Lt_0D5D,12
.balign 4
	.lcomm	_Lt_0D59,12
.balign 4
	.lcomm	_Lt_0D5C,4
.balign 4
	.lcomm	_Lt_0D5B,4
.balign 4
	.lcomm	_Lt_0D58,4
.balign 4
	.lcomm	_Lt_0D5A,4

.section .text
.balign 16
__EMITMEMMOVE:
push ebp
mov ebp, esp
.L_08D3:
cmp dword ptr [ebp+16], 16
jbe .L_08D7
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP
add esp, 12
jmp .L_08D6
.L_08D7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEBLK
add esp, 12
.L_08D6:
.L_08D4:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEMSWAP:
push ebp
mov ebp, esp
.L_08D8:
.L_08D9:
mov esp, ebp
pop ebp
ret
.balign 16
_HMEMCLEARREPIMM:
push ebp
mov ebp, esp
.L_08DA:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D5F
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D60], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D61], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D62], eax
cmp dword ptr [_Lt_0D60], 0
jne .L_08DD
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_08DD:
.L_08DC:
cmp dword ptr [_Lt_0D61], 0
jne .L_08DF
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_08DF:
.L_08DE:
cmp dword ptr [_Lt_0D62], 0
jne .L_08E1
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_08E1:
.L_08E0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_08E3
push dword ptr [_Lt_0D5F]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_08E2
.L_08E3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_08E5
push dword ptr [_Lt_0D5F]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_08E5:
.L_08E4:
.L_08E2:
push offset _Lt_023C
call _OUTP
add esp, 4
cmp dword ptr [ebp+12], 4
jbe .L_08E7
push 0
push 10
push offset _Lt_08A5
push -1
push offset _Lt_0D63
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D63
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D63]
call _OUTP
add esp, 4
push offset _Lt_023D
call _OUTP
add esp, 4
jmp .L_08E6
.L_08E7:
cmp dword ptr [ebp+12], 4
jne .L_08E8
push offset _Lt_08E9
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
and eax, 3
test eax, eax
jbe .L_08EB
push offset _Lt_08AD
call _OUTP
add esp, 4
.L_08EB:
.L_08EA:
.L_08E8:
.L_08E6:
and dword ptr [ebp+12], 3
cmp dword ptr [ebp+12], 0
jbe .L_08ED
cmp dword ptr [ebp+12], 2
jb .L_08EF
push offset _Lt_08F0
call _OUTP
add esp, 4
cmp dword ptr [ebp+12], 3
jne .L_08F2
push offset _Lt_08B7
call _OUTP
add esp, 4
.L_08F2:
.L_08F1:
.L_08EF:
.L_08EE:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
je .L_08F4
push offset _Lt_08F5
call _OUTP
add esp, 4
.L_08F4:
.L_08F3:
.L_08ED:
.L_08EC:
cmp dword ptr [_Lt_0D62], 0
jne .L_08F7
push offset _Lt_0084
call _HPOP
add esp, 4
.L_08F7:
.L_08F6:
cmp dword ptr [_Lt_0D61], 0
jne .L_08F9
push offset _Lt_0086
call _HPOP
add esp, 4
.L_08F9:
.L_08F8:
cmp dword ptr [_Lt_0D60], 0
jne .L_08FB
push offset _Lt_0088
call _HPOP
add esp, 4
.L_08FB:
.L_08FA:
.L_08DB:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D5F,12
.balign 4
	.lcomm	_Lt_0D63,12
.balign 4
	.lcomm	_Lt_0D60,4
.balign 4
	.lcomm	_Lt_0D61,4
.balign 4
	.lcomm	_Lt_0D62,4

.section .text
.balign 16
_HMEMCLEARBLKIMM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_08FC:
mov dword ptr [_Lt_0D64], 0
mov dword ptr [_Lt_0D65], 1
mov eax, dword ptr [ebp+12]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08FF
.L_0902:
push -1
push 0
push dword ptr [_Lt_0D64]
push 8
push offset _Lt_0D66
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0145
push dword ptr [_Lt_0D66]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D64], 4
.L_0900:
inc dword ptr [_Lt_0D65]
.L_08FF:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0D65], ebx
jle .L_0902
.L_0901:
mov ebx, dword ptr [ebp+12]
and ebx, 2
test ebx, ebx
je .L_0904
push -1
push 0
push dword ptr [_Lt_0D64]
push 5
push offset _Lt_0D66
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0145
push dword ptr [_Lt_0D66]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D64], 2
.L_0904:
.L_0903:
mov ebx, dword ptr [ebp+12]
and ebx, 1
test ebx, ebx
je .L_0906
push -1
push 0
push dword ptr [_Lt_0D64]
push 2
push offset _Lt_0D66
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0145
push dword ptr [_Lt_0D66]
call _HMOV
add esp, 8
.L_0906:
.L_0905:
.L_08FD:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D66,12
.balign 4
	.lcomm	_Lt_0D65,4
.balign 4
	.lcomm	_Lt_0D64,4

.section .text
.balign 16
_HMEMCLEAR:
push ebp
mov ebp, esp
.L_0907:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D67
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D68
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D69], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D6A], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D6B], eax
cmp dword ptr [_Lt_0D69], 0
jne .L_090A
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_090A:
.L_0909:
cmp dword ptr [_Lt_0D6A], 0
jne .L_090C
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_090C:
.L_090B:
cmp dword ptr [_Lt_0D6B], 0
jne .L_090E
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_090E:
.L_090D:
push 1
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
test eax, eax
jne .L_0910
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0912
push dword ptr [_Lt_0D67]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_0911
.L_0912:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_0914
push dword ptr [_Lt_0D67]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_0914:
.L_0913:
.L_0911:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0916
push dword ptr [_Lt_0D68]
push offset _Lt_0086
call _HMOV
add esp, 8
jmp .L_0915
.L_0916:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 3
je .L_0918
push dword ptr [_Lt_0D68]
push offset _Lt_0086
call _HMOV
add esp, 8
.L_0918:
.L_0917:
.L_0915:
jmp .L_090F
.L_0910:
push dword ptr [_Lt_0D68]
call _HPUSH
add esp, 4
push 0
push 10
push offset _Lt_0919
push -1
push offset _Lt_0D6C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D67
push -1
push offset _Lt_0D6C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D6C]
call _OUTP
add esp, 4
push offset _Lt_0086
call _HPOP
add esp, 4
.L_090F:
push offset _Lt_023C
call _OUTP
add esp, 4
push offset _Lt_091A
call _OUTP
add esp, 4
push offset _Lt_091B
call _OUTP
add esp, 4
push offset _Lt_023D
call _OUTP
add esp, 4
push offset _Lt_091C
call _OUTP
add esp, 4
push offset _Lt_091D
call _OUTP
add esp, 4
push offset _Lt_091E
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D6B], 0
jne .L_0920
push offset _Lt_0084
call _HPOP
add esp, 4
.L_0920:
.L_091F:
cmp dword ptr [_Lt_0D6A], 0
jne .L_0922
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0922:
.L_0921:
cmp dword ptr [_Lt_0D69], 0
jne .L_0924
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0924:
.L_0923:
.L_0908:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D67,12
.balign 4
	.lcomm	_Lt_0D68,12
.balign 4
	.lcomm	_Lt_0D6C,12
.balign 4
	.lcomm	_Lt_0D69,4
.balign 4
	.lcomm	_Lt_0D6A,4
.balign 4
	.lcomm	_Lt_0D6B,4

.section .text
.balign 16
__EMITMEMCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0925:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0928
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 16
jbe .L_092A
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARREPIMM
add esp, 8
jmp .L_0929
.L_092A:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARBLKIMM
add esp, 8
.L_0929:
jmp .L_0927
.L_0928:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMCLEAR
add esp, 8
.L_0927:
.L_0926:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTKCLEAR:
push ebp
mov ebp, esp
.L_092B:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HCLEARLOCALS
add esp, 8
.L_092C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLINEINI:
push ebp
mov ebp, esp
.L_092D:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEBEGIN
add esp, 16
.L_092E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLINEEND:
push ebp
mov ebp, esp
.L_0931:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEEND
add esp, 12
.L_0932:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEINI:
push ebp
mov ebp, esp
.L_0933:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEINI
add esp, 4
.L_0934:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEEND:
push ebp
mov ebp, esp
.L_0935:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEEND
add esp, 4
.L_0936:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2B:
push ebp
mov ebp, esp
sub esp, 24
.L_0937:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0938:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2B:
push ebp
mov ebp, esp
.L_0939:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2B
add esp, 8
.L_093A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2I:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.L_093B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_093E
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D70
cmp dword ptr [eax+24], 0
je .L_0940
.L_0D70:
push offset _Lt_0318
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_093F
.L_0940:
push offset _Lt_0145
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_093F:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_093C
.L_093E:
.L_093D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0941
mov dword ptr [ebp-28], 24
jmp .L_0D6D
.L_0941:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0D6D:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0943
mov dword ptr [ebp-32], 24
jmp .L_0D6E
.L_0943:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D6E:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jle .L_0946
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea ecx, [ebp-12]
push ecx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ecx, [ebp-24]
push ecx
push 7
push offset _Lt_0320
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ecx, [ebp-72]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0945
.L_0946:
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_0945:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0761
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_093C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2I:
push ebp
mov ebp, esp
.L_094D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2I
add esp, 8
.L_094E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADI2B:
push ebp
mov ebp, esp
sub esp, 240
push ebx
.L_094F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0952
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D71
cmp dword ptr [eax+24], 0
je .L_0954
.L_0D71:
push offset _Lt_0004
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_0953
.L_0954:
push offset _Lt_0145
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_0953:
jmp .L_0951
.L_0952:
cmp dword ptr [ebp-40], 1
jne .L_0955
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0959
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0951
.L_0955:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_095C
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_0959
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call _OUTP
add esp, 4
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0951
.L_095C:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp-68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_0967
push dword ptr [ebp-52]
call _HPUSH
add esp, 4
.L_0967:
.L_0966:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0959
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call _OUTP
add esp, 4
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_096F
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call _OUTP
add esp, 4
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_096E
.L_096F:
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call _OUTP
add esp, 4
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-52]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_017F
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-240]
call _OUTP
add esp, 4
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.L_096E:
cmp dword ptr [ebp-72], 0
jne .L_097D
push dword ptr [ebp-52]
call _HPOP
add esp, 4
.L_097D:
.L_097C:
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_0951:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0950:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORI2B:
push ebp
mov ebp, esp
.L_097E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2B
add esp, 8
.L_097F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADF2B:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.L_0980:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0982
mov dword ptr [ebp-36], 24
jmp .L_0D75
.L_0982:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0D75:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0984
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0D76
.L_0984:
mov dword ptr [ebp-40], -1
.L_0D76:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0987
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_03AB
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call _OUTP
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.L_0987:
.L_0986:
cmp dword ptr [ebp-32], 0
jne .L_098B
push offset _Lt_098C
call _OUTP
add esp, 4
.L_098B:
.L_098A:
cmp dword ptr [_ENV+112], 3
jl .L_098E
push offset _Lt_0796
call _OUTP
add esp, 4
push offset _Lt_03D0
call _OUTP
add esp, 4
push offset _Lt_098F
call _OUTP
add esp, 4
jmp .L_098D
.L_098E:
push offset _Lt_0799
call _OUTP
add esp, 4
push offset _Lt_03D5
call _OUTP
add esp, 4
push offset _Lt_06EA
call _OUTP
add esp, 4
push offset _Lt_098F
call _OUTP
add esp, 4
.L_098D:
push offset _Lt_06DD
call _OUTP
add esp, 4
cmp dword ptr [ebp-28], 1
jne .L_0991
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0992
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017F
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0990
.L_0991:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0992
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.L_0990:
cmp dword ptr [ebp-32], 0
jne .L_099A
push offset _Lt_099B
call _OUTP
add esp, 4
.L_099A:
.L_0999:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0981:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORF2B:
push ebp
mov ebp, esp
.L_099C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADF2B
add esp, 8
.L_099D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2F:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.L_099E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_09A0
mov dword ptr [ebp-32], 24
jmp .L_0D78
.L_09A0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D78:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_09A3
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .L_0D79
cmp dword ptr [ebx+24], 0
je .L_09A5
.L_0D79:
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_0766
call _OUTP
add esp, 4
jmp .L_09A4
.L_09A5:
push offset _Lt_0796
call _OUTP
add esp, 4
.L_09A4:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_099F
.L_09A3:
.L_09A2:
cmp dword ptr [ebp-28], 1
jne .L_09A7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_09A9
push dword ptr [ebp-44]
call _HPUSH
add esp, 4
.L_09A9:
.L_09A8:
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-44]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-44]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
cmp dword ptr [ebp-48], 0
jne .L_09AF
push dword ptr [ebp-44]
call _HPOP
add esp, 4
.L_09AF:
.L_09AE:
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09A6
.L_09A7:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_036E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.L_09A6:
push offset _Lt_0766
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_099F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2F:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_09B2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_09B4
mov dword ptr [ebp-32], 24
jmp .L_0D7A
.L_09B4:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D7A:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_09B7
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .L_0D7B
cmp dword ptr [ebx+24], 0
je .L_09B9
.L_0D7B:
push offset _Lt_069C
call _OUTP
add esp, 4
push offset _Lt_0766
call _OUTP
add esp, 4
jmp .L_09B8
.L_09B9:
push offset _Lt_0796
call _OUTP
add esp, 4
.L_09B8:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea ebx, [ebp-24]
push ebx
push 6
push offset _Lt_0378
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTP
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09B3
.L_09B7:
.L_09B6:
cmp dword ptr [ebp-28], 1
jne .L_09BD
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-76], eax
push 0
push 0
push dword ptr [ebp-76]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09BF
push dword ptr [ebp-68]
call _HPUSH
add esp, 4
.L_09BF:
.L_09BE:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-68]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-68]
call _HPUSH
add esp, 4
push offset _Lt_0385
call _OUTP
add esp, 4
push offset _Lt_0357
call _OUTP
add esp, 4
cmp dword ptr [ebp-72], 0
jne .L_09C5
push dword ptr [ebp-68]
call _HPOP
add esp, 4
.L_09C5:
.L_09C4:
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09BC
.L_09BD:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_036E
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTP
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
.L_09BC:
push offset _Lt_0766
call _OUTP
add esp, 4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0378
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2L:
push ebp
mov ebp, esp
sub esp, 108
.L_09CA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_09CD
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D7C
cmp dword ptr [eax+24], 0
je .L_09CF
.L_0D7C:
push offset _Lt_0318
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0318
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_09CE
.L_09CF:
push offset _Lt_0145
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0145
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_09CE:
jmp .L_09CC
.L_09CD:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-36]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call _OUTP
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0761
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_09CC:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09CB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2L:
push ebp
mov ebp, esp
.L_09D6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2L
add esp, 8
.L_09D7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADL2B:
push ebp
mov ebp, esp
sub esp, 220
push ebx
.L_09D8:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_09DB
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D7D
cmp dword ptr [eax+24], 0
je .L_09DD
.L_0D7D:
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
jmp .L_09DC
.L_09DD:
push offset _Lt_0145
push dword ptr [ebp-12]
call _HMOV
add esp, 8
.L_09DC:
jmp .L_09DA
.L_09DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_09DE
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0678
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-112]
call _OUTP
add esp, 4
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call _OUTP
add esp, 4
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0959
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-172]
call _OUTP
add esp, 4
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-16], 1
je .L_09E9
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call _OUTP
add esp, 4
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
.L_09E9:
.L_09E8:
jmp .L_09DA
.L_09DE:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp-68]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09EF
push dword ptr [ebp-52]
call _HPUSH
add esp, 4
.L_09EF:
.L_09EE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_09F1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebp-68], ebx
jne .L_09F3
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea ebx, [ebp-40]
push ebx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ebx, [ebp-52]
push ebx
push 4
push offset _Lt_0678
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09F2
.L_09F3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ebp-68], eax
jne .L_09F8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0678
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09F2
.L_09F8:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0678
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09F2:
jmp .L_09F0
.L_09F1:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0678
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09F0:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 4
push offset _Lt_0304
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_0303
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0959
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-132]
call _OUTP
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-16], 1
jne .L_0A0B
push dword ptr [ebp-64]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
jmp .L_0A0A
.L_0A0B:
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0320
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
.L_0A0A:
cmp dword ptr [ebp-72], 0
jne .L_0A11
push dword ptr [ebp-52]
call _HPOP
add esp, 4
.L_0A11:
.L_0A10:
.L_09DA:
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORL2B:
push ebp
mov ebp, esp
.L_0A12:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADL2B
add esp, 8
.L_0A13:
mov esp, ebp
pop ebp
ret
.balign 16
__INIT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A56:
call _HINITREGTB
mov eax, dword ptr [_ENV+272]
sal eax, 4
mov ecx, dword ptr [_DTYPETB+eax]
mov dword ptr [_DTYPETB+112], ecx
mov ecx, dword ptr [_DTYPETB+eax+4]
mov dword ptr [_DTYPETB+116], ecx
mov ecx, dword ptr [_DTYPETB+eax+8]
mov dword ptr [_DTYPETB+120], ecx
mov ecx, dword ptr [_DTYPETB+eax+12]
mov dword ptr [_DTYPETB+124], ecx
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
mov dword ptr [ebp-8], 66304
cmp dword ptr [_ENV+116], 1
jne .L_0A59
or dword ptr [ebp-8], 1
.L_0A59:
.L_0A58:
mov eax, dword ptr [ebp-8]
or dword ptr [_IR+272], eax
call _EDBGINIT
mov dword ptr [ebp-4], -1
.L_0A57:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__END:
.L_0A5A:
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
call _HENDREGTB
.L_0A5B:
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A5C:
cmp dword ptr [ebp+8], 1
jne .L_0A5F
.L_0A60:
mov dword ptr [ebp-4], 16
jmp .L_0A5D
jmp .L_0A5E
.L_0A5F:
push 0
push 1
push 0
push offset _Lt_0A62
push 21
call _ERRREPORTEX
add esp, 20
.L_0A61:
.L_0A5E:
.L_0A5D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__OPEN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A63:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS
add esp, 4
test eax, eax
je .L_0A66
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
.L_0A66:
.L_0A65:
call _fb_FileFree
mov dword ptr [_ENV+580], eax
push 0
push dword ptr [_ENV+580]
push 0
push 3
push 0
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_0A68
mov dword ptr [ebp-4], 0
jmp .L_0A64
.L_0A68:
.L_0A67:
call _HWRITEHEADER
mov dword ptr [ebp-4], -1
.L_0A64:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__CLOSE:
.L_0A69:
push 0
call _EDBGINCLUDE
add esp, 4
push offset _HDECLVARIABLE
push 1
call _SYMBFOREACHGLOBAL
add esp, 8
mov eax, dword ptr [_ENV+284]
and eax, 4
and eax, dword ptr [_ENV+224]
je .L_0A6C
push offset _HEMITEXPORT
push 3
call _SYMBFOREACHGLOBAL
add esp, 8
.L_0A6C:
.L_0A6B:
push -1
push dword ptr [_SYMB+99040]
call _HWRITECTOR
add esp, 8
push 0
push dword ptr [_SYMB+99080]
call _HWRITECTOR
add esp, 8
call _EDBGEMITFOOTER
push dword ptr [_ENV+580]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0A6E
.L_0A6E:
.L_0A6D:
mov dword ptr [_ENV+580], 0
.L_0A6A:
ret
.balign 16
__PROCGETFRAMEREGNAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A6F:
mov eax, offset _Lt_0D81
mov dword ptr [ebp-4], eax
.L_0A70:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0D81:
.ascii "ebp\0"

.section .text
.balign 16
__ISREGPRESERVED:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A71:
cmp dword ptr [ebp+8], 1
jne .L_0A74
mov dword ptr [ebp-4], 0
jmp .L_0A72
.L_0A74:
.L_0A73:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .L_0A76
.L_0A78:
mov dword ptr [ebp-4], 0
jmp .L_0A72
jmp .L_0A75
.L_0A79:
mov dword ptr [ebp-4], -1
jmp .L_0A72
jmp .L_0A75
.L_0A76:
cmp dword ptr [ebp-8], 5
ja .L_0A79
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0A7A+eax*4]
_.L_0A7A:
.int .L_0A78
.int .L_0A79
.int .L_0A79
.int .L_0A78
.int .L_0A79
.int .L_0A78
.L_0A75:
.L_0A72:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__GETARGREG:
push ebp
mov ebp, esp
.L_0A7B:
cmp dword ptr [ebp+16], 1
jne .L_0A7E
.L_0A7F:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 3
jmp .L_0A7D
.L_0A7E:
cmp dword ptr [ebp+16], 2
jne .L_0A80
.L_0A81:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
jmp .L_0A7D
.L_0A80:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A82:
.L_0A7D:
.L_0A7C:
mov esp, ebp
pop ebp
ret
.balign 16
__GETRESULTREG:
push ebp
mov ebp, esp
sub esp, 12
.L_0A83:
cmp dword ptr [ebp+12], 0
jne .L_0A86
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 5
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0A87
mov dword ptr [ebp-4], 24
jmp .L_0D82
.L_0A87:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D82:
mov eax, dword ptr [ebp-4]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0A89
mov dword ptr [ebp-8], 24
jmp .L_0D83
.L_0A89:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D83:
mov eax, dword ptr [ebp-8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
je .L_0A8C
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
jmp .L_0A8B
.L_0A8C:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A8B:
jmp .L_0A85
.L_0A86:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A85:
.L_0A84:
mov esp, ebp
pop ebp
ret
.balign 16
__GETFREEPRESERVEDREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0A8D:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], 1
jne .L_0A90
jmp .L_0A8E
.L_0A90:
.L_0A8F:
push 4
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A92
mov dword ptr [ebp-4], 4
jmp .L_0A91
.L_0A92:
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A93
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0A94
mov dword ptr [ebp-8], 24
jmp .L_0D87
.L_0A94:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D87:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .L_0A97
mov dword ptr [ebp-4], 2
.L_0A97:
.L_0A96:
jmp .L_0A91
.L_0A93:
push 1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A98
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0A99
mov dword ptr [ebp-8], 24
jmp .L_0D88
.L_0A99:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D88:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .L_0A9C
mov dword ptr [ebp-4], 1
.L_0A9C:
.L_0A9B:
.L_0A98:
.L_0A91:
.L_0A8E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0A9D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+4], 8
push dword ptr [ebp+8]
call _EDBGPROCBEGIN
add esp, 4
.L_0A9E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
.L_0A9F:
push dword ptr [ebp+8]
call _EDBGPROCEND
add esp, 4
.L_0AA0:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0AA1:
.L_0AA3:
cmp dword ptr [ebp+8], 0
je .L_0AA4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .L_0AA7
.L_0AA8:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS
add esp, 4
jmp .L_0AA5
.L_0AA7:
cmp dword ptr [ebp-4], 1
jne .L_0AA9
.L_0AAA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
je .L_0AAC
push dword ptr [ebp+8]
call _HDECLVARIABLE
add esp, 4
.L_0AAC:
.L_0AAB:
.L_0AA9:
.L_0AA5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .L_0AA3
.L_0AA4:
.L_0AA2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCLOCAL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0AAD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0AB0
jmp .L_0AAE
.L_0AB0:
.L_0AAF:
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
add ebx, 3
and ebx, -4
add dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8]
neg ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
neg ebx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+112]
mov eax, dword ptr [edx+12]
cmp ebx, eax
jle .L_0AB2
mov eax, dword ptr [ebp-4]
neg eax
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+112]
mov dword ptr [edx+12], eax
.L_0AB2:
.L_0AB1:
mov edx, dword ptr [ebp-4]
mov eax, edx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], edx
mov dword ptr [ebx+52], eax
.L_0AAE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCARG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0AB3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_0AB6
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
jmp .L_0AB5
.L_0AB6:
mov eax, dword ptr [_ENV+296]
mov dword ptr [ebp-4], eax
.L_0AB5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
je .L_0ABA
.L_0ABB:
cmp dword ptr [ebp-8], 6
jne .L_0AB9
.L_0ABA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-12], eax
.L_0ABC:
cmp dword ptr [ebp-12], 0
je .L_0ABD
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
je .L_0ABF
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+60], ebx
jne .L_0AC1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __PROCALLOCLOCAL
add esp, 8
jmp .L_0AB4
.L_0AC1:
.L_0AC0:
.L_0ABF:
.L_0ABE:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
jmp .L_0ABC
.L_0ABD:
.L_0AB9:
.L_0AB7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov ecx, dword ptr [ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+112]
mov ecx, dword ptr [ebp-4]
add ecx, 3
and ecx, -4
add dword ptr [eax+4], ecx
.L_0AB4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCHEADER:
push ebp
mov ebp, esp
.L_0AC2:
call _EMITRESET
push dword ptr [ebp+8]
call _EDBGPROCEMITBEGIN
add esp, 4
.L_0AC3:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCFOOTER:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_0AC4:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [_ENV+108]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_0AC6
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0D89
.L_0AC6:
mov dword ptr [ebp-28], 0
.L_0D89:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
push 0
push 3
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _EDBGEMITPROCHEADER
add esp, 4
push 16
call _HALIGN
add esp, 4
cmp dword ptr [ebp-8], 0
je .L_0AC9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
call _HPUBLIC
add esp, 8
.L_0AC9:
.L_0AC8:
push dword ptr [ebp-12]
call _HLABEL
add esp, 4
cmp dword ptr [ebp-20], 0
je .L_0ACB
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 3
push offset _Lt_016C
push -1
push 12
push offset _Lt_0ACD
push -1
push 0
push dword ptr [ebp-12]
push 7
push offset _Lt_0ACC
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTEX
add esp, 8
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-24], 0
je .L_0AD3
push 0
push offset _Lt_0AD5
call _OUTEX
add esp, 8
.L_0AD3:
.L_0AD2:
.L_0ACB:
.L_0ACA:
push dword ptr [ebp+8]
call _HCREATEFRAME
add esp, 4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH
add esp, 12
call _EMITFLUSH
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HDESTROYFRAME
add esp, 8
cmp dword ptr [ebp-20], 0
je .L_0AD6
mov eax, dword ptr [ebp-24]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .L_0D8A
.L_0AD6:
mov dword ptr [ebp-32], 0
.L_0D8A:
cmp dword ptr [ebp-32], 0
je .L_0AD9
push 0
push offset _Lt_0ADB
call _OUTEX
add esp, 8
.L_0AD9:
.L_0AD8:
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+20]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH
add esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _EDBGEMITPROCFOOTER
add esp, 12
.L_0AC5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEBEGIN:
push ebp
mov ebp, esp
.L_0ADC:
push dword ptr [ebp+8]
call _EDBGSCOPEBEGIN
add esp, 4
.L_0ADD:
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEEND:
push ebp
mov ebp, esp
.L_0ADE:
push dword ptr [ebp+8]
call _EDBGSCOPEEND
add esp, 4
.L_0ADF:
mov esp, ebp
pop ebp
ret
.balign 16
__SETSECTION:
push ebp
mov ebp, esp
sub esp, 4
.L_0AE0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __GETSECTIONSTRING
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0AE3
jmp .L_0AE1
.L_0AE3:
.L_0AE2:
push 0
push 0
push dword ptr [ebp-4]
push -1
push offset _Lt_0D90
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0D90
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0D90]
call _OUTEX
add esp, 8
.L_0AE1:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D90,12

.section .text
.balign 16
__GETTYPESTRING:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0AE4:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0AE6
mov dword ptr [ebp-8], 24
jmp .L_0D91
.L_0AE6:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D91:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_0AE9
.L_0AEB:
mov eax, offset _Lt_0AEC
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AED:
mov eax, offset _Lt_0AEE
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AEF:
mov eax, offset _Lt_0AF0
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AF1:
mov eax, offset _Lt_0AF2
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AF3:
mov eax, offset _Lt_0AF4
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AF5:
mov eax, offset _Lt_0AF6
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AF7:
mov eax, offset _Lt_0AF8
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AF9:
mov eax, offset _Lt_0AF2
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AFA:
mov eax, offset _Lt_0AF8
mov dword ptr [ebp-4], eax
jmp .L_0AE8
.L_0AE9:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 23
ja .L_0AFA
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0AFB+eax*4-4]
_.L_0AFB:
.int .L_0AEB
.int .L_0AEB
.int .L_0AEB
.int .L_0AF5
.int .L_0AED
.int .L_0AED
.int .L_0AF5
.int .L_0AEF
.int .L_0AEF
.int .L_0AEF
.int .L_0AF1
.int .L_0AF1
.int .L_0AF3
.int .L_0AF3
.int .L_0AF1
.int .L_0AF3
.int .L_0AF7
.int .L_0AF5
.int .L_0AFA
.int .L_0AF7
.int .L_0AFA
.int .L_0AFA
.int .L_0AFA
.int .L_0AF9
.L_0AE8:
.L_0AE5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__GETSECTIONSTRING:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0AFC:
mov eax, dword ptr [_EMIT+140]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_EMIT+144]
cmp ebx, dword ptr [ebp+12]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0AFF
mov dword ptr [ebp-4], 0
jmp .L_0AFD
.L_0AFF:
.L_0AFE:
push 0
push 3
push offset _Lt_016C
push -1
push offset _Lt_0D94
call _fb_StrAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0B01
push 0
push 10
push offset _Lt_0B02
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B01:
.L_0B00:
push 0
push 2
push offset _Lt_0006
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0B04
.L_0B06:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0B08
.L_0B0A:
push 0
push 6
push offset _Lt_0B0B
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B07
.L_0B0C:
push 0
push 6
push offset _Lt_0B0D
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B07
.L_0B0E:
push 0
push 7
push offset _Lt_0B0F
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B07
.L_0B08:
cmp dword ptr [ebp-12], 9
ja .L_0B0E
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0B10+eax*4]
_.L_0B10:
.int .L_0B0A
.int .L_0B0A
.int .L_0B0E
.int .L_0B0A
.int .L_0B0A
.int .L_0B0E
.int .L_0B0E
.int .L_0B0E
.int .L_0B0E
.int .L_0B0C
.L_0B07:
jmp .L_0B03
.L_0B11:
push 0
push 5
push offset _Lt_0B12
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B03
.L_0B13:
push 0
push 4
push offset _Lt_0B14
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B03
.L_0B15:
push 0
push 5
push offset _Lt_0B16
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B03
.L_0B17:
push 0
push 8
push offset _Lt_0B18
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B03
.L_0B19:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B1B
push 0
push 23
push offset _Lt_0B1D
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B1A
.L_0B1B:
push 0
push 8
push offset _Lt_001A
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B1A:
jmp .L_0B03
.L_0B1E:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B20
push 0
push 12
push offset _Lt_0B21
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B1F
.L_0B20:
push 0
push 6
push offset _Lt_0B22
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jle .L_0B24
push 0
push 2
push offset _Lt_0006
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_0B25
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B24:
.L_0B23:
cmp dword ptr [_ENV+108], 2
jne .L_0B28
push 0
push 18
push offset _Lt_0B2E
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B28:
.L_0B27:
.L_0B1F:
jmp .L_0B03
.L_0B2F:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B31
push 0
push 11
push offset _Lt_0B32
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B30
.L_0B31:
push 0
push 6
push offset _Lt_0B33
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jle .L_0B35
push 0
push 2
push offset _Lt_0006
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_0B25
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B35:
.L_0B34:
cmp dword ptr [_ENV+108], 2
jne .L_0B38
push 0
push 18
push offset _Lt_0B2E
push -1
push offset _Lt_0D94
call _fb_StrConcatAssign
add esp, 20
.L_0B38:
.L_0B37:
.L_0B30:
jmp .L_0B03
.L_0B04:
cmp dword ptr [ebp-8], 7
ja .L_0B03
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0B39+eax*4]
_.L_0B39:
.int .L_0B06
.int .L_0B11
.int .L_0B13
.int .L_0B15
.int .L_0B17
.int .L_0B1E
.int .L_0B2F
.int .L_0B19
.L_0B03:
mov eax, dword ptr [_Lt_0D94]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_EMIT+140], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_EMIT+144], eax
.L_0AFD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D94,12

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0006:	.ascii	".\0"
.balign 4
_Lt_001A:	.ascii	"fbctinf\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_0073,36

.section .data
.balign 4
_Lt_0074:	.ascii	", \0"
.balign 4

.globl _DTYPETB
_DTYPETB:
.int 0
.ascii "void ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 3
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "qword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "xmmword ptr\0"
.balign 4
_RNAMETB:
.ascii "dl\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cl\0"
.skip 5,0
.ascii "bl\0"
.skip 5,0
.ascii "al\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "dx\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cx\0"
.skip 5,0
.ascii "bx\0"
.skip 5,0
.ascii "ax\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "edx\0"
.skip 4,0
.ascii "edi\0"
.skip 4,0
.ascii "esi\0"
.skip 4,0
.ascii "ecx\0"
.skip 4,0
.ascii "ebx\0"
.skip 4,0
.ascii "eax\0"
.skip 4,0
.ascii "ebp\0"
.skip 4,0
.ascii "esp\0"
.skip 4,0
.ascii "st(0)\0"
.skip 2,0
.ascii "st(1)\0"
.skip 2,0
.ascii "st(2)\0"
.skip 2,0
.ascii "st(3)\0"
.skip 2,0
.ascii "st(4)\0"
.skip 2,0
.ascii "st(5)\0"
.skip 2,0
.ascii "st(6)\0"
.skip 2,0
.ascii "st(7)\0"
.skip 2,0
.balign 4
_Lt_007A:	.ascii	"cl\0"
.balign 4
_Lt_007F:	.ascii	"dx\0"
.balign 4
_Lt_0080:	.ascii	"cx\0"
.balign 4
_Lt_0082:	.ascii	"ax\0"
.balign 4
_Lt_0083:	.ascii	"edx\0"
.balign 4
_Lt_0084:	.ascii	"edi\0"
.balign 4
_Lt_0085:	.ascii	"esi\0"
.balign 4
_Lt_0086:	.ascii	"ecx\0"
.balign 4
_Lt_0087:	.ascii	"ebx\0"
.balign 4
_Lt_0088:	.ascii	"eax\0"
.balign 4
_Lt_0089:	.ascii	"ebp\0"
.balign 4
_Lt_0116:	.ascii	"+\0"
.balign 4
_Lt_0122:	.ascii	"*\0"
.balign 4
_Lt_0135:	.ascii	" [\0"
.balign 4
_Lt_0136:	.ascii	"[\0"
.balign 4
_Lt_0145:	.ascii	"0\0"
.balign 4
_Lt_0146:	.ascii	"]\0"
.balign 4
_Lt_0148:	.ascii	"offset \0"
.balign 4
_Lt_014C:	.ascii	" + \0"
.balign 4
_Lt_016A:	.ascii	"\t\0"
.balign 4
_Lt_016C:	.ascii	"\r\n\0"
.balign 4
_Lt_0170:	.ascii	" \0"
.balign 4
_Lt_0175:	.ascii	"push \0"
.balign 4
_Lt_017A:	.ascii	"pop \0"
.balign 4
_Lt_017F:	.ascii	"mov \0"
.balign 4
_Lt_0185:	.ascii	"xchg \0"
.balign 4
_Lt_018B:	.ascii	"\t#\0"
.balign 4
_Lt_0190:	.ascii	"\r\n.globl \0"
.balign 4
_Lt_0194:	.ascii	":\0"
.balign 4
_Lt_0195:	.ascii	":\r\n\0"
.balign 4
_Lt_0199:	.ascii	".balign \0"
.balign 4
_Lt_01A4:	.ascii	"xmm\0"
.balign 4
_Lt_01BA:	.ascii	".lcomm\0"
.balign 4
_Lt_01BB:	.ascii	".comm\0"
.balign 4
_Lt_01BD:	.ascii	",\0"
.balign 4
_Lt_01C0:	.ascii	".intel_syntax noprefix\0"
.balign 4
_Lt_01C7:	.ascii	"\"\0"
.balign 4
_Lt_01C9:	.ascii	"\\0\0"
.balign 4
_Lt_01CA:	.ascii	"\\0\"\0"
.balign 4
_Lt_01D8:	.ascii	":\t\0"
.balign 4
_Lt_01EB:	.ascii	".ascii \"\0"
.balign 4
_Lt_01ED:	.ascii	".ascii \" -export:\0"
.balign 4
_Lt_01EE:	.ascii	"\"\r\n\0"
.balign 4
_Lt_0211:	.ascii	"lea edi, [ebp-\0"
.balign 4
_Lt_0215:	.ascii	"mov ecx,\0"
.balign 4
_Lt_0218:	.ascii	"pxor mm0, mm0\0"
.balign 4
_Lt_0219:	.ascii	"movq [edi], mm0\0"
.balign 4
_Lt_021A:	.ascii	"add edi, 8\0"
.balign 4
_Lt_021B:	.ascii	"dec ecx\0"
.balign 4
_Lt_021C:	.ascii	"jnz \0"
.balign 4
_Lt_021F:	.ascii	"emms\0"
.balign 4
_Lt_0227:	.ascii	"movq [ebp-\0"
.balign 4
_Lt_0228:	.ascii	"], mm0\0"
.balign 4
_Lt_022E:	.ascii	"mov dword ptr [ebp-\0"
.balign 4
_Lt_022F:	.ascii	"], 0\0"
.balign 4
_Lt_023C:	.ascii	"xor eax, eax\0"
.balign 4
_Lt_023D:	.ascii	"rep stosd\0"
.balign 4
_Lt_0253:	.ascii	"dword ptr [ebp\0"
.balign 4
_Lt_0272:	.ascii	".cfi_def_cfa_offset 8\0"
.balign 4
_Lt_0273:	.ascii	".cfi_offset 5, -8\0"
.balign 4
_Lt_0274:	.ascii	"mov ebp, esp\0"
.balign 4
_Lt_0277:	.ascii	".cfi_def_cfa_register 5\0"
.balign 4
_Lt_027A:	.ascii	"and esp, 0xFFFFFFF0\0"
.balign 4
_Lt_027D:	.ascii	"sub esp, \0"
.balign 4
_Lt_0285:	.ascii	".section .data\r\n\0"
.balign 4
_Lt_0287:	.ascii	".balign 4\r\n\0"
.balign 4
_Lt_028C:	.ascii	".long 0\0"
.balign 4
_Lt_028E:	.ascii	".section .text\r\n\0"
.balign 4
_Lt_028F:	.ascii	"mov edx, offset .\0"
.balign 4
_Lt_0292:	.ascii	"call _mcount\0"
.balign 4
_Lt_02A7:	.ascii	"mov esp, ebp\0"
.balign 4
_Lt_02AA:	.ascii	".cfi_restore 5\0"
.balign 4
_Lt_02AB:	.ascii	".cfi_def_cfa 4, 4\0"
.balign 4
_Lt_02AE:	.ascii	"ret \0"
.balign 4
_Lt_02B1:	.ascii	"ret\0"
.balign 4
_Lt_02B4:	.ascii	".size \0"
.balign 4
_Lt_02B5:	.ascii	", .-\0"
.balign 4
_Lt_02D2:	.ascii	"call \0"
.balign 4
_Lt_02D6:	.ascii	"add esp, \0"
.balign 4
_Lt_02E1:	.ascii	"jle \0"
.balign 4
_Lt_02E3:	.ascii	"jge \0"
.balign 4
_Lt_02E5:	.ascii	"jl \0"
.balign 4
_Lt_02E7:	.ascii	"jg \0"
.balign 4
_Lt_02E9:	.ascii	"je \0"
.balign 4
_Lt_02EB:	.ascii	"jne \0"
.balign 4
_Lt_02F0:	.ascii	"jmp \0"
.balign 4
_Lt_0303:	.ascii	"cmp \0"
.balign 4
_Lt_0304:	.ascii	", 0\0"
.balign 4
_Lt_0305:	.ascii	"jns \0"
.balign 4
_Lt_0306:	.ascii	"0x403f\0"
.balign 4
_Lt_0307:	.ascii	"0x80000000\0"
.balign 4
_Lt_0308:	.ascii	"fldt [esp]\0"
.balign 4
_Lt_0309:	.ascii	"add esp, 12\0"
.balign 4
_Lt_030A:	.ascii	"faddp\0"
.balign 4
_Lt_0318:	.ascii	"-1\0"
.balign 4
_Lt_031F:	.ascii	"movsx \0"
.balign 4
_Lt_0320:	.ascii	"movzx \0"
.balign 4
_Lt_0325:	.ascii	"sar \0"
.balign 4
_Lt_0326:	.ascii	", 31\0"
.balign 4
_Lt_032D:	.ascii	"fistp \0"
.balign 4
_Lt_0352:	.ascii	"sub esp, 4\0"
.balign 4
_Lt_0353:	.ascii	"fistp dword ptr [esp]\0"
.balign 4
_Lt_0356:	.ascii	"byte ptr [esp]\0"
.balign 4
_Lt_0357:	.ascii	"add esp, 4\0"
.balign 4
_Lt_035A:	.ascii	"dword ptr [esp]\0"
.balign 4
_Lt_0363:	.ascii	"sub esp, 8\0"
.balign 4
_Lt_0364:	.ascii	"fistp qword ptr [esp]\0"
.balign 4
_Lt_0365:	.ascii	"add esp, 2\0"
.balign 4
_Lt_036E:	.ascii	"fild \0"
.balign 4
_Lt_036F:	.ascii	" [esp]\0"
.balign 4
_Lt_0372:	.ascii	"add esp, 8\0"
.balign 4
_Lt_0373:	.ascii	"fild qword ptr [esp]\0"
.balign 4
_Lt_0378:	.ascii	"fstp \0"
.balign 4
_Lt_0385:	.ascii	"fild dword ptr [esp]\0"
.balign 4
_Lt_0398:	.ascii	"add esp, 6\0"
.balign 4
_Lt_03AB:	.ascii	"fld \0"
.balign 4
_Lt_03CC:	.ascii	"mov dword ptr [esp], 0x5F000000\0"
.balign 4
_Lt_03CF:	.ascii	"fld dword ptr [esp]\0"
.balign 4
_Lt_03D0:	.ascii	"fcomip\0"
.balign 4
_Lt_03D1:	.ascii	"jbe\0"
.balign 4
_Lt_03D2:	.ascii	"fcom dword ptr [esp]\0"
.balign 4
_Lt_03D5:	.ascii	"fnstsw ax\0"
.balign 4
_Lt_03D6:	.ascii	"test ah, 1\0"
.balign 4
_Lt_03D7:	.ascii	"jz\0"
.balign 4
_Lt_03D8:	.ascii	"jmp\0"
.balign 4
_Lt_03D9:	.ascii	"fsub dword ptr [esp]\0"
.balign 4
_Lt_03DA:	.ascii	"xor \0"
.balign 4
_Lt_03DB:	.ascii	", 0x80000000\0"
.balign 4
_Lt_0453:	.ascii	"add \0"
.balign 4
_Lt_0454:	.ascii	"adc \0"
.balign 4
_Lt_0461:	.ascii	"inc \0"
.balign 4
_Lt_0463:	.ascii	"dec \0"
.balign 4
_Lt_046C:	.ascii	"fadd \0"
.balign 4
_Lt_046D:	.ascii	"fiadd \0"
.balign 4
_Lt_0470:	.ascii	"sub \0"
.balign 4
_Lt_0471:	.ascii	"sbb \0"
.balign 4
_Lt_0483:	.ascii	"fsubrp\0"
.balign 4
_Lt_0488:	.ascii	"fsub \0"
.balign 4
_Lt_0489:	.ascii	"fisub \0"
.balign 4
_Lt_0498:	.ascii	"mov eax, [esp+\0"
.balign 4
_Lt_049C:	.ascii	"mul dword ptr [esp+\0"
.balign 4
_Lt_04A0:	.ascii	"xchg eax, [esp+\0"
.balign 4
_Lt_04A4:	.ascii	"imul eax, [esp+\0"
.balign 4
_Lt_04A8:	.ascii	"add eax, edx\0"
.balign 4
_Lt_04A9:	.ascii	"mov edx, [esp+\0"
.balign 4
_Lt_04AD:	.ascii	"imul edx, [esp+\0"
.balign 4
_Lt_04B1:	.ascii	"add edx, eax\0"
.balign 4
_Lt_04B2:	.ascii	"mov [esp+\0"
.balign 4
_Lt_04B3:	.ascii	"], edx\0"
.balign 4
_Lt_04C9:	.ascii	"imul \0"
.balign 4
_Lt_04D0:	.ascii	"fmulp\0"
.balign 4
_Lt_04D5:	.ascii	"fmul \0"
.balign 4
_Lt_04D6:	.ascii	"fimul \0"
.balign 4
_Lt_04DB:	.ascii	"fdivrp\0"
.balign 4
_Lt_04E0:	.ascii	"fdiv \0"
.balign 4
_Lt_04E1:	.ascii	"fidiv \0"
.balign 4
_Lt_04F5:	.ascii	"xchg eax, [esp]\0"
.balign 4
_Lt_0507:	.ascii	"cdq\0"
.balign 4
_Lt_0508:	.ascii	"cwd\0"
.balign 4
_Lt_0509:	.ascii	"idiv \0"
.balign 4
_Lt_050A:	.ascii	"div \0"
.balign 4
_Lt_0518:	.ascii	"xchg ecx, [esp]\0"
.balign 4
_Lt_051F:	.ascii	"xchg ecx, eax\0"
.balign 4
_Lt_0567:	.ascii	"shl \0"
.balign 4
_Lt_0568:	.ascii	"shld \0"
.balign 4
_Lt_056D:	.ascii	"shr \0"
.balign 4
_Lt_056E:	.ascii	"shrd \0"
.balign 4
_Lt_060A:	.ascii	"xchg edx, [esp+\0"
.balign 4
_Lt_061B:	.ascii	"shld edx, eax, cl\0"
.balign 4
_Lt_061C:	.ascii	" eax, cl\0"
.balign 4
_Lt_061F:	.ascii	"shrd eax, edx, cl\0"
.balign 4
_Lt_0620:	.ascii	" edx, cl\0"
.balign 4
_Lt_0623:	.ascii	"test cl, 32\0"
.balign 4
_Lt_0626:	.ascii	"mov edx, eax\0"
.balign 4
_Lt_0627:	.ascii	"mov eax, edx\0"
.balign 4
_Lt_062C:	.ascii	"sar edx, 31\0"
.balign 4
_Lt_062D:	.ascii	"xor edx, edx\0"
.balign 4
_Lt_0634:	.ascii	"xchg edx, [esp+4]\0"
.balign 4
_Lt_0635:	.ascii	"mov [esp+4], edx\0"
.balign 4
_Lt_063C:	.ascii	"xchg eax, [esp+0]\0"
.balign 4
_Lt_063D:	.ascii	"mov [esp+0], eax\0"
.balign 4
_Lt_0648:	.ascii	"sal\0"
.balign 4
_Lt_0649:	.ascii	"sar\0"
.balign 4
_Lt_064C:	.ascii	"shl\0"
.balign 4
_Lt_064D:	.ascii	"shr\0"
.balign 4
_Lt_0673:	.ascii	"and \0"
.balign 4
_Lt_0678:	.ascii	"or \0"
.balign 4
_Lt_0681:	.ascii	"not \0"
.balign 4
_Lt_0690:	.ascii	"fxch\0"
.balign 4
_Lt_0691:	.ascii	"fpatan\0"
.balign 4
_Lt_0696:	.ascii	"fabs\0"
.balign 4
_Lt_0697:	.ascii	"fyl2x\0"
.balign 4
_Lt_0698:	.ascii	"fld st(0)\0"
.balign 4
_Lt_0699:	.ascii	"frndint\0"
.balign 4
_Lt_069A:	.ascii	"fsub st(1), st(0)\0"
.balign 4
_Lt_069B:	.ascii	"f2xm1\0"
.balign 4
_Lt_069C:	.ascii	"fld1\0"
.balign 4
_Lt_069D:	.ascii	"fscale\0"
.balign 4
_Lt_069E:	.ascii	"fstp st(1)\0"
.balign 4
_Lt_06A5:	.ascii	"j\0"
.balign 4
_Lt_06B9:	.ascii	"test \0"
.balign 4
_Lt_06C3:	.ascii	"xchg edx, \0"
.balign 4
_Lt_06C4:	.ascii	"set\0"
.balign 4
_Lt_06C5:	.ascii	" dl\0"
.balign 4
_Lt_06CF:	.ascii	", 1\0"
.balign 4
_Lt_06D2:	.ascii	", -1\0"
.balign 4
_Lt_06DC:	.ascii	"fcomip st, st(1)\0"
.balign 4
_Lt_06DD:	.ascii	"fstp st(0)\0"
.balign 4
_Lt_06E0:	.ascii	"fcompp\0"
.balign 4
_Lt_06E1:	.ascii	"fcomp \0"
.balign 4
_Lt_06E8:	.ascii	"test ah, \0"
.balign 4
_Lt_06EA:	.ascii	"sahf\0"
.balign 4
_Lt_06F6:	.ascii	"\tdl\0"
.balign 4
_Lt_0706:	.ascii	"g\0"
.balign 4
_Lt_0707:	.ascii	"l\0"
.balign 4
_Lt_0708:	.ascii	"a\0"
.balign 4
_Lt_0709:	.ascii	"b\0"
.balign 4
_Lt_0714:	.ascii	"z\0"
.balign 4
_Lt_0715:	.ascii	"0b01000001\0"
.balign 4
_Lt_0726:	.ascii	"nz\0"
.balign 4
_Lt_0727:	.ascii	"0b00000001\0"
.balign 4
_Lt_072A:	.ascii	"ne\0"
.balign 4
_Lt_072B:	.ascii	"e\0"
.balign 4
_Lt_0732:	.ascii	"0b01000000\0"
.balign 4
_Lt_0741:	.ascii	"be\0"
.balign 4
_Lt_0748:	.ascii	"le\0"
.balign 4
_Lt_074D:	.ascii	"ae\0"
.balign 4
_Lt_075A:	.ascii	"ge\0"
.balign 4
_Lt_0761:	.ascii	"neg \0"
.balign 4
_Lt_0766:	.ascii	"fchs\0"
.balign 4
_Lt_0784:	.ascii	"jl\0"
.balign 4
_Lt_0785:	.ascii	"jg\0"
.balign 4
_Lt_0789:	.ascii	"jne\0"
.balign 4
_Lt_0791:	.ascii	"je\0"
.balign 4
_Lt_0796:	.ascii	"fldz\0"
.balign 4
_Lt_0799:	.ascii	"ftst\0"
.balign 4
_Lt_079C:	.ascii	"ja\0"
.balign 4
_Lt_079F:	.ascii	"fsin\0"
.balign 4
_Lt_07A2:	.ascii	"fmul st(0), st(0)\0"
.balign 4
_Lt_07A3:	.ascii	"fsqrt\0"
.balign 4
_Lt_07A6:	.ascii	"fcos\0"
.balign 4
_Lt_07AB:	.ascii	"fptan\0"
.balign 4
_Lt_07B2:	.ascii	"fldln2\0"
.balign 4
_Lt_07B5:	.ascii	"fldl2e\0"
.balign 4
_Lt_07B6:	.ascii	"fmulp st(1), st\0"
.balign 4
_Lt_07B7:	.ascii	"fld st\0"
.balign 4
_Lt_07B8:	.ascii	"fsub st(1), st\0"
.balign 4
_Lt_07B9:	.ascii	"0x3f800000\0"
.balign 4
_Lt_07BA:	.ascii	"fadd dword ptr [esp]\0"
.balign 4
_Lt_07BD:	.ascii	"fnstcw [esp]\0"
.balign 4
_Lt_07BE:	.ascii	"[esp]\0"
.balign 4
_Lt_07BF:	.ascii	"11\0"
.balign 4
_Lt_07C2:	.ascii	", 0b1111001111111111\0"
.balign 4
_Lt_07C6:	.ascii	", 0b0000\0"
.balign 4
_Lt_07C7:	.ascii	"0000000000\0"
.balign 4
_Lt_07CD:	.ascii	"fldcw [esp]\0"
.balign 4
_Lt_07D7:	.ascii	"01\0"
.balign 4
_Lt_07DC:	.ascii	"fsubp\0"
.balign 4
_Lt_07E3:	.ascii	"fist dword ptr [esp]\0"
.balign 4
_Lt_07E4:	.ascii	"fild  qword ptr [esp]\0"
.balign 4
_Lt_07E5:	.ascii	"fsubr st(0), st(1)\0"
.balign 4
_Lt_07E6:	.ascii	"fxch st(2)\0"
.balign 4
_Lt_07E7:	.ascii	"fcmovb st(0), st(1)\0"
.balign 4
_Lt_07EE:	.ascii	"fsubr st(1)\0"
.balign 4
_Lt_07EF:	.ascii	"fcomip st(2)\0"
.balign 4
_Lt_07F0:	.ascii	"fst st(1)\0"
.balign 4
_Lt_07FF:	.ascii	"fstp dword ptr [esp]\0"
.balign 4
_Lt_0802:	.ascii	"fxch \0"
.balign 4
_Lt_0835:	.ascii	"sub esp,\0"
.balign 4
_Lt_0845:	.ascii	", 16\0"
.balign 4
_Lt_0881:	.ascii	"add esp,\0"
.balign 4
_Lt_0886:	.ascii	"lea \0"
.balign 4
_Lt_08A5:	.ascii	"mov ecx, \0"
.balign 4
_Lt_08A6:	.ascii	"rep movsd\0"
.balign 4
_Lt_08A8:	.ascii	"mov ecx, [esi]\0"
.balign 4
_Lt_08A9:	.ascii	"mov [edi], ecx\0"
.balign 4
_Lt_08AC:	.ascii	"add esi, 4\0"
.balign 4
_Lt_08AD:	.ascii	"add edi, 4\0"
.balign 4
_Lt_08B2:	.ascii	"mov cx, [esi]\0"
.balign 4
_Lt_08B3:	.ascii	"mov [edi], cx\0"
.balign 4
_Lt_08B6:	.ascii	"add esi, 2\0"
.balign 4
_Lt_08B7:	.ascii	"add edi, 2\0"
.balign 4
_Lt_08BA:	.ascii	"mov cl, [esi]\0"
.balign 4
_Lt_08BB:	.ascii	"mov [edi], cl\0"
.balign 4
_Lt_08E9:	.ascii	"mov dword ptr [edi], eax\0"
.balign 4
_Lt_08F0:	.ascii	"mov word ptr [edi], ax\0"
.balign 4
_Lt_08F5:	.ascii	"mov byte ptr [edi], al\0"
.balign 4
_Lt_0919:	.ascii	"lea edi, \0"
.balign 4
_Lt_091A:	.ascii	"push ecx\0"
.balign 4
_Lt_091B:	.ascii	"shr ecx, 2\0"
.balign 4
_Lt_091C:	.ascii	"pop ecx\0"
.balign 4
_Lt_091D:	.ascii	"and ecx, 3\0"
.balign 4
_Lt_091E:	.ascii	"rep stosb\0"
.balign 4
_Lt_0959:	.ascii	"setne \0"
.balign 4
_Lt_098C:	.ascii	"push eax\0"
.balign 4
_Lt_098F:	.ascii	"setnz al\0"
.balign 4
_Lt_0992:	.ascii	", al\0"
.balign 4
_Lt_099B:	.ascii	"pop eax\0"
.balign 4
_Lt_0A20:	.ascii	"0x\0"
.balign 4
_Lt_0A2E:	.ascii	".int \0"
.balign 4
_Lt_0A36:	.ascii	"\\0\"\r\n\0"
.balign 4
_Lt_0A43:	.ascii	".skip \0"
.balign 4
_Lt_0A44:	.ascii	",0\0"
.balign 4
_Lt_0A4D:	.ascii	" \"\0"
.balign 4
_Lt_0A4E:	.ascii	"\\0\"\0"
.balign 4
__OPFNTB:
.int __EMITNOP
.int __EMITLOADI2I
.int __EMITLOADF2I
.int __EMITLOADL2I
.int __EMITLOADB2I
.int __EMITLOADI2F
.int __EMITLOADF2F
.int __EMITLOADL2F
.int __EMITLOADB2F
.int __EMITLOADI2L
.int __EMITLOADF2L
.int __EMITLOADL2L
.int __EMITLOADB2L
.int __EMITLOADI2B
.int __EMITLOADF2B
.int __EMITLOADL2B
.int __EMITLOADB2B
.int __EMITSTORI2I
.int __EMITSTORF2I
.int __EMITSTORL2I
.int __EMITSTORB2I
.int __EMITSTORI2F
.int __EMITSTORF2F
.int __EMITSTORL2F
.int __EMITSTORB2F
.int __EMITSTORI2L
.int __EMITSTORF2L
.int __EMITSTORL2L
.int __EMITSTORB2L
.int __EMITSTORI2B
.int __EMITSTORF2B
.int __EMITSTORL2B
.int __EMITSTORB2B
.int __EMITMOVI
.int __EMITMOVF
.int __EMITMOVL
.int __EMITADDI
.int __EMITADDF
.int __EMITADDL
.int __EMITSUBI
.int __EMITSUBF
.int __EMITSUBL
.int __EMITMULI
.int __EMITMULF
.int __EMITMULL
.int __EMITDIVI
.int __EMITDIVF
.long 0
.int __EMITMODI
.long 0
.long 0
.int __EMITSHLI
.int __EMITSHLL
.int __EMITSHRI
.int __EMITSHRL
.int __EMITANDI
.int __EMITANDL
.int __EMITORI
.int __EMITORL
.int __EMITXORI
.int __EMITXORL
.int __EMITEQVI
.int __EMITEQVL
.int __EMITIMPI
.int __EMITIMPL
.int __EMITATN2
.int __EMITPOW
.int __EMITADDROF
.int __EMITDEREF
.int __EMITCGTI
.int __EMITCGTF
.int __EMITCGTL
.int __EMITCLTI
.int __EMITCLTF
.int __EMITCLTL
.int __EMITCEQI
.int __EMITCEQF
.int __EMITCEQL
.int __EMITCNEI
.int __EMITCNEF
.int __EMITCNEL
.int __EMITCGEI
.int __EMITCGEF
.int __EMITCGEL
.int __EMITCLEI
.int __EMITCLEF
.int __EMITCLEL
.int __EMITNEGI
.int __EMITNEGF
.int __EMITNEGL
.int __EMITNOTI
.int __EMITNOTL
.long 0
.int __EMITABSI
.int __EMITABSF
.int __EMITABSL
.int __EMITSGNI
.int __EMITSGNF
.int __EMITSGNL
.int __EMITFIX
.int __EMITFRAC
.int __EMITCONVFD2FS
.long 0
.int __EMITSIN
.int __EMITASIN
.int __EMITCOS
.int __EMITACOS
.int __EMITTAN
.int __EMITATAN
.int __EMITSQRT
.long 0
.long 0
.int __EMITLOG
.int __EMITEXP
.int __EMITFLOOR
.int __EMITXCHGTOS
.int __EMITSTACKALIGN
.int __EMITPUSHI
.int __EMITPUSHF
.int __EMITPUSHL
.int __EMITPOPI
.int __EMITPOPF
.int __EMITPOPL
.int __EMITPUSHUDT
.int __EMITPOPST0
.int __EMITCALL
.int __EMITCALLPTR
.int __EMITBRANCH
.int __EMITJUMP
.int __EMITJUMPPTR
.int __EMITRET
.int __EMITLABEL
.int __EMITPUBLIC
.int __EMITLIT
.int __EMITJMPTB
.int __EMITMEMMOVE
.int __EMITMEMSWAP
.int __EMITMEMCLEAR
.int __EMITSTKCLEAR
.int __EMITLINEINI
.int __EMITLINEEND
.int __EMITSCOPEINI
.int __EMITSCOPEEND
.balign 4
_Lt_0A62:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0ACC:	.ascii	".type \0"
.balign 4
_Lt_0ACD:	.ascii	", @function\0"
.balign 4
_Lt_0AD5:	.ascii	".cfi_startproc\r\n\0"
.balign 4
_Lt_0ADB:	.ascii	".cfi_endproc\r\n\0"
.balign 4
_Lt_0AEC:	.ascii	".byte\0"
.balign 4
_Lt_0AEE:	.ascii	".short\0"
.balign 4
_Lt_0AF0:	.ascii	".int\0"
.balign 4
_Lt_0AF2:	.ascii	".long\0"
.balign 4
_Lt_0AF4:	.ascii	".quad\0"
.balign 4
_Lt_0AF6:	.ascii	".ascii\0"
.balign 4
_Lt_0AF8:	.ascii	".INVALID\0"
.balign 4
_Lt_0B02:	.ascii	".section \0"
.balign 4
_Lt_0B0B:	.ascii	"rdata\0"
.balign 4
_Lt_0B0D:	.ascii	"const\0"
.balign 4
_Lt_0B0F:	.ascii	"rodata\0"
.balign 4
_Lt_0B12:	.ascii	"data\0"
.balign 4
_Lt_0B14:	.ascii	"bss\0"
.balign 4
_Lt_0B16:	.ascii	"text\0"
.balign 4
_Lt_0B18:	.ascii	"drectve\0"
.balign 4
_Lt_0B1D:	.ascii	"section __DATA,fbctinf\0"
.balign 4
_Lt_0B21:	.ascii	"constructor\0"
.balign 4
_Lt_0B22:	.ascii	"ctors\0"
.balign 4
_Lt_0B25:	.ascii	"00000\0"
.balign 4
_Lt_0B2E:	.ascii	", \"aw\", @progbits\0"
.balign 4
_Lt_0B32:	.ascii	"destructor\0"
.balign 4
_Lt_0B33:	.ascii	"dtors\0"

.section .ctors
.int _fb_ctor__emit_x86
