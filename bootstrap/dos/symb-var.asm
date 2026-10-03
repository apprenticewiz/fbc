	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBVARINIT
_SYMBVARINIT:
.L_0067:
push 0
push 0
push 0
push 0
push 0
push 0
push offset _Lt_006A
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [_SYMB+99620], eax
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006B
push dword ptr [_SYMB+99620]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006C
push dword ptr [_SYMB+99620]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006D
push dword ptr [_SYMB+99620]
call _SYMBADDFIELD
add esp, 40
push 0
push dword ptr [_SYMB+99620]
call _SYMBSTRUCTEND
add esp, 8
mov dword ptr [_SYMB+99604], 0
mov eax, dword ptr [_ENV+296]
mov dword ptr [_SYMB+99608], eax
mov eax, dword ptr [_ENV+296]
sal eax, 1
mov dword ptr [_SYMB+99612], eax
mov eax, dword ptr [_ENV+296]
imul eax, 6
mov dword ptr [_SYMB+99616], eax
mov eax, dword ptr [_ENV+296]
mov dword ptr [_SYMB+99624], eax
mov eax, dword ptr [_ENV+296]
sal eax, 1
mov dword ptr [_SYMB+99628], eax
.L_0068:
ret

.section .bss
.balign 4
	.lcomm	_Lt_006F,16

.section .data
.balign 4
_Lt_006E:
.int _Lt_006F
.int _Lt_006F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBVAREND
_SYMBVAREND:
.L_0070:
.L_0071:
ret
.balign 16

.globl _SYMBGETDESCTYPEARRAYDTYPE
_SYMBGETDESCTYPEARRAYDTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0072:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+28]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx], eax
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDESCTYPEDIMENSIONS
_SYMBGETDESCTYPEDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0074:
push 8
push offset _Lt_0076
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0078
mov dword ptr [ebp-4], -1
jmp .L_0075
.L_0078:
.L_0077:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_ENV+296]
imul ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
sub edi, esi
sbb ebx, ecx
mov esi, edi
mov dword ptr [ebp-8], esi
mov esi, dword ptr [_ENV+296]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.L_0075:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDARRAYDESCRIPTORTYPE
_SYMBADDARRAYDESCRIPTORTYPE:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .L_007D
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.L_007D:
.L_007C:
push 0
push 8
push offset _Lt_0076
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 0
jle .L_007F
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_007F:
.L_007E:
push 0
push 2
push offset _Lt_0080
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0081
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call _SYMBMANGLETYPE
add esp, 16
call _SYMBMANGLERESETABBREV
push 0
push 2
push offset _Lt_0082
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-52]
push eax
lea eax, [ebp-48]
push eax
push 0
push dword ptr [ebp-16]
call _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 28
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0085
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_007A
.L_0085:
.L_0084:
or dword ptr [ebp-48], 8192
cmp dword ptr [ebp+12], 20
jne .L_0086
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .L_0095
.L_0086:
mov dword ptr [ebp-60], 0
.L_0095:
cmp dword ptr [ebp-60], 0
je .L_0088
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0096
.L_0088:
mov dword ptr [ebp-64], 0
.L_0096:
cmp dword ptr [ebp-64], 0
je .L_008B
or dword ptr [ebp-48], 128
.L_008B:
.L_008A:
push 1
push dword ptr [ebp-48]
push 0
push 0
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-32], eax
mov dword ptr [_Lt_0099], 0
mov dword ptr [_Lt_0099+4], 0
mov dword ptr [_Lt_0099+8], 0
mov dword ptr [_Lt_0099+12], 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_009A
push 0
push offset _Lt_008C
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_009A
push 0
push offset _Lt_008D
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_009A
push 0
push offset _Lt_008E
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_009A
push 0
push offset _Lt_008F
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_009A
push 0
push offset _Lt_0090
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_009A
push 0
push offset _Lt_0091
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
cmp dword ptr [ebp+8], -1
jne .L_0093
mov dword ptr [ebp+8], 8
.L_0093:
.L_0092:
mov dword ptr [_Lt_0099], 0
mov dword ptr [_Lt_0099+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [_Lt_0099+8], ecx
mov dword ptr [_Lt_0099+12], ebx
push 0
push 0
push 0
push 0
push dword ptr [_SYMB+99620]
push 20
push offset _Lt_009A
push 1
push offset _Lt_0094
push dword ptr [ebp-32]
call _SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-32]
call _SYMBSTRUCTEND
add esp, 8
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
lea ecx, [ebp-28]
push ecx
call _fb_StrDelete
add esp, 4
lea ecx, [ebp-16]
push ecx
call _fb_StrDelete
add esp, 4
.L_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0099,16

.section .data
.balign 4
_Lt_009A:
.int _Lt_0099
.int _Lt_0099
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDARRAYDESC
_SYMBADDARRAYDESC:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_009B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_009E
push 0
call _SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_00A0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_00A0:
.L_009F:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .L_009D
.L_009E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 48
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .L_00A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 512
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_00A4
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset _Lt_00B8
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_00B8
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_00B8
call _fb_StrAssign
add esp, 20
cmp dword ptr [_ENV+104], 1
jne .L_00A8
push 0
push 2
push offset _Lt_0080
push -1
push offset _Lt_00B8
call _fb_StrConcatAssign
add esp, 20
.L_00A8:
.L_00A7:
mov eax, dword ptr [_Lt_00B8]
mov dword ptr [ebp-8], eax
.L_00A4:
.L_00A3:
jmp .L_00A1
.L_00A2:
push 0
call _SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_00AA
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_00AA:
.L_00A9:
mov dword ptr [ebp-40], 16
.L_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .L_00AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00AE
and dword ptr [ebp-24], -17
.L_00AE:
.L_00AD:
and dword ptr [ebp-24], -33
.L_00AC:
.L_00AB:
.L_009D:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .L_00B0
cmp dword ptr [_PARSER+100], 0
jne .L_00B2
mov ebx, dword ptr [_PARSER+108]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .L_00B1
.L_00B2:
mov dword ptr [ebp-28], 0
.L_00B1:
jmp .L_00AF
.L_00B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-28], ebx
.L_00AF:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 20
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push 0
push dword ptr [ebp-28]
push 0
push 1
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00B4
jmp .L_009C
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], ecx
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+48], 0
mov dword ptr [esi+52], 0
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+12]
and ecx, 2
or ecx, dword ptr [ebp-40]
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+12], ecx
push dword ptr [ebp-16]
call _SYMBVARINITFIELDS
add esp, 4
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+92], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_009C:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00B8,12

.section .text
.balign 16

.globl _SYMBARRAYHASUNKNOWNBOUNDS
_SYMBARRAYHASUNKNOWNBOUNDS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00C6:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00C9
jmp .L_00C7
.L_00C9:
.L_00C8:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00CB
.L_00CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .L_00D0
cmp dword ptr [ecx+8], 0
jne .L_00D0
.L_00D1:
mov dword ptr [ebp-4], -1
jmp .L_00C7
.L_00D0:
.L_00CF:
.L_00CC:
inc dword ptr [ebp-8]
.L_00CB:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .L_00CE
.L_00CD:
.L_00C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMAYBEADDARRAYDESC
_SYMBMAYBEADDARRAYDESC:
push ebp
mov ebp, esp
push ebx
.L_00D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_00D5
jmp .L_00D3
.L_00D5:
.L_00D4:
push dword ptr [ebp+8]
call _SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .L_00D7
jmp .L_00D3
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
jne .L_00D9
push dword ptr [ebp+8]
call _SYMBADDARRAYDESC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+84], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+84]
call _ASTBUILDARRAYDESCINITREE
add esp, 12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebx+56], eax
.L_00D9:
.L_00D8:
.L_00D3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETARRAYDIMTB
_SYMBSETARRAYDIMTB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00DA:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00DD
.L_00E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebx+12]
mov dword ptr [ecx+12], eax
.L_00DE:
inc dword ptr [ebp-4]
.L_00DD:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00E0
.L_00DF:
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 4
.L_00DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
_SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ecx]
adc ebx, dword ptr [ecx+4]
add eax, 4294967295
adc ebx, 4294967295
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+8], eax
mov dword ptr [ecx+12], ebx
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 4
.L_00E2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKDYNAMICARRAYDIMENSIONS
_SYMBCHECKDYNAMICARRAYDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00E4:
cmp dword ptr [ebp+12], -1
jne .L_00E7
jmp .L_00E5
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, -1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebp-4]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00E9
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call _ERRREPORTEX
add esp, 20
.L_00E9:
.L_00E8:
.L_00E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBVARINITFIELDS
_SYMBVARINITFIELDS:
push ebp
mov ebp, esp
push ebx
.L_00EC:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+88], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
.L_00ED:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBVARINITARRAYDIMENSIONS
_SYMBVARINITARRAYDIMENSIONS:
push ebp
mov ebp, esp
push ebx
.L_00EE:
cmp dword ptr [ebp+12], 0
je .L_00F1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00F3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
jmp .L_00F2
.L_00F3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBSETARRAYDIMTB
add esp, 12
.L_00F2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16384
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00F5
push dword ptr [ebp+8]
call _SYMBMAYBEADDARRAYDESC
add esp, 4
.L_00F5:
.L_00F4:
.L_00F1:
.L_00F0:
.L_00EF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDVAR
_SYMBADDVAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .L_00FB
jl .L_0110
cmp dword ptr [ebp+24], 0
ja .L_00FB
.L_0110:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.L_00FB:
.L_00FA:
cmp dword ptr [ebp+12], 0
jne .L_00FD
cmp dword ptr [_PARSER+104], 0
je .L_00FF
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00FF:
.L_00FE:
mov dword ptr [ebp-24], 0
jmp .L_00FC
.L_00FD:
mov dword ptr [ebp-24], 512
.L_00FC:
cmp dword ptr [ebp-20], 0
jne .L_0101
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .L_0103
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp-12], eax
jmp .L_0102
.L_0103:
mov eax, dword ptr [_PARSER+108]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.L_0102:
mov edx, dword ptr [_SYMB+98532]
mov dword ptr [ebp-16], edx
jmp .L_0100
.L_0101:
lea edx, [_SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [_SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], edx
je .L_0105
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .L_0107
mov edx, dword ptr [_SYMB+98528]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_SYMB+98528]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.L_0107:
.L_0106:
.L_0105:
.L_0104:
.L_0100:
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
mov edx, dword ptr [ebp+44]
or edx, 32
push edx
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0109
jmp .L_00F9
.L_0109:
.L_0108:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-24]
or dword ptr [eax+12], edx
mov edx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+28]
mov dword ptr [edx+40], ebx
mov dword ptr [edx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
push dword ptr [ebp-8]
call _SYMBVARINITFIELDS
add esp, 4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _SYMBVARINITARRAYDIMENSIONS
add esp, 12
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .L_010B
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], ebx
jmp .L_010A
.L_010B:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .L_010C
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.L_010C:
.L_010A:
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _SYMBISPARENTNAMESPACE
add esp, 12
test eax, eax
je .L_010E
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 64
.L_010E:
.L_010D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDTEMPVAR
_SYMBADDTEMPVAR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0111:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_0115
or dword ptr [ebp-8], 2
.L_0115:
.L_0114:
push dword ptr [ebp-8]
push 4096
push offset _Lt_0116
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0117,16

.section .data
.balign 4
_Lt_0116:
.int _Lt_0117
.int _Lt_0117
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDIMPLICITVAR
_SYMBADDIMPLICITVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0118:
push dword ptr [ebp+16]
push 0
push offset _Lt_011B
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0119:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_011C,16

.section .data
.balign 4
_Lt_011B:
.int _Lt_011C
.int _Lt_011C
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDANDALLOCATETEMPVAR
_SYMBADDANDALLOCATETEMPVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_011D:
push 0
push dword ptr [ebp+8]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [_PARSER+108]
call dword ptr [_IR+36]
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETREALSIZE
_SYMBGETREALSIZE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_0121
mov eax, dword ptr [_ENV+296]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .L_0123
.L_0121:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.L_0123:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov ecx, dword ptr [ebx+80]
push ecx
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-24]
pop dword ptr [ebp-20]
add esp, 8
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.L_0120:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETREALTYPE
_SYMBGETREALTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0124:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 114688
test ebx, ebx
je .L_0127
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .L_0129
mov dword ptr [ebp-4], 2
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_012A
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
jmp .L_0128
.L_012A:
mov dword ptr [ebp-4], 1
.L_0128:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
jmp .L_0126
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_012B
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_012B:
.L_0126:
.L_0125:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCARRAYELEMENTS
_SYMBCALCARRAYELEMENTS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_012E:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .L_0131
.L_0134:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
sal eax, 4
mov ecx, dword ptr [ebx+64]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
sal ebx, 4
mov esi, dword ptr [eax+64]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
push ebx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
.L_0132:
inc dword ptr [ebp-20]
.L_0131:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_0134
.L_0133:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_012F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKARRAYSIZE
_SYMBCHECKARRAYSIZE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0135:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_0138
.L_013B:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .L_013D
cmp dword ptr [ebx+8], 0
jne .L_013D
.L_014A:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .L_013C
.L_013D:
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp+12]
add eax, ebx
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov ecx, dword ptr [ebp+12]
add ecx, ebx
mov esi, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
sub esi, dword ptr [ecx]
sbb ebx, dword ptr [ecx+4]
add esi, 1
adc ebx, 0
mov eax, esi
mov ecx, ebx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ecx
.L_013C:
cmp dword ptr [ebp-16], 0
jb .L_013F
ja .L_014B
cmp dword ptr [ebp-20], 2147483647
jbe .L_013F
.L_014B:
mov dword ptr [ebp-24], -1
jmp .L_013A
.L_013F:
.L_013E:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
push eax
push ecx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_0141
ja .L_014C
cmp dword ptr [ebp-12], 2147483647
jbe .L_0141
.L_014C:
mov dword ptr [ebp-24], -1
jmp .L_013A
.L_0141:
.L_0140:
.L_0139:
inc dword ptr [ebp-28]
.L_0138:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_013B
.L_013A:
cmp dword ptr [ebp-24], 0
jne .L_0143
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
push ecx
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_0145
ja .L_014D
cmp dword ptr [ebp-12], 2147483647
jbe .L_0145
.L_014D:
mov dword ptr [ebp-24], -1
.L_0145:
.L_0144:
.L_0143:
.L_0142:
cmp dword ptr [ebp-24], 0
je .L_0147
mov dword ptr [ebp-4], 0
jmp .L_0146
.L_0147:
mov ecx, dword ptr [_ENV+244]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .L_014E
jb .L_014F
cmp dword ptr [ebp-12], ecx
ja .L_014E
.L_014F:
xor esi, esi
.L_014E:
and esi, dword ptr [ebp+24]
je .L_0149
push 0
push 1
push 0
push 23
call _ERRREPORTWARN
add esp, 16
.L_0149:
.L_0148:
mov dword ptr [ebp-4], -1
.L_0146:
.L_0136:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETVARHASCTOR
_SYMBGETVARHASCTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0150:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0153
mov dword ptr [ebp-4], 0
jmp .L_0151
.L_0153:
.L_0152:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0156
.L_0157:
mov dword ptr [ebp-4], -1
jmp .L_0151
jmp .L_0154
.L_0156:
cmp dword ptr [ebp-8], 39
jne .L_0158
.L_0159:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_015B
mov dword ptr [ebp-4], -1
jmp .L_0151
.L_015B:
.L_015A:
.L_0158:
.L_0154:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_015D
mov dword ptr [ebp-4], -1
jmp .L_0151
.L_015D:
.L_015C:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
mov dword ptr [ebp-4], eax
.L_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETVARHASDTOR
_SYMBGETVARHASDTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0161
mov dword ptr [ebp-4], 0
jmp .L_015F
.L_0161:
.L_0160:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0164
.L_0165:
mov dword ptr [ebp-4], -1
jmp .L_015F
jmp .L_0162
.L_0164:
cmp dword ptr [ebp-8], 39
jne .L_0166
.L_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0169
mov dword ptr [ebp-4], -1
jmp .L_015F
.L_0169:
.L_0168:
.L_0166:
.L_0162:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_016B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_016D
mov dword ptr [ebp-4], -1
jmp .L_015F
.L_016D:
.L_016C:
.L_016B:
.L_016A:
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-4], eax
.L_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONEVAR
_SYMBCLONEVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_016E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_0172
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
call _SYMBADDARRAYDESC
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0171
.L_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .L_0173
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0171
.L_0173:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0175
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_0177
.L_017A:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [_Lt_017B+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [_Lt_017B+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [_Lt_017B+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [_Lt_017B+eax+12], ebx
.L_0178:
inc dword ptr [ebp-8]
.L_0177:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .L_017A
.L_0179:
.L_0175:
.L_0174:
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset _Lt_017C
mov esi, dword ptr [ebp+8]
push dword ptr [esi+60]
push 0
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+32]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+28]
and eax, 511
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-4], eax
.L_0171:
.L_016F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017B,128

.section .data
.balign 4
_Lt_017C:
.int _Lt_017B
.int _Lt_017B
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl _SYMBVARCHECKACCESS
_SYMBVARCHECKACCESS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_017D:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0180
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0182
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0184
mov dword ptr [ebp-4], 0
jmp .L_017E
.L_0184:
.L_0183:
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_0185
mov dword ptr [ebp-4], 0
jmp .L_017E
.L_0185:
.L_0181:
.L_0180:
.L_017F:
mov dword ptr [ebp-4], -1
.L_017E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELVAR
_SYMBDELVAR:
push ebp
mov ebp, esp
push ebx
.L_0186:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS
add esp, 4
cmp dword ptr [ebp+12], 0
jne .L_0189
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
je .L_018B
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _SYMBDELSYMBOL
add esp, 8
.L_018B:
.L_018A:
.L_0189:
.L_0188:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_018D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_018F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0191
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0193
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.L_0193:
.L_0192:
.L_0191:
.L_0190:
jmp .L_018E
.L_018F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0195
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0197
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.L_0197:
.L_0196:
.L_0195:
.L_0194:
.L_018E:
.L_018D:
.L_018C:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.L_0187:
pop ebx
mov esp, ebp
pop ebp
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
_SYMBDROPARRAYDIMS:
push ebp
mov ebp, esp
.L_00B9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.L_00BA:
mov esp, ebp
pop ebp
ret
.balign 16
_SYMBRECALCARRAYDIFF:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.L_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_00BE
.L_00C1:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp-24]
add ebx, eax
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ecx, dword ptr [ebp-24]
add ecx, eax
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
sub esi, dword ptr [ecx+16]
sbb eax, dword ptr [ecx+20]
add esi, 1
adc eax, 0
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-28]
sal esi, 4
mov eax, dword ptr [ebp-24]
add eax, esi
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
add ecx, dword ptr [ebp-8]
adc esi, dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push esi
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop esi
add esp, 8
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], esi
.L_00BF:
inc dword ptr [ebp-28]
.L_00BE:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_00C1
.L_00C0:
mov ecx, dword ptr [ebp-20]
sal ecx, 4
mov esi, dword ptr [ebp-24]
add esi, ecx
mov eax, dword ptr [esi]
mov ecx, dword ptr [esi+4]
add eax, dword ptr [ebp-8]
adc ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+44]
push dword ptr [esi+40]
push ecx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ecx
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+68], ecx
mov dword ptr [esi+72], eax
.L_00BC:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SYMBRECALCARRAYDIFFANDELEMENTS:
push ebp
mov ebp, esp
push ebx
.L_00C2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_00C5
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFF
add esp, 4
push 0
push dword ptr [ebp+8]
call _SYMBCALCARRAYELEMENTS
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
mov dword ptr [ebx+80], edx
jmp .L_00C4
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
.L_00C4:
.L_00C3:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_006A:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
_Lt_006B:	.ascii	"elements\0"
.balign 4
_Lt_006C:	.ascii	"lbound\0"
.balign 4
_Lt_006D:	.ascii	"ubound\0"
.balign 4
_Lt_0076:	.ascii	"FBARRAY\0"
.balign 4
_Lt_0080:	.ascii	"$\0"
.balign 4
_Lt_0081:	.ascii	"<\0"
.balign 4
_Lt_0082:	.ascii	">\0"
.balign 4
_Lt_008C:	.ascii	"data\0"
.balign 4
_Lt_008D:	.ascii	"ptr\0"
.balign 4
_Lt_008E:	.ascii	"size\0"
.balign 4
_Lt_008F:	.ascii	"element_len\0"
.balign 4
_Lt_0090:	.ascii	"dimensions\0"
.balign 4
_Lt_0091:	.ascii	"flags\0"
.balign 4
_Lt_0094:	.ascii	"dimTB\0"
