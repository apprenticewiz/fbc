	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPDEFINEINIT
_PPDEFINEINIT:
.L_0067:
push 6
push 388
push 8
lea eax, [_PP+176]
push eax
call _LISTINIT
add esp, 16
.L_0068:
ret
.balign 16

.globl _PPDEFINEEND
_PPDEFINEEND:
.L_0069:
lea eax, [_PP+176]
push eax
call _LISTEND
add esp, 4
.L_006A:
ret
.balign 16

.globl _PPDEFINELOAD
_PPDEFINELOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0202:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_0205
push 0
push 0
push 89
call _ERRREPORT
add esp, 12
push 0
push 62
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0203
.L_0205:
.L_0204:
cmp dword ptr [_ENV+576], 0
jne .L_0207
push dword ptr [ebp+8]
call _HLOADDEFINE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0206
.L_0207:
push dword ptr [ebp+8]
call _HLOADDEFINEW
add esp, 4
mov dword ptr [ebp-4], eax
.L_0206:
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4304], 0
jle .L_0209
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4292], 0
jne .L_020B
mov eax, dword ptr [_LEX+213452]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4292], ebx
.L_020B:
.L_020A:
.L_0209:
.L_0208:
mov ebx, dword ptr [_LEX+213452]
mov dword ptr [ebx+4268], 4294967295
.L_0203:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPDEFINE
_PPDEFINE:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_027A:
push 38
lea eax, [ebp-32]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .L_027D
and dword ptr [ebp-12], -5
.L_027D:
.L_027C:
push dword ptr [ebp-12]
push offset _Lt_02AD
call _LEXEATTOKEN
add esp, 8
push offset _Lt_02AD
call _HISVALIDSYMBOLNAME
add esp, 4
test eax, eax
jne .L_027F
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_027B
.L_027F:
.L_027E:
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0281
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.L_0281:
.L_0280:
cmp dword ptr [ebp-28], 0
je .L_0283
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .L_0285
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .L_0287
push 0
push 1
push 0
push 39
call _ERRREPORTWARN
add esp, 16
push dword ptr [ebp-24]
call _SYMBDELFROMHASH
add esp, 4
mov dword ptr [ebp-24], 0
jmp .L_0286
.L_0287:
push 0
push 1
push 0
push offset _Lt_02AD
push 4
call _ERRREPORTEX
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_02AD
call _fb_StrAssign
add esp, 20
.L_0286:
.L_0285:
.L_0284:
jmp .L_0282
.L_0283:
mov dword ptr [ebp-24], 0
.L_0282:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .L_0289
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 63
jne .L_028B
push 2
call _LEXSKIPTOKEN
add esp, 4
and dword ptr [ebp-40], -9
.L_028B:
.L_028A:
.L_0289:
.L_0288:
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_028D
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_028F
mov dword ptr [ebp-20], 0
.L_0290:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-44], eax
jmp .L_0294
.L_0296:
call _LEXGETTEXT
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0293
.L_0297:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0293
.L_0294:
cmp dword ptr [ebp-44], 2
ja .L_0297
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_0298+eax*4]
_.L_0298:
.int .L_0296
.int .L_0296
.int .L_0296
.L_0293:
cmp dword ptr [ebp-20], 0
jne .L_029A
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
.L_029A:
.L_0299:
push 34
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .L_029C
push 0
push 0
push 79
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_027B
.L_029C:
.L_029B:
cmp dword ptr [ebp-16], 0
jne .L_029E
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_029E:
.L_029D:
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_02A0
jmp .L_0291
.L_02A0:
.L_029F:
push 34
call _LEXSKIPTOKEN
add esp, 4
.L_0292:
jmp .L_0290
.L_0291:
call _HMATCHPARAMELLIPSIS
test eax, eax
je .L_02A2
or dword ptr [ebp-40], 4
.L_02A2:
.L_02A1:
jmp .L_028E
.L_028F:
mov dword ptr [ebp-8], -1
.L_028E:
push 62
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_02A4
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_02A3
.L_02A4:
push 58
call _LEXSKIPTOKEN
add esp, 4
.L_02A3:
jmp .L_028C
.L_028D:
cmp dword ptr [ebp+8], 0
jne .L_02A6
push 62
call _LEXGETTOKEN
add esp, 4
cmp eax, 32
jne .L_02A8
push 58
call _LEXSKIPTOKEN
add esp, 4
.L_02A8:
.L_02A7:
.L_02A6:
.L_02A5:
.L_028C:
cmp dword ptr [ebp-4], 0
jne .L_02AA
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset _Lt_02AD
push dword ptr [ebp-24]
call _HREADDEFINETEXT
add esp, 20
jmp .L_027B
.L_02AA:
.L_02A9:
cmp dword ptr [ebp-24], 0
je .L_02AC
push 0
push 1
push 0
push offset _Lt_02AD
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_02AB
.L_02AC:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HREADMACROTEXT
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset _Lt_02AD
call _SYMBADDDEFINEMACRO
add esp, 20
.L_02AB:
.L_027B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02AD,129

.section .text
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
_HREPORTMACROERROR:
push ebp
mov ebp, esp
sub esp, 24
.L_006B:
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 12
push offset _Lt_006D
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
push dword ptr [ebp+12]
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_006C:
mov esp, ebp
pop ebp
ret
.balign 16
_ISMACROALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0070:
cmp dword ptr [_PP+212], 0
jne .L_0073
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .L_0075
cmp dword ptr [_ENV+104], 1
jne .L_0077
push 0
push 0
push 286
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0071
.L_0077:
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
mov dword ptr [ebp-4], -1
.L_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADMACRO:
push ebp
mov ebp, esp
sub esp, 1140
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0078:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-1108], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-1112], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_007B
mov dword ptr [ebp-1108], -1
.L_007B:
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_007D
cmp dword ptr [ebp-1108], 0
jne .L_007F
jmp .L_0079
.L_007F:
.L_007E:
jmp .L_007C
.L_007D:
mov ebx, dword ptr [ebp-1112]
not ebx
and dword ptr [ebp-1108], ebx
.L_007C:
push dword ptr [ebp+8]
call _ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_0081
jmp .L_0079
.L_0081:
.L_0080:
inc dword ptr [_PP+216]
cmp dword ptr [ebp-1108], 0
je .L_0083
call _LEXEATCHAR
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0085
lea ebx, [_PP+176]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-1084], eax
jmp .L_0084
.L_0085:
mov dword ptr [ebp-1084], 0
.L_0084:
mov dword ptr [ebp-1088], 1
mov dword ptr [ebp-1096], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-1100], ebx
mov dword ptr [ebp-1116], -1
mov dword ptr [ebp-1092], 0
cmp dword ptr [ebp-1084], 0
je .L_0087
mov ebx, dword ptr [ebp-1084]
mov dword ptr [ebx+384], 0
.L_0087:
.L_0086:
.L_0088:
cmp dword ptr [ebp-1084], 0
je .L_008C
mov ebx, dword ptr [ebp-1092]
imul ebx, 12
mov eax, dword ptr [ebp-1084]
add eax, ebx
lea ebx, [eax]
push ebx
call _DZSTRZERO
add esp, 4
.L_008C:
.L_008B:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008E
mov eax, dword ptr [ebp-1100]
mov dword ptr [ebp-1096], eax
.L_008E:
.L_008D:
.L_008F:
push 92
lea eax, [ebp-1080]
push eax
call _LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-1080]
mov dword ptr [ebp-1120], eax
jmp .L_0093
.L_0095:
inc dword ptr [ebp-1088]
jmp .L_0092
.L_0096:
cmp dword ptr [ebp-1088], 0
jle .L_0098
dec dword ptr [ebp-1088]
cmp dword ptr [ebp-1088], 0
jne .L_009A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_009C
cmp dword ptr [ebp-1108], 0
jne .L_009E
mov ebx, dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_00A0
cmp dword ptr [_PP+216], 1
jle .L_00A2
mov dword ptr [ebp-1116], 41
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
jmp .L_0090
.L_009A:
.L_0099:
.L_0098:
.L_0097:
jmp .L_0092
.L_00A3:
cmp dword ptr [ebp-1088], 1
jne .L_00A5
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_00A7
cmp dword ptr [ebp-1100], 0
jne .L_00A9
cmp dword ptr [ebp-1108], 0
jne .L_00AB
mov ebx, dword ptr [ebp-1084]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_00AD
cmp dword ptr [_PP+216], 1
jle .L_00AF
mov dword ptr [ebp-1116], 44
.L_00AF:
.L_00AE:
mov dword ptr [ebp-1088], 0
jmp .L_0090
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
cmp dword ptr [ebp-1084], 0
je .L_00B1
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_00B3
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp-1084]
inc dword ptr [eax+384]
.L_00B1:
.L_00B0:
cmp dword ptr [ebp-1096], 0
jne .L_00B5
jmp .L_0090
.L_00B5:
.L_00B4:
.L_00A5:
.L_00A4:
jmp .L_0092
.L_00B6:
mov eax, dword ptr [ebp-1108]
not eax
test eax, eax
je .L_00B8
mov dword ptr [ebp-1116], 58
cmp dword ptr [ebp-1088], 0
jle .L_00BA
dec dword ptr [ebp-1088]
.L_00BA:
.L_00B9:
jmp .L_0090
.L_00B8:
.L_00B7:
jmp .L_0092
.L_00BB:
cmp dword ptr [ebp-1108], 0
je .L_00BD
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
mov dword ptr [ebp-1088], 0
jmp .L_00BC
.L_00BD:
cmp dword ptr [ebp-1088], 0
jle .L_00BF
dec dword ptr [ebp-1088]
.L_00BF:
.L_00BE:
cmp dword ptr [ebp-1080], 256
jne .L_00C0
mov dword ptr [ebp-1124], 0
jmp .L_02AE
.L_00C0:
mov dword ptr [ebp-1124], 10
.L_02AE:
mov eax, dword ptr [ebp-1124]
mov dword ptr [ebp-1116], eax
.L_00BC:
jmp .L_0090
jmp .L_0092
.L_00C2:
cmp dword ptr [ebp-1108], 0
je .L_00C4
cmp dword ptr [ebp-1084], 0
je .L_00C6
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_00C8
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
jmp .L_00C3
.L_00C4:
.L_00C9:
push 574
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-1128], eax
cmp dword ptr [ebp-1128], 257
je .L_00CF
.L_00D0:
cmp dword ptr [ebp-1128], 256
jne .L_00CE
.L_00CF:
jmp .L_00CA
.L_00CE:
.L_00CC:
.L_00CB:
jmp .L_00C9
.L_00CA:
push 574
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-1080], 256
jne .L_00D1
mov dword ptr [ebp-1124], 0
jmp .L_02AF
.L_00D1:
mov dword ptr [ebp-1124], 10
.L_02AF:
mov eax, dword ptr [ebp-1124]
mov dword ptr [ebp-1116], eax
cmp dword ptr [ebp-1088], 0
jle .L_00D4
dec dword ptr [ebp-1088]
.L_00D4:
.L_00D3:
jmp .L_0090
.L_00C3:
jmp .L_0092
.L_00D5:
jmp .L_0092
.L_00D6:
cmp dword ptr [ebp-1084], 0
je .L_00D8
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_00DA
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_00DA:
.L_00D9:
.L_00D8:
.L_00D7:
jmp .L_0092
.L_0093:
mov eax, dword ptr [ebp-1120]
add eax, 4294967287
cmp eax, 250
ja .L_00D6
mov eax, dword ptr [ebp-1120]
jmp dword ptr [_.L_00DB+eax*4-36]
_.L_00DB:
.int .L_00D5
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D5
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_0095
.int .L_0096
.int .L_00D6
.int .L_00D6
.int .L_00A3
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00BB
.int .L_00BB
.int .L_00B6
.int .L_00C2
.L_0092:
cmp dword ptr [ebp-1084], 0
je .L_00DD
cmp dword ptr [ebp-1072], 7
je .L_00DF
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DZSTRCONCATASSIGN
add esp, 8
jmp .L_00DE
.L_00DF:
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DZSTRCONCATASSIGNW
add esp, 8
.L_00DE:
.L_00DD:
.L_00DC:
.L_0091:
jmp .L_008F
.L_0090:
cmp dword ptr [ebp-1084], 0
je .L_00E1
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-1120], eax
mov eax, dword ptr [ebp-1120]
cmp dword ptr [eax], 0
je .L_00E4
mov eax, dword ptr [ebp-1120]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-1120]
push 0
mov ecx, dword ptr [ebp-1120]
push dword ptr [ecx]
mov esi, eax
call _fb_StrLen
add esp, 8
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_00E6
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push -1
mov eax, dword ptr [ebp-1120]
push dword ptr [eax]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1132]
mov eax, dword ptr [ebp-1120]
lea esi, [eax]
push esi
call _DZSTRASSIGN
add esp, 8
lea esi, [ebp-1132]
push esi
call _fb_StrDelete
add esp, 4
.L_00E6:
.L_00E5:
.L_00E4:
.L_00E3:
.L_00E1:
.L_00E0:
cmp dword ptr [ebp-1088], 0
jne .L_00E9
cmp dword ptr [ebp-12], 0
je .L_00EB
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-1100]
not esi
or eax, esi
je .L_00ED
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_00ED:
.L_00EC:
.L_00EE:
inc dword ptr [ebp-1092]
mov esi, dword ptr [ebp-1092]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRZERO
add esp, 4
.L_00F0:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-1092], eax
jl .L_00EE
.L_00EF:
.L_00EB:
.L_00EA:
jmp .L_0089
.L_00E9:
.L_00E8:
cmp dword ptr [ebp-12], 0
jne .L_00F2
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0089
.L_00F2:
.L_00F1:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-1092]
.L_008A:
jmp .L_0088
.L_0089:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02B4
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_00F4
mov dword ptr [ebp-1120], 0
push 0
push -1
lea eax, [ebp-1120]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-1120], 0
jne .L_00F6
push 0
push -1
lea eax, [ebp-1132]
push eax
push -1
push offset _Lt_02B4
call _fb_StrAssign
add esp, 20
jmp .L_00F5
.L_00F6:
push dword ptr [ebp-1120]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_00F5:
lea eax, [ebp-1132]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00F3
.L_00F4:
cmp dword ptr [ebp-1084], 0
je .L_00F8
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_00F9:
cmp dword ptr [ebp-16], 0
je .L_00FA
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-1120], eax
jmp .L_00FC
.L_00FE:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1104], esi
cmp dword ptr [ebp-1104], 0
je .L_0100
push 0
push -1
push 0
push dword ptr [ebp-1104]
push -1
push offset _Lt_02B4
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea esi, [ebp-1132]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02B4
call _fb_StrAssign
add esp, 20
.L_0100:
.L_00FF:
jmp .L_00FB
.L_0102:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1104], esi
cmp dword ptr [ebp-1104], 0
je .L_0104
push 0
push 3
push offset _Lt_0107
push -1
push offset _Lt_02B4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0108
push offset _Lt_0106
push dword ptr [ebp-1104]
call _HREPLACE
add esp, 12
push eax
push -1
push offset _Lt_02B4
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0106
push -1
push offset _Lt_02B4
call _fb_StrConcatAssign
add esp, 20
jmp .L_0103
.L_0104:
push 0
push 3
push offset _Lt_0108
push -1
push offset _Lt_02B4
call _fb_StrConcatAssign
add esp, 20
.L_0103:
jmp .L_00FB
.L_0109:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset _Lt_02B4
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea eax, [ebp-1132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02B4
call _fb_StrAssign
add esp, 20
jmp .L_00FB
.L_010B:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _fb_WstrToStr
add esp, 4
push eax
push -1
push offset _Lt_02B4
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea eax, [ebp-1132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02B4
call _fb_StrAssign
add esp, 20
jmp .L_00FB
.L_00FC:
cmp dword ptr [ebp-1120], 3
ja .L_00FB
mov eax, dword ptr [ebp-1120]
jmp dword ptr [_.L_010D+eax*4]
_.L_010D:
.int .L_00FE
.int .L_0102
.int .L_0109
.int .L_010B
.L_00FB:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_00F9
.L_00FA:
.L_010E:
cmp dword ptr [ebp-1092], 0
jle .L_010F
dec dword ptr [ebp-1092]
push 0
mov esi, dword ptr [ebp-1092]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRASSIGN
add esp, 8
jmp .L_010E
.L_010F:
push dword ptr [ebp-1084]
lea esi, [_PP+176]
push esi
call _LISTDELNODE
add esp, 8
.L_00F8:
.L_00F7:
cmp dword ptr [ebp-1116], -1
je .L_0111
push 0
push -1
push dword ptr [ebp-1116]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _Lt_02B4
call _fb_StrConcatAssign
add esp, 20
.L_0111:
.L_0110:
.L_00F3:
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4304], 0
jne .L_0113
push dword ptr [_Lt_02B4]
mov eax, dword ptr [_LEX+213452]
lea esi, [eax+4312]
push esi
call _DZSTRASSIGN
add esp, 8
jmp .L_0112
.L_0113:
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
push 0
push -1
push 0
mov esi, dword ptr [_LEX+213452]
push dword ptr [esi+4308]
push -1
push offset _Lt_02B4
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea esi, [ebp-1128]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1140]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1140]
mov eax, dword ptr [_LEX+213452]
lea esi, [eax+4312]
push esi
call _DZSTRASSIGN
add esp, 8
lea esi, [ebp-1140]
push esi
call _fb_StrDelete
add esp, 4
.L_0112:
dec dword ptr [_PP+216]
push -1
push offset _Lt_02B4
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_0079:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02B4,12

.section .text
.balign 16
_HLOADDEFINE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0116:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_0119
push dword ptr [ebp+8]
call _HLOADMACRO
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_011B
jmp .L_0117
.L_011B:
.L_011A:
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_011D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_011F
push 0
push -1
push 2
push offset _Lt_0106
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_0107
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
push offset _Lt_02B5
call _fb_StrAssign
add esp, 20
jmp .L_011E
.L_011F:
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
push offset _Lt_02B5
call _fb_StrAssign
add esp, 20
.L_011E:
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4304], 0
jne .L_0123
push dword ptr [_Lt_02B5]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
jmp .L_0122
.L_0123:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov ebx, dword ptr [_LEX+213452]
push dword ptr [ebx+4308]
push -1
push offset _Lt_02B5
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_0122:
push -1
push offset _Lt_02B5
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_011C
.L_011D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0127
mov dword ptr [ebp-12], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_0129
mov dword ptr [ebp-12], -1
.L_0129:
.L_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_012B
cmp dword ptr [ebp-12], 0
jne .L_012D
jmp .L_0117
.L_012D:
.L_012C:
jmp .L_012A
.L_012B:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_012A:
cmp dword ptr [ebp-12], 0
je .L_012F
call _LEXEATCHAR
call _LEXEATWHITESPACE
call _LEXCURRENTCHAR
cmp eax, 41
je .L_0131
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .L_0130
.L_0131:
call _LEXEATCHAR
.L_0130:
.L_012F:
.L_012E:
.L_0127:
.L_0126:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0133
mov ebx, dword ptr [_LEX+213452]
cmp dword ptr [ebx+4304], 0
jne .L_0135
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213452]
lea eax, [ebx+4312]
push eax
call _DZSTRASSIGN
add esp, 8
jmp .L_0134
.L_0135:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+213452]
push dword ptr [eax+4308]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_0134:
jmp .L_0132
.L_0133:
mov ebx, dword ptr [_LEX+213452]
cmp dword ptr [ebx+4304], 0
jne .L_0139
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213452]
lea eax, [ebx+4312]
push eax
call _DZSTRASSIGNW
add esp, 8
jmp .L_0138
.L_0139:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+213452]
push dword ptr [eax+4308]
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrToStr
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_0138:
.L_0132:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_011C:
.L_0118:
mov eax, dword ptr [_LEX+213452]
mov ebx, dword ptr [_LEX+213452]
mov ecx, dword ptr [eax+4312]
mov dword ptr [ebx+4308], ecx
mov ecx, dword ptr [_LEX+213452]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+4304], ebx
mov ebx, dword ptr [_LEX+213452]
mov dword ptr [ebx+4268], 4294967295
mov dword ptr [ebp-4], -1
.L_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02B5,12

.section .text
.balign 16
_HLOADMACROW:
push ebp
mov ebp, esp
sub esp, 1140
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_013C:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-1112], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-1116], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_013F
mov dword ptr [ebp-1112], -1
.L_013F:
.L_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_0141
cmp dword ptr [ebp-1112], 0
jne .L_0143
jmp .L_013D
.L_0143:
.L_0142:
jmp .L_0140
.L_0141:
mov ebx, dword ptr [ebp-1116]
not ebx
and dword ptr [ebp-1112], ebx
.L_0140:
push dword ptr [ebp+8]
call _ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_0145
jmp .L_013D
.L_0145:
.L_0144:
inc dword ptr [_PP+216]
cmp dword ptr [ebp-1112], 0
je .L_0147
call _LEXEATCHAR
.L_0147:
.L_0146:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0149
lea ebx, [_PP+176]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-1084], eax
jmp .L_0148
.L_0149:
mov dword ptr [ebp-1084], 0
.L_0148:
mov dword ptr [ebp-1088], 1
mov dword ptr [ebp-1100], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-1104], ebx
mov dword ptr [ebp-1120], -1
mov dword ptr [ebp-1096], 0
cmp dword ptr [ebp-1084], 0
je .L_014B
mov ebx, dword ptr [ebp-1084]
mov dword ptr [ebx+384], 0
.L_014B:
.L_014A:
.L_014C:
cmp dword ptr [ebp-1084], 0
je .L_0150
mov ebx, dword ptr [ebp-1096]
imul ebx, 12
mov eax, dword ptr [ebp-1084]
add eax, ebx
lea ebx, [eax]
push ebx
call _DWSTRZERO
add esp, 4
.L_0150:
.L_014F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0152
mov eax, dword ptr [ebp-1104]
mov dword ptr [ebp-1100], eax
.L_0152:
.L_0151:
.L_0153:
push 92
lea eax, [ebp-1080]
push eax
call _LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-1080]
mov dword ptr [ebp-1124], eax
jmp .L_0157
.L_0159:
inc dword ptr [ebp-1088]
jmp .L_0156
.L_015A:
cmp dword ptr [ebp-1088], 0
jle .L_015C
dec dword ptr [ebp-1088]
cmp dword ptr [ebp-1088], 0
jne .L_015E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_0160
cmp dword ptr [ebp-1112], 0
jne .L_0162
mov ebx, dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_0164
cmp dword ptr [_PP+216], 1
jle .L_0166
mov dword ptr [ebp-1120], 41
.L_0166:
.L_0165:
.L_0164:
.L_0163:
.L_0162:
.L_0161:
.L_0160:
.L_015F:
jmp .L_0154
.L_015E:
.L_015D:
.L_015C:
.L_015B:
jmp .L_0156
.L_0167:
cmp dword ptr [ebp-1088], 1
jne .L_0169
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_016B
cmp dword ptr [ebp-1104], 0
jne .L_016D
cmp dword ptr [ebp-1112], 0
jne .L_016F
mov ebx, dword ptr [ebp-1084]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_0171
cmp dword ptr [_PP+216], 1
jle .L_0173
mov dword ptr [ebp-1120], 44
.L_0173:
.L_0172:
mov dword ptr [ebp-1088], 0
jmp .L_0154
.L_0171:
.L_0170:
.L_016F:
.L_016E:
.L_016D:
.L_016C:
.L_016B:
.L_016A:
cmp dword ptr [ebp-1084], 0
je .L_0175
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_0177
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_0177:
.L_0176:
mov eax, dword ptr [ebp-1084]
inc dword ptr [eax+384]
.L_0175:
.L_0174:
cmp dword ptr [ebp-1100], 0
jne .L_0179
jmp .L_0154
.L_0179:
.L_0178:
.L_0169:
.L_0168:
jmp .L_0156
.L_017A:
mov eax, dword ptr [ebp-1112]
not eax
test eax, eax
je .L_017C
mov dword ptr [ebp-1120], 58
cmp dword ptr [ebp-1088], 0
jle .L_017E
dec dword ptr [ebp-1088]
.L_017E:
.L_017D:
jmp .L_0154
.L_017C:
.L_017B:
jmp .L_0156
.L_017F:
cmp dword ptr [ebp-1112], 0
je .L_0181
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
mov dword ptr [ebp-1088], 0
jmp .L_0180
.L_0181:
cmp dword ptr [ebp-1088], 0
jle .L_0183
dec dword ptr [ebp-1088]
.L_0183:
.L_0182:
cmp dword ptr [ebp-1080], 256
jne .L_0184
mov dword ptr [ebp-1128], 0
jmp .L_02B6
.L_0184:
mov dword ptr [ebp-1128], 10
.L_02B6:
mov eax, dword ptr [ebp-1128]
mov dword ptr [ebp-1120], eax
.L_0180:
jmp .L_0154
jmp .L_0156
.L_0186:
cmp dword ptr [ebp-1112], 0
je .L_0188
cmp dword ptr [ebp-1084], 0
je .L_018A
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_018C
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_018C:
.L_018B:
.L_018A:
.L_0189:
jmp .L_0187
.L_0188:
.L_018D:
push 574
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-1132], eax
cmp dword ptr [ebp-1132], 257
je .L_0193
.L_0194:
cmp dword ptr [ebp-1132], 256
jne .L_0192
.L_0193:
jmp .L_018E
.L_0192:
.L_0190:
.L_018F:
jmp .L_018D
.L_018E:
push 574
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-1080], 256
jne .L_0195
mov dword ptr [ebp-1128], 0
jmp .L_02B7
.L_0195:
mov dword ptr [ebp-1128], 10
.L_02B7:
mov eax, dword ptr [ebp-1128]
mov dword ptr [ebp-1120], eax
cmp dword ptr [ebp-1088], 0
jle .L_0198
dec dword ptr [ebp-1088]
.L_0198:
.L_0197:
jmp .L_0154
.L_0187:
jmp .L_0156
.L_0199:
jmp .L_0156
.L_019A:
cmp dword ptr [ebp-1084], 0
je .L_019C
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_019E
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_019E:
.L_019D:
.L_019C:
.L_019B:
jmp .L_0156
.L_0157:
mov eax, dword ptr [ebp-1124]
add eax, 4294967287
cmp eax, 250
ja .L_019A
mov eax, dword ptr [ebp-1124]
jmp dword ptr [_.L_019F+eax*4-36]
_.L_019F:
.int .L_0199
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_0199
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_0159
.int .L_015A
.int .L_019A
.int .L_019A
.int .L_0167
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_019A
.int .L_017F
.int .L_017F
.int .L_017A
.int .L_0186
.L_0156:
cmp dword ptr [ebp-1084], 0
je .L_01A1
cmp dword ptr [ebp-1072], 7
je .L_01A3
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .L_01A2
.L_01A3:
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DWSTRCONCATASSIGN
add esp, 8
.L_01A2:
.L_01A1:
.L_01A0:
.L_0155:
jmp .L_0153
.L_0154:
cmp dword ptr [ebp-1084], 0
je .L_01A5
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-1124], eax
mov eax, dword ptr [ebp-1124]
cmp dword ptr [eax], 0
je .L_01A8
mov eax, dword ptr [ebp-1124]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-1124]
mov ecx, dword ptr [ebp-1124]
push dword ptr [ecx]
mov esi, eax
call _fb_WstrLen
add esp, 4
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_01AA
mov eax, dword ptr [ebp-1124]
push dword ptr [eax]
call _fb_WstrTrim
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
mov eax, dword ptr [ebp-1124]
lea esi, [eax]
push esi
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
.L_01AA:
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A5:
.L_01A4:
cmp dword ptr [ebp-1088], 0
jne .L_01AD
cmp dword ptr [ebp-12], 0
je .L_01AF
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-1104]
not esi
or eax, esi
je .L_01B1
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_01B1:
.L_01B0:
.L_01B2:
inc dword ptr [ebp-1096]
mov esi, dword ptr [ebp-1096]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRZERO
add esp, 4
.L_01B4:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-1096], eax
jl .L_01B2
.L_01B3:
.L_01AF:
.L_01AE:
jmp .L_014D
.L_01AD:
.L_01AC:
cmp dword ptr [ebp-12], 0
jne .L_01B6
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_014D
.L_01B6:
.L_01B5:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-1096]
.L_014E:
jmp .L_014C
.L_014D:
push 0
push offset _Lt_02BC
call _DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01B8
mov dword ptr [ebp-1124], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .L_01BA
lea eax, [ebp-1124]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
add esp, 8
mov dword ptr [ebp-1128], eax
cmp dword ptr [ebp-1124], 0
jne .L_01BC
push dword ptr [ebp-1128]
push offset _Lt_02BC
call _DWSTRASSIGN
add esp, 8
jmp .L_01BB
.L_01BC:
push dword ptr [ebp-1124]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_01BB:
jmp .L_01B9
.L_01BA:
push 0
push -1
lea eax, [ebp-1124]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-1136]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-1124], 0
jne .L_01BE
push dword ptr [ebp-1136]
push offset _Lt_02BC
call _DWSTRASSIGNA
add esp, 8
jmp .L_01BD
.L_01BE:
push dword ptr [ebp-1124]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_01BD:
lea eax, [ebp-1136]
push eax
call _fb_StrDelete
add esp, 4
.L_01B9:
jmp .L_01B7
.L_01B8:
cmp dword ptr [ebp-1084], 0
je .L_01C0
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_01C1:
cmp dword ptr [ebp-16], 0
je .L_01C2
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-1124], eax
jmp .L_01C4
.L_01C6:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1108], esi
cmp dword ptr [ebp-1108], 0
je .L_01C8
push dword ptr [ebp-1108]
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
.L_01C8:
.L_01C7:
jmp .L_01C3
.L_01C9:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-1084]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-1108], eax
cmp dword ptr [ebp-1108], 0
je .L_01CB
push offset _Lt_0107
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
push offset _Lt_0108
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1136], eax
push dword ptr [ebp-1136]
push offset _Lt_0106
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1132], eax
push dword ptr [ebp-1132]
push dword ptr [ebp-1108]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1136]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-1132]
call _fb_WstrDelete
add esp, 4
push offset _Lt_0106
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1140], eax
push dword ptr [ebp-1140]
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1140]
call _fb_WstrDelete
add esp, 4
jmp .L_01CA
.L_01CB:
push offset _Lt_0108
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
.L_01CA:
jmp .L_01C3
.L_01D1:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_02BC
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .L_01C3
.L_01D2:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_02BC
call _DWSTRCONCATASSIGN
add esp, 8
jmp .L_01C3
.L_01C4:
cmp dword ptr [ebp-1124], 3
ja .L_01C3
mov eax, dword ptr [ebp-1124]
jmp dword ptr [_.L_01D3+eax*4]
_.L_01D3:
.int .L_01C6
.int .L_01C9
.int .L_01D1
.int .L_01D2
.L_01C3:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_01C1
.L_01C2:
.L_01D4:
cmp dword ptr [ebp-1096], 0
jle .L_01D5
dec dword ptr [ebp-1096]
push 0
mov esi, dword ptr [ebp-1096]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRASSIGN
add esp, 8
jmp .L_01D4
.L_01D5:
push dword ptr [ebp-1084]
lea esi, [_PP+176]
push esi
call _LISTDELNODE
add esp, 8
.L_01C0:
.L_01BF:
.L_01B7:
cmp dword ptr [ebp-1120], -1
je .L_01D7
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push -1
push dword ptr [ebp-1120]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1132]
push offset _Lt_02BC
call _DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-1132]
push eax
call _fb_StrDelete
add esp, 4
.L_01D7:
.L_01D6:
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4304], 0
jne .L_01DA
push dword ptr [_Lt_02BC]
mov eax, dword ptr [_LEX+213452]
lea esi, [eax+4312]
push esi
call _DWSTRASSIGN
add esp, 8
jmp .L_01D9
.L_01DA:
mov esi, dword ptr [_LEX+213452]
push dword ptr [esi+4308]
push dword ptr [_Lt_02BC]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-1124], eax
push dword ptr [ebp-1124]
mov eax, dword ptr [_LEX+213452]
lea esi, [eax+4312]
push esi
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-1124]
call _fb_WstrDelete
add esp, 4
.L_01D9:
dec dword ptr [_PP+216]
push dword ptr [_Lt_02BC]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.L_013D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BC,12

.section .text
.balign 16
_HLOADDEFINEW:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_01DC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_01DF
push dword ptr [ebp+8]
call _HLOADMACROW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_01E1
jmp .L_01DD
.L_01E1:
.L_01E0:
jmp .L_01DE
.L_01DF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_01E5
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset _Lt_0106
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_0107
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
push offset _Lt_02BD
call _DWSTRASSIGNA
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01E4
.L_01E5:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
push offset _Lt_02BD
call _DWSTRASSIGNA
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_01E4:
mov eax, dword ptr [_LEX+213452]
cmp dword ptr [eax+4304], 0
jne .L_01EB
push dword ptr [_Lt_02BD]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
jmp .L_01EA
.L_01EB:
mov ebx, dword ptr [_LEX+213452]
push dword ptr [ebx+4308]
push dword ptr [_Lt_02BD]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01EA:
push dword ptr [_Lt_02BD]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01E2
.L_01E3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_01EE
mov dword ptr [ebp-12], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_01F0
mov dword ptr [ebp-12], -1
.L_01F0:
.L_01EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_01F2
cmp dword ptr [ebp-12], 0
jne .L_01F4
jmp .L_01DD
.L_01F4:
.L_01F3:
jmp .L_01F1
.L_01F2:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_01F1:
cmp dword ptr [ebp-12], 0
je .L_01F6
call _LEXEATCHAR
call _LEXEATWHITESPACE
call _LEXCURRENTCHAR
cmp eax, 41
je .L_01F8
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .L_01F7
.L_01F8:
call _LEXEATCHAR
.L_01F7:
.L_01F6:
.L_01F5:
.L_01EE:
.L_01ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_01FA
mov ebx, dword ptr [_LEX+213452]
cmp dword ptr [ebx+4304], 0
jne .L_01FC
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213452]
lea eax, [ebx+4312]
push eax
call _DWSTRASSIGNA
add esp, 8
jmp .L_01FB
.L_01FC:
mov eax, dword ptr [_LEX+213452]
push dword ptr [eax+4308]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01FB:
jmp .L_01F9
.L_01FA:
mov ebx, dword ptr [_LEX+213452]
cmp dword ptr [ebx+4304], 0
jne .L_0200
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213452]
lea eax, [ebx+4312]
push eax
call _DWSTRASSIGN
add esp, 8
jmp .L_01FF
.L_0200:
mov eax, dword ptr [_LEX+213452]
push dword ptr [eax+4308]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01FF:
.L_01F9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_01E2:
.L_01DE:
mov eax, dword ptr [_LEX+213452]
mov ebx, dword ptr [_LEX+213452]
mov ecx, dword ptr [eax+4312]
mov dword ptr [ebx+4308], ecx
mov ecx, dword ptr [_LEX+213452]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+4304], ebx
mov dword ptr [ebp-4], -1
.L_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BD,12

.section .text
.balign 16
_HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_020C:
.L_020E:
cmp dword ptr [ebp+12], 0
je .L_020F
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .L_0211
jmp .L_020F
.L_0211:
.L_0210:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0213
.L_0215:
push dword ptr [ebp+12]
call _SYMBDELDEFINETOK
add esp, 4
mov dword ptr [ebp+12], eax
jmp .L_0212
.L_0216:
jmp .L_020F
jmp .L_0212
.L_0213:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .L_0216
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0217+eax*4-36]
_.L_0217:
.int .L_0215
.int .L_0215
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0216
.int .L_0215
.L_0212:
jmp .L_020E
.L_020F:
cmp dword ptr [ebp+12], 0
jne .L_0219
mov dword ptr [ebp-4], 0
jmp .L_0218
.L_0219:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0218:
.L_020D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREADMACROTEXT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_021A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.L_021C:
mov dword ptr [ebp-20], 0
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0220
.L_0222:
cmp dword ptr [ebp+16], 0
je .L_0224
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.L_0224:
.L_0223:
jmp .L_021D
jmp .L_021F
.L_0225:
cmp dword ptr [ebp+16], 0
jne .L_0227
jmp .L_021D
.L_0227:
.L_0226:
cmp dword ptr [ebp-16], 0
je .L_0229
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_022A
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_0229:
.L_0228:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
jmp .L_021F
.L_022B:
cmp dword ptr [ebp+16], 0
jne .L_022D
jmp .L_021D
.L_022D:
.L_022C:
.L_022E:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .L_0234
.L_0235:
cmp dword ptr [ebp-32], 256
jne .L_0233
.L_0234:
jmp .L_022F
.L_0233:
.L_0231:
.L_0230:
jmp .L_022E
.L_022F:
jmp .L_021E
jmp .L_021F
.L_0236:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .L_0239
.L_023A:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 63
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
jmp .L_0237
.L_0239:
cmp dword ptr [ebp-32], 274
jne .L_023B
.L_023C:
cmp dword ptr [ebp+16], 0
je .L_023E
inc dword ptr [ebp-24]
.L_023E:
.L_023D:
jmp .L_0237
.L_023B:
cmp dword ptr [ebp-32], 275
jne .L_023F
.L_0240:
cmp dword ptr [ebp+16], 0
je .L_0242
cmp dword ptr [ebp-24], 0
jne .L_0244
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HRTRIMMACROTEXT
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_021D
.L_0244:
.L_0243:
dec dword ptr [ebp-24]
.L_0242:
.L_0241:
jmp .L_0237
.L_023F:
cmp dword ptr [ebp-32], 265
jne .L_0245
.L_0246:
push 62
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-20], -1
.L_0245:
.L_0237:
jmp .L_021F
.L_0247:
cmp dword ptr [ebp-16], 0
je .L_0249
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_024A
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_0249:
.L_0248:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
jmp .L_021F
.L_0220:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .L_021F
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_024B+ebx*4-36]
_.L_024B:
.int .L_0247
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_0247
.int .L_021F
.int .L_021F
.int .L_0236
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_021F
.int .L_0222
.int .L_0225
.int .L_021F
.int .L_022B
.int .L_022B
.L_021F:
push 62
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_024D
.L_024F:
cmp dword ptr [_ENV+576], 0
jne .L_0251
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0253
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0253:
.L_0252:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
jmp .L_0250
.L_0251:
push 3
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0255
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0255:
.L_0254:
mov eax, dword ptr [_LEX+213452]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _WSTRASSIGN
add esp, 8
.L_0250:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_024C
.L_0256:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0258
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0258:
.L_0257:
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 129
push offset _Lt_02BE
call _fb_StrAssign
add esp, 20
push offset _Lt_02BE
lea eax, [_SYMB+98768]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_025A
cmp dword ptr [ebp-20], 0
jne .L_025C
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .L_025B
.L_025C:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.L_025B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .L_0259
.L_025A:
cmp dword ptr [ebp-20], 0
je .L_025E
push offset _Lt_025F
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call _ZSTRASSIGN
add esp, 8
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRCONCATASSIGN
add esp, 8
jmp .L_025D
.L_025E:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_025D:
.L_0259:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_024C
.L_0260:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0262
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0262:
.L_0261:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_024C
.L_024D:
cmp dword ptr [ebp-28], 4
ja .L_0260
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_0263+ebx*4]
_.L_0263:
.int .L_0256
.int .L_0256
.int .L_0256
.int .L_0260
.int .L_024F
.L_024C:
.L_021E:
jmp .L_021C
.L_021D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_021B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BE,129

.section .text
.balign 16
_HREADDEFINETEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0264:
cmp dword ptr [_ENV+576], 0
jne .L_0267
push dword ptr [ebp+20]
call _PPREADLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_0269
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_026B
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_026A
.L_026B:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_026C
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
.L_026C:
.L_026A:
jmp .L_0268
.L_0269:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-4]
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SYMBADDDEFINE
add esp, 24
.L_0268:
jmp .L_0266
.L_0267:
push dword ptr [ebp+20]
call _PPREADLITERALW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_026E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_0270
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_026F
.L_0270:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _fb_WstrCompare
add esp, 8
test eax, eax
je .L_0271
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
.L_0271:
.L_026F:
jmp .L_026D
.L_026E:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _fb_WstrLen
add esp, 4
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _SYMBADDDEFINEW
add esp, 24
.L_026D:
.L_0266:
.L_0265:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMATCHPARAMELLIPSIS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0272:
mov dword ptr [ebp-4], 0
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0275
push 34
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0277
push 34
push 2
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0279
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
.L_0279:
.L_0278:
.L_0277:
.L_0276:
.L_0275:
.L_0274:
.L_0273:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_006D:	.ascii	"expanding: \0"
.balign 4
_Lt_0106:	.ascii	"\"\0"
.balign 4
_Lt_0107:	.ascii	"$\"\0"
.balign 4
_Lt_0108:	.ascii	"\"\"\0"
.balign 4
_Lt_022A:	.ascii	"\n\0"
.balign 4
_Lt_024A:	.ascii	" \0"
.balign 4
_Lt_025F:	.ascii	"#\0"
