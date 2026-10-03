	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBVARINIT
SYMBVARINIT:
.type SYMBVARINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 0
push offset Lt_0069
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [SYMB+99620], eax
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006A
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006B
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006C
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [SYMB+99620]
call SYMBSTRUCTEND
add esp, 16
mov dword ptr [SYMB+99604], 0
mov eax, dword ptr [ENV+296]
mov dword ptr [SYMB+99608], eax
mov eax, dword ptr [ENV+296]
sal eax, 1
mov dword ptr [SYMB+99612], eax
mov eax, dword ptr [ENV+296]
imul eax, 6
mov dword ptr [SYMB+99616], eax
mov eax, dword ptr [ENV+296]
mov dword ptr [SYMB+99624], eax
mov eax, dword ptr [ENV+296]
sal eax, 1
mov dword ptr [SYMB+99628], eax
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINIT, .-SYMBVARINIT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_006E,16

.section .data
.balign 4
Lt_006D:
.int Lt_006E
.int Lt_006E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBVAREND
SYMBVAREND:
.type SYMBVAREND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006F:
.L_0070:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVAREND, .-SYMBVAREND
.cfi_endproc
.balign 16

.globl SYMBGETDESCTYPEARRAYDTYPE
SYMBGETDESCTYPEARRAYDTYPE:
.type SYMBGETDESCTYPEARRAYDTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0071:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
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
.L_0072:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDESCTYPEARRAYDTYPE, .-SYMBGETDESCTYPEARRAYDTYPE
.cfi_endproc
.balign 16

.globl SYMBGETDESCTYPEDIMENSIONS
SYMBGETDESCTYPEDIMENSIONS:
.type SYMBGETDESCTYPEDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0073:
push 8
push offset Lt_0075
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0077
mov dword ptr [ebp-4], -1
jmp .L_0074
.L_0077:
.L_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ENV+296]
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
mov esi, dword ptr [ENV+296]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.L_0074:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDESCTYPEDIMENSIONS, .-SYMBGETDESCTYPEDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBADDARRAYDESCRIPTORTYPE
SYMBADDARRAYDESCRIPTORTYPE:
.type SYMBADDARRAYDESCRIPTORTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0078:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .L_007C
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.L_007C:
.L_007B:
sub esp, 12
push 0
push 8
push offset Lt_0075
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 0
jle .L_007E
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
.L_007E:
.L_007D:
sub esp, 12
push 0
push 2
push offset Lt_007F
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0080
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
sub esp, 12
push 0
push 2
push offset Lt_0081
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
sub esp, 4
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
call SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0084
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0079
.L_0084:
.L_0083:
or dword ptr [ebp-48], 8192
cmp dword ptr [ebp+12], 20
jne .L_0085
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .L_0094
.L_0085:
mov dword ptr [ebp-60], 0
.L_0094:
cmp dword ptr [ebp-60], 0
je .L_0087
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0095
.L_0087:
mov dword ptr [ebp-64], 0
.L_0095:
cmp dword ptr [ebp-64], 0
je .L_008A
or dword ptr [ebp-48], 128
.L_008A:
.L_0089:
sub esp, 8
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
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-32], eax
mov dword ptr [Lt_0098], 0
mov dword ptr [Lt_0098+4], 0
mov dword ptr [Lt_0098+8], 0
mov dword ptr [Lt_0098+12], 0
sub esp, 8
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
push offset Lt_0099
push 0
push offset Lt_008B
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
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
push offset Lt_0099
push 0
push offset Lt_008C
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0099
push 0
push offset Lt_008D
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0099
push 0
push offset Lt_008E
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0099
push 0
push offset Lt_008F
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0099
push 0
push offset Lt_0090
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
cmp dword ptr [ebp+8], -1
jne .L_0092
mov dword ptr [ebp+8], 8
.L_0092:
.L_0091:
mov dword ptr [Lt_0098], 0
mov dword ptr [Lt_0098+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [Lt_0098+8], ecx
mov dword ptr [Lt_0098+12], ebx
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [SYMB+99620]
push 20
push offset Lt_0099
push 1
push offset Lt_0093
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [ebp-32]
call SYMBSTRUCTEND
add esp, 16
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
sub esp, 12
lea ecx, [ebp-28]
push ecx
call fb_StrDelete
add esp, 16
sub esp, 12
lea ecx, [ebp-16]
push ecx
call fb_StrDelete
add esp, 16
.L_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDARRAYDESCRIPTORTYPE, .-SYMBADDARRAYDESCRIPTORTYPE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0098,16

.section .data
.balign 4
Lt_0099:
.int Lt_0098
.int Lt_0098
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDARRAYDESC
SYMBADDARRAYDESC:
.type SYMBADDARRAYDESC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_009A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_009D
sub esp, 12
push 0
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_009F
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_009F:
.L_009E:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .L_009C
.L_009D:
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
je .L_00A1
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
je .L_00A3
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset Lt_00B7
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_00B7
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_00B7
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+104], 1
jne .L_00A7
sub esp, 12
push 0
push 2
push offset Lt_007F
push -1
push offset Lt_00B7
call fb_StrConcatAssign
add esp, 32
.L_00A7:
.L_00A6:
mov eax, dword ptr [Lt_00B7]
mov dword ptr [ebp-8], eax
.L_00A3:
.L_00A2:
jmp .L_00A0
.L_00A1:
sub esp, 12
push 0
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_00A9
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_00A9:
.L_00A8:
mov dword ptr [ebp-40], 16
.L_00A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .L_00AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00AD
and dword ptr [ebp-24], -17
.L_00AD:
.L_00AC:
and dword ptr [ebp-24], -33
.L_00AB:
.L_00AA:
.L_009C:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .L_00AF
cmp dword ptr [PARSER+100], 0
jne .L_00B1
mov ebx, dword ptr [PARSER+108]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .L_00B0
.L_00B1:
mov dword ptr [ebp-28], 0
.L_00B0:
jmp .L_00AE
.L_00AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-28], ebx
.L_00AE:
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00B3
jmp .L_009B
.L_00B3:
.L_00B2:
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
sub esp, 12
push dword ptr [ebp-16]
call SYMBVARINITFIELDS
add esp, 16
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+92], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_009B:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDARRAYDESC, .-SYMBADDARRAYDESC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00B7,12

.section .text
.balign 16

.globl SYMBARRAYHASUNKNOWNBOUNDS
SYMBARRAYHASUNKNOWNBOUNDS:
.type SYMBARRAYHASUNKNOWNBOUNDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C5:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00C8
jmp .L_00C6
.L_00C8:
.L_00C7:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00CA
.L_00CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .L_00CF
cmp dword ptr [ecx+8], 0
jne .L_00CF
.L_00D0:
mov dword ptr [ebp-4], -1
jmp .L_00C6
.L_00CF:
.L_00CE:
.L_00CB:
inc dword ptr [ebp-8]
.L_00CA:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .L_00CD
.L_00CC:
.L_00C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBARRAYHASUNKNOWNBOUNDS, .-SYMBARRAYHASUNKNOWNBOUNDS
.cfi_endproc
.balign 16

.globl SYMBMAYBEADDARRAYDESC
SYMBMAYBEADDARRAYDESC:
.type SYMBMAYBEADDARRAYDESC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00D1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_00D4
jmp .L_00D2
.L_00D4:
.L_00D3:
sub esp, 12
push dword ptr [ebp+8]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .L_00D6
jmp .L_00D2
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
jne .L_00D8
sub esp, 12
push dword ptr [ebp+8]
call SYMBADDARRAYDESC
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+84], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
sub esp, 4
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+84]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebx+56], eax
.L_00D8:
.L_00D7:
.L_00D2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMAYBEADDARRAYDESC, .-SYMBMAYBEADDARRAYDESC
.cfi_endproc
.balign 16

.globl SYMBSETARRAYDIMTB
SYMBSETARRAYDIMTB:
.type SYMBSETARRAYDIMTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00D9:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
sub esp, 12
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00DC
.L_00DF:
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
.L_00DD:
inc dword ptr [ebp-4]
.L_00DC:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00DF
.L_00DE:
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 16
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETARRAYDIMTB, .-SYMBSETARRAYDIMTB
.cfi_endproc
.balign 16

.globl SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS:
.type SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00E0:
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
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 16
.L_00E1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS, .-SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
.cfi_endproc
.balign 16

.globl SYMBCHECKDYNAMICARRAYDIMENSIONS
SYMBCHECKDYNAMICARRAYDIMENSIONS:
.type SYMBCHECKDYNAMICARRAYDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00E3:
cmp dword ptr [ebp+12], -1
jne .L_00E6
jmp .L_00E4
.L_00E6:
.L_00E5:
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
je .L_00E8
sub esp, 12
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call ERRREPORTEX
add esp, 32
.L_00E8:
.L_00E7:
.L_00E4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKDYNAMICARRAYDIMENSIONS, .-SYMBCHECKDYNAMICARRAYDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBVARINITFIELDS
SYMBVARINITFIELDS:
.type SYMBVARINITFIELDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00EB:
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
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
.L_00EC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINITFIELDS, .-SYMBVARINITFIELDS
.cfi_endproc
.balign 16

.globl SYMBVARINITARRAYDIMENSIONS
SYMBVARINITARRAYDIMENSIONS:
.type SYMBVARINITARRAYDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00ED:
cmp dword ptr [ebp+12], 0
je .L_00F0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00F2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
jmp .L_00F1
.L_00F2:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBSETARRAYDIMTB
add esp, 16
.L_00F1:
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
je .L_00F4
sub esp, 12
push dword ptr [ebp+8]
call SYMBMAYBEADDARRAYDESC
add esp, 16
.L_00F4:
.L_00F3:
.L_00F0:
.L_00EF:
.L_00EE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINITARRAYDIMENSIONS, .-SYMBVARINITARRAYDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBADDVAR
SYMBADDVAR:
.type SYMBADDVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00F7:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .L_00FA
jl .L_010F
cmp dword ptr [ebp+24], 0
ja .L_00FA
.L_010F:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.L_00FA:
.L_00F9:
cmp dword ptr [ebp+12], 0
jne .L_00FC
cmp dword ptr [PARSER+104], 0
je .L_00FE
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00FE:
.L_00FD:
mov dword ptr [ebp-24], 0
jmp .L_00FB
.L_00FC:
mov dword ptr [ebp-24], 512
.L_00FB:
cmp dword ptr [ebp-20], 0
jne .L_0100
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .L_0102
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp-12], eax
jmp .L_0101
.L_0102:
mov eax, dword ptr [PARSER+108]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.L_0101:
mov edx, dword ptr [SYMB+98532]
mov dword ptr [ebp-16], edx
jmp .L_00FF
.L_0100:
lea edx, [SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [SYMB+98352]
cmp dword ptr [SYMB+98528], edx
je .L_0104
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .L_0106
mov edx, dword ptr [SYMB+98528]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [SYMB+98528]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.L_0106:
.L_0105:
.L_0104:
.L_0103:
.L_00FF:
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0108
jmp .L_00F8
.L_0108:
.L_0107:
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
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARINITFIELDS
add esp, 16
sub esp, 4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call SYMBVARINITARRAYDIMENSIONS
add esp, 16
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .L_010A
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], ebx
jmp .L_0109
.L_010A:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .L_010B
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.L_010B:
.L_0109:
sub esp, 4
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_010D
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 64
.L_010D:
.L_010C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDVAR, .-SYMBADDVAR
.cfi_endproc
.balign 16

.globl SYMBADDTEMPVAR
SYMBADDTEMPVAR:
.type SYMBADDTEMPVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0110:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_0114
or dword ptr [ebp-8], 2
.L_0114:
.L_0113:
sub esp, 8
push dword ptr [ebp-8]
push 4096
push offset Lt_0115
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDTEMPVAR, .-SYMBADDTEMPVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0116,16

.section .data
.balign 4
Lt_0115:
.int Lt_0116
.int Lt_0116
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDIMPLICITVAR
SYMBADDIMPLICITVAR:
.type SYMBADDIMPLICITVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0117:
sub esp, 8
push dword ptr [ebp+16]
push 0
push offset Lt_011A
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDIMPLICITVAR, .-SYMBADDIMPLICITVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_011B,16

.section .data
.balign 4
Lt_011A:
.int Lt_011B
.int Lt_011B
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDANDALLOCATETEMPVAR
SYMBADDANDALLOCATETEMPVAR:
.type SYMBADDANDALLOCATETEMPVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_011C:
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call dword ptr [IR+36]
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_011D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDANDALLOCATETEMPVAR, .-SYMBADDANDALLOCATETEMPVAR
.cfi_endproc
.balign 16

.globl SYMBGETREALSIZE
SYMBGETREALSIZE:
.type SYMBGETREALSIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_0120
mov eax, dword ptr [ENV+296]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .L_0122
.L_0120:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.L_0122:
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
.L_011F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETREALSIZE, .-SYMBGETREALSIZE
.cfi_endproc
.balign 16

.globl SYMBGETREALTYPE
SYMBGETREALTYPE:
.type SYMBGETREALTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0123:
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
je .L_0126
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .L_0128
mov dword ptr [ebp-4], 2
jmp .L_0127
.L_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0129
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
jmp .L_0127
.L_0129:
mov dword ptr [ebp-4], 1
.L_0127:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
jmp .L_0125
.L_0126:
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
je .L_012A
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
.L_012A:
.L_0125:
.L_0124:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETREALTYPE, .-SYMBGETREALTYPE
.cfi_endproc
.balign 16

.globl SYMBCALCARRAYELEMENTS
SYMBCALCARRAYELEMENTS:
.type SYMBCALCARRAYELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_012D:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .L_0130
.L_0133:
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
.L_0131:
inc dword ptr [ebp-20]
.L_0130:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_0133
.L_0132:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_012E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCALCARRAYELEMENTS, .-SYMBCALCARRAYELEMENTS
.cfi_endproc
.balign 16

.globl SYMBCHECKARRAYSIZE
SYMBCHECKARRAYSIZE:
.type SYMBCHECKARRAYSIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0134:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_0137
.L_013A:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .L_013C
cmp dword ptr [ebx+8], 0
jne .L_013C
.L_0149:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .L_013B
.L_013C:
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
.L_013B:
cmp dword ptr [ebp-16], 0
jb .L_013E
ja .L_014A
cmp dword ptr [ebp-20], 2147483647
jbe .L_013E
.L_014A:
mov dword ptr [ebp-24], -1
jmp .L_0139
.L_013E:
.L_013D:
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
jb .L_0140
ja .L_014B
cmp dword ptr [ebp-12], 2147483647
jbe .L_0140
.L_014B:
mov dword ptr [ebp-24], -1
jmp .L_0139
.L_0140:
.L_013F:
.L_0138:
inc dword ptr [ebp-28]
.L_0137:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_013A
.L_0139:
cmp dword ptr [ebp-24], 0
jne .L_0142
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
jb .L_0144
ja .L_014C
cmp dword ptr [ebp-12], 2147483647
jbe .L_0144
.L_014C:
mov dword ptr [ebp-24], -1
.L_0144:
.L_0143:
.L_0142:
.L_0141:
cmp dword ptr [ebp-24], 0
je .L_0146
mov dword ptr [ebp-4], 0
jmp .L_0145
.L_0146:
mov ecx, dword ptr [ENV+244]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .L_014D
jb .L_014E
cmp dword ptr [ebp-12], ecx
ja .L_014D
.L_014E:
xor esi, esi
.L_014D:
and esi, dword ptr [ebp+24]
je .L_0148
push 0
push 1
push 0
push 23
call ERRREPORTWARN
add esp, 16
.L_0148:
.L_0147:
mov dword ptr [ebp-4], -1
.L_0145:
.L_0135:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKARRAYSIZE, .-SYMBCHECKARRAYSIZE
.cfi_endproc
.balign 16

.globl SYMBGETVARHASCTOR
SYMBGETVARHASCTOR:
.type SYMBGETVARHASCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_014F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0152
mov dword ptr [ebp-4], 0
jmp .L_0150
.L_0152:
.L_0151:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0155
.L_0156:
mov dword ptr [ebp-4], -1
jmp .L_0150
jmp .L_0153
.L_0155:
cmp dword ptr [ebp-8], 39
jne .L_0157
.L_0158:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_015A
mov dword ptr [ebp-4], -1
jmp .L_0150
.L_015A:
.L_0159:
.L_0157:
.L_0153:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_015C
mov dword ptr [ebp-4], -1
jmp .L_0150
.L_015C:
.L_015B:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETVARHASCTOR, .-SYMBGETVARHASCTOR
.cfi_endproc
.balign 16

.globl SYMBGETVARHASDTOR
SYMBGETVARHASDTOR:
.type SYMBGETVARHASDTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0160
mov dword ptr [ebp-4], 0
jmp .L_015E
.L_0160:
.L_015F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0163
.L_0164:
mov dword ptr [ebp-4], -1
jmp .L_015E
jmp .L_0161
.L_0163:
cmp dword ptr [ebp-8], 39
jne .L_0165
.L_0166:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0168
mov dword ptr [ebp-4], -1
jmp .L_015E
.L_0168:
.L_0167:
.L_0165:
.L_0161:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_016A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_016C
mov dword ptr [ebp-4], -1
jmp .L_015E
.L_016C:
.L_016B:
.L_016A:
.L_0169:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETVARHASDTOR, .-SYMBGETVARHASDTOR
.cfi_endproc
.balign 16

.globl SYMBCLONEVAR
SYMBCLONEVAR:
.type SYMBCLONEVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_016D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_0171
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
call SYMBADDARRAYDESC
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0170
.L_0171:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .L_0172
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0170
.L_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0174
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_0176
.L_0179:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [Lt_017A+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [Lt_017A+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [Lt_017A+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [Lt_017A+eax+12], ebx
.L_0177:
inc dword ptr [ebp-8]
.L_0176:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .L_0179
.L_0178:
.L_0174:
.L_0173:
sub esp, 8
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset Lt_017B
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
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-4], eax
.L_0170:
.L_016E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCLONEVAR, .-SYMBCLONEVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_017A,128

.section .data
.balign 4
Lt_017B:
.int Lt_017A
.int Lt_017A
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl SYMBVARCHECKACCESS
SYMBVARCHECKACCESS:
.type SYMBVARCHECKACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_017C:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_017F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0181
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0183
mov dword ptr [ebp-4], 0
jmp .L_017D
.L_0183:
.L_0182:
jmp .L_0180
.L_0181:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_0184
mov dword ptr [ebp-4], 0
jmp .L_017D
.L_0184:
.L_0180:
.L_017F:
.L_017E:
mov dword ptr [ebp-4], -1
.L_017D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARCHECKACCESS, .-SYMBVARCHECKACCESS
.cfi_endproc
.balign 16

.globl SYMBDELVAR
SYMBDELVAR:
.type SYMBDELVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0185:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 16
cmp dword ptr [ebp+12], 0
jne .L_0188
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
je .L_018A
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call SYMBDELSYMBOL
add esp, 16
.L_018A:
.L_0189:
.L_0188:
.L_0187:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_018C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_018E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0190
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0192
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 16
.L_0192:
.L_0191:
.L_0190:
.L_018F:
jmp .L_018D
.L_018E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0194
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0196
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 16
.L_0196:
.L_0195:
.L_0194:
.L_0193:
.L_018D:
.L_018C:
.L_018B:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_0186:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELVAR, .-SYMBDELVAR
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0011:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
SYMBDROPARRAYDIMS:
.type SYMBDROPARRAYDIMS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B8:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.L_00B9:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDROPARRAYDIMS, .-SYMBDROPARRAYDIMS
.cfi_endproc
.balign 16
SYMBRECALCARRAYDIFF:
.type SYMBRECALCARRAYDIFF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_00BA:
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
jmp .L_00BD
.L_00C0:
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
.L_00BE:
inc dword ptr [ebp-28]
.L_00BD:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_00C0
.L_00BF:
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
.L_00BB:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBRECALCARRAYDIFF, .-SYMBRECALCARRAYDIFF
.cfi_endproc
.balign 16
SYMBRECALCARRAYDIFFANDELEMENTS:
.type SYMBRECALCARRAYDIFFANDELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_00C4
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFF
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBCALCARRAYELEMENTS
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
mov dword ptr [ebx+80], edx
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
.L_00C3:
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBRECALCARRAYDIFFANDELEMENTS, .-SYMBRECALCARRAYDIFFANDELEMENTS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0069:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
Lt_006A:	.ascii	"elements\0"
.balign 4
Lt_006B:	.ascii	"lbound\0"
.balign 4
Lt_006C:	.ascii	"ubound\0"
.balign 4
Lt_0075:	.ascii	"FBARRAY\0"
.balign 4
Lt_007F:	.ascii	"$\0"
.balign 4
Lt_0080:	.ascii	"<\0"
.balign 4
Lt_0081:	.ascii	">\0"
.balign 4
Lt_008B:	.ascii	"data\0"
.balign 4
Lt_008C:	.ascii	"ptr\0"
.balign 4
Lt_008D:	.ascii	"size\0"
.balign 4
Lt_008E:	.ascii	"element_len\0"
.balign 4
Lt_008F:	.ascii	"dimensions\0"
.balign 4
Lt_0090:	.ascii	"flags\0"
.balign 4
Lt_0093:	.ascii	"dimTB\0"
