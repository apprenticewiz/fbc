	.intel_syntax noprefix

.section .text
.balign 16

.globl HHEXUINT
HHEXUINT:
.type HHEXUINT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0065:
mov dword ptr [Lt_007E], 4
cmp dword ptr [ebp+8], 65535
jbe .L_0078
mov dword ptr [Lt_007E], 8
.L_0078:
.L_0077:
mov eax, offset Lt_007F + 7
mov dword ptr [Lt_0080], eax
mov dword ptr [Lt_0081], 0
.L_0079:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [Lt_0082+ebx*4]
mov ebx, dword ptr [Lt_0080]
mov byte ptr [ebx], al
inc dword ptr [Lt_0081]
mov eax, dword ptr [Lt_007E]
cmp dword ptr [Lt_0081], eax
jne .L_007D
jmp .L_007A
.L_007D:
.L_007C:
dec dword ptr [Lt_0080]
shr dword ptr [ebp+8], 4
.L_007B:
jmp .L_0079
.L_007A:
mov eax, dword ptr [Lt_0080]
mov dword ptr [ebp-4], eax
.L_0066:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HHEXUINT, .-HHEXUINT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_007F,9
.balign 4
	.lcomm	Lt_0080,4
.balign 4
	.lcomm	Lt_0081,4
.balign 4
	.lcomm	Lt_007E,4

.section .data
.balign 4
Lt_0082:
.int 48
.int 49
.int 50
.int 51
.int 52
.int 53
.int 54
.int 55
.int 56
.int 57
.int 65
.int 66
.int 67
.int 68
.int 69
.int 70

.section .text
.balign 16

.globl HFLOATTOHEX
HFLOATTOHEX:
.type HFLOATTOHEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0083:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0085
mov dword ptr [ebp-16], 24
jmp .L_008A
.L_0085:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_008A:
cmp dword ptr [ebp-16], 16
jne .L_0088
sub esp, 12
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0087
.L_0088:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
sub esp, 12
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 8
push dword ptr [ebp-20]
call fb_HEXEx_i
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0087:
.L_0084:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLOATTOHEX, .-HFLOATTOHEX
.cfi_endproc
.balign 16

.globl HFLOATTOHEX_C99
HFLOATTOHEX_C99:
.type HFLOATTOHEX_C99, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov eax, ebx
xor ebx, ebx
shr eax, 31
mov ecx, eax
mov dword ptr [ebp-24], ecx
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
mov eax, ecx
xor ecx, ecx
shr eax, 20
and eax, 2047
and ecx, 0
mov ebx, eax
mov dword ptr [ebp-28], ebx
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and eax, 4294967295
and ebx, 1048575
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-24], 0
je .L_008E
sub esp, 12
push 0
push 4
push offset Lt_008F
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
jmp .L_008D
.L_008E:
sub esp, 12
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_008D:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .L_0091
sub esp, 12
push 0
push 3
push offset Lt_0007
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
push 2
push offset Lt_0068
push -1
sub esp, 12
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0093
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_0068
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_0093:
jmp .L_0090
.L_0091:
cmp dword ptr [ebp-32], 0
jne .L_0095
cmp dword ptr [ebp-36], 0
jne .L_0095
.L_00A2:
sub esp, 12
push 0
push 2
push offset Lt_0068
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], 0
jmp .L_0094
.L_0095:
inc dword ptr [ebp-28]
sub esp, 12
push 0
push 3
push offset Lt_0096
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 32
push 2
push offset Lt_0068
push -1
sub esp, 12
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0098
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_0068
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_0098:
.L_0094:
.L_0090:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 12
push -1
sub esp, 12
mov eax, dword ptr [ebp-28]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
push eax
call fb_IntToStr
add esp, 16
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .L_009C
mov eax, offset Lt_009A
mov dword ptr [ebp-52], eax
jmp .L_00A1
.L_009C:
mov eax, offset Lt_009B
mov dword ptr [ebp-52], eax
.L_00A1:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 32
push eax
push 2
push offset Lt_0099
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008C
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.L_008C:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLOATTOHEX_C99, .-HFLOATTOHEX_C99
.cfi_endproc
.balign 16

.globl HFBRELOP2IRRELOP
HFBRELOP2IRRELOP:
.type HFBRELOP2IRRELOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00A6
.L_00A8:
mov dword ptr [Lt_00B0], 45
jmp .L_00A5
.L_00A9:
mov dword ptr [Lt_00B0], 46
jmp .L_00A5
.L_00AA:
mov dword ptr [Lt_00B0], 47
jmp .L_00A5
.L_00AB:
mov dword ptr [Lt_00B0], 48
jmp .L_00A5
.L_00AC:
mov dword ptr [Lt_00B0], 50
jmp .L_00A5
.L_00AD:
mov dword ptr [Lt_00B0], 49
jmp .L_00A5
.L_00AE:
sub esp, 4
push 0
push 0
push 285
call ERRREPORT
add esp, 16
mov dword ptr [Lt_00B0], 45
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .L_00AE
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00AF+eax*4-1196]
.L_00AF:
.int .L_00A8
.int .L_00A9
.int .L_00AA
.int .L_00AB
.int .L_00AC
.int .L_00AD
.L_00A5:
mov eax, dword ptr [Lt_00B0]
mov dword ptr [ebp-4], eax
.L_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFBRELOP2IRRELOP, .-HFBRELOP2IRRELOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00B0,4

.section .text
.balign 16

.globl HFILEEXISTS
HFILEEXISTS:
.type HFILEEXISTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00B1:
call fb_FileFree
mov dword ptr [Lt_00B7], eax
sub esp, 8
push 0
push dword ptr [Lt_00B7]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
jne .L_00B4
mov dword ptr [ebp-4], -1
sub esp, 12
push dword ptr [Lt_00B7]
call fb_FileClose
add esp, 16
test eax, eax
je .L_00B5
push 0
push 0
push offset Lt_00B6
push 161
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B5:
jmp .L_00B3
.L_00B4:
mov dword ptr [ebp-4], 0
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILEEXISTS, .-HFILEEXISTS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00B7,4

.section .text
.balign 16

.globl HUCASE
HUCASE:
.type HUCASE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B8:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00C2], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00C3], eax
.L_00BA:
mov eax, dword ptr [Lt_00C2]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_00C4], ebx
cmp dword ptr [Lt_00C4], 97
jl .L_00BE
cmp dword ptr [Lt_00C4], 122
jg .L_00C0
add dword ptr [Lt_00C4], -32
.L_00C0:
.L_00BF:
jmp .L_00BD
.L_00BE:
cmp dword ptr [Lt_00C4], 0
jne .L_00C1
jmp .L_00BB
.L_00C1:
.L_00BD:
mov bl, byte ptr [Lt_00C4]
mov eax, dword ptr [Lt_00C3]
mov byte ptr [eax], bl
inc dword ptr [Lt_00C2]
inc dword ptr [Lt_00C3]
.L_00BC:
jmp .L_00BA
.L_00BB:
mov ebx, dword ptr [Lt_00C3]
mov byte ptr [ebx], 0
.L_00B9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HUCASE, .-HUCASE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00C4,4
.balign 4
	.lcomm	Lt_00C2,4
.balign 4
	.lcomm	Lt_00C3,4

.section .text
.balign 16

.globl HCLEARNAME
HCLEARNAME:
.type HCLEARNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00D1], eax
.L_00C7:
mov eax, dword ptr [Lt_00D1]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00CB
.L_00CD:
jmp .L_00C8
jmp .L_00CA
.L_00CE:
jmp .L_00CA
.L_00CF:
mov ebx, dword ptr [Lt_00D1]
mov byte ptr [ebx], 122
jmp .L_00CA
.L_00CB:
cmp dword ptr [ebp-4], 122
ja .L_00CF
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_00D0+ebx*4]
.L_00D0:
.int .L_00CD
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CF
.int .L_00CE
.int .L_00CF
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.L_00CA:
inc dword ptr [Lt_00D1]
.L_00C9:
jmp .L_00C7
.L_00C8:
.L_00C6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCLEARNAME, .-HCLEARNAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00D1,4

.section .text
.balign 16

.globl HSTRIPEXT
HSTRIPEXT:
.type HSTRIPEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DE:
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call HFINDEXTBEGIN
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00DF:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPEXT, .-HSTRIPEXT
.cfi_endproc
.balign 16

.globl HSTRIPPATH
HSTRIPPATH:
.type HSTRIPPATH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E0:
mov dword ptr [Lt_00ED], 0
.L_00E3:
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00ED]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00EE], eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0018
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00ED]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00EE+4], eax
mov eax, dword ptr [Lt_00EE]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_00EE+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_00EE+4]
cmp ecx, dword ptr [Lt_00EE]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00E8
mov ebx, dword ptr [Lt_00EE+4]
mov dword ptr [Lt_00F2], ebx
jmp .L_00E7
.L_00E8:
mov ebx, dword ptr [Lt_00EE]
mov dword ptr [Lt_00F2], ebx
.L_00E7:
cmp dword ptr [Lt_00F2], 0
jne .L_00EA
jmp .L_00E4
.L_00EA:
.L_00E9:
mov ebx, dword ptr [Lt_00F2]
mov dword ptr [Lt_00ED], ebx
.L_00E5:
jmp .L_00E3
.L_00E4:
cmp dword ptr [Lt_00ED], 0
jle .L_00EC
sub esp, 12
push 0
push -1
push -1
mov ebx, dword ptr [Lt_00ED]
inc ebx
push ebx
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00EB
.L_00EC:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00EB:
.L_00E1:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPPATH, .-HSTRIPPATH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00ED,4
.balign 4
	.lcomm	Lt_00F2,4
.balign 4
	.lcomm	Lt_00EE,8

.section .text
.balign 16

.globl HSTRIPFILENAME
HSTRIPFILENAME:
.type HSTRIPFILENAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00F3:
mov dword ptr [Lt_00FF], 0
.L_00F6:
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00FF]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_0100], eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0018
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_00FF]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_0100+4], eax
mov eax, dword ptr [Lt_0100]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0100+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_0100+4]
cmp ecx, dword ptr [Lt_0100]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00FA
mov ebx, dword ptr [Lt_0100+4]
mov dword ptr [Lt_0104], ebx
jmp .L_00F9
.L_00FA:
mov ebx, dword ptr [Lt_0100]
mov dword ptr [Lt_0104], ebx
.L_00F9:
cmp dword ptr [Lt_0104], 0
jne .L_00FC
jmp .L_00F7
.L_00FC:
.L_00FB:
mov ebx, dword ptr [Lt_0104]
mov dword ptr [Lt_00FF], ebx
.L_00F8:
jmp .L_00F6
.L_00F7:
cmp dword ptr [Lt_00FF], 0
jle .L_00FE
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [Lt_00FF]
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00FD
.L_00FE:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00FD:
.L_00F4:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTRIPFILENAME, .-HSTRIPFILENAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00FF,4
.balign 4
	.lcomm	Lt_0104,4
.balign 4
	.lcomm	Lt_0100,8

.section .text
.balign 16

.globl HGETFILEEXT
HGETFILEEXT:
.type HGETFILEEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0105:
mov dword ptr [Lt_0113], 0
.L_0107:
sub esp, 4
sub esp, 4
push 1
push offset Lt_0006
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 8
push eax
mov eax, dword ptr [Lt_0113]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_0114], eax
cmp dword ptr [Lt_0114], 0
jne .L_010B
jmp .L_0108
.L_010B:
.L_010A:
mov eax, dword ptr [Lt_0114]
mov dword ptr [Lt_0113], eax
.L_0109:
jmp .L_0107
.L_0108:
cmp dword ptr [Lt_0113], 0
jne .L_010D
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_010C
.L_010D:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 8
push -1
mov eax, dword ptr [Lt_0113]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 20
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
push offset Lt_0115
call fb_StrAssign
add esp, 32
sub esp, 4
sub esp, 4
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push offset Lt_0115
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 4
sub esp, 4
push 1
push offset Lt_0018
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push offset Lt_0115
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_010F
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_010E
.L_010F:
sub esp, 8
push -1
push offset Lt_0115
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0110
mov eax, dword ptr [Lt_0115]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0115]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0112
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0111
.L_0112:
sub esp, 12
push 0
push -1
push offset Lt_0115
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.L_0111:
.L_0110:
.L_010E:
.L_010C:
.L_0106:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETFILEEXT, .-HGETFILEEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0114,4
.balign 4
	.lcomm	Lt_0113,4
.balign 4
	.lcomm	Lt_0115,12

.section .text
.balign 16

.globl HREPLACESLASH
HREPLACESLASH:
.type HREPLACESLASH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_011A:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
jmp .L_011D
.L_0120:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ecx, byte ptr [eax]
cmp ecx, 47
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0122
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.L_0122:
.L_0121:
.L_011E:
inc dword ptr [ebp-4]
.L_011D:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0120
.L_011F:
.L_011B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREPLACESLASH, .-HREPLACESLASH
.cfi_endproc
.balign 16

.globl PATHSTRIPDIV
PATHSTRIPDIV:
.type PATHSTRIPDIV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0125:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_0128
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
jne .L_012B
.L_012C:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0126
.L_012B:
.L_0129:
.L_0128:
.L_0127:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0126:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHSTRIPDIV, .-PATHSTRIPDIV
.cfi_endproc
.balign 16

.globl PATHISABSOLUTE
PATHISABSOLUTE:
.type PATHISABSOLUTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHISABSOLUTE, .-PATHISABSOLUTE
.cfi_endproc
.balign 16

.globl HCHECKFILEFORMAT
HCHECKFILEFORMAT:
.type HCHECKFILEFORMAT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0130:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call fb_FileGet
add esp, 16
test eax, eax
jne .L_0133
cmp dword ptr [ebp-8], -131072
jne .L_0135
mov dword ptr [ebp-12], 5
jmp .L_0134
.L_0135:
cmp dword ptr [ebp-8], 65279
jne .L_0136
mov dword ptr [ebp-12], 4
jmp .L_0134
.L_0136:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .L_0138
mov dword ptr [ebp-12], 1
jmp .L_0137
.L_0138:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .L_013A
mov dword ptr [ebp-12], 2
jmp .L_0139
.L_013A:
cmp dword ptr [ebp-8], 65534
jne .L_013B
mov dword ptr [ebp-12], 3
.L_013B:
.L_0139:
.L_0137:
.L_0134:
cmp dword ptr [ebp-12], 0
jne .L_013D
.L_013E:
sub esp, 8
push 1
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_013F
push 0
push 0
push offset Lt_00B6
push 425
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_013F:
jmp .L_013C
.L_013D:
cmp dword ptr [ebp-12], 1
jne .L_0140
.L_0141:
sub esp, 8
push 4
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_0142
push 0
push 0
push offset Lt_00B6
push 428
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0142:
jmp .L_013C
.L_0140:
cmp dword ptr [ebp-12], 2
je .L_0144
.L_0145:
cmp dword ptr [ebp-12], 3
jne .L_0143
.L_0144:
sub esp, 8
push 3
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_0146
push 0
push 0
push offset Lt_00B6
push 432
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0146:
.L_0143:
.L_013C:
.L_0133:
.L_0132:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0131:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKFILEFORMAT, .-HCHECKFILEFORMAT
.cfi_endproc
.balign 16

.globl HCURDIR
HCURDIR:
.type HCURDIR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0147:
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 12
call fb_CurDir
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0148:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCURDIR, .-HCURDIR
.cfi_endproc
.balign 16

.globl PATHSTRIPCURDIR
PATHSTRIPCURDIR:
.type PATHSTRIPCURDIR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_014A:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0018
push -1
sub esp, 8
call HCURDIR
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 12
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_014E
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call fb_StrLen
add esp, 8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_014D
.L_014E:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_014D:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_014B:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PATHSTRIPCURDIR, .-PATHSTRIPCURDIR
.cfi_endproc
.balign 16

.globl HISVALIDSYMBOLNAME
HISVALIDSYMBOLNAME:
.type HISVALIDSYMBOLNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_014F:
cmp dword ptr [ebp+8], 0
jne .L_0152
jmp .L_0150
.L_0152:
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0154
jmp .L_0150
.L_0154:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0157
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_0176
.L_0157:
mov dword ptr [ebp-12], 0
.L_0176:
cmp dword ptr [ebp-12], 0
jne .L_015C
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_015A
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0178
.L_015A:
mov dword ptr [ebp-16], 0
.L_0178:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0177
.L_015C:
mov dword ptr [ebp-20], -1
.L_0177:
cmp dword ptr [ebp-20], 0
jne .L_015F
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0179
.L_015F:
mov dword ptr [ebp-24], -1
.L_0179:
cmp dword ptr [ebp-24], 0
jne .L_0162
jmp .L_0150
.L_0162:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_0164
.L_0167:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0168
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_017A
.L_0168:
mov dword ptr [ebp-36], 0
.L_017A:
cmp dword ptr [ebp-36], 0
jne .L_016C
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_016A
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_017C
.L_016A:
mov dword ptr [ebp-40], 0
.L_017C:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_017B
.L_016C:
mov dword ptr [ebp-44], -1
.L_017B:
cmp dword ptr [ebp-44], 0
jne .L_016E
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_017D
.L_016E:
mov dword ptr [ebp-48], -1
.L_017D:
cmp dword ptr [ebp-48], 0
jne .L_0172
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_0170
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .L_017F
.L_0170:
mov dword ptr [ebp-52], 0
.L_017F:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .L_017E
.L_0172:
mov dword ptr [ebp-56], -1
.L_017E:
cmp dword ptr [ebp-56], 0
jne .L_0175
jmp .L_0150
.L_0175:
.L_0165:
inc dword ptr [ebp-28]
.L_0164:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_0167
.L_0166:
mov dword ptr [ebp-4], -1
.L_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISVALIDSYMBOLNAME, .-HISVALIDSYMBOLNAME
.cfi_endproc
.balign 16

.globl STRUNQUOTE
STRUNQUOTE:
.type STRUNQUOTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0190:
sub esp, 12
push dword ptr [ebp+8]
call STRISQUOTED
add esp, 16
test eax, eax
je .L_0193
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 12
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0191
.L_0193:
.L_0192:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_0191:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRUNQUOTE, .-STRUNQUOTE
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
HFINDEXTBEGIN:
.type HFINDEXTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D2:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D4
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .L_00DA
.L_00DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D3
jmp .L_00D8
.L_00DA:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .L_00DC
.L_00DD:
jmp .L_00D6
.L_00DC:
.L_00D8:
.L_00D5:
dec dword ptr [ebp-8]
.L_00D4:
cmp dword ptr [ebp-8], 0
jge .L_00D7
.L_00D6:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFINDEXTBEGIN, .-HFINDEXTBEGIN
.cfi_endproc
.balign 16
STRISQUOTED:
.type STRISQUOTED, @function
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
.L_018A:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .L_018D
mov dword ptr [ebp-4], 0
jmp .L_018B
.L_018D:
.L_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 34
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
movzx eax, byte ptr [ecx]
cmp eax, 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax]
cmp ecx, 39
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
add esi, dword ptr [ebp-8]
movzx ecx, byte ptr [esi]
cmp ecx, 39
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_018B:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRISQUOTED, .-STRISQUOTED
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	".\0"
.balign 4
Lt_0007:	.ascii	"1.\0"
.balign 4
Lt_0018:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0068:	.ascii	"0\0"
.balign 4
Lt_0089:	.ascii	"0x\0"
.balign 4
Lt_008F:	.ascii	"-0x\0"
.balign 4
Lt_0096:	.ascii	"0.\0"
.balign 4
Lt_0099:	.ascii	"p\0"
.balign 4
Lt_009A:	.ascii	"+\0"
.balign 4
Lt_009B:	.ascii	"-\0"
.balign 4
Lt_00B6:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
Lt_00E6:	.ascii	"\\\0"
