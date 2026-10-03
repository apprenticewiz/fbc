	.intel_syntax noprefix

.section .text
.balign 16

.globl _HHEXUINT
_HHEXUINT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [_Lt_007F], 4
cmp dword ptr [ebp+8], 65535
jbe .L_0079
mov dword ptr [_Lt_007F], 8
.L_0079:
.L_0078:
mov eax, offset _Lt_0080 + 7
mov dword ptr [_Lt_0081], eax
mov dword ptr [_Lt_0082], 0
.L_007A:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [_Lt_0083+ebx*4]
mov ebx, dword ptr [_Lt_0081]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0082]
mov eax, dword ptr [_Lt_007F]
cmp dword ptr [_Lt_0082], eax
jne .L_007E
jmp .L_007B
.L_007E:
.L_007D:
dec dword ptr [_Lt_0081]
shr dword ptr [ebp+8], 4
.L_007C:
jmp .L_007A
.L_007B:
mov eax, dword ptr [_Lt_0081]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0080,9
.balign 4
	.lcomm	_Lt_0081,4
.balign 4
	.lcomm	_Lt_0082,4
.balign 4
	.lcomm	_Lt_007F,4

.section .data
.balign 4
_Lt_0083:
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

.globl _HFLOATTOHEX
_HFLOATTOHEX:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0084:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0086
mov dword ptr [ebp-16], 24
jmp .L_008B
.L_0086:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_008B:
cmp dword ptr [ebp-16], 16
jne .L_0089
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0088
.L_0089:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0088:
.L_0085:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFLOATTOHEX_C99
_HFLOATTOHEX_C99:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
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
je .L_008F
push 0
push 4
push offset _Lt_0090
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_008E
.L_008F:
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
.L_008E:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .L_0092
push 0
push 3
push offset _Lt_0007
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 2
push offset _Lt_0069
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0094
push 0
push -1
push 1
push offset _Lt_0069
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
.L_0094:
jmp .L_0091
.L_0092:
cmp dword ptr [ebp-32], 0
jne .L_0096
cmp dword ptr [ebp-36], 0
jne .L_0096
.L_00A3:
push 0
push 2
push offset _Lt_0069
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 0
jmp .L_0095
.L_0096:
inc dword ptr [ebp-28]
push 0
push 3
push offset _Lt_0097
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 2
push offset _Lt_0069
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0099
push 0
push -1
push 1
push offset _Lt_0069
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
.L_0099:
.L_0095:
.L_0091:
push 0
push -1
push -1
push -1
push -1
mov eax, dword ptr [ebp-28]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
push eax
call _fb_IntToStr
add esp, 4
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .L_009D
mov eax, offset _Lt_009B
mov dword ptr [ebp-52], eax
jmp .L_00A2
.L_009D:
mov eax, offset _Lt_009C
mov dword ptr [ebp-52], eax
.L_00A2:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 2
push offset _Lt_009A
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
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
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_008D
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_008D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFBRELOP2IRRELOP
_HFBRELOP2IRRELOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00A7
.L_00A9:
mov dword ptr [_Lt_00B1], 45
jmp .L_00A6
.L_00AA:
mov dword ptr [_Lt_00B1], 46
jmp .L_00A6
.L_00AB:
mov dword ptr [_Lt_00B1], 47
jmp .L_00A6
.L_00AC:
mov dword ptr [_Lt_00B1], 48
jmp .L_00A6
.L_00AD:
mov dword ptr [_Lt_00B1], 50
jmp .L_00A6
.L_00AE:
mov dword ptr [_Lt_00B1], 49
jmp .L_00A6
.L_00AF:
push 0
push 0
push 285
call _ERRREPORT
add esp, 12
mov dword ptr [_Lt_00B1], 45
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .L_00AF
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00B0+eax*4-1196]
_.L_00B0:
.int .L_00A9
.int .L_00AA
.int .L_00AB
.int .L_00AC
.int .L_00AD
.int .L_00AE
.L_00A6:
mov eax, dword ptr [_Lt_00B1]
mov dword ptr [ebp-4], eax
.L_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00B1,4

.section .text
.balign 16

.globl _HFILEEXISTS
_HFILEEXISTS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B2:
call _fb_FileFree
mov dword ptr [_Lt_00B8], eax
push 0
push dword ptr [_Lt_00B8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
jne .L_00B5
mov dword ptr [ebp-4], -1
push dword ptr [_Lt_00B8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_00B6
push 0
push 0
push offset _Lt_00B7
push 161
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B6:
jmp .L_00B4
.L_00B5:
mov dword ptr [ebp-4], 0
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00B8,4

.section .text
.balign 16

.globl _HUCASE
_HUCASE:
push ebp
mov ebp, esp
push ebx
.L_00B9:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00C3], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00C4], eax
.L_00BB:
mov eax, dword ptr [_Lt_00C3]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_00C5], ebx
cmp dword ptr [_Lt_00C5], 97
jl .L_00BF
cmp dword ptr [_Lt_00C5], 122
jg .L_00C1
add dword ptr [_Lt_00C5], -32
.L_00C1:
.L_00C0:
jmp .L_00BE
.L_00BF:
cmp dword ptr [_Lt_00C5], 0
jne .L_00C2
jmp .L_00BC
.L_00C2:
.L_00BE:
mov bl, byte ptr [_Lt_00C5]
mov eax, dword ptr [_Lt_00C4]
mov byte ptr [eax], bl
inc dword ptr [_Lt_00C3]
inc dword ptr [_Lt_00C4]
.L_00BD:
jmp .L_00BB
.L_00BC:
mov ebx, dword ptr [_Lt_00C4]
mov byte ptr [ebx], 0
.L_00BA:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C5,4
.balign 4
	.lcomm	_Lt_00C3,4
.balign 4
	.lcomm	_Lt_00C4,4

.section .text
.balign 16

.globl _HCLEARNAME
_HCLEARNAME:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00D2], eax
.L_00C8:
mov eax, dword ptr [_Lt_00D2]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00CC
.L_00CE:
jmp .L_00C9
jmp .L_00CB
.L_00CF:
jmp .L_00CB
.L_00D0:
mov ebx, dword ptr [_Lt_00D2]
mov byte ptr [ebx], 122
jmp .L_00CB
.L_00CC:
cmp dword ptr [ebp-4], 122
ja .L_00D0
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_00D1+ebx*4]
_.L_00D1:
.int .L_00CE
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
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
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
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
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00D0
.int .L_00CF
.int .L_00D0
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
.L_00CB:
inc dword ptr [_Lt_00D2]
.L_00CA:
jmp .L_00C8
.L_00C9:
.L_00C7:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00D2,4

.section .text
.balign 16

.globl _HSTRIPEXT
_HSTRIPEXT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E2:
push 0
push -1
push dword ptr [ebp+8]
call _HFINDEXTBEGIN
add esp, 4
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00E3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSTRIPPATH
_HSTRIPPATH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00E4:
mov dword ptr [_Lt_00F0], 0
.L_00E7:
push 1
push offset _Lt_0019
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [_Lt_00F0]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_00F1], eax
push 1
push offset _Lt_00DF
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [_Lt_00F0]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_00F1+4], eax
mov eax, dword ptr [_Lt_00F1]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_00F1+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_00F1+4]
cmp ecx, dword ptr [_Lt_00F1]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00EB
mov ebx, dword ptr [_Lt_00F1+4]
mov dword ptr [_Lt_00F5], ebx
jmp .L_00EA
.L_00EB:
mov ebx, dword ptr [_Lt_00F1]
mov dword ptr [_Lt_00F5], ebx
.L_00EA:
cmp dword ptr [_Lt_00F5], 0
jne .L_00ED
jmp .L_00E8
.L_00ED:
.L_00EC:
mov ebx, dword ptr [_Lt_00F5]
mov dword ptr [_Lt_00F0], ebx
.L_00E9:
jmp .L_00E7
.L_00E8:
cmp dword ptr [_Lt_00F0], 0
jle .L_00EF
push 0
push -1
push -1
mov ebx, dword ptr [_Lt_00F0]
inc ebx
push ebx
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00EE
.L_00EF:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00EE:
.L_00E5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00F0,4
.balign 4
	.lcomm	_Lt_00F5,4
.balign 4
	.lcomm	_Lt_00F1,8

.section .text
.balign 16

.globl _HSTRIPFILENAME
_HSTRIPFILENAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00F6:
mov dword ptr [_Lt_0102], 0
.L_00F9:
push 1
push offset _Lt_0019
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [_Lt_0102]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_0103], eax
push 1
push offset _Lt_00DF
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [_Lt_0102]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_0103+4], eax
mov eax, dword ptr [_Lt_0103]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0103+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0103+4]
cmp ecx, dword ptr [_Lt_0103]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_00FD
mov ebx, dword ptr [_Lt_0103+4]
mov dword ptr [_Lt_0107], ebx
jmp .L_00FC
.L_00FD:
mov ebx, dword ptr [_Lt_0103]
mov dword ptr [_Lt_0107], ebx
.L_00FC:
cmp dword ptr [_Lt_0107], 0
jne .L_00FF
jmp .L_00FA
.L_00FF:
.L_00FE:
mov ebx, dword ptr [_Lt_0107]
mov dword ptr [_Lt_0102], ebx
.L_00FB:
jmp .L_00F9
.L_00FA:
cmp dword ptr [_Lt_0102], 0
jle .L_0101
push 0
push -1
push dword ptr [_Lt_0102]
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0100
.L_0101:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0100:
.L_00F7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0102,4
.balign 4
	.lcomm	_Lt_0107,4
.balign 4
	.lcomm	_Lt_0103,8

.section .text
.balign 16

.globl _HGETFILEEXT
_HGETFILEEXT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0108:
mov dword ptr [_Lt_0116], 0
.L_010A:
push 1
push offset _Lt_0006
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [_Lt_0116]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_0117], eax
cmp dword ptr [_Lt_0117], 0
jne .L_010E
jmp .L_010B
.L_010E:
.L_010D:
mov eax, dword ptr [_Lt_0117]
mov dword ptr [_Lt_0116], eax
.L_010C:
jmp .L_010A
.L_010B:
cmp dword ptr [_Lt_0116], 0
jne .L_0110
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_010F
.L_0110:
push 0
push -1
push 0
push -1
mov eax, dword ptr [_Lt_0116]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
push offset _Lt_0118
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0019
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_0118
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_00DF
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset _Lt_0118
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0112
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0111
.L_0112:
push -1
push offset _Lt_0118
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0113
mov eax, dword ptr [_Lt_0118]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0118]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0115
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_0114
.L_0115:
push 0
push -1
push offset _Lt_0118
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.L_0114:
.L_0113:
.L_0111:
.L_010F:
.L_0109:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0117,4
.balign 4
	.lcomm	_Lt_0116,4
.balign 4
	.lcomm	_Lt_0118,12

.section .text
.balign 16

.globl _HREPLACESLASH
_HREPLACESLASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_011D:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
jmp .L_0120
.L_0123:
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
je .L_0125
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.L_0125:
.L_0124:
.L_0121:
inc dword ptr [ebp-4]
.L_0120:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0123
.L_0122:
.L_011E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PATHSTRIPDIV
_PATHSTRIPDIV:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0128:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_012B
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
je .L_012F
.L_0130:
movzx eax, byte ptr [ebp-20]
cmp eax, 92
jne .L_012E
.L_012F:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_0129
.L_012E:
.L_012C:
.L_012B:
.L_012A:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0129:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PATHISABSOLUTE
_PATHISABSOLUTE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0131:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_0134
mov ebx, dword ptr [ebp+8]
mov al, byte ptr [ebx+1]
mov byte ptr [ebp-8], al
movzx eax, byte ptr [ebp-8]
cmp eax, 58
jne .L_0137
.L_0139:
mov dword ptr [ebp-4], -1
.L_0137:
.L_0135:
.L_0134:
.L_0133:
.L_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCHECKFILEFORMAT
_HCHECKFILEFORMAT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_013A:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call _fb_FileGet
add esp, 16
test eax, eax
jne .L_013D
cmp dword ptr [ebp-8], -131072
jne .L_013F
mov dword ptr [ebp-12], 5
jmp .L_013E
.L_013F:
cmp dword ptr [ebp-8], 65279
jne .L_0140
mov dword ptr [ebp-12], 4
jmp .L_013E
.L_0140:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .L_0142
mov dword ptr [ebp-12], 1
jmp .L_0141
.L_0142:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .L_0144
mov dword ptr [ebp-12], 2
jmp .L_0143
.L_0144:
cmp dword ptr [ebp-8], 65534
jne .L_0145
mov dword ptr [ebp-12], 3
.L_0145:
.L_0143:
.L_0141:
.L_013E:
cmp dword ptr [ebp-12], 0
jne .L_0147
.L_0148:
push 1
push dword ptr [ebp+8]
call _fb_FileSeek
add esp, 8
test eax, eax
je .L_0149
push 0
push 0
push offset _Lt_00B7
push 425
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0149:
jmp .L_0146
.L_0147:
cmp dword ptr [ebp-12], 1
jne .L_014A
.L_014B:
push 4
push dword ptr [ebp+8]
call _fb_FileSeek
add esp, 8
test eax, eax
je .L_014C
push 0
push 0
push offset _Lt_00B7
push 428
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_014C:
jmp .L_0146
.L_014A:
cmp dword ptr [ebp-12], 2
je .L_014E
.L_014F:
cmp dword ptr [ebp-12], 3
jne .L_014D
.L_014E:
push 3
push dword ptr [ebp+8]
call _fb_FileSeek
add esp, 8
test eax, eax
je .L_0150
push 0
push 0
push offset _Lt_00B7
push 432
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0150:
.L_014D:
.L_0146:
.L_013D:
.L_013C:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_013B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCURDIR
_HCURDIR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0151:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _fb_CurDir
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _PATHSTRIPDIV
add esp, 4
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
.L_0152:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PATHSTRIPCURDIR
_PATHSTRIPCURDIR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0154:
push 0
push -1
push 2
push offset _Lt_0019
push -1
call _HCURDIR
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
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0158
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0157
.L_0158:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0157:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0155:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HISVALIDSYMBOLNAME
_HISVALIDSYMBOLNAME:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_0159:
cmp dword ptr [ebp+8], 0
jne .L_015C
jmp .L_015A
.L_015C:
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_015E
jmp .L_015A
.L_015E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0161
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_0180
.L_0161:
mov dword ptr [ebp-12], 0
.L_0180:
cmp dword ptr [ebp-12], 0
jne .L_0166
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0164
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0182
.L_0164:
mov dword ptr [ebp-16], 0
.L_0182:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_0181
.L_0166:
mov dword ptr [ebp-20], -1
.L_0181:
cmp dword ptr [ebp-20], 0
jne .L_0169
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0183
.L_0169:
mov dword ptr [ebp-24], -1
.L_0183:
cmp dword ptr [ebp-24], 0
jne .L_016C
jmp .L_015A
.L_016C:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_016E
.L_0171:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .L_0172
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .L_0184
.L_0172:
mov dword ptr [ebp-36], 0
.L_0184:
cmp dword ptr [ebp-36], 0
jne .L_0176
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .L_0174
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0186
.L_0174:
mov dword ptr [ebp-40], 0
.L_0186:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0185
.L_0176:
mov dword ptr [ebp-44], -1
.L_0185:
cmp dword ptr [ebp-44], 0
jne .L_0178
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_0187
.L_0178:
mov dword ptr [ebp-48], -1
.L_0187:
cmp dword ptr [ebp-48], 0
jne .L_017C
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .L_017A
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .L_0189
.L_017A:
mov dword ptr [ebp-52], 0
.L_0189:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .L_0188
.L_017C:
mov dword ptr [ebp-56], -1
.L_0188:
cmp dword ptr [ebp-56], 0
jne .L_017F
jmp .L_015A
.L_017F:
.L_016F:
inc dword ptr [ebp-28]
.L_016E:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_0171
.L_0170:
mov dword ptr [ebp-4], -1
.L_015A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _STRUNQUOTE
_STRUNQUOTE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019A:
push dword ptr [ebp+8]
call _STRISQUOTED
add esp, 4
test eax, eax
je .L_019D
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_019B
.L_019D:
.L_019C:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.L_019B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
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
_HFINDEXTBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00D3:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D5
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .L_00DB
.L_00DC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D4
jmp .L_00D9
.L_00DB:
movzx eax, byte ptr [ebp-12]
cmp eax, 92
je .L_00E0
.L_00E1:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .L_00DD
.L_00E0:
jmp .L_00D7
.L_00DD:
.L_00D9:
.L_00D6:
dec dword ptr [ebp-8]
.L_00D5:
cmp dword ptr [ebp-8], 0
jge .L_00D8
.L_00D7:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_STRISQUOTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0194:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .L_0197
mov dword ptr [ebp-4], 0
jmp .L_0195
.L_0197:
.L_0196:
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
.L_0195:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0006:	.ascii	".\0"
.balign 4
_Lt_0007:	.ascii	"1.\0"
.balign 4
_Lt_0019:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0069:	.ascii	"0\0"
.balign 4
_Lt_008A:	.ascii	"0x\0"
.balign 4
_Lt_0090:	.ascii	"-0x\0"
.balign 4
_Lt_0097:	.ascii	"0.\0"
.balign 4
_Lt_009A:	.ascii	"p\0"
.balign 4
_Lt_009B:	.ascii	"+\0"
.balign 4
_Lt_009C:	.ascii	"-\0"
.balign 4
_Lt_00B7:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
_Lt_00DF:	.ascii	"/\0"
