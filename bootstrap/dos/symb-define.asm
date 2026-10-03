	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBDEFINEINIT
_SYMBDEFINEINIT:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_02A3:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 6
push 12
push 500
lea eax, [_SYMB+98688]
push eax
call _LISTINIT
add esp, 16
push 6
push 16
push 1000
lea eax, [_SYMB+98720]
push eax
call _LISTINIT
add esp, 16
push -1
push 16
lea eax, [_SYMB+98752]
push eax
call _HASHINIT
add esp, 12
mov dword ptr [ebp-56], 0
.L_02A8:
push 0
push 0
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-56]
sal eax, 4
cmp dword ptr [_DEFTB+eax+4], 0
je .L_02AA
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ebx, dword ptr [_DEFTB+eax+8]
and ebx, 1
je .L_02AC
push 0
push -1
push 2
push offset _Lt_01BF
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 2
push offset _Lt_01BF
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_02AC:
.L_02AB:
.L_02AA:
.L_02A9:
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+8]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+12]
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax]
call _SYMBADDDEFINE
add esp, 24
.L_02A6:
inc dword ptr [ebp-56]
.L_02A5:
cmp dword ptr [ebp-56], 36
jle .L_02A8
.L_02A7:
push 0
push 0
push 0
push 0
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 3
push offset _Lt_02B0
push -1
push -1
push 0
push dword ptr [_ENV+268]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 6
push offset _Lt_02AF
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
call _SYMBADDDEFINE
add esp, 24
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_ENV+108], 11
jne .L_02B5
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02B6
call _SYMBADDDEFINE
add esp, 24
.L_02B5:
.L_02B4:
mov eax, dword ptr [_ENV+284]
and eax, 1
je .L_02B8
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02B9
call _SYMBADDDEFINE
add esp, 24
jmp .L_02B7
.L_02B8:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02BA
call _SYMBADDDEFINE
add esp, 24
.L_02B7:
call _FBIS64BIT
test eax, eax
je .L_02BC
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02BD
call _SYMBADDDEFINE
add esp, 24
.L_02BC:
.L_02BB:
call _FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 2
je .L_02C1
.L_02C2:
cmp dword ptr [ebp-56], 3
jne .L_02C0
.L_02C1:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02C3
call _SYMBADDDEFINE
add esp, 24
jmp .L_02BE
.L_02C0:
cmp dword ptr [ebp-56], 0
je .L_02C5
.L_02C6:
cmp dword ptr [ebp-56], 1
jne .L_02C4
.L_02C5:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02C7
call _SYMBADDDEFINE
add esp, 24
push 1
push offset _HDEFASM_CB
push 0
push 0
push 0
push offset _Lt_02C8
call _SYMBADDDEFINE
add esp, 24
jmp .L_02BE
.L_02C4:
cmp dword ptr [ebp-56], 4
je .L_02CA
.L_02CB:
cmp dword ptr [ebp-56], 5
je .L_02CA
.L_02CC:
cmp dword ptr [ebp-56], 6
jne .L_02C9
.L_02CA:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02CD
call _SYMBADDDEFINE
add esp, 24
.L_02C9:
.L_02BE:
call _FBISHOSTBIGENDIAN
test eax, eax
je .L_02CF
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02D0
call _SYMBADDDEFINE
add esp, 24
.L_02CF:
.L_02CE:
cmp dword ptr [ebp+8], 0
je .L_02D2
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02D3
call _SYMBADDDEFINE
add esp, 24
.L_02D2:
.L_02D1:
cmp dword ptr [_ENV+116], 1
jl .L_02D5
push 0
push 0
push 0
push 0
push 0
push offset _Lt_02D6
call _SYMBADDDEFINE
add esp, 24
.L_02D5:
.L_02D4:
push 0
push -1
push dword ptr [_ENV+124]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-12]
push offset _Lt_02D7
call _SYMBADDDEFINE
add esp, 24
mov dword ptr [_SYMB+98764], 0
push 0
push 32
lea eax, [_SYMB+98768]
push eax
call _HASHINIT
add esp, 12
mov dword ptr [ebp-56], 0
.L_02DB:
mov eax, dword ptr [ebp-56]
imul eax, 40
push dword ptr [_MACROTB+eax+20]
push 0
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+16]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .L_02DD
.L_02E0:
mov ebx, dword ptr [ebp-56]
imul ebx, 40
lea eax, [_MACROTB+ebx]
mov ebx, dword ptr [ebp-72]
sal ebx, 2
add eax, ebx
push dword ptr [eax+20]
push dword ptr [ebp-64]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-64], eax
.L_02DE:
inc dword ptr [ebp-72]
.L_02DD:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .L_02E0
.L_02DF:
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+4]
or ebx, 8
push ebx
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx+16]
push 0
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx]
call _SYMBADDDEFINEMACRO
add esp, 20
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [ebp-68]
mov ecx, dword ptr [_MACROTB+eax+8]
mov dword ptr [ebx+76], ecx
mov ecx, dword ptr [ebp-56]
imul ecx, 40
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [_MACROTB+ecx+12]
mov dword ptr [ebx+80], eax
.L_02D9:
inc dword ptr [ebp-56]
.L_02D8:
cmp dword ptr [ebp-56], 12
jle .L_02DB
.L_02DA:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_02A4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDEFINEEND
_SYMBDEFINEEND:
.L_02E1:
lea eax, [_SYMB+98768]
push eax
call _HASHEND
add esp, 4
mov dword ptr [_SYMB+98764], 0
lea eax, [_SYMB+98752]
push eax
call _HASHEND
add esp, 4
lea eax, [_SYMB+98688]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98720]
push eax
call _LISTEND
add esp, 4
.L_02E2:
ret
.balign 16

.globl _SYMBADDDEFINE
_SYMBADDDEFINE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02E3:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 4
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02E6
jmp .L_02E4
.L_02E6:
.L_02E5:
mov eax, dword ptr [ebp+16]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEW
_SYMBADDDEFINEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02E7:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 7
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02EA
jmp .L_02E8
.L_02EA:
.L_02E9:
mov eax, dword ptr [ebp+16]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_WstrAssign
add esp, 12
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEMACRO
_SYMBADDDEFINEMACRO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02EB:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02EE
jmp .L_02EC
.L_02EE:
.L_02ED:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+76], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+80], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEPARAM
_SYMBADDDEFINEPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_02F6:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98688]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_Lt_0300], eax
cmp dword ptr [ebp+8], 0
je .L_02F9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0300]
mov dword ptr [eax+8], ebx
jmp .L_02F8
.L_02F9:
cmp dword ptr [_SYMB+98764], 0
jle .L_02FB
call _HRESETDEFHASH
.L_02FB:
.L_02FA:
.L_02F8:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [_Lt_0300]
mov dword ptr [ebx], eax
mov eax, dword ptr [_Lt_0300]
push dword ptr [eax]
push dword ptr [ebp+12]
call _HUCASE
add esp, 8
mov eax, dword ptr [_Lt_0300]
push dword ptr [eax]
call _HASHHASH
add esp, 4
mov dword ptr [_Lt_0301], eax
push dword ptr [_Lt_0301]
mov eax, dword ptr [_Lt_0300]
push dword ptr [eax]
lea eax, [_SYMB+98768]
push eax
call _HASHLOOKUPEX
add esp, 12
test eax, eax
je .L_02FD
mov eax, dword ptr [_Lt_0300]
cmp dword ptr [eax], 0
je .L_02FF
mov eax, dword ptr [_Lt_0300]
push dword ptr [eax]
call _free
add esp, 4
.L_02FF:
.L_02FE:
push dword ptr [_Lt_0300]
lea eax, [_SYMB+98688]
push eax
call _LISTDELNODE
add esp, 8
mov dword ptr [ebp-4], 0
jmp .L_02F7
.L_02FD:
.L_02FC:
push dword ptr [_Lt_0301]
push dword ptr [_Lt_0300]
mov eax, dword ptr [_Lt_0300]
push dword ptr [eax]
lea eax, [_SYMB+98768]
push eax
call _HASHADD
add esp, 16
lea ebx, [_SYMB+98688]
mov ecx, dword ptr [_SYMB+98764]
sal ecx, 3
add ebx, ecx
mov dword ptr [ebx+92], eax
lea eax, [_SYMB+98688]
mov ebx, dword ptr [_SYMB+98764]
sal ebx, 3
add eax, ebx
mov ebx, dword ptr [_Lt_0301]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [_Lt_0300]
mov eax, dword ptr [_SYMB+98764]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_0300]
mov dword ptr [eax+8], 0
inc dword ptr [_SYMB+98764]
mov eax, dword ptr [_Lt_0300]
mov dword ptr [ebp-4], eax
.L_02F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0300,4
.balign 4
	.lcomm	_Lt_0301,4

.section .text
.balign 16

.globl _SYMBADDDEFINETOK
_SYMBADDDEFINETOK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0302:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98720]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_Lt_030C], eax
cmp dword ptr [ebp+8], 0
je .L_0305
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_030C]
mov dword ptr [eax+12], ebx
.L_0305:
.L_0304:
mov ebx, dword ptr [_Lt_030C]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [_Lt_030C]
mov dword ptr [eax+12], 0
mov eax, dword ptr [_Lt_030C]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
jmp .L_0307
.L_0309:
mov ebx, dword ptr [_Lt_030C]
mov dword ptr [ebx+4], 0
jmp .L_0306
.L_030A:
mov ebx, dword ptr [_Lt_030C]
mov dword ptr [ebx+4], 0
jmp .L_0306
.L_0307:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967294
cmp ebx, 1
ja .L_0306
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_030B+ebx*4-8]
_.L_030B:
.int .L_0309
.int .L_030A
.L_0306:
mov ebx, dword ptr [_Lt_030C]
mov dword ptr [ebp-4], ebx
.L_0303:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_030C,4

.section .text
.balign 16

.globl _SYMBDELDEFINETOK
_SYMBDELDEFINETOK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_030D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_0310
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .L_030F
.L_0310:
mov dword ptr [ebp-4], 0
.L_030F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .L_0313
.L_0314:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_0316
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.L_0316:
.L_0315:
jmp .L_0311
.L_0313:
cmp dword ptr [ebp-8], 3
jne .L_0317
.L_0318:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_031A
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.L_031A:
.L_0319:
.L_0317:
.L_0311:
push dword ptr [ebp+8]
lea ebx, [_SYMB+98720]
push ebx
call _LISTDELNODE
add esp, 8
.L_030E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELDEFINE
_SYMBDELDEFINE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0325:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_0328
jmp .L_0326
.L_0328:
.L_0327:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .L_032A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_032C
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_032E
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.L_032E:
.L_032D:
jmp .L_032B
.L_032C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_0330
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.L_0330:
.L_032F:
.L_032B:
jmp .L_0329
.L_032A:
push dword ptr [ebp+8]
call _HDELDEFINETOKENS
add esp, 4
.L_0329:
push dword ptr [ebp+8]
call _HDELDEFINEPARAMS
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
mov dword ptr [ebp-4], -1
.L_0326:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symbzdefine:
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
_HDEFFILE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0069:
push 0
push 261
lea eax, [_ENV+304]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_006A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFPATH_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push -1
call _FBGETINPUTFILEPARENTDIR
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_006C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFUNCTION_CB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .L_0070
push 0
push 16
push offset _Lt_001F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_006F
.L_0070:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+12]
and eax, 8192
test eax, eax
je .L_0071
push 0
push 20
push offset _Lt_0020
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_006F
.L_0071:
push 0
push 0
push dword ptr [_PARSER+108]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_006F:
.L_006E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLINE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0072:
push 0
push -1
mov eax, dword ptr [_LEX+213452]
push dword ptr [eax+4280]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0073:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_UNIXTIMETODATESERIAL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0074:
fild qword ptr [ebp+8]
fdiv qword ptr [_Lt_0331]
fadd qword ptr [_Lt_0332]
fstp qword ptr [ebp-8]
.L_0075:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKSOURCEDATEEPOCH:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov byte ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push dword ptr [ebp+8]
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_0079
mov byte ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0077
.L_0079:
.L_0078:
mov dword ptr [ebp-28], 0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-32], eax
jmp .L_007B
.L_007E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-28]
movzx ebx, byte ptr [ecx]
cmp ebx, 57
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0080
mov byte ptr [ebp-4], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0077
.L_0080:
.L_007F:
.L_007C:
inc dword ptr [ebp-28]
.L_007B:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_007E
.L_007D:
push dword ptr [ebp+8]
call _fb_VALULNG
add esp, 4
push edx
push eax
fild qword ptr [esp]
add esp, 8
cmp edx, 0
jns .L_0335
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_0335:
fstp qword ptr [ebp-24]
fld qword ptr [ebp-24]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fld dword ptr [esp]
fcomip
jbe .L_0336
fistp qword ptr [esp]
pop edx
pop eax
jmp .L_0337
.L_0336:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop edx
pop eax
xor eax, 0x80000000
.L_0337:
cmp eax, 58
jb .L_0082
ja .L_0338
cmp edx, 4294197631
jbe .L_0082
.L_0338:
mov byte ptr [ebp-4], 0
lea edx, [ebp-16]
push edx
call _fb_StrDelete
add esp, 4
jmp .L_0077
.L_0082:
.L_0081:
mov byte ptr [ebp-4], 1
lea edx, [ebp-16]
push edx
call _fb_StrDelete
add esp, 4
jmp .L_0077
lea edx, [ebp-16]
push edx
call _fb_StrDelete
add esp, 4
.L_0077:
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETCOMPILETIME:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0083:
cmp dword ptr [_Lt_0339], 0
jne .L_0086
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [_Lt_0339], 1
push 0
push -1
push 17
push offset _Lt_0087
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
call _fb_GetEnviron
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0089
lea eax, [ebp-20]
push eax
call _HCHECKSOURCEDATEEPOCH
add esp, 4
test al, al
je .L_008B
lea eax, [ebp-20]
push eax
call _fb_VALULNG
add esp, 4
push edx
push eax
call _UNIXTIMETODATESERIAL
add esp, 8
fstp qword ptr [_Lt_033A]
mov dword ptr [_Lt_0339], 2
jmp .L_008A
.L_008B:
push 0
push 1
push 0
push 0
push 328
call _ERRREPORTEX
add esp, 20
.L_008A:
.L_0089:
.L_0088:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0086:
.L_0085:
cmp dword ptr [_Lt_0339], 2
jne .L_008D
push dword ptr [_Lt_033A]
push dword ptr [_Lt_033A+4]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .L_008C
.L_008D:
call _fb_Now
fstp qword ptr [ebp-8]
.L_008C:
.L_0084:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0339:
.int 0
.balign 8
_Lt_033A:
.quad 0x0000000000000000

.section .text
.balign 16
_HDEFDATE_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008E:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 11
push offset _Lt_0090
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_008F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDATEISO_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0092:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 11
push offset _Lt_0094
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0093:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFTIME_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0096:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HGETCOMPILETIME
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0097:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFMULTITHREAD_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009A:
push 0
push -1
push dword ptr [_ENV+232]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_009B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTBYVAL_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009C:
push 0
push -1
mov eax, dword ptr [_ENV+1080]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_009D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTDYNAMIC_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_009E:
push 0
push -1
mov eax, dword ptr [_ENV+1096]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_009F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTESCAPE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A0:
push 0
push -1
mov eax, dword ptr [_ENV+1092]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTEXPLICIT_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A2:
push 0
push -1
mov eax, dword ptr [_ENV+1084]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTPRIVATE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A4:
push 0
push -1
mov eax, dword ptr [_ENV+1088]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTGOSUB_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A6:
push 0
push -1
mov eax, dword ptr [_ENV+1100]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFGUI_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A8:
push 0
push -1
mov eax, dword ptr [_ENV+256]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTIMIZE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AA:
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00AB:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTEXE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AC:
push 0
push -1
mov eax, dword ptr [_ENV+96]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00AD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTLIB_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AE:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00AF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTDLL_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B0:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00B1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTOBJ_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B2:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00B3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDEBUG_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B4:
push 0
push -1
push dword ptr [_ENV+144]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00B5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFERR_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B6:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+156], 0
je .L_00B9
mov dword ptr [ebp-16], 1
.L_00B9:
.L_00B8:
cmp dword ptr [_ENV+160], 0
je .L_00BB
or dword ptr [ebp-16], 2
.L_00BB:
.L_00BA:
cmp dword ptr [_ENV+164], 0
je .L_00BD
or dword ptr [ebp-16], 4
.L_00BD:
.L_00BC:
cmp dword ptr [_ENV+172], 0
je .L_00BF
or dword ptr [ebp-16], 8
.L_00BF:
.L_00BE:
cmp dword ptr [_ENV+176], 0
je .L_00C1
or dword ptr [ebp-16], 16
.L_00C1:
.L_00C0:
cmp dword ptr [_ENV+152], 0
je .L_00C3
or dword ptr [ebp-16], 32
.L_00C3:
.L_00C2:
cmp dword ptr [_ENV+148], 0
je .L_00C5
or dword ptr [ebp-16], 64
.L_00C5:
.L_00C4:
cmp dword ptr [_ENV+144], 0
je .L_00C7
or dword ptr [ebp-16], 128
.L_00C7:
.L_00C6:
cmp dword ptr [_ENV+168], 0
je .L_00C9
or dword ptr [ebp-16], 256
.L_00C9:
.L_00C8:
cmp dword ptr [_ENV+180], 0
je .L_00CB
or dword ptr [ebp-16], 512
.L_00CB:
.L_00CA:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00B7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLANG_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00CC:
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00CD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFBACKEND_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00CE:
push 0
push -1
push dword ptr [_ENV+104]
call _FBGETBACKENDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00CF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPU_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D0:
push 5
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D4
.L_00D5:
push 0
push 4
push offset _Lt_00D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_00D1
jmp .L_00D2
.L_00D4:
cmp dword ptr [ebp-16], 1
jne .L_00D7
.L_00D8:
push 0
push 4
push offset _Lt_00D9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_00D1
.L_00D7:
.L_00DA:
.L_00D2:
.L_00D1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPMODE_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DB:
push 6
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00DF
.L_00E0:
push 0
push 8
push offset _Lt_00E1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_00DC
jmp .L_00DD
.L_00DF:
cmp dword ptr [ebp-16], 1
jne .L_00E2
.L_00E3:
push 0
push 5
push offset _Lt_00E4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_00DC
.L_00E2:
.L_00E5:
.L_00DD:
.L_00DC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFGCC_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E6:
push 0
push -1
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00E7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFASM_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E8:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00EC
.L_00ED:
push 0
push 6
push offset _Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00EA
.L_00EC:
cmp dword ptr [ebp-16], 1
jne .L_00EF
.L_00F0:
push 0
push 4
push offset _Lt_00F1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00EF:
.L_00EA:
.L_00E9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_GETARGZ:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F2:
mov dword ptr [ebp-8], 0
cmp dword ptr [_ENV+576], 0
jne .L_00F5
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F7
mov dword ptr [ebp-4], 0
jmp .L_00F3
.L_00F7:
.L_00F6:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGN
add esp, 8
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F9
mov dword ptr [ebp-4], 0
jmp .L_00F3
.L_00F9:
.L_00F8:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGNW
add esp, 8
.L_00F4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_GETARGW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
push 0
push offset _Lt_0347
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [_ENV+576], 0
jne .L_00FD
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FF
mov dword ptr [ebp-4], 0
jmp .L_00FB
.L_00FF:
.L_00FE:
push dword ptr [ebp-8]
push offset _Lt_0347
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .L_00FC
.L_00FD:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0101
mov dword ptr [ebp-4], 0
jmp .L_00FB
.L_0101:
.L_0100:
push dword ptr [ebp-8]
push offset _Lt_0347
call _DWSTRCONCATASSIGN
add esp, 8
.L_00FC:
mov eax, dword ptr [_Lt_0347]
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0347,12

.section .text
.balign 16
_HARGAPPENDLFCHAR:
push ebx
.L_0102:
cmp dword ptr [_ENV+576], 0
jne .L_0105
push offset _Lt_0106
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRCONCATASSIGN
add esp, 8
mov ebx, dword ptr [_LEX+213452]
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [ebx+4312]
mov dword ptr [eax+4308], ecx
mov ecx, dword ptr [_LEX+213452]
inc dword ptr [ecx+4304]
jmp .L_0104
.L_0105:
push offset _Lt_0106
mov ecx, dword ptr [_LEX+213452]
lea eax, [ecx+4312]
push eax
call _DWSTRCONCATASSIGNA
add esp, 8
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [_LEX+213452]
mov ebx, dword ptr [eax+4312]
mov dword ptr [ecx+4308], ebx
mov ebx, dword ptr [_LEX+213452]
inc dword ptr [ebx+4304]
.L_0104:
.L_0103:
pop ebx
ret
.balign 16
_HARGINSERTARGA:
push ebp
mov ebp, esp
push ebx
.L_0107:
cmp dword ptr [_ENV+576], 0
jne .L_010A
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
mov ebx, dword ptr [_LEX+213452]
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [ebx+4312]
mov dword ptr [eax+4308], ecx
mov ecx, dword ptr [_LEX+213452]
push 0
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_StrLen
add esp, 8
add dword ptr [ebx+4304], eax
jmp .L_0109
.L_010A:
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGNA
add esp, 8
mov ebx, dword ptr [_LEX+213452]
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [ebx+4312]
mov dword ptr [eax+4308], ecx
mov ecx, dword ptr [_LEX+213452]
push 0
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_StrLen
add esp, 8
add dword ptr [ebx+4304], eax
.L_0109:
.L_0108:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HARGINSERTARGW:
push ebp
mov ebp, esp
push ebx
.L_010B:
cmp dword ptr [_ENV+576], 0
jne .L_010E
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGNW
add esp, 8
mov ebx, dword ptr [_LEX+213452]
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [ebx+4312]
mov dword ptr [eax+4308], ecx
mov ecx, dword ptr [_LEX+213452]
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_WstrLen
add esp, 4
add dword ptr [ebx+4304], eax
jmp .L_010D
.L_010E:
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+213452]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
mov ebx, dword ptr [_LEX+213452]
mov eax, dword ptr [_LEX+213452]
mov ecx, dword ptr [ebx+4312]
mov dword ptr [eax+4308], ecx
mov ecx, dword ptr [_LEX+213452]
push dword ptr [ebp+8]
mov ebx, ecx
call _fb_WstrLen
add esp, 4
add dword ptr [ebx+4304], eax
.L_010D:
.L_010C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_EVALZ:
push ebp
mov ebp, esp
sub esp, 48
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010F:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN
add esp, 8
cmp dword ptr [_ENV+900], 16
jl .L_0112
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0110
.L_0112:
.L_0111:
cmp dword ptr [ebp+8], 0
je .L_0114
call _LEXPUSHCTX
push 2
call _LEXINIT
add esp, 4
mov eax, dword ptr [_LEX+213452]
inc dword ptr [eax+4288]
push dword ptr [ebp+8]
call _HARGINSERTARGA
add esp, 4
call _HARGAPPENDLFCHAR
call _CEXPRESSION
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
cmp dword ptr [ebp-28], 0
je .L_0116
push dword ptr [ebp-28]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 16
jne .L_0118
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push dword ptr [ebp-28]
call _ASTCONSTFLUSHTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_011A
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_0348
.L_011A:
mov dword ptr [ebp-48], -1
.L_0348:
mov eax, dword ptr [ebp-48]
not eax
test eax, eax
je .L_011D
mov dword ptr [ebp-32], 17
.L_011D:
.L_011C:
jmp .L_0117
.L_0118:
push dword ptr [ebp-28]
call _ASTISCONSTANT
add esp, 4
test eax, eax
je .L_011E
mov eax, dword ptr [ebp-28]
push dword ptr [eax+12]
call _SYMBGETCONSTSTRASSTR
add esp, 4
push eax
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_011F
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0349
.L_011F:
mov dword ptr [ebp-36], -1
.L_0349:
mov eax, dword ptr [ebp-36]
not eax
test eax, eax
je .L_0122
mov dword ptr [ebp-32], 17
.L_0122:
.L_0121:
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
jmp .L_0117
.L_011E:
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-32], 11
push offset _Lt_0123
lea eax, [ebp-24]
push eax
call _DZSTRASSIGN
add esp, 8
.L_0117:
jmp .L_0115
.L_0116:
mov dword ptr [ebp-32], 17
.L_0115:
mov eax, dword ptr [_LEX+213452]
dec dword ptr [eax+4288]
call _LEXPOPCTX
cmp dword ptr [ebp-32], 0
je .L_0125
push 0
push 1
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-32]
call _ERRREPORTEX
add esp, 20
push 0
push 0
push -1
push 257
call _HSKIPUNTIL
add esp, 16
.L_0125:
.L_0124:
.L_0114:
.L_0113:
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0110:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_EVALW:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0126:
push 0
push offset _Lt_034E
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [_ENV+900], 16
jl .L_0129
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
mov eax, dword ptr [_Lt_034E]
mov dword ptr [ebp-4], eax
jmp .L_0127
.L_0129:
.L_0128:
cmp dword ptr [ebp+8], 0
je .L_012B
call _LEXPUSHCTX
push 2
call _LEXINIT
add esp, 4
mov eax, dword ptr [_LEX+213452]
inc dword ptr [eax+4288]
push dword ptr [ebp+8]
call _HARGINSERTARGW
add esp, 4
call _HARGAPPENDLFCHAR
call _CEXPRESSION
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-8], 0
je .L_012D
push dword ptr [ebp-8]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .L_012F
push dword ptr [ebp-8]
call _ASTCONSTFLUSHTOWSTR
add esp, 4
push eax
push offset _Lt_034E
call _DWSTRASSIGN
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_0130
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_034C
.L_0130:
mov dword ptr [ebp-16], -1
.L_034C:
mov eax, dword ptr [ebp-16]
not eax
test eax, eax
je .L_0133
mov dword ptr [ebp-12], 17
.L_0133:
.L_0132:
jmp .L_012E
.L_012F:
push dword ptr [ebp-8]
call _ASTISCONSTANT
add esp, 4
test eax, eax
je .L_0134
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _SYMBGETCONSTSTRASWSTR
add esp, 4
push eax
push offset _Lt_034E
call _DWSTRASSIGN
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_0135
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_034D
.L_0135:
mov dword ptr [ebp-16], -1
.L_034D:
mov eax, dword ptr [ebp-16]
not eax
test eax, eax
je .L_0138
mov dword ptr [ebp-12], 17
.L_0138:
.L_0137:
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
jmp .L_012E
.L_0134:
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-12], 11
push offset _Lt_0139
push offset _Lt_034E
call _DWSTRASSIGN
add esp, 8
.L_012E:
jmp .L_012C
.L_012D:
mov dword ptr [ebp-12], 17
.L_012C:
mov eax, dword ptr [_LEX+213452]
dec dword ptr [eax+4288]
call _LEXPOPCTX
cmp dword ptr [ebp-12], 0
je .L_013B
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _fb_WstrToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push -1
push 257
call _HSKIPUNTIL
add esp, 16
.L_013B:
.L_013A:
.L_012B:
.L_012A:
mov eax, dword ptr [_Lt_034E]
mov dword ptr [ebp-4], eax
.L_0127:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_034E,12

.section .text
.balign 16
_HDEFUNIQUEIDPUSH_CB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_013D:
cmp dword ptr [_PP+212], 0
je .L_0140
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_013E
.L_0140:
.L_013F:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0142
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_013E
.L_0142:
.L_0141:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0144
push 1
push 4
call _calloc
add esp, 8
mov dword ptr [ebp-20], eax
push 4294967295
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHADD
add esp, 16
jmp .L_0143
.L_0144:
cmp dword ptr [ebp-16], 0
je .L_0146
push dword ptr [ebp-16]
call _free
add esp, 4
.L_0146:
.L_0145:
.L_0143:
push 8
call _malloc
add esp, 4
mov dword ptr [ebp-24], eax
push 1
call _SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-28]
call _fb_StrLen
add esp, 8
inc eax
mov ebx, eax
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx], eax
push 0
push 0
push dword ptr [ebp-28]
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx], ebx
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.L_013E:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNIQUEID_CB:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0147:
cmp dword ptr [_PP+212], 0
je .L_014A
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0148
.L_014A:
.L_0149:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_014C
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0148
.L_014C:
.L_014B:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_014E
push dword ptr [ebp-16]
call _free
add esp, 4
.L_014E:
.L_014D:
cmp dword ptr [ebp-20], 0
je .L_0150
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_0152
push 0
push 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_0148
.L_0152:
.L_0151:
.L_0150:
.L_014F:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.L_0148:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNIQUEIDPOP_CB:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0153:
cmp dword ptr [_PP+212], 0
je .L_0156
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0154
.L_0156:
.L_0155:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0158
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0154
.L_0158:
.L_0157:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_015A
push dword ptr [ebp-16]
call _free
add esp, 4
.L_015A:
.L_0159:
cmp dword ptr [ebp-20], 0
je .L_015C
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_015E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
call _free
add esp, 4
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
jmp .L_015D
.L_015E:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_015D:
jmp .L_015B
.L_015C:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_015B:
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign
add esp, 20
.L_0154:
lea ecx, [ebp-12]
push ecx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGCOUNT_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_015F:
cmp dword ptr [ebp+8], 0
je .L_0162
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+384]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0160
.L_0162:
.L_0161:
push 0
push 2
push offset _Lt_0163
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0160:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGEXTRACT_CB:
push ebp
mov ebp, esp
sub esp, 172
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0164:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0167
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ
add esp, 8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
call _HSTR2LONG
add esp, 8
test eax, eax
je .L_0169
cmp dword ptr [ebp-44], 0
jl .L_016B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+384]
dec ebx
mov eax, ebx
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jae .L_016D
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 12
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 8
lea eax, [ebp-148]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
lea eax, [ebp-172]
push eax
push dword ptr [ebp-52]
call _HSTR2ARGS
add esp, 8
test eax, eax
jle .L_016F
push 0
push -1
mov eax, dword ptr [ebp-44]
imul eax, 12
add eax, dword ptr [ebp-172]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
.L_016F:
.L_016E:
cmp dword ptr [ebp-52], 0
je .L_0171
push dword ptr [ebp-52]
call _free
add esp, 4
.L_0171:
.L_0170:
lea ebx, [ebp-172]
push ebx
call _fb_ArrayStrErase
add esp, 4
.L_016D:
.L_016C:
jmp .L_016A
.L_016B:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_016A:
jmp .L_0168
.L_0169:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_0168:
cmp dword ptr [ebp-28], 0
je .L_0173
push dword ptr [ebp-28]
call _free
add esp, 4
.L_0173:
.L_0172:
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0166
.L_0167:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_0166:
push 0
push -1
lea ebx, [ebp-24]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit
add esp, 20
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0165
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
.L_0165:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGLEFT_CB:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0174:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0177
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK
add esp, 8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0179
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE
add esp, 8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_017B
.L_017E:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0180
mov dword ptr [ebp-172], 0
mov eax, dword ptr [ebp-164]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_0182
.L_0185:
cmp dword ptr [ebp-172], 0
jle .L_0187
push 0
push 2
push offset _Lt_0188
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0187:
.L_0186:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_0183:
inc dword ptr [ebp-172]
.L_0182:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_0185
.L_0184:
jmp .L_017D
.L_0180:
.L_017F:
.L_017C:
inc dword ptr [ebp-164]
.L_017B:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_017E
.L_017D:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_018A
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_018A:
.L_0189:
jmp .L_0178
.L_0179:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0178:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase
add esp, 4
jmp .L_0176
.L_0177:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_0176:
cmp dword ptr [ebp-36], 0
je .L_018C
push dword ptr [ebp-36]
call _free
add esp, 4
.L_018C:
.L_018B:
cmp dword ptr [ebp-32], 0
je .L_018E
push dword ptr [ebp-32]
call _free
add esp, 4
.L_018E:
.L_018D:
cmp dword ptr [ebp-28], 0
je .L_0190
push dword ptr [ebp-28]
call _free
add esp, 4
.L_0190:
.L_018F:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0175
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0175:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGRIGHT_CB:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0191:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0194
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK
add esp, 8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0196
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE
add esp, 8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_0198
.L_019B:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_019D
mov eax, dword ptr [ebp-164]
inc eax
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_019F
.L_01A2:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_01A4
push 0
push 2
push offset _Lt_0188
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01A4:
.L_01A3:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_01A0:
inc dword ptr [ebp-172]
.L_019F:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_01A2
.L_01A1:
jmp .L_019A
.L_019D:
.L_019C:
.L_0199:
inc dword ptr [ebp-164]
.L_0198:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_019B
.L_019A:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_01A6
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_01A6:
.L_01A5:
jmp .L_0195
.L_0196:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0195:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase
add esp, 4
jmp .L_0193
.L_0194:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_0193:
cmp dword ptr [ebp-36], 0
je .L_01A8
push dword ptr [ebp-36]
call _free
add esp, 4
.L_01A8:
.L_01A7:
cmp dword ptr [ebp-32], 0
je .L_01AA
push dword ptr [ebp-32]
call _free
add esp, 4
.L_01AA:
.L_01A9:
cmp dword ptr [ebp-28], 0
je .L_01AC
push dword ptr [ebp-28]
call _free
add esp, 4
.L_01AC:
.L_01AB:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0192:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFJOINZ_CB:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01AD:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01B0
push 0
push -1
push 0
push dword ptr [ebp-32]
push 0
push dword ptr [ebp-28]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01AF
.L_01B0:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01AF:
cmp dword ptr [ebp-28], 0
je .L_01B3
push dword ptr [ebp-28]
call _free
add esp, 4
.L_01B3:
.L_01B2:
cmp dword ptr [ebp-32], 0
je .L_01B5
push dword ptr [ebp-32]
call _free
add esp, 4
.L_01B5:
.L_01B4:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_01AE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFJOINW_CB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01B6:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push offset _Lt_0357
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01B9
push dword ptr [ebp-8]
push offset _Lt_0357
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
push offset _Lt_0357
call _DWSTRCONCATASSIGN
add esp, 8
jmp .L_01B8
.L_01B9:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_01B8:
mov ebx, dword ptr [_Lt_0357]
mov dword ptr [ebp-4], ebx
.L_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0357,12

.section .text
.balign 16
_HDEFQUOTEZ_CB:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01BA:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .L_01BD
push 0
push 3
push offset _Lt_01C0
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01C1
push offset _Lt_01BF
push dword ptr [ebp-16]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_01BF
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01BC
.L_01BD:
push 0
push 3
push offset _Lt_01C1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01BC:
cmp dword ptr [ebp-16], 0
je .L_01C3
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01C3:
.L_01C2:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_01BB:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFQUOTEW_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_01C4:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_035A
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
je .L_01C7
push offset _Lt_01C0
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_035A
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
push offset _Lt_01C1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_01BF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_035A
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-20]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
push offset _Lt_01BF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push offset _Lt_035A
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .L_01C6
.L_01C7:
push offset _Lt_01C1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_035A
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01C6:
mov eax, dword ptr [_Lt_035A]
mov dword ptr [ebp-4], eax
.L_01C5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_035A,12

.section .text
.balign 16
_HDEFUNQUOTEZ_CB:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01CD:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .L_01D0
push 0
push dword ptr [ebp-16]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 3
jl .L_01D1
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_035B
.L_01D1:
mov dword ptr [ebp-36], 0
.L_035B:
cmp dword ptr [ebp-36], 0
je .L_01D4
push 0
push -1
push offset _Lt_01BF
push offset _Lt_01C1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -3
push eax
push 3
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01D3
.L_01D4:
cmp dword ptr [ebp-32], 2
jl .L_01D7
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_035C
.L_01D7:
mov dword ptr [ebp-40], 0
.L_035C:
cmp dword ptr [ebp-40], 0
je .L_01D6
push 0
push -1
push offset _Lt_01BF
push offset _Lt_01C1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -2
push eax
push 2
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01D3
.L_01D6:
push 0
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.L_01D3:
.L_01D0:
.L_01CF:
cmp dword ptr [ebp-16], 0
je .L_01DB
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01DB:
.L_01DA:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_01CE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNQUOTEW_CB:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01DC:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_0366
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
je .L_01DF
push dword ptr [ebp-8]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 3
jl .L_01E0
mov eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-8]
add ebx, dword ptr [ebp-12]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0364
.L_01E0:
mov dword ptr [ebp-16], 0
.L_0364:
cmp dword ptr [ebp-16], 0
je .L_01E3
push offset _Lt_01BF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_01C1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -3
push eax
push 3
push dword ptr [ebp-8]
call _fb_WstrMid
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_0366
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-32]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-28]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .L_01E2
.L_01E3:
cmp dword ptr [ebp-12], 2
jl .L_01E8
mov eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
add ebx, dword ptr [ebp-12]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0365
.L_01E8:
mov dword ptr [ebp-20], 0
.L_0365:
cmp dword ptr [ebp-20], 0
je .L_01E7
push offset _Lt_01BF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_01C1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -2
push eax
push 2
push dword ptr [ebp-8]
call _fb_WstrMid
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_0366
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-32]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-28]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .L_01E2
.L_01E7:
push dword ptr [ebp-8]
push offset _Lt_0366
call _DWSTRASSIGN
add esp, 8
.L_01E2:
.L_01DF:
.L_01DE:
mov eax, dword ptr [_Lt_0366]
mov dword ptr [ebp-4], eax
.L_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0366,12

.section .text
.balign 16
_HDEFEVALZ_CB:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01ED:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HMACRO_EVALZ
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .L_01F0
push dword ptr [ebp-16]
call _free
add esp, 4
.L_01F0:
.L_01EF:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_01EE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFEVALW_CB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01F1:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HMACRO_EVALW
add esp, 8
push eax
push offset _Lt_036E
call _DWSTRASSIGN
add esp, 8
mov eax, dword ptr [_Lt_036E]
mov dword ptr [ebp-4], eax
.L_01F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_036E,12

.section .text
.balign 16
_HDEFIIFZ_CB:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01F3:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-36], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01F6
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-48]
push eax
call _fb_VALBOOL
add esp, 4
mov byte ptr [ebp-52], al
push 0
push -1
lea eax, [ebp-48]
push eax
call _fb_VALBOOL
add esp, 4
test al, al
je .L_01F7
push 0
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
jmp .L_036F
.L_01F7:
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
.L_036F:
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01F5
.L_01F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01F5:
cmp dword ptr [ebp-36], 0
je .L_01FA
push dword ptr [ebp-36]
call _free
add esp, 4
.L_01FA:
.L_01F9:
cmp dword ptr [ebp-32], 0
je .L_01FC
push dword ptr [ebp-32]
call _free
add esp, 4
.L_01FC:
.L_01FB:
cmp dword ptr [ebp-28], 0
je .L_01FE
push dword ptr [ebp-28]
call _free
add esp, 4
.L_01FE:
.L_01FD:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_01F4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFIIFW_CB:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01FF:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-12], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0202
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HMACRO_EVALW
add esp, 8
push eax
push offset _Lt_0377
call _DWSTRASSIGN
add esp, 8
push 0
push -1
push dword ptr [_Lt_0377]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _fb_VALBOOL
add esp, 4
test al, al
je .L_0203
push dword ptr [ebp-12]
call _fb_WstrLen
add esp, 4
push eax
call _fb_WstrAlloc
add esp, 4
mov dword ptr [ebp-36], eax
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-36]
call _fb_WstrAssign
add esp, 12
jmp .L_0373
.L_0203:
push dword ptr [ebp-16]
call _fb_WstrLen
add esp, 4
push eax
call _fb_WstrAlloc
add esp, 4
mov dword ptr [ebp-36], eax
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-36]
call _fb_WstrAssign
add esp, 12
.L_0373:
mov eax, dword ptr [ebp-36]
lea ebx, [eax]
push ebx
push offset _Lt_0378
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-36]
call _fb_WstrDelete
add esp, 4
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0201
.L_0202:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_0201:
mov ebx, dword ptr [_Lt_0378]
mov dword ptr [ebp-4], ebx
.L_0200:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0378,12
.balign 4
	.lcomm	_Lt_0377,12

.section .text
.balign 16
_HDEFQUERYSYMZ_CB:
push ebp
mov ebp, esp
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0205:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [_ENV+900], 16
jl .L_0208
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0206
.L_0208:
.L_0207:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_020A
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _HMACRO_EVALZ
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-44]
push eax
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-48], eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-44]
push eax
call _HSTR2LONG
add esp, 8
test eax, eax
je .L_020C
mov dword ptr [ebp-52], -2147483648
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-48]
and eax, 255
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-48]
and eax, 65280
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-88], 0
call _LEXPUSHCTX
push 2
call _LEXINIT
add esp, 4
mov eax, dword ptr [_LEX+213452]
inc dword ptr [eax+4288]
push dword ptr [ebp-32]
call _HARGINSERTARGA
add esp, 4
call _HARGAPPENDLFCHAR
cmp dword ptr [ebp-84], 0
jne .L_020E
cmp dword ptr [ebp-80], 3
je .L_0211
.L_0212:
cmp dword ptr [ebp-80], 4
je .L_0211
.L_0213:
cmp dword ptr [ebp-80], 5
je .L_0211
.L_0214:
cmp dword ptr [ebp-80], 6
jne .L_0210
.L_0211:
or dword ptr [ebp-84], 256
jmp .L_020F
.L_0210:
or dword ptr [ebp-84], 768
.L_0215:
.L_020F:
.L_020E:
.L_020D:
mov eax, dword ptr [ebp-84]
and eax, 256
test eax, eax
je .L_0217
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-96], eax
cmp dword ptr [ebp-96], 0
je .L_021B
.L_021C:
cmp dword ptr [ebp-96], 1
je .L_021B
.L_021D:
cmp dword ptr [ebp-96], 2
je .L_021B
.L_021E:
cmp dword ptr [ebp-96], 5
jne .L_021A
.L_021B:
push 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-100]
push eax
call _CIDENTIFIERORUDTMEMBER
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_0221
mov dword ptr [ebp-60], -1
.L_0221:
.L_0220:
.L_021A:
.L_0218:
cmp dword ptr [ebp-72], 0
je .L_0223
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-96], ebx
cmp dword ptr [ebp-96], 6
jne .L_0226
.L_0227:
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -2147483648
jne .L_0229
cmp dword ptr [ebp-80], 0
je .L_022C
.L_022D:
cmp dword ptr [ebp-80], 6
jne .L_022B
.L_022C:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_022A
.L_022B:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-60], -1
.L_022E:
.L_022A:
jmp .L_0228
.L_0229:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0228:
jmp .L_0224
.L_0226:
cmp dword ptr [ebp-96], 10
jne .L_022F
.L_0230:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-76], ebx
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0232
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call _CUDTTYPEMEMBER
add esp, 20
.L_0232:
.L_0231:
jmp .L_0224
.L_022F:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-76], eax
.L_0233:
.L_0224:
.L_0223:
.L_0222:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .L_0234
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
jmp .L_0379
.L_0234:
mov dword ptr [ebp-92], -1
.L_0379:
mov eax, dword ptr [ebp-92]
not eax
test eax, eax
je .L_0237
mov dword ptr [ebp-60], -1
.L_0237:
.L_0236:
cmp dword ptr [ebp-60], 0
je .L_0239
mov dword ptr [ebp-72], 0
call _LEXPOPCTX
call _LEXPUSHCTX
push 2
call _LEXINIT
add esp, 4
push dword ptr [ebp-32]
call _HARGINSERTARGA
add esp, 4
call _HARGAPPENDLFCHAR
.L_0239:
.L_0238:
.L_0217:
.L_0216:
mov eax, dword ptr [ebp-84]
and eax, 512
test eax, eax
je .L_023B
cmp dword ptr [ebp-72], 0
jne .L_023D
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call _CTYPEOF
add esp, 20
.L_023D:
.L_023C:
.L_023B:
.L_023A:
cmp dword ptr [ebp-80], 0
jne .L_023F
.L_0240:
cmp dword ptr [ebp-72], 0
je .L_0242
push 0
push -1
mov eax, dword ptr [ebp-72]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0241
.L_0242:
cmp dword ptr [ebp-76], 0
je .L_0243
push 0
push -1
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0241
.L_0243:
push 0
push 2
push offset _Lt_0163
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0241:
jmp .L_023E
.L_023F:
cmp dword ptr [ebp-80], 1
jne .L_0244
.L_0245:
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_023E
.L_0244:
cmp dword ptr [ebp-80], 2
jne .L_0246
.L_0247:
push 0
push -1
mov eax, dword ptr [ebp-52]
and eax, 480
je .L_0248
mov dword ptr [ebp-92], 24
jmp .L_037A
.L_0248:
mov eax, dword ptr [ebp-52]
and eax, 31
mov dword ptr [ebp-92], eax
.L_037A:
mov eax, dword ptr [ebp-92]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_023E
.L_0246:
cmp dword ptr [ebp-80], 3
je .L_024B
.L_024C:
cmp dword ptr [ebp-80], 4
jne .L_024A
.L_024B:
push 0
push -1
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-64]
push dword ptr [ebp-68]
push dword ptr [ebp-76]
push dword ptr [ebp-52]
call _SYMBTYPETOSTR
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-80], 4
jne .L_024E
push 95
push 32
push dword ptr [ebp-24]
call _HREPLACECHAR
add esp, 12
push 95
push 46
push dword ptr [ebp-24]
call _HREPLACECHAR
add esp, 12
push 95
push 40
push dword ptr [ebp-24]
call _HREPLACECHAR
add esp, 12
push 95
push 41
push dword ptr [ebp-24]
call _HREPLACECHAR
add esp, 12
push 95
push 42
push dword ptr [ebp-24]
call _HREPLACECHAR
add esp, 12
.L_024E:
.L_024D:
jmp .L_023E
.L_024A:
cmp dword ptr [ebp-80], 5
jne .L_0253
.L_0254:
cmp dword ptr [ebp-72], 0
je .L_0256
push 0
push dword ptr [ebp-72]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call _SYMBMANGLETYPE
add esp, 16
call _SYMBMANGLERESETABBREV
jmp .L_0255
.L_0256:
cmp dword ptr [ebp-76], 0
je .L_0257
push 0
push dword ptr [ebp-76]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call _SYMBMANGLETYPE
add esp, 16
call _SYMBMANGLERESETABBREV
jmp .L_0255
.L_0257:
push 0
push 2
push offset _Lt_0163
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_0255:
jmp .L_023E
.L_0253:
cmp dword ptr [ebp-80], 6
jne .L_0258
.L_0259:
push 0
push -1
cmp dword ptr [ebp-72], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_023E
.L_0258:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
push 0
push 3
push offset _Lt_025B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_025A:
.L_023E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_025D
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL
add esp, 16
.L_025D:
.L_025C:
mov eax, dword ptr [_LEX+213452]
dec dword ptr [eax+4288]
call _LEXPOPCTX
jmp .L_020B
.L_020C:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_020B:
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0209
.L_020A:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_0209:
cmp dword ptr [ebp-28], 0
je .L_025F
push dword ptr [ebp-28]
call _free
add esp, 4
.L_025F:
.L_025E:
cmp dword ptr [ebp-32], 0
je .L_0261
push dword ptr [ebp-32]
call _free
add esp, 4
.L_0261:
.L_0260:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0206:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESETDEFHASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02EF:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_SYMB+98764]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_02F2
.L_02F5:
lea eax, [_SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+96]
lea eax, [_SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+92]
lea eax, [_SYMB+98768]
push eax
call _HASHDEL
add esp, 12
.L_02F3:
inc dword ptr [ebp-4]
.L_02F2:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_02F5
.L_02F4:
mov dword ptr [_SYMB+98764], 0
.L_02F0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELDEFINEPARAMS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_031B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_031D:
cmp dword ptr [ebp-4], 0
je .L_031E
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_0320
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
.L_0320:
.L_031F:
push dword ptr [ebp-4]
lea eax, [_SYMB+98688]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_031D
.L_031E:
.L_031C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELDEFINETOKENS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0321:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_0323:
cmp dword ptr [ebp-4], 0
je .L_0324
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBDELDEFINETOK
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0323
.L_0324:
.L_0322:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0005:	.ascii	"10\0"
.balign 4
_Lt_000A:	.ascii	"1.10.1\0"
.balign 4
_Lt_000B:	.ascii	"12-24-2023\0"
.balign 4
_Lt_000C:	.ascii	"2023-12-24\0"
.balign 4
_Lt_000E:	.ascii	"FreeBASIC 1.10.1\0"
.balign 4
_Lt_001F:	.ascii	"__FB_MAINPROC__\0"
.balign 4
_Lt_0020:	.ascii	"__FB_MODLEVELPROC__\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0087:	.ascii	"SOURCE_DATE_EPOCH\0"
.balign 4
_Lt_0090:	.ascii	"mm-dd-yyyy\0"
.balign 4
_Lt_0094:	.ascii	"yyyy-mm-dd\0"
.balign 4
_Lt_0098:	.ascii	"hh:nn:ss\0"
.balign 4
_Lt_00D6:	.ascii	"x87\0"
.balign 4
_Lt_00D9:	.ascii	"sse\0"
.balign 4
_Lt_00E1:	.ascii	"precise\0"
.balign 4
_Lt_00E4:	.ascii	"fast\0"
.balign 4
_Lt_00EE:	.ascii	"intel\0"
.balign 4
_Lt_00F1:	.ascii	"att\0"
.balign 4
_Lt_0106:	.ascii	"\n\0"
.balign 4
_Lt_0123:	.ascii	"\0""\0"
.balign 4
_Lt_0139:	.ascii	"\0\0"
.balign 4
_Lt_0163:	.ascii	"0\0"
.balign 4
_Lt_0188:	.ascii	" \0"
.balign 4
_Lt_01BF:	.ascii	"\"\0"
.balign 4
_Lt_01C0:	.ascii	"$\"\0"
.balign 4
_Lt_01C1:	.ascii	"\"\"\0"
.balign 4
_Lt_025B:	.ascii	"-1\0"
.balign 4
_DEFTB:
.int _Lt_0262
.int _Lt_000A
.int 1
.long 0
.int _Lt_0263
.int _Lt_000B
.int 1
.long 0
.int _Lt_0264
.int _Lt_000C
.int 1
.long 0
.int _Lt_0265
.int _Lt_0004
.int 0
.long 0
.int _Lt_0266
.int _Lt_0005
.int 0
.long 0
.int _Lt_0267
.int _Lt_0004
.int 0
.long 0
.int _Lt_0268
.int _Lt_000E
.int 1
.long 0
.int _Lt_0269
.int _Lt_0000
.int 1
.long 0
.int _Lt_026A
.long 0
.int 0
.int _HDEFMULTITHREAD_CB
.int _Lt_026B
.long 0
.int 1
.int _HDEFFILE_CB
.int _Lt_026C
.long 0
.int 0
.int _HDEFFILE_CB
.int _Lt_026D
.long 0
.int 1
.int _HDEFFUNCTION_CB
.int _Lt_026E
.long 0
.int 0
.int _HDEFFUNCTION_CB
.int _Lt_026F
.long 0
.int 0
.int _HDEFLINE_CB
.int _Lt_0270
.long 0
.int 1
.int _HDEFDATE_CB
.int _Lt_0271
.long 0
.int 1
.int _HDEFDATEISO_CB
.int _Lt_0272
.long 0
.int 1
.int _HDEFTIME_CB
.int _Lt_0273
.long 0
.int 1
.int _HDEFPATH_CB
.int _Lt_0274
.long 0
.int 0
.int _HDEFOPTBYVAL_CB
.int _Lt_0275
.long 0
.int 0
.int _HDEFOPTDYNAMIC_CB
.int _Lt_0276
.long 0
.int 0
.int _HDEFOPTESCAPE_CB
.int _Lt_0277
.long 0
.int 0
.int _HDEFOPTEXPLICIT_CB
.int _Lt_0278
.long 0
.int 0
.int _HDEFOPTPRIVATE_CB
.int _Lt_0279
.long 0
.int 0
.int _HDEFOPTGOSUB_CB
.int _Lt_027A
.long 0
.int 0
.int _HDEFOUTEXE_CB
.int _Lt_027B
.long 0
.int 0
.int _HDEFOUTLIB_CB
.int _Lt_027C
.long 0
.int 0
.int _HDEFOUTDLL_CB
.int _Lt_027D
.long 0
.int 0
.int _HDEFOUTOBJ_CB
.int _Lt_027E
.long 0
.int 0
.int _HDEFDEBUG_CB
.int _Lt_027F
.long 0
.int 0
.int _HDEFERR_CB
.int _Lt_0280
.long 0
.int 1
.int _HDEFLANG_CB
.int _Lt_0281
.long 0
.int 1
.int _HDEFBACKEND_CB
.int _Lt_0282
.long 0
.int 1
.int _HDEFFPU_CB
.int _Lt_0283
.long 0
.int 1
.int _HDEFFPMODE_CB
.int _Lt_0284
.long 0
.int 0
.int _HDEFGCC_CB
.int _Lt_0285
.long 0
.int 0
.int _HDEFGUI_CB
.int _Lt_0286
.long 0
.int 0
.int _HDEFOPTIMIZE_CB
.balign 4
_Lt_0262:	.ascii	"__FB_VERSION__\0"
.balign 4
_Lt_0263:	.ascii	"__FB_BUILD_DATE__\0"
.balign 4
_Lt_0264:	.ascii	"__FB_BUILD_DATE_ISO__\0"
.balign 4
_Lt_0265:	.ascii	"__FB_VER_MAJOR__\0"
.balign 4
_Lt_0266:	.ascii	"__FB_VER_MINOR__\0"
.balign 4
_Lt_0267:	.ascii	"__FB_VER_PATCH__\0"
.balign 4
_Lt_0268:	.ascii	"__FB_SIGNATURE__\0"
.balign 4
_Lt_0269:	.ascii	"__FB_BUILD_SHA1__\0"
.balign 4
_Lt_026A:	.ascii	"__FB_MT__\0"
.balign 4
_Lt_026B:	.ascii	"__FILE__\0"
.balign 4
_Lt_026C:	.ascii	"__FILE_NQ__\0"
.balign 4
_Lt_026D:	.ascii	"__FUNCTION__\0"
.balign 4
_Lt_026E:	.ascii	"__FUNCTION_NQ__\0"
.balign 4
_Lt_026F:	.ascii	"__LINE__\0"
.balign 4
_Lt_0270:	.ascii	"__DATE__\0"
.balign 4
_Lt_0271:	.ascii	"__DATE_ISO__\0"
.balign 4
_Lt_0272:	.ascii	"__TIME__\0"
.balign 4
_Lt_0273:	.ascii	"__PATH__\0"
.balign 4
_Lt_0274:	.ascii	"__FB_OPTION_BYVAL__\0"
.balign 4
_Lt_0275:	.ascii	"__FB_OPTION_DYNAMIC__\0"
.balign 4
_Lt_0276:	.ascii	"__FB_OPTION_ESCAPE__\0"
.balign 4
_Lt_0277:	.ascii	"__FB_OPTION_EXPLICIT__\0"
.balign 4
_Lt_0278:	.ascii	"__FB_OPTION_PRIVATE__\0"
.balign 4
_Lt_0279:	.ascii	"__FB_OPTION_GOSUB__\0"
.balign 4
_Lt_027A:	.ascii	"__FB_OUT_EXE__\0"
.balign 4
_Lt_027B:	.ascii	"__FB_OUT_LIB__\0"
.balign 4
_Lt_027C:	.ascii	"__FB_OUT_DLL__\0"
.balign 4
_Lt_027D:	.ascii	"__FB_OUT_OBJ__\0"
.balign 4
_Lt_027E:	.ascii	"__FB_DEBUG__\0"
.balign 4
_Lt_027F:	.ascii	"__FB_ERR__\0"
.balign 4
_Lt_0280:	.ascii	"__FB_LANG__\0"
.balign 4
_Lt_0281:	.ascii	"__FB_BACKEND__\0"
.balign 4
_Lt_0282:	.ascii	"__FB_FPU__\0"
.balign 4
_Lt_0283:	.ascii	"__FB_FPMODE__\0"
.balign 4
_Lt_0284:	.ascii	"__FB_GCC__\0"
.balign 4
_Lt_0285:	.ascii	"__FB_GUI__\0"
.balign 4
_Lt_0286:	.ascii	"__FB_OPTIMIZE__\0"
.balign 4
_MACROTB:
.int _Lt_0288
.int 0
.int _HDEFUNIQUEIDPUSH_CB
.long 0
.int 1
.int _Lt_0289
.skip 16,0
.int _Lt_028A
.int 0
.int _HDEFUNIQUEID_CB
.long 0
.int 1
.int _Lt_0289
.skip 16,0
.int _Lt_028B
.int 0
.int _HDEFUNIQUEIDPOP_CB
.long 0
.int 1
.int _Lt_0289
.skip 16,0
.int _Lt_028C
.int 4
.int _HDEFARGCOUNT_CB
.long 0
.int 1
.int _Lt_028D
.skip 16,0
.int _Lt_028E
.int 4
.int _HDEFARGEXTRACT_CB
.long 0
.int 2
.int _Lt_028F
.int _Lt_028D
.skip 12,0
.int _Lt_0290
.int 4
.int _HDEFARGLEFT_CB
.long 0
.int 3
.int _Lt_0291
.int _Lt_0292
.int _Lt_0293
.skip 8,0
.int _Lt_0294
.int 4
.int _HDEFARGRIGHT_CB
.long 0
.int 3
.int _Lt_0291
.int _Lt_0292
.int _Lt_0293
.skip 8,0
.int _Lt_0295
.int 0
.int _HDEFJOINZ_CB
.int _HDEFJOINW_CB
.int 2
.int _Lt_0296
.int _Lt_0297
.skip 12,0
.int _Lt_0298
.int 0
.int _HDEFQUOTEZ_CB
.int _HDEFQUOTEW_CB
.int 1
.int _Lt_0291
.skip 16,0
.int _Lt_0299
.int 0
.int _HDEFUNQUOTEZ_CB
.int _HDEFUNQUOTEW_CB
.int 1
.int _Lt_0291
.skip 16,0
.int _Lt_029A
.int 0
.int _HDEFEVALZ_CB
.int _HDEFEVALW_CB
.int 1
.int _Lt_0291
.skip 16,0
.int _Lt_029B
.int 0
.int _HDEFIIFZ_CB
.int _HDEFIIFW_CB
.int 3
.int _Lt_029C
.int _Lt_029D
.int _Lt_029E
.skip 8,0
.int _Lt_029F
.int 0
.int _HDEFQUERYSYMZ_CB
.long 0
.int 2
.int _Lt_02A0
.int _Lt_02A1
.skip 12,0
.balign 4
_Lt_0288:	.ascii	"__FB_UNIQUEID_PUSH__\0"
.balign 4
_Lt_0289:	.ascii	"ID\0"
.balign 4
_Lt_028A:	.ascii	"__FB_UNIQUEID__\0"
.balign 4
_Lt_028B:	.ascii	"__FB_UNIQUEID_POP__\0"
.balign 4
_Lt_028C:	.ascii	"__FB_ARG_COUNT__\0"
.balign 4
_Lt_028D:	.ascii	"ARGS\0"
.balign 4
_Lt_028E:	.ascii	"__FB_ARG_EXTRACT__\0"
.balign 4
_Lt_028F:	.ascii	"ARGNUM\0"
.balign 4
_Lt_0290:	.ascii	"__FB_ARG_LEFTOF__\0"
.balign 4
_Lt_0291:	.ascii	"ARG\0"
.balign 4
_Lt_0292:	.ascii	"SEP\0"
.balign 4
_Lt_0293:	.ascii	"RET\0"
.balign 4
_Lt_0294:	.ascii	"__FB_ARG_RIGHTOF__\0"
.balign 4
_Lt_0295:	.ascii	"__FB_JOIN__\0"
.balign 4
_Lt_0296:	.ascii	"L\0"
.balign 4
_Lt_0297:	.ascii	"R\0"
.balign 4
_Lt_0298:	.ascii	"__FB_QUOTE__\0"
.balign 4
_Lt_0299:	.ascii	"__FB_UNQUOTE__\0"
.balign 4
_Lt_029A:	.ascii	"__FB_EVAL__\0"
.balign 4
_Lt_029B:	.ascii	"__FB_IIF__\0"
.balign 4
_Lt_029C:	.ascii	"CMPEXPR\0"
.balign 4
_Lt_029D:	.ascii	"TEXPR\0"
.balign 4
_Lt_029E:	.ascii	"FEXPR\0"
.balign 4
_Lt_029F:	.ascii	"__FB_QUERY_SYMBOL__\0"
.balign 4
_Lt_02A0:	.ascii	"WHAT\0"
.balign 4
_Lt_02A1:	.ascii	"SYM\0"
.balign 4
_Lt_02AF:	.ascii	"__FB_\0"
.balign 4
_Lt_02B0:	.ascii	"__\0"
.balign 4
_Lt_02B6:	.ascii	"__FB_LINUX__\0"
.balign 4
_Lt_02B9:	.ascii	"__FB_UNIX__\0"
.balign 4
_Lt_02BA:	.ascii	"__FB_PCOS__\0"
.balign 4
_Lt_02BD:	.ascii	"__FB_64BIT__\0"
.balign 4
_Lt_02C3:	.ascii	"__FB_ARM__\0"
.balign 4
_Lt_02C7:	.ascii	"__FB_X86__\0"
.balign 4
_Lt_02C8:	.ascii	"__FB_ASM__\0"
.balign 4
_Lt_02CD:	.ascii	"__FB_PPC__\0"
.balign 4
_Lt_02D0:	.ascii	"__FB_BIGENDIAN__\0"
.balign 4
_Lt_02D3:	.ascii	"__FB_MAIN__\0"
.balign 4
_Lt_02D6:	.ascii	"__FB_SSE__\0"
.balign 4
_Lt_02D7:	.ascii	"__FB_VECTORIZE__\0"
.balign 8
_Lt_0331:	.quad	0x40F5180000000000
.balign 8
_Lt_0332:	.quad	0x40D8F84000000000

.section .ctors
.int _fb_ctor__symbzdefine
