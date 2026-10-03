	.intel_syntax noprefix

.section .text
.balign 16

.globl LEXPUSHCTX
LEXPUSHCTX:
.type LEXPUSHCTX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
add dword ptr [LEX+840140], 49420
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXPUSHCTX, .-LEXPUSHCTX
.cfi_endproc
.balign 16

.globl LEXPOPCTX
LEXPOPCTX:
.type LEXPOPCTX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0068:
cmp dword ptr [ENV+900], 0
jne .L_006B
sub esp, 8
push 0
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+49404]
push ebx
call DZSTRALLOCATE
add esp, 16
.L_006B:
.L_006A:
cmp dword ptr [ENV+576], 0
jne .L_006D
sub esp, 8
push 0
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16600]
push eax
call DZSTRALLOCATE
add esp, 16
jmp .L_006C
.L_006D:
sub esp, 8
push 0
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+16600]
push ebx
call DWSTRALLOCATE
add esp, 16
.L_006C:
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16588], 1
je .L_006F
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx-20], 0
jle .L_0071
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+49400]
cmp dword ptr [ebx-20], ecx
je .L_0073
sub esp, 8
mov ecx, dword ptr [LEX+840140]
push dword ptr [ecx-20]
push dword ptr [ENV+300]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_0074
push 0
push 0
push offset Lt_0075
push 70
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0074:
.L_0073:
.L_0072:
.L_0071:
.L_0070:
.L_006F:
.L_006E:
add dword ptr [LEX+840140], -49420
.L_0069:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXPOPCTX, .-LEXPOPCTX
.cfi_endproc
.balign 16

.globl LEXINIT
LEXINIT:
.type LEXINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0076:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+900]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0079
lea ebx, [LEX]
mov dword ptr [LEX+840140], ebx
.L_0079:
.L_0078:
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16544], 0
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx]
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16548], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16548]
mov dword ptr [ebx+16552], ecx
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [ecx+16548]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_007D:
mov ebx, dword ptr [ebp-4]
imul ebx, 4136
mov ecx, dword ptr [LEX+840140]
add ecx, ebx
lea ebx, [ecx+4136]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4132], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [ebp-8], ecx
.L_007B:
inc dword ptr [ebp-4]
.L_007A:
cmp dword ptr [ebp-4], 2
jle .L_007D
.L_007C:
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+16548]
mov dword ptr [ebx+4132], eax
mov dword ptr [ebp-4], 0
.L_0081:
mov eax, dword ptr [ebp-4]
imul eax, 4136
mov ebx, dword ptr [LEX+840140]
add ebx, eax
mov dword ptr [ebx], -1
.L_007F:
inc dword ptr [ebp-4]
.L_007E:
cmp dword ptr [ebp-4], 3
jle .L_0081
.L_0080:
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16556], 4294967295
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16560], 4294967295
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16564], 4294967295
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16588], eax
cmp dword ptr [ebp+8], 2
jne .L_0083
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax-32852]
mov dword ptr [ebx+16568], ecx
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ecx-32844]
mov dword ptr [ebx+16576], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax-32840]
mov dword ptr [ebx+16580], ecx
jmp .L_0082
.L_0083:
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16568], 1
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16576], 0
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16580], 0
.L_0082:
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16572], -1
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16612], 0
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16592], 0
cmp dword ptr [ENV+576], 0
jne .L_0085
cmp dword ptr [ebp+8], 2
jne .L_0086
mov ecx, dword ptr [LEX+840140]
lea ebx, [ecx+16620]
mov dword ptr [ebp-12], ebx
jmp .L_008E
.L_0086:
mov dword ptr [ebp-12], 0
.L_008E:
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16616], ecx
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16596], 0
sub esp, 8
push 0
mov ecx, dword ptr [LEX+840140]
lea ebx, [ecx+16600]
push ebx
call DZSTRALLOCATE
add esp, 16
jmp .L_0084
.L_0085:
mov ebx, dword ptr [LEX+840140]
lea ecx, [ebx+16620]
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16616], ecx
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16596], 0
sub esp, 8
push 0
mov ecx, dword ptr [LEX+840140]
lea ebx, [ecx+16600]
push ebx
call DWSTRALLOCATE
add esp, 16
.L_0084:
cmp dword ptr [ebp+8], 2
jne .L_0089
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx-28]
mov dword ptr [ecx+49392], eax
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [eax-24]
mov dword ptr [ecx+49396], ebx
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx-20]
mov dword ptr [ecx+49400], eax
jmp .L_0088
.L_0089:
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49392], 0
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49396], 0
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49400], 0
.L_0088:
mov eax, dword ptr [ENV+900]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_008B
sub esp, 8
push 0
mov ecx, dword ptr [LEX+840140]
lea eax, [ecx+49404]
push eax
call DZSTRALLOCATE
add esp, 16
mov dword ptr [LEX+840144], 0
.L_008B:
.L_008A:
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49416], 0
cmp dword ptr [ebp+8], 0
jne .L_008D
call PPINIT
.L_008D:
.L_008C:
.L_0077:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXINIT, .-LEXINIT
.cfi_endproc
.balign 16

.globl LEXEND
LEXEND:
.type LEXEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0093:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
call PPEND
.L_0094:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXEND, .-LEXEND
.cfi_endproc
.balign 16

.globl LEXEATCHAR
LEXEATCHAR:
.type LEXEATCHAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00CA:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16560], 4294967295
jne .L_00CD
call HSKIPCHAR
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+16556], 4294967295
jmp .L_00CC
.L_00CD:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16564], 4294967295
jne .L_00CE
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16560]
mov dword ptr [ebx+16556], ecx
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16560], 4294967295
jmp .L_00CC
.L_00CE:
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ecx+16560]
mov dword ptr [ebx+16556], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16564]
mov dword ptr [ebx+16560], ecx
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16564], 4294967295
.L_00CC:
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXEATCHAR, .-LEXEATCHAR
.cfi_endproc
.balign 16

.globl LEXEATWHITESPACE
LEXEATWHITESPACE:
.type LEXEATWHITESPACE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16556], 4294967295
jne .L_00D2
call HREADCHAR
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16556], eax
.L_00D2:
.L_00D1:
.L_00D3:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16556], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16556], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00D4
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+49416], -1
call LEXEATCHAR
call HREADCHAR
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+16556], eax
mov dword ptr [ebp-4], -1
jmp .L_00D3
.L_00D4:
.L_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXEATWHITESPACE, .-LEXEATWHITESPACE
.cfi_endproc
.balign 16

.globl LEXCURRENTCHAR
LEXCURRENTCHAR:
.type LEXCURRENTCHAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E2:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16556], 4294967295
jne .L_00E5
call HREADCHAR
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16556], eax
.L_00E5:
.L_00E4:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16556]
mov dword ptr [ebp-4], ebx
.L_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXCURRENTCHAR, .-LEXCURRENTCHAR
.cfi_endproc
.balign 16

.globl LEXGETLOOKAHEADCHAR
LEXGETLOOKAHEADCHAR:
.type LEXGETLOOKAHEADCHAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E6:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16560], 4294967295
jne .L_00E9
call HSKIPCHAR
call HREADCHAR
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16560], eax
.L_00E9:
.L_00E8:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16560]
mov dword ptr [ebp-4], ebx
.L_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETLOOKAHEADCHAR, .-LEXGETLOOKAHEADCHAR
.cfi_endproc
.balign 16

.globl LEXGETLOOKAHEADCHAR2
LEXGETLOOKAHEADCHAR2:
.type LEXGETLOOKAHEADCHAR2, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00EA:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16564], 4294967295
jne .L_00ED
call HSKIPCHAR
call HREADCHAR
mov ebx, dword ptr [LEX+840140]
mov dword ptr [ebx+16564], eax
.L_00ED:
.L_00EC:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ebp-4], ebx
.L_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETLOOKAHEADCHAR2, .-LEXGETLOOKAHEADCHAR2
.cfi_endproc
.balign 16

.globl LEXNEXTTOKEN
LEXNEXTTOKEN:
.type LEXNEXTTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_02D4:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+49416]
mov dword ptr [ebx+4128], ecx
mov ecx, dword ptr [LEX+840140]
mov dword ptr [ecx+49416], 0
.L_02D6:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4112], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], 0
mov dword ptr [ebp-8], 0
.L_02D7:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .L_02DB
.L_02DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
jmp .L_02D5
jmp .L_02DA
.L_02DE:
cmp dword ptr [ebp-8], 0
je .L_02E0
call LEXEATCHAR
jmp .L_02D9
.L_02E0:
.L_02DF:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_02E2
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-20], eax
jmp .L_02E4
.L_02E6:
jmp .L_02D8
jmp .L_02E3
.L_02E7:
call LEXGETLOOKAHEADCHAR2
cmp eax, 35
jne .L_02E9
jmp .L_02D8
.L_02E9:
.L_02E8:
jmp .L_02E3
.L_02E4:
mov eax, dword ptr [ebp-20]
add eax, 4294967261
cmp eax, 87
ja .L_02E3
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02EA+eax*4-140]
.L_02EA:
.int .L_02E7
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E3
.int .L_02E6
.int .L_02E3
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.int .L_02E6
.L_02E3:
call LEXEATCHAR
mov dword ptr [ebp-8], -1
jmp .L_02D9
jmp .L_02E1
.L_02E2:
jmp .L_02D8
.L_02E1:
jmp .L_02DA
.L_02EB:
call LEXEATCHAR
cmp dword ptr [ebp-4], 13
jne .L_02ED
call LEXCURRENTCHAR
cmp eax, 10
jne .L_02EF
call LEXEATCHAR
.L_02EF:
.L_02EE:
.L_02ED:
.L_02EC:
cmp dword ptr [ebp-8], 0
jne .L_02F1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .L_02D5
jmp .L_02F0
.L_02F1:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_02F3
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16568]
.L_02F3:
.L_02F2:
mov dword ptr [ebp-8], 0
jmp .L_02D9
.L_02F0:
jmp .L_02DA
.L_02F4:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
cmp dword ptr [ebp-8], 0
jne .L_02F6
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_02F8
jmp .L_02D8
.L_02F8:
.L_02F7:
.L_02F6:
.L_02F5:
call LEXEATCHAR
jmp .L_02DA
.L_02F9:
cmp dword ptr [ebp-8], 0
jne .L_02FB
jmp .L_02D8
.L_02FB:
.L_02FA:
call LEXEATCHAR
jmp .L_02DA
.L_02DB:
cmp dword ptr [ebp-16], 95
ja .L_02F9
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_02FC+eax*4]
.L_02FC:
.int .L_02DD
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F4
.int .L_02EB
.int .L_02F9
.int .L_02F9
.int .L_02EB
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F4
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02F9
.int .L_02DE
.L_02DA:
.L_02D9:
jmp .L_02D7
.L_02D8:
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [LEX+840140]
mov ebx, dword ptr [LEX+840140]
lea esi, [ebx+16620]
mov ebx, dword ptr [ecx+16616]
sub ebx, esi
add ebx, dword ptr [eax+49392]
dec ebx
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49396], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .L_02FE
.L_0300:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .L_0302
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 48
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 57
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0304
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .L_02FD
.L_0304:
.L_0303:
.L_0302:
.L_0301:
jmp .L_0305
jmp .L_02FD
.L_0306:
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .L_030A
.L_030B:
cmp dword ptr [ebp-20], 104
je .L_030A
.L_030C:
cmp dword ptr [ebp-20], 79
je .L_030A
.L_030D:
cmp dword ptr [ebp-20], 111
je .L_030A
.L_030E:
cmp dword ptr [ebp-20], 66
je .L_030A
.L_030F:
cmp dword ptr [ebp-20], 98
je .L_030A
.L_0310:
cmp dword ptr [ebp-20], 48
jb .L_0309
cmp dword ptr [ebp-20], 55
ja .L_0309
.L_030A:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .L_0307
.L_0309:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+4112], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call LEXEATCHAR
.L_0311:
.L_0307:
jmp .L_02FD
.L_0312:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .L_02FD
.L_0313:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call READID
add esp, 16
not eax
test eax, eax
je .L_0315
jmp .L_02D6
.L_0315:
.L_0314:
jmp .L_02FD
.L_0316:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ENV+1092], 0
je .L_0317
mov dword ptr [ebp-20], 263
jmp .L_0358
.L_0317:
mov dword ptr [ebp-20], 262
.L_0358:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+576], 0
jne .L_031A
sub esp, 4
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call HREADSTRING
add esp, 16
jmp .L_0319
.L_031A:
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call HREADWSTR
add esp, 16
.L_0319:
jmp .L_02FD
.L_031B:
call LEXGETLOOKAHEADCHAR
cmp eax, 34
je .L_031D
jmp .L_0305
.L_031D:
.L_031C:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .L_031E
mov dword ptr [ebp-20], 263
jmp .L_0359
.L_031E:
mov dword ptr [ebp-20], 264
.L_0359:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+576], 0
jne .L_0321
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_0323
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_0322
.L_0323:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.L_0322:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADSTRING
add esp, 16
jmp .L_0320
.L_0321:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_0325
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_0324
.L_0325:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp+8]
lea eax, [esi+16]
mov dword ptr [ebp-24], eax
.L_0324:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADWSTR
add esp, 16
.L_0320:
jmp .L_02FD
.L_0326:
.L_0305:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [esi]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4124], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 1
mov bl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call LEXEATCHAR
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .L_0328
.L_032A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .L_032C
.L_032D:
call LEXCURRENTCHAR
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .L_0330
.L_0331:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call LEXEATCHAR
jmp .L_032E
.L_0330:
cmp dword ptr [ebp-24], 62
jne .L_0332
.L_0333:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call LEXEATCHAR
jmp .L_032E
.L_0332:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.L_0334:
.L_032E:
jmp .L_032B
.L_032C:
cmp dword ptr [ebp-4], 62
jne .L_0335
.L_0336:
mov eax, dword ptr [PARSER+152]
and eax, 512
test eax, eax
jne .L_0337
call LEXCURRENTCHAR
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_035A
.L_0337:
mov dword ptr [ebp-24], 0
.L_035A:
cmp dword ptr [ebp-24], 0
je .L_033A
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call LEXEATCHAR
jmp .L_0339
.L_033A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.L_0339:
jmp .L_032B
.L_0335:
cmp dword ptr [ebp-4], 61
jne .L_033B
.L_033C:
call LEXCURRENTCHAR
cmp eax, 62
jne .L_033E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call LEXEATCHAR
jmp .L_033D
.L_033E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.L_033D:
.L_033B:
.L_032B:
jmp .L_0327
.L_033F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .L_0327
.L_0340:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
call LEXCURRENTCHAR
cmp eax, 62
jne .L_0342
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 400
call LEXEATCHAR
.L_0342:
.L_0341:
jmp .L_0327
.L_0343:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .L_0345
call LEXCURRENTCHAR
cmp eax, 39
jne .L_0347
call HMULTILINECOMMENT
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
jmp .L_02D6
.L_0347:
.L_0346:
.L_0345:
.L_0344:
jmp .L_0327
.L_0348:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .L_0327
.L_0349:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .L_0327
.L_034A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .L_0327
.L_034B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.L_034C:
call LEXCURRENTCHAR
mov dword ptr [ebp-24], eax
jmp .L_0350
.L_0352:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
jmp .L_034F
.L_0353:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 0
jmp .L_034D
jmp .L_034F
.L_0350:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .L_0353
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0354+eax*4-36]
.L_0354:
.int .L_0352
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0353
.int .L_0352
.L_034F:
.L_034E:
jmp .L_034C
.L_034D:
jmp .L_0327
.L_0355:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .L_0327
.L_0328:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .L_0355
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0356+eax*4-36]
.L_0356:
.int .L_034B
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_034B
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0348
.int .L_034A
.int .L_034A
.int .L_033F
.int .L_033F
.int .L_034A
.int .L_0340
.int .L_034A
.int .L_0343
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0349
.int .L_034A
.int .L_032A
.int .L_032A
.int .L_032A
.int .L_0355
.int .L_033F
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_034A
.int .L_033F
.int .L_034A
.int .L_033F
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_0355
.int .L_034A
.int .L_0355
.int .L_034A
.L_0327:
jmp .L_02FD
.L_02FE:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .L_0326
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0357+eax*4-132]
.L_0357:
.int .L_031B
.int .L_0316
.int .L_0326
.int .L_031B
.int .L_0326
.int .L_0306
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0300
.int .L_0326
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0312
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0326
.int .L_0313
.int .L_0326
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.int .L_0313
.L_02FD:
.L_02D5:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXNEXTTOKEN, .-LEXNEXTTOKEN
.cfi_endproc
.balign 16

.globl LEXGETTOKEN
LEXGETTOKEN:
.type LEXGETTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0379:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .L_037C
sub esp, 8
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+840140]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 16
call PPCHECK
.L_037C:
.L_037B:
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_037A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETTOKEN, .-LEXGETTOKEN
.cfi_endproc
.balign 16

.globl LEXGETCLASS
LEXGETCLASS:
.type LEXGETCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_037D:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .L_0380
sub esp, 8
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+840140]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 16
call PPCHECK
.L_0380:
.L_037F:
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_037E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETCLASS, .-LEXGETCLASS
.cfi_endproc
.balign 16

.globl LEXGETLOOKAHEAD
LEXGETLOOKAHEAD:
.type LEXGETLOOKAHEAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0381:
cmp dword ptr [ebp+8], 3
jle .L_0384
jmp .L_0382
.L_0384:
.L_0383:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .L_0386
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.L_0386:
.L_0385:
mov ecx, dword ptr [LEX+840140]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .L_0388
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 16
.L_0388:
.L_0387:
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.L_0382:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETLOOKAHEAD, .-LEXGETLOOKAHEAD
.cfi_endproc
.balign 16

.globl LEXGETLOOKAHEADCLASS
LEXGETLOOKAHEADCLASS:
.type LEXGETLOOKAHEADCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0389:
cmp dword ptr [ebp+8], 3
jle .L_038C
jmp .L_038A
.L_038C:
.L_038B:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .L_038E
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.L_038E:
.L_038D:
mov ecx, dword ptr [LEX+840140]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .L_0390
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 16
.L_0390:
.L_038F:
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.L_038A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETLOOKAHEADCLASS, .-LEXGETLOOKAHEADCLASS
.cfi_endproc
.balign 16

.globl LEXPPONLYEMITTOKEN
LEXPPONLYEMITTOKEN:
.type LEXPPONLYEMITTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_03B0:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .L_03B5
.L_03B6:
cmp dword ptr [ebp-4], 260
jne .L_03B4
.L_03B5:
jmp .L_03B1
jmp .L_03B2
.L_03B4:
cmp dword ptr [ebp-4], 256
je .L_03B8
.L_03B9:
cmp dword ptr [ebp-4], 257
jne .L_03B7
.L_03B8:
sub esp, 8
push -1
push offset PPONLY_LN
call fb_StrLen
add esp, 16
test eax, eax
jle .L_03BB
mov eax, dword ptr [ENV+860]
mov dword ptr [ebp-8], eax
sub esp, 4
push 1
push offset PPONLY_LN
push dword ptr [ebp-8]
call fb_PrintString
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
jmp .L_03BA
.L_03BB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
jne .L_03BD
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16572], 257
jne .L_03BF
mov eax, dword ptr [ENV+860]
mov dword ptr [ebp-8], eax
sub esp, 4
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-8]
call fb_PrintString
add esp, 16
.L_03BF:
.L_03BE:
.L_03BD:
.L_03BA:
jmp .L_03B1
.L_03B7:
.L_03B2:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4128], 0
je .L_03C2
sub esp, 12
push 0
push 2
push offset Lt_03C3
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 32
.L_03C2:
.L_03C1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .L_03C7
.L_03C8:
cmp dword ptr [ebp-4], 263
je .L_03C7
.L_03C9:
cmp dword ptr [ebp-4], 264
jne .L_03C6
.L_03C7:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTOKEN
add esp, 4
push eax
call LEXGETSTRLITTEXT
add esp, 12
push eax
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 32
jmp .L_03C4
.L_03C6:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTEXT
push eax
push -1
push offset PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
.L_03CA:
.L_03C4:
.L_03B1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXPPONLYEMITTOKEN, .-LEXPPONLYEMITTOKEN
.cfi_endproc
.balign 16

.globl LEXPPONLYEMITTEXT
LEXPPONLYEMITTEXT:
.type LEXPPONLYEMITTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_03CC:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
push offset PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
.L_03CD:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXPPONLYEMITTEXT, .-LEXPPONLYEMITTEXT
.cfi_endproc
.balign 16

.globl LEXSKIPTOKEN
LEXSKIPTOKEN:
.type LEXSKIPTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_03CF:
sub esp, 12
push dword ptr [ebp+8]
call LEXCHECKTOKEN
add esp, 16
and dword ptr [ebp+8], -14337
cmp dword ptr [ENV+860], 0
jle .L_03D2
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16576], 0
jne .L_03D4
call LEXPPONLYEMITTOKEN
.L_03D4:
.L_03D3:
.L_03D2:
.L_03D1:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .L_03D7
.L_03D8:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_03DA
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16568]
.L_03DA:
.L_03D9:
.L_03D7:
.L_03D5:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [LEX+840140]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+16572], ecx
mov ecx, dword ptr [LEX+840140]
cmp dword ptr [ecx+16544], 0
jne .L_03DC
sub esp, 8
push dword ptr [ebp+8]
mov ecx, dword ptr [LEX+840140]
push dword ptr [ecx+16548]
call LEXNEXTTOKEN
add esp, 16
jmp .L_03DB
.L_03DC:
call HMOVEKDOWN
.L_03DB:
call PPCHECK
.L_03D0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXSKIPTOKEN, .-LEXSKIPTOKEN
.cfi_endproc
.balign 16

.globl LEXEATTOKEN
LEXEATTOKEN:
.type LEXEATTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_03DD:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_03E0
sub esp, 12
push 0
push 1025
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .L_03DF
.L_03E0:
sub esp, 12
push 0
push -1
sub esp, 8
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 12
push eax
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.L_03DF:
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
.L_03DE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXEATTOKEN, .-LEXEATTOKEN
.cfi_endproc
.balign 16

.globl LEXGETTEXT
LEXGETTEXT:
.type LEXGETTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_03E1:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_03E4
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .L_03E3
.L_03E4:
sub esp, 12
push 0
push -1
sub esp, 8
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 12
push eax
push 1025
push offset Lt_03E5
call fb_StrAssign
add esp, 32
mov eax, offset Lt_03E5
mov dword ptr [ebp-4], eax
.L_03E3:
.L_03E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXGETTEXT, .-LEXGETTEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_03E5,1025

.section .text
.balign 16

.globl LEXREADLINE
LEXREADLINE:
.type LEXREADLINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_03E6:
cmp dword ptr [ebp+16], 0
jne .L_03E9
sub esp, 12
push 0
push 1
push offset Lt_0000
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_03E9:
.L_03E8:
.L_03EA:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16544], 0
jle .L_03EB
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03EF
.L_03F0:
cmp dword ptr [ebp-4], 257
je .L_03EF
.L_03F1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03EE
.L_03EF:
jmp .L_03E7
jmp .L_03EC
.L_03EE:
cmp dword ptr [ebp+16], 0
jne .L_03F4
sub esp, 12
push 0
push -1
sub esp, 8
push 1025
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_03F4:
.L_03F3:
.L_03F2:
.L_03EC:
call HMOVEKDOWN
jmp .L_03EA
.L_03EB:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03F9
.L_03FA:
cmp dword ptr [ebp-4], 257
je .L_03F9
.L_03FB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03F8
.L_03F9:
jmp .L_03E7
jmp .L_03F6
.L_03F8:
cmp dword ptr [ebp+16], 0
jne .L_03FE
sub esp, 12
push 0
push -1
sub esp, 8
push 1025
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_03FE:
.L_03FD:
.L_03FC:
.L_03F6:
.L_0400:
call LEXCURRENTCHAR
mov dword ptr [Lt_0413], eax
mov eax, dword ptr [Lt_0413]
mov dword ptr [ebp-4], eax
jmp .L_0404
.L_0406:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 256
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .L_03E7
jmp .L_0403
.L_0407:
call LEXEATCHAR
cmp dword ptr [Lt_0413], 13
jne .L_0409
call LEXCURRENTCHAR
cmp eax, 10
jne .L_040B
call LEXEATCHAR
.L_040B:
.L_040A:
.L_0409:
.L_0408:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 257
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .L_03E7
jmp .L_0403
.L_040C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [Lt_0413], eax
jne .L_040E
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+4], 6
jmp .L_03E7
.L_040E:
.L_040D:
jmp .L_0403
.L_0404:
cmp dword ptr [ebp-4], 13
ja .L_040C
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_040F+ebx*4]
.L_040F:
.int .L_0406
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_040C
.int .L_0407
.int .L_040C
.int .L_040C
.int .L_0407
.L_0403:
call LEXEATCHAR
cmp dword ptr [ebp+16], 0
jne .L_0411
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [Lt_0413]
push 1
call fb_CHR
add esp, 16
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0411:
.L_0410:
.L_0402:
jmp .L_0400
.L_0401:
.L_03E7:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXREADLINE, .-LEXREADLINE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0413,4

.section .text
.balign 16

.globl LEXSKIPLINE
LEXSKIPLINE:
.type LEXSKIPLINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0414:
sub esp, 4
push -1
push 0
push 4294967295
call LEXREADLINE
add esp, 16
.L_0415:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXSKIPLINE, .-LEXSKIPLINE
.cfi_endproc
.balign 16

.globl LEXPEEKCURRENTLINE
LEXPEEKCURRENTLINE:
.type LEXPEEKCURRENTLINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0416:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+576], 0
je .L_0419
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0417
.L_0419:
.L_0418:
sub esp, 12
push dword ptr [ENV+300]
call fb_FileTell
add esp, 16
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16588], 2
jne .L_041B
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx-24]
add eax, -512
mov dword ptr [ebp-28], eax
jmp .L_041A
.L_041B:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+49396]
add ebx, -512
mov dword ptr [ebp-28], ebx
.L_041A:
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .L_041D
mov ebx, dword ptr [ebp-28]
add dword ptr [ebp-36], ebx
mov dword ptr [ebp-28], 0
.L_041D:
.L_041C:
push 1025
push offset Lt_0454
mov ebx, dword ptr [ebp-28]
inc ebx
push ebx
push dword ptr [ENV+300]
call fb_FileGetStr
add esp, 16
test eax, eax
je .L_041E
push 0
push 0
push offset Lt_0075
push 2474
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_041E:
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ENV+300]
call fb_FileSeek
add esp, 16
test eax, eax
je .L_041F
push 0
push 0
push offset Lt_0075
push 2475
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_041F:
mov eax, offset Lt_0454
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .L_0421
dec dword ptr [ebp-44]
.L_0422:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .L_0427
.L_0428:
cmp dword ptr [ebp-48], 10
jne .L_0426
.L_0427:
jmp .L_0423
.L_0426:
.L_0425:
cmp dword ptr [ebp-36], 0
jg .L_042A
jmp .L_0423
.L_042A:
.L_0429:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.L_0424:
jmp .L_0422
.L_0423:
inc dword ptr [ebp-44]
.L_0421:
.L_0420:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.L_042B:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0430
.L_0431:
cmp dword ptr [ebp-48], 13
je .L_0430
.L_0432:
cmp dword ptr [ebp-48], 10
jne .L_042F
.L_0430:
jmp .L_042C
.L_042F:
.L_042E:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-48]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-40], 0
jle .L_0434
sub esp, 12
push 0
push -1
sub esp, 4
cmp dword ptr [ebp-48], 9
jne .L_0435
mov dword ptr [ebp-52], 9
jmp .L_0453
.L_0435:
mov dword ptr [ebp-52], 32
.L_0453:
push dword ptr [ebp-52]
push 1
call fb_CHR
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
dec dword ptr [ebp-40]
.L_0434:
.L_0433:
inc dword ptr [ebp-44]
.L_042D:
jmp .L_042B
.L_042C:
cmp dword ptr [ebp+12], 0
je .L_0438
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-52], 0
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-56], eax
jmp .L_043A
.L_043D:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-60], bl
movzx ebx, byte ptr [ebp-60]
cmp ebx, 9
je .L_0441
.L_0442:
movzx ebx, byte ptr [ebp-60]
cmp ebx, 32
jne .L_0440
.L_0441:
jmp .L_043E
.L_0440:
jmp .L_043C
.L_0443:
.L_043E:
.L_043B:
inc dword ptr [ebp-52]
.L_043A:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-52], ebx
jle .L_043D
.L_043C:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
cmp dword ptr [ebp-52], eax
jge .L_0445
sub esp, 12
push 0
push -1
push -1
mov eax, dword ptr [ebp-52]
inc eax
push eax
lea eax, [ebp-24]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0444
.L_0445:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0444:
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-52], eax
jmp .L_0446
.L_0449:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-56], bl
movzx ebx, byte ptr [ebp-56]
cmp ebx, 9
je .L_044D
.L_044E:
movzx ebx, byte ptr [ebp-56]
cmp ebx, 32
jne .L_044C
.L_044D:
jmp .L_044A
.L_044C:
jmp .L_0448
.L_044F:
.L_044A:
.L_0447:
dec dword ptr [ebp-52]
.L_0446:
cmp dword ptr [ebp-52], 0
jge .L_0449
.L_0448:
cmp dword ptr [ebp-52], 0
jle .L_0451
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp-52]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0451:
.L_0450:
.L_0438:
.L_0437:
sub esp, 12
push 0
push 2
push offset Lt_0452
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
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
.L_0417:
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
.size LEXPEEKCURRENTLINE, .-LEXPEEKCURRENTLINE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0454,1025

.section .text
.balign 16

.globl LEXCHECKTOKEN
LEXCHECKTOKEN:
.type LEXCHECKTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0455:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0458
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .L_045A
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .L_045C
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0460
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_045E
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0489
.L_045E:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_0489:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_045D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
jmp .L_045B
.L_045C:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .L_0465
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
jne .L_0467
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0460
push -1
sub esp, 4
push -1
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0468
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_048A
.L_0468:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_048A:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_045D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_0467:
.L_0466:
jmp .L_045B
.L_0465:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .L_046E
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
je .L_0470
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
je .L_0472
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0460
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_0473
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_048B
.L_0473:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_048B:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_045D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_0472:
.L_0471:
jmp .L_046F
.L_0470:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
jne .L_047A
mov ebx, dword ptr [ENV+200]
and ebx, 256
test ebx, ebx
je .L_047C
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0460
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_047D
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_048C
.L_047D:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_048C:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_045D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_047C:
.L_047B:
jmp .L_0479
.L_047A:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0460
push -1
sub esp, 4
push -1
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0483
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_048D
.L_0483:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_048D:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_045D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0479:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_046F:
.L_046E:
.L_045B:
.L_045A:
.L_0459:
.L_0458:
.L_0457:
.L_0456:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LEXCHECKTOKEN, .-LEXCHECKTOKEN
.cfi_endproc
.balign 16

.globl HMATCHIDORKW
HMATCHIDORKW:
.type HMATCHIDORKW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_048E:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0493
.L_0494:
cmp dword ptr [ebp-8], 2
je .L_0493
.L_0495:
cmp dword ptr [ebp-8], 1
jne .L_0492
.L_0493:
push 0
push dword ptr [ebp+8]
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0497
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_048F
.L_0497:
.L_0496:
.L_0492:
.L_0490:
mov dword ptr [ebp-4], 0
.L_048F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCHIDORKW, .-HMATCHIDORKW
.cfi_endproc
.balign 16

.globl HMATCH
HMATCH:
.type HMATCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0498:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_049B
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_049A
.L_049B:
mov dword ptr [ebp-4], 0
.L_049A:
.L_0499:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCH, .-HMATCH
.cfi_endproc
.balign 16
fb_ctor__lex:
.type fb_ctor__lex, @function
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
.size fb_ctor__lex, .-fb_ctor__lex
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
HCOLLECTCHARFORDEBUGOUTPUT:
.type HCOLLECTCHARFORDEBUGOUTPUT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0095:
cmp dword ptr [ebp+8], 32
jae .L_0098
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_009A
.L_009C:
jmp .L_0096
jmp .L_0099
.L_009D:
jmp .L_0099
.L_009E:
mov dword ptr [ebp+8], 63
jmp .L_0099
.L_009A:
cmp dword ptr [ebp-4], 13
ja .L_009E
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_00A0+eax*4]
.L_00A0:
.int .L_009C
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009D
.int .L_009C
.int .L_009D
.int .L_009D
.int .L_009C
.L_0099:
jmp .L_0097
.L_0098:
cmp dword ptr [ebp+8], 255
jbe .L_00A1
mov dword ptr [ebp+8], 63
.L_00A1:
.L_0097:
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+49404]
push ebx
call DZSTRCONCATASSIGNC
add esp, 16
.L_0096:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOLLECTCHARFORDEBUGOUTPUT, .-HCOLLECTCHARFORDEBUGOUTPUT
.cfi_endproc
.balign 16
HREADCHAR:
.type HREADCHAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jle .L_00A5
cmp dword ptr [ENV+576], 0
jne .L_00A7
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16596]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16596]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A6:
cmp dword ptr [ENV+148], 0
je .L_00A9
cmp dword ptr [ENV+900], 0
jne .L_00AB
cmp dword ptr [LEX+840144], 0
jne .L_00AD
mov dword ptr [LEX+840144], -1
sub esp, 8
push offset Lt_00AE
mov eax, dword ptr [LEX+840140]
lea ebx, [eax+49404]
push ebx
call DZSTRCONCATASSIGN
add esp, 16
.L_00AD:
.L_00AC:
sub esp, 12
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 16
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
jmp .L_00A4
.L_00A5:
mov ebx, dword ptr [LEX+840140]
cmp dword ptr [ebx+16612], 0
jne .L_00B0
sub esp, 12
push dword ptr [ENV+300]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_00B2
sub esp, 12
push dword ptr [ENV+300]
call fb_FileTell
add esp, 16
mov ebx, eax
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49392], ebx
mov ebx, dword ptr [ENV+576]
mov dword ptr [ebp-12], ebx
jmp .L_00B4
.L_00B6:
push 8193
mov ebx, dword ptr [LEX+840140]
lea eax, [ebx+16620]
push eax
push 0
push dword ptr [ENV+300]
call fb_FileGetStr
add esp, 16
test eax, eax
jne .L_00B8
sub esp, 12
push dword ptr [ENV+300]
call fb_FileTell
add esp, 16
mov ebx, eax
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+49400], ebx
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [LEX+840140]
mov edx, dword ptr [ebx+49400]
sub edx, dword ptr [eax+49392]
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+16612], edx
mov edx, dword ptr [LEX+840140]
lea eax, [edx+16620]
mov edx, dword ptr [LEX+840140]
mov dword ptr [edx+16616], eax
.L_00B8:
.L_00B7:
jmp .L_00B3
.L_00B9:
call LEXREADUTF8
jmp .L_00B3
.L_00BA:
call LEXREADUTF16LE
jmp .L_00B3
.L_00BB:
call LEXREADUTF16BE
jmp .L_00B3
.L_00BC:
call LEXREADUTF32LE
jmp .L_00B3
.L_00BD:
call LEXREADUTF32BE
jmp .L_00B3
.L_00B4:
cmp dword ptr [ebp-12], 5
ja .L_00B3
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00BE+eax*4]
.L_00BE:
.int .L_00B6
.int .L_00B9
.int .L_00BA
.int .L_00BB
.int .L_00BC
.int .L_00BD
.L_00B3:
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AF:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16612], 0
jle .L_00C0
cmp dword ptr [ENV+576], 0
jne .L_00C2
mov eax, dword ptr [LEX+840140]
mov edx, dword ptr [eax+16616]
movzx eax, byte ptr [edx]
mov dword ptr [ebp-8], eax
jmp .L_00C1
.L_00C2:
mov eax, dword ptr [LEX+840140]
mov edx, dword ptr [eax+16616]
mov eax, dword ptr [edx]
mov dword ptr [ebp-8], eax
.L_00C1:
jmp .L_00BF
.L_00C0:
mov dword ptr [ebp-8], 0
.L_00BF:
cmp dword ptr [ENV+148], 0
je .L_00C4
cmp dword ptr [ENV+900], 0
jne .L_00C6
cmp dword ptr [LEX+840144], 0
je .L_00C8
mov dword ptr [LEX+840144], 0
sub esp, 8
push offset Lt_00C9
mov eax, dword ptr [LEX+840140]
lea edx, [eax+49404]
push edx
call DZSTRCONCATASSIGN
add esp, 16
.L_00C8:
.L_00C7:
sub esp, 12
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 16
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C3:
.L_00A4:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADCHAR, .-HREADCHAR
.cfi_endproc
.balign 16
HSKIPCHAR:
.type HSKIPCHAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00D7:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jle .L_00DA
mov eax, dword ptr [LEX+840140]
dec dword ptr [eax+16592]
cmp dword ptr [ENV+576], 0
jne .L_00DC
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16596]
jmp .L_00DB
.L_00DC:
mov eax, dword ptr [LEX+840140]
add dword ptr [eax+16596], 4
.L_00DB:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_00DE
mov eax, dword ptr [LEX+840140]
mov dword ptr [eax+16580], 0
.L_00DE:
.L_00DD:
jmp .L_00D9
.L_00DA:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16556], 0
je .L_00DF
mov eax, dword ptr [LEX+840140]
dec dword ptr [eax+16612]
cmp dword ptr [ENV+576], 0
jne .L_00E1
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16616]
jmp .L_00E0
.L_00E1:
mov eax, dword ptr [LEX+840140]
add dword ptr [eax+16616], 4
.L_00E0:
.L_00DF:
.L_00D9:
.L_00D8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSKIPCHAR, .-HSKIPCHAR
.cfi_endproc
.balign 16
HREADIDENTIFIER:
.type HREADIDENTIFIER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00EE:
call LEXCURRENTCHAR
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call LEXEATCHAR
mov dword ptr [ebp-4], 0
.L_00F0:
call LEXCURRENTCHAR
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00F4
.L_00F6:
jmp .L_00F3
.L_00F7:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .L_00F9
jmp .L_00F1
.L_00F9:
.L_00F8:
jmp .L_00F3
.L_00FA:
jmp .L_00F1
jmp .L_00F3
.L_00F4:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .L_00FA
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00FB+eax*4-184]
.L_00FB:
.int .L_00F7
.int .L_00FA
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00FA
.int .L_00F6
.int .L_00FA
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.int .L_00F6
.L_00F3:
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
jne .L_00FD
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .L_00FF
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_0101
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call ERRREPORTWARN
add esp, 16
.L_0101:
.L_0100:
mov dword ptr [ebp-4], -1
jmp .L_00FE
.L_00FF:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.L_00FE:
.L_00FD:
.L_00FC:
.L_00F2:
jmp .L_00F0
.L_00F1:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_0103
call LEXCURRENTCHAR
mov dword ptr [ebp-8], eax
jmp .L_0105
.L_0107:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ENV+1044]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call LEXEATCHAR
jmp .L_0104
.L_0108:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call LEXEATCHAR
jmp .L_0104
.L_0109:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call LEXEATCHAR
jmp .L_0104
.L_010A:
call LEXGETLOOKAHEADCHAR
cmp eax, 35
je .L_010C
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call LEXEATCHAR
.L_010C:
.L_010B:
jmp .L_0104
.L_010D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call LEXEATCHAR
jmp .L_0104
.L_0105:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .L_0104
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_010E+eax*4-132]
.L_010E:
.int .L_0109
.int .L_0104
.int .L_010A
.int .L_010D
.int .L_0107
.int .L_0108
.L_0104:
.L_0103:
.L_0102:
.L_00EF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADIDENTIFIER, .-HREADIDENTIFIER
.cfi_endproc
.balign 16
HREADNONDECNUMBER:
.type HREADNONDECNUMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0112
.L_0114:
mov dword ptr [ebp-16], 79
jmp .L_0111
.L_0115:
call LEXEATCHAR
jmp .L_0111
.L_0112:
mov eax, dword ptr [ebp-48]
add eax, 4294967248
cmp eax, 7
ja .L_0115
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0116+eax*4-192]
.L_0116:
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.int .L_0114
.L_0111:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0118
.L_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 38
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx+1], bl
mov ebx, dword ptr [ebp+8]
add dword ptr [ebx], 2
mov ebx, dword ptr [ebp+12]
add dword ptr [ebx], 2
call LEXEATCHAR
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .L_011C
.L_011D:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_011E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_011D
.L_011E:
.L_011C:
.L_011B:
.L_011F:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .L_0125
cmp dword ptr [ebp-16], 102
jbe .L_0124
.L_0125:
cmp dword ptr [ebp-16], 65
jb .L_0126
cmp dword ptr [ebp-16], 70
jbe .L_0124
.L_0126:
cmp dword ptr [ebp-16], 48
jb .L_0123
cmp dword ptr [ebp-16], 57
ja .L_0123
.L_0124:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0128
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
cmp dword ptr [ebp-16], 9
jbe .L_012A
add dword ptr [ebp-16], 4294967289
.L_012A:
.L_0129:
cmp dword ptr [ebp-16], 16
jbe .L_012C
add dword ptr [ebp-16], 4294967264
.L_012C:
.L_012B:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .L_012E
cmp dword ptr [ebp-32], 9
jne .L_0130
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ecx, dword ptr [ebp-12]
mov eax, 0
shld eax, ecx, 4
shl ecx, 4
mov esi, dword ptr [ebp-16]
mov ebx, 0
add ecx, esi
adc eax, ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], eax
jmp .L_012F
.L_0130:
cmp dword ptr [ebp-32], 17
jne .L_0131
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .L_0133
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0133:
.L_0132:
mov dword ptr [ebp-40], -1
jmp .L_012F
.L_0131:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-24]
shld ecx, eax, 4
shl eax, 4
mov ebx, dword ptr [ebp-16]
mov esi, 0
add eax, ebx
adc ecx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ecx
.L_012F:
jmp .L_012D
.L_012E:
cmp dword ptr [ebp-32], 5
jne .L_0135
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0135:
.L_0134:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_012D:
.L_0128:
.L_0127:
jmp .L_0122
.L_0123:
jmp .L_0120
.L_0136:
.L_0122:
.L_0121:
jmp .L_011F
.L_0120:
jmp .L_0117
.L_0137:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 38
mov cl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx+1], cl
mov ecx, dword ptr [ebp+8]
add dword ptr [ecx], 2
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 2
call LEXEATCHAR
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .L_0139
.L_013A:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_013B
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_013A
.L_013B:
.L_0139:
.L_0138:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_013C:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .L_0140
cmp dword ptr [ebp-16], 55
ja .L_0140
.L_0141:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0143
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 10
jle .L_0145
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_0147
.L_0149:
cmp dword ptr [ebp-20], 51
jbe .L_014B
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 3
shl ebx, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_014A
.L_014B:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_014A:
jmp .L_0146
.L_014C:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_014D
mov dword ptr [ebp-56], 24
jmp .L_049C
.L_014D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_049C:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .L_0150
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_0150:
.L_014F:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0146
.L_0151:
cmp dword ptr [ebp-20], 49
jbe .L_0153
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0155
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0155:
.L_0154:
mov dword ptr [ebp-40], -1
jmp .L_0152
.L_0153:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 3
shl eax, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add eax, esi
adc ebx, ecx
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_0152:
jmp .L_0146
.L_0156:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0158
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0158:
.L_0157:
mov dword ptr [ebp-40], -1
jmp .L_0146
.L_0159:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0146
.L_0147:
mov ebx, dword ptr [ebp-52]
add ebx, 4294967285
cmp ebx, 12
ja .L_0159
mov ebx, dword ptr [ebp-52]
jmp dword ptr [.L_015A+ebx*4-44]
.L_015A:
.int .L_0149
.int .L_014C
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0159
.int .L_0151
.int .L_0156
.L_0146:
jmp .L_0144
.L_0145:
cmp dword ptr [ebp-32], 6
jne .L_015C
cmp dword ptr [ebp-20], 49
jbe .L_015E
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_015E:
.L_015D:
jmp .L_015B
.L_015C:
cmp dword ptr [ebp-32], 7
jne .L_015F
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_015F:
.L_015B:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_0144:
.L_0143:
.L_0142:
jmp .L_013F
.L_0140:
jmp .L_013D
.L_0160:
.L_013F:
.L_013E:
jmp .L_013C
.L_013D:
jmp .L_0117
.L_0161:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 38
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], al
mov eax, dword ptr [ebp+8]
add dword ptr [eax], 2
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_0163
.L_0164:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_0165
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_0164
.L_0165:
.L_0163:
.L_0162:
.L_0166:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .L_016B
.L_016C:
cmp dword ptr [ebp-16], 49
jne .L_016A
.L_016B:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_016E
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 32
jle .L_0170
cmp dword ptr [ebp-32], 33
jne .L_0172
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 1
shl ebx, 1
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0171
.L_0172:
cmp dword ptr [ebp-32], 65
jne .L_0173
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0175
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0175:
.L_0174:
mov dword ptr [ebp-40], -1
jmp .L_0171
.L_0173:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 1
shl eax, 1
mov ecx, dword ptr [ebp-16]
mov esi, 0
add eax, ecx
adc ebx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_0171:
jmp .L_016F
.L_0170:
cmp dword ptr [ebp-32], 17
jne .L_0177
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0177:
.L_0176:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_016F:
.L_016E:
.L_016D:
jmp .L_0169
.L_016A:
jmp .L_0167
.L_0178:
.L_0169:
.L_0168:
jmp .L_0166
.L_0167:
jmp .L_0117
.L_0179:
jmp .L_0110
jmp .L_0117
.L_0118:
mov eax, dword ptr [ebp-48]
add eax, 4294967230
cmp eax, 45
ja .L_0179
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_017A+eax*4-264]
.L_017A:
.int .L_0161
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_011A
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0137
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0161
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_011A
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0179
.int .L_0137
.L_0117:
cmp dword ptr [ebp-32], 0
jne .L_017C
cmp dword ptr [ebp-36], 0
jne .L_017E
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_0180
push 0
push 1
push 0
push 48
call ERRREPORTWARN
add esp, 16
.L_0180:
.L_017F:
.L_017E:
.L_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_017C:
.L_017B:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0181
mov dword ptr [ebp-44], 24
jmp .L_049D
.L_0181:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_049D:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .L_0184
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_0183
.L_0184:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_0183:
.L_0110:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADNONDECNUMBER, .-HREADNONDECNUMBER
.cfi_endproc
.balign 16
HREADFLOATNUMBER:
.type HREADFLOATNUMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0185:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ENV+1072]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4112]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_0187:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .L_018B
cmp dword ptr [ebp-4], 57
ja .L_018B
.L_018C:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_018E
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_018E:
.L_018D:
jmp .L_018A
.L_018B:
jmp .L_0188
.L_018F:
.L_018A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .L_0191
cmp dword ptr [ebp-12], 0
jne .L_0193
mov dword ptr [ebp-12], -1
jmp .L_0192
.L_0193:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0195
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0195:
.L_0194:
.L_0192:
.L_0191:
.L_0190:
.L_0189:
jmp .L_0187
.L_0188:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .L_0196
mov dword ptr [ebp-16], 1
jmp .L_049E
.L_0196:
mov dword ptr [ebp-16], 0
.L_049E:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+4112], eax
jle .L_0199
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.L_0199:
.L_0198:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_019B
.L_019D:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_019F
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.L_019F:
.L_019E:
cmp dword ptr [ebp-12], 0
jne .L_01A1
cmp dword ptr [ebp+20], 0
jne .L_01A3
mov dword ptr [ebp-4], 101
.L_01A3:
.L_01A2:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.L_01A1:
.L_01A0:
call LEXEATCHAR
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 43
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 45
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01A5
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_01A7
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A4:
.L_01A8:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .L_01AC
.L_01AE:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_01B0
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_01B0:
.L_01AF:
jmp .L_01AB
.L_01B1:
jmp .L_01A9
jmp .L_01AB
.L_01AC:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .L_01B1
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_01B2+eax*4-192]
.L_01B2:
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.L_01AB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .L_01B4
cmp dword ptr [ebp-12], 0
jne .L_01B6
mov dword ptr [ebp-12], -1
jmp .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_01B8
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_01B8:
.L_01B7:
.L_01B5:
.L_01B4:
.L_01B3:
.L_01AA:
jmp .L_01A8
.L_01A9:
jmp .L_019A
.L_019B:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .L_019A
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01B9+eax*4-272]
.L_01B9:
.int .L_019D
.int .L_019D
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
.int .L_019D
.int .L_019D
.L_019A:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
jmp .L_01BB
.L_01BD:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .L_01BF
call LEXEATCHAR
.L_01BF:
.L_01BE:
jmp .L_01BA
.L_01C0:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01C2
call LEXEATCHAR
.L_01C2:
.L_01C1:
jmp .L_01BA
.L_01C3:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01C5
call LEXEATCHAR
.L_01C5:
.L_01C4:
jmp .L_01BA
.L_01BB:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .L_01BA
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01C6+eax*4-132]
.L_01C6:
.int .L_01C0
.int .L_01BA
.int .L_01C3
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BD
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BA
.int .L_01BD
.L_01BA:
cmp dword ptr [ebp+20], 0
jne .L_01C8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4112]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .L_01CA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_01CA:
.L_01C9:
.L_01C8:
.L_01C7:
.L_0186:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADFLOATNUMBER, .-HREADFLOATNUMBER
.cfi_endproc
.balign 16
READNUMBERCHARS:
.type READNUMBERCHARS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 28
push ebx
push esi
push edi
.L_01CB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 9
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_01CD:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_01D1
.L_01D3:
call LEXEATCHAR
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
not ebx
and eax, ebx
je .L_01D5
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
shld ecx, eax, 3
shl eax, 3
mov ebx, dword ptr [ebp+24]
mov edi, dword ptr [ebx]
mov esi, dword ptr [ebx+4]
shld esi, edi, 1
shl edi, 1
add eax, edi
adc ecx, esi
mov edi, dword ptr [ebp-16]
add edi, 4294967248
mov ebx, edi
mov esi, 0
add eax, ebx
adc ecx, esi
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], ecx
.L_01D5:
.L_01D4:
jmp .L_01D0
.L_01D6:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .L_01D8
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01DA
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+4112]
.L_01DA:
.L_01D9:
mov dword ptr [ebp-24], -1
.L_01D8:
.L_01D7:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call HREADFLOATNUMBER
add esp, 16
jmp .L_01CE
jmp .L_01D0
.L_01DB:
jmp .L_01CE
jmp .L_01D0
.L_01D1:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .L_01DB
mov ecx, dword ptr [ebp-20]
jmp dword ptr [.L_01DC+ecx*4-184]
.L_01DC:
.int .L_01D6
.int .L_01DB
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01D3
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01D6
.int .L_01D6
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01D6
.int .L_01D6
.L_01D0:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .L_01DE
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01E0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4112]
mov dword ptr [ebp-20], ecx
jmp .L_01E2
.L_01E4:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E6
ja .L_04A7
cmp dword ptr [ecx], 32767
jbe .L_01E6
.L_04A7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.L_01E6:
.L_01E5:
jmp .L_01E1
.L_01E7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .L_01E1
.L_01E8:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01EA
ja .L_04A8
cmp dword ptr [ecx], 2147483647
jbe .L_01EA
.L_04A8:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01EC
ja .L_04A9
cmp dword ptr [ecx], 4294967295
jbe .L_01EC
.L_04A9:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01EB
.L_01EC:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.L_01EB:
.L_01EA:
.L_01E9:
jmp .L_01E1
.L_01ED:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01E1
.L_01EE:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .L_01F0
ja .L_04AA
cmp dword ptr [ecx], 4294967295
jbe .L_01F0
.L_04AA:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.L_01F0:
.L_01EF:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .L_01E1
.L_01F1:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F3
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .L_04AB
jb .L_04AC
cmp dword ptr [ebp-12], 2576980377
ja .L_04AB
.L_04AC:
xor eax, eax
.L_04AB:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .L_04AE
cmp esi, 0
je .L_04AD
.L_04AE:
xor ebx, ebx
.L_04AD:
or eax, ebx
je .L_01F5
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.L_01F5:
.L_01F4:
.L_01F3:
.L_01F2:
jmp .L_01E1
.L_01F6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F8
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_01F8:
.L_01F7:
jmp .L_01E1
.L_01E2:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .L_01E1
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01F9+eax*4-20]
.L_01F9:
.int .L_01E4
.int .L_01E7
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01E8
.int .L_01ED
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01E1
.int .L_01EE
.int .L_01F1
.int .L_01F6
.L_01E1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4112], 64
jne .L_01FB
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01FD
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .L_01FF
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_01FF:
.L_01FE:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01E0:
.L_01DF:
.L_01DE:
.L_01DD:
.L_01CF:
jmp .L_01CD
.L_01CE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4112], 0
jne .L_0201
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
.L_0201:
.L_0200:
.L_01CC:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size READNUMBERCHARS, .-READNUMBERCHARS
.cfi_endproc
.balign 16
HREADNUMBER:
.type HREADNUMBER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0202:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 5
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 0
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
jmp .L_0205
.L_0207:
sub esp, 12
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call READNUMBERCHARS
add esp, 32
jmp .L_0204
.L_0208:
call LEXEATCHAR
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call HREADFLOATNUMBER
add esp, 16
jmp .L_0204
.L_0209:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
lea eax, [ebp-20]
push eax
call HREADNONDECNUMBER
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .L_0204
.L_0205:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .L_0204
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_020A+eax*4-152]
.L_020A:
.int .L_0209
.int .L_0204
.int .L_0204
.int .L_0204
.int .L_0204
.int .L_0204
.int .L_0204
.int .L_0204
.int .L_0208
.int .L_0204
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.int .L_0207
.L_0204:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .L_020D
.L_020E:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1048]
mov dword ptr [edx+8], eax
jmp .L_020B
.L_020D:
cmp dword ptr [ebp-28], 6
jne .L_020F
.L_0210:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1052]
mov dword ptr [eax+8], edx
jmp .L_020B
.L_020F:
cmp dword ptr [ebp-28], 11
jne .L_0211
.L_0212:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1056]
mov dword ptr [edx+8], eax
jmp .L_020B
.L_0211:
cmp dword ptr [ebp-28], 12
jne .L_0213
.L_0214:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1060]
mov dword ptr [eax+8], edx
jmp .L_020B
.L_0213:
cmp dword ptr [ebp-28], 13
jne .L_0215
.L_0216:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1064]
mov dword ptr [edx+8], eax
jmp .L_020B
.L_0215:
cmp dword ptr [ebp-28], 14
jne .L_0217
.L_0218:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1068]
mov dword ptr [eax+8], edx
.L_0217:
.L_020B:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .L_0219
mov dword ptr [ebp-24], 24
jmp .L_04AF
.L_0219:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.L_04AF:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [SYMB_DTYPETB+edx], 1
je .L_021C
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .L_021E
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0220
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .L_0224
.L_0225:
cmp dword ptr [ebp-28], 117
jne .L_0223
.L_0224:
call LEXEATCHAR
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call TYPETOUNSIGNED
add esp, 16
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.L_0223:
.L_0221:
.L_0220:
.L_021F:
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
jmp .L_0227
.L_0229:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .L_022B
call LEXEATCHAR
call LEXCURRENTCHAR
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 76
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 108
sete dl
shr edx, 1
sbb edx, edx
or eax, edx
je .L_022D
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
je .L_022E
mov dword ptr [ebp-36], 14
jmp .L_04B0
.L_022E:
mov dword ptr [ebp-36], 13
.L_04B0:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .L_022C
.L_022D:
cmp dword ptr [ebp-12], 0
jb .L_0231
ja .L_04B5
cmp dword ptr [ebp-16], 4294967295
jbe .L_0231
.L_04B5:
cmp dword ptr [ebp-8], 0
jne .L_0233
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0235
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0235:
.L_0234:
.L_0233:
.L_0232:
.L_0231:
.L_0230:
cmp dword ptr [ebp-4], 0
je .L_0236
mov dword ptr [ebp-36], 12
jmp .L_04B1
.L_0236:
mov dword ptr [ebp-36], 11
.L_04B1:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.L_022C:
.L_022B:
.L_022A:
jmp .L_0226
.L_0238:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_023A
cmp dword ptr [ebp-4], 0
jne .L_023C
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.L_023C:
.L_023B:
.L_023A:
.L_0239:
jmp .L_0226
.L_023D:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_023F
cmp dword ptr [ebp-4], 0
jne .L_0241
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call LEXEATCHAR
.L_0241:
.L_0240:
.L_023F:
.L_023E:
jmp .L_0226
.L_0242:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [ENV+1044]
and edx, 480
je .L_0243
mov dword ptr [ebp-36], 24
jmp .L_04B2
.L_0243:
mov edx, dword ptr [ENV+1044]
and edx, 31
mov dword ptr [ebp-36], edx
.L_04B2:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .L_0247
.L_0248:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B6
jb .L_04B7
cmp dword ptr [ebp-16], 65535
ja .L_04B6
.L_04B7:
xor eax, eax
.L_04B6:
mov dword ptr [ebp-32], eax
jmp .L_0245
.L_0247:
cmp dword ptr [ebp-40], 4
jne .L_0249
.L_024A:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B8
jb .L_04B9
cmp dword ptr [ebp-16], 4294967295
ja .L_04B8
.L_04B9:
xor eax, eax
.L_04B8:
mov dword ptr [ebp-32], eax
.L_0249:
.L_0245:
cmp dword ptr [ebp-32], 0
je .L_024C
cmp dword ptr [ebp-8], 0
jne .L_024E
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0250
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0250:
.L_024F:
.L_024E:
.L_024D:
.L_024C:
.L_024B:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1044]
mov dword ptr [eax+8], edx
call LEXEATCHAR
jmp .L_0226
.L_0251:
cmp dword ptr [ebp-12], 0
jb .L_0253
ja .L_04BA
cmp dword ptr [ebp-16], 4294967295
jbe .L_0253
.L_04BA:
cmp dword ptr [ebp-8], 0
jne .L_0255
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .L_0257
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0257:
.L_0256:
.L_0255:
.L_0254:
.L_0253:
.L_0252:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call LEXEATCHAR
jmp .L_0226
.L_0258:
cmp dword ptr [ebp-4], 0
jne .L_025A
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.L_025A:
.L_0259:
jmp .L_0226
.L_025B:
cmp dword ptr [ebp-4], 0
jne .L_025D
call LEXGETLOOKAHEADCHAR
cmp eax, 35
je .L_025F
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call LEXEATCHAR
.L_025F:
.L_025E:
.L_025D:
.L_025C:
jmp .L_0226
.L_0227:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .L_0226
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_0260+eax*4-132]
.L_0260:
.int .L_0258
.int .L_0226
.int .L_025B
.int .L_0226
.int .L_0242
.int .L_0251
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_023D
.int .L_0226
.int .L_0238
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0229
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_023D
.int .L_0226
.int .L_0238
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0229
.L_0226:
.L_021E:
.L_021D:
.L_021C:
.L_021B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.L_0203:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADNUMBER, .-HREADNUMBER
.cfi_endproc
.balign 16
HREADSTRING:
.type HREADSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0261:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_0264
call LEXCURRENTCHAR
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0264:
.L_0263:
call LEXEATCHAR
.L_0265:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_0269
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_026B
cmp dword ptr [ebp-16], 0
jne .L_026D
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_026D:
.L_026C:
.L_026B:
.L_026A:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_026F
jmp .L_0266
.L_026F:
jmp .L_0268
.L_0269:
cmp dword ptr [ebp-20], 27
jne .L_0270
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0272
cmp dword ptr [ebp-16], 0
jne .L_0274
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0274:
.L_0273:
.L_0272:
.L_0271:
jmp .L_0268
.L_0270:
cmp dword ptr [ebp-20], 92
jne .L_0275
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0277
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_0279
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0279:
.L_0278:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_0277:
.L_0276:
.L_0275:
.L_0268:
cmp dword ptr [ebp-20], 0
je .L_027C
.L_027D:
cmp dword ptr [ebp-20], 13
je .L_027C
.L_027E:
cmp dword ptr [ebp-20], 10
jne .L_027B
.L_027C:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_0280
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.L_0280:
.L_027F:
jmp .L_0266
.L_027B:
.L_027A:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_0282
cmp dword ptr [ebp-4], 1024
jne .L_0284
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_0286
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.L_0286:
.L_0285:
mov dword ptr [ebp-16], -1
jmp .L_0283
.L_0284:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0283:
.L_0282:
.L_0281:
.L_0267:
jmp .L_0265
.L_0266:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4112], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4120], eax
.L_0262:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADSTRING, .-HREADSTRING
.cfi_endproc
.balign 16
HREADWSTR:
.type HREADWSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0287:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_028A
call LEXCURRENTCHAR
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_028A:
.L_0289:
call LEXEATCHAR
.L_028B:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_028F
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_0291
cmp dword ptr [ebp-16], 0
jne .L_0293
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 34
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_0293:
.L_0292:
.L_0291:
.L_0290:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0295
jmp .L_028C
.L_0295:
jmp .L_028E
.L_028F:
cmp dword ptr [ebp-20], 27
jne .L_0296
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0298
cmp dword ptr [ebp-16], 0
jne .L_029A
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_029A:
.L_0299:
.L_0298:
.L_0297:
jmp .L_028E
.L_0296:
cmp dword ptr [ebp-20], 92
jne .L_029B
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_029D
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_029F
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 92
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_029F:
.L_029E:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_029D:
.L_029C:
.L_029B:
.L_028E:
cmp dword ptr [ebp-20], 0
je .L_02A2
.L_02A3:
cmp dword ptr [ebp-20], 13
je .L_02A2
.L_02A4:
cmp dword ptr [ebp-20], 10
jne .L_02A1
.L_02A2:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_02A6
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.L_02A6:
.L_02A5:
jmp .L_028C
.L_02A1:
.L_02A0:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_02A8
cmp dword ptr [ebp-4], 1024
jne .L_02AA
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_02AC
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.L_02AC:
.L_02AB:
mov dword ptr [ebp-16], -1
jmp .L_02A9
.L_02AA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_02A9:
.L_02A8:
.L_02A7:
.L_028D:
jmp .L_028B
.L_028C:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4112], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4120], ebx
.L_0288:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADWSTR, .-HREADWSTR
.cfi_endproc
.balign 16
HCHECKPERIODS:
.type HCHECKPERIODS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02AD:
cmp dword ptr [ebp+16], 0
je .L_02B0
mov dword ptr [ebp-4], 0
call LEXCURRENTCHAR
cmp eax, 46
jne .L_02B2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .L_02B4
mov dword ptr [ebp-4], -1
.L_02B5:
cmp dword ptr [ebp+16], 0
je .L_02B6
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_02B7:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_02BB
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_02BD
jmp .L_02AE
.L_02BD:
.L_02BC:
.L_02BB:
.L_02BA:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_02B9:
cmp dword ptr [ebp-8], 0
jne .L_02B7
.L_02B8:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .L_02B5
.L_02B6:
.L_02B4:
.L_02B3:
.L_02B2:
.L_02B1:
jmp .L_02AF
.L_02B0:
call LEXCURRENTCHAR
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_02AF:
cmp dword ptr [ebp-4], 0
je .L_02BF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
mov dword ptr [eax+4120], ecx
sub esp, 12
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+4112]
push ecx
call HREADIDENTIFIER
add esp, 32
sub esp, 4
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call SYMBLOOKUP
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], eax
.L_02BF:
.L_02BE:
.L_02AE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKPERIODS, .-HCHECKPERIODS
.cfi_endproc
.balign 16
READID:
.type READID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02C0:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16580]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4120], 0
sub esp, 12
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call HREADIDENTIFIER
add esp, 32
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .L_02C3
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [LEX+840140]
push dword ptr [eax+16584]
call SYMBLOOKUPAT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
jne .L_02C5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .L_02C4
.L_02C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4116]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.L_02C4:
mov dword ptr [ebp-4], -1
jmp .L_02C1
.L_02C3:
.L_02C2:
mov eax, dword ptr [ebp+12]
and eax, 32
je .L_02C7
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .L_02C1
.L_02C7:
.L_02C6:
sub esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call SYMBLOOKUP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_02C9
mov dword ptr [ebp-4], -1
jmp .L_02C1
.L_02C9:
.L_02C8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
je .L_02CB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .L_02CD
sub esp, 8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
push dword ptr [ebx]
call PPDEFINELOAD
add esp, 16
test eax, eax
je .L_02CF
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov dword ptr [ebp-4], 0
jmp .L_02C1
.L_02CF:
.L_02CE:
.L_02CD:
.L_02CC:
.L_02CB:
.L_02CA:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_02D1
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_02D3
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4116]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPERIODS
add esp, 16
.L_02D3:
.L_02D2:
.L_02D1:
.L_02D0:
mov dword ptr [ebp-4], -1
.L_02C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size READID, .-READID
.cfi_endproc
.balign 16
HMULTILINECOMMENT:
.type HMULTILINECOMMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_035E:
call LEXEATCHAR
mov dword ptr [Lt_04BE], 0
.L_0360:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
jmp .L_0364
.L_0366:
sub esp, 12
push 0
push 1
push 0
push 0
push 132
call ERRREPORTEX
add esp, 32
jmp .L_035F
jmp .L_0363
.L_0367:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 10
jne .L_0369
call LEXEATCHAR
.L_0369:
.L_0368:
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_036B
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16568]
.L_036B:
.L_036A:
jmp .L_0363
.L_036C:
call LEXEATCHAR
mov eax, dword ptr [LEX+840140]
cmp dword ptr [eax+16592], 0
jne .L_036E
mov eax, dword ptr [LEX+840140]
inc dword ptr [eax+16568]
.L_036E:
.L_036D:
jmp .L_0363
.L_036F:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 39
jne .L_0371
call LEXEATCHAR
inc dword ptr [Lt_04BE]
.L_0371:
.L_0370:
jmp .L_0363
.L_0372:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 47
jne .L_0374
call LEXEATCHAR
cmp dword ptr [Lt_04BE], 0
jne .L_0376
jmp .L_0361
.L_0376:
.L_0375:
dec dword ptr [Lt_04BE]
.L_0374:
.L_0373:
jmp .L_0363
.L_0377:
call LEXEATCHAR
jmp .L_0363
.L_0364:
cmp dword ptr [ebp-4], 47
ja .L_0377
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0378+eax*4]
.L_0378:
.int .L_0366
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_036C
.int .L_0377
.int .L_0377
.int .L_0367
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0372
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_0377
.int .L_036F
.L_0363:
.L_0362:
jmp .L_0360
.L_0361:
.L_035F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMULTILINECOMMENT, .-HMULTILINECOMMENT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04BE,4

.section .text
.balign 16
HMOVEKDOWN:
.type HMOVEKDOWN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0391:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], -1
mov ebx, dword ptr [LEX+840140]
dec dword ptr [ebx+16544]
mov ebx, dword ptr [LEX+840140]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [LEX+840140]
mov ecx, dword ptr [eax+4132]
mov dword ptr [ebx+16548], ecx
.L_0392:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMOVEKDOWN, .-HMOVEKDOWN
.cfi_endproc
.balign 16
LEXGETSTRLITTEXT:
.type LEXGETSTRLITTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0393:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .L_0396
.L_0397:
mov dword ptr [ebp-28], 0
jmp .L_0395
.L_0396:
cmp dword ptr [ebp+8], 263
jne .L_0398
.L_0399:
sub esp, 12
push 0
push 2
push offset Lt_039A
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
jmp .L_0395
.L_0398:
cmp dword ptr [ebp+8], 264
jne .L_039B
.L_039C:
sub esp, 12
push 0
push 2
push offset Lt_039D
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], 0
.L_039B:
.L_0395:
sub esp, 12
push 0
push 2
push offset Lt_039E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-32], 0
call LEXGETTEXT
mov dword ptr [ebp-36], eax
.L_039F:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .L_03A4
.L_03A5:
jmp .L_03A0
jmp .L_03A2
.L_03A4:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .L_03A6
.L_03A7:
cmp dword ptr [ebp-32], 0
je .L_03A9
sub esp, 12
push 0
push 2
push offset Lt_039E
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_03A8
.L_03A9:
sub esp, 12
push 0
push 3
push offset Lt_03AA
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_03A8:
mov dword ptr [ebp-32], 0
jmp .L_03A2
.L_03A6:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .L_03AB
.L_03AD:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
sub esp, 12
push 0
push 2
push offset Lt_03AC
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .L_03A2
.L_03AB:
mov dword ptr [ebp-32], 0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_03AE:
.L_03A2:
inc dword ptr [ebp-36]
.L_03A1:
jmp .L_039F
.L_03A0:
sub esp, 12
push 0
push 2
push offset Lt_039E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
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
.L_0394:
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
.size LEXGETSTRLITTEXT, .-LEXGETSTRLITTEXT
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl LEX
.balign 4
	.lcomm	LEX,840148
.balign 4
	.lcomm	PPONLY_LN,12

.section .rodata
.balign 4
Lt_0075:	.ascii	"src/compiler/lex.bas\0"
.balign 4
Lt_00AE:	.ascii	" [Macro Expansion: \0"
.balign 4
Lt_00C9:	.ascii	" ] \0"
.balign 4
Lt_039A:	.ascii	"!\0"
.balign 4
Lt_039D:	.ascii	"$\0"
.balign 4
Lt_039E:	.ascii	"\"\0"
.balign 4
Lt_03AA:	.ascii	"\"\"\0"
.balign 4
Lt_03AC:	.ascii	"\\\0"
.balign 4
Lt_03C3:	.ascii	" \0"
.balign 4
Lt_0452:	.ascii	"^\0"
.balign 4
Lt_045D:	.ascii	"in '\0"
.balign 4
Lt_0460:	.ascii	"'\0"

.section .ctors, "aw", @progbits
.int fb_ctor__lex
