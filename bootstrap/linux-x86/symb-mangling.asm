	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBMANGLEINIT
SYMBMANGLEINIT:
.type SYMBMANGLEINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005C:
sub esp, 4
push 12
push 96
lea eax, [CTX]
push eax
call FLISTINIT
add esp, 16
mov dword ptr [CTX+56], 0
mov dword ptr [CTX+80], 0
mov dword ptr [CTX+84], 0
mov dword ptr [CTX+88], 0
.L_005D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEINIT, .-SYMBMANGLEINIT
.cfi_endproc
.balign 16

.globl SYMBMANGLEEND
SYMBMANGLEEND:
.type SYMBMANGLEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005E:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTEND
add esp, 16
.L_005F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEEND, .-SYMBMANGLEEND
.cfi_endproc
.balign 16

.globl SYMBUNIQUEID
SYMBUNIQUEID:
.type SYMBUNIQUEID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
mov eax, dword ptr [ENV+104]
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
je .L_0063
sub esp, 12
push 0
push 5
push offset Lt_0064
push 17
lea ebx, [CTX+60]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+80]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0062
.L_0063:
sub esp, 12
push 0
push 4
push offset Lt_0066
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
.L_0062:
inc dword ptr [CTX+80]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUNIQUEID, .-SYMBUNIQUEID
.cfi_endproc
.balign 16

.globl SYMBUNIQUELABEL
SYMBUNIQUELABEL:
.type SYMBUNIQUELABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_006A:
cmp dword ptr [ENV+104], 1
jne .L_006D
sub esp, 12
push 0
push 7
push offset Lt_006E
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+84]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+84]
jmp .L_006C
.L_006D:
cmp dword ptr [ENV+108], 9
jne .L_0071
sub esp, 12
push 0
push 3
push offset Lt_0072
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0070
.L_0071:
sub esp, 12
push 0
push 4
push offset Lt_0073
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
.L_0070:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+80]
.L_006C:
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBUNIQUELABEL, .-SYMBUNIQUELABEL
.cfi_endproc
.balign 16

.globl SYMBMAKEPROFILELABELNAME
SYMBMAKEPROFILELABELNAME:
.type SYMBMAKEPROFILELABELNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0075:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+88]
call HHEXUINT
add esp, 16
push eax
push 4
push offset Lt_0077
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+88]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.L_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMAKEPROFILELABELNAME, .-SYMBMAKEPROFILELABELNAME
.cfi_endproc
.balign 16

.globl SYMBGETDBGNAME
SYMBGETDBGNAME:
.type SYMBGETDBGNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
test eax, eax
je .L_007C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_007E
.L_0080:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0082
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.L_0082:
.L_0081:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_007A
jmp .L_007D
.L_0083:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_007A
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .L_0083
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0084+eax*4-32]
.L_0084:
.int .L_0080
.int .L_0080
.int .L_0080
.int .L_0080
.L_007D:
.L_007C:
.L_007B:
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
je .L_0086
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0088
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .L_007A
.L_0088:
.L_0087:
.L_0086:
.L_0085:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.L_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDBGNAME, .-SYMBGETDBGNAME
.cfi_endproc
.balign 16

.globl SYMBSETNAME
SYMBSETNAME:
.type SYMBSETNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_008B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_008E
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 16
.L_008E:
.L_008D:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0090
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .L_008F
.L_0090:
sub esp, 8
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [SYMB+98608]
push eax
call POOLNEWITEM
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call fb_StrAssign
add esp, 32
.L_008F:
.L_008C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETNAME, .-SYMBSETNAME
.cfi_endproc
.balign 16

.globl SYMBGETMANGLEDNAME
SYMBGETMANGLEDNAME:
.type SYMBGETMANGLEDNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_00A7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .L_00A5
.L_00A7:
.L_00A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A9
.L_00AB:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEPROC
add esp, 16
jmp .L_00A8
.L_00AC:
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
call HMANGLENAMESPACE
add esp, 16
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call HMANGLEUDTID
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00AE
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_00AE:
.L_00AD:
sub esp, 8
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_00A8
.L_00AF:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEVARIABLE
add esp, 16
jmp .L_00A8
.L_00B0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_00A5
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .L_00B0
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00B1+eax*4-4]
.L_00B1:
.int .L_00AF
.int .L_00B0
.int .L_00AB
.int .L_00B0
.int .L_00B0
.int .L_00B0
.int .L_00B0
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00B0
.int .L_00B0
.int .L_00AC
.L_00A8:
call SYMBMANGLERESETABBREV
cmp dword ptr [ENV+104], 1
jne .L_00B3
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_00B5
sub esp, 4
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call HREPLACECHAR
add esp, 16
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETMANGLEDNAME, .-SYMBGETMANGLEDNAME
.cfi_endproc
.balign 16

.globl SYMBMANGLERESETABBREV
SYMBMANGLERESETABBREV:
.type SYMBMANGLERESETABBREV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B6:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTRESET
add esp, 16
mov dword ptr [CTX+56], 0
.L_00B7:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLERESETABBREV, .-SYMBMANGLERESETABBREV
.cfi_endproc
.balign 16

.globl HMANGLEBUILTINTYPE
HMANGLEBUILTINTYPE:
.type HMANGLEBUILTINTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D2:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .L_00D5
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset Lt_00D6
mov dword ptr [ebp-4], eax
jmp .L_00D3
.L_00D5:
.L_00D4:
call FBIS64BIT
mov ebx, dword ptr [ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D8
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00DA
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .L_00DC
.L_00DD:
mov ebx, offset Lt_00DE
mov dword ptr [ebp-4], ebx
jmp .L_00D3
jmp .L_00DB
.L_00DC:
cmp dword ptr [ebp+8], 9
jne .L_00DF
.L_00E0:
mov ebx, offset Lt_00E1
mov dword ptr [ebp-4], ebx
jmp .L_00D3
.L_00DF:
.L_00DB:
jmp .L_00D9
.L_00DA:
cmp dword ptr [ebp+8], 8
jne .L_00E3
.L_00E4:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00E5
mov dword ptr [ebp-4], ebx
jmp .L_00D3
jmp .L_00E2
.L_00E3:
cmp dword ptr [ebp+8], 9
jne .L_00E6
.L_00E7:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00E8
mov dword ptr [ebp-4], ebx
jmp .L_00D3
.L_00E6:
.L_00E2:
.L_00D9:
jmp .L_00D7
.L_00D8:
cmp dword ptr [ebp+8], 8
jne .L_00EA
.L_00EB:
mov ebx, offset Lt_00DE
mov dword ptr [ebp-4], ebx
jmp .L_00D3
jmp .L_00E9
.L_00EA:
cmp dword ptr [ebp+8], 9
jne .L_00EC
.L_00ED:
mov ebx, offset Lt_00E1
mov dword ptr [ebp-4], ebx
jmp .L_00D3
.L_00EC:
.L_00E9:
.L_00D7:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00EF
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.L_00EF:
.L_00EE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0100+ebx*4]
mov dword ptr [ebp-4], eax
.L_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEBUILTINTYPE, .-HMANGLEBUILTINTYPE
.cfi_endproc

.section .data
.balign 4
Lt_0100:
.int Lt_00F1
.int Lt_00F2
.int Lt_00F3
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.long 0
.long 0
.long 0
.int Lt_00F9
.int Lt_00FA
.int Lt_00FB
.int Lt_00FC
.int Lt_00FD
.int Lt_00FE
.long 0
.long 0
.int Lt_00F5
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl SYMBMANGLETYPE
SYMBMANGLETYPE:
.type SYMBMANGLETYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0101:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVFIND
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .L_0104
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HABBREVGET
add esp, 16
jmp .L_0102
.L_0104:
.L_0103:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0105
mov dword ptr [ebp-16], 24
jmp .L_0144
.L_0105:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0144:
cmp dword ptr [ebp-16], 23
jne .L_0108
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.L_0108:
.L_0107:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .L_010A
sub esp, 12
push 0
push 2
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0102
.L_010A:
.L_0109:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .L_010D
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_010F
sub esp, 12
push 0
push 2
push offset Lt_0110
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_010F:
.L_010E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_0112
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
.L_0112:
.L_0111:
jmp .L_0102
.L_010D:
.L_010C:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0114
sub esp, 12
push 0
push 2
push offset Lt_0115
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
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
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0102
.L_0114:
.L_0113:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .L_0117
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .L_0119
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_011B
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_011E
.L_011F:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .L_0121
sub esp, 12
push 0
push 4
push offset Lt_0122
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_0120
.L_0121:
sub esp, 12
push 0
push 2
push offset Lt_0115
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_0120:
and dword ptr [ebp+12], -32505857
jmp .L_011C
.L_011E:
cmp dword ptr [ebp-20], 4
je .L_0124
.L_0125:
cmp dword ptr [ebp-20], 5
jne .L_0123
.L_0124:
sub esp, 12
push 0
push 3
push offset Lt_0126
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
and dword ptr [ebp+12], -32505857
.L_0123:
.L_011C:
.L_011B:
.L_011A:
.L_0119:
.L_0118:
.L_0117:
.L_0116:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .L_012A
.L_012B:
cmp dword ptr [ebp-20], 10
jne .L_0129
.L_012A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .L_012D
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
jmp .L_012C
.L_012D:
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_012F
sub esp, 12
push 0
push 2
push offset Lt_0130
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_012F:
.L_012E:
push 8
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_0132
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_0132:
.L_0131:
.L_012C:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0127
.L_0129:
cmp dword ptr [ebp-20], 21
jne .L_0133
.L_0134:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .L_0136
jmp .L_0102
.L_0136:
.L_0135:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0138
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
.L_0138:
.L_0137:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0127
.L_0133:
cmp dword ptr [ebp-20], 22
jne .L_0139
.L_013A:
sub esp, 12
push 0
push 2
push offset Lt_013B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_013D
sub esp, 12
push 0
push 2
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_013D:
.L_013C:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_013F
sub esp, 12
push 0
push 2
push offset Lt_0110
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_013F:
.L_013E:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HGETPROCPARAMSTYPECODE
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .L_0127
.L_0139:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-8], 0
je .L_0143
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
.L_0143:
.L_0142:
.L_0140:
.L_0127:
.L_0102:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLETYPE, .-SYMBMANGLETYPE
.cfi_endproc
.balign 16

.globl SYMBMANGLEPARAM
SYMBMANGLEPARAM:
.type SYMBMANGLEPARAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0145:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .L_0148
.L_014A:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0147
.L_014B:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0147
.L_014C:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .L_0147
.L_014D:
sub esp, 12
push 0
push 2
push offset Lt_014E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_0147
.L_0148:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .L_0147
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_014F+eax*4-4]
.L_014F:
.int .L_014A
.int .L_014B
.int .L_014C
.int .L_014D
.L_0147:
.L_0146:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMANGLEPARAM, .-SYMBMANGLEPARAM
.cfi_endproc
.balign 16
fb_ctor__symbzmangling:
.type fb_ctor__symbzmangling, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__symbzmangling, .-fb_ctor__symbzmangling
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
SYMBSETMANGLEDID:
.type SYMBSETMANGLEDID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0091:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call fb_StrAssign
add esp, 32
.L_0092:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETMANGLEDID, .-SYMBSETMANGLEDID
.cfi_endproc
.balign 16
HMANGLEUDTID:
.type HMANGLEUDTID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0093:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0096
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+20], 0
je .L_0098
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+20]
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0097
.L_0098:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrAssign
add esp, 32
.L_0097:
sub esp, 12
push 0
push 2
push offset Lt_0099
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02B8]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
inc dword ptr [Lt_02B8]
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0095
.L_0096:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_009B
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .L_009A
.L_009B:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.L_009A:
.L_0095:
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
je .L_00A1
sub esp, 12
push 0
push 2
push offset Lt_00A2
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 4
lea ecx, [ebp-8]
push ecx
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+12]
call SYMBGETDESCTYPEARRAYDTYPE
add esp, 16
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_00A1:
.L_00A0:
.L_0094:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEUDTID, .-HMANGLEUDTID
.cfi_endproc

.section .data
.balign 4
Lt_02B8:
.int 1

.section .text
.balign 16
HABBREVFIND:
.type HABBREVFIND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B8:
cmp dword ptr [CTX+56], 0
jne .L_00BB
mov dword ptr [ebp-4], -1
jmp .L_00B9
.L_00BB:
.L_00BA:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.L_00BC:
cmp dword ptr [ebp-8], 0
je .L_00BD
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_00BF
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .L_00C1
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00B9
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
sub esp, 12
push dword ptr [ebp-8]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00BC
.L_00BD:
mov dword ptr [ebp-4], -1
.L_00B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVFIND, .-HABBREVFIND
.cfi_endproc
.balign 16
HABBREVADD:
.type HABBREVADD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C2:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVADD, .-HABBREVADD
.cfi_endproc
.balign 16
HABBREVGET:
.type HABBREVGET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C4:
sub esp, 12
push 0
push 2
push offset Lt_00C6
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
cmp dword ptr [ebp+12], 0
jle .L_00C8
cmp dword ptr [ebp+12], 10
jg .L_00CA
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00C9
.L_00CA:
cmp dword ptr [ebp+12], 33
jg .L_00CC
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00C9
.L_00CC:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .L_00CF
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_00CE
.L_00CF:
cmp dword ptr [ebp+12], 33
jg .L_00D0
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_00D0:
.L_00CE:
.L_00C9:
.L_00C8:
.L_00C7:
sub esp, 12
push 0
push 2
push offset Lt_00D1
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_00C5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HABBREVGET, .-HABBREVGET
.cfi_endproc
.balign 16
HADDUNDERSCORE:
.type HADDUNDERSCORE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0150:
cmp dword ptr [ENV+104], 1
jne .L_0153
mov dword ptr [ebp-4], 0
jmp .L_0152
.L_0153:
mov eax, dword ptr [ENV+292]
mov dword ptr [ebp-4], eax
.L_0152:
.L_0151:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDUNDERSCORE, .-HADDUNDERSCORE
.cfi_endproc
.balign 16
HDOCPPMANGLING:
.type HDOCPPMANGLING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .L_0157
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_0157:
.L_0156:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2080
test eax, eax
je .L_0159
mov dword ptr [ebp-4], 0
jmp .L_0155
.L_0159:
.L_0158:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 6
jne .L_015B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8388608
test eax, eax
jne .L_015D
mov dword ptr [ebp-4], 0
jmp .L_0155
.L_015D:
.L_015C:
.L_015B:
.L_015A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_015F
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_015F:
.L_015E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_0161
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_0163
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_0163:
.L_0162:
.L_0161:
.L_0160:
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDOCPPMANGLING, .-HDOCPPMANGLING
.cfi_endproc
.balign 16
HMANGLENAMESPACE:
.type HMANGLENAMESPACE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0164:
cmp dword ptr [ebp+12], 0
jne .L_0168
jmp .L_0165
.L_0168:
.L_0167:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .L_016A
jmp .L_0165
.L_016A:
.L_0169:
cmp dword ptr [ebp+16], 0
je .L_016C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-16]
push eax
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_016C:
.L_016B:
mov dword ptr [ebp-4], -1
.L_016D:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [Lt_02BB+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.L_016F:
lea ebx, [SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .L_016D
.L_016E:
sub esp, 12
push 0
push 2
push offset Lt_0130
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
cmp dword ptr [ebp+20], 0
je .L_0171
sub esp, 12
push 0
push 2
push offset Lt_0110
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
.L_0171:
.L_0170:
.L_0172:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [Lt_02BB+ebx*4]
mov dword ptr [ebp+12], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
dec dword ptr [ebp-4]
.L_0174:
cmp dword ptr [ebp-4], 0
jge .L_0172
.L_0173:
.L_0165:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLENAMESPACE, .-HMANGLENAMESPACE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02BB,256

.section .text
.balign 16
HMANGLEVARIABLE:
.type HMANGLEVARIABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0175:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .L_0178
mov dword ptr [ebp-20], 0
jmp .L_0177
.L_0178:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
mov dword ptr [ebp-20], eax
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .L_017A
cmp dword ptr [ENV+104], 2
jne .L_017C
sub esp, 12
push 0
push 2
push offset Lt_017D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_017C:
.L_017B:
call HADDUNDERSCORE
test eax, eax
je .L_017F
sub esp, 12
push 0
push 2
push offset Lt_00D1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_017F:
.L_017E:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0183
.L_0184:
cmp dword ptr [ebp-28], 1
jne .L_0182
.L_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0186
sub esp, 12
push 0
push 7
push offset Lt_0187
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0186:
.L_0185:
.L_0182:
.L_0180:
cmp dword ptr [ebp-20], 0
je .L_0189
sub esp, 12
push 0
push 3
push offset Lt_018A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .L_018C
sub esp, 12
push 0
push 3
push offset Lt_018D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_018B
.L_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .L_018E
sub esp, 12
push 0
push 3
push offset Lt_018F
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_018E:
.L_018B:
.L_0189:
.L_0188:
jmp .L_0179
.L_017A:
cmp dword ptr [ENV+104], 2
jne .L_0191
sub esp, 12
push 0
push 2
push offset Lt_0192
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_0191:
.L_0190:
.L_0179:
cmp dword ptr [ebp-20], 0
je .L_0194
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call HMANGLENAMESPACE
add esp, 16
.L_0194:
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .L_0196
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_0195
.L_0196:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .L_0197
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_0195
.L_0197:
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
je .L_0199
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_019B
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_019D
sub esp, 12
push 0
push 2
push offset Lt_0099
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
.L_019D:
.L_019C:
jmp .L_019A
.L_019B:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_019A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_019F
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BC
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+104], 1
jne .L_01A3
sub esp, 12
push 0
push 2
push offset Lt_0099
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
.L_01A3:
.L_01A2:
.L_019F:
.L_019E:
jmp .L_0198
.L_0199:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_01A6
.L_01A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
and ebx, eax
je .L_01A9
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_01A8
.L_01A9:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01AB
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0099
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01AD
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
push offset Lt_02BC
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0099
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
.L_01AD:
.L_01AC:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call fb_UIntToStr
add esp, 16
push eax
push -1
push offset Lt_02BC
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_01AA
.L_01AB:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01AA:
.L_01A8:
jmp .L_01A4
.L_01A6:
cmp dword ptr [ebp-28], 2
jne .L_01B1
.L_01B2:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01B4
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01B6
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BC
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01B6:
.L_01B5:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02C1]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02C1]
jmp .L_01B3
.L_01B4:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01B3:
jmp .L_01A4
.L_01B1:
cmp dword ptr [ebp-28], 3
jne .L_01B9
.L_01BA:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01BC
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01BE
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BC
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01BE:
.L_01BD:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02C1]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02C1]
jmp .L_01BB
.L_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01C1
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_01BB
.L_01C1:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01BB:
jmp .L_01A4
.L_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01C4
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
jmp .L_01C3
.L_01C4:
sub esp, 12
push 0
push 0
sub esp, 12
call dword ptr [IR+40]
add esp, 12
push eax
push -1
push offset Lt_02BC
call fb_StrAssign
add esp, 32
.L_01C3:
.L_01C2:
.L_01A4:
.L_0198:
.L_0195:
sub esp, 8
push -1
push offset Lt_02BC
call fb_StrLen
add esp, 16
test eax, eax
jle .L_01C6
cmp dword ptr [ebp-20], 0
je .L_01C8
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push -1
push offset Lt_02BC
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01C8:
.L_01C7:
sub esp, 12
push 0
push -1
push offset Lt_02BC
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01C6:
.L_01C5:
cmp dword ptr [ebp-20], 0
je .L_01CA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_01CC
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01CC:
.L_01CB:
.L_01CA:
.L_01C9:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0176:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEVARIABLE, .-HMANGLEVARIABLE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02BC,12
.balign 4
	.lcomm	Lt_02C1,4

.section .text
.balign 16
HGETPROCPARAMSTYPECODE:
.type HGETPROCPARAMSTYPECODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01CD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_01D0
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .L_01D2
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.L_01D2:
.L_01D1:
.L_01D0:
.L_01CF:
cmp dword ptr [ebp-4], 0
jne .L_01D4
sub esp, 12
push 0
push 2
push offset Lt_00F1
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
jmp .L_01CE
.L_01D4:
.L_01D3:
.L_01D5:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLEPARAM
add esp, 16
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
.L_01D7:
cmp dword ptr [ebp-4], 0
jne .L_01D5
.L_01D6:
.L_01CE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETPROCPARAMSTYPECODE, .-HGETPROCPARAMSTYPECODE
.cfi_endproc
.balign 16
HGETOPERATORNAME:
.type HGETOPERATORNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .L_01DB
.L_01DD:
mov eax, offset Lt_01DE
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01DF:
mov eax, offset Lt_01E0
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01E1:
mov eax, offset Lt_01E2
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01E3:
mov eax, offset Lt_01E4
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01E5:
mov eax, offset Lt_01E6
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01E7:
mov eax, offset Lt_01E8
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01E9:
mov eax, offset Lt_01EA
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01EB:
mov eax, offset Lt_01EC
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01ED:
mov eax, offset Lt_01EE
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01EF:
mov eax, offset Lt_01F0
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01F1:
mov eax, offset Lt_01F2
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01F3:
mov eax, offset Lt_01F4
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01F5:
mov eax, offset Lt_01F6
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01F7:
mov eax, offset Lt_01F8
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01F9:
mov eax, offset Lt_01FA
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01FB:
mov eax, offset Lt_01FC
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01FD:
mov eax, offset Lt_01FE
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_01FF:
mov eax, offset Lt_0200
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0201:
mov eax, offset Lt_0202
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0203:
mov eax, offset Lt_0204
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0205:
mov eax, offset Lt_0206
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0207:
mov eax, offset Lt_0208
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0209:
mov eax, offset Lt_020A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_020B:
mov eax, offset Lt_020C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_020D:
mov eax, offset Lt_020E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_020F:
mov eax, offset Lt_0210
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0211:
mov eax, offset Lt_0212
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0213:
mov eax, offset Lt_0214
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0215:
mov eax, offset Lt_0216
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0217:
mov eax, offset Lt_0218
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0219:
mov eax, offset Lt_021A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_021B:
mov eax, offset Lt_021C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_021D:
mov eax, offset Lt_021E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_021F:
mov eax, offset Lt_0220
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0221:
mov eax, offset Lt_0222
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0223:
mov eax, offset Lt_0224
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0225:
mov eax, offset Lt_0226
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0227:
mov eax, offset Lt_0228
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0229:
mov eax, offset Lt_022A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_022B:
mov eax, offset Lt_022C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_022D:
mov eax, offset Lt_022E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_022F:
mov eax, offset Lt_0230
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0231:
mov eax, offset Lt_0232
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0233:
mov eax, offset Lt_0234
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0235:
mov eax, offset Lt_0236
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0237:
mov eax, offset Lt_0238
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0239:
mov eax, offset Lt_023A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_023B:
mov eax, offset Lt_023C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_023D:
mov eax, offset Lt_023E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_023F:
mov eax, offset Lt_0240
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0241:
mov eax, offset Lt_0242
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0243:
mov eax, offset Lt_0244
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0245:
mov eax, offset Lt_0246
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0247:
mov eax, offset Lt_0248
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0249:
mov eax, offset Lt_024A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_024B:
mov eax, offset Lt_024C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_024D:
mov eax, offset Lt_024E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_024F:
mov eax, offset Lt_0250
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0251:
mov eax, offset Lt_0252
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0253:
mov eax, offset Lt_0254
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0255:
mov eax, offset Lt_0256
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0257:
mov eax, offset Lt_0258
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0259:
mov eax, offset Lt_025A
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_025B:
mov eax, offset Lt_025C
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_025D:
mov eax, offset Lt_025E
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_025F:
mov eax, offset Lt_0260
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0261:
mov eax, offset Lt_0262
mov dword ptr [ebp-4], eax
jmp .L_01DA
.L_0263:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .L_0265
mov ebx, offset Lt_0266
mov dword ptr [ebp-4], ebx
jmp .L_0264
.L_0265:
mov ebx, offset Lt_0267
mov dword ptr [ebp-4], ebx
.L_0264:
jmp .L_01DA
.L_0268:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .L_026A
mov eax, offset Lt_026B
mov dword ptr [ebp-4], eax
jmp .L_0269
.L_026A:
mov eax, offset Lt_026C
mov dword ptr [ebp-4], eax
.L_0269:
jmp .L_01DA
.L_026D:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .L_026F
mov ebx, offset Lt_0270
mov dword ptr [ebp-4], ebx
jmp .L_026E
.L_026F:
mov ebx, offset Lt_0271
mov dword ptr [ebp-4], ebx
.L_026E:
jmp .L_01DA
.L_01DB:
cmp dword ptr [ebp-8], 81
ja .L_01DA
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_0272+ebx*4]
.L_0272:
.int .L_01DD
.int .L_01E1
.int .L_01E5
.int .L_01E9
.int .L_01ED
.int .L_01F1
.int .L_01F5
.int .L_01F9
.int .L_01FD
.int .L_0201
.int .L_0205
.int .L_0209
.int .L_020D
.int .L_0211
.int .L_0215
.int .L_0219
.int .L_021D
.int .L_0221
.int .L_0253
.int .L_0255
.int .L_0257
.int .L_0259
.int .L_0261
.int .L_025F
.int .L_0263
.int .L_0268
.int .L_026D
.int .L_01DA
.int .L_01DF
.int .L_01E3
.int .L_01E7
.int .L_01EB
.int .L_01EF
.int .L_01F3
.int .L_01F7
.int .L_01FB
.int .L_01FF
.int .L_0203
.int .L_0207
.int .L_020B
.int .L_020F
.int .L_0213
.int .L_0217
.int .L_021B
.int .L_021F
.int .L_0223
.int .L_0225
.int .L_0227
.int .L_0229
.int .L_022B
.int .L_022D
.int .L_01DA
.int .L_022F
.int .L_0233
.int .L_0231
.int .L_01DA
.int .L_0235
.int .L_023D
.int .L_0245
.int .L_0247
.int .L_0249
.int .L_024B
.int .L_024D
.int .L_024F
.int .L_01DA
.int .L_0251
.int .L_01DA
.int .L_01DA
.int .L_0243
.int .L_0241
.int .L_023F
.int .L_0237
.int .L_0239
.int .L_023B
.int .L_01DA
.int .L_01DA
.int .L_025B
.int .L_025D
.int .L_0253
.int .L_0255
.int .L_0257
.int .L_0259
.L_01DA:
.L_01D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETOPERATORNAME, .-HGETOPERATORNAME
.cfi_endproc
.balign 16
HMANGLEPROC:
.type HMANGLEPROC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
.L_0273:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
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
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ENV+108]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
mov esi, dword ptr [ENV+108]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
and ecx, eax
or ebx, ecx
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [ENV+104], 2
jne .L_0276
sub esp, 12
push 0
push 2
push offset Lt_017D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-24], 0
je .L_0278
sub esp, 12
push 0
push 2
push offset Lt_0279
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.L_0278:
.L_0277:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_027D
.L_027E:
cmp dword ptr [ebp-36], 1
je .L_027D
.L_027F:
cmp dword ptr [ebp-36], 4
jne .L_027C
.L_027D:
cmp dword ptr [ebp-28], 0
jne .L_0281
sub esp, 12
push 0
push 2
push offset Lt_0279
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.L_0281:
.L_0280:
sub esp, 12
push 0
push 2
push offset Lt_0282
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_027C:
.L_027A:
.L_0276:
.L_0275:
call HADDUNDERSCORE
test eax, eax
je .L_0284
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0286
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_028A
.L_028B:
cmp dword ptr [ebp-36], 1
je .L_028A
.L_028C:
cmp dword ptr [ebp-36], 4
jne .L_0289
.L_028A:
sub esp, 12
push 0
push 2
push offset Lt_017D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0287
.L_0289:
sub esp, 12
push 0
push 2
push offset Lt_00D1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_028D:
.L_0287:
jmp .L_0285
.L_0286:
sub esp, 12
push 0
push 2
push offset Lt_00D1
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0285:
.L_0284:
.L_0283:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .L_028F
sub esp, 12
push 0
push 3
push offset Lt_018A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_028F:
.L_028E:
cmp dword ptr [ebp-20], 0
je .L_0291
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
call HMANGLENAMESPACE
add esp, 16
.L_0291:
.L_0290:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .L_0293
cmp dword ptr [ebp-20], 0
je .L_0295
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0295:
.L_0294:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0292
.L_0293:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0298
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .L_029A
sub esp, 12
push 0
push 3
push offset Lt_029B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call SYMBMANGLETYPE
add esp, 16
jmp .L_0299
.L_029A:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call HGETOPERATORNAME
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0299:
jmp .L_0292
.L_0298:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_029D
sub esp, 12
push 0
push 3
push offset Lt_029E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_0292
.L_029D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
je .L_029F
sub esp, 12
push 0
push 3
push offset Lt_02A0
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0292
.L_029F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_02A1
sub esp, 12
push 0
push 3
push offset Lt_02A2
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_0292
.L_02A1:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_02A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-32], ebx
jmp .L_02A3
.L_02A4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-32], eax
.L_02A3:
cmp dword ptr [ebp-20], 0
je .L_02A6
sub esp, 8
push 0
push dword ptr [ebp-32]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A8
add dword ptr [ebp-16], 7
.L_02A8:
.L_02A7:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02A6:
.L_02A5:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02AB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_02AD
sub esp, 12
push 0
push 8
push offset Lt_02AE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_02AC
.L_02AD:
sub esp, 12
push 0
push 8
push offset Lt_02AF
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02AC:
.L_02AB:
.L_02AA:
.L_0292:
cmp dword ptr [ebp-20], 0
je .L_02B1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .L_02B3
sub esp, 12
push 0
push 2
push offset Lt_00A3
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02B3:
.L_02B2:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call HGETPROCPARAMSTYPECODE
add esp, 16
.L_02B1:
.L_02B0:
cmp dword ptr [ebp-24], 0
je .L_02B5
sub esp, 12
push 0
push 2
push offset Lt_017D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 8
push edx
push eax
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02B5:
.L_02B4:
cmp dword ptr [ebp-28], 0
je .L_02B7
sub esp, 12
push 0
push 2
push offset Lt_0279
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02B7:
.L_02B6:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0274:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMANGLEPROC, .-HMANGLEPROC
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	CTX,92

.section .rodata
.balign 4
Lt_0064:	.ascii	"tmp$\0"
.balign 4
Lt_0066:	.ascii	"Lt_\0"
.balign 4
Lt_006E:	.ascii	"label$\0"
.balign 4
Lt_0072:	.ascii	"L_\0"
.balign 4
Lt_0073:	.ascii	".L_\0"
.balign 4
Lt_0077:	.ascii	"LP_\0"
.balign 4
Lt_0099:	.ascii	"$\0"
.balign 4
Lt_00A2:	.ascii	"I\0"
.balign 4
Lt_00A3:	.ascii	"E\0"
.balign 4
Lt_00C6:	.ascii	"S\0"
.balign 4
Lt_00D1:	.ascii	"_\0"
.balign 4
Lt_00D6:	.ascii	"8FBSTRING\0"
.balign 4
Lt_00DE:	.ascii	"l\0"
.balign 4
Lt_00E1:	.ascii	"m\0"
.balign 4
Lt_00E5:	.ascii	"u7INTEGER\0"
.balign 4
Lt_00E8:	.ascii	"u8UINTEGER\0"
.balign 4
Lt_00F1:	.ascii	"v\0"
.balign 4
Lt_00F2:	.ascii	"b\0"
.balign 4
Lt_00F3:	.ascii	"a\0"
.balign 4
Lt_00F4:	.ascii	"h\0"
.balign 4
Lt_00F5:	.ascii	"c\0"
.balign 4
Lt_00F6:	.ascii	"s\0"
.balign 4
Lt_00F7:	.ascii	"t\0"
.balign 4
Lt_00F8:	.ascii	"w\0"
.balign 4
Lt_00F9:	.ascii	"i\0"
.balign 4
Lt_00FA:	.ascii	"j\0"
.balign 4
Lt_00FB:	.ascii	"x\0"
.balign 4
Lt_00FC:	.ascii	"y\0"
.balign 4
Lt_00FD:	.ascii	"f\0"
.balign 4
Lt_00FE:	.ascii	"d\0"
.balign 4
Lt_010B:	.ascii	"R\0"
.balign 4
Lt_0110:	.ascii	"K\0"
.balign 4
Lt_0115:	.ascii	"P\0"
.balign 4
Lt_0122:	.ascii	"A1_\0"
.balign 4
Lt_0126:	.ascii	"St\0"
.balign 4
Lt_0130:	.ascii	"N\0"
.balign 4
Lt_013B:	.ascii	"F\0"
.balign 4
Lt_014E:	.ascii	"z\0"
.balign 4
Lt_017D:	.ascii	"@\0"
.balign 4
Lt_0187:	.ascii	"_imp__\0"
.balign 4
Lt_018A:	.ascii	"_Z\0"
.balign 4
Lt_018D:	.ascii	"TS\0"
.balign 4
Lt_018F:	.ascii	"TV\0"
.balign 4
Lt_0192:	.ascii	"%\0"
.balign 4
Lt_01DE:	.ascii	"aS\0"
.balign 4
Lt_01E0:	.ascii	"pl\0"
.balign 4
Lt_01E2:	.ascii	"pL\0"
.balign 4
Lt_01E4:	.ascii	"mi\0"
.balign 4
Lt_01E6:	.ascii	"mI\0"
.balign 4
Lt_01E8:	.ascii	"ml\0"
.balign 4
Lt_01EA:	.ascii	"mL\0"
.balign 4
Lt_01EC:	.ascii	"dv\0"
.balign 4
Lt_01EE:	.ascii	"dV\0"
.balign 4
Lt_01F0:	.ascii	"v24idiv\0"
.balign 4
Lt_01F2:	.ascii	"v28selfidiv\0"
.balign 4
Lt_01F4:	.ascii	"rm\0"
.balign 4
Lt_01F6:	.ascii	"rM\0"
.balign 4
Lt_01F8:	.ascii	"an\0"
.balign 4
Lt_01FA:	.ascii	"aN\0"
.balign 4
Lt_01FC:	.ascii	"or\0"
.balign 4
Lt_01FE:	.ascii	"oR\0"
.balign 4
Lt_0200:	.ascii	"aa\0"
.balign 4
Lt_0202:	.ascii	"aA\0"
.balign 4
Lt_0204:	.ascii	"oo\0"
.balign 4
Lt_0206:	.ascii	"oO\0"
.balign 4
Lt_0208:	.ascii	"eo\0"
.balign 4
Lt_020A:	.ascii	"eO\0"
.balign 4
Lt_020C:	.ascii	"v23eqv\0"
.balign 4
Lt_020E:	.ascii	"v27selfeqv\0"
.balign 4
Lt_0210:	.ascii	"v23imp\0"
.balign 4
Lt_0212:	.ascii	"v27selfimp\0"
.balign 4
Lt_0214:	.ascii	"ls\0"
.balign 4
Lt_0216:	.ascii	"lS\0"
.balign 4
Lt_0218:	.ascii	"rs\0"
.balign 4
Lt_021A:	.ascii	"rS\0"
.balign 4
Lt_021C:	.ascii	"v23pow\0"
.balign 4
Lt_021E:	.ascii	"v27selfpow\0"
.balign 4
Lt_0220:	.ascii	"v23cat\0"
.balign 4
Lt_0222:	.ascii	"v27selfcat\0"
.balign 4
Lt_0224:	.ascii	"eq\0"
.balign 4
Lt_0226:	.ascii	"gt\0"
.balign 4
Lt_0228:	.ascii	"lt\0"
.balign 4
Lt_022A:	.ascii	"ne\0"
.balign 4
Lt_022C:	.ascii	"ge\0"
.balign 4
Lt_022E:	.ascii	"le\0"
.balign 4
Lt_0230:	.ascii	"co\0"
.balign 4
Lt_0232:	.ascii	"ng\0"
.balign 4
Lt_0234:	.ascii	"ps\0"
.balign 4
Lt_0236:	.ascii	"v13abs\0"
.balign 4
Lt_0238:	.ascii	"v13fix\0"
.balign 4
Lt_023A:	.ascii	"v14frac\0"
.balign 4
Lt_023C:	.ascii	"v13len\0"
.balign 4
Lt_023E:	.ascii	"v13sgn\0"
.balign 4
Lt_0240:	.ascii	"v13int\0"
.balign 4
Lt_0242:	.ascii	"v13exp\0"
.balign 4
Lt_0244:	.ascii	"v13log\0"
.balign 4
Lt_0246:	.ascii	"v13sin\0"
.balign 4
Lt_0248:	.ascii	"v14asin\0"
.balign 4
Lt_024A:	.ascii	"v13cos\0"
.balign 4
Lt_024C:	.ascii	"v14acos\0"
.balign 4
Lt_024E:	.ascii	"v13tan\0"
.balign 4
Lt_0250:	.ascii	"v13atn\0"
.balign 4
Lt_0252:	.ascii	"v13sqr\0"
.balign 4
Lt_0254:	.ascii	"nw\0"
.balign 4
Lt_0256:	.ascii	"na\0"
.balign 4
Lt_0258:	.ascii	"dl\0"
.balign 4
Lt_025A:	.ascii	"da\0"
.balign 4
Lt_025C:	.ascii	"de\0"
.balign 4
Lt_025E:	.ascii	"pt\0"
.balign 4
Lt_0260:	.ascii	"ix\0"
.balign 4
Lt_0262:	.ascii	"ad\0"
.balign 4
Lt_0266:	.ascii	"v13for\0"
.balign 4
Lt_0267:	.ascii	"v03for\0"
.balign 4
Lt_026B:	.ascii	"v14step\0"
.balign 4
Lt_026C:	.ascii	"v04step\0"
.balign 4
Lt_0270:	.ascii	"v24next\0"
.balign 4
Lt_0271:	.ascii	"v14next\0"
.balign 4
Lt_0279:	.ascii	"\"\0"
.balign 4
Lt_0282:	.ascii	"\1""\0"
.balign 4
Lt_029B:	.ascii	"cv\0"
.balign 4
Lt_029E:	.ascii	"C1\0"
.balign 4
Lt_02A0:	.ascii	"D0\0"
.balign 4
Lt_02A2:	.ascii	"D1\0"
.balign 4
Lt_02AE:	.ascii	"__set__\0"
.balign 4
Lt_02AF:	.ascii	"__get__\0"

.section .ctors, "aw", @progbits
.int fb_ctor__symbzmangling
