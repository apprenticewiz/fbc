	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBMANGLEINIT
_SYMBMANGLEINIT:
.L_005D:
push 12
push 96
lea eax, [_CTX]
push eax
call _FLISTINIT
add esp, 12
mov dword ptr [_CTX+56], 0
mov dword ptr [_CTX+80], 0
mov dword ptr [_CTX+84], 0
mov dword ptr [_CTX+88], 0
.L_005E:
ret
.balign 16

.globl _SYMBMANGLEEND
_SYMBMANGLEEND:
.L_005F:
lea eax, [_CTX]
push eax
call _FLISTEND
add esp, 4
.L_0060:
ret
.balign 16

.globl _SYMBUNIQUEID
_SYMBUNIQUEID:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0061:
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
movzx ebx, byte ptr [ebp+8]
neg ebx
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0064
push 0
push 5
push offset _Lt_0065
push 17
lea ebx, [_CTX+60]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_CTX+80]
call _fb_IntToStr
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0063
.L_0064:
push 0
push 4
push offset _Lt_0067
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
.L_0063:
inc dword ptr [_CTX+80]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUNIQUELABEL
_SYMBUNIQUELABEL:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_006B:
cmp dword ptr [_ENV+104], 1
jne .L_006E
push 0
push 7
push offset _Lt_006F
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_CTX+84]
call _fb_IntToStr
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+84]
jmp .L_006D
.L_006E:
cmp dword ptr [_ENV+108], 9
jne .L_0072
push 0
push 3
push offset _Lt_0073
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0071
.L_0072:
push 0
push 4
push offset _Lt_0074
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
.L_0071:
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+80]
.L_006D:
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMAKEPROFILELABELNAME
_SYMBMAKEPROFILELABELNAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0076:
push 0
push -1
push 0
push dword ptr [_CTX+88]
call _HHEXUINT
add esp, 4
push eax
push 4
push offset _Lt_0078
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+88]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDBGNAME
_SYMBGETDBGNAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
test eax, eax
je .L_007D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_007F
.L_0081:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0083
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.L_0083:
.L_0082:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_007B
jmp .L_007E
.L_0084:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_007B
jmp .L_007E
.L_007F:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .L_0084
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0085+eax*4-32]
_.L_0085:
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0081
.L_007E:
.L_007D:
.L_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0087
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0089
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .L_007B
.L_0089:
.L_0088:
.L_0087:
.L_0086:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETNAME
_SYMBSETNAME:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_008C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_008F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
.L_008F:
.L_008E:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0091
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [_SYMB+98608]
push eax
call _POOLNEWITEM
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _fb_StrAssign
add esp, 20
.L_0090:
.L_008D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETMANGLEDNAME
_SYMBGETMANGLEDNAME:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_00A8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .L_00A6
.L_00A8:
.L_00A7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00AA
.L_00AC:
push dword ptr [ebp+8]
call _HMANGLEPROC
add esp, 4
jmp .L_00A9
.L_00AD:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-20]
push ebx
call _HMANGLENAMESPACE
add esp, 16
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call _HMANGLEUDTID
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00AF
push 0
push 2
push offset _Lt_00A4
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_00AF:
.L_00AE:
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_00A9
.L_00B0:
push dword ptr [ebp+8]
call _HMANGLEVARIABLE
add esp, 4
jmp .L_00A9
.L_00B1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_00A6
jmp .L_00A9
.L_00AA:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .L_00B1
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00B2+eax*4-4]
_.L_00B2:
.int .L_00B0
.int .L_00B1
.int .L_00AC
.int .L_00B1
.int .L_00B1
.int .L_00B1
.int .L_00B1
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00B1
.int .L_00B1
.int .L_00AD
.L_00A9:
call _SYMBMANGLERESETABBREV
cmp dword ptr [_ENV+104], 1
jne .L_00B4
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_00B6
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HREPLACECHAR
add esp, 12
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMANGLERESETABBREV
_SYMBMANGLERESETABBREV:
.L_00B7:
lea eax, [_CTX]
push eax
call _FLISTRESET
add esp, 4
mov dword ptr [_CTX+56], 0
.L_00B8:
ret
.balign 16

.globl _HMANGLEBUILTINTYPE
_HMANGLEBUILTINTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D3:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .L_00D6
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset _Lt_00D7
mov dword ptr [ebp-4], eax
jmp .L_00D4
.L_00D6:
.L_00D5:
call _FBIS64BIT
mov ebx, dword ptr [_ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D9
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00DB
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .L_00DD
.L_00DE:
mov ebx, offset _Lt_00DF
mov dword ptr [ebp-4], ebx
jmp .L_00D4
jmp .L_00DC
.L_00DD:
cmp dword ptr [ebp+8], 9
jne .L_00E0
.L_00E1:
mov ebx, offset _Lt_00E2
mov dword ptr [ebp-4], ebx
jmp .L_00D4
.L_00E0:
.L_00DC:
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp+8], 8
jne .L_00E4
.L_00E5:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00E6
mov dword ptr [ebp-4], ebx
jmp .L_00D4
jmp .L_00E3
.L_00E4:
cmp dword ptr [ebp+8], 9
jne .L_00E7
.L_00E8:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00E9
mov dword ptr [ebp-4], ebx
jmp .L_00D4
.L_00E7:
.L_00E3:
.L_00DA:
jmp .L_00D8
.L_00D9:
cmp dword ptr [ebp+8], 8
jne .L_00EB
.L_00EC:
mov ebx, offset _Lt_00DF
mov dword ptr [ebp-4], ebx
jmp .L_00D4
jmp .L_00EA
.L_00EB:
cmp dword ptr [ebp+8], 9
jne .L_00ED
.L_00EE:
mov ebx, offset _Lt_00E2
mov dword ptr [ebp-4], ebx
jmp .L_00D4
.L_00ED:
.L_00EA:
.L_00D8:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00F0
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.L_00F0:
.L_00EF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0101+ebx*4]
mov dword ptr [ebp-4], eax
.L_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0101:
.int _Lt_00F2
.int _Lt_00F3
.int _Lt_00F4
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.long 0
.long 0
.long 0
.int _Lt_00FA
.int _Lt_00FB
.int _Lt_00FC
.int _Lt_00FD
.int _Lt_00FE
.int _Lt_00FF
.long 0
.long 0
.int _Lt_00F6
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl _SYMBMANGLETYPE
_SYMBMANGLETYPE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0102:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVFIND
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .L_0105
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HABBREVGET
add esp, 8
jmp .L_0103
.L_0105:
.L_0104:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0106
mov dword ptr [ebp-16], 24
jmp .L_0145
.L_0106:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0145:
cmp dword ptr [ebp-16], 23
jne .L_0109
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.L_0109:
.L_0108:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .L_010B
push 0
push 2
push offset _Lt_010C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .L_0103
.L_010B:
.L_010A:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .L_010E
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_0110
push 0
push 2
push offset _Lt_0111
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0110:
.L_010F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_0113
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
.L_0113:
.L_0112:
jmp .L_0103
.L_010E:
.L_010D:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0115
push 0
push 2
push offset _Lt_0116
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+20]
or eax, 2
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .L_0103
.L_0115:
.L_0114:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .L_0118
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .L_011A
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_011C
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_011F
.L_0120:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .L_0122
push 0
push 4
push offset _Lt_0123
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_0121
.L_0122:
push 0
push 2
push offset _Lt_0116
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0121:
and dword ptr [ebp+12], -32505857
jmp .L_011D
.L_011F:
cmp dword ptr [ebp-20], 4
je .L_0125
.L_0126:
cmp dword ptr [ebp-20], 5
jne .L_0124
.L_0125:
push 0
push 3
push offset _Lt_0127
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
and dword ptr [ebp+12], -32505857
.L_0124:
.L_011D:
.L_011C:
.L_011B:
.L_011A:
.L_0119:
.L_0118:
.L_0117:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .L_012B
.L_012C:
cmp dword ptr [ebp-20], 10
jne .L_012A
.L_012B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .L_012E
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
jmp .L_012D
.L_012E:
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_0130
push 0
push 2
push offset _Lt_0131
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0130:
.L_012F:
push 8
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_0133
push 0
push 2
push offset _Lt_00A4
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0133:
.L_0132:
.L_012D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .L_0128
.L_012A:
cmp dword ptr [ebp-20], 21
jne .L_0134
.L_0135:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .L_0137
jmp .L_0103
.L_0137:
.L_0136:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0139
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
.L_0139:
.L_0138:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .L_0128
.L_0134:
cmp dword ptr [ebp-20], 22
jne .L_013A
.L_013B:
push 0
push 2
push offset _Lt_013C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_013E
push 0
push 2
push offset _Lt_010C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_013E:
.L_013D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_0140
push 0
push 2
push offset _Lt_0111
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0140:
.L_013F:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HGETPROCPARAMSTYPECODE
add esp, 12
push 0
push 2
push offset _Lt_00A4
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .L_0128
.L_013A:
push 0
push -1
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-8], 0
je .L_0144
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
.L_0144:
.L_0143:
.L_0141:
.L_0128:
.L_0103:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMANGLEPARAM
_SYMBMANGLEPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0146:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .L_0149
.L_014B:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .L_0148
.L_014C:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .L_0148
.L_014D:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .L_0148
.L_014E:
push 0
push 2
push offset _Lt_014F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_0148
.L_0149:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .L_0148
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0150+eax*4-4]
_.L_0150:
.int .L_014B
.int .L_014C
.int .L_014D
.int .L_014E
.L_0148:
.L_0147:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symbzmangling:
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
_SYMBSETMANGLEDID:
push ebp
mov ebp, esp
push ebx
.L_0092:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _fb_StrAssign
add esp, 20
.L_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLEUDTID:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0094:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0097
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+20], 0
je .L_0099
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+20]
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_0098
.L_0099:
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrAssign
add esp, 20
.L_0098:
push 0
push 2
push offset _Lt_009A
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_02B9]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
push 0
push -1
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
inc dword ptr [_Lt_02B9]
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0096
.L_0097:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_009C
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_009B
.L_009C:
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_009B:
.L_0096:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00A2
push 0
push 2
push offset _Lt_00A3
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
lea ecx, [ebp-8]
push ecx
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+12]
call _SYMBGETDESCTYPEARRAYDTYPE
add esp, 12
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push 0
push 2
push offset _Lt_00A4
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_00A2:
.L_00A1:
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_02B9:
.int 1

.section .text
.balign 16
_HABBREVFIND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00B9:
cmp dword ptr [_CTX+56], 0
jne .L_00BC
mov dword ptr [ebp-4], -1
jmp .L_00BA
.L_00BC:
.L_00BB:
lea eax, [_CTX]
push eax
call _FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_00BD:
cmp dword ptr [ebp-8], 0
je .L_00BE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_00C0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .L_00C2
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00BA
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
push dword ptr [ebp-8]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00BD
.L_00BE:
mov dword ptr [ebp-4], -1
.L_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HABBREVADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C3:
lea eax, [_CTX]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [_CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HABBREVGET:
push ebp
mov ebp, esp
push ebx
.L_00C5:
push 0
push 2
push offset _Lt_00C7
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+12], 0
jle .L_00C9
cmp dword ptr [ebp+12], 10
jg .L_00CB
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_00CA
.L_00CB:
cmp dword ptr [ebp+12], 33
jg .L_00CD
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_00CA
.L_00CD:
push 0
push -1
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .L_00D0
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_00CF
.L_00D0:
cmp dword ptr [ebp+12], 33
jg .L_00D1
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_00D1:
.L_00CF:
.L_00CA:
.L_00C9:
.L_00C8:
push 0
push 2
push offset _Lt_00D2
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDUNDERSCORE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0151:
cmp dword ptr [_ENV+104], 1
jne .L_0154
mov dword ptr [ebp-4], 0
jmp .L_0153
.L_0154:
mov eax, dword ptr [_ENV+292]
mov dword ptr [ebp-4], eax
.L_0153:
.L_0152:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HDOCPPMANGLING:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .L_0158
mov dword ptr [ebp-4], -1
jmp .L_0156
.L_0158:
.L_0157:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2080
test eax, eax
je .L_015A
mov dword ptr [ebp-4], 0
jmp .L_0156
.L_015A:
.L_0159:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 6
jne .L_015C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8388608
test eax, eax
jne .L_015E
mov dword ptr [ebp-4], 0
jmp .L_0156
.L_015E:
.L_015D:
.L_015C:
.L_015B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_0160
mov dword ptr [ebp-4], -1
jmp .L_0156
.L_0160:
.L_015F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0162
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_0164
mov dword ptr [ebp-4], -1
jmp .L_0156
.L_0164:
.L_0163:
.L_0162:
.L_0161:
mov dword ptr [ebp-4], 0
.L_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLENAMESPACE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0165:
cmp dword ptr [ebp+12], 0
jne .L_0169
jmp .L_0166
.L_0169:
.L_0168:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .L_016B
jmp .L_0166
.L_016B:
.L_016A:
cmp dword ptr [ebp+16], 0
je .L_016D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-16]
push eax
call _SYMBMANGLETYPE
add esp, 16
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_016D:
.L_016C:
mov dword ptr [ebp-4], -1
.L_016E:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_02BC+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.L_0170:
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .L_016E
.L_016F:
push 0
push 2
push offset _Lt_0131
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+20], 0
je .L_0172
push 0
push 2
push offset _Lt_0111
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0172:
.L_0171:
.L_0173:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_Lt_02BC+ebx*4]
mov dword ptr [ebp+12], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
dec dword ptr [ebp-4]
.L_0175:
cmp dword ptr [ebp-4], 0
jge .L_0173
.L_0174:
.L_0166:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BC,256

.section .text
.balign 16
_HMANGLEVARIABLE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.L_0176:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .L_0179
mov dword ptr [ebp-20], 0
jmp .L_0178
.L_0179:
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
mov dword ptr [ebp-20], eax
.L_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .L_017B
cmp dword ptr [_ENV+104], 2
jne .L_017D
push 0
push 2
push offset _Lt_017E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_017D:
.L_017C:
call _HADDUNDERSCORE
test eax, eax
je .L_0180
push 0
push 2
push offset _Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0180:
.L_017F:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0184
.L_0185:
cmp dword ptr [ebp-28], 1
jne .L_0183
.L_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0187
push 0
push 7
push offset _Lt_0188
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_0187:
.L_0186:
.L_0183:
.L_0181:
cmp dword ptr [ebp-20], 0
je .L_018A
push 0
push 3
push offset _Lt_018B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .L_018D
push 0
push 3
push offset _Lt_018E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_018C
.L_018D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .L_018F
push 0
push 3
push offset _Lt_0190
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_018F:
.L_018C:
.L_018A:
.L_0189:
jmp .L_017A
.L_017B:
cmp dword ptr [_ENV+104], 2
jne .L_0192
push 0
push 2
push offset _Lt_0193
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_0192:
.L_0191:
.L_017A:
cmp dword ptr [ebp-20], 0
je .L_0195
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call _HMANGLENAMESPACE
add esp, 16
.L_0195:
.L_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .L_0197
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_0196
.L_0197:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .L_0198
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_0196
.L_0198:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 57
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
or ebx, dword ptr [ebp-24]
je .L_019A
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_019C
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_019E
push 0
push 2
push offset _Lt_009A
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
.L_019E:
.L_019D:
jmp .L_019B
.L_019C:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_019B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01A0
push 0
push -1
push 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BD
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
cmp dword ptr [_ENV+104], 1
jne .L_01A4
push 0
push 2
push offset _Lt_009A
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
.L_01A4:
.L_01A3:
.L_01A0:
.L_019F:
jmp .L_0199
.L_019A:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_01A7
.L_01A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
and ebx, eax
je .L_01AA
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_01A9
.L_01AA:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01AC
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_009A
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01AE
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
push offset _Lt_02BD
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_009A
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
.L_01AE:
.L_01AD:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BD
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_01AB
.L_01AC:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01AB:
.L_01A9:
jmp .L_01A5
.L_01A7:
cmp dword ptr [ebp-28], 2
jne .L_01B2
.L_01B3:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01B5
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01B7
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BD
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01B7:
.L_01B6:
push 0
push 2
push offset _Lt_0006
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_02C2]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_Lt_02C2]
jmp .L_01B4
.L_01B5:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01B4:
jmp .L_01A5
.L_01B2:
cmp dword ptr [ebp-28], 3
jne .L_01BA
.L_01BB:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01BD
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01BF
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BD
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01BF:
.L_01BE:
push 0
push 2
push offset _Lt_0006
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_02C2]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BD
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_Lt_02C2]
jmp .L_01BC
.L_01BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01C2
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_01BC
.L_01C2:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01BC:
jmp .L_01A5
.L_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01C5
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
jmp .L_01C4
.L_01C5:
push 0
push 0
call dword ptr [_IR+40]
push eax
push -1
push offset _Lt_02BD
call _fb_StrAssign
add esp, 20
.L_01C4:
.L_01C3:
.L_01A5:
.L_0199:
.L_0196:
push -1
push offset _Lt_02BD
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_01C7
cmp dword ptr [ebp-20], 0
je .L_01C9
push 0
push -1
push -1
push offset _Lt_02BD
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01C9:
.L_01C8:
push 0
push -1
push offset _Lt_02BD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01C7:
.L_01C6:
cmp dword ptr [ebp-20], 0
je .L_01CB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_01CD
push 0
push 2
push offset _Lt_00A4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01CD:
.L_01CC:
.L_01CB:
.L_01CA:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0177:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BD,12
.balign 4
	.lcomm	_Lt_02C2,4

.section .text
.balign 16
_HGETPROCPARAMSTYPECODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01CE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_01D1
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .L_01D3
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.L_01D3:
.L_01D2:
.L_01D1:
.L_01D0:
cmp dword ptr [ebp-4], 0
jne .L_01D5
push 0
push 2
push offset _Lt_00F2
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_01CF
.L_01D5:
.L_01D4:
.L_01D6:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLEPARAM
add esp, 8
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
.L_01D8:
cmp dword ptr [ebp-4], 0
jne .L_01D6
.L_01D7:
.L_01CF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETOPERATORNAME:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .L_01DC
.L_01DE:
mov eax, offset _Lt_01DF
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01E0:
mov eax, offset _Lt_01E1
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01E2:
mov eax, offset _Lt_01E3
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01E4:
mov eax, offset _Lt_01E5
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01E6:
mov eax, offset _Lt_01E7
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01E8:
mov eax, offset _Lt_01E9
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01EA:
mov eax, offset _Lt_01EB
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01EC:
mov eax, offset _Lt_01ED
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01EE:
mov eax, offset _Lt_01EF
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01F0:
mov eax, offset _Lt_01F1
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01F2:
mov eax, offset _Lt_01F3
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01F4:
mov eax, offset _Lt_01F5
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01F6:
mov eax, offset _Lt_01F7
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01F8:
mov eax, offset _Lt_01F9
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01FA:
mov eax, offset _Lt_01FB
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01FC:
mov eax, offset _Lt_01FD
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_01FE:
mov eax, offset _Lt_01FF
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0200:
mov eax, offset _Lt_0201
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0202:
mov eax, offset _Lt_0203
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0204:
mov eax, offset _Lt_0205
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0206:
mov eax, offset _Lt_0207
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0208:
mov eax, offset _Lt_0209
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_020A:
mov eax, offset _Lt_020B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_020C:
mov eax, offset _Lt_020D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_020E:
mov eax, offset _Lt_020F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0210:
mov eax, offset _Lt_0211
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0212:
mov eax, offset _Lt_0213
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0214:
mov eax, offset _Lt_0215
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0216:
mov eax, offset _Lt_0217
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0218:
mov eax, offset _Lt_0219
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_021A:
mov eax, offset _Lt_021B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_021C:
mov eax, offset _Lt_021D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_021E:
mov eax, offset _Lt_021F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0220:
mov eax, offset _Lt_0221
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0222:
mov eax, offset _Lt_0223
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0224:
mov eax, offset _Lt_0225
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0226:
mov eax, offset _Lt_0227
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0228:
mov eax, offset _Lt_0229
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_022A:
mov eax, offset _Lt_022B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_022C:
mov eax, offset _Lt_022D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_022E:
mov eax, offset _Lt_022F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0230:
mov eax, offset _Lt_0231
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0232:
mov eax, offset _Lt_0233
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0234:
mov eax, offset _Lt_0235
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0236:
mov eax, offset _Lt_0237
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0238:
mov eax, offset _Lt_0239
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_023A:
mov eax, offset _Lt_023B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_023C:
mov eax, offset _Lt_023D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_023E:
mov eax, offset _Lt_023F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0240:
mov eax, offset _Lt_0241
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0242:
mov eax, offset _Lt_0243
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0244:
mov eax, offset _Lt_0245
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0246:
mov eax, offset _Lt_0247
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0248:
mov eax, offset _Lt_0249
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_024A:
mov eax, offset _Lt_024B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_024C:
mov eax, offset _Lt_024D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_024E:
mov eax, offset _Lt_024F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0250:
mov eax, offset _Lt_0251
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0252:
mov eax, offset _Lt_0253
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0254:
mov eax, offset _Lt_0255
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0256:
mov eax, offset _Lt_0257
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0258:
mov eax, offset _Lt_0259
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_025A:
mov eax, offset _Lt_025B
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_025C:
mov eax, offset _Lt_025D
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_025E:
mov eax, offset _Lt_025F
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0260:
mov eax, offset _Lt_0261
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0262:
mov eax, offset _Lt_0263
mov dword ptr [ebp-4], eax
jmp .L_01DB
.L_0264:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .L_0266
mov ebx, offset _Lt_0267
mov dword ptr [ebp-4], ebx
jmp .L_0265
.L_0266:
mov ebx, offset _Lt_0268
mov dword ptr [ebp-4], ebx
.L_0265:
jmp .L_01DB
.L_0269:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .L_026B
mov eax, offset _Lt_026C
mov dword ptr [ebp-4], eax
jmp .L_026A
.L_026B:
mov eax, offset _Lt_026D
mov dword ptr [ebp-4], eax
.L_026A:
jmp .L_01DB
.L_026E:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .L_0270
mov ebx, offset _Lt_0271
mov dword ptr [ebp-4], ebx
jmp .L_026F
.L_0270:
mov ebx, offset _Lt_0272
mov dword ptr [ebp-4], ebx
.L_026F:
jmp .L_01DB
.L_01DC:
cmp dword ptr [ebp-8], 81
ja .L_01DB
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_0273+ebx*4]
_.L_0273:
.int .L_01DE
.int .L_01E2
.int .L_01E6
.int .L_01EA
.int .L_01EE
.int .L_01F2
.int .L_01F6
.int .L_01FA
.int .L_01FE
.int .L_0202
.int .L_0206
.int .L_020A
.int .L_020E
.int .L_0212
.int .L_0216
.int .L_021A
.int .L_021E
.int .L_0222
.int .L_0254
.int .L_0256
.int .L_0258
.int .L_025A
.int .L_0262
.int .L_0260
.int .L_0264
.int .L_0269
.int .L_026E
.int .L_01DB
.int .L_01E0
.int .L_01E4
.int .L_01E8
.int .L_01EC
.int .L_01F0
.int .L_01F4
.int .L_01F8
.int .L_01FC
.int .L_0200
.int .L_0204
.int .L_0208
.int .L_020C
.int .L_0210
.int .L_0214
.int .L_0218
.int .L_021C
.int .L_0220
.int .L_0224
.int .L_0226
.int .L_0228
.int .L_022A
.int .L_022C
.int .L_022E
.int .L_01DB
.int .L_0230
.int .L_0234
.int .L_0232
.int .L_01DB
.int .L_0236
.int .L_023E
.int .L_0246
.int .L_0248
.int .L_024A
.int .L_024C
.int .L_024E
.int .L_0250
.int .L_01DB
.int .L_0252
.int .L_01DB
.int .L_01DB
.int .L_0244
.int .L_0242
.int .L_0240
.int .L_0238
.int .L_023A
.int .L_023C
.int .L_01DB
.int .L_01DB
.int .L_025C
.int .L_025E
.int .L_0254
.int .L_0256
.int .L_0258
.int .L_025A
.L_01DB:
.L_01DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLEPROC:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
.L_0274:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+84]
cmp ecx, 6
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [_ENV+108]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
mov esi, dword ptr [_ENV+108]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
and ecx, eax
or ebx, ecx
call _FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [_ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [_ENV+104], 2
jne .L_0277
push 0
push 2
push offset _Lt_017E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-24], 0
je .L_0279
push 0
push 2
push offset _Lt_027A
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], -1
.L_0279:
.L_0278:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_027E
.L_027F:
cmp dword ptr [ebp-36], 1
je .L_027E
.L_0280:
cmp dword ptr [ebp-36], 4
jne .L_027D
.L_027E:
cmp dword ptr [ebp-28], 0
jne .L_0282
push 0
push 2
push offset _Lt_027A
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], -1
.L_0282:
.L_0281:
push 0
push 2
push offset _Lt_0283
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_027D:
.L_027B:
.L_0277:
.L_0276:
call _HADDUNDERSCORE
test eax, eax
je .L_0285
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0287
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_028B
.L_028C:
cmp dword ptr [ebp-36], 1
je .L_028B
.L_028D:
cmp dword ptr [ebp-36], 4
jne .L_028A
.L_028B:
push 0
push 2
push offset _Lt_017E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0288
.L_028A:
push 0
push 2
push offset _Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_028E:
.L_0288:
jmp .L_0286
.L_0287:
push 0
push 2
push offset _Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0286:
.L_0285:
.L_0284:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .L_0290
push 0
push 3
push offset _Lt_018B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_0290:
.L_028F:
cmp dword ptr [ebp-20], 0
je .L_0292
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-12]
push ebx
call _HMANGLENAMESPACE
add esp, 16
.L_0292:
.L_0291:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .L_0294
cmp dword ptr [ebp-20], 0
je .L_0296
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_0296:
.L_0295:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0293
.L_0294:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0299
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .L_029B
push 0
push 3
push offset _Lt_029C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call _SYMBMANGLETYPE
add esp, 16
jmp .L_029A
.L_029B:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETOPERATORNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_029A:
jmp .L_0293
.L_0299:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_029E
push 0
push 3
push offset _Lt_029F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .L_0293
.L_029E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
je .L_02A0
push 0
push 3
push offset _Lt_02A1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0293
.L_02A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_02A2
push 0
push 3
push offset _Lt_02A3
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .L_0293
.L_02A2:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_02A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-32], ebx
jmp .L_02A4
.L_02A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-32], eax
.L_02A4:
cmp dword ptr [ebp-20], 0
je .L_02A7
push 0
push dword ptr [ebp-32]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A9
add dword ptr [ebp-16], 7
.L_02A9:
.L_02A8:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02A7:
.L_02A6:
push 0
push -1
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
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
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02AC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_02AE
push 0
push 8
push offset _Lt_02AF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_02AD
.L_02AE:
push 0
push 8
push offset _Lt_02B0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02AD:
.L_02AC:
.L_02AB:
.L_0293:
cmp dword ptr [ebp-20], 0
je .L_02B2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_02B4
push 0
push 2
push offset _Lt_00A4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02B4:
.L_02B3:
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call _HGETPROCPARAMSTYPECODE
add esp, 12
.L_02B2:
.L_02B1:
cmp dword ptr [ebp-24], 0
je .L_02B6
push 0
push 2
push offset _Lt_017E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN
add esp, 4
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02B6:
.L_02B5:
cmp dword ptr [ebp-28], 0
je .L_02B8
push 0
push 2
push offset _Lt_027A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02B8:
.L_02B7:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0275:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,92

.section .data
.balign 4
_Lt_0065:	.ascii	"tmp$\0"
.balign 4
_Lt_0067:	.ascii	"Lt_\0"
.balign 4
_Lt_006F:	.ascii	"label$\0"
.balign 4
_Lt_0073:	.ascii	"L_\0"
.balign 4
_Lt_0074:	.ascii	".L_\0"
.balign 4
_Lt_0078:	.ascii	"LP_\0"
.balign 4
_Lt_009A:	.ascii	"$\0"
.balign 4
_Lt_00A3:	.ascii	"I\0"
.balign 4
_Lt_00A4:	.ascii	"E\0"
.balign 4
_Lt_00C7:	.ascii	"S\0"
.balign 4
_Lt_00D2:	.ascii	"_\0"
.balign 4
_Lt_00D7:	.ascii	"8FBSTRING\0"
.balign 4
_Lt_00DF:	.ascii	"l\0"
.balign 4
_Lt_00E2:	.ascii	"m\0"
.balign 4
_Lt_00E6:	.ascii	"u7INTEGER\0"
.balign 4
_Lt_00E9:	.ascii	"u8UINTEGER\0"
.balign 4
_Lt_00F2:	.ascii	"v\0"
.balign 4
_Lt_00F3:	.ascii	"b\0"
.balign 4
_Lt_00F4:	.ascii	"a\0"
.balign 4
_Lt_00F5:	.ascii	"h\0"
.balign 4
_Lt_00F6:	.ascii	"c\0"
.balign 4
_Lt_00F7:	.ascii	"s\0"
.balign 4
_Lt_00F8:	.ascii	"t\0"
.balign 4
_Lt_00F9:	.ascii	"w\0"
.balign 4
_Lt_00FA:	.ascii	"i\0"
.balign 4
_Lt_00FB:	.ascii	"j\0"
.balign 4
_Lt_00FC:	.ascii	"x\0"
.balign 4
_Lt_00FD:	.ascii	"y\0"
.balign 4
_Lt_00FE:	.ascii	"f\0"
.balign 4
_Lt_00FF:	.ascii	"d\0"
.balign 4
_Lt_010C:	.ascii	"R\0"
.balign 4
_Lt_0111:	.ascii	"K\0"
.balign 4
_Lt_0116:	.ascii	"P\0"
.balign 4
_Lt_0123:	.ascii	"A1_\0"
.balign 4
_Lt_0127:	.ascii	"St\0"
.balign 4
_Lt_0131:	.ascii	"N\0"
.balign 4
_Lt_013C:	.ascii	"F\0"
.balign 4
_Lt_014F:	.ascii	"z\0"
.balign 4
_Lt_017E:	.ascii	"@\0"
.balign 4
_Lt_0188:	.ascii	"_imp__\0"
.balign 4
_Lt_018B:	.ascii	"_Z\0"
.balign 4
_Lt_018E:	.ascii	"TS\0"
.balign 4
_Lt_0190:	.ascii	"TV\0"
.balign 4
_Lt_0193:	.ascii	"%\0"
.balign 4
_Lt_01DF:	.ascii	"aS\0"
.balign 4
_Lt_01E1:	.ascii	"pl\0"
.balign 4
_Lt_01E3:	.ascii	"pL\0"
.balign 4
_Lt_01E5:	.ascii	"mi\0"
.balign 4
_Lt_01E7:	.ascii	"mI\0"
.balign 4
_Lt_01E9:	.ascii	"ml\0"
.balign 4
_Lt_01EB:	.ascii	"mL\0"
.balign 4
_Lt_01ED:	.ascii	"dv\0"
.balign 4
_Lt_01EF:	.ascii	"dV\0"
.balign 4
_Lt_01F1:	.ascii	"v24idiv\0"
.balign 4
_Lt_01F3:	.ascii	"v28selfidiv\0"
.balign 4
_Lt_01F5:	.ascii	"rm\0"
.balign 4
_Lt_01F7:	.ascii	"rM\0"
.balign 4
_Lt_01F9:	.ascii	"an\0"
.balign 4
_Lt_01FB:	.ascii	"aN\0"
.balign 4
_Lt_01FD:	.ascii	"or\0"
.balign 4
_Lt_01FF:	.ascii	"oR\0"
.balign 4
_Lt_0201:	.ascii	"aa\0"
.balign 4
_Lt_0203:	.ascii	"aA\0"
.balign 4
_Lt_0205:	.ascii	"oo\0"
.balign 4
_Lt_0207:	.ascii	"oO\0"
.balign 4
_Lt_0209:	.ascii	"eo\0"
.balign 4
_Lt_020B:	.ascii	"eO\0"
.balign 4
_Lt_020D:	.ascii	"v23eqv\0"
.balign 4
_Lt_020F:	.ascii	"v27selfeqv\0"
.balign 4
_Lt_0211:	.ascii	"v23imp\0"
.balign 4
_Lt_0213:	.ascii	"v27selfimp\0"
.balign 4
_Lt_0215:	.ascii	"ls\0"
.balign 4
_Lt_0217:	.ascii	"lS\0"
.balign 4
_Lt_0219:	.ascii	"rs\0"
.balign 4
_Lt_021B:	.ascii	"rS\0"
.balign 4
_Lt_021D:	.ascii	"v23pow\0"
.balign 4
_Lt_021F:	.ascii	"v27selfpow\0"
.balign 4
_Lt_0221:	.ascii	"v23cat\0"
.balign 4
_Lt_0223:	.ascii	"v27selfcat\0"
.balign 4
_Lt_0225:	.ascii	"eq\0"
.balign 4
_Lt_0227:	.ascii	"gt\0"
.balign 4
_Lt_0229:	.ascii	"lt\0"
.balign 4
_Lt_022B:	.ascii	"ne\0"
.balign 4
_Lt_022D:	.ascii	"ge\0"
.balign 4
_Lt_022F:	.ascii	"le\0"
.balign 4
_Lt_0231:	.ascii	"co\0"
.balign 4
_Lt_0233:	.ascii	"ng\0"
.balign 4
_Lt_0235:	.ascii	"ps\0"
.balign 4
_Lt_0237:	.ascii	"v13abs\0"
.balign 4
_Lt_0239:	.ascii	"v13fix\0"
.balign 4
_Lt_023B:	.ascii	"v14frac\0"
.balign 4
_Lt_023D:	.ascii	"v13len\0"
.balign 4
_Lt_023F:	.ascii	"v13sgn\0"
.balign 4
_Lt_0241:	.ascii	"v13int\0"
.balign 4
_Lt_0243:	.ascii	"v13exp\0"
.balign 4
_Lt_0245:	.ascii	"v13log\0"
.balign 4
_Lt_0247:	.ascii	"v13sin\0"
.balign 4
_Lt_0249:	.ascii	"v14asin\0"
.balign 4
_Lt_024B:	.ascii	"v13cos\0"
.balign 4
_Lt_024D:	.ascii	"v14acos\0"
.balign 4
_Lt_024F:	.ascii	"v13tan\0"
.balign 4
_Lt_0251:	.ascii	"v13atn\0"
.balign 4
_Lt_0253:	.ascii	"v13sqr\0"
.balign 4
_Lt_0255:	.ascii	"nw\0"
.balign 4
_Lt_0257:	.ascii	"na\0"
.balign 4
_Lt_0259:	.ascii	"dl\0"
.balign 4
_Lt_025B:	.ascii	"da\0"
.balign 4
_Lt_025D:	.ascii	"de\0"
.balign 4
_Lt_025F:	.ascii	"pt\0"
.balign 4
_Lt_0261:	.ascii	"ix\0"
.balign 4
_Lt_0263:	.ascii	"ad\0"
.balign 4
_Lt_0267:	.ascii	"v13for\0"
.balign 4
_Lt_0268:	.ascii	"v03for\0"
.balign 4
_Lt_026C:	.ascii	"v14step\0"
.balign 4
_Lt_026D:	.ascii	"v04step\0"
.balign 4
_Lt_0271:	.ascii	"v24next\0"
.balign 4
_Lt_0272:	.ascii	"v14next\0"
.balign 4
_Lt_027A:	.ascii	"\"\0"
.balign 4
_Lt_0283:	.ascii	"\1""\0"
.balign 4
_Lt_029C:	.ascii	"cv\0"
.balign 4
_Lt_029F:	.ascii	"C1\0"
.balign 4
_Lt_02A1:	.ascii	"D0\0"
.balign 4
_Lt_02A3:	.ascii	"D1\0"
.balign 4
_Lt_02AF:	.ascii	"__set__\0"
.balign 4
_Lt_02B0:	.ascii	"__get__\0"

.section .ctors
.int _fb_ctor__symbzmangling
