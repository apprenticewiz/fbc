	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBGETLANGOPTIONS
_FBGETLANGOPTIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [ebp-4], ebx
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETLANGNAME
_FBGETLANGNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A7:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_LANGTB+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00A8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETBACKENDNAME
_FBGETBACKENDNAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A9:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00AD
.L_00AE:
push 0
push 4
push offset _Lt_00AF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-16], 1
jne .L_00B0
.L_00B1:
push 0
push 4
push offset _Lt_00B2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00AB
.L_00B0:
cmp dword ptr [ebp-16], 2
jne .L_00B3
.L_00B4:
push 0
push 5
push offset _Lt_00B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00AB
.L_00B3:
cmp dword ptr [ebp-16], 3
jne .L_00B6
.L_00B7:
push 0
push 6
push offset _Lt_00B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00B6:
.L_00AB:
.L_00AA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBINIT
_FBINIT:
push ebp
mov ebp, esp
sub esp, 8
.L_00B9:
push 5
lea eax, [_ENV+1132]
push eax
call _STRSETINIT
add esp, 8
push 5
lea eax, [_ENV+1176]
push eax
call _STRSETINIT
add esp, 8
mov dword ptr [_ENV+1112], 0
mov dword ptr [_ENV+1116], 0
and dword ptr [_ENV+1120], -6
push 15
push 0
push 1
push 0
push -1
push 280
push offset _INFILETB
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_00BB
push 0
push 0
push offset _Lt_00BC
push 402
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00BB:
mov dword ptr [_ENV+900], 0
mov dword ptr [_ENV+1032], 0
push 0
push 0
push dword ptr [ebp+12]
push 128
lea eax, [_ENV+904]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [_ENV+1108], eax
mov eax, dword ptr [_ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+1084], eax
cmp dword ptr [_ENV+136], 3
je .L_00BE
mov dword ptr [_ENV+1044], 8
mov dword ptr [_ENV+1048], 8
mov dword ptr [_ENV+1052], 9
mov dword ptr [_ENV+1056], 8
mov dword ptr [_ENV+1060], 9
call _FBIS64BIT
test eax, eax
je .L_00C0
mov dword ptr [_ENV+1064], 8
mov dword ptr [_ENV+1068], 9
jmp .L_00BF
.L_00C0:
mov dword ptr [_ENV+1064], 13
mov dword ptr [_ENV+1068], 14
.L_00BF:
mov dword ptr [_ENV+1072], 16
jmp .L_00BD
.L_00BE:
mov dword ptr [_ENV+1044], 5
mov dword ptr [_ENV+1048], 5
mov dword ptr [_ENV+1052], 6
mov dword ptr [_ENV+1056], 11
mov dword ptr [_ENV+1060], 12
mov dword ptr [_ENV+1064], 13
mov dword ptr [_ENV+1068], 14
mov dword ptr [_ENV+1072], 15
.L_00BD:
mov dword ptr [_ENV+1080], 2
mov dword ptr [_ENV+1088], -1
mov dword ptr [_ENV+1092], 0
mov dword ptr [_ENV+1096], 0
mov dword ptr [_ENV+1076], 0
mov eax, dword ptr [_ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+1100], eax
mov dword ptr [_ENV+1220], 0
mov dword ptr [_ENV+292], 0
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_00C4
.L_00C5:
cmp dword ptr [ebp-8], 4
je .L_00C4
.L_00C6:
cmp dword ptr [ebp-8], 9
jne .L_00C3
.L_00C4:
mov dword ptr [_ENV+292], -1
jmp .L_00C1
.L_00C3:
cmp dword ptr [ebp-8], 1
je .L_00C8
.L_00C9:
cmp dword ptr [ebp-8], 0
jne .L_00C7
.L_00C8:
call _FBIS64BIT
not eax
mov dword ptr [_ENV+292], eax
.L_00C7:
.L_00C1:
mov dword ptr [_ENV+296], 0
call _PARSERSETCTX
push dword ptr [ebp+8]
call _SYMBINIT
add esp, 4
call _ERRINIT
call _ASTINIT
call _IRINIT
mov eax, dword ptr [_ENV+272]
and eax, 480
je .L_00CA
mov dword ptr [ebp-4], 24
jmp .L_00CE
.L_00CA:
mov eax, dword ptr [_ENV+272]
and eax, 31
mov dword ptr [ebp-4], eax
.L_00CE:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .L_00CD
mov dword ptr [_ENV+288], 2
jmp .L_00CC
.L_00CD:
mov dword ptr [_ENV+288], 0
.L_00CC:
push 0
push 256
lea eax, [_ENV+864]
push eax
call _HASHINIT
add esp, 12
push 0
push 256
lea eax, [_ENV+876]
push eax
call _HASHINIT
add esp, 12
push 0
push 256
lea eax, [_ENV+888]
push eax
call _HASHINIT
add esp, 12
push 0
push 104
push 128
lea eax, [_PARSER]
push eax
call _STACKNEW
add esp, 16
push 0
call _LEXINIT
add esp, 4
call _PARSERINIT
call _RTLINIT
mov dword ptr [_ENV+1104], -1
.L_00BA:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBEND
_FBEND:
.L_00D1:
mov dword ptr [_ENV+1104], 0
call _RTLEND
call _PARSEREND
call _LEXEND
lea eax, [_PARSER]
push eax
call _STACKFREE
add esp, 4
lea eax, [_ENV+864]
push eax
call _HASHEND
add esp, 4
lea eax, [_ENV+888]
push eax
call _HASHEND
add esp, 4
lea eax, [_ENV+876]
push eax
call _HASHEND
add esp, 4
call _IREND
call _ASTEND
call _ERREND
call _SYMBEND
push offset _INFILETB
call _fb_ArrayErase
add esp, 4
lea eax, [_ENV+1132]
push eax
call _STRSETEND
add esp, 4
lea eax, [_ENV+1176]
push eax
call _STRSETEND
add esp, 4
.L_00D2:
ret
.balign 16

.globl _FBGLOBALINIT
_FBGLOBALINIT:
.L_00D9:
push 256
lea eax, [_ENV]
push eax
call _STRLISTINIT
add esp, 8
push 256
lea eax, [_ENV+32]
push eax
call _STRLISTINIT
add esp, 8
push 256
lea eax, [_ENV+64]
push eax
call _STRLISTINIT
add esp, 8
mov dword ptr [_ENV+96], 0
mov dword ptr [_ENV+100], 0
mov dword ptr [_ENV+104], 0
mov dword ptr [_ENV+108], 3
mov dword ptr [_ENV+112], 1
mov dword ptr [_ENV+116], 0
mov dword ptr [_ENV+120], 0
mov dword ptr [_ENV+124], 0
mov dword ptr [_ENV+128], 0
mov dword ptr [_ENV+132], 0
mov dword ptr [_ENV+136], 0
mov dword ptr [_ENV+140], 0
mov dword ptr [_ENV+144], 0
mov dword ptr [_ENV+148], 0
mov dword ptr [_ENV+152], 0
mov dword ptr [_ENV+156], 0
mov dword ptr [_ENV+164], 0
mov dword ptr [_ENV+168], 0
mov dword ptr [_ENV+172], 0
mov dword ptr [_ENV+176], 0
mov dword ptr [_ENV+180], 0
mov dword ptr [_ENV+160], 0
mov dword ptr [_ENV+184], 0
mov dword ptr [_ENV+188], 1
mov dword ptr [_ENV+192], -1
mov dword ptr [_ENV+196], 10
mov dword ptr [_ENV+200], 0
mov dword ptr [_ENV+204], 0
mov dword ptr [_ENV+224], 0
mov dword ptr [_ENV+232], 0
mov dword ptr [_ENV+236], 0
mov dword ptr [_ENV+240], 0
mov dword ptr [_ENV+228], 0
mov dword ptr [_ENV+244], 0
mov dword ptr [_ENV+248], -1
mov dword ptr [_ENV+252], 0
mov dword ptr [_ENV+256], 0
mov dword ptr [_ENV+260], 0
mov dword ptr [_ENV+264], 0
mov dword ptr [_ENV+1112], 0
mov dword ptr [_ENV+1116], 0
mov dword ptr [_ENV+1120], 0
mov dword ptr [_ENV+1128], -1
mov dword ptr [_ENV+1124], 0
mov dword ptr [_ENV+1108], 0
call _HUPDATELANGOPTIONS
call _HUPDATETARGETOPTIONS
.L_00DA:
ret
.balign 16

.globl _FBADDINCLUDEPATH
_FBADDINCLUDEPATH:
push ebp
mov ebp, esp
.L_00DB:
push dword ptr [ebp+8]
lea eax, [_ENV+64]
push eax
call _STRLISTAPPEND
add esp, 8
.L_00DC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDPREDEFINE
_FBADDPREDEFINE:
push ebp
mov ebp, esp
.L_00DD:
push dword ptr [ebp+8]
lea eax, [_ENV]
push eax
call _STRLISTAPPEND
add esp, 8
.L_00DE:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDPREINCLUDE
_FBADDPREINCLUDE:
push ebp
mov ebp, esp
.L_00DF:
push dword ptr [ebp+8]
lea eax, [_ENV+32]
push eax
call _STRLISTAPPEND
add esp, 8
.L_00E0:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSETOPTION
_FBSETOPTION:
push ebp
mov ebp, esp
sub esp, 8
.L_00E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E4
.L_00E6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+96], eax
jmp .L_00E3
.L_00E7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+100], eax
jmp .L_00E3
.L_00E8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+104], eax
jmp .L_00E3
.L_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+108], eax
call _HUPDATETARGETOPTIONS
jmp .L_00E3
.L_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+112], eax
jmp .L_00E3
.L_00EB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+116], eax
jmp .L_00E3
.L_00EC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+120], eax
jmp .L_00E3
.L_00ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+124], eax
jmp .L_00E3
.L_00EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+128], eax
jmp .L_00E3
.L_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+132], eax
jmp .L_00E3
.L_00F0:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+136], eax
call _HUPDATELANGOPTIONS
jmp .L_00E3
.L_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+140], eax
jmp .L_00E3
.L_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+1128], eax
jmp .L_00E3
.L_00F3:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+144], eax
jmp .L_00E3
.L_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+148], eax
jmp .L_00E3
.L_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+152], eax
jmp .L_00E3
.L_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+156], eax
jmp .L_00E3
.L_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+160], eax
jmp .L_00E3
.L_00F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+164], eax
jmp .L_00E3
.L_00F9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+168], eax
jmp .L_00E3
.L_00FA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+172], eax
jmp .L_00E3
.L_00FB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+176], eax
jmp .L_00E3
.L_00FC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+180], eax
jmp .L_00E3
.L_00FD:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+184], eax
jmp .L_00E3
.L_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+188], eax
jmp .L_00E3
.L_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+192], eax
jmp .L_00E3
.L_0100:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+196], eax
jmp .L_00E3
.L_0101:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+200], eax
jmp .L_00E3
.L_0102:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+204], eax
jmp .L_00E3
.L_0103:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+208], eax
jmp .L_00E3
.L_0104:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+212], eax
jmp .L_00E3
.L_0105:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+216], eax
jmp .L_00E3
.L_0106:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+220], eax
jmp .L_00E3
.L_0107:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+224], eax
jmp .L_00E3
.L_0108:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+228], eax
jmp .L_00E3
.L_0109:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+232], eax
jmp .L_00E3
.L_010A:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+236], eax
jmp .L_00E3
.L_010B:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+240], eax
jmp .L_00E3
.L_010C:
cmp dword ptr [ebp+12], 0
jge .L_010E
cmp dword ptr [_ENV+244], 0
jne .L_0110
call _FBIS64BIT
test eax, eax
je .L_0111
mov dword ptr [ebp-8], 2097152
jmp .L_011F
.L_0111:
mov dword ptr [ebp-8], 1048576
.L_011F:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
.L_0110:
.L_010F:
jmp .L_010D
.L_010E:
call _FBIS64BIT
test eax, eax
je .L_0114
cmp dword ptr [ebp+12], 65536
jge .L_0115
mov dword ptr [ebp-8], 65536
jmp .L_0120
.L_0115:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_0120:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
jmp .L_0113
.L_0114:
cmp dword ptr [ebp+12], 32768
jge .L_0117
mov dword ptr [ebp-8], 32768
jmp .L_0121
.L_0117:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_0121:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
.L_0113:
.L_010D:
jmp .L_00E3
.L_0119:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+248], eax
jmp .L_00E3
.L_011A:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+252], eax
jmp .L_00E3
.L_011B:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+256], eax
jmp .L_00E3
.L_011C:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+260], eax
jmp .L_00E3
.L_011D:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+264], eax
call _HUPDATETARGETOPTIONS
jmp .L_00E3
.L_00E4:
cmp dword ptr [ebp-4], 43
ja .L_00E3
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_011E+eax*4]
_.L_011E:
.int .L_00E6
.int .L_00E7
.int .L_00E8
.int .L_00E9
.int .L_00EA
.int .L_00EB
.int .L_00EC
.int .L_00ED
.int .L_00EE
.int .L_00EF
.int .L_00F0
.int .L_00F1
.int .L_00F2
.int .L_00F3
.int .L_00F4
.int .L_00F5
.int .L_00F6
.int .L_00F7
.int .L_00F8
.int .L_00F9
.int .L_00FB
.int .L_00FC
.int .L_00FA
.int .L_00FD
.int .L_00FE
.int .L_00FF
.int .L_0100
.int .L_0101
.int .L_0102
.int .L_0103
.int .L_0104
.int .L_0105
.int .L_0106
.int .L_0107
.int .L_0108
.int .L_0109
.int .L_010A
.int .L_010B
.int .L_010C
.int .L_0119
.int .L_011A
.int .L_011B
.int .L_011C
.int .L_011D
.L_00E3:
.L_00E2:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETOPTION
_FBGETOPTION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0122:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0125
.L_0127:
mov eax, dword ptr [_ENV+96]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0128:
mov eax, dword ptr [_ENV+100]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0129:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012A:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012B:
mov eax, dword ptr [_ENV+112]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012C:
mov eax, dword ptr [_ENV+116]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012D:
mov eax, dword ptr [_ENV+120]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012E:
mov eax, dword ptr [_ENV+124]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_012F:
mov eax, dword ptr [_ENV+128]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0130:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0131:
mov eax, dword ptr [_ENV+136]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0132:
mov eax, dword ptr [_ENV+140]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0133:
mov eax, dword ptr [_ENV+1128]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0134:
mov eax, dword ptr [_ENV+144]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0135:
mov eax, dword ptr [_ENV+148]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0136:
mov eax, dword ptr [_ENV+152]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0137:
mov eax, dword ptr [_ENV+156]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0138:
mov eax, dword ptr [_ENV+160]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0139:
mov eax, dword ptr [_ENV+164]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013A:
mov eax, dword ptr [_ENV+168]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013B:
mov eax, dword ptr [_ENV+172]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013C:
mov eax, dword ptr [_ENV+176]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013D:
mov eax, dword ptr [_ENV+180]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013E:
mov eax, dword ptr [_ENV+184]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_013F:
mov eax, dword ptr [_ENV+188]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0140:
mov eax, dword ptr [_ENV+192]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0141:
mov eax, dword ptr [_ENV+196]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0142:
mov eax, dword ptr [_ENV+200]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0143:
mov eax, dword ptr [_ENV+204]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0144:
mov eax, dword ptr [_ENV+208]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0145:
mov eax, dword ptr [_ENV+212]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0146:
mov eax, dword ptr [_ENV+216]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0147:
mov eax, dword ptr [_ENV+220]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0148:
mov eax, dword ptr [_ENV+224]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0149:
mov eax, dword ptr [_ENV+228]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014A:
mov eax, dword ptr [_ENV+232]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014B:
mov eax, dword ptr [_ENV+236]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014C:
mov eax, dword ptr [_ENV+240]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014D:
mov eax, dword ptr [_ENV+244]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014E:
mov eax, dword ptr [_ENV+248]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_014F:
mov eax, dword ptr [_ENV+252]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0150:
mov eax, dword ptr [_ENV+256]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0151:
mov eax, dword ptr [_ENV+260]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0152:
mov eax, dword ptr [_ENV+264]
mov dword ptr [ebp-4], eax
jmp .L_0124
.L_0153:
mov dword ptr [ebp-4], 0
jmp .L_0124
.L_0125:
cmp dword ptr [ebp-8], 43
ja .L_0153
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0154+eax*4]
_.L_0154:
.int .L_0127
.int .L_0128
.int .L_0129
.int .L_012A
.int .L_012B
.int .L_012C
.int .L_012D
.int .L_012E
.int .L_012F
.int .L_0130
.int .L_0131
.int .L_0132
.int .L_0133
.int .L_0134
.int .L_0135
.int .L_0136
.int .L_0137
.int .L_0138
.int .L_0139
.int .L_013A
.int .L_013C
.int .L_013D
.int .L_013B
.int .L_013E
.int .L_013F
.int .L_0140
.int .L_0141
.int .L_0142
.int .L_0143
.int .L_0144
.int .L_0145
.int .L_0146
.int .L_0147
.int .L_0148
.int .L_0149
.int .L_014A
.int .L_014B
.int .L_014C
.int .L_014D
.int .L_014E
.int .L_014F
.int .L_0150
.int .L_0151
.int .L_0152
.L_0124:
.L_0123:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBCHANGEOPTION
_FBCHANGEOPTION:
push ebp
mov ebp, esp
sub esp, 4
.L_0155:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0158
.L_015A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION
add esp, 8
jmp .L_0157
.L_015B:
push dword ptr [ebp+8]
call _FBGETOPTION
add esp, 4
cmp dword ptr [ebp+12], eax
je .L_015D
cmp dword ptr [_PARSER+100], 0
je .L_015F
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0161
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
jmp .L_0160
.L_0161:
push 0
push 0
push 96
call _ERRREPORT
add esp, 12
.L_0160:
jmp .L_015E
.L_015F:
cmp dword ptr [_ENV+140], 0
je .L_0163
push 0
push 1
push 0
push 30
call _ERRREPORTWARN
add esp, 16
jmp .L_0162
.L_0163:
mov eax, dword ptr [_ENV+1120]
and eax, 1
test eax, eax
jne .L_0165
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION
add esp, 8
push 1
call _FBRESTARTBEGINREQUEST
add esp, 4
push 1
call _FBRESTARTACCEPTREQUEST
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_0164
.L_0165:
push 0
push 1
push 0
push 31
call _ERRREPORTWARN
add esp, 16
.L_0164:
.L_0162:
.L_015E:
.L_015D:
.L_015C:
jmp .L_0157
.L_0166:
push 0
push 0
push 21
call _ERRREPORT
add esp, 12
jmp .L_0157
.L_0158:
mov eax, dword ptr [ebp-4]
add eax, 4294967286
cmp eax, 24
ja .L_0166
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0167+eax*4-40]
_.L_0167:
.int .L_015B
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_0166
.int .L_015A
.L_0157:
.L_0156:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBISCROSSCOMP
_FBISCROSSCOMP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0168:
mov eax, dword ptr [_ENV+108]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0169:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETTARGETID
_FBGETTARGETID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017A:
push 0
push -1
push dword ptr [_ENV+112]
push dword ptr [_ENV+108]
call _HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_017B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTID
_FBGETHOSTID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017C:
push 0
push -1
push 1
push 3
call _HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_017D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYOS
_FBIDENTIFYOS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_017E:
mov dword ptr [ebp-8], 0
.L_0183:
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [_TARGETINFO+eax]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0185
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_017F
.L_0185:
.L_0184:
.L_0181:
inc dword ptr [ebp-8]
.L_0180:
cmp dword ptr [ebp-8], 11
jle .L_0183
.L_0182:
mov dword ptr [ebp-4], -1
.L_017F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYCPUFAMILY
_FBIDENTIFYCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0186:
mov dword ptr [ebp-8], 0
.L_018B:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_018D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0187
.L_018D:
.L_018C:
.L_0189:
inc dword ptr [ebp-8]
.L_0188:
cmp dword ptr [ebp-8], 7
jle .L_018B
.L_018A:
mov dword ptr [ebp-4], -1
.L_0187:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBCPUTYPEFROMCPUFAMILYID
_FBCPUTYPEFROMCPUFAMILYID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_018E:
push dword ptr [ebp+8]
call _FBIDENTIFYCPUFAMILY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jl .L_0191
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CPUFAMILYINFO+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_018F
.L_0191:
.L_0190:
mov dword ptr [ebp-4], -1
.L_018F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETGCCARCH
_FBGETGCCARCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0192:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0195
mov ebx, dword ptr [_ENV+112]
imul ebx, 20
mov eax, dword ptr [_CPUTYPEINFO+ebx+4]
mov dword ptr [ebp-8], eax
.L_0195:
.L_0194:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0193:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETFBCARCH
_FBGETFBCARCH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0196:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+4]
mov dword ptr [ebp-4], ebx
.L_0197:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIS64BIT
_FBIS64BIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0198:
call _FBGETBITS
cmp eax, 64
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0199:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETBITS
_FBGETBITS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019B:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+12]
mov dword ptr [ebp-4], ebx
.L_019C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTBITS
_FBGETHOSTBITS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_019D:
mov eax, dword ptr [_CPUTYPEINFO+32]
mov dword ptr [ebp-4], eax
.L_019E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETCPUFAMILY
_FBGETCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019F:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-4], ebx
.L_01A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBISHOSTBIGENDIAN
_FBISHOSTBIGENDIAN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01A1:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+16]
mov dword ptr [ebp-4], ebx
.L_01A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYFBCARCH
_FBIDENTIFYFBCARCH:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_01A3:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 7
push offset _Lt_01A8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A7
.L_01A9:
mov dword ptr [ebp-4], 1
call _fb_CpuDetect
shr eax, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_01AC
.L_01AD:
mov dword ptr [ebp-4], 0
jmp .L_01AA
.L_01AC:
cmp dword ptr [ebp-20], 4
jne .L_01AE
.L_01AF:
mov dword ptr [ebp-4], 1
jmp .L_01AA
.L_01AE:
cmp dword ptr [ebp-20], 5
jne .L_01B0
.L_01B1:
mov dword ptr [ebp-4], 2
jmp .L_01AA
.L_01B0:
cmp dword ptr [ebp-20], 6
jne .L_01B2
.L_01B3:
mov dword ptr [ebp-4], 3
.L_01B2:
.L_01AA:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01A4
jmp .L_01A5
.L_01A7:
push 3
push offset _Lt_01B5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B4
.L_01B6:
mov dword ptr [ebp-4], 1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01A4
jmp .L_01A5
.L_01B4:
push 3
push offset _Lt_01B8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B7
.L_01B9:
mov dword ptr [ebp-4], 13
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01A4
.L_01B7:
.L_01A5:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-8], 0
.L_01BD:
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [_CPUTYPEINFO+eax+4]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01BF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A4
.L_01BF:
.L_01BE:
.L_01BB:
inc dword ptr [ebp-8]
.L_01BA:
cmp dword ptr [ebp-8], 20
jle .L_01BD
.L_01BC:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 7
push offset _Lt_007D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_01C4
.L_01C5:
push 6
push offset _Lt_01C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C2
.L_01C4:
mov dword ptr [ebp-4], 13
jmp .L_01C0
.L_01C2:
mov dword ptr [ebp-4], -1
.L_01C6:
.L_01C0:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_01A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSELF
_FBTARGETSUPPORTSELF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01C7:
mov eax, dword ptr [_ENV+284]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01C8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSCOFF
_FBTARGETSUPPORTSCOFF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01CA:
mov eax, dword ptr [_ENV+284]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01CB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSMACHO
_FBTARGETSUPPORTSMACHO:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01CD:
mov eax, dword ptr [_ENV+284]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01CE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETENTRYPOINT
_FBGETENTRYPOINT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D0:
push 128
lea eax, [_ENV+904]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
je .L_01D3
push 0
push 128
lea eax, [_ENV+904]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .L_01D1
.L_01D3:
.L_01D2:
cmp dword ptr [_ENV+108], 4
jne .L_01D5
push 0
push 12
push offset _Lt_01D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_01D4
.L_01D5:
push 0
push 5
push offset _Lt_01D7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_01D4:
.L_01D1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETMODULEENTRY
_FBGETMODULEENTRY:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D8:
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 261
lea eax, [_ENV+584]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _HSTRIPPATH
add esp, 4
push eax
push -1
push offset _Lt_01DD
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [_Lt_01DD]
call _HCLEARNAME
add esp, 4
push 0
push 10
push offset _Lt_01DC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_01DD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01D9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DD,12

.section .text
.balign 16

.globl _FBGETINPUTFILEPARENTDIR
_FBGETINPUTFILEPARENTDIR:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01DE:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV+304]
push eax
call _PATHISABSOLUTE
add esp, 4
test eax, eax
jne .L_01E1
push 0
push -1
call _HCURDIR
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0019
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01E1:
.L_01E0:
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 261
lea eax, [_ENV+304]
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_01DF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDLIB
_FBADDLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_01E5:
push 7
push offset _Lt_01E7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01E9
push -1
push 36
call _FBSETOPTION
add esp, 8
jmp .L_01E6
.L_01E9:
.L_01E8:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
lea eax, [_ENV+1132]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_01E6:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDLIBPATH
_FBADDLIBPATH:
push ebp
mov ebp, esp
sub esp, 24
.L_01EB:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
lea eax, [_ENV+1176]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_01EC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBCOMPILE
_FBCOMPILE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0225:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign
add esp, 20
push 92
lea eax, [_ENV+304]
push eax
call _HREPLACESLASH
add esp, 8
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+864]
push eax
push 0
call _HADDINCFILE
add esp, 12
mov dword ptr [_ENV+568], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+572], eax
push 0
push 0
push dword ptr [ebp+12]
push 261
lea eax, [_ENV+584]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+852], eax
push dword ptr [ebp+8]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0228
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX
add esp, 20
jmp .L_0226
.L_0228:
.L_0227:
call _fb_FileFree
mov dword ptr [_ENV+300], eax
push 0
push dword ptr [_ENV+300]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_022A
push 0
push 1
push -1
push dword ptr [ebp+8]
push 26
call _ERRREPORTEX
add esp, 20
jmp .L_0226
.L_022A:
.L_0229:
cmp dword ptr [_ENV+252], 0
je .L_022C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 0
call _HSHOWINCLUDE
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_022C:
.L_022B:
push dword ptr [_ENV+300]
call _HCHECKFILEFORMAT
add esp, 4
mov dword ptr [_ENV+576], eax
call dword ptr [_IR+8]
test eax, eax
jne .L_0230
push 0
push 1
push -1
lea eax, [_ENV+584]
push eax
push 26
call _ERRREPORTEX
add esp, 20
jmp .L_0226
.L_0230:
.L_022F:
push 1
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0232
call _fb_FileFree
mov dword ptr [_ENV+860], eax
push 0
push dword ptr [_ENV+860]
push 0
push 0
push 3
push dword ptr [ebp+16]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_0234
push 0
push 1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push 26
call _ERRREPORTEX
add esp, 20
jmp .L_0226
.L_0234:
.L_0233:
jmp .L_0231
.L_0232:
mov dword ptr [_ENV+860], 0
.L_0231:
call _FBMAINBEGIN
call _FBPARSEPREDEFINES
call _FBPARSEPREINCLUDES
call _FBSHOULDCONTINUE
test eax, eax
je .L_0236
call _CPROGRAM
.L_0236:
.L_0235:
call _FBMAINEND
push 39
call _FBGETOPTION
add esp, 4
mov ebx, eax
call _FBISCROSSCOMP
not eax
and ebx, eax
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0238
call _HEMITOBJINFO
.L_0238:
.L_0237:
call dword ptr [_IR+12]
cmp dword ptr [_ENV+860], 0
jle .L_023A
push dword ptr [_ENV+860]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_023B
push 0
push 0
push offset _Lt_00BC
push 1320
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_023B:
.L_023A:
.L_0239:
push dword ptr [_ENV+300]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_023C
push 0
push 0
push offset _Lt_00BC
push 1323
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_023C:
call _FBSHOULDCONTINUE
test eax, eax
je .L_023E
push dword ptr [_SYMB+98412]
call _SYMBCHECKLABELS
add esp, 4
.L_023E:
.L_023D:
.L_0226:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSHOULDRESTART
_FBSHOULDRESTART:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0240:
mov eax, dword ptr [_ENV+1112]
and eax, 10
test eax, eax
je .L_0243
mov eax, dword ptr [_ENV+1120]
and eax, 10
test eax, eax
jne .L_0245
push 10
call _FBRESTARTACCEPTREQUEST
add esp, 4
call _ERRHIDEFURTHERERRORS
mov dword ptr [ebp-4], -1
jmp .L_0241
.L_0245:
.L_0244:
.L_0243:
.L_0242:
mov eax, dword ptr [_ENV+1116]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0241:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSHOULDCONTINUE
_FBSHOULDCONTINUE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0247:
mov eax, dword ptr [_ENV+1116]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _ERRGETCOUNT
cmp eax, dword ptr [_ENV+196]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_0248:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBRESTARTBEGINREQUEST
_FBRESTARTBEGINREQUEST:
push ebp
mov ebp, esp
.L_024B:
mov eax, dword ptr [ebp+8]
or dword ptr [_ENV+1112], eax
.L_024C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBRESTARTACCEPTREQUEST
_FBRESTARTACCEPTREQUEST:
push ebp
mov ebp, esp
.L_024D:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1112]
test eax, eax
je .L_0250
mov eax, dword ptr [_ENV+1112]
and eax, dword ptr [_ENV+1120]
and eax, dword ptr [ebp+8]
test eax, eax
jne .L_0252
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1112]
or dword ptr [_ENV+1116], eax
.L_0252:
.L_0251:
.L_0250:
.L_024F:
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [_ENV+1112], eax
.L_024E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBRESTARTENDREQUEST
_FBRESTARTENDREQUEST:
push ebp
mov ebp, esp
.L_0253:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1116]
or dword ptr [_ENV+1120], eax
inc dword ptr [_ENV+1124]
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [_ENV+1116], eax
.L_0254:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBRESTARTGETCOUNT
_FBRESTARTGETCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0255:
mov eax, dword ptr [_ENV+1124]
mov dword ptr [ebp-4], eax
.L_0256:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSETLIBS
_FBSETLIBS:
push ebp
mov ebp, esp
.L_0257:
push dword ptr [ebp+8]
lea eax, [_ENV+1132]
push eax
call _STRSETCOPY
add esp, 8
push dword ptr [ebp+12]
lea eax, [_ENV+1176]
push eax
call _STRSETCOPY
add esp, 8
.L_0258:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETLIBS
_FBGETLIBS:
push ebp
mov ebp, esp
.L_0259:
lea eax, [_ENV+1132]
push eax
push dword ptr [ebp+8]
call _STRSETCOPY
add esp, 8
lea eax, [_ENV+1176]
push eax
push dword ptr [ebp+12]
call _STRSETCOPY
add esp, 8
.L_025A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBPRAGMAONCE
_FBPRAGMAONCE:
.L_025B:
push 1
push offset _Lt_0000
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jle .L_025E
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+888]
push eax
call _HFINDINCFILE
add esp, 8
test eax, eax
jne .L_0260
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+864]
push eax
lea eax, [_ENV+888]
push eax
call _HADDINCFILE
add esp, 12
.L_0260:
.L_025F:
.L_025E:
.L_025D:
.L_025C:
ret
.balign 16

.globl _FBINCLUDEFILE
_FBINCLUDEFILE:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_028B:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+900], 16
jl .L_028E
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
call _ERRHIDEFURTHERERRORS
jmp .L_028C
.L_028E:
.L_028D:
push 0
push -1
lea eax, [_ENV+304]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
push 260
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_02C7
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 260
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
push offset _Lt_02C7
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0291
push dword ptr [ebp+8]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0293
lea eax, [_ENV+64]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.L_0294:
cmp dword ptr [ebp-28], 0
je .L_0295
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_0019
push -1
push dword ptr [ebp-28]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 260
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
push offset _Lt_02C7
call _HFILEEXISTS
add esp, 4
test eax, eax
je .L_0299
jmp .L_0295
.L_0299:
.L_0298:
push dword ptr [ebp-28]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0294
.L_0295:
cmp dword ptr [ebp-28], 0
jne .L_029B
cmp dword ptr [_ENV+252], 0
je .L_029D
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 29
push offset _Lt_029E
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
mov eax, dword ptr [_ENV+900]
inc eax
push eax
call _HSHOWINCLUDE
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.L_029D:
.L_029C:
push 0
push 1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset _Lt_02A1
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_02A1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
push 23
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_028C
.L_029B:
.L_029A:
jmp .L_0292
.L_0293:
push 0
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
.L_0292:
.L_0291:
.L_0290:
mov eax, offset _Lt_02C7
mov dword ptr [ebp-20], eax
lea eax, [ebp-20]
push eax
call _IS_ROOTPATH
add esp, 4
test eax, eax
jne .L_02A7
push 0
push -1
push 260
push offset _Lt_02C7
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 260
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
.L_02A7:
.L_02A6:
mov eax, offset _Lt_02C7
mov dword ptr [ebp-24], eax
lea eax, [ebp-24]
push eax
call _IS_ROOTPATH
add esp, 4
test eax, eax
jne .L_02AC
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A1
push -1
push 260
push offset _Lt_02C7
push 2
push offset _Lt_02A1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_028C
.L_02AC:
.L_02AB:
push offset _Lt_02C7
call _SOLVE_PATH
add esp, 4
test eax, eax
jne .L_02B1
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A1
push -1
push 260
push offset _Lt_02C7
push 2
push offset _Lt_02A1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_028C
.L_02B1:
.L_02B0:
push 92
push offset _Lt_02C7
call _HREPLACESLASH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_02B6
push offset _Lt_02C7
lea eax, [_ENV+876]
push eax
call _HFINDINCFILE
add esp, 8
test eax, eax
je .L_02B8
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C7
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_028C
.L_02B8:
.L_02B7:
.L_02B6:
.L_02B5:
push offset _Lt_02C7
lea eax, [_ENV+888]
push eax
call _HFINDINCFILE
add esp, 8
test eax, eax
je .L_02BB
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C7
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_028C
.L_02BB:
.L_02BA:
push offset _Lt_02C7
lea eax, [_ENV+864]
push eax
lea eax, [_ENV+876]
push eax
call _HADDINCFILE
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_ENV+900]
imul eax, 280
add eax, dword ptr [_INFILETB]
lea ebx, [eax]
lea eax, [_ENV+300]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 70
rep movsd
pop esi
pop edi
inc dword ptr [_ENV+900]
push 0
push 260
push offset _Lt_02C7
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [_ENV+568], eax
cmp dword ptr [_ENV+252], 0
je .L_02BE
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C7
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push dword ptr [_ENV+900]
call _HSHOWINCLUDE
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_02BE:
.L_02BD:
call _fb_FileFree
mov dword ptr [_ENV+300], eax
push 0
push dword ptr [_ENV+300]
push 0
push 1
push 0
push offset _Lt_02C7
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_02C2
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A1
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_02A1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
call _ERRHIDEFURTHERERRORS
jmp .L_028C
.L_02C2:
.L_02C1:
push dword ptr [_ENV+300]
call _HCHECKFILEFORMAT
add esp, 4
mov dword ptr [_ENV+576], eax
call _LEXPUSHCTX
push 1
call _LEXINIT
add esp, 4
call _CPROGRAM
call _LEXPOPCTX
push dword ptr [_ENV+300]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_02C6
push 0
push 0
push offset _Lt_00BC
push 1670
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02C6:
dec dword ptr [_ENV+900]
lea eax, [_ENV+300]
mov ebx, dword ptr [_ENV+900]
imul ebx, 280
add ebx, dword ptr [_INFILETB]
lea ecx, [ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 70
rep movsd
pop esi
pop edi
pop ecx
.L_028C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02C7,260

.section .text
.balign 16

.globl _FBOVERRIDEFILENAME
_FBOVERRIDEFILENAME:
push ebp
mov ebp, esp
.L_02C8:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
lea eax, [_ENV+864]
push eax
push 0
call _HADDINCFILE
add esp, 12
mov dword ptr [_ENV+568], eax
.L_02C9:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETLANGID
_FBGETLANGID:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_02CA:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 3
push offset _Lt_006A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_02CE
.L_02CF:
mov dword ptr [ebp-4], 0
jmp .L_02CC
.L_02CE:
push 11
push offset _Lt_006B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_02D0
.L_02D1:
mov dword ptr [ebp-4], 1
jmp .L_02CC
.L_02D0:
push 7
push offset _Lt_006C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_02D2
.L_02D3:
mov dword ptr [ebp-4], 2
jmp .L_02CC
.L_02D2:
push 3
push offset _Lt_006D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_02D4
.L_02D5:
mov dword ptr [ebp-4], 3
jmp .L_02CC
.L_02D4:
mov dword ptr [ebp-4], -1
.L_02D6:
.L_02CC:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_02CB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETBACKENDVALISTTYPE
_FBGETBACKENDVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_02D7:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_02DB
.L_02DC:
call _FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02DF
.L_02E0:
mov dword ptr [ebp-8], 2
jmp .L_02DD
.L_02DF:
cmp dword ptr [ebp-16], 1
jne .L_02E1
.L_02E2:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_02E5
.L_02E6:
mov dword ptr [ebp-8], 2
jmp .L_02E3
.L_02E5:
mov dword ptr [ebp-8], 3
.L_02E7:
.L_02E3:
jmp .L_02DD
.L_02E1:
cmp dword ptr [ebp-16], 2
jne .L_02E8
.L_02E9:
mov dword ptr [ebp-8], 5
jmp .L_02DD
.L_02E8:
cmp dword ptr [ebp-16], 3
jne .L_02EA
.L_02EB:
mov dword ptr [ebp-8], 4
jmp .L_02DD
.L_02EA:
cmp dword ptr [ebp-16], 4
jne .L_02EC
.L_02ED:
mov dword ptr [ebp-8], 2
jmp .L_02DD
.L_02EC:
cmp dword ptr [ebp-16], 5
je .L_02EF
.L_02F0:
cmp dword ptr [ebp-16], 6
jne .L_02EE
.L_02EF:
mov dword ptr [ebp-8], 2
jmp .L_02DD
.L_02EE:
mov dword ptr [ebp-8], 2
.L_02F1:
.L_02DD:
jmp .L_02D9
.L_02DB:
cmp dword ptr [ebp-12], 0
jne .L_02F2
.L_02F3:
mov dword ptr [ebp-8], 1
jmp .L_02D9
.L_02F2:
cmp dword ptr [ebp-12], 2
jne .L_02F4
.L_02F5:
mov dword ptr [ebp-8], 1
jmp .L_02D9
.L_02F4:
cmp dword ptr [ebp-12], 3
jne .L_02F6
.L_02F7:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02FA
.L_02FB:
mov dword ptr [ebp-8], 2
jmp .L_02F8
.L_02FA:
mov dword ptr [ebp-8], 3
.L_02FC:
.L_02F8:
jmp .L_02D9
.L_02F6:
mov dword ptr [ebp-8], 1
.L_02FD:
.L_02D9:
cmp dword ptr [ebp-8], 2
jne .L_02FF
push 29
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0301
mov dword ptr [ebp-8], 1
.L_0301:
.L_0300:
.L_02FF:
.L_02FE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__fb:
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
_HFINDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009B:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
push offset _Lt_0302
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0302]
push dword ptr [ebp+8]
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.L_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0302,12

.section .text
.balign 16
_HADDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009D:
push 0
push dword ptr [ebp+16]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov dword ptr [_Lt_0303], eax
push dword ptr [_Lt_0303]
push dword ptr [ebp+16]
call _HUCASE
add esp, 8
push dword ptr [_Lt_0303]
call _HASHHASH
add esp, 4
mov dword ptr [_Lt_0304], eax
push dword ptr [_Lt_0304]
push dword ptr [_Lt_0303]
push dword ptr [ebp+12]
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [_Lt_0305], eax
cmp dword ptr [_Lt_0305], 0
jne .L_00A0
push dword ptr [_Lt_0304]
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0303]
push dword ptr [ebp+12]
call _HASHADD
add esp, 16
jmp .L_009F
.L_00A0:
push dword ptr [_Lt_0303]
call _free
add esp, 4
mov eax, dword ptr [_Lt_0305]
mov dword ptr [_Lt_0303], eax
.L_009F:
cmp dword ptr [ebp+8], 0
je .L_00A2
push dword ptr [_Lt_0304]
push dword ptr [_Lt_0303]
push dword ptr [ebp+8]
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [_Lt_0305], eax
cmp dword ptr [_Lt_0305], 0
jne .L_00A4
push dword ptr [_Lt_0304]
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0303]
push dword ptr [ebp+8]
call _HASHADD
add esp, 16
.L_00A4:
.L_00A3:
.L_00A2:
.L_00A1:
mov eax, dword ptr [_Lt_0303]
mov dword ptr [ebp-4], eax
.L_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0303,4
.balign 4
	.lcomm	_Lt_0305,4
.balign 4
	.lcomm	_Lt_0304,4

.section .text
.balign 16
_HUPDATELANGOPTIONS:
push ebx
.L_00D3:
mov eax, dword ptr [_ENV+136]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [_ENV+1040], ebx
.L_00D4:
pop ebx
ret
.balign 16
_HUPDATETARGETOPTIONS:
push ebx
.L_00D5:
lea eax, [_ENV+268]
mov ebx, dword ptr [_ENV+108]
imul ebx, 20
lea ecx, [_TARGETINFO+ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 5
rep movsd
pop esi
pop edi
pop ecx
cmp dword ptr [_ENV+264], 0
je .L_00D8
or dword ptr [_ENV+284], 32
.L_00D8:
.L_00D7:
.L_00D6:
pop ebx
ret
.balign 16
_HGETTARGETID:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016B:
mov eax, dword ptr [ebp+12]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-16], ebx
push 0
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 20
push dword ptr [_TARGETINFO+ebx]
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp+8], 0
je .L_016F
.L_0170:
cmp dword ptr [ebp+8], 3
je .L_016F
.L_0171:
cmp dword ptr [ebp+8], 4
jne .L_016E
.L_016F:
cmp dword ptr [ebp-16], 0
jne .L_0173
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit
add esp, 20
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_016C
.L_0173:
.L_0172:
.L_016E:
.L_016D:
mov ebx, dword ptr [ebp+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0175
push 0
push 6
push offset _Lt_0176
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_016C
.L_0175:
.L_0174:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push 2
push offset _Lt_0177
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
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
.L_016C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBPARSEPREDEFINES:
push ebp
mov ebp, esp
sub esp, 32
.L_01EF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.L_01F1:
cmp dword ptr [ebp-28], 0
je .L_01F2
push 1
push offset _Lt_01F3
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
push 1
call _fb_StrInstr
add esp, 12
dec eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jge .L_01F5
push -1
push dword ptr [ebp-28]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
.L_01F5:
.L_01F4:
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp-28]
call _fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-32]
dec eax
push eax
push dword ptr [ebp-28]
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_01F7
push 0
push 2
push offset _Lt_0004
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.L_01F7:
.L_01F6:
push 0
push 0
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _SYMBADDDEFINE
add esp, 24
push dword ptr [ebp-28]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_01F1
.L_01F2:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_01F0:
mov esp, ebp
pop ebp
ret
.balign 16
_FBPARSEPREINCLUDES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F8:
lea eax, [_ENV+32]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01FA:
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBSHOULDCONTINUE
and ebx, eax
je .L_01FB
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _FBINCLUDEFILE
add esp, 8
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01FA
.L_01FB:
.L_01F9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HAPPENDFBCTINF:
push ebp
mov ebp, esp
.L_01FC:
cmp dword ptr [_ENV+1220], 0
jne .L_01FF
mov dword ptr [_ENV+1220], -1
call dword ptr [_IR+212]
.L_01FF:
.L_01FE:
push dword ptr [ebp+8]
call dword ptr [_IR+216]
add esp, 4
.L_01FD:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITOBJINFO:
push ebp
mov ebp, esp
sub esp, 16
.L_0200:
lea eax, [_ENV+1132]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0202:
cmp dword ptr [ebp-4], 0
je .L_0203
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0205
push 0
call _OBJINFOENCODE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HAPPENDFBCTINF
add esp, 4
.L_0205:
.L_0204:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0202
.L_0203:
lea eax, [_ENV+1176]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0206:
cmp dword ptr [ebp-4], 0
je .L_0207
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0209
push 1
call _OBJINFOENCODE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HESCAPE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
.L_0209:
.L_0208:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0206
.L_0207:
cmp dword ptr [_ENV+232], 0
je .L_020B
push 2
call _OBJINFOENCODE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
.L_020B:
.L_020A:
cmp dword ptr [_ENV+236], 0
je .L_020D
push 3
call _OBJINFOENCODE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
.L_020D:
.L_020C:
cmp dword ptr [_ENV+136], 0
je .L_020F
push 4
call _OBJINFOENCODE
add esp, 4
push eax
call _HAPPENDFBCTINF
add esp, 4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call _HAPPENDFBCTINF
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_020F:
.L_020E:
cmp dword ptr [_ENV+1220], 0
je .L_0212
call dword ptr [_IR+220]
.L_0212:
.L_0211:
.L_0201:
mov esp, ebp
pop ebp
ret
.balign 16
_HSHOWINCLUDE:
push ebp
mov ebp, esp
sub esp, 32
.L_0213:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0216
.L_0219:
push 0
push 5
push offset _Lt_021A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0217:
inc dword ptr [ebp-28]
.L_0216:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .L_0219
.L_0218:
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0214:
mov esp, ebp
pop ebp
ret
.balign 16
_HONSKIPPEDFILE:
push ebp
mov ebp, esp
sub esp, 36
.L_021C:
cmp dword ptr [_ENV+252], 0
je .L_021F
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0221
push -1
push -1
push dword ptr [ebp+8]
call _PATHSTRIPCURDIR
add esp, 4
push eax
push 2
push offset _Lt_0220
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
mov eax, dword ptr [_ENV+900]
inc eax
push eax
call _HSHOWINCLUDE
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_021F:
.L_021E:
.L_021D:
mov esp, ebp
pop ebp
ret
.balign 16
_IS_ROOTPATH:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0261:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0264
jmp .L_0262
.L_0264:
.L_0263:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .L_0267
mov dword ptr [ebp-4], -1
.L_0267:
.L_0266:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
movzx eax, byte ptr [ecx]
cmp eax, 92
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_026A
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_026C
mov dword ptr [ebp-4], -1
jmp .L_026B
.L_026C:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push -1
push 2
push offset _Lt_0265
push -1
push 1
call _FBGETINPUTFILEPARENTDIR
push eax
call _fb_LEFT
add esp, 8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], -1
.L_026B:
.L_026A:
.L_0269:
.L_0262:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_GET_ROOTPATH_LEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_026F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
jne .L_0272
jmp .L_0270
.L_0272:
.L_0271:
mov dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .L_0274
mov dword ptr [ebp-4], 3
.L_0274:
.L_0273:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx]
cmp ecx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0276
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0278
mov dword ptr [ebp-4], 2
.L_0278:
.L_0277:
.L_0276:
.L_0275:
.L_0270:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SOLVE_PATH:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0279:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _GET_ROOTPATH_LEN
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [_Lt_0311+eax*4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-36], eax
jmp .L_027D
.L_0280:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 47
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-32], 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0282
cmp dword ptr [ebp-16], 0
jne .L_0284
jmp .L_0283
.L_0284:
mov eax, dword ptr [ebp-20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0285
dec dword ptr [ebp-28]
jmp .L_0283
.L_0285:
mov ebx, dword ptr [ebp-20]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0286
cmp dword ptr [ebp-8], 0
je .L_0288
dec dword ptr [ebp-8]
.L_0288:
.L_0287:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_Lt_0311+eax*4]
mov dword ptr [ebp-28], ebx
jmp .L_0283
.L_0286:
mov bl, byte ptr [ebp-32]
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
inc dword ptr [ebp-28]
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [_Lt_0311+ebx*4], eax
.L_0283:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .L_0281
.L_0282:
cmp dword ptr [ebp-32], 46
jne .L_028A
inc dword ptr [ebp-20]
.L_028A:
.L_0289:
inc dword ptr [ebp-16]
mov al, byte ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx], al
inc dword ptr [ebp-28]
.L_0281:
.L_027E:
inc dword ptr [ebp-24]
.L_027D:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-24], eax
jle .L_0280
.L_027F:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], -1
.L_027A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0311,524

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0019:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.globl _ENV
.balign 4
	.lcomm	_ENV,1224

.section .data
.balign 4
_INFILETB:
.long 0
.long 0
.int 0
.int 280
.int 0
.int 8
.skip 96,0
.balign 4
_LANGTB:
.int _Lt_006A
.int 536873471
.int _Lt_006B
.int 738066591
.int _Lt_006C
.int 738132125
.int _Lt_006D
.int 738131968
.balign 4
_Lt_006A:	.ascii	"fb\0"
.balign 4
_Lt_006B:	.ascii	"deprecated\0"
.balign 4
_Lt_006C:	.ascii	"fblite\0"
.balign 4
_Lt_006D:	.ascii	"qb\0"
.balign 4
_TARGETINFO:
.int _Lt_006F
.int 6
.int 1
.int 1
.int 276
.int _Lt_0070
.int 6
.int 1
.int 1
.int 277
.int _Lt_0071
.int 12
.int 3
.int 2
.int 201
.int _Lt_0072
.int 3
.int 3
.int 2
.int 264
.int _Lt_0073
.int 12
.int 1
.int 1
.int 272
.int _Lt_0074
.int 12
.int 3
.int 2
.int 185
.int _Lt_0075
.int 12
.int 3
.int 2
.int 153
.int _Lt_0076
.int 12
.int 3
.int 2
.int 153
.int _Lt_0077
.int 12
.int 3
.int 2
.int 185
.int _Lt_0078
.int 12
.int 3
.int 2
.int 601
.int _Lt_0079
.int 12
.int 3
.int 2
.int 185
.int _Lt_007A
.int 12
.int 3
.int 2
.int 25
.balign 4
_Lt_006F:	.ascii	"win32\0"
.balign 4
_Lt_0070:	.ascii	"cygwin\0"
.balign 4
_Lt_0071:	.ascii	"linux\0"
.balign 4
_Lt_0072:	.ascii	"dos\0"
.balign 4
_Lt_0073:	.ascii	"xbox\0"
.balign 4
_Lt_0074:	.ascii	"freebsd\0"
.balign 4
_Lt_0075:	.ascii	"dragonfly\0"
.balign 4
_Lt_0076:	.ascii	"solaris\0"
.balign 4
_Lt_0077:	.ascii	"openbsd\0"
.balign 4
_Lt_0078:	.ascii	"darwin\0"
.balign 4
_Lt_0079:	.ascii	"netbsd\0"
.balign 4
_Lt_007A:	.ascii	"js\0"
.balign 4
_CPUFAMILYINFO:
.int _Lt_007C
.int 1
.int _Lt_007D
.int 13
.int _Lt_007E
.int 15
.int _Lt_007F
.int 16
.int _Lt_0080
.int 17
.int _Lt_0081
.int 18
.int _Lt_0082
.int 19
.int _Lt_0083
.int 20
.balign 4
_Lt_007C:	.ascii	"x86\0"
.balign 4
_Lt_007D:	.ascii	"x86_64\0"
.balign 4
_Lt_007E:	.ascii	"arm\0"
.balign 4
_Lt_007F:	.ascii	"aarch64\0"
.balign 4
_Lt_0080:	.ascii	"powerpc\0"
.balign 4
_Lt_0081:	.ascii	"powerpc64\0"
.balign 4
_Lt_0082:	.ascii	"powerpc64le\0"
.balign 4
_Lt_0083:	.ascii	"asmjs\0"
.balign 4
_CPUTYPEINFO:
.int _Lt_0085
.int _Lt_0086
.int 0
.int 32
.int 0
.int _Lt_0087
.int _Lt_0088
.int 0
.int 32
.int 0
.int _Lt_0089
.int _Lt_008A
.int 0
.int 32
.int 0
.int _Lt_008B
.int _Lt_008C
.int 0
.int 32
.int 0
.long 0
.int _Lt_008D
.int 0
.int 32
.int 0
.long 0
.int _Lt_008E
.int 0
.int 32
.int 0
.long 0
.int _Lt_008F
.int 0
.int 32
.int 0
.long 0
.int _Lt_0090
.int 0
.int 32
.int 0
.long 0
.int _Lt_0091
.int 0
.int 32
.int 0
.long 0
.int _Lt_0092
.int 0
.int 32
.int 0
.long 0
.int _Lt_0093
.int 0
.int 32
.int 0
.long 0
.int _Lt_0094
.int 0
.int 32
.int 0
.int _Lt_0095
.int _Lt_0096
.int 0
.int 32
.int 0
.long 0
.int _Lt_0097
.int 1
.int 64
.int 0
.long 0
.int _Lt_0098
.int 2
.int 32
.int 0
.long 0
.int _Lt_0099
.int 2
.int 32
.int 0
.int _Lt_009A
.int _Lt_007F
.int 3
.int 64
.int 0
.long 0
.int _Lt_0080
.int 4
.int 32
.int -1
.long 0
.int _Lt_0081
.int 5
.int 64
.int -1
.long 0
.int _Lt_0082
.int 6
.int 64
.int 0
.long 0
.int _Lt_0083
.int 7
.int 32
.int 0
.balign 4
_Lt_0085:	.ascii	"i386\0"
.balign 4
_Lt_0086:	.ascii	"386\0"
.balign 4
_Lt_0087:	.ascii	"i486\0"
.balign 4
_Lt_0088:	.ascii	"486\0"
.balign 4
_Lt_0089:	.ascii	"i586\0"
.balign 4
_Lt_008A:	.ascii	"586\0"
.balign 4
_Lt_008B:	.ascii	"i686\0"
.balign 4
_Lt_008C:	.ascii	"686\0"
.balign 4
_Lt_008D:	.ascii	"athlon\0"
.balign 4
_Lt_008E:	.ascii	"athlon-xp\0"
.balign 4
_Lt_008F:	.ascii	"athlon-fx\0"
.balign 4
_Lt_0090:	.ascii	"k8-sse3\0"
.balign 4
_Lt_0091:	.ascii	"pentium-mmx\0"
.balign 4
_Lt_0092:	.ascii	"pentium2\0"
.balign 4
_Lt_0093:	.ascii	"pentium3\0"
.balign 4
_Lt_0094:	.ascii	"pentium4\0"
.balign 4
_Lt_0095:	.ascii	"prescott\0"
.balign 4
_Lt_0096:	.ascii	"pentium4-sse3\0"
.balign 4
_Lt_0097:	.ascii	"x86-64\0"
.balign 4
_Lt_0098:	.ascii	"armv6\0"
.balign 4
_Lt_0099:	.ascii	"armv7-a\0"
.balign 4
_Lt_009A:	.ascii	"armv8-a\0"
.balign 4
_Lt_00AF:	.ascii	"gas\0"
.balign 4
_Lt_00B2:	.ascii	"gcc\0"
.balign 4
_Lt_00B5:	.ascii	"llvm\0"
.balign 4
_Lt_00B8:	.ascii	"gas64\0"
.balign 4
_Lt_00BC:	.ascii	"src/compiler/fb.bas\0"
.balign 4
_Lt_0176:	.ascii	"win64\0"
.balign 4
_Lt_0177:	.ascii	"-\0"
.balign 4
_Lt_01A8:	.ascii	"native\0"
.balign 4
_Lt_01B5:	.ascii	"32\0"
.balign 4
_Lt_01B8:	.ascii	"64\0"
.balign 4
_Lt_01C3:	.ascii	"amd64\0"
.balign 4
_Lt_01D6:	.ascii	"XBoxStartup\0"
.balign 4
_Lt_01D7:	.ascii	"main\0"
.balign 4
_Lt_01DC:	.ascii	"fb_ctor__\0"
.balign 4
_Lt_01E7:	.ascii	"fbgfx?\0"
.balign 4
_Lt_01F3:	.ascii	"=\0"
.balign 4
_Lt_021A:	.ascii	" |  \0"
.balign 4
_Lt_0220:	.ascii	"(\0"
.balign 4
_Lt_0221:	.ascii	")\0"
.balign 4
_Lt_0265:	.ascii	":\0"
.balign 4
_Lt_029E:	.ascii	" (not found in include dirs)\0"
.balign 4
_Lt_02A1:	.ascii	"\"\0"

.section .ctors
.int _fb_ctor__fb
