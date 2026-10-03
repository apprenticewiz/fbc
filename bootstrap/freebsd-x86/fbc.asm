	.intel_syntax noprefix

.section .text
.balign 16

.globl FBCPUTYPEFROMGNUARCHINFO
FBCPUTYPEFROMGNUARCHINFO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0320:
mov dword ptr [ebp-8], 0
.L_0325:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0327
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_0321
.L_0327:
.L_0326:
.L_0323:
inc dword ptr [ebp-8]
.L_0322:
cmp dword ptr [ebp-8], 16
jle .L_0325
.L_0324:
mov dword ptr [ebp-4], -1
.L_0321:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCPARSEARGSFROMSTRING
FBCPARSEARGSFROMSTRING:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_0588:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_058A:
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_058E
jmp .L_058B
.L_058E:
.L_058D:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_058F:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_0590
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_0592
.L_0594:
cmp dword ptr [ebp-36], 0
jne .L_0596
jmp .L_0590
.L_0596:
.L_0595:
jmp .L_0591
.L_0597:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_059A
mov dword ptr [ebp-36], 0
jmp .L_0599
.L_059A:
cmp dword ptr [ebp-36], 0
jne .L_059B
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_059B:
.L_0599:
jmp .L_0591
.L_0592:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_0591
mov ebx, dword ptr [ebp-44]
jmp dword ptr [.L_059C+ebx*4-128]
.L_059C:
.int .L_0594
.int .L_0591
.int .L_0597
.int .L_0591
.int .L_0591
.int .L_0591
.int .L_0591
.int .L_0597
.L_0591:
inc dword ptr [ebp-32]
jmp .L_058F
.L_0590:
cmp dword ptr [ebp-32], 0
jne .L_059E
mov dword ptr [ebp-32], 1
jmp .L_059D
.L_059E:
push 0
push -1
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
call STRUNQUOTE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call HANDLEARG
add esp, 12
.L_059D:
push 0
push -1
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_058C:
jmp .L_058A
.L_058B:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0589:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl main
main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_Init
add esp, 12
call fb_InitSignals
call fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
push 1
push 44
push offset Lt_0005
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
call fb_End
add esp, 4
.L_0004:
.L_0002:
call FBCINIT
cmp dword ptr [ebp+8], 1
jne .L_08A4
push 0
call HPRINTOPTIONS
add esp, 4
push 1
call FBCEND
add esp, 4
.L_08A4:
.L_08A3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARSEARGS
add esp, 8
call HCHECKARGS
cmp dword ptr [FBC+60], 0
je .L_08A6
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 4
push 0
call FBCEND
add esp, 4
.L_08A6:
.L_08A5:
cmp dword ptr [FBC+56], 0
je .L_08A8
mov dword ptr [FBC+60], -1
push 0
call HPRINTVERSION
add esp, 4
.L_08A8:
.L_08A7:
cmp dword ptr [FBC+64], 0
je .L_08AA
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 4
push 1
call FBCEND
add esp, 4
.L_08AA:
.L_08A9:
.L_08AB:
call FBCDETERMINEPREFIX
call FBCSETUPCOMPILERPATHS
cmp dword ptr [FBC+56], 0
je .L_08AF
call FBCPRINTTARGETINFO
.L_08AF:
.L_08AE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+2490]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [FBC+264]
push ecx
call LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [FBC+232]
push ecx
call LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [FBC+68], 0
jl .L_08B2
mov ebx, dword ptr [FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08B5
.L_08B6:
push 1
call FBGETHOSTID
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_08B3
.L_08B5:
cmp dword ptr [ebp-24], 1
jne .L_08B7
.L_08B8:
push 1
call FBGETTARGETID
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_08B3
.L_08B7:
cmp dword ptr [ebp-24], 2
jne .L_08B9
.L_08BA:
cmp dword ptr [ebp-20], 0
je .L_08BC
call FBCDETERMINEMAINNAME
.L_08BC:
.L_08BB:
call HSETOUTNAME
push 1
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_08B3
.L_08B9:
cmp dword ptr [ebp-24], 3
jne .L_08BD
.L_08BE:
push 1
lea eax, [FBC+2751]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_08B3
.L_08BD:
cmp dword ptr [ebp-24], 4
jne .L_08BF
.L_08C0:
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_08BF:
.L_08B3:
push 0
call FBCEND
add esp, 4
.L_08B2:
.L_08B1:
call FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .L_08C2
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 4
push 1
call FBCEND
add esp, 4
.L_08C2:
.L_08C1:
call HCOMPILEMODULES
call FBSHOULDRESTART
test eax, eax
jne .L_08C4
jmp .L_08AC
.L_08C4:
.L_08C3:
push 8
call FBRESTARTENDREQUEST
add esp, 4
call ERRPREINIT
call HCHECKARGS
cmp dword ptr [FBC+56], 0
je .L_08C6
push 1
push 18
push offset Lt_08C7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_08C6:
.L_08C5:
.L_08AD:
jmp .L_08AB
.L_08AC:
call HCOMPILEXPM
test eax, eax
jne .L_08C9
push 1
call FBCEND
add esp, 4
.L_08C9:
.L_08C8:
cmp dword ptr [FBC+36], 0
je .L_08CB
push 0
call FBCEND
add esp, 4
.L_08CB:
.L_08CA:
push 2
call FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08CD
call HCOMPILESTAGE2MODULES
.L_08CD:
.L_08CC:
cmp dword ptr [FBC+44], 0
je .L_08CF
push 0
call FBCEND
add esp, 4
.L_08CF:
.L_08CE:
call HASSEMBLEMODULES
call HASSEMBLERCS
call HASSEMBLEXPM
push 0
call FBGETOPTION
add esp, 4
cmp eax, 3
jne .L_08D1
push 0
call FBCEND
add esp, 4
.L_08D1:
.L_08D0:
call HSETDEFAULTLIBPATHS
push 39
call FBGETOPTION
add esp, 4
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_08D3
call HCOLLECTOBJINFO
.L_08D3:
.L_08D2:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 1
jne .L_08D5
call HARCHIVEFILES
test eax, eax
jne .L_08D7
push 1
call FBCEND
add esp, 4
.L_08D7:
.L_08D6:
push 0
call FBCEND
add esp, 4
.L_08D5:
.L_08D4:
cmp dword ptr [FBC+1956], 0
jne .L_08D9
call HADDDEFAULTLIBS
.L_08D9:
.L_08D8:
call HEXCLUDELIBSFROMLINK
call HLINKFILES
test eax, eax
jne .L_08DB
push 1
call FBCEND
add esp, 4
.L_08DB:
.L_08DA:
push 0
call FBCEND
add esp, 4
.L_0003:
push 0
call fb_End
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0013:
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
.L_0014:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN10FBC_EXTOPTC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.L_0023:
.L_0024:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN10FBC_EXTOPTaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0025:
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
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 12
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 24
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
.L_0026:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN10FBC_EXTOPTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0029:
.L_002A:
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN9FBCIOFILEC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
.L_002B:
.L_002C:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN9FBCIOFILEaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_002D:
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
.L_002E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN9FBCIOFILED1Ev:
push ebp
mov ebp, esp
push ebx
.L_0031:
.L_0032:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6FBCCTXC1Ev:
push ebp
mov ebp, esp
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 72
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 104
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call _ZN9FBCIOFILEC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 156
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 200
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 232
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 308
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 352
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 396
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 440
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 484
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 745
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1006
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1136
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1140
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1401
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1568
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1697
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1826
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1956
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1960
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1964
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1968
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2229
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2490
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2751
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 3012
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 3276
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
.L_0033:
.L_0034:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6FBCCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0035:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 72
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 72
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 104
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 104
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call _ZN9FBCIOFILEaSERKS_
add esp, 8
mov ecx, dword ptr [ebp+8]
add ecx, 156
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 156
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 200
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 200
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 232
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 232
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 264
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 308
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 308
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 352
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 352
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 396
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 396
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 440
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 440
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 484
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 484
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 745
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 745
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 129
mov ecx, dword ptr [ebp+12]
add ecx, 1006
lea ebx, [ecx]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1006
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 1136
mov ebx, dword ptr [ebp+8]
add ebx, 1136
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push 261
mov eax, dword ptr [ebp+12]
add eax, 1140
lea ebx, [eax]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 1140
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1401
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1401
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 1532
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1532
lea eax, [ebx]
push eax
call _ZN10FBC_EXTOPTaSERKS_
add esp, 8
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1568
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1568
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1697
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1697
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1826
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1826
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 1956
mov ebx, dword ptr [ebp+8]
add ebx, 1956
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 1960
mov ebx, dword ptr [ebp+8]
add ebx, 1960
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 1964
mov ebx, dword ptr [ebp+8]
add ebx, 1964
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 1968
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 1968
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2229
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2229
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2490
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2490
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2751
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2751
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 3012
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 3012
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+8]
add ecx, 3276
mov ebx, dword ptr [ebp+12]
add ebx, 3276
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0036:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN6FBCCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0039:
.L_003A:
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea eax, [ebx]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBCINIT:
.L_0049:
mov dword ptr [FBC+20], -1
mov dword ptr [FBC+24], -1
mov dword ptr [FBC+32], -1
push -1
push 20
push 64
lea eax, [FBC+72]
push eax
call LISTINIT
add esp, 16
push -1
push 20
push 16
lea eax, [FBC+104]
push eax
call LISTINIT
add esp, 16
push 16
lea eax, [FBC+156]
push eax
call STRSETINIT
add esp, 8
push 64
lea eax, [FBC+200]
push eax
call STRLISTINIT
add esp, 8
push 16
lea eax, [FBC+232]
push eax
call STRLISTINIT
add esp, 8
push 16
lea eax, [FBC+264]
push eax
call STRSETINIT
add esp, 8
push 16
lea eax, [FBC+308]
push eax
call STRSETINIT
add esp, 8
push 16
lea eax, [FBC+352]
push eax
call STRSETINIT
add esp, 8
push 32
lea eax, [FBC+396]
push eax
call STRSETINIT
add esp, 8
push 32
lea eax, [FBC+440]
push eax
call STRSETINIT
add esp, 8
call FBGLOBALINIT
push 10
call FBGETOPTION
add esp, 4
mov dword ptr [FBC+3276], eax
mov dword ptr [FBC+68], -1
.L_004A:
ret
.balign 16
HSETOUTNAME:
push ebp
mov ebp, esp
sub esp, 44
.L_004B:
push 261
lea eax, [FBC+484]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_004E
jmp .L_004C
.L_004E:
.L_004D:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 1
jne .L_0050
push 0
push -1
push 3
push offset Lt_0052
push -1
push -1
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset Lt_0051
push -1
lea eax, [FBC+745]
push eax
call HSTRIPFILENAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
jmp .L_004C
.L_0050:
.L_004F:
push 0
push 261
lea eax, [FBC+745]
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
push 0
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0058
.L_0059:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_005D
.L_005E:
cmp dword ptr [ebp-8], 1
je .L_005D
.L_005F:
cmp dword ptr [ebp-8], 0
je .L_005D
.L_0060:
cmp dword ptr [ebp-8], 4
jne .L_005C
.L_005D:
push 0
push -1
push 5
push offset Lt_0061
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
jmp .L_005A
.L_005C:
cmp dword ptr [ebp-8], 11
jne .L_0063
.L_0064:
push 0
push -1
push 6
push offset Lt_0065
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
.L_0063:
.L_005A:
jmp .L_0056
.L_0058:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_006C
.L_006D:
cmp dword ptr [ebp-8], 0
jne .L_006B
.L_006C:
push 0
push -1
push 5
push offset Lt_006E
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-8], 2
je .L_0071
.L_0072:
cmp dword ptr [ebp-8], 9
je .L_0071
.L_0073:
cmp dword ptr [ebp-8], 5
je .L_0071
.L_0074:
cmp dword ptr [ebp-8], 8
je .L_0071
.L_0075:
cmp dword ptr [ebp-8], 10
je .L_0071
.L_0076:
cmp dword ptr [ebp-8], 6
je .L_0071
.L_0077:
cmp dword ptr [ebp-8], 7
jne .L_0070
.L_0071:
push 0
push -1
push 4
push offset Lt_0078
push -1
push -1
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset Lt_0051
push -1
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0069
.L_0070:
cmp dword ptr [ebp-8], 3
jne .L_007C
.L_007D:
push 0
push -1
push 5
push offset Lt_007E
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
.L_007C:
.L_0069:
.L_0067:
.L_0056:
.L_004C:
mov esp, ebp
pop ebp
ret
.balign 16
FBCEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
lea eax, [FBC+156]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_FileKill
add esp, 4
test eax, eax
je .L_0085
.L_0085:
.L_0084:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
push dword ptr [ebp+8]
call fb_End
add esp, 4
.L_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBCADDTEMP:
push ebp
mov ebp, esp
.L_0086:
push 0
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETADD
add esp, 12
.L_0087:
mov esp, ebp
pop ebp
ret
.balign 16
FBCREMOVETEMP:
push ebp
mov ebp, esp
.L_0088:
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETDEL
add esp, 8
.L_0089:
mov esp, ebp
pop ebp
ret
.balign 16
FBCADDOBJ:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
lea eax, [FBC+200]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGET1STOUTPUTLINEFROMCOMMAND:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call fb_FileFree
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpenPipe
add esp, 28
test eax, eax
je .L_008F
jmp .L_008D
.L_008F:
.L_008E:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp-16]
call fb_FileInput
add esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call fb_InputString
add esp, 12
push dword ptr [ebp-16]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0090
push 0
push 0
push offset Lt_0091
push 303
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0090:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_008D
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_008D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
FBCQUERYGCC:
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0092:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
push 3
call FBCFINDBIN
add esp, 8
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0096
.L_0097:
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-56], 1
jne .L_0099
.L_009A:
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0094
.L_0099:
cmp dword ptr [ebp-56], 4
jne .L_009C
.L_009D:
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0094
.L_009C:
cmp dword ptr [ebp-56], 5
je .L_009F
.L_00A0:
cmp dword ptr [ebp-56], 6
jne .L_009E
.L_009F:
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_009E:
.L_0094:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
call fb_FileFree
mov dword ptr [ebp-40], eax
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call fb_FileOpenPipe
add esp, 28
test eax, eax
je .L_00A3
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push dword ptr [ebp-40]
call fb_FileInput
add esp, 4
push 0
push -1
lea eax, [ebp-52]
push eax
call fb_InputString
add esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 4
test eax, eax
je .L_00A4
push 0
push 0
push offset Lt_0091
push 334
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00A4:
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0093
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0093:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
FBCBUILDPATHTOLIBFILE:
push ebp
mov ebp, esp
sub esp, 88
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset Lt_001A
push 261
lea eax, [FBC+2751]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_00AA
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00A6
.L_00AA:
.L_00A9:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
push 3
call FBCFINDBIN
add esp, 8
call FBGETCPUFAMILY
mov dword ptr [ebp-88], eax
cmp dword ptr [ebp-88], 0
jne .L_00AD
.L_00AE:
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-88], 1
jne .L_00AF
.L_00B0:
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-88], 4
jne .L_00B1
.L_00B2:
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-88], 5
je .L_00B4
.L_00B5:
cmp dword ptr [ebp-88], 6
jne .L_00B3
.L_00B4:
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_00B3:
.L_00AB:
push 0
push -1
push -1
push 0
push dword ptr [ebp+8]
push 19
push offset Lt_00B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-60]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_00BA
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
push dword ptr [ebp-24]
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BC
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00A6
.L_00BC:
.L_00BB:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_00A6:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
FBCFINDLIBFILE:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_00C0
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00C2
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_00BE:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
FBCADDDEFLIBPATH:
push ebp
mov ebp, esp
.L_00C3:
push -1
push dword ptr [ebp+8]
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 12
.L_00C4:
mov esp, ebp
pop ebp
ret
.balign 16
FBCADDLIBPATHFOR:
push ebp
mov ebp, esp
sub esp, 24
.L_00C5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_00C9
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 4
.L_00C9:
.L_00C8:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_00C6:
mov esp, ebp
pop ebp
ret
.balign 16
FBCFINDBIN:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_00CA:
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [FBCTOOLTB+eax+16]
and ebx, 4
test ebx, ebx
je .L_00CD
push 0
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
jmp .L_00CB
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
imul eax, 284
and dword ptr [FBCTOOLTB+eax+16], -9
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [FBCTOOLTB+eax+16]
and ebx, 2
test ebx, ebx
je .L_00CF
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_GetEnviron
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_00CF:
.L_00CE:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_00D1
push 0
push -1
push 1
push offset Lt_0000
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [FBC+2229]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00D5
push 2
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_00D8
.L_00D9:
cmp dword ptr [ebp+8], 0
jne .L_00DB
push 0
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset Lt_00DC
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCQUERYGCC
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp+8], 2
jne .L_00DE
push 0
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset Lt_00DF
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCQUERYGCC
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_00DE:
.L_00DA:
jmp .L_00D6
.L_00D8:
cmp dword ptr [ebp-28], 0
je .L_00E2
.L_00E3:
cmp dword ptr [ebp-28], 3
jne .L_00E1
.L_00E2:
cmp dword ptr [ebp+8], 2
jne .L_00E5
push 0
push 7
push offset Lt_00E6
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset Lt_0000
push -1
push 16
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx]
push eax
push 261
lea eax, [FBC+2229]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_00E5:
.L_00E4:
.L_00E1:
.L_00D6:
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00EA
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_00EC
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_00EE
push 0
push -1
push 1
push offset Lt_0000
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [FBC+3012]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
jmp .L_00ED
.L_00EE:
push 0
push -1
push 1
push offset Lt_0000
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 129
lea ebx, [FBC+1697]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_00ED:
jmp .L_00EB
.L_00EC:
push 0
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_00EB:
mov ebx, dword ptr [ebp+8]
imul ebx, 284
or dword ptr [FBCTOOLTB+ebx+16], 8
.L_00EA:
.L_00E9:
.L_00D1:
.L_00D0:
push 0
push -1
push dword ptr [ebp+12]
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBCRUNBIN:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-4], 0
.L_00F3:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call FBCFINDBIN
add esp, 8
cmp dword ptr [FBC+56], 0
je .L_00F6
push 2
push 3
push offset Lt_00F7
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset Lt_00F9
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
.L_00F6:
.L_00F5:
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
call fb_Exec
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FD
mov dword ptr [ebp-4], -1
jmp .L_00FC
.L_00FD:
cmp dword ptr [ebp-8], 0
jge .L_00FE
push 0
push 6
push -1
push dword ptr [ebp-20]
push 91
call ERRREPORTEX
add esp, 20
jmp .L_00FC
.L_00FE:
cmp dword ptr [FBC+56], 0
je .L_0100
push 1
push -1
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 4
push eax
push -1
push 29
push offset Lt_0102
push -1
push -1
lea eax, [ebp-20]
push eax
push -1
push 11
push offset Lt_0101
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
.L_0100:
.L_00FF:
.L_00FC:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_00F4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
CLEARDEFLIST:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_0107:
call fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 24
test eax, eax
je .L_010A
mov dword ptr [ebp-4], 0
jmp .L_0108
.L_010A:
.L_0109:
push 0
push -1
push 11
push offset Lt_010B
push -1
push dword ptr [ebp+8]
call HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
call fb_FileFree
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_010E
push dword ptr [ebp-8]
call fb_FileClose
add esp, 4
test eax, eax
je .L_010F
push 0
push 0
push offset Lt_0091
push 604
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010F:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0108
.L_010E:
.L_010D:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_0110:
push dword ptr [ebp-8]
call fb_FileEof
add esp, 4
test eax, eax
jne .L_0111
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 5
push offset Lt_0112
push -1
push 4
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0114
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call fb_StrLen
add esp, 8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
.L_0114:
.L_0113:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call fb_PrintString
add esp, 12
jmp .L_0110
.L_0111:
push dword ptr [ebp-36]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0116
push 0
push 0
push offset Lt_0091
push 619
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0116:
push dword ptr [ebp-8]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0117
push 0
push 0
push offset Lt_0091
push 620
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0117:
push dword ptr [ebp+8]
call fb_FileKill
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call rename
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0108
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0108:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGENERATEEMPTYDEFFILE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0118:
call fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 24
test eax, eax
je .L_011B
jmp .L_0119
.L_011B:
.L_011A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset Lt_011D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call fb_PrintString
add esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 4
test eax, eax
je .L_011E
push 0
push 0
push offset Lt_0091
push 634
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_011E:
mov dword ptr [ebp-4], -1
.L_0119:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
MAKEIMPLIB:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.L_011F:
push dword ptr [ebp+12]
call CLEARDEFLIST
add esp, 4
test eax, eax
jne .L_0122
jmp .L_0120
.L_0122:
.L_0121:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call fb_FileLen
add esp, 4
cmp edx, 0
jne .L_0124
cmp eax, 0
jne .L_0124
.L_08E9:
push dword ptr [ebp+12]
call HGENERATEEMPTYDEFFILE
add esp, 4
test eax, eax
jne .L_0126
jmp .L_0120
.L_0126:
.L_0125:
.L_0124:
.L_0123:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset Lt_0127
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push 13
push offset Lt_012C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 8
push offset Lt_012E
push -1
push -1
push dword ptr [ebp+8]
push -1
push 4
push offset Lt_0051
push -1
push -1
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 4
push eax
push 16
push offset Lt_012D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 6
push offset Lt_0134
call FBCRUNBIN
add esp, 12
test eax, eax
jne .L_0136
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0120
.L_0136:
.L_0135:
cmp dword ptr [FBC+40], 0
jne .L_0138
push dword ptr [ebp+12]
call FBCADDTEMP
add esp, 4
.L_0138:
.L_0137:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0120:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HFINDLIB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0139:
push 0
push -1
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_013C
push 0
push 3
push offset Lt_013D
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_013B
.L_013C:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 20
.L_013B:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_013A:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
FBCLINKERISGOLD:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_013E:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 7
jne .L_0141
mov dword ptr [ebp-4], 0
jmp .L_013F
jmp .L_0140
.L_0141:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
push 2
call FBCFINDBIN
add esp, 8
push 0
push 11
push offset Lt_0142
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 8
push offset Lt_0143
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-16]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
push eax
push 1
call fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_013F
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0140:
.L_013F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
FBCISUSINGGOLDLINKER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0144:
call FBTARGETSUPPORTSELF
test eax, eax
je .L_0147
call FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .L_0145
.L_0147:
.L_0146:
mov dword ptr [ebp-4], 0
.L_0145:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HLINKFILES:
push ebp
mov ebp, esp
sub esp, 124
push ebx
mov dword ptr [ebp-4], 0
.L_0148:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
call HSETOUTNAME
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_014C
.L_014D:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0150
.L_0151:
push 0
push 11
push offset Lt_0152
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_014E
.L_0150:
cmp dword ptr [ebp-52], 1
jne .L_0153
.L_0154:
push 0
push 12
push offset Lt_0155
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0153:
.L_014E:
jmp .L_014A
.L_014C:
cmp dword ptr [ebp-48], 2
jne .L_0156
.L_0157:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_015A
.L_015B:
push 0
push 13
push offset Lt_015C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0158
.L_015A:
cmp dword ptr [ebp-52], 1
jne .L_015D
.L_015E:
push 0
push 15
push offset Lt_015F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0158
.L_015D:
cmp dword ptr [ebp-52], 2
jne .L_0160
.L_0161:
push 0
push 22
push offset Lt_0162
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0160:
.L_0158:
jmp .L_014A
.L_0156:
cmp dword ptr [ebp-48], 9
jne .L_0163
.L_0164:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0167
.L_0168:
push 0
push 12
push offset Lt_0169
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0165
.L_0167:
cmp dword ptr [ebp-52], 1
jne .L_016A
.L_016B:
push 0
push 14
push offset Lt_016C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0165
.L_016A:
cmp dword ptr [ebp-52], 2
jne .L_016D
.L_016E:
push 0
push 13
push offset Lt_016F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_016D:
.L_0165:
.L_0163:
.L_014A:
push 0
push 5
push offset Lt_0172
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0171
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0174
push 0
push 9
push offset Lt_0175
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset Lt_0177
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
push 0
push 4
push offset Lt_0178
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
.L_0179:
cmp dword ptr [ebp-60], 0
je .L_017A
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_013D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .L_0179
.L_017A:
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_017F
push 0
push 5
push offset Lt_0180
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_017F:
.L_017E:
.L_0181:
cmp dword ptr [ebp-60], 0
je .L_0182
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_013D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .L_0181
.L_0182:
lea eax, [ebp-16]
push eax
push 10
push offset Lt_0186
call FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0149
.L_0174:
.L_0173:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0188
.L_018A:
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_018C
push 0
push 8
push offset Lt_018D
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 20
jmp .L_018B
.L_018C:
push 4
push offset Lt_018E
push 129
lea eax, [FBC+1401]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0190
push 0
push 8
push offset Lt_0191
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 20
.L_0190:
.L_018F:
.L_018B:
push 0
push 13
push offset Lt_0192
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0194
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
push 30
push offset Lt_0197
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
test eax, eax
jne .L_0199
push 0
push 26
push offset Lt_019A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0198
.L_0199:
push 0
push 22
push offset Lt_019B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0198:
.L_0194:
.L_0193:
jmp .L_0187
.L_019C:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_019E
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
push 12
push offset Lt_01A1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 4
push offset Lt_0051
push -1
push 3
lea eax, [ebp-28]
push eax
call fb_LEFT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A3
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
.L_01A3:
.L_01A2:
jmp .L_019D
.L_019E:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_01A5
.L_01A7:
push 0
push 38
push offset Lt_01A8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A4
.L_01A9:
push 0
push 38
push offset Lt_01AA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A4
.L_01AB:
push 0
push 34
push offset Lt_01AC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A4
.L_01AD:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_01B0
.L_01B1:
push 0
push 36
push offset Lt_01B2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01AE
.L_01B0:
cmp dword ptr [ebp-56], 1
jne .L_01B3
.L_01B4:
push 0
push 45
push offset Lt_01B5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01AE
.L_01B3:
cmp dword ptr [ebp-56], 2
jne .L_01B6
.L_01B7:
push 0
push 42
push offset Lt_01B8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01AE
.L_01B6:
cmp dword ptr [ebp-56], 3
jne .L_01B9
.L_01BA:
push 0
push 44
push offset Lt_01BB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01B9:
.L_01AE:
jmp .L_01A4
.L_01BC:
push 0
push 40
push offset Lt_01BD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A4
.L_01BE:
push 0
push 36
push offset Lt_01BF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01A4
.L_01A5:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .L_01A4
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_01C0+eax*4-8]
.L_01C0:
.int .L_01AD
.int .L_01A4
.int .L_01A4
.int .L_01A7
.int .L_01A9
.int .L_01AB
.int .L_01BE
.int .L_01A4
.int .L_01BC
.L_01A4:
.L_019D:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 33
mov ebx, eax
call FBGETOPTION
add esp, 4
or ebx, eax
push 3
call FBGETOPTION
add esp, 4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01C2
push 0
push 18
push offset Lt_01C3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01C2:
.L_01C1:
jmp .L_0187
.L_01C4:
push 0
push 66
push offset Lt_01C5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0187
.L_01C6:
push 0
push 4
push offset Lt_01C7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset Lt_01CE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-52], 0
.L_01D2:
push 0
push 5
push offset Lt_01D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [Lt_08F4+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_01D0:
inc dword ptr [ebp-52]
.L_01CF:
cmp dword ptr [ebp-52], 4
jle .L_01D2
.L_01D1:
push 0
push 14
push offset Lt_01D4
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_01D5
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 11
push offset Lt_01D6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_01D7
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_01D9
push 0
push 11
push offset Lt_01D6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_01DA
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01D9:
.L_01D8:
jmp .L_0187
.L_0188:
cmp dword ptr [ebp-48], 11
ja .L_0187
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01DB+eax*4]
.L_01DB:
.int .L_018A
.int .L_018A
.int .L_019C
.int .L_0187
.int .L_01C4
.int .L_019C
.int .L_019C
.int .L_019C
.int .L_019C
.int .L_019C
.int .L_019C
.int .L_01C6
.L_0187:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 3
jne .L_01DD
push 0
push 6
push offset Lt_01DE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset Lt_01E0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01DC
.L_01DD:
push 39
call FBGETOPTION
add esp, 4
push 3
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call FBGETOPTION
add esp, 4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .L_01E2
push 0
push 6
push offset Lt_01DE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 12
push offset Lt_01E4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01E2:
.L_01E1:
.L_01DC:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_01E6
.L_01E8:
push 38
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
push 0
push 10
push offset Lt_01E9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_01EA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_01EC
push 0
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push 0
push 5
push offset Lt_01EE
push -1
lea eax, [ebp-40]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
push 0
push 16
push offset Lt_01EF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01EC:
.L_01EB:
jmp .L_01E5
.L_01F0:
push 0
push 23
push offset Lt_01F1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01E5
.L_01E6:
cmp dword ptr [ebp-48], 4
ja .L_01E5
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01F2+eax*4]
.L_01F2:
.int .L_01E8
.int .L_01E8
.int .L_01E5
.int .L_01E5
.int .L_01F0
.L_01E5:
cmp dword ptr [FBC+1960], 0
je .L_01F4
push 0
push 10
push offset Lt_01F5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01F4:
.L_01F3:
push 261
lea eax, [FBC+1140]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_01F7
push 0
push 7
push offset Lt_01F8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01F7:
.L_01F6:
push 14
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_01FA
push 23
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_01FC
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01FE
cmp dword ptr [FBC+1964], 0
je .L_0200
push 0
push 4
push offset Lt_0201
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0200:
.L_01FF:
.L_01FE:
.L_01FD:
.L_01FC:
.L_01FB:
.L_01FA:
.L_01F9:
lea eax, [FBC+440]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0203
push 0
push 6
push offset Lt_0204
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0202
.L_0203:
push 0
push 5
push offset Lt_0205
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
.L_0202:
.L_0206:
cmp dword ptr [ebp-48], 0
je .L_0207
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-60]
push ebx
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0206
.L_0207:
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_020C
.L_020E:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0210
push 0
push -1
push offset Lt_0211
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_020F
.L_0210:
push 0
push -1
push offset Lt_0211
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0213
push 0
push -1
push offset Lt_0214
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0213:
.L_0212:
.L_020F:
jmp .L_020B
.L_0215:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0217
push 0
push -1
push offset Lt_0218
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0216
.L_0217:
push 0
push -1
push offset Lt_0219
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_021B
push 0
push -1
push offset Lt_021C
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_021B:
.L_021A:
.L_0216:
push 0
push -1
push offset Lt_021D
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_020B
.L_021E:
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0220
push 0
push -1
push offset Lt_0214
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_021F
.L_0220:
push 0
push -1
push offset Lt_0211
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_021F:
jmp .L_020B
.L_0221:
push 0
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_0223
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0225
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_0227
.L_0229:
push 0
push -1
push offset Lt_0214
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0226
.L_022A:
push 0
push -1
push offset Lt_022B
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0226
.L_0227:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_022A
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_022C+eax*4-32]
.L_022C:
.int .L_0229
.int .L_022A
.int .L_0229
.L_0226:
jmp .L_0224
.L_0225:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_022E
.L_0230:
push 0
push -1
push offset Lt_0211
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_022D
.L_0231:
push 0
push -1
push offset Lt_0232
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_022D
.L_022E:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_0231
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_0233+eax*4-32]
.L_0233:
.int .L_0230
.int .L_0231
.int .L_0230
.L_022D:
.L_0224:
.L_0223:
.L_0222:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0235
push 3
call FBGETOPTION
add esp, 4
cmp eax, 8
je .L_0237
push 0
push -1
push offset Lt_0238
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0237:
.L_0236:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_023A
push 0
push -1
push offset Lt_023B
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0239
.L_023A:
push 0
push -1
push offset Lt_021D
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0239:
.L_0235:
.L_0234:
jmp .L_020B
.L_023C:
push 0
push -1
push offset Lt_0211
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_020B
.L_020C:
cmp dword ptr [ebp-48], 10
ja .L_020B
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_023D+eax*4]
.L_023D:
.int .L_0215
.int .L_020E
.int .L_0221
.int .L_021E
.int .L_023C
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.L_020B:
cmp dword ptr [FBC+1956], 0
jne .L_023F
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0241
push 0
push 3
push offset Lt_013D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_001A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0243
push 0
push 11
push offset Lt_0244
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0242
.L_0243:
push 0
push 8
push offset Lt_0245
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0242:
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0241:
.L_0240:
.L_023F:
.L_023E:
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.L_0246:
cmp dword ptr [ebp-48], 0
je .L_0247
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_013D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0246
.L_0247:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
je .L_024C
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_024E
push 0
push 6
push offset Lt_024F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_024E:
.L_024D:
.L_024C:
.L_024B:
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.L_0250:
cmp dword ptr [ebp-48], 0
je .L_0251
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_013D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0250
.L_0251:
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.L_0255:
cmp dword ptr [ebp-48], 0
je .L_0256
cmp dword ptr [ebp-52], 0
je .L_0257
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08EB
.L_0257:
mov dword ptr [ebp-56], -1
.L_08EB:
cmp dword ptr [ebp-56], 0
je .L_025A
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset Lt_025B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
.L_025A:
.L_0259:
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0255
.L_0256:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
je .L_025F
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0261
push 0
push 6
push offset Lt_0262
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0260
.L_0261:
push 0
push 6
push offset Lt_0263
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0260:
.L_025F:
.L_025E:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0265
.L_0267:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0269
push 0
push -1
push offset Lt_026A
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0268
.L_0269:
push 0
push -1
push offset Lt_026B
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0268:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 8
je .L_026D
push 0
push -1
push offset Lt_026E
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_026D:
.L_026C:
jmp .L_0264
.L_026F:
push 0
push -1
push offset Lt_026B
call HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0264
.L_0265:
cmp dword ptr [ebp-48], 10
ja .L_0264
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0270+eax*4]
.L_0270:
.int .L_026F
.int .L_0264
.int .L_0267
.int .L_0264
.int .L_0264
.int .L_0267
.int .L_0267
.int .L_0267
.int .L_0267
.int .L_0264
.int .L_0267
.L_0264:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0272
push 0
push 26
push offset Lt_0273
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0272:
.L_0271:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0275
.L_0277:
push 0
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
je .L_0278
mov eax, dword ptr [ebp-52]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08EC
.L_0278:
mov dword ptr [ebp-56], -1
.L_08EC:
cmp dword ptr [ebp-56], 0
je .L_027B
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 1
je .L_027C
mov eax, dword ptr [ebp-60]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08ED
.L_027C:
mov dword ptr [ebp-64], -1
.L_08ED:
cmp dword ptr [ebp-64], 0
jne .L_027E
mov eax, dword ptr [ebp-60]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
jmp .L_08EE
.L_027E:
mov dword ptr [ebp-68], -1
.L_08EE:
cmp dword ptr [ebp-68], 0
jne .L_0280
mov eax, dword ptr [ebp-60]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_08EF
.L_0280:
mov dword ptr [ebp-72], -1
.L_08EF:
cmp dword ptr [ebp-72], 0
je .L_0283
push 0
push 16
push offset Lt_0284
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0283:
.L_0282:
.L_027B:
.L_027A:
jmp .L_0274
.L_0275:
mov eax, dword ptr [ebp-48]
add eax, 4294967294
cmp eax, 8
ja .L_0274
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0285+eax*4-8]
.L_0285:
.int .L_0277
.int .L_0274
.int .L_0274
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.int .L_0277
.L_0274:
push 0
push 2
push offset Lt_00F9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-44], 2
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_0287
mov dword ptr [ebp-44], 13
.L_0287:
.L_0286:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset Lt_0288
call FBCRUNBIN
add esp, 12
test eax, eax
jne .L_028A
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0149
.L_028A:
.L_0289:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_028C
.L_028E:
call fb_FileFree
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_0290
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0149
.L_0290:
.L_028F:
push 38
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-56], eax
push 4
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call fb_FilePut
add esp, 16
test eax, eax
je .L_0291
push 0
push 0
push offset Lt_0091
push 1268
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0291:
push dword ptr [ebp-52]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0292
push 0
push 0
push offset Lt_0091
push 1270
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0292:
jmp .L_028B
.L_0293:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0295
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call MAKEIMPLIB
add esp, 8
test eax, eax
jne .L_0297
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0149
.L_0297:
.L_0296:
.L_0295:
.L_0294:
jmp .L_028B
.L_0298:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 129
lea eax, [FBC+1826]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_029A
push 0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HSTRIPEXT
add esp, 4
push eax
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_029A:
.L_0299:
push 0
push 9
push offset Lt_029D
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push 0
push 129
lea eax, [FBC+1826]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_029E
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 14
call FBGETOPTION
add esp, 4
test eax, eax
je .L_02A0
push 0
push 12
push offset Lt_02A2
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset Lt_02A5
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_02A0:
.L_029F:
push 0
push 8
push offset Lt_02A7
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_02A9
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0171
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push 0
push 3
push offset Lt_02AA
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0171
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [FBC+56], 0
jne .L_02AC
push 0
push 6
push offset Lt_02AD
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
.L_02AC:
.L_02AB:
cmp dword ptr [FBC+56], 0
je .L_02AF
push 2
push 6
push offset Lt_02B0
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
lea eax, [ebp-72]
push eax
push 0
call fb_PrintString
add esp, 12
.L_02AF:
.L_02AE:
lea eax, [ebp-60]
push eax
push 9
call FBCFINDBIN
add esp, 8
push -1
lea eax, [ebp-72]
push eax
push -1
push 2
push offset Lt_00F9
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
call fb_Shell
add esp, 4
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_02B4
cmp dword ptr [FBC+56], 0
je .L_02B6
push 1
push -1
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 4
push eax
push 24
push offset Lt_02B7
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
.L_02B6:
.L_02B5:
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0149
.L_02B4:
.L_02B3:
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
jmp .L_028B
.L_028C:
cmp dword ptr [ebp-48], 4
ja .L_028B
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_02B9+eax*4]
.L_02B9:
.int .L_0293
.int .L_0293
.int .L_028B
.int .L_028E
.int .L_0298
.L_028B:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_08F4:
.ascii "CASE_INSENSITIVE_FS=1\0"
.skip 10,0
.ascii "TOTAL_MEMORY=67108864\0"
.skip 10,0
.ascii "ALLOW_MEMORY_GROWTH=1\0"
.skip 10,0
.ascii "RETAIN_COMPILER_SETTINGS=1\0"
.skip 5,0
.ascii "ASYNCIFY=1\0"
.skip 21,0

.section .text
.balign 16
HREADOBJINFO:
push ebp
mov ebp, esp
sub esp, 20
.L_02BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02BC:
lea eax, [ebp-12]
push eax
call OBJINFOREADNEXT
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_02C0
.L_02C2:
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 12
jmp .L_02BF
.L_02C3:
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 12
jmp .L_02BF
.L_02C4:
cmp dword ptr [FBC+3280], 0
jne .L_02C6
push 0
push 1
push -1
call OBJINFOGETFILENAME
push eax
push 20
call ERRREPORTWARNEX
add esp, 20
mov dword ptr [FBC+3280], -1
push -1
push 35
call FBSETOPTION
add esp, 8
.L_02C6:
.L_02C5:
jmp .L_02BF
.L_02C7:
push -1
push 36
call FBSETOPTION
add esp, 8
jmp .L_02BF
.L_02C8:
push dword ptr [ebp-12]
call FBGETLANGID
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02CA
mov dword ptr [ebp-16], 0
.L_02CA:
.L_02C9:
mov eax, dword ptr [FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02CC
push 0
push 1
push -1
call OBJINFOGETFILENAME
push eax
push 21
call ERRREPORTWARNEX
add esp, 20
mov eax, dword ptr [ebp-16]
mov dword ptr [FBC+3276], eax
push dword ptr [ebp-16]
push 10
call FBSETOPTION
add esp, 8
.L_02CC:
.L_02CB:
jmp .L_02BF
.L_02CD:
jmp .L_02BD
jmp .L_02BF
.L_02C0:
cmp dword ptr [ebp-20], 4
ja .L_02CD
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02CE+eax*4]
.L_02CE:
.int .L_02C2
.int .L_02C3
.int .L_02C4
.int .L_02C7
.int .L_02C8
.L_02BF:
.L_02BE:
jmp .L_02BC
.L_02BD:
call OBJINFOREADEND
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_02BB:
mov esp, ebp
pop ebp
ret
.balign 16
HCOLLECTOBJINFO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02CF:
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_02D1:
cmp dword ptr [ebp-4], 0
je .L_02D2
push dword ptr [ebp-4]
call OBJINFOREADOBJ
add esp, 4
call HREADOBJINFO
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_02D1
.L_02D2:
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_02D3:
cmp dword ptr [ebp-8], 0
je .L_02D4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02D6
lea eax, [FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call OBJINFOREADLIB
add esp, 8
call HREADOBJINFO
.L_02D6:
.L_02D5:
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_02D3
.L_02D4:
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_02D7:
cmp dword ptr [ebp-4], 0
je .L_02D8
push dword ptr [ebp-4]
call OBJINFOREADLIBFILE
add esp, 4
call HREADOBJINFO
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_02D7
.L_02D8:
.L_02D0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFATALINVALIDOPTION:
push ebp
mov ebp, esp
sub esp, 40
.L_02D9:
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02DE
mov dword ptr [ebp-40], 0
jmp .L_0900
.L_02DE:
mov dword ptr [ebp-40], -1
.L_0900:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_0171
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset Lt_0171
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 81
call ERRREPORTEX
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 1
call FBCEND
add esp, 4
.L_02DA:
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKWAITINGOBJFILE:
push ebp
mov ebp, esp
sub esp, 24
.L_02E0:
push -1
lea eax, [FBC+8]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_02E3
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
lea eax, [FBC+8]
push eax
push 4
push offset Lt_0170
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push 292
call ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 20
.L_02E3:
.L_02E2:
.L_02E1:
mov esp, ebp
pop ebp
ret
.balign 16
HSETIOFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_02E6:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jne .L_02E9
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_02EB
push 0
push -1
push 3
push offset Lt_02EC
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 20
jmp .L_02EA
.L_02EB:
push 0
push -1
push 3
push offset Lt_02EC
push -1
push dword ptr [ebp+12]
call HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 20
.L_02EA:
mov eax, dword ptr [ebp+8]
mov dword ptr [FBC+4], eax
jmp .L_02E8
.L_02E9:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_02E8:
lea eax, [FBC+8]
push eax
call FBCADDOBJ
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 20
.L_02E7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDBAS:
push ebp
mov ebp, esp
.L_02EF:
push 0
push dword ptr [ebp+8]
lea eax, [FBC+72]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 12
.L_02F0:
mov esp, ebp
pop ebp
ret
.balign 16
HPARSEGNUTRIPLET:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0310:
mov dword ptr [ebp-4], 0
.L_0315:
mov eax, dword ptr [ebp-4]
push dword ptr [GNUOSMAP+eax*8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
test eax, eax
jle .L_0317
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_0314
.L_0317:
.L_0316:
.L_0313:
inc dword ptr [ebp-4]
.L_0312:
cmp dword ptr [ebp-4], 11
jle .L_0315
.L_0314:
cmp dword ptr [ebp+12], 0
jle .L_0319
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-16], 0
.L_031D:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_031F
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_031C
.L_031F:
.L_031E:
.L_031B:
inc dword ptr [ebp-16]
.L_031A:
cmp dword ptr [ebp-16], 16
jle .L_031D
.L_031C:
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
.L_0319:
.L_0318:
.L_0311:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPARSETARGETARG:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_032C:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-20], 0
.L_0331:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0333
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_032D
.L_0333:
.L_0332:
.L_032F:
inc dword ptr [ebp-20]
.L_032E:
cmp dword ptr [ebp-20], 11
jle .L_0331
.L_0330:
push 1
push offset Lt_0334
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_0336
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call FBIDENTIFYOS
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCPUTYPEFROMCPUFAMILYID
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_0336:
.L_0335:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
test ecx, ecx
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_033A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_033A:
.L_0339:
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 4
.L_032D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HANDLEOPT:
push ebp
mov ebp, esp
sub esp, 144
push ebx
.L_033D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0340
.L_0342:
push dword ptr [ebp+12]
call FBCADDOBJ
add esp, 4
jmp .L_033F
.L_0343:
push 7
push offset Lt_0344
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [FBC+28], eax
push dword ptr [ebp+12]
call FBIDENTIFYFBCARCH
add esp, 4
mov dword ptr [FBC+24], eax
cmp dword ptr [FBC+24], 0
jge .L_0346
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset Lt_0347
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HFATALINVALIDOPTION
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_0346:
.L_0345:
jmp .L_033F
.L_034A:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_034E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_034D
.L_034F:
mov dword ptr [FBC+32], 1
jmp .L_034B
.L_034D:
push 6
push offset Lt_0351
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0350
.L_0352:
mov dword ptr [FBC+32], 0
jmp .L_034B
.L_0350:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0353:
.L_034B:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_0354:
push dword ptr [ebp+12]
call HADDBAS
add esp, 4
jmp .L_033F
.L_0355:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+3012]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_0356:
push 3
push 0
call FBSETOPTION
add esp, 8
mov dword ptr [FBC+52], -1
jmp .L_033F
.L_0357:
mov dword ptr [FBC+52], -1
jmp .L_033F
.L_0358:
push dword ptr [ebp+12]
call FBADDPREDEFINE
add esp, 4
jmp .L_033F
.L_0359:
push 2
push 0
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035A:
push -1
push 16
call FBSETOPTION
add esp, 8
push -1
push 21
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035B:
push -1
push 22
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035C:
push -1
push 15
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035D:
push -1
push 13
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035E:
push -1
push 14
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_035F:
push -1
push 19
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0360:
push -1
push 20
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0361:
push -1
push 21
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0362:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1006]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_0363:
push -1
push 16
call FBSETOPTION
add esp, 8
push -1
push 17
call FBSETOPTION
add esp, 8
push -1
push 21
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0364:
push -1
push 16
call FBSETOPTION
add esp, 8
push -1
push 17
call FBSETOPTION
add esp, 8
push -1
push 18
call FBSETOPTION
add esp, 8
push -1
push 19
call FBSETOPTION
add esp, 8
push -1
push 22
call FBSETOPTION
add esp, 8
push -1
push 20
call FBSETOPTION
add esp, 8
push -1
push 21
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0365:
push -1
push 33
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0366:
push -1
push 36
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0367:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0369
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0369:
.L_0368:
push 11
call FBGETOPTION
add esp, 4
and eax, dword ptr [ebp+16]
je .L_036B
push 0
push 1
push 0
push 30
call ERRREPORTWARN
add esp, 16
jmp .L_036A
.L_036B:
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 8
push -1
push 11
call FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_036D
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 8
.L_036D:
.L_036C:
.L_036A:
jmp .L_033F
.L_036E:
push 0
push -1
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 8
push offset Lt_0372
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0371
.L_0373:
mov dword ptr [ebp-8], 0
jmp .L_036F
.L_0371:
push 5
push offset Lt_0375
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0374
.L_0376:
mov dword ptr [ebp-8], 1
jmp .L_036F
.L_0374:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0377:
.L_036F:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 6
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0378:
push 0
push -1
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_037C
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_037E
.L_037F:
push 4
push offset Lt_037D
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_037B
.L_037E:
mov dword ptr [ebp-8], 0
jmp .L_0379
.L_037B:
push 4
push offset Lt_0381
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0380
.L_0382:
mov dword ptr [ebp-8], 1
jmp .L_0379
.L_0380:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0383:
.L_0379:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 5
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0384:
push -1
push 13
call FBSETOPTION
add esp, 8
push -1
push 14
call FBSETOPTION
add esp, 8
push -1
push 15
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_0385:
push 0
push -1
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_0389
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0388
.L_038A:
mov dword ptr [FBC+20], 0
jmp .L_0386
.L_0388:
push 4
push offset Lt_003F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_038B
.L_038C:
mov dword ptr [FBC+20], 1
jmp .L_0386
.L_038B:
push 5
push offset Lt_038E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_038D
.L_038F:
mov dword ptr [FBC+20], 2
jmp .L_0386
.L_038D:
push 6
push offset Lt_0391
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0390
.L_0392:
mov dword ptr [FBC+20], 3
jmp .L_0386
.L_0390:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0393:
.L_0386:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_0394:
mov dword ptr [FBC+64], -1
jmp .L_033F
.L_0395:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_0397:
push dword ptr [ebp+12]
call FBADDPREINCLUDE
add esp, 4
jmp .L_033F
.L_0398:
push 0
push dword ptr [ebp+12]
lea eax, [FBC+264]
push eax
call STRSETADD
add esp, 12
jmp .L_033F
.L_0399:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_039B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_039B:
.L_039A:
push 11
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_039D
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_039F
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 8
.L_039F:
.L_039E:
.L_039D:
.L_039C:
jmp .L_033F
.L_03A0:
push 1
push 0
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03A1:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [FBC+1136], -1
jmp .L_033F
.L_03A2:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+1140]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_03A3:
push 4
push offset Lt_03A4
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03A6
mov dword ptr [ebp-8], 2147483647
jmp .L_03A5
.L_03A6:
push dword ptr [ebp+12]
call fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03A8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_03A8:
.L_03A7:
.L_03A5:
push dword ptr [ebp-8]
push 26
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03A9:
push -1
push 35
call FBSETOPTION
add esp, 8
mov dword ptr [FBC+3280], -1
jmp .L_033F
.L_03AA:
mov dword ptr [FBC+1956], -1
jmp .L_033F
.L_03AB:
push 0
push 25
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03AC:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 8
lea eax, [ebp-100]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
lea eax, [ebp-124]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 2
push offset Lt_01EA
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call HSPLITSTR
add esp, 12
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 4
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayLBound
add esp, 8
mov dword ptr [ebp-140], eax
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayUBound
add esp, 8
mov dword ptr [ebp-144], eax
jmp .L_03AF
.L_03B2:
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jle .L_03B4
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [FBC+352]
push ebx
call STRSETADD
add esp, 12
.L_03B4:
.L_03B3:
.L_03B0:
inc dword ptr [ebp-140]
.L_03AF:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03B2
.L_03B1:
lea ebx, [ebp-124]
push ebx
call fb_ArrayStrErase
add esp, 4
jmp .L_033F
.L_03B5:
push 0
push 39
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03B6:
mov dword ptr [FBC+1964], 0
jmp .L_033F
.L_03B7:
call HCHECKWAITINGOBJFILE
cmp dword ptr [FBC+4], 0
je .L_03B9
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [FBC+4]
push dword ptr [ebx+12]
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03B8
.L_03B9:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrAssign
add esp, 20
.L_03B8:
jmp .L_033F
.L_03BA:
push 4
push offset Lt_03BB
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03BD
mov dword ptr [ebp-8], 3
jmp .L_03BC
.L_03BD:
push dword ptr [ebp+12]
call fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03BF
mov dword ptr [ebp-8], 0
jmp .L_03BE
.L_03BF:
cmp dword ptr [ebp-8], 3
jle .L_03C0
mov dword ptr [ebp-8], 3
.L_03C0:
.L_03BE:
.L_03BC:
push dword ptr [ebp-8]
push 8
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03C1:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
lea eax, [FBC+308]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_03C3:
push -1
push 37
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03C4:
push -1
push 1
call FBSETOPTION
add esp, 8
mov dword ptr [FBC+36], -1
jmp .L_033F
.L_03C5:
push 0
push -1
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 4
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 20
push 47
lea eax, [FBC+1968]
push eax
call HREPLACESLASH
add esp, 8
jmp .L_033F
.L_03C6:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_03CA
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C9
.L_03CB:
mov dword ptr [FBC+68], 0
jmp .L_03C7
.L_03C9:
push 7
push offset Lt_03CD
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CC
.L_03CE:
mov dword ptr [FBC+68], 1
jmp .L_03C7
.L_03CC:
push 2
push offset Lt_03D0
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CF
.L_03D1:
mov dword ptr [FBC+68], 2
jmp .L_03C7
.L_03CF:
push 9
push offset Lt_03D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03D2
.L_03D4:
mov dword ptr [FBC+68], 3
jmp .L_03C7
.L_03D2:
push 6
push offset Lt_03D6
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03D5
.L_03D7:
mov dword ptr [FBC+68], 4
jmp .L_03C7
.L_03D5:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_03D8:
.L_03C7:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_03D9:
push -1
push 23
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03DA:
push 3
push 0
call FBSETOPTION
add esp, 8
mov dword ptr [FBC+36], -1
mov dword ptr [FBC+40], -1
jmp .L_033F
.L_03DB:
mov dword ptr [FBC+40], -1
jmp .L_033F
.L_03DC:
push 3
push 0
call FBSETOPTION
add esp, 8
mov dword ptr [FBC+44], -1
mov dword ptr [FBC+48], -1
jmp .L_033F
.L_03DD:
mov dword ptr [FBC+48], -1
jmp .L_033F
.L_03DE:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_018E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03E1
.L_03E2:
push 1
push 41
call FBSETOPTION
add esp, 8
.L_03E1:
.L_03DF:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_03E3:
push -1
push 40
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03E4:
mov dword ptr [FBC+1960], -1
jmp .L_033F
.L_03E5:
mov dword ptr [FBC+1964], -1
jmp .L_033F
.L_03E6:
push dword ptr [ebp+12]
call fb_VALINT
add esp, 4
sal eax, 10
push eax
push 38
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03E7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call HPARSETARGETARG
add esp, 16
mov eax, dword ptr [ebp-8]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_03E9
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_03E9:
.L_03E8:
push dword ptr [ebp-8]
push 3
call FBSETOPTION
add esp, 8
push dword ptr [ebp-12]
push 4
call FBSETOPTION
add esp, 8
mov ebx, dword ptr [ebp-8]
cmp ebx, 5
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
or ebx, dword ptr [ebp-16]
je .L_03EB
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [FBC+1568]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset Lt_0334
push 129
lea ebx, [FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
push 129
lea eax, [FBC+1697]
push eax
call fb_StrAssign
add esp, 20
.L_03EB:
.L_03EA:
jmp .L_033F
.L_03ED:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_03EE:
mov dword ptr [FBC+56], -1
jmp .L_033F
.L_03EF:
push 0
push -1
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_03F3
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_03F5
.L_03F6:
push 2
push offset Lt_03F4
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F2
.L_03F5:
mov dword ptr [ebp-8], 0
jmp .L_03F0
.L_03F2:
push 2
push offset Lt_0006
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F7
.L_03F8:
mov dword ptr [ebp-8], 1
jmp .L_03F0
.L_03F7:
push 2
push offset Lt_03FA
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F9
.L_03FB:
mov dword ptr [ebp-8], 2
jmp .L_03F0
.L_03F9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_03FC:
.L_03F0:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 7
call FBSETOPTION
add esp, 8
jmp .L_033F
.L_03FD:
cmp dword ptr [ebp+16], 0
je .L_03FF
cmp dword ptr [FBC+60], 0
jne .L_0401
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 4
.L_0401:
.L_0400:
.L_03FF:
.L_03FE:
mov dword ptr [FBC+60], -1
jmp .L_033F
.L_0402:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_0406
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0405
.L_0407:
mov dword ptr [ebp-8], 0
jmp .L_0403
.L_0405:
push 5
push offset Lt_0409
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0408
.L_040A:
mov dword ptr [ebp-8], 4
jmp .L_0403
.L_0408:
push 6
push offset Lt_040C
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040B
.L_040D:
push 27
call FBGETOPTION
add esp, 4
or eax, 2
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_040B:
push 7
push offset Lt_040F
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040E
.L_0410:
push 27
call FBGETOPTION
add esp, 4
or eax, 1
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_040E:
push 5
push offset Lt_0412
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0411
.L_0413:
push 27
call FBGETOPTION
add esp, 4
or eax, 8
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_0411:
push 11
push offset Lt_0415
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0414
.L_0416:
push 27
call FBGETOPTION
add esp, 4
or eax, 32
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_0414:
push 10
push offset Lt_0418
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0417
.L_0419:
push 27
call FBGETOPTION
add esp, 4
or eax, 128
push eax
push 27
call FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .L_0403
.L_0417:
push 8
push offset Lt_041B
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_041A
.L_041C:
push 27
call FBGETOPTION
add esp, 4
or eax, 64
push eax
push 27
call FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .L_0403
.L_041A:
push 7
push offset Lt_041E
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_041D
.L_041F:
push 27
call FBGETOPTION
add esp, 4
or eax, 256
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_041D:
push 9
push offset Lt_0421
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0420
.L_0422:
push -1769
push 27
call FBSETOPTION
add esp, 8
cmp dword ptr [ebp-8], 1
jle .L_0424
mov dword ptr [ebp-8], 1
.L_0424:
.L_0423:
jmp .L_0403
.L_0420:
push 6
push offset Lt_0426
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0425
.L_0427:
push 27
call FBGETOPTION
add esp, 4
or eax, 512
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_0425:
push 7
push offset Lt_0429
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0428
.L_042A:
push 27
call FBGETOPTION
add esp, 4
or eax, 1024
push eax
push 27
call FBSETOPTION
add esp, 8
jmp .L_0403
.L_0428:
push dword ptr [ebp+12]
call fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
.L_042B:
.L_0403:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [ebp-8], 0
jl .L_042D
push dword ptr [ebp-8]
push 24
call FBSETOPTION
add esp, 8
.L_042D:
.L_042C:
jmp .L_033F
.L_042E:
push 0
push -1
push -1
push 2
push offset Lt_00F9
push -1
push -1
push offset Lt_00F9
push offset Lt_01EA
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 12
push eax
push 2
push offset Lt_00F9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1532]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1532]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_0432:
push 0
push -1
push -1
push 2
push offset Lt_00F9
push -1
push -1
push offset Lt_00F9
push offset Lt_01EA
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 12
push eax
push 2
push offset Lt_00F9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1556]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1556]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_0436:
push 0
push -1
push -1
push 2
push offset Lt_00F9
push -1
push -1
push offset Lt_00F9
push offset Lt_01EA
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 12
push eax
push 2
push offset Lt_00F9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1544]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [FBC+1544]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_043A:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033F
.L_043B:
push 0
push -1
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 13
push offset Lt_043F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_043E
.L_0440:
push -1
push 28
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_043E:
push 14
push offset Lt_0442
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0441
.L_0443:
push -1
push 29
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_0441:
push 12
push offset Lt_0445
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0444
.L_0446:
push -1
push 30
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_0444:
push 12
push offset Lt_0448
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0447
.L_0449:
push -1
push 31
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_0447:
push 5
push offset Lt_044B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_044A
.L_044C:
push -1
push 32
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_044A:
push 10
push offset Lt_044E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_044D
.L_044F:
push -1
push 42
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_044D:
push 10
push offset Lt_0451
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0450
.L_0452:
push -1
push 43
call FBSETOPTION
add esp, 8
jmp .L_043C
.L_0450:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 8
.L_0453:
.L_043C:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_033F
.L_0340:
cmp dword ptr [ebp-4], 70
ja .L_033F
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0454+eax*4]
.L_0454:
.int .L_0342
.int .L_0343
.int .L_034A
.int .L_0354
.int .L_0355
.int .L_0356
.int .L_0357
.int .L_0358
.int .L_0359
.int .L_0359
.int .L_035A
.int .L_035B
.int .L_035C
.int .L_035D
.int .L_035E
.int .L_035F
.int .L_0360
.int .L_0361
.int .L_0362
.int .L_0363
.int .L_0364
.int .L_0365
.int .L_0366
.int .L_0367
.int .L_036E
.int .L_0378
.int .L_0384
.int .L_0385
.int .L_0394
.int .L_0395
.int .L_0397
.int .L_0398
.int .L_0399
.int .L_03A0
.int .L_03A1
.int .L_03A2
.int .L_03A3
.int .L_03A9
.int .L_03AA
.int .L_03AB
.int .L_03AC
.int .L_03B5
.int .L_03B6
.int .L_03B7
.int .L_03BA
.int .L_03C1
.int .L_03C3
.int .L_03C4
.int .L_03C5
.int .L_03C6
.int .L_03D9
.int .L_03DA
.int .L_03DB
.int .L_03DC
.int .L_03DD
.int .L_03DE
.int .L_03E3
.int .L_03E4
.int .L_03E5
.int .L_03E6
.int .L_03E7
.int .L_03ED
.int .L_03EE
.int .L_03EF
.int .L_03FD
.int .L_0402
.int .L_042E
.int .L_0432
.int .L_0436
.int .L_043A
.int .L_043B
.L_033F:
.L_033E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
PARSEOPTION:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0455:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0458
.L_045A:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_045D
mov dword ptr [ebp-4], 0
jmp .L_0456
.L_045D:
.L_045C:
push 5
push offset Lt_045E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0460
mov dword ptr [ebp-4], 1
jmp .L_0456
.L_0460:
.L_045F:
push 4
push offset Lt_0461
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0463
mov dword ptr [ebp-4], 2
jmp .L_0456
.L_0463:
.L_0462:
jmp .L_0457
.L_0464:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0467
mov dword ptr [ebp-4], 3
jmp .L_0456
.L_0467:
.L_0466:
push 12
push offset Lt_0468
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_046A
mov dword ptr [ebp-4], 4
jmp .L_0456
.L_046A:
.L_0469:
jmp .L_0457
.L_046B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_046E
mov dword ptr [ebp-4], 5
jmp .L_0456
.L_046E:
.L_046D:
jmp .L_0457
.L_046F:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0472
mov dword ptr [ebp-4], 6
jmp .L_0456
.L_0472:
.L_0471:
jmp .L_0457
.L_0473:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0476
mov dword ptr [ebp-4], 7
jmp .L_0456
.L_0476:
.L_0475:
push 4
push offset Lt_0477
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0479
mov dword ptr [ebp-4], 8
jmp .L_0456
.L_0479:
.L_0478:
push 6
push offset Lt_047A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_047C
mov dword ptr [ebp-4], 9
jmp .L_0456
.L_047C:
.L_047B:
jmp .L_0457
.L_047D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0480
mov dword ptr [ebp-4], 10
jmp .L_0456
.L_0480:
.L_047F:
push 3
push offset Lt_0481
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0483
mov dword ptr [ebp-4], 19
jmp .L_0456
.L_0483:
.L_0482:
push 7
push offset Lt_0484
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0486
mov dword ptr [ebp-4], 11
jmp .L_0456
.L_0486:
.L_0485:
push 8
push offset Lt_0487
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0489
mov dword ptr [ebp-4], 12
jmp .L_0456
.L_0489:
.L_0488:
push 7
push offset Lt_048A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048C
mov dword ptr [ebp-4], 13
jmp .L_0456
.L_048C:
.L_048B:
push 11
push offset Lt_048D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048F
mov dword ptr [ebp-4], 14
jmp .L_0456
.L_048F:
.L_048E:
push 10
push offset Lt_0490
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0492
mov dword ptr [ebp-4], 15
jmp .L_0456
.L_0492:
.L_0491:
push 9
push offset Lt_0493
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0495
mov dword ptr [ebp-4], 16
jmp .L_0456
.L_0495:
.L_0494:
push 8
push offset Lt_0496
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0498
mov dword ptr [ebp-4], 17
jmp .L_0456
.L_0498:
.L_0497:
push 6
push offset Lt_0499
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_049B
mov dword ptr [ebp-4], 18
jmp .L_0456
.L_049B:
.L_049A:
push 4
push offset Lt_049C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_049E
mov dword ptr [ebp-4], 20
jmp .L_0456
.L_049E:
.L_049D:
push 7
push offset Lt_049F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A1
mov dword ptr [ebp-4], 21
jmp .L_0456
.L_04A1:
.L_04A0:
jmp .L_0457
.L_04A2:
push 6
push offset Lt_04A4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A6
mov dword ptr [ebp-4], 22
jmp .L_0456
.L_04A6:
.L_04A5:
push 10
push offset Lt_04A7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A9
mov dword ptr [ebp-4], 23
jmp .L_0456
.L_04A9:
.L_04A8:
push 7
push offset Lt_04AA
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AC
mov dword ptr [ebp-4], 24
jmp .L_0456
.L_04AC:
.L_04AB:
push 4
push offset Lt_04AD
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AF
mov dword ptr [ebp-4], 25
jmp .L_0456
.L_04AF:
.L_04AE:
jmp .L_0457
.L_04B0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04B3
mov dword ptr [ebp-4], 26
jmp .L_0456
.L_04B3:
.L_04B2:
push 4
push offset Lt_04B4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B6
mov dword ptr [ebp-4], 27
jmp .L_0456
.L_04B6:
.L_04B5:
jmp .L_0457
.L_04B7:
push 5
push offset Lt_04B9
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04BB
mov dword ptr [ebp-4], 28
jmp .L_0456
.L_04BB:
.L_04BA:
jmp .L_0457
.L_04BC:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04BF
mov dword ptr [ebp-4], 29
jmp .L_0456
.L_04BF:
.L_04BE:
push 8
push offset Lt_04C0
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C2
mov dword ptr [ebp-4], 30
jmp .L_0456
.L_04C2:
.L_04C1:
jmp .L_0457
.L_04C3:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04C6
mov dword ptr [ebp-4], 31
jmp .L_0456
.L_04C6:
.L_04C5:
push 5
push offset Lt_04C7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C9
mov dword ptr [ebp-4], 32
jmp .L_0456
.L_04C9:
.L_04C8:
push 4
push offset Lt_0051
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CB
mov dword ptr [ebp-4], 33
jmp .L_0456
.L_04CB:
.L_04CA:
jmp .L_0457
.L_04CC:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04CF
mov dword ptr [ebp-4], 34
jmp .L_0456
.L_04CF:
.L_04CE:
push 4
push offset Lt_04D0
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D2
mov dword ptr [ebp-4], 35
jmp .L_0456
.L_04D2:
.L_04D1:
push 7
push offset Lt_04D3
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D5
mov dword ptr [ebp-4], 36
jmp .L_0456
.L_04D5:
.L_04D4:
push 3
push offset Lt_04D6
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D8
mov dword ptr [ebp-4], 37
jmp .L_0456
.L_04D8:
.L_04D7:
jmp .L_0457
.L_04D9:
push 10
push offset Lt_04DB
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DD
mov dword ptr [ebp-4], 39
jmp .L_0456
.L_04DD:
.L_04DC:
push 10
push offset Lt_04DE
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E0
mov dword ptr [ebp-4], 38
jmp .L_0456
.L_04E0:
.L_04DF:
push 6
push offset Lt_04E1
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E3
mov dword ptr [ebp-4], 40
jmp .L_0456
.L_04E3:
.L_04E2:
push 10
push offset Lt_04E4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E6
mov dword ptr [ebp-4], 41
jmp .L_0456
.L_04E6:
.L_04E5:
push 8
push offset Lt_04E7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E9
mov dword ptr [ebp-4], 42
jmp .L_0456
.L_04E9:
.L_04E8:
jmp .L_0457
.L_04EA:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04ED
mov dword ptr [ebp-4], 43
jmp .L_0456
.L_04ED:
.L_04EC:
jmp .L_0457
.L_04EE:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_04F1
mov dword ptr [ebp-4], 44
jmp .L_0456
.L_04F1:
.L_04F0:
jmp .L_0457
.L_04F2:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04F5
mov dword ptr [ebp-4], 45
jmp .L_0456
.L_04F5:
.L_04F4:
push 4
push offset Lt_04F6
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F8
mov dword ptr [ebp-4], 46
jmp .L_0456
.L_04F8:
.L_04F7:
push 3
push offset Lt_04F9
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FB
mov dword ptr [ebp-4], 47
jmp .L_0456
.L_04FB:
.L_04FA:
push 7
push offset Lt_04FC
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FE
mov dword ptr [ebp-4], 48
jmp .L_0456
.L_04FE:
.L_04FD:
push 6
push offset Lt_04FF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0501
mov dword ptr [ebp-4], 49
jmp .L_0456
.L_0501:
.L_0500:
push 8
push offset Lt_0502
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0504
mov dword ptr [ebp-4], 50
jmp .L_0456
.L_0504:
.L_0503:
jmp .L_0457
.L_0505:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0508
mov dword ptr [ebp-4], 51
jmp .L_0456
.L_0508:
.L_0507:
push 3
push offset Lt_0509
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_050B
mov dword ptr [ebp-4], 53
jmp .L_0456
.L_050B:
.L_050A:
jmp .L_0457
.L_050C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_050F
mov dword ptr [ebp-4], 52
jmp .L_0456
.L_050F:
.L_050E:
push 3
push offset Lt_0510
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0512
mov dword ptr [ebp-4], 54
jmp .L_0456
.L_0512:
.L_0511:
jmp .L_0457
.L_0513:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0516
mov dword ptr [ebp-4], 55
jmp .L_0456
.L_0516:
.L_0515:
push 13
push offset Lt_0517
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0519
mov dword ptr [ebp-4], 56
jmp .L_0456
.L_0519:
.L_0518:
push 7
push offset Lt_051A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_051C
mov dword ptr [ebp-4], 57
jmp .L_0456
.L_051C:
.L_051B:
push 6
push offset Lt_051D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_051F
mov dword ptr [ebp-4], 58
jmp .L_0456
.L_051F:
.L_051E:
jmp .L_0457
.L_0520:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0523
mov dword ptr [ebp-4], 59
jmp .L_0456
.L_0523:
.L_0522:
push 7
push offset Lt_03CD
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0525
mov dword ptr [ebp-4], 60
jmp .L_0456
.L_0525:
.L_0524:
push 6
push offset Lt_0526
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0528
mov dword ptr [ebp-4], 61
jmp .L_0456
.L_0528:
.L_0527:
jmp .L_0457
.L_0529:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_052C
mov dword ptr [ebp-4], 62
jmp .L_0456
.L_052C:
.L_052B:
push 4
push offset Lt_052D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_052F
mov dword ptr [ebp-4], 63
jmp .L_0456
.L_052F:
.L_052E:
push 8
push offset Lt_0530
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0532
mov dword ptr [ebp-4], 64
jmp .L_0456
.L_0532:
.L_0531:
jmp .L_0457
.L_0533:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0536
mov dword ptr [ebp-4], 65
jmp .L_0456
.L_0536:
.L_0535:
jmp .L_0457
.L_0537:
push 3
push offset Lt_0539
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_053B
mov dword ptr [ebp-4], 66
jmp .L_0456
.L_053B:
.L_053A:
push 3
push offset Lt_053C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_053E
mov dword ptr [ebp-4], 68
jmp .L_0456
.L_053E:
.L_053D:
push 3
push offset Lt_053F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0541
mov dword ptr [ebp-4], 67
jmp .L_0456
.L_0541:
.L_0540:
jmp .L_0457
.L_0542:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0544
mov dword ptr [ebp-4], 69
jmp .L_0456
.L_0544:
.L_0543:
jmp .L_0457
.L_0545:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0548
mov dword ptr [ebp-4], 70
jmp .L_0456
.L_0548:
.L_0547:
jmp .L_0457
.L_0549:
push 9
push offset Lt_054A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_054C
mov dword ptr [ebp-4], 64
jmp .L_0456
.L_054C:
.L_054B:
push 6
push offset Lt_054D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_054F
mov dword ptr [ebp-4], 28
jmp .L_0456
.L_054F:
.L_054E:
jmp .L_0457
.L_0458:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_0457
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0550+eax*4-180]
.L_0550:
.int .L_0549
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_046F
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_04EE
.int .L_0457
.int .L_0457
.int .L_050C
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0537
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_0457
.int .L_045A
.int .L_0464
.int .L_046B
.int .L_0473
.int .L_047D
.int .L_04A2
.int .L_04B0
.int .L_04B7
.int .L_04BC
.int .L_0457
.int .L_0457
.int .L_04C3
.int .L_04CC
.int .L_04D9
.int .L_04EA
.int .L_04F2
.int .L_0457
.int .L_0505
.int .L_0513
.int .L_0520
.int .L_0457
.int .L_0529
.int .L_0533
.int .L_0542
.int .L_0457
.int .L_0545
.L_0457:
mov dword ptr [ebp-4], -1
.L_0456:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HANDLEARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0551:
cmp dword ptr [FBC], 0
jl .L_0554
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0556
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0556:
.L_0555:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [FBC]
call HANDLEOPT
add esp, 12
mov dword ptr [FBC], -1
jmp .L_0552
.L_0554:
.L_0553:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0558
jmp .L_0552
.L_0558:
.L_0557:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_055B
.L_055C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_055E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_055E:
.L_055D:
push dword ptr [ebp-8]
call PARSEOPTION
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_0560
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0560:
.L_055F:
cmp dword ptr [ebp+12], 0
je .L_0562
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_0564
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0564:
.L_0563:
.L_0562:
.L_0561:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8], 0
je .L_0566
mov ebx, dword ptr [ebp-12]
mov dword ptr [FBC], ebx
jmp .L_0565
.L_0566:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HANDLEOPT
add esp, 12
.L_0565:
cmp dword ptr [ebp+12], 0
je .L_0568
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8+2], 0
je .L_056A
push 2
call FBRESTARTBEGINREQUEST
add esp, 4
.L_056A:
.L_0569:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [CMDLINEOPTIONTB+ebx*8+4], 0
je .L_056C
push 8
call FBRESTARTBEGINREQUEST
add esp, 4
.L_056C:
.L_056B:
.L_0568:
.L_0567:
jmp .L_0559
.L_055B:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_056D
.L_056F:
cmp dword ptr [Lt_0908], 128
jle .L_0571
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_0571:
.L_0570:
push 0
push -1
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0573
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0573:
.L_0572:
inc dword ptr [Lt_0908]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call PARSEARGSFROMFILE
add esp, 8
dec dword ptr [Lt_0908]
jmp .L_0559
.L_056D:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HGETFILEEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 4
push offset Lt_0577
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0576
.L_0578:
push dword ptr [ebp+8]
call HADDBAS
add esp, 4
jmp .L_0575
.L_0576:
push 2
push offset Lt_04EB
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0579
.L_057A:
push dword ptr [ebp+8]
call FBCADDOBJ
add esp, 4
jmp .L_0575
.L_0579:
push 2
push offset Lt_045B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_057B
.L_057C:
push dword ptr [ebp+8]
lea eax, [FBC+232]
push eax
call STRLISTAPPEND
add esp, 8
jmp .L_0575
.L_057B:
push 3
push offset Lt_057E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0580
.L_0581:
push 4
push offset Lt_057F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_057D
.L_0580:
push -1
push dword ptr [ebp+8]
lea eax, [FBC+104]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 12
jmp .L_0575
.L_057D:
push 4
push offset Lt_0583
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0582
.L_0584:
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_0586
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0586:
.L_0585:
push -1
push dword ptr [ebp+8]
lea eax, [FBC+136]
push eax
call HSETIOFILE
add esp, 12
jmp .L_0575
.L_0582:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 8
.L_0587:
.L_0575:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0574:
.L_0559:
.L_0552:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0908:
.int 0

.section .text
.balign 16
PARSEARGSFROMFILE:
push ebp
mov ebp, esp
sub esp, 16
.L_059F:
call fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 24
test eax, eax
je .L_05A2
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05A2:
.L_05A1:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_05A3:
push dword ptr [ebp-4]
call fb_FileEof
add esp, 4
test eax, eax
jne .L_05A4
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call fb_FileLineInput
add esp, 16
push 0
push -1
lea eax, [ebp-16]
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call FBCPARSEARGSFROMSTRING
add esp, 12
jmp .L_05A3
.L_05A4:
push dword ptr [ebp-4]
call fb_FileClose
add esp, 4
test eax, eax
je .L_05A5
push 0
push 0
push offset Lt_0091
push 2712
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05A5:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_05A0:
mov esp, ebp
pop ebp
ret
.balign 16
HTARGETNEEDSPIC:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_05A6:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .L_05A9
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_05AB
.L_05AD:
mov dword ptr [ebp-4], -1
jmp .L_05AA
.L_05AB:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05AA
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_05AE+eax*4-8]
.L_05AE:
.int .L_05AD
.int .L_05AA
.int .L_05AA
.int .L_05AD
.int .L_05AD
.int .L_05AD
.int .L_05AD
.int .L_05AA
.int .L_05AD
.L_05AA:
.L_05A9:
.L_05A8:
.L_05A7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HPARSEARGS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_05AF:
mov dword ptr [FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05B2
.L_05B5:
push 0
push 0
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 0
lea ebx, [ebp-12]
push ebx
call HANDLEARG
add esp, 12
.L_05B3:
inc dword ptr [ebp-16]
.L_05B2:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05B5
.L_05B4:
cmp dword ptr [FBC], 0
jl .L_05B7
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add eax, ebx
push dword ptr [eax-4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HFATALINVALIDOPTION
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_05B7:
.L_05B6:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_05B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKARGS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.L_05B9:
call HCHECKWAITINGOBJFILE
push 5
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_05BC
push 7
call FBGETOPTION
add esp, 4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05BE
push 0
push 1
push -1
push offset Lt_0000
push 284
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05BE:
.L_05BD:
.L_05BC:
.L_05BB:
cmp dword ptr [FBC+24], 0
jl .L_05C0
push dword ptr [FBC+24]
push 4
call FBSETOPTION
add esp, 8
.L_05C0:
.L_05BF:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05C2
push 0
push 1
push -1
call FBGETFBCARCH
push eax
push 82
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05C2:
.L_05C1:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05C4
push 0
push 2
call FBSETOPTION
add esp, 8
jmp .L_05C3
.L_05C4:
push 1
push 2
call FBSETOPTION
add esp, 8
.L_05C3:
cmp dword ptr [FBC+20], 0
jl .L_05C6
push dword ptr [FBC+20]
push 2
call FBSETOPTION
add esp, 8
.L_05C6:
.L_05C5:
push 2
call FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call FBGETCPUFAMILY
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .L_05C8
push 0
push 1
push -1
call FBGETFBCARCH
push eax
push 83
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05C8:
.L_05C7:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_05CA
.L_05CC:
jmp .L_05C9
.L_05CD:
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05CF
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05CF:
.L_05CE:
jmp .L_05C9
.L_05CA:
cmp dword ptr [ebp-4], 4
ja .L_05CD
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05D0+eax*4]
.L_05D0:
.int .L_05CC
.int .L_05CC
.int .L_05CD
.int .L_05CD
.int .L_05CC
.L_05C9:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_05D2
.L_05D4:
jmp .L_05D1
.L_05D5:
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_05D7
push 0
push 1
push -1
push dword ptr [FBC+136]
push 291
call ERRREPORTEX
add esp, 20
push 1
call FBCEND
add esp, 4
.L_05D7:
.L_05D6:
jmp .L_05D1
.L_05D2:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05D5
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05D8+eax*4-8]
.L_05D8:
.int .L_05D4
.int .L_05D5
.int .L_05D5
.int .L_05D4
.int .L_05D4
.int .L_05D4
.int .L_05D4
.int .L_05D4
.int .L_05D4
.L_05D1:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05DA
push 1
push 9
call FBSETOPTION
add esp, 8
.L_05DA:
.L_05D9:
cmp dword ptr [FBC+32], 0
jl .L_05DC
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05E0
.L_05E1:
cmp dword ptr [ebp-4], 1
jne .L_05DF
.L_05E0:
jmp .L_05DD
.L_05DF:
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
call FBGETTARGETID
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
push 319
call ERRREPORTEX
add esp, 20
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_05E2:
.L_05DD:
push 2
call FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05E5
push 0
push 1
push -1
push offset Lt_0000
push 84
call ERRREPORTEX
add esp, 20
.L_05E5:
.L_05E4:
push dword ptr [FBC+32]
push 9
call FBSETOPTION
add esp, 8
.L_05DC:
.L_05DB:
push 0
call FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_05E7
call HTARGETNEEDSPIC
test eax, eax
je .L_05E9
push -1
push 37
call FBSETOPTION
add esp, 8
.L_05E9:
.L_05E8:
.L_05E7:
.L_05E6:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_05EB
push 0
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_05ED
push 0
push 1
push -1
push offset Lt_0000
push 85
call ERRREPORTEX
add esp, 20
jmp .L_05EC
.L_05ED:
call HTARGETNEEDSPIC
test eax, eax
jne .L_05EE
push 0
push 1
push -1
push offset Lt_0000
push 86
call ERRREPORTEX
add esp, 20
.L_05EE:
.L_05EC:
.L_05EB:
.L_05EA:
push -1
push 38
call FBSETOPTION
add esp, 8
.L_05BA:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBCDETERMINEPREFIX:
push ebp
mov ebp, esp
sub esp, 36
.L_05EF:
push 261
lea eax, [FBC+1968]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_05F2
push 0
push -1
push 2
push offset Lt_001A
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call fb_ExePath
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
push -1
push 4
push offset Lt_05F6
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 20
jmp .L_05F1
.L_05F2:
push 0
push -1
push 2
push offset Lt_001A
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [FBC+1968]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_05F1:
.L_05F0:
mov esp, ebp
pop ebp
ret
.balign 16
FBCSETUPCOMPILERPATHS:
push ebp
mov ebp, esp
sub esp, 168
.L_05FA:
push 0
push -1
call FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 10
push offset Lt_05FC
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_0051
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 20
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_05FE
push 0
push -1
push 261
lea eax, [FBC+3012]
push eax
push -1
push 2
push offset Lt_001A
push -1
push 4
push offset Lt_05FF
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 20
jmp .L_05FD
.L_05FE:
push 0
push -1
push 129
lea eax, [FBC+1697]
push eax
push -1
push 2
push offset Lt_001A
push -1
push 4
push offset Lt_05FF
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 20
.L_05FD:
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset Lt_001A
push -1
push 8
push offset Lt_04C0
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+2490]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset Lt_001A
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset Lt_001A
push -1
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [FBC+2751]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_05FB:
mov esp, ebp
pop ebp
ret
.balign 16
FBCPRINTTARGETINFO:
push ebp
mov ebp, esp
sub esp, 36
.L_060E:
push 0
push -1
call FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
push 0
call FBGETFBCARCH
push eax
push 3
push offset Lt_0610
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 3
push offset Lt_0610
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
call FBGETBITS
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0613
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 129
lea eax, [FBC+1568]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_0615
push 0
push 3
push offset Lt_0616
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0617
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0615:
.L_0614:
push 2
push 7
push offset Lt_0618
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 12
push 2
push 8
push offset Lt_0619
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 2
call FBGETOPTION
add esp, 4
push eax
call FBGETBACKENDNAME
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_060F:
mov esp, ebp
pop ebp
ret
.balign 16
FBCDETERMINEMAINNAME:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_061A:
push 261
lea eax, [FBC+745]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_061D
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_061F
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [FBC+745]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_061E
.L_061F:
lea ebx, [FBC+200]
push ebx
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0621
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0620
.L_0621:
push 0
push 8
push offset Lt_0622
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 20
.L_0620:
.L_061E:
push 0
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+745]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HSTRIPEXT
add esp, 4
push eax
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_061D:
.L_061C:
.L_061B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETASMNAME:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0624:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0627
mov eax, offset Lt_0628
mov dword ptr [ebp-16], eax
jmp .L_0626
.L_0627:
mov eax, offset Lt_02EC
mov dword ptr [ebp-16], eax
.L_0626:
cmp dword ptr [ebp+12], 1
jne .L_062A
push 2
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_062D
.L_062E:
mov eax, offset Lt_062F
mov dword ptr [ebp-16], eax
jmp .L_062B
.L_062D:
cmp dword ptr [ebp-44], 2
jne .L_0630
.L_0631:
mov eax, offset Lt_0632
mov dword ptr [ebp-16], eax
.L_0630:
.L_062B:
.L_062A:
.L_0629:
push 0
push -1
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_0625:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HCOMPILEBAS:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_0634:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 1
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0637
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0639
push 0
push -1
push 8
push offset Lt_063A
push -1
lea eax, [ebp-32]
push eax
call HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
.L_0639:
.L_0638:
.L_0637:
.L_0636:
cmp dword ptr [FBC+56], 0
je .L_063D
push 2
push 11
push offset Lt_063E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call fb_PrintString
add esp, 12
push 0
push 4
push offset Lt_063F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 0
lea eax, [ebp-20]
push eax
push 0
call fb_PrintString
add esp, 12
push 1
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0641
push 0
push -1
lea eax, [ebp-32]
push eax
push 6
push offset Lt_0642
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
.L_0641:
.L_0640:
cmp dword ptr [ebp+12], 0
je .L_0645
push 0
push 14
push offset Lt_0646
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_0644
.L_0645:
cmp dword ptr [ebp+16], 0
je .L_0647
push 0
push 23
push offset Lt_0648
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0647:
.L_0644:
push 1
push 0
call fb_PrintVoid
add esp, 8
.L_063D:
.L_063C:
push 12
call FBGETOPTION
add esp, 4
cmp eax, -1
je .L_064A
push 12
call FBGETOPTION
add esp, 4
push eax
push 10
call FBSETOPTION
add esp, 8
.L_064A:
.L_0649:
push 10
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
push 0
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_064C
push 3
push 0
call FBSETOPTION
add esp, 8
.L_064C:
.L_064B:
.L_064D:
mov eax, dword ptr [FBC+40]
not eax
push 2
mov ebx, eax
call FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov esi, eax
call FBGETOPTION
add esp, 4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_0651
lea esi, [ebp-20]
push esi
call FBCADDTEMP
add esp, 4
jmp .L_0650
.L_0651:
cmp dword ptr [ebp+20], 1
jne .L_0652
call FBRESTARTGETCOUNT
test eax, eax
jle .L_0654
lea eax, [ebp-20]
push eax
call FBCREMOVETEMP
add esp, 4
.L_0654:
.L_0653:
.L_0652:
.L_0650:
push dword ptr [ebp+20]
lea eax, [FBC+1006]
push eax
push dword ptr [ebp+12]
call FBINIT
add esp, 12
cmp dword ptr [ebp+16], 0
je .L_0656
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBSETLIBS
add esp, 8
jmp .L_0655
.L_0656:
lea eax, [FBC+308]
push eax
lea eax, [FBC+264]
push eax
call FBSETLIBS
add esp, 8
.L_0655:
push dword ptr [ebp+12]
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call FBCOMPILE
add esp, 16
call ERRGETCOUNT
test eax, eax
jle .L_0658
push 1
call FBCEND
add esp, 4
.L_0658:
.L_0657:
call FBSHOULDRESTART
test eax, eax
jne .L_065A
jmp .L_064E
.L_065A:
.L_0659:
push 7
call FBRESTARTENDREQUEST
add esp, 4
call FBEND
call FBSHOULDRESTART
test eax, eax
je .L_065C
push 12
call FBGETOPTION
add esp, 4
cmp eax, -1
jne .L_065E
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 8
.L_065E:
.L_065D:
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0635
.L_065C:
.L_065B:
.L_064F:
jmp .L_064D
.L_064E:
cmp dword ptr [ebp+16], 0
jne .L_0660
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBGETLIBS
add esp, 8
.L_0660:
.L_065F:
call FBEND
cmp dword ptr [ebp+16], 0
je .L_0662
push dword ptr [ebp-8]
push 0
call FBSETOPTION
add esp, 8
.L_0662:
.L_0661:
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0635:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCOMPILEMODULES:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0663:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0668
.L_0669:
cmp dword ptr [ebp-32], 2
jne .L_0667
.L_0668:
mov dword ptr [ebp-8], -1
jmp .L_0665
.L_0667:
mov eax, dword ptr [FBC+1136]
mov dword ptr [ebp-8], eax
.L_066A:
.L_0665:
cmp dword ptr [ebp-8], 0
je .L_066C
push 0
push -1
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
.L_066C:
.L_066B:
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_066E
lea eax, [FBC+264]
push eax
lea eax, [FBC+396]
push eax
call STRSETCOPY
add esp, 8
lea eax, [FBC+308]
push eax
lea eax, [FBC+440]
push eax
call STRSETCOPY
add esp, 8
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0664
.L_066E:
.L_066D:
mov dword ptr [ebp-28], 0
.L_066F:
cmp dword ptr [ebp-8], 0
je .L_0673
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_0673:
.L_0672:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call HCOMPILEBAS
add esp, 16
call FBSHOULDRESTART
test eax, eax
je .L_0676
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0664
.L_0676:
.L_0675:
push dword ptr [ebp-24]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-24], eax
.L_0671:
cmp dword ptr [ebp-24], 0
jne .L_066F
.L_0670:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0664:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPARSEXPM:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0677:
push 0
push 28
push offset Lt_0679
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push 21
push offset Lt_067A
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push 20
push offset Lt_067B
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
call fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 24
test eax, eax
je .L_067D
jmp .L_0678
.L_067D:
.L_067C:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 10
push offset Lt_067E
push -1
push 0
lea eax, [ebp-20]
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0680
push dword ptr [ebp-8]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0681
push 0
push 0
push offset Lt_0091
push 3292
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0681:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0678
.L_0680:
.L_067F:
mov dword ptr [ebp-24], 0
.L_0682:
push dword ptr [ebp-8]
call fb_FileEof
add esp, 4
test eax, eax
jne .L_0683
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 8
push 1
push offset Lt_0128
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-20]
push eax
push 1
call fb_StrInstr
add esp, 12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset Lt_0128
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-20]
push eax
push 2
call fb_StrInstr
add esp, 12
push eax
lea eax, [ebp-20]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_0685
cmp dword ptr [ebp-24], 0
je .L_0687
push 0
push 5
push offset Lt_0688
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
.L_0687:
.L_0686:
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset Lt_0689
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-24], -1
.L_0685:
.L_0684:
jmp .L_0682
.L_0683:
push dword ptr [ebp-8]
call fb_FileClose
add esp, 4
test eax, eax
je .L_068B
push 0
push 0
push offset Lt_0091
push 3322
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_068B:
cmp dword ptr [ebp-24], 0
jne .L_068D
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0678
.L_068D:
.L_068C:
push 0
push 5
push offset Lt_068E
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push 4
push offset Lt_068F
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push 67
push offset Lt_0690
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
push 0
push 74
push offset Lt_0693
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-4], -1
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0678:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCOMPILEXPM:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0694:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0697
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0695
.L_0697:
.L_0696:
push 0
push -1
lea eax, [FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push -1
push dword ptr [FBC+148]
call fb_StrLen
add esp, 8
test eax, eax
jle .L_0699
push 0
push -1
push dword ptr [FBC+148]
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [FBC+136]
push eax
call fb_StrAssign
add esp, 20
.L_0699:
.L_0698:
push 0
push 5
push offset Lt_069A
push -1
lea eax, [FBC+136]
push eax
call fb_StrConcatByref
add esp, 20
cmp dword ptr [FBC+56], 0
je .L_069C
push 2
push 13
push offset Lt_069D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push -1
lea eax, [FBC+136]
push eax
push -1
push 5
push offset Lt_063F
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
.L_069C:
.L_069B:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call HPARSEXPM
add esp, 8
test eax, eax
jne .L_06A1
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0695
.L_06A1:
.L_06A0:
call fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [FBC+136]
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_06A3
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0695
.L_06A3:
.L_06A2:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call fb_PrintString
add esp, 12
push dword ptr [ebp-32]
call fb_FileClose
add esp, 4
test eax, eax
je .L_06A5
push 0
push 0
push offset Lt_0091
push 3378
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06A5:
cmp dword ptr [FBC+40], 0
jne .L_06A7
lea eax, [FBC+136]
push eax
call FBCADDTEMP
add esp, 4
.L_06A7:
.L_06A6:
push -1
push 0
push 0
lea eax, [FBC+136]
push eax
call HCOMPILEBAS
add esp, 16
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0695:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCOMPILESTAGE2MODULE:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_06A8:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [FBC+48]
not eax
push 3
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06AB
lea eax, [ebp-28]
push eax
call FBCADDTEMP
add esp, 4
.L_06AB:
.L_06AA:
push 2
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06AE
.L_06AF:
mov byte ptr [ebp-36], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06B2
.L_06B3:
push 0
push 6
push offset Lt_06B4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06B0
.L_06B2:
cmp dword ptr [ebp-40], 1
jne .L_06B5
.L_06B6:
push 0
push 6
push offset Lt_06B7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov byte ptr [ebp-36], 1
jmp .L_06B0
.L_06B5:
cmp dword ptr [ebp-40], 4
jne .L_06B8
.L_06B9:
push 0
push 6
push offset Lt_06B4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06B0
.L_06B8:
cmp dword ptr [ebp-40], 5
je .L_06BB
.L_06BC:
cmp dword ptr [ebp-40], 6
jne .L_06BA
.L_06BB:
push 0
push 6
push offset Lt_06B7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov byte ptr [ebp-36], 1
.L_06BA:
.L_06B0:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06BE
call FBGETCPUFAMILY
cmp eax, 4
je .L_06BF
call FBGETCPUFAMILY
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_091B
.L_06BF:
mov dword ptr [ebp-40], -1
.L_091B:
cmp dword ptr [ebp-40], 0
jne .L_06C1
call FBGETCPUFAMILY
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_091C
.L_06C1:
mov dword ptr [ebp-44], -1
.L_091C:
cmp dword ptr [ebp-44], 0
je .L_06C4
cmp dword ptr [FBC+28], 0
je .L_06C6
push 0
push 14
push offset Lt_06C7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06C5
.L_06C6:
push 0
push -1
push -1
push 2
push offset Lt_00F9
push -1
push 0
call FBGETGCCARCH
push eax
push 7
push offset Lt_06C8
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
.L_06C5:
jmp .L_06C3
.L_06C4:
cmp dword ptr [FBC+28], 0
je .L_06CD
push 0
push 15
push offset Lt_06CE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06CC
.L_06CD:
push 0
push -1
push -1
push 2
push offset Lt_00F9
push -1
push 0
call FBGETGCCARCH
push eax
push 8
push offset Lt_06CF
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
.L_06CC:
.L_06C3:
.L_06BE:
.L_06BD:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_06D4
push 0
push 7
push offset Lt_06D5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06D4:
.L_06D3:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06D7
push 0
push 30
push offset Lt_06D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset Lt_06D9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06D6
.L_06D7:
push 0
push 90
push offset Lt_06DC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset Lt_06DD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06D6:
push 0
push 11
push offset Lt_06DE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 39
push offset Lt_06DF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_06E0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 22
push offset Lt_06E1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-40], eax
jmp .L_06E3
.L_06E5:
push 0
push 12
push offset Lt_06E6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06E2
.L_06E3:
cmp dword ptr [ebp-40], 0
ja .L_06E2
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_06E7+eax*4]
.L_06E7:
.int .L_06E5
.L_06E2:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06E9
push 0
push 17
push offset Lt_06EA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06E9:
.L_06E8:
push 0
push 17
push offset Lt_06EB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset Lt_06EC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 49
push offset Lt_06ED
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push 21
mov ebx, eax
call FBGETOPTION
add esp, 4
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_06EF
push 0
push 17
push offset Lt_06F0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06EE
.L_06EF:
push 0
push 20
push offset Lt_06F1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06EE:
push 0
push 13
push offset Lt_06F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 14
call FBGETOPTION
add esp, 4
test eax, eax
je .L_06F4
push 0
push 4
push offset Lt_06F5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06F4:
.L_06F3:
push 5
call FBGETOPTION
add esp, 4
cmp eax, 1
jne .L_06F7
push 0
push 21
push offset Lt_06F8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06F7:
.L_06F6:
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_06FC
.L_06FD:
cmp dword ptr [ebp-40], 1
jne .L_06FB
.L_06FC:
push 9
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_06FF
push 0
push 13
push offset Lt_0700
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06FF:
.L_06FE:
.L_06FB:
.L_06F9:
jmp .L_06AC
.L_06AE:
cmp dword ptr [ebp-32], 2
jne .L_0701
.L_0702:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0705
.L_0706:
push 0
push 12
push offset Lt_0707
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_0705:
cmp dword ptr [ebp-36], 1
jne .L_0708
.L_0709:
push 0
push 15
push offset Lt_070A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_0708:
cmp dword ptr [ebp-36], 2
jne .L_070B
.L_070C:
push 0
push 12
push offset Lt_070D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_070B:
cmp dword ptr [ebp-36], 3
jne .L_070E
.L_070F:
push 0
push 16
push offset Lt_0710
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_070E:
cmp dword ptr [ebp-36], 4
jne .L_0711
.L_0712:
push 0
push 15
push offset Lt_0713
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_0711:
cmp dword ptr [ebp-36], 5
jne .L_0714
.L_0715:
push 0
push 17
push offset Lt_0716
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0703
.L_0714:
cmp dword ptr [ebp-36], 6
jne .L_0717
.L_0718:
push 0
push 19
push offset Lt_0719
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0717:
.L_0703:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_071B
push 0
push 23
push offset Lt_071C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_071B:
.L_071A:
push 0
push 3
push offset Lt_06E0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00F9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0720
.L_0721:
cmp dword ptr [ebp-36], 1
jne .L_071F
.L_0720:
push 9
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_0723
push 0
push 24
push offset Lt_0724
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0723:
.L_0722:
.L_071F:
.L_071D:
.L_0701:
.L_06AC:
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0725
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset Lt_0726
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 2
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_0729
.L_072A:
mov dword ptr [ebp-36], 3
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_072C
mov dword ptr [ebp-36], 14
.L_072C:
.L_072B:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset Lt_072D
call FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0727
.L_0729:
cmp dword ptr [ebp-32], 2
jne .L_072E
.L_072F:
lea eax, [ebp-16]
push eax
push 4
push offset Lt_0730
call FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
.L_072E:
.L_0727:
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_06A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCOMPILESTAGE2MODULES:
push ebp
mov ebp, esp
sub esp, 4
.L_0731:
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0733:
cmp dword ptr [ebp-4], 0
je .L_0734
push dword ptr [ebp-4]
call HCOMPILESTAGE2MODULE
add esp, 4
test eax, eax
jne .L_0736
push 1
call FBCEND
add esp, 4
.L_0736:
.L_0735:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0733
.L_0734:
.L_0732:
mov esp, ebp
pop ebp
ret
.balign 16
HASSEMBLEMODULE:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0737:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_073B
.L_073C:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_073E
push 0
push 12
push offset Lt_0169
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_073D
.L_073E:
push 0
push 6
push offset Lt_073F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_073D:
jmp .L_0739
.L_073B:
cmp dword ptr [ebp-60], 1
jne .L_0740
.L_0741:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0743
push 0
push 14
push offset Lt_016C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0742
.L_0743:
push 0
push 6
push offset Lt_0744
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0742:
.L_0740:
.L_0739:
push 14
call FBGETOPTION
add esp, 4
test eax, eax
jne .L_0746
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0748
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_074A
push 0
push 24
push offset Lt_074B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_074A:
.L_0749:
.L_0748:
.L_0747:
.L_0746:
.L_0745:
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_074D
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0738
.L_074D:
.L_074C:
push 0
push 2
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0725
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset Lt_0726
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-56], 0
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_0752
mov dword ptr [ebp-56], 11
.L_0752:
.L_0751:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset Lt_0753
call FBCRUNBIN
add esp, 12
test eax, eax
jne .L_0755
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0738
.L_0755:
.L_0754:
cmp dword ptr [FBC+52], 0
jne .L_0757
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 4
.L_0757:
.L_0756:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0738:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HASSEMBLEMODULES:
push ebp
mov ebp, esp
sub esp, 4
.L_0758:
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_075A:
cmp dword ptr [ebp-4], 0
je .L_075B
push dword ptr [ebp-4]
call HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .L_075D
push 1
call FBCEND
add esp, 4
.L_075D:
.L_075C:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_075A
.L_075B:
.L_0759:
mov esp, ebp
pop ebp
ret
.balign 16
HASSEMBLERC:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.L_075E:
push 0
push 37
push offset Lt_0760
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset Lt_013D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0128
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset Lt_013D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 8
push offset Lt_0767
call FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
cmp dword ptr [FBC+52], 0
jne .L_0769
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 4
.L_0769:
.L_0768:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_075F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASSEMBLERCS:
push ebp
mov ebp, esp
sub esp, 4
.L_076A:
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_076C:
cmp dword ptr [ebp-4], 0
je .L_076D
push dword ptr [ebp-4]
call HASSEMBLERC
add esp, 4
test eax, eax
jne .L_076F
push 1
call FBCEND
add esp, 4
.L_076F:
.L_076E:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_076C
.L_076D:
.L_076B:
mov esp, ebp
pop ebp
ret
.balign 16
HASSEMBLEXPM:
.L_0770:
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_0773
push 2
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0775
lea eax, [FBC+136]
push eax
call HCOMPILESTAGE2MODULE
add esp, 4
.L_0775:
.L_0774:
lea eax, [FBC+136]
push eax
call HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .L_0777
push 1
call FBCEND
add esp, 4
.L_0777:
.L_0776:
.L_0773:
.L_0772:
.L_0771:
ret
.balign 16
HCOMPILEFBCTINF:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0778:
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset Lt_001D
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 12
push offset Lt_001C
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [FBC+56], 0
je .L_077B
push 2
push 10
push offset Lt_077C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
lea eax, [ebp-24]
push eax
push 0
call fb_PrintString
add esp, 12
.L_077B:
.L_077A:
call fb_FileFree
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_077E
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 4
jmp .L_0779
.L_077E:
.L_077D:
push dword ptr [ebp-40]
call fb_FileClose
add esp, 4
test eax, eax
je .L_077F
push 0
push 0
push offset Lt_0091
push 3788
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_077F:
cmp dword ptr [FBC+40], 0
jne .L_0781
lea eax, [ebp-24]
push eax
call FBCADDTEMP
add esp, 4
.L_0781:
.L_0780:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call HCOMPILEBAS
add esp, 16
push 2
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0783
lea eax, [ebp-24]
push eax
call HCOMPILESTAGE2MODULE
add esp, 4
.L_0783:
.L_0782:
lea eax, [ebp-24]
push eax
call HASSEMBLEMODULE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 4
.L_0779:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HARCHIVEFILES:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_0784:
call HSETOUTNAME
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
test eax, eax
je .L_0787
.L_0787:
.L_0786:
push 0
push -1
push 3
push offset Lt_029E
push -1
push 261
lea eax, [FBC+484]
push eax
push 7
push offset Lt_0789
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 39
call FBGETOPTION
add esp, 4
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_078D
call HCOMPILEFBCTINF
test eax, eax
je .L_078F
push 0
push 15
push offset Lt_0792
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_078F:
.L_078E:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 12
push offset Lt_001C
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call FBCADDTEMP
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
.L_078D:
.L_078C:
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-44], eax
.L_0794:
cmp dword ptr [ebp-44], 0
je .L_0795
push 0
push -1
push -1
push 3
push offset Lt_0725
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset Lt_0128
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-44], eax
jmp .L_0794
.L_0795:
mov dword ptr [ebp-48], 1
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_079A
mov dword ptr [ebp-48], 12
.L_079A:
.L_0799:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-48]
push offset Lt_079B
call FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0785:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSETDEFAULTLIBPATHS:
push ebp
mov ebp, esp
sub esp, 28
.L_079C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0008
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 3
call FBGETOPTION
add esp, 4
cmp eax, 11
je .L_07A1
push offset Lt_07A2
call FBCADDLIBPATHFOR
add esp, 4
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_07A5
.L_07A6:
push offset Lt_07A7
call FBCADDLIBPATHFOR
add esp, 4
jmp .L_07A3
.L_07A5:
cmp dword ptr [ebp-28], 3
jne .L_07A8
.L_07A9:
push offset Lt_07AA
call FBCADDLIBPATHFOR
add esp, 4
jmp .L_07A3
.L_07A8:
push offset Lt_07AC
call FBCADDLIBPATHFOR
add esp, 4
.L_07AB:
.L_07A3:
.L_07A1:
.L_07A0:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_07AF
.L_07B0:
push offset Lt_07B1
call FBCADDLIBPATHFOR
add esp, 4
jmp .L_07AD
.L_07AF:
cmp dword ptr [ebp-28], 0
jne .L_07B2
.L_07B3:
push offset Lt_07B4
call FBCADDLIBPATHFOR
add esp, 4
.L_07B2:
.L_07AD:
.L_079D:
mov esp, ebp
pop ebp
ret
.balign 16
FBCADDDEFLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_07B5:
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_07B6:
mov esp, ebp
pop ebp
ret
.balign 16
HGETFBLIBNAMESUFFIX:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_07B8:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 35
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07BB
push 0
push 3
push offset Lt_04D6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_07BB:
.L_07BA:
push 37
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07BD
push 0
push 4
push offset Lt_04F6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_07BD:
.L_07BC:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_07B9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HADDDEFAULTLIBS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_07BE:
push 32
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07C1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_07C0
.L_07C1:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 3
push offset Lt_0020
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_07C0:
push 36
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07C7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 6
push offset Lt_04A4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_07CB
.L_07CD:
push offset Lt_07CE
call FBCADDDEFLIB
add esp, 4
push offset Lt_07CF
call FBCADDDEFLIB
add esp, 4
jmp .L_07CA
.L_07D0:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 15
push offset Lt_07D1
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push offset Lt_07D3
call FBCADDDEFLIB
add esp, 4
push offset Lt_07D4
call FBCADDDEFLIB
add esp, 4
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 4
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 4
push offset Lt_07D7
call FBCADDDEFLIB
add esp, 4
jmp .L_07CA
.L_07CB:
cmp dword ptr [ebp-28], 10
ja .L_07CA
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_07D8+eax*4]
.L_07D8:
.int .L_07CD
.int .L_07CD
.int .L_07D0
.int .L_07CA
.int .L_07CA
.int .L_07D0
.int .L_07D0
.int .L_07D0
.int .L_07D0
.int .L_07D0
.int .L_07D0
.L_07CA:
.L_07C7:
.L_07C6:
push 3
call FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_07DA
.L_07DC:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_02F5
call FBCADDDEFLIB
add esp, 4
push offset Lt_07DD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07DE
call FBCADDDEFLIB
add esp, 4
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07E0
push offset Lt_07E1
call FBCADDDEFLIB
add esp, 4
.L_07E0:
.L_07DF:
jmp .L_07D9
.L_07E2:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E3
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07E6:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push 35
call FBGETOPTION
add esp, 4
test eax, eax
je .L_07E8
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E9
call FBCADDDEFLIB
add esp, 4
.L_07E8:
.L_07E7:
jmp .L_07D9
.L_07EA:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07EB:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07EC:
push -1
push offset Lt_07ED
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset Lt_07EE
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07F0
push offset Lt_07F1
call FBCADDDEFLIB
add esp, 4
jmp .L_07EF
.L_07F0:
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
.L_07EF:
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07F2
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push -1
push offset Lt_07F3
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset Lt_07F4
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07F6
push offset Lt_07F7
call FBCADDDEFLIB
add esp, 4
.L_07F6:
.L_07F5:
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07F8:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07F9:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07E5
call FBCADDDEFLIB
add esp, 4
jmp .L_07D9
.L_07FA:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_07FB
call FBCADDDEFLIB
add esp, 4
push offset Lt_07DD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07DE
call FBCADDDEFLIB
add esp, 4
push offset Lt_07FC
call FBCADDDEFLIB
add esp, 4
push offset Lt_07FD
call FBCADDDEFLIB
add esp, 4
push offset Lt_07FE
call FBCADDDEFLIB
add esp, 4
push -1
push offset Lt_07F3
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset Lt_07FF
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0801
push offset Lt_07F7
call FBCADDDEFLIB
add esp, 4
.L_0801:
.L_0800:
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0803
push offset Lt_07E1
call FBCADDDEFLIB
add esp, 4
.L_0803:
.L_0802:
jmp .L_07D9
.L_0804:
push offset Lt_003F
call FBCADDDEFLIB
add esp, 4
push offset Lt_04A4
call FBCADDDEFLIB
add esp, 4
push offset Lt_0805
call FBCADDDEFLIB
add esp, 4
push offset Lt_0806
call FBCADDDEFLIB
add esp, 4
push offset Lt_046C
call FBCADDDEFLIB
add esp, 4
push offset Lt_0807
call FBCADDDEFLIB
add esp, 4
push offset Lt_0808
call FBCADDDEFLIB
add esp, 4
push offset Lt_04CD
call FBCADDDEFLIB
add esp, 4
push 23
call FBGETOPTION
add esp, 4
test eax, eax
je .L_080A
push offset Lt_07E1
call FBCADDDEFLIB
add esp, 4
.L_080A:
.L_0809:
jmp .L_07D9
.L_07DA:
cmp dword ptr [ebp-4], 10
ja .L_07D9
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_080B+eax*4]
.L_080B:
.int .L_07FA
.int .L_07DC
.int .L_07EC
.int .L_07E6
.int .L_0804
.int .L_07EA
.int .L_07EB
.int .L_07EB
.int .L_07F9
.int .L_07E2
.int .L_07F8
.L_07D9:
.L_07BF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEXCLUDELIBSFROMLINK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_080C:
lea eax, [FBC+352]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_080E:
cmp dword ptr [ebp-4], 0
je .L_080F
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [FBC+396]
push ebx
call STRSETDEL
add esp, 8
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_080E
.L_080F:
.L_080D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPRINTOPTIONS:
push ebp
mov ebp, esp
.L_0810:
push 1
push 34
push offset Lt_0812
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 12
push offset Lt_0813
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 57
push offset Lt_0814
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 59
push offset Lt_0815
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 35
push offset Lt_0816
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 8
push offset Lt_0817
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 63
push offset Lt_0818
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 49
push offset Lt_0819
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 57
push offset Lt_081A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 69
push offset Lt_081B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 48
push offset Lt_081C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_081E
push 1
push 64
push offset Lt_081F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_081E:
.L_081D:
push 1
push 44
push offset Lt_0820
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 46
push offset Lt_0821
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 41
push offset Lt_0822
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 33
push offset Lt_0823
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 69
push offset Lt_0824
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 48
push offset Lt_0825
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0827
push 1
push 47
push offset Lt_0828
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 60
push offset Lt_0829
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 38
push offset Lt_082A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 33
push offset Lt_082B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 50
push offset Lt_082C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 47
push offset Lt_082D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 55
push offset Lt_082E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 68
push offset Lt_082F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0827:
.L_0826:
push 1
push 41
push offset Lt_0830
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 62
push offset Lt_0831
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 53
push offset Lt_0832
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0834
push 1
push 80
push offset Lt_0835
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0834:
.L_0833:
push 1
push 61
push offset Lt_0836
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0838
push 1
push 65
push offset Lt_0839
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 33
push offset Lt_083A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0838:
.L_0837:
push 1
push 75
push offset Lt_083B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_083D
push 1
push 58
push offset Lt_083E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 58
push offset Lt_083F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 43
push offset Lt_0840
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 38
push offset Lt_0841
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_083C
.L_083D:
push 1
push 57
push offset Lt_0842
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_083C:
push 1
push 77
push offset Lt_0843
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 50
push offset Lt_0844
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 58
push offset Lt_0845
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 36
push offset Lt_0846
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 64
push offset Lt_0847
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 42
push offset Lt_0848
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 76
push offset Lt_0849
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 43
push offset Lt_084A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 39
push offset Lt_084B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 45
push offset Lt_084C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 68
push offset Lt_084D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 63
push offset Lt_084E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 70
push offset Lt_084F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 78
push offset Lt_0850
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 71
push offset Lt_0851
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 74
push offset Lt_0852
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 50
push offset Lt_0853
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 44
push offset Lt_0854
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 80
push offset Lt_0855
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 67
push offset Lt_0856
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 47
push offset Lt_0857
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 53
push offset Lt_0858
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 51
push offset Lt_0859
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 69
push offset Lt_085A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_085C
push 1
push 73
push offset Lt_085D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_085C:
.L_085B:
push 1
push 44
push offset Lt_085E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 65
push offset Lt_085F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 48
push offset Lt_0860
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 60
push offset Lt_0861
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 47
push offset Lt_0862
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 41
push offset Lt_0863
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 66
push offset Lt_0864
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 73
push offset Lt_0865
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 67
push offset Lt_0866
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 75
push offset Lt_0867
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0869
push 1
push 47
push offset Lt_086A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
jmp .L_0868
.L_0869:
push 1
push 47
push offset Lt_086A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0868:
push 1
push 47
push offset Lt_086B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 29
push offset Lt_086C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 61
push offset Lt_086D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 40
push offset Lt_086E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 70
push offset Lt_086F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0871
push 1
push 38
push offset Lt_0872
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 39
push offset Lt_0873
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 44
push offset Lt_0874
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 57
push offset Lt_0875
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 49
push offset Lt_0876
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 50
push offset Lt_0877
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 45
push offset Lt_0878
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 49
push offset Lt_0879
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 44
push offset Lt_087A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 71
push offset Lt_087B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0871:
.L_0870:
push 1
push 39
push offset Lt_087C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 72
push offset Lt_087D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 39
push offset Lt_087E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 58
push offset Lt_087F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0881
push 1
push 56
push offset Lt_0882
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 70
push offset Lt_0883
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 60
push offset Lt_0884
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 60
push offset Lt_0885
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 67
push offset Lt_0886
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 53
push offset Lt_0887
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 74
push offset Lt_0888
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_0881:
.L_0880:
.L_0811:
mov esp, ebp
pop ebp
ret
.balign 16
HPRINTVERSION:
push ebp
mov ebp, esp
sub esp, 60
.L_088E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset Lt_0896
push -1
push -1
call FBGETHOSTBITS
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset Lt_0616
push -1
push -1
call FBGETHOSTID
push eax
push 61
push offset Lt_0895
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 55
push offset Lt_089B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_089D
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 12
.L_089D:
.L_089C:
cmp dword ptr [ebp+8], 0
je .L_089F
call FBCPRINTTARGETINFO
jmp .L_08A1
push 1
push 14
push offset Lt_08A2
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
.L_08A1:
.L_08A0:
.L_089F:
.L_089E:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_088F:
mov esp, ebp
pop ebp
ret
.balign 16
_GLOBAL__I:
.L_08DD:
push offset FBC
call _ZN6FBCCTXC1Ev
add esp, 4
.L_08DE:
ret
.balign 16
_GLOBAL__D:
.L_08E0:
push offset FBC
call _ZN6FBCCTXD1Ev
add esp, 4
.L_08E1:
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0005:	.ascii	"This program requires at least a 686 to run.\0"
.balign 4
Lt_0006:	.ascii	"1\0"
.balign 4
Lt_0008:	.ascii	".\0"
.balign 4
Lt_001A:	.ascii	"/\0"
.balign 4
Lt_001C:	.ascii	"__fb_ct.inf\0"
.balign 4
Lt_001D:	.ascii	"__fb_ct.inf.bas\0"
.balign 4
Lt_0020:	.ascii	"fb\0"
.balign 4
FBCTOOLTB:
.ascii "as\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "ar\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "ld\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "gcc\0"
.skip 12,0
.int 3
.skip 264,0
.ascii "llc\0"
.skip 12,0
.int 3
.skip 264,0
.ascii "clang\0"
.skip 10,0
.int 3
.skip 264,0
.ascii "dlltool\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "GoRC\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "windres\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "cxbe\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "dxe3gen\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emar\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.balign 4
Lt_003F:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	FBC,3284

.section .data
.balign 4
Lt_0051:	.ascii	"lib\0"
.balign 4
Lt_0052:	.ascii	".a\0"
.balign 4
Lt_0061:	.ascii	".exe\0"
.balign 4
Lt_0065:	.ascii	".html\0"
.balign 4
Lt_006E:	.ascii	".dll\0"
.balign 4
Lt_0078:	.ascii	".so\0"
.balign 4
Lt_007E:	.ascii	".dxe\0"
.balign 4
Lt_0091:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
Lt_0098:	.ascii	" -m32\0"
.balign 4
Lt_009B:	.ascii	" -m64\0"
.balign 4
Lt_00B6:	.ascii	" -print-file-name=\0"
.balign 4
Lt_00DC:	.ascii	" -print-prog-name=as\0"
.balign 4
Lt_00DF:	.ascii	" -print-prog-name=ld\0"
.balign 4
Lt_00E6:	.ascii	"ld.bfd\0"
.balign 4
Lt_00F7:	.ascii	": \0"
.balign 4
Lt_00F9:	.ascii	" \0"
.balign 4
Lt_0101:	.ascii	" failed: '\0"
.balign 4
Lt_0102:	.ascii	"' terminated with exit code \0"
.balign 4
Lt_010B:	.ascii	".clean.def\0"
.balign 4
Lt_0112:	.ascii	"DATA\0"
.balign 4
Lt_011D:	.ascii	"EXPORTS\0"
.balign 4
Lt_0127:	.ascii	"--def \"\0"
.balign 4
Lt_0128:	.ascii	"\"\0"
.balign 4
Lt_012C:	.ascii	" --dllname \"\0"
.balign 4
Lt_012D:	.ascii	" --output-lib \"\0"
.balign 4
Lt_012E:	.ascii	".dll.a\"\0"
.balign 4
Lt_0134:	.ascii	"creating import library\0"
.balign 4
Lt_013D:	.ascii	" \"\0"
.balign 4
Lt_0142:	.ascii	" --version\0"
.balign 4
Lt_0143:	.ascii	"GNU gold\0"
.balign 4
Lt_0152:	.ascii	"-m i386pe \0"
.balign 4
Lt_0155:	.ascii	"-m i386pep \0"
.balign 4
Lt_015C:	.ascii	"-m elf_i386 \0"
.balign 4
Lt_015F:	.ascii	"-m elf_x86_64 \0"
.balign 4
Lt_0162:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
Lt_0169:	.ascii	"-arch i386 \0"
.balign 4
Lt_016C:	.ascii	"-arch x86_64 \0"
.balign 4
Lt_016F:	.ascii	"-arch armv6 \0"
.balign 4
Lt_0170:	.ascii	"-o \0"
.balign 4
Lt_0171:	.ascii	"\"\0"
.balign 4
Lt_0172:	.ascii	"-o \"\0"
.balign 4
Lt_0175:	.ascii	" -I \"lib\0"
.balign 4
Lt_0177:	.ascii	"_il.a\"\0"
.balign 4
Lt_0178:	.ascii	" -U\0"
.balign 4
Lt_0180:	.ascii	" -lc\0"
.balign 4
Lt_0186:	.ascii	"making DXE\0"
.balign 4
Lt_018D:	.ascii	"console\0"
.balign 4
Lt_018E:	.ascii	"gui\0"
.balign 4
Lt_0191:	.ascii	"windows\0"
.balign 4
Lt_0192:	.ascii	" -subsystem \0"
.balign 4
Lt_0197:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
Lt_019A:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
Lt_019B:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
Lt_01A1:	.ascii	" -shared -h\0"
.balign 4
Lt_01A8:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
Lt_01AA:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
Lt_01AC:	.ascii	" --dynamic-linker /lib/64/ld.so.1\0"
.balign 4
Lt_01B2:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
Lt_01B5:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
Lt_01B8:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
Lt_01BB:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
Lt_01BD:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
Lt_01BF:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
Lt_01C3:	.ascii	" --export-dynamic\0"
.balign 4
Lt_01C5:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
Lt_01C7:	.ascii	" -O\0"
.balign 4
Lt_01CE:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
Lt_01D3:	.ascii	" -s \0"
.balign 4
Lt_01D4:	.ascii	" --shell-file\0"
.balign 4
Lt_01D5:	.ascii	"fb_shell.html\0"
.balign 4
Lt_01D6:	.ascii	" --post-js\0"
.balign 4
Lt_01D7:	.ascii	"fb_rtlib.js\0"
.balign 4
Lt_01DA:	.ascii	"termlib_min.js\0"
.balign 4
Lt_01DE:	.ascii	" -T \"\0"
.balign 4
Lt_01E0:	.ascii	"/i386go32.x\"\0"
.balign 4
Lt_01E4:	.ascii	"/fbextra.x\"\0"
.balign 4
Lt_01E9:	.ascii	" --stack \0"
.balign 4
Lt_01EA:	.ascii	",\0"
.balign 4
Lt_01EE:	.ascii	".def\0"
.balign 4
Lt_01EF:	.ascii	" --output-def \"\0"
.balign 4
Lt_01F1:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
Lt_01F5:	.ascii	" -Bstatic\0"
.balign 4
Lt_01F8:	.ascii	" -Map \0"
.balign 4
Lt_0201:	.ascii	" -s\0"
.balign 4
Lt_0204:	.ascii	" -L \"\0"
.balign 4
Lt_0205:	.ascii	" -L\"\0"
.balign 4
Lt_0211:	.ascii	"crt0.o\0"
.balign 4
Lt_0214:	.ascii	"gcrt0.o\0"
.balign 4
Lt_0218:	.ascii	"dllcrt2.o\0"
.balign 4
Lt_0219:	.ascii	"crt2.o\0"
.balign 4
Lt_021C:	.ascii	"gcrt2.o\0"
.balign 4
Lt_021D:	.ascii	"crtbegin.o\0"
.balign 4
Lt_022B:	.ascii	"gcrt1.o\0"
.balign 4
Lt_0232:	.ascii	"crt1.o\0"
.balign 4
Lt_0238:	.ascii	"crti.o\0"
.balign 4
Lt_023B:	.ascii	"crtbeginS.o\0"
.balign 4
Lt_0244:	.ascii	"fbrt0pic.o\0"
.balign 4
Lt_0245:	.ascii	"fbrt0.o\0"
.balign 4
Lt_024F:	.ascii	" \"-(\"\0"
.balign 4
Lt_025B:	.ascii	" -l\0"
.balign 4
Lt_0262:	.ascii	" \"-)\"\0"
.balign 4
Lt_0263:	.ascii	" -lfb\0"
.balign 4
Lt_026A:	.ascii	"crtendS.o\0"
.balign 4
Lt_026B:	.ascii	"crtend.o\0"
.balign 4
Lt_026E:	.ascii	"crtn.o\0"
.balign 4
Lt_0273:	.ascii	" -macosx_version_min 10.4\0"
.balign 4
Lt_0284:	.ascii	" --eh-frame-hdr\0"
.balign 4
Lt_0288:	.ascii	"linking\0"
.balign 4
Lt_029D:	.ascii	"-TITLE:\"\0"
.balign 4
Lt_029E:	.ascii	"\" \0"
.balign 4
Lt_02A2:	.ascii	"-DUMPINFO:\"\0"
.balign 4
Lt_02A5:	.ascii	".cxbe\"\0"
.balign 4
Lt_02A7:	.ascii	" -OUT:\"\0"
.balign 4
Lt_02A9:	.ascii	".xbe\0"
.balign 4
Lt_02AA:	.ascii	" \"\0"
.balign 4
Lt_02AD:	.ascii	" >nul\0"
.balign 4
Lt_02B0:	.ascii	"cxbe: \0"
.balign 4
Lt_02B7:	.ascii	"cxbe failed: exit code \0"
.balign 4
Lt_02EC:	.ascii	".o\0"
.balign 4
GNUOSMAP:
.int Lt_02F1
.int 2
.int Lt_02F2
.int 0
.int Lt_02F3
.int 3
.int Lt_02F4
.int 3
.int Lt_02F5
.int 1
.int Lt_02F6
.int 9
.int Lt_02F7
.int 5
.int Lt_02F8
.int 6
.int Lt_02F9
.int 7
.int Lt_02FA
.int 10
.int Lt_02FB
.int 8
.int Lt_02FC
.int 4
.balign 4
Lt_02F1:	.ascii	"linux\0"
.balign 4
Lt_02F2:	.ascii	"mingw\0"
.balign 4
Lt_02F3:	.ascii	"djgpp\0"
.balign 4
Lt_02F4:	.ascii	"msdosdjgpp\0"
.balign 4
Lt_02F5:	.ascii	"cygwin\0"
.balign 4
Lt_02F6:	.ascii	"darwin\0"
.balign 4
Lt_02F7:	.ascii	"freebsd\0"
.balign 4
Lt_02F8:	.ascii	"dragonfly\0"
.balign 4
Lt_02F9:	.ascii	"solaris\0"
.balign 4
Lt_02FA:	.ascii	"netbsd\0"
.balign 4
Lt_02FB:	.ascii	"openbsd\0"
.balign 4
Lt_02FC:	.ascii	"xbox\0"
.balign 4
GNUARCHMAP:
.int Lt_02FE
.int 0
.int Lt_02FF
.int 1
.int Lt_0300
.int 2
.int Lt_0301
.int 3
.int Lt_0302
.int 3
.int Lt_0303
.int 13
.int Lt_0304
.int 13
.int Lt_0305
.int 14
.int Lt_0306
.int 15
.int Lt_0307
.int 15
.int Lt_0308
.int 16
.int Lt_0309
.int 17
.int Lt_030A
.int 17
.int Lt_030B
.int 18
.int Lt_030C
.int 18
.int Lt_030D
.int 19
.int Lt_030E
.int 19
.balign 4
Lt_02FE:	.ascii	"i386\0"
.balign 4
Lt_02FF:	.ascii	"i486\0"
.balign 4
Lt_0300:	.ascii	"i586\0"
.balign 4
Lt_0301:	.ascii	"i686\0"
.balign 4
Lt_0302:	.ascii	"x86\0"
.balign 4
Lt_0303:	.ascii	"x86_64\0"
.balign 4
Lt_0304:	.ascii	"amd64\0"
.balign 4
Lt_0305:	.ascii	"armv6\0"
.balign 4
Lt_0306:	.ascii	"armv7a\0"
.balign 4
Lt_0307:	.ascii	"arm\0"
.balign 4
Lt_0308:	.ascii	"aarch64\0"
.balign 4
Lt_0309:	.ascii	"ppc\0"
.balign 4
Lt_030A:	.ascii	"powerpc\0"
.balign 4
Lt_030B:	.ascii	"ppc64  \0"
.balign 4
Lt_030C:	.ascii	"powerpc64\0"
.balign 4
Lt_030D:	.ascii	"ppc64le  \0"
.balign 4
Lt_030E:	.ascii	"powerpc64le\0"
.balign 4
FBOSARCHMAP:
.int Lt_0328
.int 0
.int 3
.int Lt_0329
.int 0
.int 13
.int Lt_02F8
.int 6
.int 13
.int Lt_02F9
.int 7
.int 13
.int Lt_032A
.int 3
.int 3
.int Lt_02FC
.int 4
.int 3
.int Lt_02F5
.int 1
.int 3
.int Lt_02F6
.int 9
.int 3
.int Lt_02F7
.int 5
.int 3
.int Lt_02F1
.int 2
.int 3
.int Lt_02FA
.int 10
.int 3
.int Lt_02FB
.int 8
.int 3
.balign 4
Lt_0328:	.ascii	"win32\0"
.balign 4
Lt_0329:	.ascii	"win64\0"
.balign 4
Lt_032A:	.ascii	"dos\0"
.balign 4
Lt_0334:	.ascii	"-\0"
.balign 4
CMDLINEOPTIONTB:
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 0
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 0
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.balign 4
Lt_0344:	.ascii	"native\0"
.balign 4
Lt_0347:	.ascii	"-arch \0"
.balign 4
Lt_034E:	.ascii	"att\0"
.balign 4
Lt_0351:	.ascii	"intel\0"
.balign 4
Lt_0372:	.ascii	"PRECISE\0"
.balign 4
Lt_0375:	.ascii	"FAST\0"
.balign 4
Lt_037C:	.ascii	"X87\0"
.balign 4
Lt_037D:	.ascii	"FPU\0"
.balign 4
Lt_0381:	.ascii	"SSE\0"
.balign 4
Lt_0389:	.ascii	"gas\0"
.balign 4
Lt_038E:	.ascii	"llvm\0"
.balign 4
Lt_0391:	.ascii	"gas64\0"
.balign 4
Lt_03A4:	.ascii	"inf\0"
.balign 4
Lt_03BB:	.ascii	"max\0"
.balign 4
Lt_03CA:	.ascii	"host\0"
.balign 4
Lt_03CD:	.ascii	"target\0"
.balign 4
Lt_03D0:	.ascii	"x\0"
.balign 4
Lt_03D3:	.ascii	"fblibdir\0"
.balign 4
Lt_03D6:	.ascii	"sha-1\0"
.balign 4
Lt_03F3:	.ascii	"NONE\0"
.balign 4
Lt_03F4:	.ascii	"0\0"
.balign 4
Lt_03FA:	.ascii	"2\0"
.balign 4
Lt_0406:	.ascii	"all\0"
.balign 4
Lt_0409:	.ascii	"none\0"
.balign 4
Lt_040C:	.ascii	"param\0"
.balign 4
Lt_040F:	.ascii	"escape\0"
.balign 4
Lt_0412:	.ascii	"next\0"
.balign 4
Lt_0415:	.ascii	"signedness\0"
.balign 4
Lt_0418:	.ascii	"constness\0"
.balign 4
Lt_041B:	.ascii	"funcptr\0"
.balign 4
Lt_041E:	.ascii	"suffix\0"
.balign 4
Lt_0421:	.ascii	"pedantic\0"
.balign 4
Lt_0426:	.ascii	"error\0"
.balign 4
Lt_0429:	.ascii	"upcast\0"
.balign 4
Lt_043F:	.ascii	"gosub-setjmp\0"
.balign 4
Lt_0442:	.ascii	"valist-as-ptr\0"
.balign 4
Lt_0445:	.ascii	"no-thiscall\0"
.balign 4
Lt_0448:	.ascii	"no-fastcall\0"
.balign 4
Lt_044B:	.ascii	"fbrt\0"
.balign 4
Lt_044E:	.ascii	"nocmdline\0"
.balign 4
Lt_0451:	.ascii	"retinflts\0"
.balign 4
Lt_045B:	.ascii	"a\0"
.balign 4
Lt_045E:	.ascii	"arch\0"
.balign 4
Lt_0461:	.ascii	"asm\0"
.balign 4
Lt_0468:	.ascii	"buildprefix\0"
.balign 4
Lt_046C:	.ascii	"c\0"
.balign 4
Lt_0477:	.ascii	"dll\0"
.balign 4
Lt_047A:	.ascii	"dylib\0"
.balign 4
Lt_0481:	.ascii	"ex\0"
.balign 4
Lt_0484:	.ascii	"earray\0"
.balign 4
Lt_0487:	.ascii	"eassert\0"
.balign 4
Lt_048A:	.ascii	"edebug\0"
.balign 4
Lt_048D:	.ascii	"edebuginfo\0"
.balign 4
Lt_0490:	.ascii	"elocation\0"
.balign 4
Lt_0493:	.ascii	"enullptr\0"
.balign 4
Lt_0496:	.ascii	"eunwind\0"
.balign 4
Lt_0499:	.ascii	"entry\0"
.balign 4
Lt_049C:	.ascii	"exx\0"
.balign 4
Lt_049F:	.ascii	"export\0"
.balign 4
Lt_04A4:	.ascii	"fbgfx\0"
.balign 4
Lt_04A7:	.ascii	"forcelang\0"
.balign 4
Lt_04AA:	.ascii	"fpmode\0"
.balign 4
Lt_04AD:	.ascii	"fpu\0"
.balign 4
Lt_04B4:	.ascii	"gen\0"
.balign 4
Lt_04B9:	.ascii	"help\0"
.balign 4
Lt_04C0:	.ascii	"include\0"
.balign 4
Lt_04C7:	.ascii	"lang\0"
.balign 4
Lt_04CD:	.ascii	"m\0"
.balign 4
Lt_04D0:	.ascii	"map\0"
.balign 4
Lt_04D3:	.ascii	"maxerr\0"
.balign 4
Lt_04D6:	.ascii	"mt\0"
.balign 4
Lt_04DB:	.ascii	"noerrline\0"
.balign 4
Lt_04DE:	.ascii	"nodeflibs\0"
.balign 4
Lt_04E1:	.ascii	"nolib\0"
.balign 4
Lt_04E4:	.ascii	"noobjinfo\0"
.balign 4
Lt_04E7:	.ascii	"nostrip\0"
.balign 4
Lt_04EB:	.ascii	"o\0"
.balign 4
Lt_04F6:	.ascii	"pic\0"
.balign 4
Lt_04F9:	.ascii	"pp\0"
.balign 4
Lt_04FC:	.ascii	"prefix\0"
.balign 4
Lt_04FF:	.ascii	"print\0"
.balign 4
Lt_0502:	.ascii	"profile\0"
.balign 4
Lt_0509:	.ascii	"rr\0"
.balign 4
Lt_0510:	.ascii	"RR\0"
.balign 4
Lt_0517:	.ascii	"showincludes\0"
.balign 4
Lt_051A:	.ascii	"static\0"
.balign 4
Lt_051D:	.ascii	"strip\0"
.balign 4
Lt_0526:	.ascii	"title\0"
.balign 4
Lt_052D:	.ascii	"vec\0"
.balign 4
Lt_0530:	.ascii	"version\0"
.balign 4
Lt_0539:	.ascii	"Wa\0"
.balign 4
Lt_053C:	.ascii	"Wl\0"
.balign 4
Lt_053F:	.ascii	"Wc\0"
.balign 4
Lt_054A:	.ascii	"-version\0"
.balign 4
Lt_054D:	.ascii	"-help\0"
.balign 4
Lt_0577:	.ascii	"bas\0"
.balign 4
Lt_057E:	.ascii	"rc\0"
.balign 4
Lt_057F:	.ascii	"res\0"
.balign 4
Lt_0583:	.ascii	"xpm\0"
.balign 4
Lt_05F6:	.ascii	"../\0"
.balign 4
Lt_05FC:	.ascii	"freebasic\0"
.balign 4
Lt_05FF:	.ascii	"bin\0"
.balign 4
Lt_0610:	.ascii	", \0"
.balign 4
Lt_0613:	.ascii	"bit\0"
.balign 4
Lt_0616:	.ascii	" (\0"
.balign 4
Lt_0617:	.ascii	")\0"
.balign 4
Lt_0618:	.ascii	"target:\0"
.balign 4
Lt_0619:	.ascii	"backend:\0"
.balign 4
Lt_0622:	.ascii	"unnamed\0"
.balign 4
Lt_0628:	.ascii	".asm\0"
.balign 4
Lt_062F:	.ascii	".c\0"
.balign 4
Lt_0632:	.ascii	".ll\0"
.balign 4
Lt_063A:	.ascii	".pp.bas\0"
.balign 4
Lt_063E:	.ascii	"compiling: \0"
.balign 4
Lt_063F:	.ascii	" -o \0"
.balign 4
Lt_0642:	.ascii	" -pp \0"
.balign 4
Lt_0646:	.ascii	" (main module)\0"
.balign 4
Lt_0648:	.ascii	" (FB compile-time info)\0"
.balign 4
Lt_0679:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
Lt_067A:	.ascii	"fb_program_icon_data\0"
.balign 4
Lt_067B:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
Lt_067E:	.ascii	"/* XPM */\0"
.balign 4
Lt_0688:	.ascii	", _\n\0"
.balign 4
Lt_0689:	.ascii	"\t@\0"
.balign 4
Lt_068E:	.ascii	" _ \n\0"
.balign 4
Lt_068F:	.ascii	"}\n\n\0"
.balign 4
Lt_0690:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
Lt_0693:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
Lt_069A:	.ascii	".bas\0"
.balign 4
Lt_069D:	.ascii	"parsing xpm: \0"
.balign 4
Lt_06B4:	.ascii	"-m32 \0"
.balign 4
Lt_06B7:	.ascii	"-m64 \0"
.balign 4
Lt_06C7:	.ascii	"-mcpu=native \0"
.balign 4
Lt_06C8:	.ascii	"-mcpu=\0"
.balign 4
Lt_06CE:	.ascii	"-march=native \0"
.balign 4
Lt_06CF:	.ascii	"-march=\0"
.balign 4
Lt_06D5:	.ascii	"-fPIC \0"
.balign 4
Lt_06D8:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
Lt_06D9:	.ascii	"-Wno-unused \0"
.balign 4
Lt_06DC:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
Lt_06DD:	.ascii	"-Wno-warn-absolute-paths \0"
.balign 4
Lt_06DE:	.ascii	"-Wno-main \0"
.balign 4
Lt_06DF:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
Lt_06E0:	.ascii	"-O\0"
.balign 4
Lt_06E1:	.ascii	"-fno-strict-aliasing \0"
.balign 4
Lt_06E6:	.ascii	"-fno-ident \0"
.balign 4
Lt_06EA:	.ascii	"-frounding-math \0"
.balign 4
Lt_06EB:	.ascii	"-fno-math-errno \0"
.balign 4
Lt_06EC:	.ascii	"-fwrapv \0"
.balign 4
Lt_06ED:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
Lt_06F0:	.ascii	"-funwind-tables \0"
.balign 4
Lt_06F1:	.ascii	"-fno-unwind-tables \0"
.balign 4
Lt_06F2:	.ascii	"-Wno-format \0"
.balign 4
Lt_06F5:	.ascii	"-g \0"
.balign 4
Lt_06F8:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
Lt_0700:	.ascii	"-masm=intel \0"
.balign 4
Lt_0707:	.ascii	"-march=x86 \0"
.balign 4
Lt_070A:	.ascii	"-march=x86-64 \0"
.balign 4
Lt_070D:	.ascii	"-march=arm \0"
.balign 4
Lt_0710:	.ascii	"-march=armv8-a \0"
.balign 4
Lt_0713:	.ascii	"-mcpu=powerpc \0"
.balign 4
Lt_0716:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
Lt_0719:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
Lt_071C:	.ascii	"-relocation-model=pic \0"
.balign 4
Lt_0724:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
Lt_0725:	.ascii	"\" \0"
.balign 4
Lt_0726:	.ascii	"-o \"\0"
.balign 4
Lt_072D:	.ascii	"compiling C\0"
.balign 4
Lt_0730:	.ascii	"compiling LLVM IR\0"
.balign 4
Lt_073F:	.ascii	"--32 \0"
.balign 4
Lt_0744:	.ascii	"--64 \0"
.balign 4
Lt_074B:	.ascii	"--strip-local-absolute \0"
.balign 4
Lt_0753:	.ascii	"assembling\0"
.balign 4
Lt_0760:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
Lt_0767:	.ascii	"compiling rc\0"
.balign 4
Lt_077C:	.ascii	"creating: \0"
.balign 4
Lt_0789:	.ascii	"-rsc \"\0"
.balign 4
Lt_0792:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
Lt_079B:	.ascii	"archiving\0"
.balign 4
Lt_07A2:	.ascii	"libgcc.a\0"
.balign 4
Lt_07A7:	.ascii	"libc++.so\0"
.balign 4
Lt_07AA:	.ascii	"libstdcx.a\0"
.balign 4
Lt_07AC:	.ascii	"libstdc++.so\0"
.balign 4
Lt_07B1:	.ascii	"libm.a\0"
.balign 4
Lt_07B4:	.ascii	"libmingw32.a\0"
.balign 4
Lt_07CE:	.ascii	"gdi32\0"
.balign 4
Lt_07CF:	.ascii	"winmm\0"
.balign 4
Lt_07D1:	.ascii	"/usr/X11R6/lib\0"
.balign 4
Lt_07D3:	.ascii	"X11\0"
.balign 4
Lt_07D4:	.ascii	"Xext\0"
.balign 4
Lt_07D5:	.ascii	"Xpm\0"
.balign 4
Lt_07D6:	.ascii	"Xrandr\0"
.balign 4
Lt_07D7:	.ascii	"Xrender\0"
.balign 4
Lt_07DD:	.ascii	"kernel32\0"
.balign 4
Lt_07DE:	.ascii	"user32\0"
.balign 4
Lt_07E1:	.ascii	"gmon\0"
.balign 4
Lt_07E3:	.ascii	"System\0"
.balign 4
Lt_07E4:	.ascii	"pthread\0"
.balign 4
Lt_07E5:	.ascii	"ncurses\0"
.balign 4
Lt_07E9:	.ascii	"socket\0"
.balign 4
Lt_07ED:	.ascii	"libtinfo.a\0"
.balign 4
Lt_07EE:	.ascii	"libtinfo.so\0"
.balign 4
Lt_07F1:	.ascii	"tinfo\0"
.balign 4
Lt_07F2:	.ascii	"dl\0"
.balign 4
Lt_07F3:	.ascii	"libgcc_eh.a\0"
.balign 4
Lt_07F4:	.ascii	"libgcc_eh.so\0"
.balign 4
Lt_07F7:	.ascii	"gcc_eh\0"
.balign 4
Lt_07FB:	.ascii	"msvcrt\0"
.balign 4
Lt_07FC:	.ascii	"mingw32\0"
.balign 4
Lt_07FD:	.ascii	"mingwex\0"
.balign 4
Lt_07FE:	.ascii	"moldname\0"
.balign 4
Lt_07FF:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
Lt_0805:	.ascii	"openxdk\0"
.balign 4
Lt_0806:	.ascii	"hal\0"
.balign 4
Lt_0807:	.ascii	"usb\0"
.balign 4
Lt_0808:	.ascii	"xboxkrnl\0"
.balign 4
Lt_0812:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
Lt_0813:	.ascii	"input files:\0"
.balign 4
Lt_0814:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
Lt_0815:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
Lt_0816:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
Lt_0817:	.ascii	"options:\0"
.balign 4
Lt_0818:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
Lt_0819:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
Lt_081A:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
Lt_081B:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
Lt_081C:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
Lt_081F:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
Lt_0820:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
Lt_0821:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
Lt_0822:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
Lt_0823:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
Lt_0824:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
Lt_0825:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
Lt_0828:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
Lt_0829:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
Lt_082A:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
Lt_082B:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
Lt_082C:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
Lt_082D:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
Lt_082E:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
Lt_082F:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
Lt_0830:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
Lt_0831:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
Lt_0832:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
Lt_0835:	.ascii	"  -fbgfx           Link to the appropriate libfbgfx variant (normally automatic)\0"
.balign 4
Lt_0836:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
Lt_0839:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
Lt_083A:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
Lt_083B:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
Lt_083E:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
Lt_083F:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
Lt_0840:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
Lt_0841:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
Lt_0842:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
Lt_0843:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
Lt_0844:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
Lt_0845:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
Lt_0846:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
Lt_0847:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
Lt_0848:	.ascii	"  -lib             Create a static library\0"
.balign 4
Lt_0849:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
Lt_084A:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
Lt_084B:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
Lt_084C:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
Lt_084D:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
Lt_084E:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
Lt_084F:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
Lt_0850:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
Lt_0851:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
Lt_0852:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
Lt_0853:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
Lt_0854:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
Lt_0855:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
Lt_0856:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
Lt_0857:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
Lt_0858:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
Lt_0859:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
Lt_085A:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
Lt_085D:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
Lt_085E:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
Lt_085F:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
Lt_0860:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
Lt_0861:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
Lt_0862:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
Lt_0863:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
Lt_0864:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
Lt_0865:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
Lt_0866:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
Lt_0867:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
Lt_086A:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
Lt_086B:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
Lt_086C:	.ascii	"  -v               Be verbose\0"
.balign 4
Lt_086D:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
Lt_086E:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
Lt_086F:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
Lt_0872:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
Lt_0873:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
Lt_0874:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
Lt_0875:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
Lt_0876:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
Lt_0877:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
Lt_0878:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
Lt_0879:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
Lt_087A:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
Lt_087B:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
Lt_087C:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
Lt_087D:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
Lt_087E:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
Lt_087F:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
Lt_0882:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
Lt_0883:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
Lt_0884:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
Lt_0885:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
Lt_0886:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
Lt_0887:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
Lt_0888:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
Lt_0895:	.ascii	"FreeBASIC Compiler - Version 1.10.1 (2023-12-24), built for \0"
.balign 4
Lt_0896:	.ascii	"bit)\0"
.balign 4
Lt_089B:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
Lt_08A2:	.ascii	"source sha-1: \0"
.balign 4
Lt_08C7:	.ascii	"Restarting fbc ...\0"

.section .ctors
.int _GLOBAL__I

.section .dtors
.int _GLOBAL__D
