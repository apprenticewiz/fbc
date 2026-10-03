	.intel_syntax noprefix

.section .text
.balign 16

.globl PPDEFINEINIT
PPDEFINEINIT:
.L_0066:
push 6
push 388
push 8
lea eax, [PP+176]
push eax
call LISTINIT
add esp, 16
.L_0067:
ret
.balign 16

.globl PPDEFINEEND
PPDEFINEEND:
.L_0068:
lea eax, [PP+176]
push eax
call LISTEND
add esp, 4
.L_0069:
ret
.balign 16

.globl PPDEFINELOAD
PPDEFINELOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01FF:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_0202
push 0
push 0
push 89
call ERRREPORT
add esp, 12
push 0
push 62
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0200
.L_0202:
.L_0201:
cmp dword ptr [ENV+576], 0
jne .L_0204
push dword ptr [ebp+8]
call HLOADDEFINE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0203
.L_0204:
push dword ptr [ebp+8]
call HLOADDEFINEW
add esp, 4
mov dword ptr [ebp-4], eax
.L_0203:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jle .L_0206
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16580], 0
jne .L_0208
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+16580], ebx
.L_0208:
.L_0207:
.L_0206:
.L_0205:
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16556], 4294967295
.L_0200:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPDEFINE
PPDEFINE:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_0277:
push 38
lea eax, [ebp-32]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .L_027A
and dword ptr [ebp-12], -5
.L_027A:
.L_0279:
push dword ptr [ebp-12]
push offset Lt_02AA
call LEXEATTOKEN
add esp, 8
push offset Lt_02AA
call HISVALIDSYMBOLNAME
add esp, 4
test eax, eax
jne .L_027C
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_0278
.L_027C:
.L_027B:
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_027E
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.L_027E:
.L_027D:
cmp dword ptr [ebp-28], 0
je .L_0280
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .L_0282
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .L_0284
push 0
push 1
push 0
push 39
call ERRREPORTWARN
add esp, 16
push dword ptr [ebp-24]
call SYMBDELFROMHASH
add esp, 4
mov dword ptr [ebp-24], 0
jmp .L_0283
.L_0284:
push 0
push 1
push 0
push offset Lt_02AA
push 4
call ERRREPORTEX
add esp, 20
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 129
push offset Lt_02AA
call fb_StrAssign
add esp, 20
.L_0283:
.L_0282:
.L_0281:
jmp .L_027F
.L_0280:
mov dword ptr [ebp-24], 0
.L_027F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .L_0286
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 4
cmp eax, 63
jne .L_0288
push 2
call LEXSKIPTOKEN
add esp, 4
and dword ptr [ebp-40], -9
.L_0288:
.L_0287:
.L_0286:
.L_0285:
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_028A
push 34
call LEXSKIPTOKEN
add esp, 4
push 34
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_028C
mov dword ptr [ebp-20], 0
.L_028D:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-44], eax
jmp .L_0291
.L_0293:
call LEXGETTEXT
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0290
.L_0294:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0290
.L_0291:
cmp dword ptr [ebp-44], 2
ja .L_0294
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_0295+eax*4]
.L_0295:
.int .L_0293
.int .L_0293
.int .L_0293
.L_0290:
cmp dword ptr [ebp-20], 0
jne .L_0297
push 0
push 0
push 4
call ERRREPORT
add esp, 12
.L_0297:
.L_0296:
push 34
call LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .L_0299
push 0
push 0
push 79
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0278
.L_0299:
.L_0298:
cmp dword ptr [ebp-16], 0
jne .L_029B
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_029B:
.L_029A:
push 34
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_029D
jmp .L_028E
.L_029D:
.L_029C:
push 34
call LEXSKIPTOKEN
add esp, 4
.L_028F:
jmp .L_028D
.L_028E:
call HMATCHPARAMELLIPSIS
test eax, eax
je .L_029F
or dword ptr [ebp-40], 4
.L_029F:
.L_029E:
jmp .L_028B
.L_028C:
mov dword ptr [ebp-8], -1
.L_028B:
push 62
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_02A1
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_02A0
.L_02A1:
push 58
call LEXSKIPTOKEN
add esp, 4
.L_02A0:
jmp .L_0289
.L_028A:
cmp dword ptr [ebp+8], 0
jne .L_02A3
push 62
call LEXGETTOKEN
add esp, 4
cmp eax, 32
jne .L_02A5
push 58
call LEXSKIPTOKEN
add esp, 4
.L_02A5:
.L_02A4:
.L_02A3:
.L_02A2:
.L_0289:
cmp dword ptr [ebp-4], 0
jne .L_02A7
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset Lt_02AA
push dword ptr [ebp-24]
call HREADDEFINETEXT
add esp, 20
jmp .L_0278
.L_02A7:
.L_02A6:
cmp dword ptr [ebp-24], 0
je .L_02A9
push 0
push 1
push 0
push offset Lt_02AA
push 4
call ERRREPORTEX
add esp, 20
jmp .L_02A8
.L_02A9:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HREADMACROTEXT
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset Lt_02AA
call SYMBADDDEFINEMACRO
add esp, 20
.L_02A8:
.L_0278:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02AA,129

.section .text
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
HREPORTMACROERROR:
push ebp
mov ebp, esp
sub esp, 24
.L_006A:
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
push offset Lt_006C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_006B:
mov esp, ebp
pop ebp
ret
.balign 16
ISMACROALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006F:
cmp dword ptr [PP+212], 0
jne .L_0072
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .L_0074
cmp dword ptr [ENV+104], 1
jne .L_0076
push 0
push 0
push 286
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0070
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
.L_0071:
mov dword ptr [ebp-4], -1
.L_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADMACRO:
push ebp
mov ebp, esp
sub esp, 4212
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4180], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-4184], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_007A
mov dword ptr [ebp-4180], -1
.L_007A:
.L_0079:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_007C
cmp dword ptr [ebp-4180], 0
jne .L_007E
jmp .L_0078
.L_007E:
.L_007D:
jmp .L_007B
.L_007C:
mov ebx, dword ptr [ebp-4184]
not ebx
and dword ptr [ebp-4180], ebx
.L_007B:
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_0080
jmp .L_0078
.L_0080:
.L_007F:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4180], 0
je .L_0082
call LEXEATCHAR
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0084
lea ebx, [PP+176]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4156], eax
jmp .L_0083
.L_0084:
mov dword ptr [ebp-4156], 0
.L_0083:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4168], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4172], ebx
mov dword ptr [ebp-4188], -1
mov dword ptr [ebp-4164], 0
cmp dword ptr [ebp-4156], 0
je .L_0086
mov ebx, dword ptr [ebp-4156]
mov dword ptr [ebx+384], 0
.L_0086:
.L_0085:
.L_0087:
cmp dword ptr [ebp-4156], 0
je .L_008B
mov ebx, dword ptr [ebp-4164]
imul ebx, 12
mov eax, dword ptr [ebp-4156]
add eax, ebx
lea ebx, [eax]
push ebx
call DZSTRZERO
add esp, 4
.L_008B:
.L_008A:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008D
mov eax, dword ptr [ebp-4172]
mov dword ptr [ebp-4168], eax
.L_008D:
.L_008C:
.L_008E:
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4192], eax
jmp .L_0092
.L_0094:
inc dword ptr [ebp-4160]
jmp .L_0091
.L_0095:
cmp dword ptr [ebp-4160], 0
jle .L_0097
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .L_0099
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_009B
cmp dword ptr [ebp-4180], 0
jne .L_009D
mov ebx, dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_009F
cmp dword ptr [PP+216], 1
jle .L_00A1
mov dword ptr [ebp-4188], 41
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
.L_009A:
jmp .L_008F
.L_0099:
.L_0098:
.L_0097:
.L_0096:
jmp .L_0091
.L_00A2:
cmp dword ptr [ebp-4160], 1
jne .L_00A4
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_00A6
cmp dword ptr [ebp-4172], 0
jne .L_00A8
cmp dword ptr [ebp-4180], 0
jne .L_00AA
mov ebx, dword ptr [ebp-4156]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_00AC
cmp dword ptr [PP+216], 1
jle .L_00AE
mov dword ptr [ebp-4188], 44
.L_00AE:
.L_00AD:
mov dword ptr [ebp-4160], 0
jmp .L_008F
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
.L_00A5:
cmp dword ptr [ebp-4156], 0
je .L_00B0
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_00B2
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_00B2:
.L_00B1:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.L_00B0:
.L_00AF:
cmp dword ptr [ebp-4168], 0
jne .L_00B4
jmp .L_008F
.L_00B4:
.L_00B3:
.L_00A4:
.L_00A3:
jmp .L_0091
.L_00B5:
mov eax, dword ptr [ebp-4180]
not eax
test eax, eax
je .L_00B7
mov dword ptr [ebp-4188], 58
cmp dword ptr [ebp-4160], 0
jle .L_00B9
dec dword ptr [ebp-4160]
.L_00B9:
.L_00B8:
jmp .L_008F
.L_00B7:
.L_00B6:
jmp .L_0091
.L_00BA:
cmp dword ptr [ebp-4180], 0
je .L_00BC
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
mov dword ptr [ebp-4160], 0
jmp .L_00BB
.L_00BC:
cmp dword ptr [ebp-4160], 0
jle .L_00BE
dec dword ptr [ebp-4160]
.L_00BE:
.L_00BD:
cmp dword ptr [ebp-4152], 256
jne .L_00BF
mov dword ptr [ebp-4196], 0
jmp .L_02AB
.L_00BF:
mov dword ptr [ebp-4196], 10
.L_02AB:
mov eax, dword ptr [ebp-4196]
mov dword ptr [ebp-4188], eax
.L_00BB:
jmp .L_008F
jmp .L_0091
.L_00C1:
cmp dword ptr [ebp-4180], 0
je .L_00C3
cmp dword ptr [ebp-4156], 0
je .L_00C5
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_00C7
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
jmp .L_00C2
.L_00C3:
.L_00C8:
push 574
call LEXSKIPTOKEN
add esp, 4
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4200], eax
cmp dword ptr [ebp-4200], 257
je .L_00CE
.L_00CF:
cmp dword ptr [ebp-4200], 256
jne .L_00CD
.L_00CE:
jmp .L_00C9
.L_00CD:
.L_00CB:
.L_00CA:
jmp .L_00C8
.L_00C9:
push 574
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-4152], 256
jne .L_00D0
mov dword ptr [ebp-4196], 0
jmp .L_02AC
.L_00D0:
mov dword ptr [ebp-4196], 10
.L_02AC:
mov eax, dword ptr [ebp-4196]
mov dword ptr [ebp-4188], eax
cmp dword ptr [ebp-4160], 0
jle .L_00D3
dec dword ptr [ebp-4160]
.L_00D3:
.L_00D2:
jmp .L_008F
.L_00C2:
jmp .L_0091
.L_00D4:
jmp .L_0091
.L_00D5:
cmp dword ptr [ebp-4156], 0
je .L_00D7
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_00D9
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_00D9:
.L_00D8:
.L_00D7:
.L_00D6:
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-4192]
add eax, 4294967287
cmp eax, 250
ja .L_00D5
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.L_00DA+eax*4-36]
.L_00DA:
.int .L_00D4
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D4
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_0094
.int .L_0095
.int .L_00D5
.int .L_00D5
.int .L_00A2
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00D5
.int .L_00BA
.int .L_00BA
.int .L_00B5
.int .L_00C1
.L_0091:
cmp dword ptr [ebp-4156], 0
je .L_00DC
cmp dword ptr [ebp-4144], 7
je .L_00DE
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DZSTRCONCATASSIGN
add esp, 8
jmp .L_00DD
.L_00DE:
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DZSTRCONCATASSIGNW
add esp, 8
.L_00DD:
.L_00DC:
.L_00DB:
.L_0090:
jmp .L_008E
.L_008F:
cmp dword ptr [ebp-4156], 0
je .L_00E0
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4192], eax
mov eax, dword ptr [ebp-4192]
cmp dword ptr [eax], 0
je .L_00E3
mov eax, dword ptr [ebp-4192]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4192]
push 0
mov ecx, dword ptr [ebp-4192]
push dword ptr [ecx]
mov esi, eax
call fb_StrLen
add esp, 8
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_00E5
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
push 0
push -1
mov eax, dword ptr [ebp-4192]
push dword ptr [eax]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4204]
mov eax, dword ptr [ebp-4192]
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 8
lea esi, [ebp-4204]
push esi
call fb_StrDelete
add esp, 4
.L_00E5:
.L_00E4:
.L_00E3:
.L_00E2:
.L_00E0:
.L_00DF:
cmp dword ptr [ebp-4160], 0
jne .L_00E8
cmp dword ptr [ebp-12], 0
je .L_00EA
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4172]
not esi
or eax, esi
je .L_00EC
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
.L_00EC:
.L_00EB:
.L_00ED:
inc dword ptr [ebp-4164]
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRZERO
add esp, 4
.L_00EF:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4164], eax
jl .L_00ED
.L_00EE:
.L_00EA:
.L_00E9:
jmp .L_0088
.L_00E8:
.L_00E7:
cmp dword ptr [ebp-12], 0
jne .L_00F1
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0088
.L_00F1:
.L_00F0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4164]
.L_0089:
jmp .L_0087
.L_0088:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02B1
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_00F3
mov dword ptr [ebp-4192], 0
push 0
push -1
lea eax, [ebp-4192]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ebp-4192], 0
jne .L_00F5
push 0
push -1
lea eax, [ebp-4204]
push eax
push -1
push offset Lt_02B1
call fb_StrAssign
add esp, 20
jmp .L_00F4
.L_00F5:
push dword ptr [ebp-4192]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
.L_00F4:
lea eax, [ebp-4204]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00F2
.L_00F3:
cmp dword ptr [ebp-4156], 0
je .L_00F7
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_00F8:
cmp dword ptr [ebp-16], 0
je .L_00F9
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4192], eax
jmp .L_00FB
.L_00FD:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .L_00FF
push 0
push -1
push 0
push dword ptr [ebp-4176]
push -1
push offset Lt_02B1
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea esi, [ebp-4204]
push esi
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_02B1
call fb_StrAssign
add esp, 20
.L_00FF:
.L_00FE:
jmp .L_00FA
.L_0101:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .L_0103
push 0
push 3
push offset Lt_0106
push -1
push offset Lt_02B1
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_0107
push offset Lt_0105
push dword ptr [ebp-4176]
call HREPLACE
add esp, 12
push eax
push -1
push offset Lt_02B1
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0105
push -1
push offset Lt_02B1
call fb_StrConcatAssign
add esp, 20
jmp .L_0102
.L_0103:
push 0
push 3
push offset Lt_0107
push -1
push offset Lt_02B1
call fb_StrConcatAssign
add esp, 20
.L_0102:
jmp .L_00FA
.L_0108:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset Lt_02B1
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea eax, [ebp-4204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_02B1
call fb_StrAssign
add esp, 20
jmp .L_00FA
.L_010A:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call fb_WstrToStr
add esp, 4
push eax
push -1
push offset Lt_02B1
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea eax, [ebp-4204]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_02B1
call fb_StrAssign
add esp, 20
jmp .L_00FA
.L_00FB:
cmp dword ptr [ebp-4192], 3
ja .L_00FA
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.L_010C+eax*4]
.L_010C:
.int .L_00FD
.int .L_0101
.int .L_0108
.int .L_010A
.L_00FA:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_00F8
.L_00F9:
.L_010D:
cmp dword ptr [ebp-4164], 0
jle .L_010E
dec dword ptr [ebp-4164]
push 0
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 8
jmp .L_010D
.L_010E:
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 8
.L_00F7:
.L_00F6:
cmp dword ptr [ebp-4188], -1
je .L_0110
push 0
push -1
push dword ptr [ebp-4188]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push offset Lt_02B1
call fb_StrConcatAssign
add esp, 20
.L_0110:
.L_010F:
.L_00F2:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_0112
push dword ptr [Lt_02B1]
mov eax, dword ptr [LEX+840140]
lea esi, [eax+16600]
push esi
call DZSTRASSIGN
add esp, 8
jmp .L_0111
.L_0112:
mov dword ptr [ebp-4212], 0
mov dword ptr [ebp-4208], 0
mov dword ptr [ebp-4204], 0
push 0
push -1
push 0
mov esi, dword ptr [LEX+840140]
push dword ptr [esi+16596]
push -1
push offset Lt_02B1
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
lea esi, [ebp-4200]
push esi
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-4212]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4212]
mov eax, dword ptr [LEX+840140]
lea esi, [eax+16600]
push esi
call DZSTRASSIGN
add esp, 8
lea esi, [ebp-4212]
push esi
call fb_StrDelete
add esp, 4
.L_0111:
dec dword ptr [PP+216]
push -1
push offset Lt_02B1
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_0078:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02B1,12

.section .text
.balign 16
HLOADDEFINE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0115:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_0118
push dword ptr [ebp+8]
call HLOADMACRO
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_011A
jmp .L_0116
.L_011A:
.L_0119:
jmp .L_0117
.L_0118:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_011C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_011E
push 0
push -1
push 2
push offset Lt_0105
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_0106
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_02B2
call fb_StrAssign
add esp, 20
jmp .L_011D
.L_011E:
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
push offset Lt_02B2
call fb_StrAssign
add esp, 20
.L_011D:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_0122
push dword ptr [Lt_02B2]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 8
jmp .L_0121
.L_0122:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov ebx, dword ptr [LEX+840140]
push dword ptr [ebx+16596]
push -1
push offset Lt_02B2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 4
.L_0121:
push -1
push offset Lt_02B2
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_011B
.L_011C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0126
mov dword ptr [ebp-12], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_0128
mov dword ptr [ebp-12], -1
.L_0128:
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_012A
cmp dword ptr [ebp-12], 0
jne .L_012C
jmp .L_0116
.L_012C:
.L_012B:
jmp .L_0129
.L_012A:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_0129:
cmp dword ptr [ebp-12], 0
je .L_012E
call LEXEATCHAR
call LEXEATWHITESPACE
call LEXCURRENTCHAR
cmp eax, 41
je .L_0130
push 0
push 0
push 7
call ERRREPORT
add esp, 12
jmp .L_012F
.L_0130:
call LEXEATCHAR
.L_012F:
.L_012E:
.L_012D:
.L_0126:
.L_0125:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_0132
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16592], 0
jne .L_0134
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16600]
push eax
call DZSTRASSIGN
add esp, 8
jmp .L_0133
.L_0134:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16596]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 4
.L_0133:
jmp .L_0131
.L_0132:
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16592], 0
jne .L_0138
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16600]
push eax
call DZSTRASSIGNW
add esp, 8
jmp .L_0137
.L_0138:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16596]
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrToStr
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 4
.L_0137:
.L_0131:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_011B:
.L_0117:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16600]
mov dword ptr [ebx+16596], ecx
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+16592], ebx
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16556], 4294967295
mov dword ptr [ebp-4], -1
.L_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02B2,12

.section .text
.balign 16
HLOADMACROW:
push ebp
mov ebp, esp
sub esp, 4208
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_013B:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4184], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-4188], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_013E
mov dword ptr [ebp-4184], -1
.L_013E:
.L_013D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_0140
cmp dword ptr [ebp-4184], 0
jne .L_0142
jmp .L_013C
.L_0142:
.L_0141:
jmp .L_013F
.L_0140:
mov ebx, dword ptr [ebp-4188]
not ebx
and dword ptr [ebp-4184], ebx
.L_013F:
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_0144
jmp .L_013C
.L_0144:
.L_0143:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4184], 0
je .L_0146
call LEXEATCHAR
.L_0146:
.L_0145:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0148
lea ebx, [PP+176]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4156], eax
jmp .L_0147
.L_0148:
mov dword ptr [ebp-4156], 0
.L_0147:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4172], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4176], ebx
mov dword ptr [ebp-4192], -1
mov dword ptr [ebp-4168], 0
cmp dword ptr [ebp-4156], 0
je .L_014A
mov ebx, dword ptr [ebp-4156]
mov dword ptr [ebx+384], 0
.L_014A:
.L_0149:
.L_014B:
cmp dword ptr [ebp-4156], 0
je .L_014F
mov ebx, dword ptr [ebp-4168]
imul ebx, 12
mov eax, dword ptr [ebp-4156]
add eax, ebx
lea ebx, [eax]
push ebx
call DWSTRZERO
add esp, 4
.L_014F:
.L_014E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0151
mov eax, dword ptr [ebp-4176]
mov dword ptr [ebp-4172], eax
.L_0151:
.L_0150:
.L_0152:
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4196], eax
jmp .L_0156
.L_0158:
inc dword ptr [ebp-4160]
jmp .L_0155
.L_0159:
cmp dword ptr [ebp-4160], 0
jle .L_015B
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .L_015D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_015F
cmp dword ptr [ebp-4184], 0
jne .L_0161
mov ebx, dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_0163
cmp dword ptr [PP+216], 1
jle .L_0165
mov dword ptr [ebp-4192], 41
.L_0165:
.L_0164:
.L_0163:
.L_0162:
.L_0161:
.L_0160:
.L_015F:
.L_015E:
jmp .L_0153
.L_015D:
.L_015C:
.L_015B:
.L_015A:
jmp .L_0155
.L_0166:
cmp dword ptr [ebp-4160], 1
jne .L_0168
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_016A
cmp dword ptr [ebp-4176], 0
jne .L_016C
cmp dword ptr [ebp-4184], 0
jne .L_016E
mov ebx, dword ptr [ebp-4156]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_0170
cmp dword ptr [PP+216], 1
jle .L_0172
mov dword ptr [ebp-4192], 44
.L_0172:
.L_0171:
mov dword ptr [ebp-4160], 0
jmp .L_0153
.L_0170:
.L_016F:
.L_016E:
.L_016D:
.L_016C:
.L_016B:
.L_016A:
.L_0169:
cmp dword ptr [ebp-4156], 0
je .L_0174
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_0176
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_0176:
.L_0175:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.L_0174:
.L_0173:
cmp dword ptr [ebp-4172], 0
jne .L_0178
jmp .L_0153
.L_0178:
.L_0177:
.L_0168:
.L_0167:
jmp .L_0155
.L_0179:
mov eax, dword ptr [ebp-4184]
not eax
test eax, eax
je .L_017B
mov dword ptr [ebp-4192], 58
cmp dword ptr [ebp-4160], 0
jle .L_017D
dec dword ptr [ebp-4160]
.L_017D:
.L_017C:
jmp .L_0153
.L_017B:
.L_017A:
jmp .L_0155
.L_017E:
cmp dword ptr [ebp-4184], 0
je .L_0180
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
mov dword ptr [ebp-4160], 0
jmp .L_017F
.L_0180:
cmp dword ptr [ebp-4160], 0
jle .L_0182
dec dword ptr [ebp-4160]
.L_0182:
.L_0181:
cmp dword ptr [ebp-4152], 256
jne .L_0183
mov dword ptr [ebp-4200], 0
jmp .L_02B3
.L_0183:
mov dword ptr [ebp-4200], 10
.L_02B3:
mov eax, dword ptr [ebp-4200]
mov dword ptr [ebp-4192], eax
.L_017F:
jmp .L_0153
jmp .L_0155
.L_0185:
cmp dword ptr [ebp-4184], 0
je .L_0187
cmp dword ptr [ebp-4156], 0
je .L_0189
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_018B
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_018B:
.L_018A:
.L_0189:
.L_0188:
jmp .L_0186
.L_0187:
.L_018C:
push 574
call LEXSKIPTOKEN
add esp, 4
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4204], eax
cmp dword ptr [ebp-4204], 257
je .L_0192
.L_0193:
cmp dword ptr [ebp-4204], 256
jne .L_0191
.L_0192:
jmp .L_018D
.L_0191:
.L_018F:
.L_018E:
jmp .L_018C
.L_018D:
push 574
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-4152], 256
jne .L_0194
mov dword ptr [ebp-4200], 0
jmp .L_02B4
.L_0194:
mov dword ptr [ebp-4200], 10
.L_02B4:
mov eax, dword ptr [ebp-4200]
mov dword ptr [ebp-4192], eax
cmp dword ptr [ebp-4160], 0
jle .L_0197
dec dword ptr [ebp-4160]
.L_0197:
.L_0196:
jmp .L_0153
.L_0186:
jmp .L_0155
.L_0198:
jmp .L_0155
.L_0199:
cmp dword ptr [ebp-4156], 0
je .L_019B
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_019D
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_019D:
.L_019C:
.L_019B:
.L_019A:
jmp .L_0155
.L_0156:
mov eax, dword ptr [ebp-4196]
add eax, 4294967287
cmp eax, 250
ja .L_0199
mov eax, dword ptr [ebp-4196]
jmp dword ptr [.L_019E+eax*4-36]
.L_019E:
.int .L_0198
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0198
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0158
.int .L_0159
.int .L_0199
.int .L_0199
.int .L_0166
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_0199
.int .L_017E
.int .L_017E
.int .L_0179
.int .L_0185
.L_0155:
cmp dword ptr [ebp-4156], 0
je .L_01A0
cmp dword ptr [ebp-4144], 7
je .L_01A2
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DWSTRCONCATASSIGNA
add esp, 8
jmp .L_01A1
.L_01A2:
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DWSTRCONCATASSIGN
add esp, 8
.L_01A1:
.L_01A0:
.L_019F:
.L_0154:
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-4156], 0
je .L_01A4
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4196], eax
mov eax, dword ptr [ebp-4196]
cmp dword ptr [eax], 0
je .L_01A7
mov eax, dword ptr [ebp-4196]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4196]
mov ecx, dword ptr [ebp-4196]
push dword ptr [ecx]
mov esi, eax
call fb_WstrLen
add esp, 4
sal eax, 2
mov ecx, dword ptr [ebx]
add ecx, eax
cmp dword ptr [ecx-4], 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_01A9
mov eax, dword ptr [ebp-4196]
push dword ptr [eax]
call fb_WstrTrim
add esp, 4
mov dword ptr [ebp-4200], eax
push dword ptr [ebp-4200]
mov eax, dword ptr [ebp-4196]
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-4200]
call fb_WstrDelete
add esp, 4
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A4:
.L_01A3:
cmp dword ptr [ebp-4160], 0
jne .L_01AC
cmp dword ptr [ebp-12], 0
je .L_01AE
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4176]
not esi
or eax, esi
je .L_01B0
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
.L_01B0:
.L_01AF:
.L_01B1:
inc dword ptr [ebp-4168]
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRZERO
add esp, 4
.L_01B3:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4168], eax
jl .L_01B1
.L_01B2:
.L_01AE:
.L_01AD:
jmp .L_014C
.L_01AC:
.L_01AB:
cmp dword ptr [ebp-12], 0
jne .L_01B5
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_014C
.L_01B5:
.L_01B4:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4168]
.L_014D:
jmp .L_014B
.L_014C:
push 0
push offset Lt_02B9
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01B7
mov dword ptr [ebp-4196], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .L_01B9
lea eax, [ebp-4196]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
add esp, 8
mov dword ptr [ebp-4200], eax
cmp dword ptr [ebp-4196], 0
jne .L_01BB
push dword ptr [ebp-4200]
push offset Lt_02B9
call DWSTRASSIGN
add esp, 8
jmp .L_01BA
.L_01BB:
push dword ptr [ebp-4196]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
.L_01BA:
jmp .L_01B8
.L_01B9:
push 0
push -1
lea eax, [ebp-4196]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-4208]
push eax
call fb_StrInit
add esp, 20
cmp dword ptr [ebp-4196], 0
jne .L_01BD
push dword ptr [ebp-4208]
push offset Lt_02B9
call DWSTRASSIGNA
add esp, 8
jmp .L_01BC
.L_01BD:
push dword ptr [ebp-4196]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 8
.L_01BC:
lea eax, [ebp-4208]
push eax
call fb_StrDelete
add esp, 4
.L_01B8:
jmp .L_01B6
.L_01B7:
cmp dword ptr [ebp-4156], 0
je .L_01BF
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_01C0:
cmp dword ptr [ebp-16], 0
je .L_01C1
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4196], eax
jmp .L_01C3
.L_01C5:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4180], esi
cmp dword ptr [ebp-4180], 0
je .L_01C7
push dword ptr [ebp-4180]
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
.L_01C7:
.L_01C6:
jmp .L_01C2
.L_01C8:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-4156]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-4180], eax
cmp dword ptr [ebp-4180], 0
je .L_01CA
push offset Lt_01CB
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
push offset Lt_01CD
push offset Lt_01CC
push dword ptr [ebp-4180]
call HREPLACEW
add esp, 12
push eax
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
push offset Lt_01CC
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
jmp .L_01C9
.L_01CA:
push offset Lt_01CD
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
.L_01C9:
jmp .L_01C2
.L_01CE:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_02B9
call DWSTRCONCATASSIGNA
add esp, 8
jmp .L_01C2
.L_01CF:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_02B9
call DWSTRCONCATASSIGN
add esp, 8
jmp .L_01C2
.L_01C3:
cmp dword ptr [ebp-4196], 3
ja .L_01C2
mov eax, dword ptr [ebp-4196]
jmp dword ptr [.L_01D0+eax*4]
.L_01D0:
.int .L_01C5
.int .L_01C8
.int .L_01CE
.int .L_01CF
.L_01C2:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_01C0
.L_01C1:
.L_01D1:
cmp dword ptr [ebp-4168], 0
jle .L_01D2
dec dword ptr [ebp-4168]
push 0
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 8
jmp .L_01D1
.L_01D2:
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 8
.L_01BF:
.L_01BE:
.L_01B6:
cmp dword ptr [ebp-4192], -1
je .L_01D4
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
push 0
push -1
push dword ptr [ebp-4192]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4204]
push offset Lt_02B9
call DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-4204]
push eax
call fb_StrDelete
add esp, 4
.L_01D4:
.L_01D3:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_01D7
push dword ptr [Lt_02B9]
mov eax, dword ptr [LEX+840140]
lea esi, [eax+16600]
push esi
call DWSTRASSIGN
add esp, 8
jmp .L_01D6
.L_01D7:
mov esi, dword ptr [LEX+840140]
push dword ptr [esi+16596]
push dword ptr [Lt_02B9]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-4196], eax
push dword ptr [ebp-4196]
mov eax, dword ptr [LEX+840140]
lea esi, [eax+16600]
push esi
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-4196]
call fb_WstrDelete
add esp, 4
.L_01D6:
dec dword ptr [PP+216]
push dword ptr [Lt_02B9]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.L_013C:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02B9,12

.section .text
.balign 16
HLOADDEFINEW:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_01D9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_01DC
push dword ptr [ebp+8]
call HLOADMACROW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_01DE
jmp .L_01DA
.L_01DE:
.L_01DD:
jmp .L_01DB
.L_01DC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01E0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_01E2
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset Lt_0105
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_0106
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
push offset Lt_02BA
call DWSTRASSIGNA
add esp, 8
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01E1
.L_01E2:
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
call fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
push offset Lt_02BA
call DWSTRASSIGNA
add esp, 8
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_01E1:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_01E8
push dword ptr [Lt_02BA]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 8
jmp .L_01E7
.L_01E8:
mov ebx, dword ptr [LEX+840140]
push dword ptr [ebx+16596]
push dword ptr [Lt_02BA]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 4
.L_01E7:
push dword ptr [Lt_02BA]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01DF
.L_01E0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_01EB
mov dword ptr [ebp-12], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_01ED
mov dword ptr [ebp-12], -1
.L_01ED:
.L_01EC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_01EF
cmp dword ptr [ebp-12], 0
jne .L_01F1
jmp .L_01DA
.L_01F1:
.L_01F0:
jmp .L_01EE
.L_01EF:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_01EE:
cmp dword ptr [ebp-12], 0
je .L_01F3
call LEXEATCHAR
call LEXEATWHITESPACE
call LEXCURRENTCHAR
cmp eax, 41
je .L_01F5
push 0
push 0
push 7
call ERRREPORT
add esp, 12
jmp .L_01F4
.L_01F5:
call LEXEATCHAR
.L_01F4:
.L_01F3:
.L_01F2:
.L_01EB:
.L_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_01F7
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16592], 0
jne .L_01F9
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16600]
push eax
call DWSTRASSIGNA
add esp, 8
jmp .L_01F8
.L_01F9:
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16596]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 4
.L_01F8:
jmp .L_01F6
.L_01F7:
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16592], 0
jne .L_01FD
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16600]
push eax
call DWSTRASSIGN
add esp, 8
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16596]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 4
.L_01FC:
.L_01F6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_01DF:
.L_01DB:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16600]
mov dword ptr [ebx+16596], ecx
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+16592], ebx
mov dword ptr [ebp-4], -1
.L_01DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02BA,12

.section .text
.balign 16
HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0209:
.L_020B:
cmp dword ptr [ebp+12], 0
je .L_020C
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .L_020E
jmp .L_020C
.L_020E:
.L_020D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_0210
.L_0212:
push dword ptr [ebp+12]
call SYMBDELDEFINETOK
add esp, 4
mov dword ptr [ebp+12], eax
jmp .L_020F
.L_0213:
jmp .L_020C
jmp .L_020F
.L_0210:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .L_0213
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0214+eax*4-36]
.L_0214:
.int .L_0212
.int .L_0212
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0213
.int .L_0212
.L_020F:
jmp .L_020B
.L_020C:
cmp dword ptr [ebp+12], 0
jne .L_0216
mov dword ptr [ebp-4], 0
jmp .L_0215
.L_0216:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0215:
.L_020A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADMACROTEXT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0217:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.L_0219:
mov dword ptr [ebp-20], 0
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_021D
.L_021F:
cmp dword ptr [ebp+16], 0
je .L_0221
push 0
push 0
push 134
call ERRREPORT
add esp, 12
.L_0221:
.L_0220:
jmp .L_021A
jmp .L_021C
.L_0222:
cmp dword ptr [ebp+16], 0
jne .L_0224
jmp .L_021A
.L_0224:
.L_0223:
cmp dword ptr [ebp-16], 0
je .L_0226
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset Lt_0227
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 8
.L_0226:
.L_0225:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_021B
jmp .L_021C
.L_0228:
cmp dword ptr [ebp+16], 0
jne .L_022A
jmp .L_021A
.L_022A:
.L_0229:
.L_022B:
push 62
call LEXSKIPTOKEN
add esp, 4
push 62
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .L_0231
.L_0232:
cmp dword ptr [ebp-32], 256
jne .L_0230
.L_0231:
jmp .L_022C
.L_0230:
.L_022E:
.L_022D:
jmp .L_022B
.L_022C:
jmp .L_021B
jmp .L_021C
.L_0233:
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .L_0236
.L_0237:
push 62
call LEXSKIPTOKEN
add esp, 4
push 63
call LEXSKIPTOKEN
add esp, 4
jmp .L_021B
jmp .L_0234
.L_0236:
cmp dword ptr [ebp-32], 274
jne .L_0238
.L_0239:
cmp dword ptr [ebp+16], 0
je .L_023B
inc dword ptr [ebp-24]
.L_023B:
.L_023A:
jmp .L_0234
.L_0238:
cmp dword ptr [ebp-32], 275
jne .L_023C
.L_023D:
cmp dword ptr [ebp+16], 0
je .L_023F
cmp dword ptr [ebp-24], 0
jne .L_0241
push 62
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HRTRIMMACROTEXT
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_021A
.L_0241:
.L_0240:
dec dword ptr [ebp-24]
.L_023F:
.L_023E:
jmp .L_0234
.L_023C:
cmp dword ptr [ebp-32], 265
jne .L_0242
.L_0243:
push 62
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-20], -1
.L_0242:
.L_0234:
jmp .L_021C
.L_0244:
cmp dword ptr [ebp-16], 0
je .L_0246
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset Lt_0247
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 8
.L_0246:
.L_0245:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_021B
jmp .L_021C
.L_021D:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .L_021C
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_0248+ebx*4-36]
.L_0248:
.int .L_0244
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_0244
.int .L_021C
.int .L_021C
.int .L_0233
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021F
.int .L_0222
.int .L_021C
.int .L_0228
.int .L_0228
.L_021C:
push 62
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_024A
.L_024C:
cmp dword ptr [ENV+576], 0
jne .L_024E
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0250
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0250:
.L_024F:
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 8
jmp .L_024D
.L_024E:
push 3
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0252
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0252:
.L_0251:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call WSTRASSIGN
add esp, 8
.L_024D:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0249
.L_0253:
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0255
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0255:
.L_0254:
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push 129
push offset Lt_02BB
call fb_StrAssign
add esp, 20
push offset Lt_02BB
lea eax, [SYMB+98768]
push eax
call HASHLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0257
cmp dword ptr [ebp-20], 0
jne .L_0259
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .L_0258
.L_0259:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.L_0258:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .L_0256
.L_0257:
cmp dword ptr [ebp-20], 0
je .L_025B
push offset Lt_025C
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call ZSTRASSIGN
add esp, 8
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRCONCATASSIGN
add esp, 8
jmp .L_025A
.L_025B:
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 8
.L_025A:
.L_0256:
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0249
.L_025D:
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_025F
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_025F:
.L_025E:
call LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 8
push 62
call LEXSKIPTOKEN
add esp, 4
jmp .L_0249
.L_024A:
cmp dword ptr [ebp-28], 4
ja .L_025D
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_0260+ebx*4]
.L_0260:
.int .L_0253
.int .L_0253
.int .L_0253
.int .L_025D
.int .L_024C
.L_0249:
.L_021B:
jmp .L_0219
.L_021A:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0218:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02BB,129

.section .text
.balign 16
HREADDEFINETEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0261:
cmp dword ptr [ENV+576], 0
jne .L_0264
push dword ptr [ebp+20]
call PPREADLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_0266
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
je .L_0268
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 20
jmp .L_0267
.L_0268:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0269
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 20
.L_0269:
.L_0267:
jmp .L_0265
.L_0266:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-4]
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call SYMBADDDEFINE
add esp, 24
.L_0265:
jmp .L_0263
.L_0264:
push dword ptr [ebp+20]
call PPREADLITERALW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_026B
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
je .L_026D
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 20
jmp .L_026C
.L_026D:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call fb_WstrCompare
add esp, 8
test eax, eax
je .L_026E
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 20
.L_026E:
.L_026C:
jmp .L_026A
.L_026B:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call fb_WstrLen
add esp, 4
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call SYMBADDDEFINEW
add esp, 24
.L_026A:
.L_0263:
.L_0262:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMATCHPARAMELLIPSIS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_026F:
mov dword ptr [ebp-4], 0
push 34
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0272
push 34
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0274
push 34
push 2
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0276
push 34
call LEXSKIPTOKEN
add esp, 4
push 34
call LEXSKIPTOKEN
add esp, 4
push 34
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
.L_0276:
.L_0275:
.L_0274:
.L_0273:
.L_0272:
.L_0271:
.L_0270:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_006C:	.ascii	"expanding: \0"
.balign 4
Lt_0105:	.ascii	"\"\0"
.balign 4
Lt_0106:	.ascii	"$\"\0"
.balign 4
Lt_0107:	.ascii	"\"\"\0"
.balign 4
Lt_01CB:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_01CC:	.ascii	"\42\0\0\0\0\0\0\0"
.balign 4
Lt_01CD:	.ascii	"\42\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_0227:	.ascii	"\n\0"
.balign 4
Lt_0247:	.ascii	" \0"
.balign 4
Lt_025C:	.ascii	"#\0"
