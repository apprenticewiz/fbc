	.intel_syntax noprefix

.section .text
.balign 16

.globl _LEXPUSHCTX@0
_LEXPUSHCTX@0:
.L_0067:
add dword ptr [_LEX+422348], 24844
.L_0068:
ret
.balign 16

.globl _LEXPOPCTX@0
_LEXPOPCTX@0:
push ebx
.L_0069:
cmp dword ptr [_ENV+900], 0
jne .L_006C
push 0
mov eax, dword ptr [_LEX+422348]
lea ebx, [eax+24828]
push ebx
call _DZSTRALLOCATE@8
.L_006C:
.L_006B:
cmp dword ptr [_ENV+576], 0
jne .L_006E
push 0
mov ebx, dword ptr [_LEX+422348]
lea eax, [ebx+8408]
push eax
call _DZSTRALLOCATE@8
jmp .L_006D
.L_006E:
push 0
mov eax, dword ptr [_LEX+422348]
lea ebx, [eax+8408]
push ebx
call _DWSTRALLOCATE@8
.L_006D:
mov ebx, dword ptr [_LEX+422348]
cmp dword ptr [ebx+8396], 1
je .L_0070
mov ebx, dword ptr [_LEX+422348]
cmp dword ptr [ebx-20], 0
jle .L_0072
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+24824]
cmp dword ptr [ebx-20], ecx
je .L_0074
mov ecx, dword ptr [_LEX+422348]
push dword ptr [ecx-20]
push dword ptr [_ENV+300]
call _fb_FileSeek@8
test eax, eax
je .L_0075
push 0
push 0
push offset _Lt_0076
push 70
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0075:
.L_0074:
.L_0073:
.L_0072:
.L_0071:
.L_0070:
.L_006F:
add dword ptr [_LEX+422348], -24844
.L_006A:
pop ebx
ret
.balign 16

.globl _LEXINIT@4
_LEXINIT@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0077:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+900]
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
je .L_007A
lea ebx, [_LEX]
mov dword ptr [_LEX+422348], ebx
.L_007A:
.L_0079:
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8352], 0
mov ebx, dword ptr [_LEX+422348]
lea eax, [ebx]
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8356], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+8356]
mov dword ptr [ebx+8360], ecx
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [ecx+8356]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_007E:
mov ebx, dword ptr [ebp-4]
imul ebx, 2088
mov ecx, dword ptr [_LEX+422348]
add ecx, ebx
lea ebx, [ecx+2088]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+2084], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [ebp-8], ecx
.L_007C:
inc dword ptr [ebp-4]
.L_007B:
cmp dword ptr [ebp-4], 2
jle .L_007E
.L_007D:
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8356]
mov dword ptr [ebx+2084], eax
mov dword ptr [ebp-4], 0
.L_0082:
mov eax, dword ptr [ebp-4]
imul eax, 2088
mov ebx, dword ptr [_LEX+422348]
add ebx, eax
mov dword ptr [ebx], -1
.L_0080:
inc dword ptr [ebp-4]
.L_007F:
cmp dword ptr [ebp-4], 3
jle .L_0082
.L_0081:
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8364], 4294967295
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8368], 4294967295
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8372], 4294967295
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8396], eax
cmp dword ptr [ebp+8], 2
jne .L_0084
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax-16468]
mov dword ptr [ebx+8376], ecx
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ecx-16460]
mov dword ptr [ebx+8384], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax-16456]
mov dword ptr [ebx+8388], ecx
jmp .L_0083
.L_0084:
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8376], 1
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8384], 0
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8388], 0
.L_0083:
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8380], -1
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8420], 0
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8400], 0
cmp dword ptr [_ENV+576], 0
jne .L_0086
cmp dword ptr [ebp+8], 2
jne .L_0087
mov ecx, dword ptr [_LEX+422348]
lea ebx, [ecx+8428]
mov dword ptr [ebp-12], ebx
jmp .L_008F
.L_0087:
mov dword ptr [ebp-12], 0
.L_008F:
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+8424], ecx
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8404], 0
push 0
mov ecx, dword ptr [_LEX+422348]
lea ebx, [ecx+8408]
push ebx
call _DZSTRALLOCATE@8
jmp .L_0085
.L_0086:
mov ebx, dword ptr [_LEX+422348]
lea ecx, [ebx+8428]
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8424], ecx
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8404], 0
push 0
mov ecx, dword ptr [_LEX+422348]
lea ebx, [ecx+8408]
push ebx
call _DWSTRALLOCATE@8
.L_0085:
cmp dword ptr [ebp+8], 2
jne .L_008A
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx-28]
mov dword ptr [ecx+24816], eax
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax-24]
mov dword ptr [ecx+24820], ebx
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx-20]
mov dword ptr [ecx+24824], eax
jmp .L_0089
.L_008A:
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24816], 0
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24820], 0
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24824], 0
.L_0089:
mov eax, dword ptr [_ENV+900]
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
je .L_008C
push 0
mov ecx, dword ptr [_LEX+422348]
lea eax, [ecx+24828]
push eax
call _DZSTRALLOCATE@8
mov dword ptr [_LEX+422352], 0
.L_008C:
.L_008B:
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24840], 0
cmp dword ptr [ebp+8], 0
jne .L_008E
call _PPINIT@0
.L_008E:
.L_008D:
.L_0078:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXEND@0
_LEXEND@0:
.L_0094:
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
call _PPEND@0
.L_0095:
ret
.balign 16

.globl _LEXEATCHAR@0
_LEXEATCHAR@0:
push ebx
.L_00CB:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8368], 4294967295
jne .L_00CE
call _HSKIPCHAR@0
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+8364], 4294967295
jmp .L_00CD
.L_00CE:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8372], 4294967295
jne .L_00CF
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+8368]
mov dword ptr [ebx+8364], ecx
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8368], 4294967295
jmp .L_00CD
.L_00CF:
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ecx+8368]
mov dword ptr [ebx+8364], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+8372]
mov dword ptr [ebx+8368], ecx
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8372], 4294967295
.L_00CD:
.L_00CC:
pop ebx
ret
.balign 16

.globl _LEXEATWHITESPACE@0
_LEXEATWHITESPACE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8364], 4294967295
jne .L_00D3
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8364], eax
.L_00D3:
.L_00D2:
.L_00D4:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8364], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8364], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00D5
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+24840], -1
call _LEXEATCHAR@0
call _HREADCHAR@0
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+8364], eax
mov dword ptr [ebp-4], -1
jmp .L_00D4
.L_00D5:
.L_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXCURRENTCHAR@0
_LEXCURRENTCHAR@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E3:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8364], 4294967295
jne .L_00E6
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8364], eax
.L_00E6:
.L_00E5:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8364]
mov dword ptr [ebp-4], ebx
.L_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXGETLOOKAHEADCHAR@0
_LEXGETLOOKAHEADCHAR@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E7:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8368], 4294967295
jne .L_00EA
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8368], eax
.L_00EA:
.L_00E9:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8368]
mov dword ptr [ebp-4], ebx
.L_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXGETLOOKAHEADCHAR2@0
_LEXGETLOOKAHEADCHAR2@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00EB:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8372], 4294967295
jne .L_00EE
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422348]
mov dword ptr [ebx+8372], eax
.L_00EE:
.L_00ED:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ebp-4], ebx
.L_00EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXNEXTTOKEN@8
_LEXNEXTTOKEN@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_02D5:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24840]
mov dword ptr [ebx+2080], ecx
mov ecx, dword ptr [_LEX+422348]
mov dword ptr [ecx+24840], 0
.L_02D7:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2064], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], 0
mov dword ptr [ebp-8], 0
.L_02D8:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .L_02DC
.L_02DE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
jmp .L_02D6
jmp .L_02DB
.L_02DF:
cmp dword ptr [ebp-8], 0
je .L_02E1
call _LEXEATCHAR@0
jmp .L_02DA
.L_02E1:
.L_02E0:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_02E3
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-20], eax
jmp .L_02E5
.L_02E7:
jmp .L_02D9
jmp .L_02E4
.L_02E8:
call _LEXGETLOOKAHEADCHAR2@0
cmp eax, 35
jne .L_02EA
jmp .L_02D9
.L_02EA:
.L_02E9:
jmp .L_02E4
.L_02E5:
mov eax, dword ptr [ebp-20]
add eax, 4294967261
cmp eax, 87
ja .L_02E4
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02EB+eax*4-140]
_.L_02EB:
.int .L_02E8
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E4
.int .L_02E7
.int .L_02E4
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.int .L_02E7
.L_02E4:
call _LEXEATCHAR@0
mov dword ptr [ebp-8], -1
jmp .L_02DA
jmp .L_02E2
.L_02E3:
jmp .L_02D9
.L_02E2:
jmp .L_02DB
.L_02EC:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 13
jne .L_02EE
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_02F0
call _LEXEATCHAR@0
.L_02F0:
.L_02EF:
.L_02EE:
.L_02ED:
cmp dword ptr [ebp-8], 0
jne .L_02F2
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .L_02D6
jmp .L_02F1
.L_02F2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jne .L_02F4
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8376]
.L_02F4:
.L_02F3:
mov dword ptr [ebp-8], 0
jmp .L_02DA
.L_02F1:
jmp .L_02DB
.L_02F5:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
cmp dword ptr [ebp-8], 0
jne .L_02F7
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_02F9
jmp .L_02D9
.L_02F9:
.L_02F8:
.L_02F7:
.L_02F6:
call _LEXEATCHAR@0
jmp .L_02DB
.L_02FA:
cmp dword ptr [ebp-8], 0
jne .L_02FC
jmp .L_02D9
.L_02FC:
.L_02FB:
call _LEXEATCHAR@0
jmp .L_02DB
.L_02DC:
cmp dword ptr [ebp-16], 95
ja .L_02FA
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_02FD+eax*4]
_.L_02FD:
.int .L_02DE
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02F5
.int .L_02EC
.int .L_02FA
.int .L_02FA
.int .L_02EC
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02F5
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02FA
.int .L_02DF
.L_02DB:
.L_02DA:
jmp .L_02D8
.L_02D9:
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [_LEX+422348]
mov ebx, dword ptr [_LEX+422348]
lea esi, [ebx+8428]
mov ebx, dword ptr [ecx+8424]
sub ebx, esi
add ebx, dword ptr [eax+24816]
dec ebx
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24820], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .L_02FF
.L_0301:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .L_0303
call _LEXGETLOOKAHEADCHAR@0
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
je .L_0305
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_02FE
.L_0305:
.L_0304:
.L_0303:
.L_0302:
jmp .L_0306
jmp .L_02FE
.L_0307:
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .L_030B
.L_030C:
cmp dword ptr [ebp-20], 104
je .L_030B
.L_030D:
cmp dword ptr [ebp-20], 79
je .L_030B
.L_030E:
cmp dword ptr [ebp-20], 111
je .L_030B
.L_030F:
cmp dword ptr [ebp-20], 66
je .L_030B
.L_0310:
cmp dword ptr [ebp-20], 98
je .L_030B
.L_0311:
cmp dword ptr [ebp-20], 48
jb .L_030A
cmp dword ptr [ebp-20], 55
ja .L_030A
.L_030B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_0308
.L_030A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+2064], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call _LEXEATCHAR@0
.L_0312:
.L_0308:
jmp .L_02FE
.L_0313:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_02FE
.L_0314:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _READID@8
not eax
test eax, eax
je .L_0316
jmp .L_02D7
.L_0316:
.L_0315:
jmp .L_02FE
.L_0317:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [_ENV+1092], 0
je .L_0318
mov dword ptr [ebp-20], 263
jmp .L_0359
.L_0318:
mov dword ptr [ebp-20], 262
.L_0359:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+576], 0
jne .L_031B
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .L_031A
.L_031B:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call _HREADWSTR@12
.L_031A:
jmp .L_02FE
.L_031C:
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 34
je .L_031E
jmp .L_0306
.L_031E:
.L_031D:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .L_031F
mov dword ptr [ebp-20], 263
jmp .L_035A
.L_031F:
mov dword ptr [ebp-20], 264
.L_035A:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+576], 0
jne .L_0322
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_0324
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_0323
.L_0324:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.L_0323:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .L_0321
.L_0322:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_0326
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_0325
.L_0326:
mov ax, word ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov word ptr [esi+12], ax
mov eax, dword ptr [ebp+8]
lea esi, [eax+14]
mov dword ptr [ebp-24], esi
.L_0325:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADWSTR@12
.L_0321:
jmp .L_02FE
.L_0327:
.L_0306:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [esi], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2076], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 1
mov bl, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .L_0329
.L_032B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .L_032D
.L_032E:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .L_0331
.L_0332:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call _LEXEATCHAR@0
jmp .L_032F
.L_0331:
cmp dword ptr [ebp-24], 62
jne .L_0333
.L_0334:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call _LEXEATCHAR@0
jmp .L_032F
.L_0333:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.L_0335:
.L_032F:
jmp .L_032C
.L_032D:
cmp dword ptr [ebp-4], 62
jne .L_0336
.L_0337:
mov eax, dword ptr [_PARSER+152]
and eax, 512
test eax, eax
jne .L_0338
call _LEXCURRENTCHAR@0
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_035B
.L_0338:
mov dword ptr [ebp-24], 0
.L_035B:
cmp dword ptr [ebp-24], 0
je .L_033B
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call _LEXEATCHAR@0
jmp .L_033A
.L_033B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.L_033A:
jmp .L_032C
.L_0336:
cmp dword ptr [ebp-4], 61
jne .L_033C
.L_033D:
call _LEXCURRENTCHAR@0
cmp eax, 62
jne .L_033F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call _LEXEATCHAR@0
jmp .L_033E
.L_033F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.L_033E:
.L_033C:
.L_032C:
jmp .L_0328
.L_0340:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .L_0328
.L_0341:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
call _LEXCURRENTCHAR@0
cmp eax, 62
jne .L_0343
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 400
call _LEXEATCHAR@0
.L_0343:
.L_0342:
jmp .L_0328
.L_0344:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .L_0346
call _LEXCURRENTCHAR@0
cmp eax, 39
jne .L_0348
call _HMULTILINECOMMENT@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
jmp .L_02D7
.L_0348:
.L_0347:
.L_0346:
.L_0345:
jmp .L_0328
.L_0349:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .L_0328
.L_034A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .L_0328
.L_034B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .L_0328
.L_034C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.L_034D:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-24], eax
jmp .L_0351
.L_0353:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
jmp .L_0350
.L_0354:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 0
jmp .L_034E
jmp .L_0350
.L_0351:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .L_0354
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0355+eax*4-36]
_.L_0355:
.int .L_0353
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0354
.int .L_0353
.L_0350:
.L_034F:
jmp .L_034D
.L_034E:
jmp .L_0328
.L_0356:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .L_0328
.L_0329:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .L_0356
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0357+eax*4-36]
_.L_0357:
.int .L_034C
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_034C
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0349
.int .L_034B
.int .L_034B
.int .L_0340
.int .L_0340
.int .L_034B
.int .L_0341
.int .L_034B
.int .L_0344
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_034A
.int .L_034B
.int .L_032B
.int .L_032B
.int .L_032B
.int .L_0356
.int .L_0340
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_034B
.int .L_0340
.int .L_034B
.int .L_0340
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_0356
.int .L_034B
.int .L_0356
.int .L_034B
.L_0328:
jmp .L_02FE
.L_02FF:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .L_0327
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0358+eax*4-132]
_.L_0358:
.int .L_031C
.int .L_0317
.int .L_0327
.int .L_031C
.int .L_0327
.int .L_0307
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0301
.int .L_0327
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
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0327
.int .L_0314
.int .L_0327
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.int .L_0314
.L_02FE:
.L_02D6:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTOKEN@4
_LEXGETTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_037A:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .L_037D
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422348]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.L_037D:
.L_037C:
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_037B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETCLASS@4
_LEXGETCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_037E:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .L_0381
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422348]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.L_0381:
.L_0380:
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_037F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETLOOKAHEAD@8
_LEXGETLOOKAHEAD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0382:
cmp dword ptr [ebp+8], 3
jle .L_0385
jmp .L_0383
.L_0385:
.L_0384:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .L_0387
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.L_0387:
.L_0386:
mov ecx, dword ptr [_LEX+422348]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .L_0389
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422348]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.L_0389:
.L_0388:
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.L_0383:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETLOOKAHEADCLASS@8
_LEXGETLOOKAHEADCLASS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_038A:
cmp dword ptr [ebp+8], 3
jle .L_038D
jmp .L_038B
.L_038D:
.L_038C:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .L_038F
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.L_038F:
.L_038E:
mov ecx, dword ptr [_LEX+422348]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .L_0391
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422348]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.L_0391:
.L_0390:
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.L_038B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXPPONLYEMITTOKEN@0
_LEXPPONLYEMITTOKEN@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03B1:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .L_03B6
.L_03B7:
cmp dword ptr [ebp-4], 260
jne .L_03B5
.L_03B6:
jmp .L_03B2
jmp .L_03B3
.L_03B5:
cmp dword ptr [ebp-4], 256
je .L_03B9
.L_03BA:
cmp dword ptr [ebp-4], 257
jne .L_03B8
.L_03B9:
push -1
push offset _PPONLY_LN
call _fb_StrLen@8
test eax, eax
jle .L_03BC
mov eax, dword ptr [_ENV+860]
mov dword ptr [ebp-8], eax
push 1
push offset _PPONLY_LN
push dword ptr [ebp-8]
call _fb_PrintString@12
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
jmp .L_03BB
.L_03BC:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .L_03BE
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8380], 257
jne .L_03C0
mov eax, dword ptr [_ENV+860]
mov dword ptr [ebp-8], eax
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-8]
call _fb_PrintString@12
.L_03C0:
.L_03BF:
.L_03BE:
.L_03BB:
jmp .L_03B2
.L_03B8:
.L_03B3:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2080], 0
je .L_03C3
push 0
push 2
push offset _Lt_03C4
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
.L_03C3:
.L_03C2:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .L_03C8
.L_03C9:
cmp dword ptr [ebp-4], 263
je .L_03C8
.L_03CA:
cmp dword ptr [ebp-4], 264
jne .L_03C7
.L_03C8:
push 0
push -1
push 0
call _LEXGETTOKEN@4
push eax
call _LEXGETSTRLITTEXT@4
push eax
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
jmp .L_03C5
.L_03C7:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.L_03CB:
.L_03C5:
.L_03B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXPPONLYEMITTEXT@4
_LEXPPONLYEMITTEXT@4:
push ebp
mov ebp, esp
sub esp, 12
.L_03CD:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.L_03CE:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXSKIPTOKEN@4
_LEXSKIPTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03D0:
push dword ptr [ebp+8]
call _LEXCHECKTOKEN@4
and dword ptr [ebp+8], -14337
cmp dword ptr [_ENV+860], 0
jle .L_03D3
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8384], 0
jne .L_03D5
call _LEXPPONLYEMITTOKEN@0
.L_03D5:
.L_03D4:
.L_03D3:
.L_03D2:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .L_03D8
.L_03D9:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jne .L_03DB
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8376]
.L_03DB:
.L_03DA:
.L_03D8:
.L_03D6:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [_LEX+422348]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+8380], ecx
mov ecx, dword ptr [_LEX+422348]
cmp dword ptr [ecx+8352], 0
jne .L_03DD
push dword ptr [ebp+8]
mov ecx, dword ptr [_LEX+422348]
push dword ptr [ecx+8356]
call _LEXNEXTTOKEN@8
jmp .L_03DC
.L_03DD:
call _HMOVEKDOWN@0
.L_03DC:
call _PPCHECK@0
.L_03D1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXEATTOKEN@8
_LEXEATTOKEN@8:
push ebp
mov ebp, esp
push ebx
.L_03DE:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .L_03E1
push 0
push 1025
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .L_03E0
.L_03E1:
push 0
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_03E0:
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
.L_03DF:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTEXT@0
_LEXGETTEXT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_03E2:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .L_03E5
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .L_03E4
.L_03E5:
push 0
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 1025
push offset _Lt_03E6
call _fb_StrAssign@20
mov eax, offset _Lt_03E6
mov dword ptr [ebp-4], eax
.L_03E4:
.L_03E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03E6,1025

.section .text
.balign 16

.globl _LEXREADLINE@12
_LEXREADLINE@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03E7:
cmp dword ptr [ebp+16], 0
jne .L_03EA
push 0
push 1
push offset _Lt_0000
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03EA:
.L_03E9:
.L_03EB:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8352], 0
jle .L_03EC
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03F0
.L_03F1:
cmp dword ptr [ebp-4], 257
je .L_03F0
.L_03F2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03EF
.L_03F0:
jmp .L_03E8
jmp .L_03ED
.L_03EF:
cmp dword ptr [ebp+16], 0
jne .L_03F5
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03F5:
.L_03F4:
.L_03F3:
.L_03ED:
call _HMOVEKDOWN@0
jmp .L_03EB
.L_03EC:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03FA
.L_03FB:
cmp dword ptr [ebp-4], 257
je .L_03FA
.L_03FC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03F9
.L_03FA:
jmp .L_03E8
jmp .L_03F7
.L_03F9:
cmp dword ptr [ebp+16], 0
jne .L_03FF
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03FF:
.L_03FE:
.L_03FD:
.L_03F7:
.L_0401:
call _LEXCURRENTCHAR@0
mov dword ptr [_Lt_0414], eax
mov eax, dword ptr [_Lt_0414]
mov dword ptr [ebp-4], eax
jmp .L_0405
.L_0407:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 256
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .L_03E8
jmp .L_0404
.L_0408:
call _LEXEATCHAR@0
cmp dword ptr [_Lt_0414], 13
jne .L_040A
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_040C
call _LEXEATCHAR@0
.L_040C:
.L_040B:
.L_040A:
.L_0409:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 257
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .L_03E8
jmp .L_0404
.L_040D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [_Lt_0414], eax
jne .L_040F
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+4], 6
jmp .L_03E8
.L_040F:
.L_040E:
jmp .L_0404
.L_0405:
cmp dword ptr [ebp-4], 13
ja .L_040D
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_0410+ebx*4]
_.L_0410:
.int .L_0407
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_040D
.int .L_0408
.int .L_040D
.int .L_040D
.int .L_0408
.L_0404:
call _LEXEATCHAR@0
cmp dword ptr [ebp+16], 0
jne .L_0412
push 0
push -1
push -1
push dword ptr [_Lt_0414]
push 1
call _fb_CHR
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_0412:
.L_0411:
.L_0403:
jmp .L_0401
.L_0402:
.L_03E8:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0414,4

.section .text
.balign 16

.globl _LEXSKIPLINE@0
_LEXSKIPLINE@0:
.L_0415:
push -1
push 0
push 4294967295
call _LEXREADLINE@12
.L_0416:
ret
.balign 16

.globl _LEXPEEKCURRENTLINE@8
_LEXPEEKCURRENTLINE@8:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0417:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
cmp dword ptr [_ENV+576], 0
je .L_041A
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0418
.L_041A:
.L_0419:
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [_LEX+422348]
cmp dword ptr [ebx+8396], 2
jne .L_041C
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx-24]
add eax, -512
mov dword ptr [ebp-28], eax
jmp .L_041B
.L_041C:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+24820]
add ebx, -512
mov dword ptr [ebp-28], ebx
.L_041B:
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .L_041E
mov ebx, dword ptr [ebp-28]
add dword ptr [ebp-36], ebx
mov dword ptr [ebp-28], 0
.L_041E:
.L_041D:
push 1025
push offset _Lt_0455
mov ebx, dword ptr [ebp-28]
inc ebx
push ebx
push dword ptr [_ENV+300]
call _fb_FileGetStr@16
test eax, eax
je .L_041F
push 0
push 0
push offset _Lt_0076
push 2474
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_041F:
push dword ptr [ebp-32]
push dword ptr [_ENV+300]
call _fb_FileSeek@8
test eax, eax
je .L_0420
push 0
push 0
push offset _Lt_0076
push 2475
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0420:
mov eax, offset _Lt_0455
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .L_0422
dec dword ptr [ebp-44]
.L_0423:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .L_0428
.L_0429:
cmp dword ptr [ebp-48], 10
jne .L_0427
.L_0428:
jmp .L_0424
.L_0427:
.L_0426:
cmp dword ptr [ebp-36], 0
jg .L_042B
jmp .L_0424
.L_042B:
.L_042A:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.L_0425:
jmp .L_0423
.L_0424:
inc dword ptr [ebp-44]
.L_0422:
.L_0421:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_042C:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_0431
.L_0432:
cmp dword ptr [ebp-48], 13
je .L_0431
.L_0433:
cmp dword ptr [ebp-48], 10
jne .L_0430
.L_0431:
jmp .L_042D
.L_0430:
.L_042F:
push 0
push -1
push dword ptr [ebp-48]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-40], 0
jle .L_0435
push 0
push -1
cmp dword ptr [ebp-48], 9
jne .L_0436
mov dword ptr [ebp-52], 9
jmp .L_0454
.L_0436:
mov dword ptr [ebp-52], 32
.L_0454:
push dword ptr [ebp-52]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
dec dword ptr [ebp-40]
.L_0435:
.L_0434:
inc dword ptr [ebp-44]
.L_042E:
jmp .L_042C
.L_042D:
cmp dword ptr [ebp+12], 0
je .L_0439
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-52], 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-56], eax
jmp .L_043B
.L_043E:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-60], bl
movzx ebx, byte ptr [ebp-60]
cmp ebx, 9
je .L_0442
.L_0443:
movzx ebx, byte ptr [ebp-60]
cmp ebx, 32
jne .L_0441
.L_0442:
jmp .L_043F
.L_0441:
jmp .L_043D
.L_0444:
.L_043F:
.L_043C:
inc dword ptr [ebp-52]
.L_043B:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-52], ebx
jle .L_043E
.L_043D:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen@8
cmp dword ptr [ebp-52], eax
jge .L_0446
push 0
push -1
push -1
mov eax, dword ptr [ebp-52]
inc eax
push eax
lea eax, [ebp-24]
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0445
.L_0446:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0445:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-52], eax
jmp .L_0447
.L_044A:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-56], bl
movzx ebx, byte ptr [ebp-56]
cmp ebx, 9
je .L_044E
.L_044F:
movzx ebx, byte ptr [ebp-56]
cmp ebx, 32
jne .L_044D
.L_044E:
jmp .L_044B
.L_044D:
jmp .L_0449
.L_0450:
.L_044B:
.L_0448:
dec dword ptr [ebp-52]
.L_0447:
cmp dword ptr [ebp-52], 0
jge .L_044A
.L_0449:
cmp dword ptr [ebp-52], 0
jle .L_0452
push 0
push -1
mov ebx, dword ptr [ebp-52]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0452:
.L_0451:
.L_0439:
.L_0438:
push 0
push 2
push offset _Lt_0453
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0418:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0455,1025

.section .text
.balign 16

.globl _LEXCHECKTOKEN@4
_LEXCHECKTOKEN@4:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_0456:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0459
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .L_045B
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .L_045D
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0461
push -1
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_045F
push 0
push -1
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_048A
.L_045F:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_048A:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_045E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
jmp .L_045C
.L_045D:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .L_0466
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
jne .L_0468
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0461
push -1
push -1
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0469
push 0
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_048B
.L_0469:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_048B:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_045E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_0468:
.L_0467:
jmp .L_045C
.L_0466:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .L_046F
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
je .L_0471
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
je .L_0473
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0461
push -1
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_0474
push 0
push -1
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_048C
.L_0474:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_048C:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_045E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_0473:
.L_0472:
jmp .L_0470
.L_0471:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
jne .L_047B
mov ebx, dword ptr [_ENV+200]
and ebx, 256
test ebx, ebx
je .L_047D
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0461
push -1
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_047E
push 0
push -1
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_048D
.L_047E:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_048D:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_045E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_047D:
.L_047C:
jmp .L_047A
.L_047B:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0461
push -1
push -1
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0484
push 0
push -1
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_048E
.L_0484:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_048E:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_045E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_047A:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_0470:
.L_046F:
.L_045C:
.L_045B:
.L_045A:
.L_0459:
.L_0458:
.L_0457:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HMATCHIDORKW@8
_HMATCHIDORKW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_048F:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0494
.L_0495:
cmp dword ptr [ebp-8], 2
je .L_0494
.L_0496:
cmp dword ptr [ebp-8], 1
jne .L_0493
.L_0494:
push 0
push dword ptr [ebp+8]
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0498
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .L_0490
.L_0498:
.L_0497:
.L_0493:
.L_0491:
mov dword ptr [ebp-4], 0
.L_0490:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HMATCH@8
_HMATCH@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0499:
push 0
call _LEXGETTOKEN@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_049C
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .L_049B
.L_049C:
mov dword ptr [ebp-4], 0
.L_049B:
.L_049A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__lex:
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
call _fb_StrAssign@20
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
_HCOLLECTCHARFORDEBUGOUTPUT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0096:
cmp dword ptr [ebp+8], 32
jae .L_0099
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_009B
.L_009D:
jmp .L_0097
jmp .L_009A
.L_009E:
jmp .L_009A
.L_009F:
mov dword ptr [ebp+8], 63
jmp .L_009A
.L_009B:
cmp dword ptr [ebp-4], 13
ja .L_009F
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_00A1+eax*4]
_.L_00A1:
.int .L_009D
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009F
.int .L_009E
.int .L_009D
.int .L_009E
.int .L_009E
.int .L_009D
.L_009A:
jmp .L_0098
.L_0099:
cmp dword ptr [ebp+8], 255
jbe .L_00A2
mov dword ptr [ebp+8], 63
.L_00A2:
.L_0098:
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+422348]
lea ebx, [eax+24828]
push ebx
call _DZSTRCONCATASSIGNC@8
.L_0097:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREADCHAR@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jle .L_00A6
cmp dword ptr [_ENV+576], 0
jne .L_00A8
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8404]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A7
.L_00A8:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8404]
movzx eax, word ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A7:
cmp dword ptr [_ENV+148], 0
je .L_00AA
cmp dword ptr [_ENV+900], 0
jne .L_00AC
cmp dword ptr [_LEX+422352], 0
jne .L_00AE
mov dword ptr [_LEX+422352], -1
push offset _Lt_00AF
mov eax, dword ptr [_LEX+422348]
lea ebx, [eax+24828]
push ebx
call _DZSTRCONCATASSIGN@8
.L_00AE:
.L_00AD:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
jmp .L_00A5
.L_00A6:
mov ebx, dword ptr [_LEX+422348]
cmp dword ptr [ebx+8420], 0
jne .L_00B1
push dword ptr [_ENV+300]
call _fb_FileEof@4
test eax, eax
jne .L_00B3
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, eax
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24816], ebx
mov ebx, dword ptr [_ENV+576]
mov dword ptr [ebp-12], ebx
jmp .L_00B5
.L_00B7:
push 8193
mov ebx, dword ptr [_LEX+422348]
lea eax, [ebx+8428]
push eax
push 0
push dword ptr [_ENV+300]
call _fb_FileGetStr@16
test eax, eax
jne .L_00B9
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, eax
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+24824], ebx
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [_LEX+422348]
mov edx, dword ptr [ebx+24824]
sub edx, dword ptr [eax+24816]
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+8420], edx
mov edx, dword ptr [_LEX+422348]
lea eax, [edx+8428]
mov edx, dword ptr [_LEX+422348]
mov dword ptr [edx+8424], eax
.L_00B9:
.L_00B8:
jmp .L_00B4
.L_00BA:
call _LEXREADUTF8@0
jmp .L_00B4
.L_00BB:
call _LEXREADUTF16LE@0
jmp .L_00B4
.L_00BC:
call _LEXREADUTF16BE@0
jmp .L_00B4
.L_00BD:
call _LEXREADUTF32LE@0
jmp .L_00B4
.L_00BE:
call _LEXREADUTF32BE@0
jmp .L_00B4
.L_00B5:
cmp dword ptr [ebp-12], 5
ja .L_00B4
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00BF+eax*4]
_.L_00BF:
.int .L_00B7
.int .L_00BA
.int .L_00BB
.int .L_00BC
.int .L_00BD
.int .L_00BE
.L_00B4:
.L_00B3:
.L_00B2:
.L_00B1:
.L_00B0:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8420], 0
jle .L_00C1
cmp dword ptr [_ENV+576], 0
jne .L_00C3
mov eax, dword ptr [_LEX+422348]
mov edx, dword ptr [eax+8424]
movzx eax, byte ptr [edx]
mov dword ptr [ebp-8], eax
jmp .L_00C2
.L_00C3:
mov eax, dword ptr [_LEX+422348]
mov edx, dword ptr [eax+8424]
movzx eax, word ptr [edx]
mov dword ptr [ebp-8], eax
.L_00C2:
jmp .L_00C0
.L_00C1:
mov dword ptr [ebp-8], 0
.L_00C0:
cmp dword ptr [_ENV+148], 0
je .L_00C5
cmp dword ptr [_ENV+900], 0
jne .L_00C7
cmp dword ptr [_LEX+422352], 0
je .L_00C9
mov dword ptr [_LEX+422352], 0
push offset _Lt_00CA
mov eax, dword ptr [_LEX+422348]
lea edx, [eax+24828]
push edx
call _DZSTRCONCATASSIGN@8
.L_00C9:
.L_00C8:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
.L_00A5:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSKIPCHAR@0:
.L_00D8:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jle .L_00DB
mov eax, dword ptr [_LEX+422348]
dec dword ptr [eax+8400]
cmp dword ptr [_ENV+576], 0
jne .L_00DD
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8404]
jmp .L_00DC
.L_00DD:
mov eax, dword ptr [_LEX+422348]
add dword ptr [eax+8404], 2
.L_00DC:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jne .L_00DF
mov eax, dword ptr [_LEX+422348]
mov dword ptr [eax+8388], 0
.L_00DF:
.L_00DE:
jmp .L_00DA
.L_00DB:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8364], 0
je .L_00E0
mov eax, dword ptr [_LEX+422348]
dec dword ptr [eax+8420]
cmp dword ptr [_ENV+576], 0
jne .L_00E2
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8424]
jmp .L_00E1
.L_00E2:
mov eax, dword ptr [_LEX+422348]
add dword ptr [eax+8424], 2
.L_00E1:
.L_00E0:
.L_00DA:
.L_00D9:
ret
.balign 16
_HREADIDENTIFIER@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00EF:
call _LEXCURRENTCHAR@0
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call _LEXEATCHAR@0
mov dword ptr [ebp-4], 0
.L_00F1:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00F5
.L_00F7:
jmp .L_00F4
.L_00F8:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .L_00FA
jmp .L_00F2
.L_00FA:
.L_00F9:
jmp .L_00F4
.L_00FB:
jmp .L_00F2
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .L_00FB
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00FC+eax*4-184]
_.L_00FC:
.int .L_00F8
.int .L_00FB
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00FB
.int .L_00F7
.int .L_00FB
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.int .L_00F7
.L_00F4:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
jne .L_00FE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .L_0100
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_0102
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call _ERRREPORTWARN@16
.L_0102:
.L_0101:
mov dword ptr [ebp-4], -1
jmp .L_00FF
.L_0100:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.L_00FF:
.L_00FE:
.L_00FD:
.L_00F3:
jmp .L_00F1
.L_00F2:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_0104
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-8], eax
jmp .L_0106
.L_0108:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_ENV+1044]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call _LEXEATCHAR@0
jmp .L_0105
.L_0109:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call _LEXEATCHAR@0
jmp .L_0105
.L_010A:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call _LEXEATCHAR@0
jmp .L_0105
.L_010B:
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 35
je .L_010D
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call _LEXEATCHAR@0
.L_010D:
.L_010C:
jmp .L_0105
.L_010E:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call _LEXEATCHAR@0
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .L_0105
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_010F+eax*4-132]
_.L_010F:
.int .L_010A
.int .L_0105
.int .L_010B
.int .L_010E
.int .L_0108
.int .L_0109
.L_0105:
.L_0104:
.L_0103:
.L_00F0:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNONDECNUMBER@16:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0110:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0113
.L_0115:
mov dword ptr [ebp-16], 79
jmp .L_0112
.L_0116:
call _LEXEATCHAR@0
jmp .L_0112
.L_0113:
mov eax, dword ptr [ebp-48]
add eax, 4294967248
cmp eax, 7
ja .L_0116
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_0117+eax*4-192]
_.L_0117:
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.L_0112:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0119
.L_011B:
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
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .L_011D
.L_011E:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_011F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_011E
.L_011F:
.L_011D:
.L_011C:
.L_0120:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .L_0126
cmp dword ptr [ebp-16], 102
jbe .L_0125
.L_0126:
cmp dword ptr [ebp-16], 65
jb .L_0127
cmp dword ptr [ebp-16], 70
jbe .L_0125
.L_0127:
cmp dword ptr [ebp-16], 48
jb .L_0124
cmp dword ptr [ebp-16], 57
ja .L_0124
.L_0125:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0129
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
jbe .L_012B
add dword ptr [ebp-16], 4294967289
.L_012B:
.L_012A:
cmp dword ptr [ebp-16], 16
jbe .L_012D
add dword ptr [ebp-16], 4294967264
.L_012D:
.L_012C:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .L_012F
cmp dword ptr [ebp-32], 9
jne .L_0131
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
jmp .L_0130
.L_0131:
cmp dword ptr [ebp-32], 17
jne .L_0132
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .L_0134
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0134:
.L_0133:
mov dword ptr [ebp-40], -1
jmp .L_0130
.L_0132:
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
.L_0130:
jmp .L_012E
.L_012F:
cmp dword ptr [ebp-32], 5
jne .L_0136
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0136:
.L_0135:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_012E:
.L_0129:
.L_0128:
jmp .L_0123
.L_0124:
jmp .L_0121
.L_0137:
.L_0123:
.L_0122:
jmp .L_0120
.L_0121:
jmp .L_0118
.L_0138:
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
call _LEXEATCHAR@0
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .L_013A
.L_013B:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_013C
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_013B
.L_013C:
.L_013A:
.L_0139:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_013D:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .L_0141
cmp dword ptr [ebp-16], 55
ja .L_0141
.L_0142:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0144
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
jle .L_0146
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_0148
.L_014A:
cmp dword ptr [ebp-20], 51
jbe .L_014C
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
jmp .L_014B
.L_014C:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_014B:
jmp .L_0147
.L_014D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_014E
mov dword ptr [ebp-56], 24
jmp .L_049D
.L_014E:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_049D:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .L_0151
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_0151:
.L_0150:
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
jmp .L_0147
.L_0152:
cmp dword ptr [ebp-20], 49
jbe .L_0154
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0156
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0156:
.L_0155:
mov dword ptr [ebp-40], -1
jmp .L_0153
.L_0154:
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
.L_0153:
jmp .L_0147
.L_0157:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0159
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0159:
.L_0158:
mov dword ptr [ebp-40], -1
jmp .L_0147
.L_015A:
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
jmp .L_0147
.L_0148:
mov ebx, dword ptr [ebp-52]
add ebx, 4294967285
cmp ebx, 12
ja .L_015A
mov ebx, dword ptr [ebp-52]
jmp dword ptr [_.L_015B+ebx*4-44]
_.L_015B:
.int .L_014A
.int .L_014D
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_015A
.int .L_0152
.int .L_0157
.L_0147:
jmp .L_0145
.L_0146:
cmp dword ptr [ebp-32], 6
jne .L_015D
cmp dword ptr [ebp-20], 49
jbe .L_015F
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_015F:
.L_015E:
jmp .L_015C
.L_015D:
cmp dword ptr [ebp-32], 7
jne .L_0160
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_0160:
.L_015C:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_0145:
.L_0144:
.L_0143:
jmp .L_0140
.L_0141:
jmp .L_013E
.L_0161:
.L_0140:
.L_013F:
jmp .L_013D
.L_013E:
jmp .L_0118
.L_0162:
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
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_0164
.L_0165:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_0166
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_0165
.L_0166:
.L_0164:
.L_0163:
.L_0167:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .L_016C
.L_016D:
cmp dword ptr [ebp-16], 49
jne .L_016B
.L_016C:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_016F
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
jle .L_0171
cmp dword ptr [ebp-32], 33
jne .L_0173
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
jmp .L_0172
.L_0173:
cmp dword ptr [ebp-32], 65
jne .L_0174
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0176
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0176:
.L_0175:
mov dword ptr [ebp-40], -1
jmp .L_0172
.L_0174:
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
.L_0172:
jmp .L_0170
.L_0171:
cmp dword ptr [ebp-32], 17
jne .L_0178
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0178:
.L_0177:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_0170:
.L_016F:
.L_016E:
jmp .L_016A
.L_016B:
jmp .L_0168
.L_0179:
.L_016A:
.L_0169:
jmp .L_0167
.L_0168:
jmp .L_0118
.L_017A:
jmp .L_0111
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp-48]
add eax, 4294967230
cmp eax, 45
ja .L_017A
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_017B+eax*4-264]
_.L_017B:
.int .L_0162
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_011B
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_0138
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_0162
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_011B
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_0138
.L_0118:
cmp dword ptr [ebp-32], 0
jne .L_017D
cmp dword ptr [ebp-36], 0
jne .L_017F
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_0181
push 0
push 1
push 0
push 48
call _ERRREPORTWARN@16
.L_0181:
.L_0180:
.L_017F:
.L_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_017D:
.L_017C:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0182
mov dword ptr [ebp-44], 24
jmp .L_049E
.L_0182:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_049E:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .L_0185
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_0184
.L_0185:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_0184:
.L_0111:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HREADFLOATNUMBER@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0186:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_ENV+1072]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+2064]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_0188:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .L_018C
cmp dword ptr [ebp-4], 57
ja .L_018C
.L_018D:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_018F
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_018F:
.L_018E:
jmp .L_018B
.L_018C:
jmp .L_0189
.L_0190:
.L_018B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .L_0192
cmp dword ptr [ebp-12], 0
jne .L_0194
mov dword ptr [ebp-12], -1
jmp .L_0193
.L_0194:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0196
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0196:
.L_0195:
.L_0193:
.L_0192:
.L_0191:
.L_018A:
jmp .L_0188
.L_0189:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .L_0197
mov dword ptr [ebp-16], 1
jmp .L_049F
.L_0197:
mov dword ptr [ebp-16], 0
.L_049F:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+2064], eax
jle .L_019A
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.L_019A:
.L_0199:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_019C
.L_019E:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01A0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.L_01A0:
.L_019F:
cmp dword ptr [ebp-12], 0
jne .L_01A2
cmp dword ptr [ebp+20], 0
jne .L_01A4
mov dword ptr [ebp-4], 101
.L_01A4:
.L_01A3:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.L_01A2:
.L_01A1:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
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
je .L_01A6
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_01A8
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A9:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .L_01AD
.L_01AF:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_01B1
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_01B1:
.L_01B0:
jmp .L_01AC
.L_01B2:
jmp .L_01AA
jmp .L_01AC
.L_01AD:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .L_01B2
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_01B3+eax*4-192]
_.L_01B3:
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.int .L_01AF
.L_01AC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .L_01B5
cmp dword ptr [ebp-12], 0
jne .L_01B7
mov dword ptr [ebp-12], -1
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_01B9
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_01B9:
.L_01B8:
.L_01B6:
.L_01B5:
.L_01B4:
.L_01AB:
jmp .L_01A9
.L_01AA:
jmp .L_019B
.L_019C:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .L_019B
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01BA+eax*4-272]
_.L_01BA:
.int .L_019E
.int .L_019E
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019B
.int .L_019E
.int .L_019E
.L_019B:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
jmp .L_01BC
.L_01BE:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .L_01C0
call _LEXEATCHAR@0
.L_01C0:
.L_01BF:
jmp .L_01BB
.L_01C1:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01C3
call _LEXEATCHAR@0
.L_01C3:
.L_01C2:
jmp .L_01BB
.L_01C4:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01C6
call _LEXEATCHAR@0
.L_01C6:
.L_01C5:
jmp .L_01BB
.L_01BC:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .L_01BB
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01C7+eax*4-132]
_.L_01C7:
.int .L_01C1
.int .L_01BB
.int .L_01C4
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BE
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BB
.int .L_01BE
.L_01BB:
cmp dword ptr [ebp+20], 0
jne .L_01C9
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+2064]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .L_01CB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_01CB:
.L_01CA:
.L_01C9:
.L_01C8:
.L_0187:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_READNUMBERCHARS@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.L_01CC:
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
.L_01CE:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_01D2
.L_01D4:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
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
je .L_01D6
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
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
.L_01D6:
.L_01D5:
jmp .L_01D1
.L_01D7:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .L_01D9
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01DB
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+2064]
.L_01DB:
.L_01DA:
mov dword ptr [ebp-24], -1
.L_01D9:
.L_01D8:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _HREADFLOATNUMBER@16
jmp .L_01CF
jmp .L_01D1
.L_01DC:
jmp .L_01CF
jmp .L_01D1
.L_01D2:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .L_01DC
mov ecx, dword ptr [ebp-20]
jmp dword ptr [_.L_01DD+ecx*4-184]
_.L_01DD:
.int .L_01D7
.int .L_01DC
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01D4
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01D7
.int .L_01D7
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01D7
.int .L_01D7
.L_01D1:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .L_01DF
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01E1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+2064]
mov dword ptr [ebp-20], ecx
jmp .L_01E3
.L_01E5:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E7
ja .L_04A8
cmp dword ptr [ecx], 32767
jbe .L_01E7
.L_04A8:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.L_01E7:
.L_01E6:
jmp .L_01E2
.L_01E8:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .L_01E2
.L_01E9:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01EB
ja .L_04A9
cmp dword ptr [ecx], 2147483647
jbe .L_01EB
.L_04A9:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01ED
ja .L_04AA
cmp dword ptr [ecx], 4294967295
jbe .L_01ED
.L_04AA:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01EC
.L_01ED:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.L_01EC:
.L_01EB:
.L_01EA:
jmp .L_01E2
.L_01EE:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01E2
.L_01EF:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .L_01F1
ja .L_04AB
cmp dword ptr [ecx], 4294967295
jbe .L_01F1
.L_04AB:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.L_01F1:
.L_01F0:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .L_01E2
.L_01F2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F4
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .L_04AC
jb .L_04AD
cmp dword ptr [ebp-12], 2576980377
ja .L_04AC
.L_04AD:
xor eax, eax
.L_04AC:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .L_04AF
cmp esi, 0
je .L_04AE
.L_04AF:
xor ebx, ebx
.L_04AE:
or eax, ebx
je .L_01F6
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.L_01F6:
.L_01F5:
.L_01F4:
.L_01F3:
jmp .L_01E2
.L_01F7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F9
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_01F9:
.L_01F8:
jmp .L_01E2
.L_01E3:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .L_01E2
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01FA+eax*4-20]
_.L_01FA:
.int .L_01E5
.int .L_01E8
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01E9
.int .L_01EE
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01E2
.int .L_01EF
.int .L_01F2
.int .L_01F7
.L_01E2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2064], 64
jne .L_01FC
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01FE
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .L_01FD
.L_01FE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .L_0200
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0200:
.L_01FF:
.L_01FD:
.L_01FC:
.L_01FB:
.L_01E1:
.L_01E0:
.L_01DF:
.L_01DE:
.L_01D0:
jmp .L_01CE
.L_01CF:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+2064], 0
jne .L_0202
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
.L_0202:
.L_0201:
.L_01CD:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNUMBER@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0203:
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
mov dword ptr [ebx+2064], 0
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
jmp .L_0206
.L_0208:
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call _READNUMBERCHARS@20
jmp .L_0205
.L_0209:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _HREADFLOATNUMBER@16
jmp .L_0205
.L_020A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
lea eax, [ebp-20]
push eax
call _HREADNONDECNUMBER@16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .L_0205
.L_0206:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .L_0205
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_020B+eax*4-152]
_.L_020B:
.int .L_020A
.int .L_0205
.int .L_0205
.int .L_0205
.int .L_0205
.int .L_0205
.int .L_0205
.int .L_0205
.int .L_0209
.int .L_0205
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.int .L_0208
.L_0205:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .L_020E
.L_020F:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1048]
mov dword ptr [edx+8], eax
jmp .L_020C
.L_020E:
cmp dword ptr [ebp-28], 6
jne .L_0210
.L_0211:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1052]
mov dword ptr [eax+8], edx
jmp .L_020C
.L_0210:
cmp dword ptr [ebp-28], 11
jne .L_0212
.L_0213:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1056]
mov dword ptr [edx+8], eax
jmp .L_020C
.L_0212:
cmp dword ptr [ebp-28], 12
jne .L_0214
.L_0215:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1060]
mov dword ptr [eax+8], edx
jmp .L_020C
.L_0214:
cmp dword ptr [ebp-28], 13
jne .L_0216
.L_0217:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1064]
mov dword ptr [edx+8], eax
jmp .L_020C
.L_0216:
cmp dword ptr [ebp-28], 14
jne .L_0218
.L_0219:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1068]
mov dword ptr [eax+8], edx
.L_0218:
.L_020C:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .L_021A
mov dword ptr [ebp-24], 24
jmp .L_04B0
.L_021A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.L_04B0:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [_SYMB_DTYPETB+edx], 1
je .L_021D
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .L_021F
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0221
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .L_0225
.L_0226:
cmp dword ptr [ebp-28], 117
jne .L_0224
.L_0225:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _TYPETOUNSIGNED@4
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.L_0224:
.L_0222:
.L_0221:
.L_0220:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
jmp .L_0228
.L_022A:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .L_022C
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
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
je .L_022E
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
je .L_022F
mov dword ptr [ebp-36], 14
jmp .L_04B1
.L_022F:
mov dword ptr [ebp-36], 13
.L_04B1:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .L_022D
.L_022E:
cmp dword ptr [ebp-12], 0
jb .L_0232
ja .L_04B6
cmp dword ptr [ebp-16], 4294967295
jbe .L_0232
.L_04B6:
cmp dword ptr [ebp-8], 0
jne .L_0234
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0236
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0236:
.L_0235:
.L_0234:
.L_0233:
.L_0232:
.L_0231:
cmp dword ptr [ebp-4], 0
je .L_0237
mov dword ptr [ebp-36], 12
jmp .L_04B2
.L_0237:
mov dword ptr [ebp-36], 11
.L_04B2:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.L_022D:
.L_022C:
.L_022B:
jmp .L_0227
.L_0239:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_023B
cmp dword ptr [ebp-4], 0
jne .L_023D
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.L_023D:
.L_023C:
.L_023B:
.L_023A:
jmp .L_0227
.L_023E:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0240
cmp dword ptr [ebp-4], 0
jne .L_0242
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call _LEXEATCHAR@0
.L_0242:
.L_0241:
.L_0240:
.L_023F:
jmp .L_0227
.L_0243:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [_ENV+1044]
and edx, 480
je .L_0244
mov dword ptr [ebp-36], 24
jmp .L_04B3
.L_0244:
mov edx, dword ptr [_ENV+1044]
and edx, 31
mov dword ptr [ebp-36], edx
.L_04B3:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [_SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .L_0248
.L_0249:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B7
jb .L_04B8
cmp dword ptr [ebp-16], 65535
ja .L_04B7
.L_04B8:
xor eax, eax
.L_04B7:
mov dword ptr [ebp-32], eax
jmp .L_0246
.L_0248:
cmp dword ptr [ebp-40], 4
jne .L_024A
.L_024B:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B9
jb .L_04BA
cmp dword ptr [ebp-16], 4294967295
ja .L_04B9
.L_04BA:
xor eax, eax
.L_04B9:
mov dword ptr [ebp-32], eax
.L_024A:
.L_0246:
cmp dword ptr [ebp-32], 0
je .L_024D
cmp dword ptr [ebp-8], 0
jne .L_024F
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0251
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0251:
.L_0250:
.L_024F:
.L_024E:
.L_024D:
.L_024C:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1044]
mov dword ptr [eax+8], edx
call _LEXEATCHAR@0
jmp .L_0227
.L_0252:
cmp dword ptr [ebp-12], 0
jb .L_0254
ja .L_04BB
cmp dword ptr [ebp-16], 4294967295
jbe .L_0254
.L_04BB:
cmp dword ptr [ebp-8], 0
jne .L_0256
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .L_0258
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0258:
.L_0257:
.L_0256:
.L_0255:
.L_0254:
.L_0253:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call _LEXEATCHAR@0
jmp .L_0227
.L_0259:
cmp dword ptr [ebp-4], 0
jne .L_025B
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.L_025B:
.L_025A:
jmp .L_0227
.L_025C:
cmp dword ptr [ebp-4], 0
jne .L_025E
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 35
je .L_0260
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call _LEXEATCHAR@0
.L_0260:
.L_025F:
.L_025E:
.L_025D:
jmp .L_0227
.L_0228:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .L_0227
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_0261+eax*4-132]
_.L_0261:
.int .L_0259
.int .L_0227
.int .L_025C
.int .L_0227
.int .L_0243
.int .L_0252
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_023E
.int .L_0227
.int .L_0239
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_022A
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_023E
.int .L_0227
.int .L_0239
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_0227
.int .L_022A
.L_0227:
.L_021F:
.L_021E:
.L_021D:
.L_021C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.L_0204:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HREADSTRING@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0262:
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
je .L_0265
call _LEXCURRENTCHAR@0
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0265:
.L_0264:
call _LEXEATCHAR@0
.L_0266:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_026A
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_026C
cmp dword ptr [ebp-16], 0
jne .L_026E
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_026E:
.L_026D:
.L_026C:
.L_026B:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0270
jmp .L_0267
.L_0270:
jmp .L_0269
.L_026A:
cmp dword ptr [ebp-20], 27
jne .L_0271
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0273
cmp dword ptr [ebp-16], 0
jne .L_0275
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0275:
.L_0274:
.L_0273:
.L_0272:
jmp .L_0269
.L_0271:
cmp dword ptr [ebp-20], 92
jne .L_0276
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0278
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_027A
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_027A:
.L_0279:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_0278:
.L_0277:
.L_0276:
.L_0269:
cmp dword ptr [ebp-20], 0
je .L_027D
.L_027E:
cmp dword ptr [ebp-20], 13
je .L_027D
.L_027F:
cmp dword ptr [ebp-20], 10
jne .L_027C
.L_027D:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_0281
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.L_0281:
.L_0280:
jmp .L_0267
.L_027C:
.L_027B:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_0283
cmp dword ptr [ebp-4], 1024
jne .L_0285
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_0287
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.L_0287:
.L_0286:
mov dword ptr [ebp-16], -1
jmp .L_0284
.L_0285:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0284:
.L_0283:
.L_0282:
.L_0268:
jmp .L_0266
.L_0267:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.L_0263:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HREADWSTR@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0288:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
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
je .L_028B
call _LEXCURRENTCHAR@0
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_028B:
.L_028A:
call _LEXEATCHAR@0
.L_028C:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_0290
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_0292
cmp dword ptr [ebp-16], 0
jne .L_0294
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 34
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_0294:
.L_0293:
.L_0292:
.L_0291:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0296
jmp .L_028D
.L_0296:
jmp .L_028F
.L_0290:
cmp dword ptr [ebp-20], 27
jne .L_0297
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0299
cmp dword ptr [ebp-16], 0
jne .L_029B
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 27
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_029B:
.L_029A:
.L_0299:
.L_0298:
jmp .L_028F
.L_0297:
cmp dword ptr [ebp-20], 92
jne .L_029C
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_029E
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_02A0
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 92
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_02A0:
.L_029F:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_029E:
.L_029D:
.L_029C:
.L_028F:
cmp dword ptr [ebp-20], 0
je .L_02A3
.L_02A4:
cmp dword ptr [ebp-20], 13
je .L_02A3
.L_02A5:
cmp dword ptr [ebp-20], 10
jne .L_02A2
.L_02A3:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_02A7
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.L_02A7:
.L_02A6:
jmp .L_028D
.L_02A2:
.L_02A1:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_02A9
cmp dword ptr [ebp-4], 1024
jne .L_02AB
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_02AD
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.L_02AD:
.L_02AC:
mov dword ptr [ebp-16], -1
jmp .L_02AA
.L_02AB:
mov ax, word ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_02AA:
.L_02A9:
.L_02A8:
.L_028E:
jmp .L_028C
.L_028D:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.L_0289:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKPERIODS@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02AE:
cmp dword ptr [ebp+16], 0
je .L_02B1
mov dword ptr [ebp-4], 0
call _LEXCURRENTCHAR@0
cmp eax, 46
jne .L_02B3
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .L_02B5
mov dword ptr [ebp-4], -1
.L_02B6:
cmp dword ptr [ebp+16], 0
je .L_02B7
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_02B8:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_02BC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_02BE
jmp .L_02AF
.L_02BE:
.L_02BD:
.L_02BC:
.L_02BB:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+160]
mov dword ptr [ebp-8], eax
.L_02BA:
cmp dword ptr [ebp-8], 0
jne .L_02B8
.L_02B9:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .L_02B6
.L_02B7:
.L_02B5:
.L_02B4:
.L_02B3:
.L_02B2:
jmp .L_02B0
.L_02B1:
call _LEXCURRENTCHAR@0
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_02B0:
cmp dword ptr [ebp-4], 0
je .L_02C0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
mov dword ptr [eax+2072], ecx
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+2064]
push ecx
call _HREADIDENTIFIER@20
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call _SYMBLOOKUP@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], eax
.L_02C0:
.L_02BF:
.L_02AF:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_READID@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02C1:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8388]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2072], 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _HREADIDENTIFIER@20
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .L_02C4
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [_LEX+422348]
push dword ptr [eax+8392]
call _SYMBLOOKUPAT@16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
jne .L_02C6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .L_02C5
.L_02C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+2068]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.L_02C5:
mov dword ptr [ebp-4], -1
jmp .L_02C2
.L_02C4:
.L_02C3:
mov eax, dword ptr [ebp+12]
and eax, 32
je .L_02C8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .L_02C2
.L_02C8:
.L_02C7:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _SYMBLOOKUP@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_02CA
mov dword ptr [ebp-4], -1
jmp .L_02C2
.L_02CA:
.L_02C9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
je .L_02CC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .L_02CE
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
push dword ptr [ebx]
call _PPDEFINELOAD@8
test eax, eax
je .L_02D0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02D0:
.L_02CF:
.L_02CE:
.L_02CD:
.L_02CC:
.L_02CB:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_02D2
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_02D4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+2068]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPERIODS@12
.L_02D4:
.L_02D3:
.L_02D2:
.L_02D1:
mov dword ptr [ebp-4], -1
.L_02C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMULTILINECOMMENT@0:
push ebp
mov ebp, esp
sub esp, 4
.L_035F:
call _LEXEATCHAR@0
mov dword ptr [_Lt_04BF], 0
.L_0361:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
jmp .L_0365
.L_0367:
push 0
push 1
push 0
push 0
push 132
call _ERRREPORTEX@20
jmp .L_0360
jmp .L_0364
.L_0368:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_036A
call _LEXEATCHAR@0
.L_036A:
.L_0369:
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jne .L_036C
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8376]
.L_036C:
.L_036B:
jmp .L_0364
.L_036D:
call _LEXEATCHAR@0
mov eax, dword ptr [_LEX+422348]
cmp dword ptr [eax+8400], 0
jne .L_036F
mov eax, dword ptr [_LEX+422348]
inc dword ptr [eax+8376]
.L_036F:
.L_036E:
jmp .L_0364
.L_0370:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 39
jne .L_0372
call _LEXEATCHAR@0
inc dword ptr [_Lt_04BF]
.L_0372:
.L_0371:
jmp .L_0364
.L_0373:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 47
jne .L_0375
call _LEXEATCHAR@0
cmp dword ptr [_Lt_04BF], 0
jne .L_0377
jmp .L_0362
.L_0377:
.L_0376:
dec dword ptr [_Lt_04BF]
.L_0375:
.L_0374:
jmp .L_0364
.L_0378:
call _LEXEATCHAR@0
jmp .L_0364
.L_0365:
cmp dword ptr [ebp-4], 47
ja .L_0378
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0379+eax*4]
_.L_0379:
.int .L_0367
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_036D
.int .L_0378
.int .L_0378
.int .L_0368
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0373
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0378
.int .L_0370
.L_0364:
.L_0363:
jmp .L_0361
.L_0362:
.L_0360:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04BF,4

.section .text
.balign 16
_HMOVEKDOWN@0:
push ebx
.L_0392:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], -1
mov ebx, dword ptr [_LEX+422348]
dec dword ptr [ebx+8352]
mov ebx, dword ptr [_LEX+422348]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [_LEX+422348]
mov ecx, dword ptr [eax+2084]
mov dword ptr [ebx+8356], ecx
.L_0393:
pop ebx
ret
.balign 16
_LEXGETSTRLITTEXT@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0394:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .L_0397
.L_0398:
mov dword ptr [ebp-28], 0
jmp .L_0396
.L_0397:
cmp dword ptr [ebp+8], 263
jne .L_0399
.L_039A:
push 0
push 2
push offset _Lt_039B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], -1
jmp .L_0396
.L_0399:
cmp dword ptr [ebp+8], 264
jne .L_039C
.L_039D:
push 0
push 2
push offset _Lt_039E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 0
.L_039C:
.L_0396:
push 0
push 2
push offset _Lt_039F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-32], 0
call _LEXGETTEXT@0
mov dword ptr [ebp-36], eax
.L_03A0:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .L_03A5
.L_03A6:
jmp .L_03A1
jmp .L_03A3
.L_03A5:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .L_03A7
.L_03A8:
cmp dword ptr [ebp-32], 0
je .L_03AA
push 0
push 2
push offset _Lt_039F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_03A9
.L_03AA:
push 0
push 3
push offset _Lt_03AB
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_03A9:
mov dword ptr [ebp-32], 0
jmp .L_03A3
.L_03A7:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .L_03AC
.L_03AE:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
push 0
push 2
push offset _Lt_03AD
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_03A3
.L_03AC:
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_03AF:
.L_03A3:
inc dword ptr [ebp-36]
.L_03A2:
jmp .L_03A0
.L_03A1:
push 0
push 2
push offset _Lt_039F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0395:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

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

.globl _LEX
.balign 4
	.lcomm	_LEX,422356
.balign 4
	.lcomm	_PPONLY_LN,12

.section .data
.balign 4
_Lt_0076:	.ascii	"src/compiler/lex.bas\0"
.balign 4
_Lt_00AF:	.ascii	" [Macro Expansion: \0"
.balign 4
_Lt_00CA:	.ascii	" ] \0"
.balign 4
_Lt_039B:	.ascii	"!\0"
.balign 4
_Lt_039E:	.ascii	"$\0"
.balign 4
_Lt_039F:	.ascii	"\"\0"
.balign 4
_Lt_03AB:	.ascii	"\"\"\0"
.balign 4
_Lt_03AD:	.ascii	"\\\0"
.balign 4
_Lt_03C4:	.ascii	" \0"
.balign 4
_Lt_0453:	.ascii	"^\0"
.balign 4
_Lt_045E:	.ascii	"in '\0"
.balign 4
_Lt_0461:	.ascii	"'\0"

.section .ctors
.int _fb_ctor__lex
