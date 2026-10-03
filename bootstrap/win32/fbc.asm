	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBCPUTYPEFROMGNUARCHINFO@4
_FBCPUTYPEFROMGNUARCHINFO@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0339:
mov dword ptr [ebp-8], 0
.L_033E:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0340
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_033A
.L_0340:
.L_033F:
.L_033C:
inc dword ptr [ebp-8]
.L_033B:
cmp dword ptr [ebp-8], 16
jle .L_033E
.L_033D:
mov dword ptr [ebp-4], -1
.L_033A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCPARSEARGSFROMSTRING@12
_FBCPARSEARGSFROMSTRING@12:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_05A0:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_05A2:
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_05A6
jmp .L_05A3
.L_05A6:
.L_05A5:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_05A7:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_05A8
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_05AA
.L_05AC:
cmp dword ptr [ebp-36], 0
jne .L_05AE
jmp .L_05A8
.L_05AE:
.L_05AD:
jmp .L_05A9
.L_05AF:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_05B2
mov dword ptr [ebp-36], 0
jmp .L_05B1
.L_05B2:
cmp dword ptr [ebp-36], 0
jne .L_05B3
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_05B3:
.L_05B1:
jmp .L_05A9
.L_05AA:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_05A9
mov ebx, dword ptr [ebp-44]
jmp dword ptr [_.L_05B4+ebx*4-128]
_.L_05B4:
.int .L_05AC
.int .L_05A9
.int .L_05AF
.int .L_05A9
.int .L_05A9
.int .L_05A9
.int .L_05A9
.int .L_05AF
.L_05A9:
inc dword ptr [ebp-32]
jmp .L_05A7
.L_05A8:
cmp dword ptr [ebp-32], 0
jne .L_05B6
mov dword ptr [ebp-32], 1
jmp .L_05B5
.L_05B6:
push 0
push -1
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
call _STRUNQUOTE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call _HANDLEARG@12
.L_05B5:
push 0
push -1
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_05A4:
jmp .L_05A2
.L_05A3:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_05A1:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
call _fb_InitSignals@0
call _fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
call _fb_End@4
.L_0004:
.L_0002:
call _FBCINIT@0
cmp dword ptr [ebp+8], 1
jne .L_08BA
push 0
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08BA:
.L_08B9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARSEARGS@8
call _HCHECKARGS@0
cmp dword ptr [_FBC+60], 0
je .L_08BC
push dword ptr [_FBC+56]
call _HPRINTVERSION@4
push 0
call _FBCEND@4
.L_08BC:
.L_08BB:
cmp dword ptr [_FBC+56], 0
je .L_08BE
mov dword ptr [_FBC+60], -1
push 0
call _HPRINTVERSION@4
.L_08BE:
.L_08BD:
cmp dword ptr [_FBC+64], 0
je .L_08C0
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08C0:
.L_08BF:
.L_08C1:
call _FBCDETERMINEPREFIX@0
call _FBCSETUPCOMPILERPATHS@0
cmp dword ptr [_FBC+56], 0
je .L_08C5
call _FBCPRINTTARGETINFO@0
.L_08C5:
.L_08C4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+2490]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+264]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+232]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [_FBC+68], 0
jl .L_08C8
mov ebx, dword ptr [_FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08CB
.L_08CC:
push 1
call _FBGETHOSTID@0
push eax
push 0
call _fb_PrintString@12
jmp .L_08C9
.L_08CB:
cmp dword ptr [ebp-24], 1
jne .L_08CD
.L_08CE:
push 1
call _FBGETTARGETID@0
push eax
push 0
call _fb_PrintString@12
jmp .L_08C9
.L_08CD:
cmp dword ptr [ebp-24], 2
jne .L_08CF
.L_08D0:
cmp dword ptr [ebp-20], 0
je .L_08D2
call _FBCDETERMINEMAINNAME@0
.L_08D2:
.L_08D1:
call _HSETOUTNAME@0
push 1
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .L_08C9
.L_08CF:
cmp dword ptr [ebp-24], 3
jne .L_08D3
.L_08D4:
push 1
lea eax, [_FBC+2751]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .L_08C9
.L_08D3:
cmp dword ptr [ebp-24], 4
jne .L_08D5
.L_08D6:
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08D5:
.L_08C9:
push 0
call _FBCEND@4
.L_08C8:
.L_08C7:
call _FBCDETERMINEMAINNAME@0
cmp dword ptr [ebp-20], 0
jne .L_08D8
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08D8:
.L_08D7:
call _HCOMPILEMODULES@0
call _FBSHOULDRESTART@0
test eax, eax
jne .L_08DA
jmp .L_08C2
.L_08DA:
.L_08D9:
push 8
call _FBRESTARTENDREQUEST@4
call _ERRPREINIT@0
call _HCHECKARGS@0
cmp dword ptr [_FBC+56], 0
je .L_08DC
push 1
push 18
push offset _Lt_08DD
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08DC:
.L_08DB:
.L_08C3:
jmp .L_08C1
.L_08C2:
call _HCOMPILEXPM@0
test eax, eax
jne .L_08DF
push 1
call _FBCEND@4
.L_08DF:
.L_08DE:
cmp dword ptr [_FBC+36], 0
je .L_08E1
push 0
call _FBCEND@4
.L_08E1:
.L_08E0:
push 2
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08E3
call _HCOMPILESTAGE2MODULES@0
.L_08E3:
.L_08E2:
cmp dword ptr [_FBC+44], 0
je .L_08E5
push 0
call _FBCEND@4
.L_08E5:
.L_08E4:
call _HASSEMBLEMODULES@0
call _HASSEMBLERCS@0
call _HASSEMBLEXPM@0
push 0
call _FBGETOPTION@4
cmp eax, 3
jne .L_08E7
push 0
call _FBCEND@4
.L_08E7:
.L_08E6:
call _HSETDEFAULTLIBPATHS@0
push 39
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .L_08E9
call _HCOLLECTOBJINFO@0
.L_08E9:
.L_08E8:
push 0
call _FBGETOPTION@4
cmp eax, 1
jne .L_08EB
call _HARCHIVEFILES@0
test eax, eax
jne .L_08ED
push 1
call _FBCEND@4
.L_08ED:
.L_08EC:
push 0
call _FBCEND@4
.L_08EB:
.L_08EA:
cmp dword ptr [_FBC+1956], 0
jne .L_08EF
call _HADDDEFAULTLIBS@0
.L_08EF:
.L_08EE:
call _HEXCLUDELIBSFROMLINK@0
call _HLINKFILES@0
test eax, eax
jne .L_08F1
push 1
call _FBCEND@4
.L_08F1:
.L_08F0:
push 0
call _FBCEND@4
.L_0003:
push 0
call _fb_End@4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
.L_0014:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTC1Ev:
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
.L_0024:
.L_0025:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0026:
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
.L_0027:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_002A:
.L_002B:
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEC1Ev:
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
.L_002C:
.L_002D:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_002E:
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
.L_002F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILED1Ev:
push ebp
mov ebp, esp
push ebx
.L_0032:
.L_0033:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXC1Ev:
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
call __ZN9FBCIOFILEC1Ev
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
call __ZN10FBC_EXTOPTC1Ev
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
.L_0034:
.L_0035:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0036:
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
call _fb_StrAssign@20
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
call __ZN9FBCIOFILEaSERKS_
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
add eax, 1532
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1532
lea eax, [ebx]
push eax
call __ZN10FBC_EXTOPTaSERKS_
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
mov ecx, dword ptr [ebp+8]
add ecx, 3276
mov ebx, dword ptr [ebp+12]
add ebx, 3276
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0037:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_003A:
.L_003B:
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call __ZN10FBC_EXTOPTD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea eax, [ebx]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCINIT@0:
.L_004A:
mov dword ptr [_FBC+20], -1
mov dword ptr [_FBC+24], -1
mov dword ptr [_FBC+32], -1
push -1
push 20
push 64
lea eax, [_FBC+72]
push eax
call _LISTINIT@16
push -1
push 20
push 16
lea eax, [_FBC+104]
push eax
call _LISTINIT@16
push 16
lea eax, [_FBC+156]
push eax
call _STRSETINIT@8
push 64
lea eax, [_FBC+200]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+232]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+264]
push eax
call _STRSETINIT@8
push 16
lea eax, [_FBC+308]
push eax
call _STRSETINIT@8
push 16
lea eax, [_FBC+352]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+396]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+440]
push eax
call _STRSETINIT@8
call _FBGLOBALINIT@0
push 10
call _FBGETOPTION@4
mov dword ptr [_FBC+3276], eax
mov dword ptr [_FBC+68], -1
.L_004B:
ret
.balign 16
_HSETOUTNAME@0:
push ebp
mov ebp, esp
sub esp, 44
.L_004C:
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_004F
jmp .L_004D
.L_004F:
.L_004E:
push 0
call _FBGETOPTION@4
cmp eax, 1
jne .L_0051
push 0
push -1
push 3
push offset _Lt_0053
push -1
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPFILENAME@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
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
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_004D
.L_0051:
.L_0050:
push 0
push 261
lea eax, [_FBC+745]
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0059
.L_005A:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_005E
.L_005F:
cmp dword ptr [ebp-8], 1
je .L_005E
.L_0060:
cmp dword ptr [ebp-8], 0
je .L_005E
.L_0061:
cmp dword ptr [ebp-8], 4
jne .L_005D
.L_005E:
push 0
push -1
push 5
push offset _Lt_001A
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_005B
.L_005D:
cmp dword ptr [ebp-8], 11
jne .L_0063
.L_0064:
push 0
push -1
push 6
push offset _Lt_0065
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
.L_0063:
.L_005B:
jmp .L_0057
.L_0059:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
push 3
call _FBGETOPTION@4
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
push offset _Lt_006E
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
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
push offset _Lt_0078
push -1
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_0069
.L_0070:
cmp dword ptr [ebp-8], 3
jne .L_007C
.L_007D:
push 0
push -1
push 5
push offset _Lt_007E
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
.L_007C:
.L_0069:
.L_0067:
.L_0057:
.L_004D:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCEND@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
lea eax, [_FBC+156]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_FileKill@4
test eax, eax
je .L_0085
.L_0085:
.L_0084:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
push dword ptr [ebp+8]
call _fb_End@4
.L_0081:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDTEMP@4:
push ebp
mov ebp, esp
.L_0086:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETADD@12
.L_0087:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCREMOVETEMP@4:
push ebp
mov ebp, esp
.L_0088:
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETDEL@8
.L_0089:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDOBJ@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
lea eax, [_FBC+200]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGET1STOUTPUTLINEFROMCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call _fb_FileFree@0
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpenPipe@28
test eax, eax
je .L_008F
jmp .L_008D
.L_008F:
.L_008E:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp-16]
call _fb_FileInput@4
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_InputString@12
push dword ptr [ebp-16]
call _fb_FileClose@4
test eax, eax
je .L_0090
push 0
push 0
push offset _Lt_0091
push 303
call _fb_ErrorThrowAt
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
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_008D
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_008D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCQUERYGCC@4:
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
call _FBCFINDBIN@8
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0096
.L_0097:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-56], 1
jne .L_0099
.L_009A:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0094
.L_0099:
cmp dword ptr [ebp-56], 4
jne .L_009C
.L_009D:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
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
push offset _Lt_009B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-40], eax
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call _fb_FileOpenPipe@28
test eax, eax
je .L_00A3
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push dword ptr [ebp-40]
call _fb_FileInput@4
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_InputString@12
push dword ptr [ebp-40]
call _fb_FileClose@4
test eax, eax
je .L_00A4
push 0
push 0
push offset _Lt_0091
push 334
call _fb_ErrorThrowAt
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
call _fb_StrInit@20
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0093
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0093:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCBUILDPATHTOLIBFILE@4:
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
push offset _Lt_001B
push 261
lea eax, [_FBC+2751]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
je .L_00AA
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_00A6
.L_00AA:
.L_00A9:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
push 3
call _FBCFINDBIN@8
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-88], eax
cmp dword ptr [ebp-88], 0
jne .L_00AD
.L_00AE:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-88], 1
jne .L_00AF
.L_00B0:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-88], 4
jne .L_00B1
.L_00B2:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
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
push offset _Lt_009B
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_00B3:
.L_00AB:
push 0
push -1
push -1
push 0
push dword ptr [ebp+8]
push 19
push offset _Lt_00B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-60]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_00BA
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
push dword ptr [ebp-24]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BC
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
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
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00A6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDLIBFILE@4:
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
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00C0
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
jne .L_00C2
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
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
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00BE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDDEFLIBPATH@4:
push ebp
mov ebp, esp
.L_00C3:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+440]
push eax
call _STRSETADD@12
.L_00C4:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDLIBPATHFOR@4:
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
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push -1
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00C9
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
.L_00C9:
.L_00C8:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_00C6:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDBIN@8:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_00CA:
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 4
test ebx, ebx
je .L_00CD
push 0
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx+20]
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .L_00CB
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
imul eax, 284
and dword ptr [_FBCTOOLTB+eax+16], -9
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 2
test ebx, ebx
je .L_00CF
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_GetEnviron@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00CF:
.L_00CE:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
test eax, eax
jne .L_00D1
push 0
push -1
push 5
push offset _Lt_001A
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [_FBC+2229]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS@4
test eax, eax
jne .L_00D5
push 2
call _FBGETOPTION@4
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
push offset _Lt_00DC
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
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
push offset _Lt_00DF
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
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
.L_00E1:
.L_00D6:
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS@4
test eax, eax
jne .L_00E5
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_00E7
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00E9
push 0
push -1
push 5
push offset _Lt_001A
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [_FBC+3012]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
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
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .L_00E8
.L_00E9:
push 0
push -1
push 5
push offset _Lt_001A
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 129
lea ebx, [_FBC+1697]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
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
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00E8:
jmp .L_00E6
.L_00E7:
push 0
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00E6:
mov ebx, dword ptr [ebp+8]
imul ebx, 284
or dword ptr [_FBCTOOLTB+ebx+16], 8
.L_00E5:
.L_00E4:
.L_00D1:
.L_00D0:
push 0
push -1
push dword ptr [ebp+12]
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx+20]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [_FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_FBCRUNBIN@12:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call _FBCFINDBIN@8
cmp dword ptr [_FBC+56], 0
je .L_00F1
push 2
push 3
push offset _Lt_00F2
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_00F1:
.L_00F0:
mov eax, dword ptr [ebp+12]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 8
test ebx, ebx
jne .L_00F8
push dword ptr [ebp+16]
lea ebx, [ebp-20]
push ebx
call _fb_Exec@8
mov dword ptr [ebp-8], eax
jmp .L_00F7
.L_00F8:
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
mov dword ptr [ebp-8], eax
.L_00F7:
cmp dword ptr [ebp-8], 0
jne .L_00FC
mov dword ptr [ebp-4], -1
jmp .L_00FB
.L_00FC:
cmp dword ptr [ebp-8], 0
jge .L_00FD
push 0
push 6
push -1
push dword ptr [ebp-20]
push 91
call _ERRREPORTEX@20
jmp .L_00FB
.L_00FD:
cmp dword ptr [_FBC+56], 0
je .L_00FF
push 1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr@4
push eax
push -1
push 29
push offset _Lt_0101
push -1
push -1
lea eax, [ebp-20]
push eax
push -1
push 11
push offset _Lt_0100
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_00FF:
.L_00FE:
.L_00FB:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HPUTLDARGSINTOFILE@4:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.L_0106:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 10
push offset _Lt_0108
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [ebp-16]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_010A
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0107
.L_010A:
.L_0109:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_010C
push offset _Lt_010B
push dword ptr [ebp-28]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 1
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .L_010E
push 0
push 0
push offset _Lt_0091
push 579
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010E:
cmp dword ptr [_FBC+40], 0
jne .L_0110
lea eax, [ebp-16]
push eax
call _FBCADDTEMP@4
.L_0110:
.L_010F:
cmp dword ptr [_FBC+56], 0
je .L_0112
push 2
push 4
push offset _Lt_0114
push -1
push -1
lea eax, [ebp-16]
push eax
push 16
push offset _Lt_0113
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString@12
.L_0112:
.L_0111:
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_0117
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0107:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_CLEARDEFLIST@4:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_0119:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_011C
mov dword ptr [ebp-4], 0
jmp .L_011A
.L_011C:
.L_011B:
push 0
push -1
push 11
push offset _Lt_011D
push -1
push dword ptr [ebp+8]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
call _fb_FileFree@0
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_0120
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0121
push 0
push 0
push offset _Lt_0091
push 604
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0121:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_011A
.L_0120:
.L_011F:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_0122:
push dword ptr [ebp-8]
call _fb_FileEof@4
test eax, eax
jne .L_0123
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 5
push offset _Lt_0124
push -1
push 4
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0126
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrLen@8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.L_0126:
.L_0125:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call _fb_PrintString@12
jmp .L_0122
.L_0123:
push dword ptr [ebp-36]
call _fb_FileClose@4
test eax, eax
je .L_0128
push 0
push 0
push offset _Lt_0091
push 619
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0128:
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0129
push 0
push 0
push offset _Lt_0091
push 620
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0129:
push dword ptr [ebp+8]
call _fb_FileKill@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call _rename
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_011A
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_011A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGENERATEEMPTYDEFFILE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_012A:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_012D
jmp .L_012B
.L_012D:
.L_012C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset _Lt_012F
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-12]
call _fb_PrintString@12
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0130
push 0
push 0
push offset _Lt_0091
push 634
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0130:
mov dword ptr [ebp-4], -1
.L_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_MAKEIMPLIB@8:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.L_0131:
push dword ptr [ebp+12]
call _CLEARDEFLIST@4
test eax, eax
jne .L_0134
jmp .L_0132
.L_0134:
.L_0133:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen@4
cmp edx, 0
jne .L_0136
cmp eax, 0
jne .L_0136
.L_08FF:
push dword ptr [ebp+12]
call _HGENERATEEMPTYDEFFILE@4
test eax, eax
jne .L_0138
jmp .L_0132
.L_0138:
.L_0137:
.L_0136:
.L_0135:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset _Lt_0139
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_013E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 8
push offset _Lt_0140
push -1
push -1
push dword ptr [ebp+8]
push -1
push 4
push offset _Lt_0052
push -1
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
push 16
push offset _Lt_013F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 6
push offset _Lt_0146
call _FBCRUNBIN@12
test eax, eax
jne .L_0148
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0132
.L_0148:
.L_0147:
cmp dword ptr [_FBC+40], 0
jne .L_014A
push dword ptr [ebp+12]
call _FBCADDTEMP@4
.L_014A:
.L_0149:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0132:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFINDLIB@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_014B:
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_014E
push 0
push 3
push offset _Lt_014F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_014D
.L_014E:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX@20
.L_014D:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_014C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCLINKERISGOLD@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0150:
push 3
call _FBGETOPTION@4
cmp eax, 7
jne .L_0153
mov dword ptr [ebp-4], 0
jmp .L_0151
jmp .L_0152
.L_0153:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
push 2
call _FBCFINDBIN@8
push 0
push 11
push offset _Lt_0154
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 8
push offset _Lt_0155
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-16]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0151
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0152:
.L_0151:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_FBCISUSINGGOLDLINKER@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0156:
call _FBTARGETSUPPORTSELF@0
test eax, eax
je .L_0159
call _FBCLINKERISGOLD@0
mov dword ptr [ebp-4], eax
jmp .L_0157
.L_0159:
.L_0158:
mov dword ptr [ebp-4], 0
.L_0157:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLINKFILES@0:
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_015A:
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
call _HSETOUTNAME@0
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_015E
.L_015F:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0162
.L_0163:
push 0
push 11
push offset _Lt_0164
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0160
.L_0162:
cmp dword ptr [ebp-60], 1
jne .L_0165
.L_0166:
push 0
push 12
push offset _Lt_0167
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0165:
.L_0160:
jmp .L_015C
.L_015E:
cmp dword ptr [ebp-56], 2
jne .L_0168
.L_0169:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_016C
.L_016D:
push 0
push 13
push offset _Lt_016E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_016A
.L_016C:
cmp dword ptr [ebp-60], 1
jne .L_016F
.L_0170:
push 0
push 15
push offset _Lt_0171
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_016A
.L_016F:
cmp dword ptr [ebp-60], 2
jne .L_0172
.L_0173:
push 0
push 22
push offset _Lt_0174
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0172:
.L_016A:
jmp .L_015C
.L_0168:
cmp dword ptr [ebp-56], 9
jne .L_0175
.L_0176:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0179
.L_017A:
push 0
push 12
push offset _Lt_017B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0177
.L_0179:
cmp dword ptr [ebp-60], 1
jne .L_017C
.L_017D:
push 0
push 14
push offset _Lt_017E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0177
.L_017C:
cmp dword ptr [ebp-60], 2
jne .L_017F
.L_0180:
push 0
push 13
push offset _Lt_0181
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_017F:
.L_0177:
.L_0175:
.L_015C:
push 0
push 5
push offset _Lt_0184
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0186
push 0
push 9
push offset _Lt_0187
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0189
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
push 0
push 4
push offset _Lt_018A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-68], eax
.L_018B:
cmp dword ptr [ebp-68], 0
je .L_018C
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-68]
push 3
push offset _Lt_014F
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _LISTGETNEXT@4
mov dword ptr [ebp-68], eax
jmp .L_018B
.L_018C:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_0191
push 0
push 5
push offset _Lt_0192
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0191:
.L_0190:
.L_0193:
cmp dword ptr [ebp-68], 0
je .L_0194
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-68]
push 3
push offset _Lt_014F
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _LISTGETNEXT@4
mov dword ptr [ebp-68], eax
jmp .L_0193
.L_0194:
lea eax, [ebp-16]
push eax
push 10
push offset _Lt_0198
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_0186:
.L_0185:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_019A
.L_019C:
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_019E
push 0
push 8
push offset _Lt_019F
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
jmp .L_019D
.L_019E:
push 4
push offset _Lt_01A0
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01A2
push 0
push 8
push offset _Lt_01A3
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
.L_01A2:
.L_01A1:
.L_019D:
push 0
push 13
push offset _Lt_01A4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01A6
push 0
push -1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 0
push 30
push offset _Lt_01A9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_01AB
push 0
push 26
push offset _Lt_01AC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01AA
.L_01AB:
push 0
push 22
push offset _Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01AA:
.L_01A6:
.L_01A5:
jmp .L_0199
.L_01AE:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01B0
push 0
push -1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 0
push 12
push offset _Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 4
push offset _Lt_0052
push -1
push 3
lea eax, [ebp-28]
push eax
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01B5
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen@8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_01B5:
.L_01B4:
jmp .L_01AF
.L_01B0:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_01B7
.L_01B9:
push 0
push 38
push offset _Lt_01BA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BB:
push 0
push 38
push offset _Lt_01BC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BD:
push 0
push 34
push offset _Lt_01BE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BF:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 0
jne .L_01C2
.L_01C3:
push 0
push 36
push offset _Lt_01C4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C2:
cmp dword ptr [ebp-64], 1
jne .L_01C5
.L_01C6:
push 0
push 45
push offset _Lt_01C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C5:
cmp dword ptr [ebp-64], 2
jne .L_01C8
.L_01C9:
push 0
push 42
push offset _Lt_01CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C8:
cmp dword ptr [ebp-64], 3
jne .L_01CB
.L_01CC:
push 0
push 44
push offset _Lt_01CD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01CB:
.L_01C0:
jmp .L_01B6
.L_01CE:
push 0
push 40
push offset _Lt_01CF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01D0:
push 0
push 36
push offset _Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp-60]
add eax, 4294967294
cmp eax, 8
ja .L_01B6
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_01D2+eax*4-8]
_.L_01D2:
.int .L_01BF
.int .L_01B6
.int .L_01B6
.int .L_01B9
.int .L_01BB
.int .L_01BD
.int .L_01D0
.int .L_01B6
.int .L_01CE
.L_01B6:
.L_01AF:
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 33
mov ebx, eax
call _FBGETOPTION@4
or ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01D4
push 0
push 18
push offset _Lt_01D5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01D4:
.L_01D3:
jmp .L_0199
.L_01D6:
push 0
push 66
push offset _Lt_01D7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0199
.L_01D8:
push 0
push 4
push offset _Lt_01D9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_01E0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-60], 0
.L_01E4:
push 0
push 5
push offset _Lt_01E5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 32
mov eax, dword ptr [ebp-60]
sal eax, 5
lea ebx, [_Lt_090B+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
.L_01E2:
inc dword ptr [ebp-60]
.L_01E1:
cmp dword ptr [ebp-60], 4
jle .L_01E4
.L_01E3:
push 0
push 14
push offset _Lt_01E6
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01E7
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 11
push offset _Lt_01E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01E9
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_01EB
push 0
push 11
push offset _Lt_01E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01EC
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01EB:
.L_01EA:
jmp .L_0199
.L_019A:
cmp dword ptr [ebp-56], 11
ja .L_0199
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_01ED+eax*4]
_.L_01ED:
.int .L_019C
.int .L_019C
.int .L_01AE
.int .L_0199
.int .L_01D6
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01D8
.L_0199:
push 3
call _FBGETOPTION@4
cmp eax, 3
jne .L_01EF
push 0
push 6
push offset _Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_01F2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01EE
.L_01EF:
push 39
call _FBGETOPTION@4
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call _FBCISUSINGGOLDLINKER@0
not eax
and ebx, eax
je .L_01F4
push 0
push 6
push offset _Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 12
push offset _Lt_01F6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01F4:
.L_01F3:
.L_01EE:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_01F8
.L_01FA:
push 38
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
push 0
push 10
push offset _Lt_01FB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-60]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01FC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-60]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01FE
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0200
push -1
lea eax, [ebp-40]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
push 0
push 16
push offset _Lt_0201
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01FE:
.L_01FD:
jmp .L_01F7
.L_0202:
push 0
push 23
push offset _Lt_0203
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01F7
.L_01F8:
cmp dword ptr [ebp-56], 4
ja .L_01F7
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0204+eax*4]
_.L_0204:
.int .L_01FA
.int .L_01FA
.int .L_01F7
.int .L_01F7
.int .L_0202
.L_01F7:
cmp dword ptr [_FBC+1960], 0
je .L_0206
push 0
push 10
push offset _Lt_0207
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0206:
.L_0205:
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0209
push 0
push 7
push offset _Lt_020A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0209:
.L_0208:
push 14
call _FBGETOPTION@4
test eax, eax
jne .L_020C
push 23
call _FBGETOPTION@4
test eax, eax
jne .L_020E
push 3
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0210
cmp dword ptr [_FBC+1964], 0
je .L_0212
push 0
push 4
push offset _Lt_0213
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0212:
.L_0211:
.L_0210:
.L_020F:
.L_020E:
.L_020D:
.L_020C:
.L_020B:
lea eax, [_FBC+440]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0215
push 0
push 6
push offset _Lt_0216
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
jmp .L_0214
.L_0215:
push 0
push 5
push offset _Lt_0217
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
.L_0214:
.L_0218:
cmp dword ptr [ebp-56], 0
je .L_0219
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-68]
push ebx
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0218
.L_0219:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_021E
.L_0220:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_0222
push 0
push -1
push offset _Lt_0223
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0221
.L_0222:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0225
push 0
push -1
push offset _Lt_0226
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0225:
.L_0224:
.L_0221:
jmp .L_021D
.L_0227:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_0229
push 0
push -1
push offset _Lt_022A
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0228
.L_0229:
push 0
push -1
push offset _Lt_022B
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 23
call _FBGETOPTION@4
test eax, eax
je .L_022D
push 0
push -1
push offset _Lt_022E
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_022D:
.L_022C:
.L_0228:
push 0
push -1
push offset _Lt_022F
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_021D
.L_0230:
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0232
push 0
push -1
push offset _Lt_0226
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0231
.L_0232:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0231:
jmp .L_021D
.L_0233:
push 0
call _FBGETOPTION@4
test eax, eax
jne .L_0235
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0237
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_0239
.L_023B:
push 0
push -1
push offset _Lt_0226
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0238
.L_023C:
push 0
push -1
push offset _Lt_023D
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0238
.L_0239:
mov eax, dword ptr [ebp-60]
add eax, 4294967288
cmp eax, 2
ja .L_023C
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_023E+eax*4-32]
_.L_023E:
.int .L_023B
.int .L_023C
.int .L_023B
.L_0238:
jmp .L_0236
.L_0237:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_0240
.L_0242:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_023F
.L_0243:
push 0
push -1
push offset _Lt_0244
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_023F
.L_0240:
mov eax, dword ptr [ebp-60]
add eax, 4294967288
cmp eax, 2
ja .L_0243
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_0245+eax*4-32]
_.L_0245:
.int .L_0242
.int .L_0243
.int .L_0242
.L_023F:
.L_0236:
.L_0235:
.L_0234:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0247
push 3
call _FBGETOPTION@4
cmp eax, 8
je .L_0249
push 0
push -1
push offset _Lt_024A
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0249:
.L_0248:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_024C
push 0
push -1
push offset _Lt_024D
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_024B
.L_024C:
push 0
push -1
push offset _Lt_022F
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_024B:
.L_0247:
.L_0246:
jmp .L_021D
.L_024E:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_021D
.L_021E:
cmp dword ptr [ebp-56], 10
ja .L_021D
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_024F+eax*4]
_.L_024F:
.int .L_0227
.int .L_0220
.int .L_0233
.int .L_0230
.int .L_024E
.int .L_0233
.int .L_0233
.int .L_0233
.int .L_0233
.int .L_0233
.int .L_0233
.L_021D:
cmp dword ptr [_FBC+1956], 0
jne .L_0251
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0253
push 0
push 3
push offset _Lt_014F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_001B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 37
call _FBGETOPTION@4
test eax, eax
je .L_0255
push 0
push 11
push offset _Lt_0256
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0254
.L_0255:
push 0
push 8
push offset _Lt_0257
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0254:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0253:
.L_0252:
.L_0251:
.L_0250:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
.L_0258:
cmp dword ptr [ebp-56], 0
je .L_0259
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-56]
push 3
push offset _Lt_014F
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0258
.L_0259:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_025E
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0260
push 0
push 6
push offset _Lt_0261
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0260:
.L_025F:
.L_025E:
.L_025D:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
.L_0262:
cmp dword ptr [ebp-56], 0
je .L_0263
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-56]
push 3
push offset _Lt_014F
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0262
.L_0263:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.L_0267:
cmp dword ptr [ebp-56], 0
je .L_0268
cmp dword ptr [ebp-60], 0
je .L_0269
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0901
.L_0269:
mov dword ptr [ebp-64], -1
.L_0901:
cmp dword ptr [ebp-64], 0
je .L_026C
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
push 4
push offset _Lt_026D
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_026C:
.L_026B:
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0267
.L_0268:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0271
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0273
push 0
push 6
push offset _Lt_0274
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0272
.L_0273:
push 0
push 6
push offset _Lt_0275
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0272:
.L_0271:
.L_0270:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_0277
.L_0279:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_027B
push 0
push -1
push offset _Lt_027C
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_027A
.L_027B:
push 0
push -1
push offset _Lt_027D
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_027A:
push 3
call _FBGETOPTION@4
cmp eax, 8
je .L_027F
push 0
push -1
push offset _Lt_0280
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_027F:
.L_027E:
jmp .L_0276
.L_0281:
push 0
push -1
push offset _Lt_027D
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0276
.L_0277:
cmp dword ptr [ebp-56], 10
ja .L_0276
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0282+eax*4]
_.L_0282:
.int .L_0281
.int .L_0276
.int .L_0279
.int .L_0276
.int .L_0276
.int .L_0279
.int .L_0279
.int .L_0279
.int .L_0279
.int .L_0276
.int .L_0279
.L_0276:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_0284
push 0
push 26
push offset _Lt_0285
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0284:
.L_0283:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_0287
.L_0289:
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_028A
mov eax, dword ptr [ebp-60]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0902
.L_028A:
mov dword ptr [ebp-64], -1
.L_0902:
cmp dword ptr [ebp-64], 0
je .L_028D
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 1
je .L_028E
mov eax, dword ptr [ebp-68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_0903
.L_028E:
mov dword ptr [ebp-72], -1
.L_0903:
cmp dword ptr [ebp-72], 0
jne .L_0290
mov eax, dword ptr [ebp-68]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_0904
.L_0290:
mov dword ptr [ebp-76], -1
.L_0904:
cmp dword ptr [ebp-76], 0
jne .L_0292
mov eax, dword ptr [ebp-68]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-80], eax
jmp .L_0905
.L_0292:
mov dword ptr [ebp-80], -1
.L_0905:
cmp dword ptr [ebp-80], 0
je .L_0295
push 0
push 16
push offset _Lt_0296
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0295:
.L_0294:
.L_028D:
.L_028C:
jmp .L_0286
.L_0287:
mov eax, dword ptr [ebp-56]
add eax, 4294967294
cmp eax, 8
ja .L_0286
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0297+eax*4-8]
_.L_0297:
.int .L_0289
.int .L_0286
.int .L_0286
.int .L_0289
.int .L_0289
.int .L_0289
.int .L_0289
.int .L_0289
.int .L_0289
.L_0286:
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrLen@8
push 261
lea ebx, [_FBC+3012]
push ebx
mov ebx, eax
call _fb_StrLen@8
cmp ebx, eax
jle .L_0299
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-48], eax
jmp .L_0906
.L_0299:
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-48], eax
.L_0906:
mov eax, dword ptr [ebp-48]
add eax, 7
mov dword ptr [ebp-44], eax
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push -1
lea ebx, [ebp-16]
push ebx
mov ebx, eax
call _fb_StrLen@8
mov ecx, 2047
sub ecx, dword ptr [ebp-44]
cmp eax, ecx
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_029C
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE@4
test eax, eax
jne .L_029E
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_029E:
.L_029D:
.L_029C:
.L_029B:
mov dword ptr [ebp-52], 2
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_02A0
mov dword ptr [ebp-52], 13
.L_02A0:
.L_029F:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-52]
push offset _Lt_02A1
call _FBCRUNBIN@12
test eax, eax
jne .L_02A3
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02A3:
.L_02A2:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_02A5
.L_02A7:
call _fb_FileFree@0
mov dword ptr [ebp-60], eax
push 0
push dword ptr [ebp-60]
push 0
push 3
push 0
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_02A9
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02A9:
.L_02A8:
push 38
call _FBGETOPTION@4
mov dword ptr [ebp-64], eax
push 4
lea eax, [ebp-64]
push eax
push 533
push dword ptr [ebp-60]
call _fb_FilePut@16
test eax, eax
je .L_02AA
push 0
push 0
push offset _Lt_0091
push 1268
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AA:
push dword ptr [ebp-60]
call _fb_FileClose@4
test eax, eax
je .L_02AB
push 0
push 0
push offset _Lt_0091
push 1270
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AB:
jmp .L_02A4
.L_02AC:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_02AE
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call _MAKEIMPLIB@8
test eax, eax
jne .L_02B0
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02B0:
.L_02AF:
.L_02AE:
.L_02AD:
jmp .L_02A4
.L_02B1:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_02B3
push 0
push -1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HSTRIPEXT@4
push eax
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
.L_02B3:
.L_02B2:
push 0
push 9
push offset _Lt_02B6
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push 0
push 129
lea eax, [_FBC+1826]
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_02B7
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 14
call _FBGETOPTION@4
test eax, eax
je .L_02B9
push 0
push 12
push offset _Lt_02BB
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_02BE
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
.L_02B9:
.L_02B8:
push 0
push 8
push offset _Lt_02C0
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_02C2
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
push 0
push 3
push offset _Lt_02C3
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [_FBC+56], 0
jne .L_02C5
push 0
push 6
push offset _Lt_02C6
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
.L_02C5:
.L_02C4:
cmp dword ptr [_FBC+56], 0
je .L_02C8
push 2
push 6
push offset _Lt_02C9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-80]
push eax
push 0
call _fb_PrintString@12
.L_02C8:
.L_02C7:
lea eax, [ebp-68]
push eax
push 9
call _FBCFINDBIN@8
push -1
lea eax, [ebp-80]
push eax
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-68]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 0
je .L_02CD
cmp dword ptr [_FBC+56], 0
je .L_02CF
push 1
push -1
push dword ptr [ebp-84]
call _fb_IntToStr@4
push eax
push 24
push offset _Lt_02D0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_02CF:
.L_02CE:
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02CD:
.L_02CC:
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .L_02A4
.L_02A5:
cmp dword ptr [ebp-56], 4
ja .L_02A4
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_02D2+eax*4]
_.L_02D2:
.int .L_02AC
.int .L_02AC
.int .L_02A4
.int .L_02A7
.int .L_02B1
.L_02A4:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_090B:
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
_HREADOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 20
.L_02D3:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02D5:
lea eax, [ebp-12]
push eax
call _OBJINFOREADNEXT@4
mov dword ptr [ebp-20], eax
jmp .L_02D9
.L_02DB:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETADD@12
jmp .L_02D8
.L_02DC:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETADD@12
jmp .L_02D8
.L_02DD:
cmp dword ptr [_FBC+3280], 0
jne .L_02DF
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 20
call _ERRREPORTWARNEX@20
mov dword ptr [_FBC+3280], -1
push -1
push 35
call _FBSETOPTION@8
.L_02DF:
.L_02DE:
jmp .L_02D8
.L_02E0:
push -1
push 36
call _FBSETOPTION@8
jmp .L_02D8
.L_02E1:
push dword ptr [ebp-12]
call _FBGETLANGID@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02E3
mov dword ptr [ebp-16], 0
.L_02E3:
.L_02E2:
mov eax, dword ptr [_FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02E5
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 21
call _ERRREPORTWARNEX@20
mov eax, dword ptr [ebp-16]
mov dword ptr [_FBC+3276], eax
push dword ptr [ebp-16]
push 10
call _FBSETOPTION@8
.L_02E5:
.L_02E4:
jmp .L_02D8
.L_02E6:
jmp .L_02D6
jmp .L_02D8
.L_02D9:
cmp dword ptr [ebp-20], 4
ja .L_02E6
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02E7+eax*4]
_.L_02E7:
.int .L_02DB
.int .L_02DC
.int .L_02DD
.int .L_02E0
.int .L_02E1
.L_02D8:
.L_02D7:
jmp .L_02D5
.L_02D6:
call _OBJINFOREADEND@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_02D4:
mov esp, ebp
pop ebp
ret
.balign 16
_HCOLLECTOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02E8:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_02EA:
cmp dword ptr [ebp-4], 0
je .L_02EB
push dword ptr [ebp-4]
call _OBJINFOREADOBJ@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_02EA
.L_02EB:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_02EC:
cmp dword ptr [ebp-8], 0
je .L_02ED
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02EF
lea eax, [_FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call _OBJINFOREADLIB@8
call _HREADOBJINFO@0
.L_02EF:
.L_02EE:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_02EC
.L_02ED:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_02F0:
cmp dword ptr [ebp-4], 0
je .L_02F1
push dword ptr [ebp-4]
call _OBJINFOREADLIBFILE@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_02F0
.L_02F1:
.L_02E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFATALINVALIDOPTION@8:
push ebp
mov ebp, esp
sub esp, 40
.L_02F2:
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02F7
mov dword ptr [ebp-40], 0
jmp .L_0919
.L_02F7:
mov dword ptr [ebp-40], -1
.L_0919:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0183
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset _Lt_0183
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 81
call _ERRREPORTEX@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 1
call _FBCEND@4
.L_02F3:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKWAITINGOBJFILE@0:
push ebp
mov ebp, esp
sub esp, 24
.L_02F9:
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_02FC
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
lea eax, [_FBC+8]
push eax
push 4
push offset _Lt_0182
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
push 292
call _ERRREPORTEX@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_02FC:
.L_02FB:
.L_02FA:
mov esp, ebp
pop ebp
ret
.balign 16
_HSETIOFILE@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_02FF:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrLen@8
test eax, eax
jne .L_0302
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_0304
push 0
push -1
push 3
push offset _Lt_0305
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
jmp .L_0303
.L_0304:
push 0
push -1
push 3
push offset _Lt_0305
push -1
push dword ptr [ebp+12]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_0303:
mov eax, dword ptr [ebp+8]
mov dword ptr [_FBC+4], eax
jmp .L_0301
.L_0302:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_0301:
lea eax, [_FBC+8]
push eax
call _FBCADDOBJ@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_0300:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDBAS@4:
push ebp
mov ebp, esp
.L_0308:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+72]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
.L_0309:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPARSEGNUTRIPLET@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0329:
mov dword ptr [ebp-4], 0
.L_032E:
mov eax, dword ptr [ebp-4]
push dword ptr [_GNUOSMAP+eax*8]
call _fb_StrAllocTempDescZ@4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
test eax, eax
jle .L_0330
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [_GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_032D
.L_0330:
.L_032F:
.L_032C:
inc dword ptr [ebp-4]
.L_032B:
cmp dword ptr [ebp-4], 11
jle .L_032E
.L_032D:
cmp dword ptr [ebp+12], 0
jle .L_0332
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-16], 0
.L_0336:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0338
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_0335
.L_0338:
.L_0337:
.L_0334:
inc dword ptr [ebp-16]
.L_0333:
cmp dword ptr [ebp-16], 16
jle .L_0336
.L_0335:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.L_0332:
.L_0331:
.L_032A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HPARSETARGETARG@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0345:
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
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-20], 0
.L_034A:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [_FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_034C
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [_FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [_FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0346
.L_034C:
.L_034B:
.L_0348:
inc dword ptr [ebp-20]
.L_0347:
cmp dword ptr [ebp-20], 11
jle .L_034A
.L_0349:
push 1
push offset _Lt_034D
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_034F
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
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _FBIDENTIFYOS@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCPUTYPEFROMCPUFAMILYID@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_034F:
.L_034E:
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
je .L_0353
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HPARSEGNUTRIPLET@16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_0353:
.L_0352:
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete@4
.L_0346:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HANDLEOPT@12:
push ebp
mov ebp, esp
sub esp, 144
push ebx
.L_0356:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0359
.L_035B:
push dword ptr [ebp+12]
call _FBCADDOBJ@4
jmp .L_0358
.L_035C:
push 7
push offset _Lt_035D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_FBC+28], eax
push dword ptr [ebp+12]
call _FBIDENTIFYFBCARCH@4
mov dword ptr [_FBC+24], eax
cmp dword ptr [_FBC+24], 0
jge .L_035F
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_0360
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HFATALINVALIDOPTION@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_035F:
.L_035E:
jmp .L_0358
.L_0363:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0367
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0366
.L_0368:
mov dword ptr [_FBC+32], 1
jmp .L_0364
.L_0366:
push 6
push offset _Lt_036A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0369
.L_036B:
mov dword ptr [_FBC+32], 0
jmp .L_0364
.L_0369:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_036C:
.L_0364:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_036D:
push dword ptr [ebp+12]
call _HADDBAS@4
jmp .L_0358
.L_036E:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_036F:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+52], -1
jmp .L_0358
.L_0370:
mov dword ptr [_FBC+52], -1
jmp .L_0358
.L_0371:
push dword ptr [ebp+12]
call _FBADDPREDEFINE@4
jmp .L_0358
.L_0372:
push 2
push 0
call _FBSETOPTION@8
jmp .L_0358
.L_0373:
push -1
push 16
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_0374:
push -1
push 22
call _FBSETOPTION@8
jmp .L_0358
.L_0375:
push -1
push 15
call _FBSETOPTION@8
jmp .L_0358
.L_0376:
push -1
push 13
call _FBSETOPTION@8
jmp .L_0358
.L_0377:
push -1
push 14
call _FBSETOPTION@8
jmp .L_0358
.L_0378:
push -1
push 19
call _FBSETOPTION@8
jmp .L_0358
.L_0379:
push -1
push 20
call _FBSETOPTION@8
jmp .L_0358
.L_037A:
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037B:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1006]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_037C:
push -1
push 16
call _FBSETOPTION@8
push -1
push 17
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037D:
push -1
push 16
call _FBSETOPTION@8
push -1
push 17
call _FBSETOPTION@8
push -1
push 18
call _FBSETOPTION@8
push -1
push 19
call _FBSETOPTION@8
push -1
push 22
call _FBSETOPTION@8
push -1
push 20
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037E:
push -1
push 33
call _FBSETOPTION@8
jmp .L_0358
.L_037F:
push -1
push 36
call _FBSETOPTION@8
jmp .L_0358
.L_0380:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0382
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0382:
.L_0381:
push 11
call _FBGETOPTION@4
and eax, dword ptr [ebp+16]
je .L_0384
push 0
push 1
push 0
push 30
call _ERRREPORTWARN@16
jmp .L_0383
.L_0384:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
push -1
push 11
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0386
push dword ptr [ebp-8]
push 12
call _FBSETOPTION@8
.L_0386:
.L_0385:
.L_0383:
jmp .L_0358
.L_0387:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 8
push offset _Lt_038B
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_038A
.L_038C:
mov dword ptr [ebp-8], 0
jmp .L_0388
.L_038A:
push 5
push offset _Lt_038E
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_038D
.L_038F:
mov dword ptr [ebp-8], 1
jmp .L_0388
.L_038D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0390:
.L_0388:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 6
call _FBSETOPTION@8
jmp .L_0358
.L_0391:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0395
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0397
.L_0398:
push 4
push offset _Lt_0396
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0394
.L_0397:
mov dword ptr [ebp-8], 0
jmp .L_0392
.L_0394:
push 4
push offset _Lt_039A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0399
.L_039B:
mov dword ptr [ebp-8], 1
jmp .L_0392
.L_0399:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_039C:
.L_0392:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 5
call _FBSETOPTION@8
jmp .L_0358
.L_039D:
push -1
push 13
call _FBSETOPTION@8
push -1
push 14
call _FBSETOPTION@8
push -1
push 15
call _FBSETOPTION@8
jmp .L_0358
.L_039E:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_03A2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A1
.L_03A3:
mov dword ptr [_FBC+20], 0
jmp .L_039F
.L_03A1:
push 4
push offset _Lt_0040
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A4
.L_03A5:
mov dword ptr [_FBC+20], 1
jmp .L_039F
.L_03A4:
push 5
push offset _Lt_03A7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A6
.L_03A8:
mov dword ptr [_FBC+20], 2
jmp .L_039F
.L_03A6:
push 6
push offset _Lt_03AA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A9
.L_03AB:
mov dword ptr [_FBC+20], 3
jmp .L_039F
.L_03A9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03AC:
.L_039F:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03AD:
mov dword ptr [_FBC+64], -1
jmp .L_0358
.L_03AE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03B0:
push dword ptr [ebp+12]
call _FBADDPREINCLUDE@4
jmp .L_0358
.L_03B1:
push 0
push dword ptr [ebp+12]
lea eax, [_FBC+264]
push eax
call _STRSETADD@12
jmp .L_0358
.L_03B2:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_03B4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03B4:
.L_03B3:
push 11
call _FBGETOPTION@4
test eax, eax
jne .L_03B6
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_03B8
push dword ptr [ebp-8]
push 12
call _FBSETOPTION@8
.L_03B8:
.L_03B7:
.L_03B6:
.L_03B5:
jmp .L_0358
.L_03B9:
push 1
push 0
call _FBSETOPTION@8
jmp .L_0358
.L_03BA:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
mov dword ptr [_FBC+1136], -1
jmp .L_0358
.L_03BB:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_03BC:
push 4
push offset _Lt_03BD
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .L_03BF
mov dword ptr [ebp-8], 2147483647
jmp .L_03BE
.L_03BF:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03C1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03C1:
.L_03C0:
.L_03BE:
push dword ptr [ebp-8]
push 26
call _FBSETOPTION@8
jmp .L_0358
.L_03C2:
push -1
push 35
call _FBSETOPTION@8
mov dword ptr [_FBC+3280], -1
jmp .L_0358
.L_03C3:
mov dword ptr [_FBC+1956], -1
jmp .L_0358
.L_03C4:
push 0
push 25
call _FBSETOPTION@8
jmp .L_0358
.L_03C5:
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
push offset _Lt_01FC
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign@20
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call _HSPLITSTR@12
lea eax, [ebp-136]
push eax
call _fb_StrDelete@4
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayLBound@8
mov dword ptr [ebp-140], eax
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayUBound@8
mov dword ptr [ebp-144], eax
jmp .L_03C8
.L_03CB:
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call _fb_StrLen@8
test eax, eax
jle .L_03CD
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+352]
push ebx
call _STRSETADD@12
.L_03CD:
.L_03CC:
.L_03C9:
inc dword ptr [ebp-140]
.L_03C8:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03CB
.L_03CA:
lea ebx, [ebp-124]
push ebx
call _fb_ArrayStrErase@4
jmp .L_0358
.L_03CE:
push 0
push 39
call _FBSETOPTION@8
jmp .L_0358
.L_03CF:
mov dword ptr [_FBC+1964], 0
jmp .L_0358
.L_03D0:
call _HCHECKWAITINGOBJFILE@0
cmp dword ptr [_FBC+4], 0
je .L_03D2
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [_FBC+4]
push dword ptr [ebx+12]
call _fb_StrAssign@20
mov ebx, dword ptr [_FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03D1
.L_03D2:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrAssign@20
.L_03D1:
jmp .L_0358
.L_03D3:
push 4
push offset _Lt_03D4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .L_03D6
mov dword ptr [ebp-8], 3
jmp .L_03D5
.L_03D6:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03D8
mov dword ptr [ebp-8], 0
jmp .L_03D7
.L_03D8:
cmp dword ptr [ebp-8], 3
jle .L_03D9
mov dword ptr [ebp-8], 3
.L_03D9:
.L_03D7:
.L_03D5:
push dword ptr [ebp-8]
push 8
call _FBSETOPTION@8
jmp .L_0358
.L_03DA:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
lea eax, [_FBC+308]
push eax
call _STRSETADD@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03DC:
push -1
push 37
call _FBSETOPTION@8
jmp .L_0358
.L_03DD:
push -1
push 1
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
jmp .L_0358
.L_03DE:
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
push 92
lea eax, [_FBC+1968]
push eax
call _HREPLACESLASH@8
jmp .L_0358
.L_03DF:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_03E3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E2
.L_03E4:
mov dword ptr [_FBC+68], 0
jmp .L_03E0
.L_03E2:
push 7
push offset _Lt_03E6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E5
.L_03E7:
mov dword ptr [_FBC+68], 1
jmp .L_03E0
.L_03E5:
push 2
push offset _Lt_03E9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E8
.L_03EA:
mov dword ptr [_FBC+68], 2
jmp .L_03E0
.L_03E8:
push 9
push offset _Lt_03EC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03EB
.L_03ED:
mov dword ptr [_FBC+68], 3
jmp .L_03E0
.L_03EB:
push 6
push offset _Lt_03EF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03EE
.L_03F0:
mov dword ptr [_FBC+68], 4
jmp .L_03E0
.L_03EE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03F1:
.L_03E0:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03F2:
push -1
push 23
call _FBSETOPTION@8
jmp .L_0358
.L_03F3:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
mov dword ptr [_FBC+40], -1
jmp .L_0358
.L_03F4:
mov dword ptr [_FBC+40], -1
jmp .L_0358
.L_03F5:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+44], -1
mov dword ptr [_FBC+48], -1
jmp .L_0358
.L_03F6:
mov dword ptr [_FBC+48], -1
jmp .L_0358
.L_03F7:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_01A0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03FA
.L_03FB:
push 1
push 41
call _FBSETOPTION@8
.L_03FA:
.L_03F8:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03FC:
push -1
push 40
call _FBSETOPTION@8
jmp .L_0358
.L_03FD:
mov dword ptr [_FBC+1960], -1
jmp .L_0358
.L_03FE:
mov dword ptr [_FBC+1964], -1
jmp .L_0358
.L_03FF:
push dword ptr [ebp+12]
call _fb_VALINT@4
sal eax, 10
push eax
push 38
call _FBSETOPTION@8
jmp .L_0358
.L_0400:
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
call _HPARSETARGETARG@16
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
je .L_0402
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0402:
.L_0401:
push dword ptr [ebp-8]
push 3
call _FBSETOPTION@8
push dword ptr [ebp-12]
push 4
call _FBSETOPTION@8
mov ebx, dword ptr [ebp-8]
test ebx, ebx
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
je .L_0404
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [_FBC+1568]
push ebx
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_034D
push 129
lea ebx, [_FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrAssign@20
.L_0404:
.L_0403:
jmp .L_0358
.L_0406:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0407:
mov dword ptr [_FBC+56], -1
jmp .L_0358
.L_0408:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_040C
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_040E
.L_040F:
push 2
push offset _Lt_040D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_040B
.L_040E:
mov dword ptr [ebp-8], 0
jmp .L_0409
.L_040B:
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0410
.L_0411:
mov dword ptr [ebp-8], 1
jmp .L_0409
.L_0410:
push 2
push offset _Lt_0413
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0412
.L_0414:
mov dword ptr [ebp-8], 2
jmp .L_0409
.L_0412:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0415:
.L_0409:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 7
call _FBSETOPTION@8
jmp .L_0358
.L_0416:
cmp dword ptr [ebp+16], 0
je .L_0418
cmp dword ptr [_FBC+60], 0
jne .L_041A
push dword ptr [_FBC+56]
call _HPRINTVERSION@4
.L_041A:
.L_0419:
.L_0418:
.L_0417:
mov dword ptr [_FBC+60], -1
jmp .L_0358
.L_041B:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_041F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_041E
.L_0420:
mov dword ptr [ebp-8], 0
jmp .L_041C
.L_041E:
push 5
push offset _Lt_0422
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0421
.L_0423:
mov dword ptr [ebp-8], 4
jmp .L_041C
.L_0421:
push 6
push offset _Lt_0425
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0424
.L_0426:
push 27
call _FBGETOPTION@4
or eax, 2
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_0424:
push 7
push offset _Lt_0428
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0427
.L_0429:
push 27
call _FBGETOPTION@4
or eax, 1
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_0427:
push 5
push offset _Lt_042B
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_042A
.L_042C:
push 27
call _FBGETOPTION@4
or eax, 8
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_042A:
push 11
push offset _Lt_042E
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_042D
.L_042F:
push 27
call _FBGETOPTION@4
or eax, 32
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_042D:
push 10
push offset _Lt_0431
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0430
.L_0432:
push 27
call _FBGETOPTION@4
or eax, 128
push eax
push 27
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .L_041C
.L_0430:
push 8
push offset _Lt_0434
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0433
.L_0435:
push 27
call _FBGETOPTION@4
or eax, 64
push eax
push 27
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .L_041C
.L_0433:
push 7
push offset _Lt_0437
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0436
.L_0438:
push 27
call _FBGETOPTION@4
or eax, 256
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_0436:
push 9
push offset _Lt_043A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0439
.L_043B:
push -1769
push 27
call _FBSETOPTION@8
cmp dword ptr [ebp-8], 1
jle .L_043D
mov dword ptr [ebp-8], 1
.L_043D:
.L_043C:
jmp .L_041C
.L_0439:
push 6
push offset _Lt_043F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_043E
.L_0440:
push 27
call _FBGETOPTION@4
or eax, 512
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_043E:
push 7
push offset _Lt_0442
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0441
.L_0443:
push 27
call _FBGETOPTION@4
or eax, 1024
push eax
push 27
call _FBSETOPTION@8
jmp .L_041C
.L_0441:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
.L_0444:
.L_041C:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-8], 0
jl .L_0446
push dword ptr [ebp-8]
push 24
call _FBSETOPTION@8
.L_0446:
.L_0445:
jmp .L_0358
.L_0447:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1532]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1532]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_044B:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1556]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1556]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_044F:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1544]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1544]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0453:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0454:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 13
push offset _Lt_0458
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0457
.L_0459:
push -1
push 28
call _FBSETOPTION@8
jmp .L_0455
.L_0457:
push 14
push offset _Lt_045B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_045A
.L_045C:
push -1
push 29
call _FBSETOPTION@8
jmp .L_0455
.L_045A:
push 12
push offset _Lt_045E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_045D
.L_045F:
push -1
push 30
call _FBSETOPTION@8
jmp .L_0455
.L_045D:
push 12
push offset _Lt_0461
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0460
.L_0462:
push -1
push 31
call _FBSETOPTION@8
jmp .L_0455
.L_0460:
push 5
push offset _Lt_0464
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0463
.L_0465:
push -1
push 32
call _FBSETOPTION@8
jmp .L_0455
.L_0463:
push 10
push offset _Lt_0467
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0466
.L_0468:
push -1
push 42
call _FBSETOPTION@8
jmp .L_0455
.L_0466:
push 10
push offset _Lt_046A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0469
.L_046B:
push -1
push 43
call _FBSETOPTION@8
jmp .L_0455
.L_0469:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_046C:
.L_0455:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_0359:
cmp dword ptr [ebp-4], 70
ja .L_0358
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_046D+eax*4]
_.L_046D:
.int .L_035B
.int .L_035C
.int .L_0363
.int .L_036D
.int .L_036E
.int .L_036F
.int .L_0370
.int .L_0371
.int .L_0372
.int .L_0372
.int .L_0373
.int .L_0374
.int .L_0375
.int .L_0376
.int .L_0377
.int .L_0378
.int .L_0379
.int .L_037A
.int .L_037B
.int .L_037C
.int .L_037D
.int .L_037E
.int .L_037F
.int .L_0380
.int .L_0387
.int .L_0391
.int .L_039D
.int .L_039E
.int .L_03AD
.int .L_03AE
.int .L_03B0
.int .L_03B1
.int .L_03B2
.int .L_03B9
.int .L_03BA
.int .L_03BB
.int .L_03BC
.int .L_03C2
.int .L_03C3
.int .L_03C4
.int .L_03C5
.int .L_03CE
.int .L_03CF
.int .L_03D0
.int .L_03D3
.int .L_03DA
.int .L_03DC
.int .L_03DD
.int .L_03DE
.int .L_03DF
.int .L_03F2
.int .L_03F3
.int .L_03F4
.int .L_03F5
.int .L_03F6
.int .L_03F7
.int .L_03FC
.int .L_03FD
.int .L_03FE
.int .L_03FF
.int .L_0400
.int .L_0406
.int .L_0407
.int .L_0408
.int .L_0416
.int .L_041B
.int .L_0447
.int .L_044B
.int .L_044F
.int .L_0453
.int .L_0454
.L_0358:
.L_0357:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_PARSEOPTION@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_046E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0471
.L_0473:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0476
mov dword ptr [ebp-4], 0
jmp .L_046F
.L_0476:
.L_0475:
push 5
push offset _Lt_0477
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0479
mov dword ptr [ebp-4], 1
jmp .L_046F
.L_0479:
.L_0478:
push 4
push offset _Lt_047A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_047C
mov dword ptr [ebp-4], 2
jmp .L_046F
.L_047C:
.L_047B:
jmp .L_0470
.L_047D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0480
mov dword ptr [ebp-4], 3
jmp .L_046F
.L_0480:
.L_047F:
push 12
push offset _Lt_0481
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0483
mov dword ptr [ebp-4], 4
jmp .L_046F
.L_0483:
.L_0482:
jmp .L_0470
.L_0484:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0487
mov dword ptr [ebp-4], 5
jmp .L_046F
.L_0487:
.L_0486:
jmp .L_0470
.L_0488:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_048B
mov dword ptr [ebp-4], 6
jmp .L_046F
.L_048B:
.L_048A:
jmp .L_0470
.L_048C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_048F
mov dword ptr [ebp-4], 7
jmp .L_046F
.L_048F:
.L_048E:
push 4
push offset _Lt_0490
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0492
mov dword ptr [ebp-4], 8
jmp .L_046F
.L_0492:
.L_0491:
push 6
push offset _Lt_0493
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0495
mov dword ptr [ebp-4], 9
jmp .L_046F
.L_0495:
.L_0494:
jmp .L_0470
.L_0496:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0499
mov dword ptr [ebp-4], 10
jmp .L_046F
.L_0499:
.L_0498:
push 3
push offset _Lt_049A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_049C
mov dword ptr [ebp-4], 19
jmp .L_046F
.L_049C:
.L_049B:
push 7
push offset _Lt_049D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_049F
mov dword ptr [ebp-4], 11
jmp .L_046F
.L_049F:
.L_049E:
push 8
push offset _Lt_04A0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A2
mov dword ptr [ebp-4], 12
jmp .L_046F
.L_04A2:
.L_04A1:
push 7
push offset _Lt_04A3
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A5
mov dword ptr [ebp-4], 13
jmp .L_046F
.L_04A5:
.L_04A4:
push 11
push offset _Lt_04A6
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A8
mov dword ptr [ebp-4], 14
jmp .L_046F
.L_04A8:
.L_04A7:
push 10
push offset _Lt_04A9
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04AB
mov dword ptr [ebp-4], 15
jmp .L_046F
.L_04AB:
.L_04AA:
push 9
push offset _Lt_04AC
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04AE
mov dword ptr [ebp-4], 16
jmp .L_046F
.L_04AE:
.L_04AD:
push 8
push offset _Lt_04AF
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B1
mov dword ptr [ebp-4], 17
jmp .L_046F
.L_04B1:
.L_04B0:
push 6
push offset _Lt_04B2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B4
mov dword ptr [ebp-4], 18
jmp .L_046F
.L_04B4:
.L_04B3:
push 4
push offset _Lt_04B5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B7
mov dword ptr [ebp-4], 20
jmp .L_046F
.L_04B7:
.L_04B6:
push 7
push offset _Lt_04B8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04BA
mov dword ptr [ebp-4], 21
jmp .L_046F
.L_04BA:
.L_04B9:
jmp .L_0470
.L_04BB:
push 6
push offset _Lt_04BD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04BF
mov dword ptr [ebp-4], 22
jmp .L_046F
.L_04BF:
.L_04BE:
push 10
push offset _Lt_04C0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04C2
mov dword ptr [ebp-4], 23
jmp .L_046F
.L_04C2:
.L_04C1:
push 7
push offset _Lt_04C3
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04C5
mov dword ptr [ebp-4], 24
jmp .L_046F
.L_04C5:
.L_04C4:
push 4
push offset _Lt_04C6
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04C8
mov dword ptr [ebp-4], 25
jmp .L_046F
.L_04C8:
.L_04C7:
jmp .L_0470
.L_04C9:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04CC
mov dword ptr [ebp-4], 26
jmp .L_046F
.L_04CC:
.L_04CB:
push 4
push offset _Lt_04CD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04CF
mov dword ptr [ebp-4], 27
jmp .L_046F
.L_04CF:
.L_04CE:
jmp .L_0470
.L_04D0:
push 5
push offset _Lt_04D2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04D4
mov dword ptr [ebp-4], 28
jmp .L_046F
.L_04D4:
.L_04D3:
jmp .L_0470
.L_04D5:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04D8
mov dword ptr [ebp-4], 29
jmp .L_046F
.L_04D8:
.L_04D7:
push 8
push offset _Lt_04D9
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04DB
mov dword ptr [ebp-4], 30
jmp .L_046F
.L_04DB:
.L_04DA:
jmp .L_0470
.L_04DC:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04DF
mov dword ptr [ebp-4], 31
jmp .L_046F
.L_04DF:
.L_04DE:
push 5
push offset _Lt_04E0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04E2
mov dword ptr [ebp-4], 32
jmp .L_046F
.L_04E2:
.L_04E1:
push 4
push offset _Lt_0052
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04E4
mov dword ptr [ebp-4], 33
jmp .L_046F
.L_04E4:
.L_04E3:
jmp .L_0470
.L_04E5:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04E8
mov dword ptr [ebp-4], 34
jmp .L_046F
.L_04E8:
.L_04E7:
push 4
push offset _Lt_04E9
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04EB
mov dword ptr [ebp-4], 35
jmp .L_046F
.L_04EB:
.L_04EA:
push 7
push offset _Lt_04EC
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04EE
mov dword ptr [ebp-4], 36
jmp .L_046F
.L_04EE:
.L_04ED:
push 3
push offset _Lt_04EF
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F1
mov dword ptr [ebp-4], 37
jmp .L_046F
.L_04F1:
.L_04F0:
jmp .L_0470
.L_04F2:
push 10
push offset _Lt_04F4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F6
mov dword ptr [ebp-4], 39
jmp .L_046F
.L_04F6:
.L_04F5:
push 10
push offset _Lt_04F7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F9
mov dword ptr [ebp-4], 38
jmp .L_046F
.L_04F9:
.L_04F8:
push 6
push offset _Lt_04FA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04FC
mov dword ptr [ebp-4], 40
jmp .L_046F
.L_04FC:
.L_04FB:
push 10
push offset _Lt_04FD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04FF
mov dword ptr [ebp-4], 41
jmp .L_046F
.L_04FF:
.L_04FE:
push 8
push offset _Lt_0500
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0502
mov dword ptr [ebp-4], 42
jmp .L_046F
.L_0502:
.L_0501:
jmp .L_0470
.L_0503:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0506
mov dword ptr [ebp-4], 43
jmp .L_046F
.L_0506:
.L_0505:
jmp .L_0470
.L_0507:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_050A
mov dword ptr [ebp-4], 44
jmp .L_046F
.L_050A:
.L_0509:
jmp .L_0470
.L_050B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_050E
mov dword ptr [ebp-4], 45
jmp .L_046F
.L_050E:
.L_050D:
push 4
push offset _Lt_050F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0511
mov dword ptr [ebp-4], 46
jmp .L_046F
.L_0511:
.L_0510:
push 3
push offset _Lt_0512
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0514
mov dword ptr [ebp-4], 47
jmp .L_046F
.L_0514:
.L_0513:
push 7
push offset _Lt_0515
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0517
mov dword ptr [ebp-4], 48
jmp .L_046F
.L_0517:
.L_0516:
push 6
push offset _Lt_0518
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_051A
mov dword ptr [ebp-4], 49
jmp .L_046F
.L_051A:
.L_0519:
push 8
push offset _Lt_051B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_051D
mov dword ptr [ebp-4], 50
jmp .L_046F
.L_051D:
.L_051C:
jmp .L_0470
.L_051E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0521
mov dword ptr [ebp-4], 51
jmp .L_046F
.L_0521:
.L_0520:
push 3
push offset _Lt_0522
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0524
mov dword ptr [ebp-4], 53
jmp .L_046F
.L_0524:
.L_0523:
jmp .L_0470
.L_0525:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0528
mov dword ptr [ebp-4], 52
jmp .L_046F
.L_0528:
.L_0527:
push 3
push offset _Lt_0529
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_052B
mov dword ptr [ebp-4], 54
jmp .L_046F
.L_052B:
.L_052A:
jmp .L_0470
.L_052C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_052F
mov dword ptr [ebp-4], 55
jmp .L_046F
.L_052F:
.L_052E:
push 13
push offset _Lt_0530
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0532
mov dword ptr [ebp-4], 56
jmp .L_046F
.L_0532:
.L_0531:
push 7
push offset _Lt_0533
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0535
mov dword ptr [ebp-4], 57
jmp .L_046F
.L_0535:
.L_0534:
push 6
push offset _Lt_0536
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0538
mov dword ptr [ebp-4], 58
jmp .L_046F
.L_0538:
.L_0537:
jmp .L_0470
.L_0539:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_053C
mov dword ptr [ebp-4], 59
jmp .L_046F
.L_053C:
.L_053B:
push 7
push offset _Lt_03E6
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_053E
mov dword ptr [ebp-4], 60
jmp .L_046F
.L_053E:
.L_053D:
push 6
push offset _Lt_053F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0541
mov dword ptr [ebp-4], 61
jmp .L_046F
.L_0541:
.L_0540:
jmp .L_0470
.L_0542:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0545
mov dword ptr [ebp-4], 62
jmp .L_046F
.L_0545:
.L_0544:
push 4
push offset _Lt_0546
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0548
mov dword ptr [ebp-4], 63
jmp .L_046F
.L_0548:
.L_0547:
push 8
push offset _Lt_0549
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_054B
mov dword ptr [ebp-4], 64
jmp .L_046F
.L_054B:
.L_054A:
jmp .L_0470
.L_054C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_054F
mov dword ptr [ebp-4], 65
jmp .L_046F
.L_054F:
.L_054E:
jmp .L_0470
.L_0550:
push 3
push offset _Lt_0552
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0554
mov dword ptr [ebp-4], 66
jmp .L_046F
.L_0554:
.L_0553:
push 3
push offset _Lt_0555
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0557
mov dword ptr [ebp-4], 68
jmp .L_046F
.L_0557:
.L_0556:
push 3
push offset _Lt_0558
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_055A
mov dword ptr [ebp-4], 67
jmp .L_046F
.L_055A:
.L_0559:
jmp .L_0470
.L_055B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_055D
mov dword ptr [ebp-4], 69
jmp .L_046F
.L_055D:
.L_055C:
jmp .L_0470
.L_055E:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0561
mov dword ptr [ebp-4], 70
jmp .L_046F
.L_0561:
.L_0560:
jmp .L_0470
.L_0562:
push 9
push offset _Lt_0563
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0565
mov dword ptr [ebp-4], 64
jmp .L_046F
.L_0565:
.L_0564:
push 6
push offset _Lt_0566
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0568
mov dword ptr [ebp-4], 28
jmp .L_046F
.L_0568:
.L_0567:
jmp .L_0470
.L_0471:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_0470
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0569+eax*4-180]
_.L_0569:
.int .L_0562
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0488
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0507
.int .L_0470
.int .L_0470
.int .L_0525
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0550
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0470
.int .L_0473
.int .L_047D
.int .L_0484
.int .L_048C
.int .L_0496
.int .L_04BB
.int .L_04C9
.int .L_04D0
.int .L_04D5
.int .L_0470
.int .L_0470
.int .L_04DC
.int .L_04E5
.int .L_04F2
.int .L_0503
.int .L_050B
.int .L_0470
.int .L_051E
.int .L_052C
.int .L_0539
.int .L_0470
.int .L_0542
.int .L_054C
.int .L_055B
.int .L_0470
.int .L_055E
.L_0470:
mov dword ptr [ebp-4], -1
.L_046F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HANDLEARG@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_056A:
cmp dword ptr [_FBC], 0
jl .L_056D
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_056F
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_056F:
.L_056E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [_FBC]
call _HANDLEOPT@12
mov dword ptr [_FBC], -1
jmp .L_056B
.L_056D:
.L_056C:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_0571
jmp .L_056B
.L_0571:
.L_0570:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_0574
.L_0575:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0577
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0577:
.L_0576:
push dword ptr [ebp-8]
call _PARSEOPTION@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_0579
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0579:
.L_0578:
cmp dword ptr [ebp+12], 0
je .L_057B
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [_CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_057D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_057D:
.L_057C:
.L_057B:
.L_057A:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8], 0
je .L_057F
mov ebx, dword ptr [ebp-12]
mov dword ptr [_FBC], ebx
jmp .L_057E
.L_057F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HANDLEOPT@12
.L_057E:
cmp dword ptr [ebp+12], 0
je .L_0581
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8+2], 0
je .L_0583
push 2
call _FBRESTARTBEGINREQUEST@4
.L_0583:
.L_0582:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [_CMDLINEOPTIONTB+ebx*8+4], 0
je .L_0585
push 8
call _FBRESTARTBEGINREQUEST@4
.L_0585:
.L_0584:
.L_0581:
.L_0580:
jmp .L_0572
.L_0574:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_0586
.L_0587:
cmp dword ptr [_Lt_0921], 128
jle .L_0589
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_0589:
.L_0588:
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
push eax
push dword ptr [ebp+8]
call _fb_RIGHT@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_058B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_058B:
.L_058A:
inc dword ptr [_Lt_0921]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _PARSEARGSFROMFILE@8
dec dword ptr [_Lt_0921]
jmp .L_0572
.L_0586:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HGETFILEEXT@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
lea eax, [ebp-16]
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 4
push offset _Lt_058F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_058E
.L_0590:
push dword ptr [ebp+8]
call _HADDBAS@4
jmp .L_058D
.L_058E:
push 2
push offset _Lt_0504
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0591
.L_0592:
push dword ptr [ebp+8]
call _FBCADDOBJ@4
jmp .L_058D
.L_0591:
push 2
push offset _Lt_0474
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0593
.L_0594:
push dword ptr [ebp+8]
lea eax, [_FBC+232]
push eax
call _STRLISTAPPEND@8
jmp .L_058D
.L_0593:
push 3
push offset _Lt_0596
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0598
.L_0599:
push 4
push offset _Lt_0597
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0595
.L_0598:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+104]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
jmp .L_058D
.L_0595:
push 4
push offset _Lt_059B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_059A
.L_059C:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_059E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_059E:
.L_059D:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+136]
push eax
call _HSETIOFILE@12
jmp .L_058D
.L_059A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_059F:
.L_058D:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_058C:
.L_0572:
.L_056B:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .data
.balign 4
_Lt_0921:
.int 0

.section .text
.balign 16
_PARSEARGSFROMFILE@8:
push ebp
mov ebp, esp
sub esp, 16
.L_05B7:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_05BA
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05BA:
.L_05B9:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_05BB:
push dword ptr [ebp-4]
call _fb_FileEof@4
test eax, eax
jne .L_05BC
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call _fb_FileLineInput@16
push 0
push -1
lea eax, [ebp-16]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _FBCPARSEARGSFROMSTRING@12
jmp .L_05BB
.L_05BC:
push dword ptr [ebp-4]
call _fb_FileClose@4
test eax, eax
je .L_05BD
push 0
push 0
push offset _Lt_0091
push 2712
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05BD:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_05B8:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTARGETNEEDSPIC@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_05BE:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY@0
test eax, eax
je .L_05C1
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
jmp .L_05C3
.L_05C5:
mov dword ptr [ebp-4], -1
jmp .L_05C2
.L_05C3:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05C2
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_05C6+eax*4-8]
_.L_05C6:
.int .L_05C5
.int .L_05C2
.int .L_05C2
.int .L_05C5
.int .L_05C5
.int .L_05C5
.int .L_05C5
.int .L_05C2
.int .L_05C5
.L_05C2:
.L_05C1:
.L_05C0:
.L_05BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEARGS@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_05C7:
mov dword ptr [_FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05CA
.L_05CD:
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
call _fb_StrAssign@20
push 0
push 0
lea ebx, [ebp-12]
push ebx
call _HANDLEARG@12
.L_05CB:
inc dword ptr [ebp-16]
.L_05CA:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05CD
.L_05CC:
cmp dword ptr [_FBC], 0
jl .L_05CF
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
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HFATALINVALIDOPTION@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_05CF:
.L_05CE:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_05C8:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKARGS@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.L_05D1:
call _HCHECKWAITINGOBJFILE@0
push 5
call _FBGETOPTION@4
test eax, eax
jne .L_05D4
push 7
call _FBGETOPTION@4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05D6
push 0
push 1
push -1
push offset _Lt_0000
push 284
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05D6:
.L_05D5:
.L_05D4:
.L_05D3:
cmp dword ptr [_FBC+24], 0
jl .L_05D8
push dword ptr [_FBC+24]
push 4
call _FBSETOPTION@8
.L_05D8:
.L_05D7:
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05DA
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 82
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05DA:
.L_05D9:
call _FBGETCPUFAMILY@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05DC
push 0
push 2
call _FBSETOPTION@8
jmp .L_05DB
.L_05DC:
push 1
push 2
call _FBSETOPTION@8
.L_05DB:
cmp dword ptr [_FBC+20], 0
jl .L_05DE
push dword ptr [_FBC+20]
push 2
call _FBSETOPTION@8
.L_05DE:
.L_05DD:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call _FBGETCPUFAMILY@0
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .L_05E0
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 83
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05E0:
.L_05DF:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_05E2
.L_05E4:
jmp .L_05E1
.L_05E5:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05E7
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05E7:
.L_05E6:
jmp .L_05E1
.L_05E2:
cmp dword ptr [ebp-4], 4
ja .L_05E5
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05E8+eax*4]
_.L_05E8:
.int .L_05E4
.int .L_05E4
.int .L_05E5
.int .L_05E5
.int .L_05E4
.L_05E1:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_05EA
.L_05EC:
jmp .L_05E9
.L_05ED:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_05EF
push 0
push 1
push -1
push dword ptr [_FBC+136]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05EF:
.L_05EE:
jmp .L_05E9
.L_05EA:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05ED
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05F0+eax*4-8]
_.L_05F0:
.int .L_05EC
.int .L_05ED
.int .L_05ED
.int .L_05EC
.int .L_05EC
.int .L_05EC
.int .L_05EC
.int .L_05EC
.int .L_05EC
.L_05E9:
push 3
call _FBGETOPTION@4
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05F2
push 1
push 9
call _FBSETOPTION@8
.L_05F2:
.L_05F1:
cmp dword ptr [_FBC+32], 0
jl .L_05F4
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05F8
.L_05F9:
cmp dword ptr [ebp-4], 1
jne .L_05F7
.L_05F8:
jmp .L_05F5
.L_05F7:
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-16]
push 319
call _ERRREPORTEX@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_05FA:
.L_05F5:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [_FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05FD
push 0
push 1
push -1
push offset _Lt_0000
push 84
call _ERRREPORTEX@20
.L_05FD:
.L_05FC:
push dword ptr [_FBC+32]
push 9
call _FBSETOPTION@8
.L_05F4:
.L_05F3:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_05FF
call _HTARGETNEEDSPIC@0
test eax, eax
je .L_0601
push -1
push 37
call _FBSETOPTION@8
.L_0601:
.L_0600:
.L_05FF:
.L_05FE:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_0603
push 0
call _FBGETOPTION@4
test eax, eax
jne .L_0605
push 0
push 1
push -1
push offset _Lt_0000
push 85
call _ERRREPORTEX@20
jmp .L_0604
.L_0605:
call _HTARGETNEEDSPIC@0
test eax, eax
jne .L_0606
push 0
push 1
push -1
push offset _Lt_0000
push 86
call _ERRREPORTEX@20
.L_0606:
.L_0604:
.L_0603:
.L_0602:
push -1
push 38
call _FBSETOPTION@8
.L_05D2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEPREFIX@0:
push ebp
mov ebp, esp
sub esp, 36
.L_0607:
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_060A
push 0
push -1
push 2
push offset _Lt_001B
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _fb_ExePath@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push -1
push 4
push offset _Lt_060E
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
jmp .L_0609
.L_060A:
push 0
push -1
push 2
push offset _Lt_001B
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [_FBC+1968]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0609:
.L_0608:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCSETUPCOMPILERPATHS@0:
push ebp
mov ebp, esp
sub esp, 168
.L_0612:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 10
push offset _Lt_0614
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0052
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0616
push 0
push -1
push 261
lea eax, [_FBC+3012]
push eax
push -1
push 2
push offset _Lt_001B
push -1
push 4
push offset _Lt_0617
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign@20
jmp .L_0615
.L_0616:
push 0
push -1
push 129
lea eax, [_FBC+1697]
push eax
push -1
push 2
push offset _Lt_001B
push -1
push 4
push offset _Lt_0617
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign@20
.L_0615:
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001B
push -1
push 8
push offset _Lt_04D9
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2490]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_001B
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001B
push -1
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2751]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0613:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCPRINTTARGETINFO@0:
push ebp
mov ebp, esp
sub esp, 36
.L_0626:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 0
call _FBGETFBCARCH@0
push eax
push 3
push offset _Lt_0628
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0628
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
call _FBGETBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_062B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1568]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_062D
push 0
push 3
push offset _Lt_062E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_062F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_062D:
.L_062C:
push 2
push 7
push offset _Lt_0630
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
push 2
push 8
push offset _Lt_0631
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 2
call _FBGETOPTION@4
push eax
call _FBGETBACKENDNAME@4
push eax
push 0
call _fb_PrintString@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0627:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEMAINNAME@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0632:
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_0635
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0637
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [_FBC+745]
push ebx
call _fb_StrAssign@20
jmp .L_0636
.L_0637:
lea ebx, [_FBC+200]
push ebx
call _LISTGETHEAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0639
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
jmp .L_0638
.L_0639:
push 0
push 8
push offset _Lt_063A
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
.L_0638:
.L_0636:
push 0
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+745]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HSTRIPEXT@4
push eax
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0635:
.L_0634:
.L_0633:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASMNAME@8:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_063C:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_063F
mov eax, offset _Lt_0640
mov dword ptr [ebp-16], eax
jmp .L_063E
.L_063F:
mov eax, offset _Lt_0305
mov dword ptr [ebp-16], eax
.L_063E:
cmp dword ptr [ebp+12], 1
jne .L_0642
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_0645
.L_0646:
mov eax, offset _Lt_0647
mov dword ptr [ebp-16], eax
jmp .L_0643
.L_0645:
cmp dword ptr [ebp-44], 2
jne .L_0648
.L_0649:
mov eax, offset _Lt_064A
mov dword ptr [ebp-16], eax
.L_0648:
.L_0643:
.L_0642:
.L_0641:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_063D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEBAS@16:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_064C:
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
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 1
call _FBGETOPTION@4
test eax, eax
je .L_064F
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0651
push 0
push -1
push 8
push offset _Lt_0652
push -1
lea eax, [ebp-32]
push eax
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
.L_0651:
.L_0650:
.L_064F:
.L_064E:
cmp dword ptr [_FBC+56], 0
je .L_0655
push 2
push 11
push offset _Lt_0656
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call _fb_PrintString@12
push 0
push 4
push offset _Lt_0657
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
lea eax, [ebp-20]
push eax
push 0
call _fb_PrintString@12
push 1
call _FBGETOPTION@4
test eax, eax
je .L_0659
push 0
push -1
lea eax, [ebp-32]
push eax
push 6
push offset _Lt_065A
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_0659:
.L_0658:
cmp dword ptr [ebp+12], 0
je .L_065D
push 0
push 14
push offset _Lt_065E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_065C
.L_065D:
cmp dword ptr [ebp+16], 0
je .L_065F
push 0
push 23
push offset _Lt_0660
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_065F:
.L_065C:
push 1
push 0
call _fb_PrintVoid@8
.L_0655:
.L_0654:
push 12
call _FBGETOPTION@4
cmp eax, -1
je .L_0662
push 12
call _FBGETOPTION@4
push eax
push 10
call _FBSETOPTION@8
.L_0662:
.L_0661:
push 10
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_0664
push 3
push 0
call _FBSETOPTION@8
.L_0664:
.L_0663:
.L_0665:
mov eax, dword ptr [_FBC+40]
not eax
push 2
mov ebx, eax
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov esi, eax
call _FBGETOPTION@4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [_FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_0669
lea esi, [ebp-20]
push esi
call _FBCADDTEMP@4
jmp .L_0668
.L_0669:
cmp dword ptr [ebp+20], 1
jne .L_066A
call _FBRESTARTGETCOUNT@0
test eax, eax
jle .L_066C
lea eax, [ebp-20]
push eax
call _FBCREMOVETEMP@4
.L_066C:
.L_066B:
.L_066A:
.L_0668:
push dword ptr [ebp+20]
lea eax, [_FBC+1006]
push eax
push dword ptr [ebp+12]
call _FBINIT@12
cmp dword ptr [ebp+16], 0
je .L_066E
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBSETLIBS@8
jmp .L_066D
.L_066E:
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+264]
push eax
call _FBSETLIBS@8
.L_066D:
push dword ptr [ebp+12]
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _FBCOMPILE@16
call _ERRGETCOUNT@0
test eax, eax
jle .L_0670
push 1
call _FBCEND@4
.L_0670:
.L_066F:
call _FBSHOULDRESTART@0
test eax, eax
jne .L_0672
jmp .L_0666
.L_0672:
.L_0671:
push 7
call _FBRESTARTENDREQUEST@4
call _FBEND@0
call _FBSHOULDRESTART@0
test eax, eax
je .L_0674
push 12
call _FBGETOPTION@4
cmp eax, -1
jne .L_0676
push dword ptr [ebp-4]
push 10
call _FBSETOPTION@8
.L_0676:
.L_0675:
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_064D
.L_0674:
.L_0673:
.L_0667:
jmp .L_0665
.L_0666:
cmp dword ptr [ebp+16], 0
jne .L_0678
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBGETLIBS@8
.L_0678:
.L_0677:
call _FBEND@0
cmp dword ptr [ebp+16], 0
je .L_067A
push dword ptr [ebp-8]
push 0
call _FBSETOPTION@8
.L_067A:
.L_0679:
push dword ptr [ebp-4]
push 10
call _FBSETOPTION@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_064D:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCOMPILEMODULES@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_067B:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0680
.L_0681:
cmp dword ptr [ebp-32], 2
jne .L_067F
.L_0680:
mov dword ptr [ebp-8], -1
jmp .L_067D
.L_067F:
mov eax, dword ptr [_FBC+1136]
mov dword ptr [ebp-8], eax
.L_0682:
.L_067D:
cmp dword ptr [ebp-8], 0
je .L_0684
push 0
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
.L_0684:
.L_0683:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0686
lea eax, [_FBC+264]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETCOPY@8
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETCOPY@8
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_067C
.L_0686:
.L_0685:
mov dword ptr [ebp-28], 0
.L_0687:
cmp dword ptr [ebp-8], 0
je .L_068B
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_068B:
.L_068A:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call _HCOMPILEBAS@16
call _FBSHOULDRESTART@0
test eax, eax
je .L_068E
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_067C
.L_068E:
.L_068D:
push dword ptr [ebp-24]
call _LISTGETNEXT@4
mov dword ptr [ebp-24], eax
.L_0689:
cmp dword ptr [ebp-24], 0
jne .L_0687
.L_0688:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_067C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEXPM@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_068F:
push 0
push 28
push offset _Lt_0691
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 21
push offset _Lt_0692
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 20
push offset _Lt_0693
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_0695
jmp .L_0690
.L_0695:
.L_0694:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 10
push offset _Lt_0696
push -1
push 0
lea eax, [ebp-20]
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0698
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0699
push 0
push 0
push offset _Lt_0091
push 3292
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0699:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_0690
.L_0698:
.L_0697:
mov dword ptr [ebp-24], 0
.L_069A:
push dword ptr [ebp-8]
call _fb_FileEof@4
test eax, eax
jne .L_069B
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen@8
push 1
push offset _Lt_013A
mov ebx, eax
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-20]
push eax
push 1
call _fb_StrInstr@12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push 1
push offset _Lt_013A
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-20]
push eax
push 2
call _fb_StrInstr@12
push eax
lea eax, [ebp-20]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_069D
cmp dword ptr [ebp-24], 0
je .L_069F
push 0
push 5
push offset _Lt_06A0
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
.L_069F:
.L_069E:
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_06A1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
mov dword ptr [ebp-24], -1
.L_069D:
.L_069C:
jmp .L_069A
.L_069B:
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_06A3
push 0
push 0
push offset _Lt_0091
push 3322
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06A3:
cmp dword ptr [ebp-24], 0
jne .L_06A5
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_0690
.L_06A5:
.L_06A4:
push 0
push 5
push offset _Lt_06A6
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 4
push offset _Lt_06A7
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 67
push offset _Lt_06A8
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 74
push offset _Lt_06AB
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0690:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEXPM@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_06AC:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_06AF
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06AD
.L_06AF:
.L_06AE:
push 0
push -1
lea eax, [_FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
push dword ptr [_FBC+148]
call _fb_StrLen@8
test eax, eax
jle .L_06B1
push 0
push -1
push dword ptr [_FBC+148]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrAssign@20
.L_06B1:
.L_06B0:
push 0
push 5
push offset _Lt_06B2
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrConcatByref@20
cmp dword ptr [_FBC+56], 0
je .L_06B4
push 2
push 13
push offset _Lt_06B5
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push -1
lea eax, [_FBC+136]
push eax
push -1
push 5
push offset _Lt_0657
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_06B4:
.L_06B3:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call _HPARSEXPM@8
test eax, eax
jne .L_06B9
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06AD
.L_06B9:
.L_06B8:
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [_FBC+136]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_06BB
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06AD
.L_06BB:
.L_06BA:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .L_06BD
push 0
push 0
push offset _Lt_0091
push 3378
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06BD:
cmp dword ptr [_FBC+40], 0
jne .L_06BF
lea eax, [_FBC+136]
push eax
call _FBCADDTEMP@4
.L_06BF:
.L_06BE:
push -1
push 0
push 0
lea eax, [_FBC+136]
push eax
call _HCOMPILEBAS@16
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_06AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULE@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_06C0:
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
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_FBC+48]
not eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06C3
lea eax, [ebp-28]
push eax
call _FBCADDTEMP@4
.L_06C3:
.L_06C2:
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06C6
.L_06C7:
mov byte ptr [ebp-36], 0
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06CA
.L_06CB:
push 0
push 6
push offset _Lt_06CC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06C8
.L_06CA:
cmp dword ptr [ebp-40], 1
jne .L_06CD
.L_06CE:
push 0
push 6
push offset _Lt_06CF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov byte ptr [ebp-36], 1
jmp .L_06C8
.L_06CD:
cmp dword ptr [ebp-40], 4
jne .L_06D0
.L_06D1:
push 0
push 6
push offset _Lt_06CC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06C8
.L_06D0:
cmp dword ptr [ebp-40], 5
je .L_06D3
.L_06D4:
cmp dword ptr [ebp-40], 6
jne .L_06D2
.L_06D3:
push 0
push 6
push offset _Lt_06CF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov byte ptr [ebp-36], 1
.L_06D2:
.L_06C8:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06D6
call _FBGETCPUFAMILY@0
cmp eax, 4
je .L_06D7
call _FBGETCPUFAMILY@0
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0934
.L_06D7:
mov dword ptr [ebp-40], -1
.L_0934:
cmp dword ptr [ebp-40], 0
jne .L_06D9
call _FBGETCPUFAMILY@0
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0935
.L_06D9:
mov dword ptr [ebp-44], -1
.L_0935:
cmp dword ptr [ebp-44], 0
je .L_06DC
cmp dword ptr [_FBC+28], 0
je .L_06DE
push 0
push 14
push offset _Lt_06DF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06DD
.L_06DE:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH@0
push eax
push 7
push offset _Lt_06E0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_06DD:
jmp .L_06DB
.L_06DC:
cmp dword ptr [_FBC+28], 0
je .L_06E5
push 0
push 15
push offset _Lt_06E6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06E4
.L_06E5:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH@0
push eax
push 8
push offset _Lt_06E7
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_06E4:
.L_06DB:
.L_06D6:
.L_06D5:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_06EC
push 0
push 7
push offset _Lt_06ED
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06EC:
.L_06EB:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06EF
push 0
push 30
push offset _Lt_06F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_06F1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06EE
.L_06EF:
push 0
push 90
push offset _Lt_06F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_06F5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06EE:
push 0
push 11
push offset _Lt_06F6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 39
push offset _Lt_06F7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_06F8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 22
push offset _Lt_06F9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-40], eax
jmp .L_06FB
.L_06FD:
push 0
push 12
push offset _Lt_06FE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06FA
.L_06FB:
cmp dword ptr [ebp-40], 0
ja .L_06FA
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_06FF+eax*4]
_.L_06FF:
.int .L_06FD
.L_06FA:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0701
push 0
push 17
push offset _Lt_0702
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0701:
.L_0700:
push 0
push 17
push offset _Lt_0703
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_0704
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 49
push offset _Lt_0705
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push 21
mov ebx, eax
call _FBGETOPTION@4
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0707
push 0
push 17
push offset _Lt_0708
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0706
.L_0707:
push 0
push 20
push offset _Lt_0709
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0706:
push 0
push 13
push offset _Lt_070A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 14
call _FBGETOPTION@4
test eax, eax
je .L_070C
push 0
push 4
push offset _Lt_070D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_070C:
.L_070B:
push 5
call _FBGETOPTION@4
cmp eax, 1
jne .L_070F
push 0
push 21
push offset _Lt_0710
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_070F:
.L_070E:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_0714
.L_0715:
cmp dword ptr [ebp-40], 1
jne .L_0713
.L_0714:
push 9
call _FBGETOPTION@4
test eax, eax
jne .L_0717
push 0
push 13
push offset _Lt_0718
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0717:
.L_0716:
.L_0713:
.L_0711:
jmp .L_06C4
.L_06C6:
cmp dword ptr [ebp-32], 2
jne .L_0719
.L_071A:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_071D
.L_071E:
push 0
push 12
push offset _Lt_071F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_071D:
cmp dword ptr [ebp-36], 1
jne .L_0720
.L_0721:
push 0
push 15
push offset _Lt_0722
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_0720:
cmp dword ptr [ebp-36], 2
jne .L_0723
.L_0724:
push 0
push 12
push offset _Lt_0725
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_0723:
cmp dword ptr [ebp-36], 3
jne .L_0726
.L_0727:
push 0
push 16
push offset _Lt_0728
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_0726:
cmp dword ptr [ebp-36], 4
jne .L_0729
.L_072A:
push 0
push 15
push offset _Lt_072B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_0729:
cmp dword ptr [ebp-36], 5
jne .L_072C
.L_072D:
push 0
push 17
push offset _Lt_072E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_071B
.L_072C:
cmp dword ptr [ebp-36], 6
jne .L_072F
.L_0730:
push 0
push 19
push offset _Lt_0731
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_072F:
.L_071B:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_0733
push 0
push 23
push offset _Lt_0734
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0733:
.L_0732:
push 0
push 3
push offset _Lt_06F8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0738
.L_0739:
cmp dword ptr [ebp-36], 1
jne .L_0737
.L_0738:
push 9
call _FBGETOPTION@4
test eax, eax
jne .L_073B
push 0
push 24
push offset _Lt_073C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_073B:
.L_073A:
.L_0737:
.L_0735:
.L_0719:
.L_06C4:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_073D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_073E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_0741
.L_0742:
mov dword ptr [ebp-36], 3
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_0744
mov dword ptr [ebp-36], 14
.L_0744:
.L_0743:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset _Lt_0745
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
jmp .L_073F
.L_0741:
cmp dword ptr [ebp-32], 2
jne .L_0746
.L_0747:
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_0748
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
.L_0746:
.L_073F:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_06C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCOMPILESTAGE2MODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0749:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_074B:
cmp dword ptr [ebp-4], 0
je .L_074C
push dword ptr [ebp-4]
call _HCOMPILESTAGE2MODULE@4
test eax, eax
jne .L_074E
push 1
call _FBCEND@4
.L_074E:
.L_074D:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_074B
.L_074C:
.L_074A:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULE@4:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_074F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0753
.L_0754:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_0756
push 0
push 12
push offset _Lt_017B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0755
.L_0756:
push 0
push 6
push offset _Lt_0757
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0755:
jmp .L_0751
.L_0753:
cmp dword ptr [ebp-60], 1
jne .L_0758
.L_0759:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_075B
push 0
push 14
push offset _Lt_017E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_075A
.L_075B:
push 0
push 6
push offset _Lt_075C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_075A:
.L_0758:
.L_0751:
push 14
call _FBGETOPTION@4
test eax, eax
jne .L_075E
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0760
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0762
push 0
push 24
push offset _Lt_0763
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0762:
.L_0761:
.L_0760:
.L_075F:
.L_075E:
.L_075D:
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_0765
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0750
.L_0765:
.L_0764:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_073D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset _Lt_073E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [_FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-56], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_076A
mov dword ptr [ebp-56], 11
.L_076A:
.L_0769:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset _Lt_076B
call _FBCRUNBIN@12
test eax, eax
jne .L_076D
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0750
.L_076D:
.L_076C:
cmp dword ptr [_FBC+52], 0
jne .L_076F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.L_076F:
.L_076E:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0750:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLEMODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0770:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0772:
cmp dword ptr [ebp-4], 0
je .L_0773
push dword ptr [ebp-4]
call _HASSEMBLEMODULE@4
test eax, eax
jne .L_0775
push 1
call _FBCEND@4
.L_0775:
.L_0774:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0772
.L_0773:
.L_0771:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERC@4:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.L_0776:
push 0
push 37
push offset _Lt_0778
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset _Lt_014F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset _Lt_014F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 8
push offset _Lt_077F
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
cmp dword ptr [_FBC+52], 0
jne .L_0781
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.L_0781:
.L_0780:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0777:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLERCS@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0782:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0784:
cmp dword ptr [ebp-4], 0
je .L_0785
push dword ptr [ebp-4]
call _HASSEMBLERC@4
test eax, eax
jne .L_0787
push 1
call _FBCEND@4
.L_0787:
.L_0786:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0784
.L_0785:
.L_0783:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEXPM@0:
.L_0788:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_078B
push 2
call _FBGETOPTION@4
test eax, eax
je .L_078D
lea eax, [_FBC+136]
push eax
call _HCOMPILESTAGE2MODULE@4
.L_078D:
.L_078C:
lea eax, [_FBC+136]
push eax
call _HASSEMBLEMODULE@4
test eax, eax
jne .L_078F
push 1
call _FBCEND@4
.L_078F:
.L_078E:
.L_078B:
.L_078A:
.L_0789:
ret
.balign 16
_HCOMPILEFBCTINF@0:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0790:
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset _Lt_001E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 12
push offset _Lt_001D
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [_FBC+56], 0
je .L_0793
push 2
push 10
push offset _Lt_0794
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString@12
.L_0793:
.L_0792:
call _fb_FileFree@0
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_0796
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
jmp .L_0791
.L_0796:
.L_0795:
push dword ptr [ebp-40]
call _fb_FileClose@4
test eax, eax
je .L_0797
push 0
push 0
push offset _Lt_0091
push 3788
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0797:
cmp dword ptr [_FBC+40], 0
jne .L_0799
lea eax, [ebp-24]
push eax
call _FBCADDTEMP@4
.L_0799:
.L_0798:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call _HCOMPILEBAS@16
push 2
call _FBGETOPTION@4
test eax, eax
je .L_079B
lea eax, [ebp-24]
push eax
call _HCOMPILESTAGE2MODULE@4
.L_079B:
.L_079A:
lea eax, [ebp-24]
push eax
call _HASSEMBLEMODULE@4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
.L_0791:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HARCHIVEFILES@0:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_079C:
call _HSETOUTNAME@0
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
test eax, eax
je .L_079F
.L_079F:
.L_079E:
push 0
push -1
push 3
push offset _Lt_02B7
push -1
push 261
lea eax, [_FBC+484]
push eax
push 7
push offset _Lt_07A1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 39
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .L_07A5
call _HCOMPILEFBCTINF@0
test eax, eax
je .L_07A7
push 0
push 15
push offset _Lt_07AA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_07A7:
.L_07A6:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 12
push offset _Lt_001D
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _FBCADDTEMP@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_07A5:
.L_07A4:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-44], eax
.L_07AC:
cmp dword ptr [ebp-44], 0
je .L_07AD
push 0
push -1
push -1
push 3
push offset _Lt_073D
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset _Lt_013A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _LISTGETNEXT@4
mov dword ptr [ebp-44], eax
jmp .L_07AC
.L_07AD:
mov dword ptr [ebp-48], 1
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_07B2
mov dword ptr [ebp-48], 12
.L_07B2:
.L_07B1:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-48]
push offset _Lt_07B3
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_079D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETDEFAULTLIBPATHS@0:
push ebp
mov ebp, esp
sub esp, 28
.L_07B4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0008
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_07B9
push offset _Lt_07BA
call _FBCADDLIBPATHFOR@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_07BD
.L_07BE:
push offset _Lt_07BF
call _FBCADDLIBPATHFOR@4
jmp .L_07BB
.L_07BD:
cmp dword ptr [ebp-28], 3
jne .L_07C0
.L_07C1:
push offset _Lt_07C2
call _FBCADDLIBPATHFOR@4
jmp .L_07BB
.L_07C0:
push offset _Lt_07C4
call _FBCADDLIBPATHFOR@4
.L_07C3:
.L_07BB:
.L_07B9:
.L_07B8:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_07C7
.L_07C8:
push offset _Lt_07C9
call _FBCADDLIBPATHFOR@4
jmp .L_07C5
.L_07C7:
cmp dword ptr [ebp-28], 0
jne .L_07CA
.L_07CB:
push offset _Lt_07CC
call _FBCADDLIBPATHFOR@4
.L_07CA:
.L_07C5:
.L_07B5:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIB@4:
push ebp
mov ebp, esp
sub esp, 12
.L_07CD:
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
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETADD@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_07CE:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETFBLIBNAMESUFFIX@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_07D0:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 35
call _FBGETOPTION@4
test eax, eax
je .L_07D3
push 0
push 3
push offset _Lt_04EF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_07D3:
.L_07D2:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_07D5
push 0
push 4
push offset _Lt_050F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_07D5:
.L_07D4:
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
.L_07D1:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HADDDEFAULTLIBS@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_07D6:
push 32
call _FBGETOPTION@4
test eax, eax
je .L_07D9
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 5
push offset _Lt_0464
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_07D8
.L_07D9:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 3
push offset _Lt_0021
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_07D8:
push 36
call _FBGETOPTION@4
test eax, eax
je .L_07DF
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 6
push offset _Lt_04BD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
jmp .L_07E3
.L_07E5:
push offset _Lt_07E6
call _FBCADDDEFLIB@4
push offset _Lt_07E7
call _FBCADDDEFLIB@4
jmp .L_07E2
.L_07E8:
push offset _Lt_07E9
call _FBCADDDEFLIB@4
push offset _Lt_07EA
call _FBCADDDEFLIB@4
push offset _Lt_07EB
call _FBCADDDEFLIB@4
push offset _Lt_07EC
call _FBCADDDEFLIB@4
push offset _Lt_07ED
call _FBCADDDEFLIB@4
jmp .L_07E2
.L_07E3:
cmp dword ptr [ebp-28], 10
ja .L_07E2
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_07EE+eax*4]
_.L_07EE:
.int .L_07E5
.int .L_07E5
.int .L_07E8
.int .L_07E2
.int .L_07E2
.int .L_07E8
.int .L_07E8
.int .L_07E8
.int .L_07E8
.int .L_07E8
.int .L_07E8
.L_07E2:
.L_07DF:
.L_07DE:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_07F0
.L_07F2:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_030E
call _FBCADDDEFLIB@4
push offset _Lt_07F3
call _FBCADDDEFLIB@4
push offset _Lt_07F4
call _FBCADDDEFLIB@4
push 23
call _FBGETOPTION@4
test eax, eax
je .L_07F6
push offset _Lt_07F7
call _FBCADDDEFLIB@4
.L_07F6:
.L_07F5:
jmp .L_07EF
.L_07F8:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07F9
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_07FB
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_07FC:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push 35
call _FBGETOPTION@4
test eax, eax
je .L_07FE
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_07FF
call _FBCADDDEFLIB@4
.L_07FE:
.L_07FD:
jmp .L_07EF
.L_0800:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push offset _Lt_07FB
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_0801:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push offset _Lt_07FB
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_0802:
push -1
push offset _Lt_0803
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0804
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0806
push offset _Lt_0807
call _FBCADDDEFLIB@4
jmp .L_0805
.L_0806:
push offset _Lt_07FB
call _FBCADDDEFLIB@4
.L_0805:
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push offset _Lt_0808
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_0040
call _FBCADDDEFLIB@4
push -1
push offset _Lt_0809
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_080A
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_080C
push offset _Lt_080D
call _FBCADDDEFLIB@4
.L_080C:
.L_080B:
push offset _Lt_0485
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_080E:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push offset _Lt_07FB
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_080F:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07FA
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push offset _Lt_07FB
call _FBCADDDEFLIB@4
jmp .L_07EF
.L_0810:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_0811
call _FBCADDDEFLIB@4
push offset _Lt_07F3
call _FBCADDDEFLIB@4
push offset _Lt_07F4
call _FBCADDDEFLIB@4
push offset _Lt_0812
call _FBCADDDEFLIB@4
push offset _Lt_0813
call _FBCADDDEFLIB@4
push offset _Lt_0814
call _FBCADDDEFLIB@4
push -1
push offset _Lt_0809
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0815
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0817
push offset _Lt_080D
call _FBCADDDEFLIB@4
.L_0817:
.L_0816:
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0819
push offset _Lt_07F7
call _FBCADDDEFLIB@4
.L_0819:
.L_0818:
jmp .L_07EF
.L_081A:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_04BD
call _FBCADDDEFLIB@4
push offset _Lt_081B
call _FBCADDDEFLIB@4
push offset _Lt_081C
call _FBCADDDEFLIB@4
push offset _Lt_0485
call _FBCADDDEFLIB@4
push offset _Lt_081D
call _FBCADDDEFLIB@4
push offset _Lt_081E
call _FBCADDDEFLIB@4
push offset _Lt_04E6
call _FBCADDDEFLIB@4
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0820
push offset _Lt_07F7
call _FBCADDDEFLIB@4
.L_0820:
.L_081F:
jmp .L_07EF
.L_07F0:
cmp dword ptr [ebp-4], 10
ja .L_07EF
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0821+eax*4]
_.L_0821:
.int .L_0810
.int .L_07F2
.int .L_0802
.int .L_07FC
.int .L_081A
.int .L_0800
.int .L_0801
.int .L_0801
.int .L_080F
.int .L_07F8
.int .L_080E
.L_07EF:
.L_07D7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEXCLUDELIBSFROMLINK@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0822:
lea eax, [_FBC+352]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0824:
cmp dword ptr [ebp-4], 0
je .L_0825
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+396]
push ebx
call _STRSETDEL@8
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0824
.L_0825:
.L_0823:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTOPTIONS@4:
push ebp
mov ebp, esp
.L_0826:
push 1
push 34
push offset _Lt_0828
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 12
push offset _Lt_0829
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_082A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 59
push offset _Lt_082B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 35
push offset _Lt_082C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_082D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_082E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_082F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_0830
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0831
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0832
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0834
push 1
push 64
push offset _Lt_0835
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0834:
.L_0833:
push 1
push 44
push offset _Lt_0836
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 46
push offset _Lt_0837
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_0838
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0839
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_083A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_083B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_083D
push 1
push 47
push offset _Lt_083E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_083F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_0840
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0841
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_0842
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_0843
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_0844
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 68
push offset _Lt_0845
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_083D:
.L_083C:
push 1
push 41
push offset _Lt_0846
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 62
push offset _Lt_0847
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_0848
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_084A
push 1
push 80
push offset _Lt_084B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_084A:
.L_0849:
push 1
push 61
push offset _Lt_084C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_084E
push 1
push 65
push offset _Lt_084F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0850
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_084E:
.L_084D:
push 1
push 75
push offset _Lt_0851
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0853
push 1
push 58
push offset _Lt_0854
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_0855
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0856
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_0857
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0852
.L_0853:
push 1
push 57
push offset _Lt_0858
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0852:
push 1
push 77
push offset _Lt_0859
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_085A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_085B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 36
push offset _Lt_085C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 64
push offset _Lt_085D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 42
push offset _Lt_085E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 76
push offset _Lt_085F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0860
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0861
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_0862
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 68
push offset _Lt_0863
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_0864
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0865
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 78
push offset _Lt_0866
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 71
push offset _Lt_0867
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 74
push offset _Lt_0868
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_0869
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_086A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 80
push offset _Lt_086B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_086C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_086D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_086E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 51
push offset _Lt_086F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0870
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0872
push 1
push 73
push offset _Lt_0873
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0872:
.L_0871:
push 1
push 44
push offset _Lt_0874
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 65
push offset _Lt_0875
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0876
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_0877
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_0878
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_0879
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 66
push offset _Lt_087A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 73
push offset _Lt_087B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_087C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 75
push offset _Lt_087D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_087F
push 1
push 47
push offset _Lt_0880
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_087E
.L_087F:
push 1
push 47
push offset _Lt_0880
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_087E:
push 1
push 47
push offset _Lt_0881
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 29
push offset _Lt_0882
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 61
push offset _Lt_0883
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 40
push offset _Lt_0884
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0885
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0887
push 1
push 38
push offset _Lt_0888
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0889
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_088A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_088B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_088C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_088D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_088E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_088F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_0890
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 71
push offset _Lt_0891
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0887:
.L_0886:
push 1
push 39
push offset _Lt_0892
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 72
push offset _Lt_0893
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0894
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_0895
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0897
push 1
push 56
push offset _Lt_0898
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0899
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_089A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_089B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_089C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_089D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 74
push offset _Lt_089E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0897:
.L_0896:
.L_0827:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPRINTVERSION@4:
push ebp
mov ebp, esp
sub esp, 60
.L_08A4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset _Lt_08AC
push -1
push -1
call _FBGETHOSTBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
push 3
push offset _Lt_062E
push -1
push -1
call _FBGETHOSTID@0
push eax
push 61
push offset _Lt_08AB
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_08B1
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_08B3
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
.L_08B3:
.L_08B2:
cmp dword ptr [ebp+8], 0
je .L_08B5
call _FBCPRINTTARGETINFO@0
jmp .L_08B7
push 1
push 14
push offset _Lt_08B8
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08B7:
.L_08B6:
.L_08B5:
.L_08B4:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_08A5:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.L_08F3:
push offset _FBC
call __ZN6FBCCTXC1Ev
add esp, 4
.L_08F4:
ret
.balign 16
__GLOBAL__D:
.L_08F6:
push offset _FBC
call __ZN6FBCCTXD1Ev
add esp, 4
.L_08F7:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0005:	.ascii	"This program requires at least a 686 to run.\0"
.balign 4
_Lt_0006:	.ascii	"1\0"
.balign 4
_Lt_0008:	.ascii	".\0"
.balign 4
_Lt_001A:	.ascii	".exe\0"
.balign 4
_Lt_001B:	.ascii	"\\\0"
.balign 4
_Lt_001D:	.ascii	"__fb_ct.inf\0"
.balign 4
_Lt_001E:	.ascii	"__fb_ct.inf.bas\0"
.balign 4
_Lt_0021:	.ascii	"fb\0"
.balign 4
_FBCTOOLTB:
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
_Lt_0040:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	_FBC,3284

.section .data
.balign 4
_Lt_0052:	.ascii	"lib\0"
.balign 4
_Lt_0053:	.ascii	".a\0"
.balign 4
_Lt_0065:	.ascii	".html\0"
.balign 4
_Lt_006E:	.ascii	".dll\0"
.balign 4
_Lt_0078:	.ascii	".so\0"
.balign 4
_Lt_007E:	.ascii	".dxe\0"
.balign 4
_Lt_0091:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
_Lt_0098:	.ascii	" -m32\0"
.balign 4
_Lt_009B:	.ascii	" -m64\0"
.balign 4
_Lt_00B6:	.ascii	" -print-file-name=\0"
.balign 4
_Lt_00DC:	.ascii	" -print-prog-name=as\0"
.balign 4
_Lt_00DF:	.ascii	" -print-prog-name=ld\0"
.balign 4
_Lt_00F2:	.ascii	": \0"
.balign 4
_Lt_00F4:	.ascii	" \0"
.balign 4
_Lt_0100:	.ascii	" failed: '\0"
.balign 4
_Lt_0101:	.ascii	"' terminated with exit code \0"
.balign 4
_Lt_0108:	.ascii	"ldopt.tmp\0"
.balign 4
_Lt_010B:	.ascii	"\\\0"
.balign 4
_Lt_010C:	.ascii	"\\\\\0"
.balign 4
_Lt_0113:	.ascii	"ld options in '\0"
.balign 4
_Lt_0114:	.ascii	"': \0"
.balign 4
_Lt_0117:	.ascii	"@\0"
.balign 4
_Lt_011D:	.ascii	".clean.def\0"
.balign 4
_Lt_0124:	.ascii	"DATA\0"
.balign 4
_Lt_012F:	.ascii	"EXPORTS\0"
.balign 4
_Lt_0139:	.ascii	"--def \"\0"
.balign 4
_Lt_013A:	.ascii	"\"\0"
.balign 4
_Lt_013E:	.ascii	" --dllname \"\0"
.balign 4
_Lt_013F:	.ascii	" --output-lib \"\0"
.balign 4
_Lt_0140:	.ascii	".dll.a\"\0"
.balign 4
_Lt_0146:	.ascii	"creating import library\0"
.balign 4
_Lt_014F:	.ascii	" \"\0"
.balign 4
_Lt_0154:	.ascii	" --version\0"
.balign 4
_Lt_0155:	.ascii	"GNU gold\0"
.balign 4
_Lt_0164:	.ascii	"-m i386pe \0"
.balign 4
_Lt_0167:	.ascii	"-m i386pep \0"
.balign 4
_Lt_016E:	.ascii	"-m elf_i386 \0"
.balign 4
_Lt_0171:	.ascii	"-m elf_x86_64 \0"
.balign 4
_Lt_0174:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
_Lt_017B:	.ascii	"-arch i386 \0"
.balign 4
_Lt_017E:	.ascii	"-arch x86_64 \0"
.balign 4
_Lt_0181:	.ascii	"-arch armv6 \0"
.balign 4
_Lt_0182:	.ascii	"-o \0"
.balign 4
_Lt_0183:	.ascii	"\"\0"
.balign 4
_Lt_0184:	.ascii	"-o \"\0"
.balign 4
_Lt_0187:	.ascii	" -I \"lib\0"
.balign 4
_Lt_0189:	.ascii	"_il.a\"\0"
.balign 4
_Lt_018A:	.ascii	" -U\0"
.balign 4
_Lt_0192:	.ascii	" -lc\0"
.balign 4
_Lt_0198:	.ascii	"making DXE\0"
.balign 4
_Lt_019F:	.ascii	"console\0"
.balign 4
_Lt_01A0:	.ascii	"gui\0"
.balign 4
_Lt_01A3:	.ascii	"windows\0"
.balign 4
_Lt_01A4:	.ascii	" -subsystem \0"
.balign 4
_Lt_01A9:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
_Lt_01AC:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
_Lt_01AD:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
_Lt_01B3:	.ascii	" -shared -h\0"
.balign 4
_Lt_01BA:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
_Lt_01BC:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
_Lt_01BE:	.ascii	" --dynamic-linker /lib/64/ld.so.1\0"
.balign 4
_Lt_01C4:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
_Lt_01C7:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
_Lt_01CA:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
_Lt_01CD:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
_Lt_01CF:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
_Lt_01D1:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
_Lt_01D5:	.ascii	" --export-dynamic\0"
.balign 4
_Lt_01D7:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
_Lt_01D9:	.ascii	" -O\0"
.balign 4
_Lt_01E0:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
_Lt_01E5:	.ascii	" -s \0"
.balign 4
_Lt_01E6:	.ascii	" --shell-file\0"
.balign 4
_Lt_01E7:	.ascii	"fb_shell.html\0"
.balign 4
_Lt_01E8:	.ascii	" --post-js\0"
.balign 4
_Lt_01E9:	.ascii	"fb_rtlib.js\0"
.balign 4
_Lt_01EC:	.ascii	"termlib_min.js\0"
.balign 4
_Lt_01F0:	.ascii	" -T \"\0"
.balign 4
_Lt_01F2:	.ascii	"\\i386go32.x\"\0"
.balign 4
_Lt_01F6:	.ascii	"\\fbextra.x\"\0"
.balign 4
_Lt_01FB:	.ascii	" --stack \0"
.balign 4
_Lt_01FC:	.ascii	",\0"
.balign 4
_Lt_0200:	.ascii	".def\0"
.balign 4
_Lt_0201:	.ascii	" --output-def \"\0"
.balign 4
_Lt_0203:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
_Lt_0207:	.ascii	" -Bstatic\0"
.balign 4
_Lt_020A:	.ascii	" -Map \0"
.balign 4
_Lt_0213:	.ascii	" -s\0"
.balign 4
_Lt_0216:	.ascii	" -L \"\0"
.balign 4
_Lt_0217:	.ascii	" -L\"\0"
.balign 4
_Lt_0223:	.ascii	"crt0.o\0"
.balign 4
_Lt_0226:	.ascii	"gcrt0.o\0"
.balign 4
_Lt_022A:	.ascii	"dllcrt2.o\0"
.balign 4
_Lt_022B:	.ascii	"crt2.o\0"
.balign 4
_Lt_022E:	.ascii	"gcrt2.o\0"
.balign 4
_Lt_022F:	.ascii	"crtbegin.o\0"
.balign 4
_Lt_023D:	.ascii	"gcrt1.o\0"
.balign 4
_Lt_0244:	.ascii	"crt1.o\0"
.balign 4
_Lt_024A:	.ascii	"crti.o\0"
.balign 4
_Lt_024D:	.ascii	"crtbeginS.o\0"
.balign 4
_Lt_0256:	.ascii	"fbrt0pic.o\0"
.balign 4
_Lt_0257:	.ascii	"fbrt0.o\0"
.balign 4
_Lt_0261:	.ascii	" \"-(\"\0"
.balign 4
_Lt_026D:	.ascii	" -l\0"
.balign 4
_Lt_0274:	.ascii	" \"-)\"\0"
.balign 4
_Lt_0275:	.ascii	" -lfb\0"
.balign 4
_Lt_027C:	.ascii	"crtendS.o\0"
.balign 4
_Lt_027D:	.ascii	"crtend.o\0"
.balign 4
_Lt_0280:	.ascii	"crtn.o\0"
.balign 4
_Lt_0285:	.ascii	" -macosx_version_min 10.4\0"
.balign 4
_Lt_0296:	.ascii	" --eh-frame-hdr\0"
.balign 4
_Lt_02A1:	.ascii	"linking\0"
.balign 4
_Lt_02B6:	.ascii	"-TITLE:\"\0"
.balign 4
_Lt_02B7:	.ascii	"\" \0"
.balign 4
_Lt_02BB:	.ascii	"-DUMPINFO:\"\0"
.balign 4
_Lt_02BE:	.ascii	".cxbe\"\0"
.balign 4
_Lt_02C0:	.ascii	" -OUT:\"\0"
.balign 4
_Lt_02C2:	.ascii	".xbe\0"
.balign 4
_Lt_02C3:	.ascii	" \"\0"
.balign 4
_Lt_02C6:	.ascii	" >nul\0"
.balign 4
_Lt_02C9:	.ascii	"cxbe: \0"
.balign 4
_Lt_02D0:	.ascii	"cxbe failed: exit code \0"
.balign 4
_Lt_0305:	.ascii	".o\0"
.balign 4
_GNUOSMAP:
.int _Lt_030A
.int 2
.int _Lt_030B
.int 0
.int _Lt_030C
.int 3
.int _Lt_030D
.int 3
.int _Lt_030E
.int 1
.int _Lt_030F
.int 9
.int _Lt_0310
.int 5
.int _Lt_0311
.int 6
.int _Lt_0312
.int 7
.int _Lt_0313
.int 10
.int _Lt_0314
.int 8
.int _Lt_0315
.int 4
.balign 4
_Lt_030A:	.ascii	"linux\0"
.balign 4
_Lt_030B:	.ascii	"mingw\0"
.balign 4
_Lt_030C:	.ascii	"djgpp\0"
.balign 4
_Lt_030D:	.ascii	"msdosdjgpp\0"
.balign 4
_Lt_030E:	.ascii	"cygwin\0"
.balign 4
_Lt_030F:	.ascii	"darwin\0"
.balign 4
_Lt_0310:	.ascii	"freebsd\0"
.balign 4
_Lt_0311:	.ascii	"dragonfly\0"
.balign 4
_Lt_0312:	.ascii	"solaris\0"
.balign 4
_Lt_0313:	.ascii	"netbsd\0"
.balign 4
_Lt_0314:	.ascii	"openbsd\0"
.balign 4
_Lt_0315:	.ascii	"xbox\0"
.balign 4
_GNUARCHMAP:
.int _Lt_0317
.int 0
.int _Lt_0318
.int 1
.int _Lt_0319
.int 2
.int _Lt_031A
.int 3
.int _Lt_031B
.int 3
.int _Lt_031C
.int 13
.int _Lt_031D
.int 13
.int _Lt_031E
.int 14
.int _Lt_031F
.int 15
.int _Lt_0320
.int 15
.int _Lt_0321
.int 16
.int _Lt_0322
.int 17
.int _Lt_0323
.int 17
.int _Lt_0324
.int 18
.int _Lt_0325
.int 18
.int _Lt_0326
.int 19
.int _Lt_0327
.int 19
.balign 4
_Lt_0317:	.ascii	"i386\0"
.balign 4
_Lt_0318:	.ascii	"i486\0"
.balign 4
_Lt_0319:	.ascii	"i586\0"
.balign 4
_Lt_031A:	.ascii	"i686\0"
.balign 4
_Lt_031B:	.ascii	"x86\0"
.balign 4
_Lt_031C:	.ascii	"x86_64\0"
.balign 4
_Lt_031D:	.ascii	"amd64\0"
.balign 4
_Lt_031E:	.ascii	"armv6\0"
.balign 4
_Lt_031F:	.ascii	"armv7a\0"
.balign 4
_Lt_0320:	.ascii	"arm\0"
.balign 4
_Lt_0321:	.ascii	"aarch64\0"
.balign 4
_Lt_0322:	.ascii	"ppc\0"
.balign 4
_Lt_0323:	.ascii	"powerpc\0"
.balign 4
_Lt_0324:	.ascii	"ppc64  \0"
.balign 4
_Lt_0325:	.ascii	"powerpc64\0"
.balign 4
_Lt_0326:	.ascii	"ppc64le  \0"
.balign 4
_Lt_0327:	.ascii	"powerpc64le\0"
.balign 4
_FBOSARCHMAP:
.int _Lt_0341
.int 0
.int 3
.int _Lt_0342
.int 0
.int 13
.int _Lt_0311
.int 6
.int 13
.int _Lt_0312
.int 7
.int 13
.int _Lt_0343
.int 3
.int 3
.int _Lt_0315
.int 4
.int 3
.int _Lt_030E
.int 1
.int 3
.int _Lt_030F
.int 9
.int 3
.int _Lt_0310
.int 5
.int 3
.int _Lt_030A
.int 2
.int 3
.int _Lt_0313
.int 10
.int 3
.int _Lt_0314
.int 8
.int 3
.balign 4
_Lt_0341:	.ascii	"win32\0"
.balign 4
_Lt_0342:	.ascii	"win64\0"
.balign 4
_Lt_0343:	.ascii	"dos\0"
.balign 4
_Lt_034D:	.ascii	"-\0"
.balign 4
_CMDLINEOPTIONTB:
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
_Lt_035D:	.ascii	"native\0"
.balign 4
_Lt_0360:	.ascii	"-arch \0"
.balign 4
_Lt_0367:	.ascii	"att\0"
.balign 4
_Lt_036A:	.ascii	"intel\0"
.balign 4
_Lt_038B:	.ascii	"PRECISE\0"
.balign 4
_Lt_038E:	.ascii	"FAST\0"
.balign 4
_Lt_0395:	.ascii	"X87\0"
.balign 4
_Lt_0396:	.ascii	"FPU\0"
.balign 4
_Lt_039A:	.ascii	"SSE\0"
.balign 4
_Lt_03A2:	.ascii	"gas\0"
.balign 4
_Lt_03A7:	.ascii	"llvm\0"
.balign 4
_Lt_03AA:	.ascii	"gas64\0"
.balign 4
_Lt_03BD:	.ascii	"inf\0"
.balign 4
_Lt_03D4:	.ascii	"max\0"
.balign 4
_Lt_03E3:	.ascii	"host\0"
.balign 4
_Lt_03E6:	.ascii	"target\0"
.balign 4
_Lt_03E9:	.ascii	"x\0"
.balign 4
_Lt_03EC:	.ascii	"fblibdir\0"
.balign 4
_Lt_03EF:	.ascii	"sha-1\0"
.balign 4
_Lt_040C:	.ascii	"NONE\0"
.balign 4
_Lt_040D:	.ascii	"0\0"
.balign 4
_Lt_0413:	.ascii	"2\0"
.balign 4
_Lt_041F:	.ascii	"all\0"
.balign 4
_Lt_0422:	.ascii	"none\0"
.balign 4
_Lt_0425:	.ascii	"param\0"
.balign 4
_Lt_0428:	.ascii	"escape\0"
.balign 4
_Lt_042B:	.ascii	"next\0"
.balign 4
_Lt_042E:	.ascii	"signedness\0"
.balign 4
_Lt_0431:	.ascii	"constness\0"
.balign 4
_Lt_0434:	.ascii	"funcptr\0"
.balign 4
_Lt_0437:	.ascii	"suffix\0"
.balign 4
_Lt_043A:	.ascii	"pedantic\0"
.balign 4
_Lt_043F:	.ascii	"error\0"
.balign 4
_Lt_0442:	.ascii	"upcast\0"
.balign 4
_Lt_0458:	.ascii	"gosub-setjmp\0"
.balign 4
_Lt_045B:	.ascii	"valist-as-ptr\0"
.balign 4
_Lt_045E:	.ascii	"no-thiscall\0"
.balign 4
_Lt_0461:	.ascii	"no-fastcall\0"
.balign 4
_Lt_0464:	.ascii	"fbrt\0"
.balign 4
_Lt_0467:	.ascii	"nocmdline\0"
.balign 4
_Lt_046A:	.ascii	"retinflts\0"
.balign 4
_Lt_0474:	.ascii	"a\0"
.balign 4
_Lt_0477:	.ascii	"arch\0"
.balign 4
_Lt_047A:	.ascii	"asm\0"
.balign 4
_Lt_0481:	.ascii	"buildprefix\0"
.balign 4
_Lt_0485:	.ascii	"c\0"
.balign 4
_Lt_0490:	.ascii	"dll\0"
.balign 4
_Lt_0493:	.ascii	"dylib\0"
.balign 4
_Lt_049A:	.ascii	"ex\0"
.balign 4
_Lt_049D:	.ascii	"earray\0"
.balign 4
_Lt_04A0:	.ascii	"eassert\0"
.balign 4
_Lt_04A3:	.ascii	"edebug\0"
.balign 4
_Lt_04A6:	.ascii	"edebuginfo\0"
.balign 4
_Lt_04A9:	.ascii	"elocation\0"
.balign 4
_Lt_04AC:	.ascii	"enullptr\0"
.balign 4
_Lt_04AF:	.ascii	"eunwind\0"
.balign 4
_Lt_04B2:	.ascii	"entry\0"
.balign 4
_Lt_04B5:	.ascii	"exx\0"
.balign 4
_Lt_04B8:	.ascii	"export\0"
.balign 4
_Lt_04BD:	.ascii	"fbgfx\0"
.balign 4
_Lt_04C0:	.ascii	"forcelang\0"
.balign 4
_Lt_04C3:	.ascii	"fpmode\0"
.balign 4
_Lt_04C6:	.ascii	"fpu\0"
.balign 4
_Lt_04CD:	.ascii	"gen\0"
.balign 4
_Lt_04D2:	.ascii	"help\0"
.balign 4
_Lt_04D9:	.ascii	"include\0"
.balign 4
_Lt_04E0:	.ascii	"lang\0"
.balign 4
_Lt_04E6:	.ascii	"m\0"
.balign 4
_Lt_04E9:	.ascii	"map\0"
.balign 4
_Lt_04EC:	.ascii	"maxerr\0"
.balign 4
_Lt_04EF:	.ascii	"mt\0"
.balign 4
_Lt_04F4:	.ascii	"noerrline\0"
.balign 4
_Lt_04F7:	.ascii	"nodeflibs\0"
.balign 4
_Lt_04FA:	.ascii	"nolib\0"
.balign 4
_Lt_04FD:	.ascii	"noobjinfo\0"
.balign 4
_Lt_0500:	.ascii	"nostrip\0"
.balign 4
_Lt_0504:	.ascii	"o\0"
.balign 4
_Lt_050F:	.ascii	"pic\0"
.balign 4
_Lt_0512:	.ascii	"pp\0"
.balign 4
_Lt_0515:	.ascii	"prefix\0"
.balign 4
_Lt_0518:	.ascii	"print\0"
.balign 4
_Lt_051B:	.ascii	"profile\0"
.balign 4
_Lt_0522:	.ascii	"rr\0"
.balign 4
_Lt_0529:	.ascii	"RR\0"
.balign 4
_Lt_0530:	.ascii	"showincludes\0"
.balign 4
_Lt_0533:	.ascii	"static\0"
.balign 4
_Lt_0536:	.ascii	"strip\0"
.balign 4
_Lt_053F:	.ascii	"title\0"
.balign 4
_Lt_0546:	.ascii	"vec\0"
.balign 4
_Lt_0549:	.ascii	"version\0"
.balign 4
_Lt_0552:	.ascii	"Wa\0"
.balign 4
_Lt_0555:	.ascii	"Wl\0"
.balign 4
_Lt_0558:	.ascii	"Wc\0"
.balign 4
_Lt_0563:	.ascii	"-version\0"
.balign 4
_Lt_0566:	.ascii	"-help\0"
.balign 4
_Lt_058F:	.ascii	"bas\0"
.balign 4
_Lt_0596:	.ascii	"rc\0"
.balign 4
_Lt_0597:	.ascii	"res\0"
.balign 4
_Lt_059B:	.ascii	"xpm\0"
.balign 4
_Lt_060E:	.ascii	"..\\\0"
.balign 4
_Lt_0614:	.ascii	"freebasic\0"
.balign 4
_Lt_0617:	.ascii	"bin\0"
.balign 4
_Lt_0628:	.ascii	", \0"
.balign 4
_Lt_062B:	.ascii	"bit\0"
.balign 4
_Lt_062E:	.ascii	" (\0"
.balign 4
_Lt_062F:	.ascii	")\0"
.balign 4
_Lt_0630:	.ascii	"target:\0"
.balign 4
_Lt_0631:	.ascii	"backend:\0"
.balign 4
_Lt_063A:	.ascii	"unnamed\0"
.balign 4
_Lt_0640:	.ascii	".asm\0"
.balign 4
_Lt_0647:	.ascii	".c\0"
.balign 4
_Lt_064A:	.ascii	".ll\0"
.balign 4
_Lt_0652:	.ascii	".pp.bas\0"
.balign 4
_Lt_0656:	.ascii	"compiling: \0"
.balign 4
_Lt_0657:	.ascii	" -o \0"
.balign 4
_Lt_065A:	.ascii	" -pp \0"
.balign 4
_Lt_065E:	.ascii	" (main module)\0"
.balign 4
_Lt_0660:	.ascii	" (FB compile-time info)\0"
.balign 4
_Lt_0691:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
_Lt_0692:	.ascii	"fb_program_icon_data\0"
.balign 4
_Lt_0693:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
_Lt_0696:	.ascii	"/* XPM */\0"
.balign 4
_Lt_06A0:	.ascii	", _\n\0"
.balign 4
_Lt_06A1:	.ascii	"\t@\0"
.balign 4
_Lt_06A6:	.ascii	" _ \n\0"
.balign 4
_Lt_06A7:	.ascii	"}\n\n\0"
.balign 4
_Lt_06A8:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
_Lt_06AB:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
_Lt_06B2:	.ascii	".bas\0"
.balign 4
_Lt_06B5:	.ascii	"parsing xpm: \0"
.balign 4
_Lt_06CC:	.ascii	"-m32 \0"
.balign 4
_Lt_06CF:	.ascii	"-m64 \0"
.balign 4
_Lt_06DF:	.ascii	"-mcpu=native \0"
.balign 4
_Lt_06E0:	.ascii	"-mcpu=\0"
.balign 4
_Lt_06E6:	.ascii	"-march=native \0"
.balign 4
_Lt_06E7:	.ascii	"-march=\0"
.balign 4
_Lt_06ED:	.ascii	"-fPIC \0"
.balign 4
_Lt_06F0:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
_Lt_06F1:	.ascii	"-Wno-unused \0"
.balign 4
_Lt_06F4:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_06F5:	.ascii	"-Wno-warn-absolute-paths \0"
.balign 4
_Lt_06F6:	.ascii	"-Wno-main \0"
.balign 4
_Lt_06F7:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
_Lt_06F8:	.ascii	"-O\0"
.balign 4
_Lt_06F9:	.ascii	"-fno-strict-aliasing \0"
.balign 4
_Lt_06FE:	.ascii	"-fno-ident \0"
.balign 4
_Lt_0702:	.ascii	"-frounding-math \0"
.balign 4
_Lt_0703:	.ascii	"-fno-math-errno \0"
.balign 4
_Lt_0704:	.ascii	"-fwrapv \0"
.balign 4
_Lt_0705:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
_Lt_0708:	.ascii	"-funwind-tables \0"
.balign 4
_Lt_0709:	.ascii	"-fno-unwind-tables \0"
.balign 4
_Lt_070A:	.ascii	"-Wno-format \0"
.balign 4
_Lt_070D:	.ascii	"-g \0"
.balign 4
_Lt_0710:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
_Lt_0718:	.ascii	"-masm=intel \0"
.balign 4
_Lt_071F:	.ascii	"-march=x86 \0"
.balign 4
_Lt_0722:	.ascii	"-march=x86-64 \0"
.balign 4
_Lt_0725:	.ascii	"-march=arm \0"
.balign 4
_Lt_0728:	.ascii	"-march=armv8-a \0"
.balign 4
_Lt_072B:	.ascii	"-mcpu=powerpc \0"
.balign 4
_Lt_072E:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
_Lt_0731:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
_Lt_0734:	.ascii	"-relocation-model=pic \0"
.balign 4
_Lt_073C:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
_Lt_073D:	.ascii	"\" \0"
.balign 4
_Lt_073E:	.ascii	"-o \"\0"
.balign 4
_Lt_0745:	.ascii	"compiling C\0"
.balign 4
_Lt_0748:	.ascii	"compiling LLVM IR\0"
.balign 4
_Lt_0757:	.ascii	"--32 \0"
.balign 4
_Lt_075C:	.ascii	"--64 \0"
.balign 4
_Lt_0763:	.ascii	"--strip-local-absolute \0"
.balign 4
_Lt_076B:	.ascii	"assembling\0"
.balign 4
_Lt_0778:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
_Lt_077F:	.ascii	"compiling rc\0"
.balign 4
_Lt_0794:	.ascii	"creating: \0"
.balign 4
_Lt_07A1:	.ascii	"-rsc \"\0"
.balign 4
_Lt_07AA:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
_Lt_07B3:	.ascii	"archiving\0"
.balign 4
_Lt_07BA:	.ascii	"libgcc.a\0"
.balign 4
_Lt_07BF:	.ascii	"libc++.so\0"
.balign 4
_Lt_07C2:	.ascii	"libstdcx.a\0"
.balign 4
_Lt_07C4:	.ascii	"libstdc++.so\0"
.balign 4
_Lt_07C9:	.ascii	"libm.a\0"
.balign 4
_Lt_07CC:	.ascii	"libmingw32.a\0"
.balign 4
_Lt_07E6:	.ascii	"gdi32\0"
.balign 4
_Lt_07E7:	.ascii	"winmm\0"
.balign 4
_Lt_07E9:	.ascii	"X11\0"
.balign 4
_Lt_07EA:	.ascii	"Xext\0"
.balign 4
_Lt_07EB:	.ascii	"Xpm\0"
.balign 4
_Lt_07EC:	.ascii	"Xrandr\0"
.balign 4
_Lt_07ED:	.ascii	"Xrender\0"
.balign 4
_Lt_07F3:	.ascii	"kernel32\0"
.balign 4
_Lt_07F4:	.ascii	"user32\0"
.balign 4
_Lt_07F7:	.ascii	"gmon\0"
.balign 4
_Lt_07F9:	.ascii	"System\0"
.balign 4
_Lt_07FA:	.ascii	"pthread\0"
.balign 4
_Lt_07FB:	.ascii	"ncurses\0"
.balign 4
_Lt_07FF:	.ascii	"socket\0"
.balign 4
_Lt_0803:	.ascii	"libtinfo.a\0"
.balign 4
_Lt_0804:	.ascii	"libtinfo.so\0"
.balign 4
_Lt_0807:	.ascii	"tinfo\0"
.balign 4
_Lt_0808:	.ascii	"dl\0"
.balign 4
_Lt_0809:	.ascii	"libgcc_eh.a\0"
.balign 4
_Lt_080A:	.ascii	"libgcc_eh.so\0"
.balign 4
_Lt_080D:	.ascii	"gcc_eh\0"
.balign 4
_Lt_0811:	.ascii	"msvcrt\0"
.balign 4
_Lt_0812:	.ascii	"mingw32\0"
.balign 4
_Lt_0813:	.ascii	"mingwex\0"
.balign 4
_Lt_0814:	.ascii	"moldname\0"
.balign 4
_Lt_0815:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
_Lt_081B:	.ascii	"openxdk\0"
.balign 4
_Lt_081C:	.ascii	"hal\0"
.balign 4
_Lt_081D:	.ascii	"usb\0"
.balign 4
_Lt_081E:	.ascii	"xboxkrnl\0"
.balign 4
_Lt_0828:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
_Lt_0829:	.ascii	"input files:\0"
.balign 4
_Lt_082A:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
_Lt_082B:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
_Lt_082C:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
_Lt_082D:	.ascii	"options:\0"
.balign 4
_Lt_082E:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
_Lt_082F:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
_Lt_0830:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
_Lt_0831:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
_Lt_0832:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
_Lt_0835:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
_Lt_0836:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
_Lt_0837:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
_Lt_0838:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
_Lt_0839:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
_Lt_083A:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
_Lt_083B:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
_Lt_083E:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
_Lt_083F:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
_Lt_0840:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
_Lt_0841:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
_Lt_0842:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
_Lt_0843:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
_Lt_0844:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
_Lt_0845:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
_Lt_0846:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
_Lt_0847:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
_Lt_0848:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
_Lt_084B:	.ascii	"  -fbgfx           Link to the appropriate libfbgfx variant (normally automatic)\0"
.balign 4
_Lt_084C:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
_Lt_084F:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
_Lt_0850:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
_Lt_0851:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
_Lt_0854:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
_Lt_0855:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
_Lt_0856:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
_Lt_0857:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
_Lt_0858:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
_Lt_0859:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
_Lt_085A:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
_Lt_085B:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
_Lt_085C:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
_Lt_085D:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
_Lt_085E:	.ascii	"  -lib             Create a static library\0"
.balign 4
_Lt_085F:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
_Lt_0860:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
_Lt_0861:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
_Lt_0862:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
_Lt_0863:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
_Lt_0864:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
_Lt_0865:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
_Lt_0866:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
_Lt_0867:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
_Lt_0868:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
_Lt_0869:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
_Lt_086A:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
_Lt_086B:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
_Lt_086C:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
_Lt_086D:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
_Lt_086E:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
_Lt_086F:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
_Lt_0870:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
_Lt_0873:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
_Lt_0874:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
_Lt_0875:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
_Lt_0876:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
_Lt_0877:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
_Lt_0878:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
_Lt_0879:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
_Lt_087A:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
_Lt_087B:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
_Lt_087C:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
_Lt_087D:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
_Lt_0880:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
_Lt_0881:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
_Lt_0882:	.ascii	"  -v               Be verbose\0"
.balign 4
_Lt_0883:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
_Lt_0884:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
_Lt_0885:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
_Lt_0888:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
_Lt_0889:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
_Lt_088A:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
_Lt_088B:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
_Lt_088C:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
_Lt_088D:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
_Lt_088E:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
_Lt_088F:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
_Lt_0890:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
_Lt_0891:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
_Lt_0892:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
_Lt_0893:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
_Lt_0894:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
_Lt_0895:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
_Lt_0898:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
_Lt_0899:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
_Lt_089A:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
_Lt_089B:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
_Lt_089C:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
_Lt_089D:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
_Lt_089E:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
_Lt_08AB:	.ascii	"FreeBASIC Compiler - Version 1.10.1 (2023-12-24), built for \0"
.balign 4
_Lt_08AC:	.ascii	"bit)\0"
.balign 4
_Lt_08B1:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
_Lt_08B8:	.ascii	"source sha-1: \0"
.balign 4
_Lt_08DD:	.ascii	"Restarting fbc ...\0"

.section .ctors
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
