	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBCPUTYPEFROMGNUARCHINFO
_FBCPUTYPEFROMGNUARCHINFO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0334:
mov dword ptr [ebp-8], 0
.L_0339:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_033B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_0335
.L_033B:
.L_033A:
.L_0337:
inc dword ptr [ebp-8]
.L_0336:
cmp dword ptr [ebp-8], 16
jle .L_0339
.L_0338:
mov dword ptr [ebp-4], -1
.L_0335:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBCPARSEARGSFROMSTRING
_FBCPARSEARGSFROMSTRING:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_059B:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_059D:
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_05A1
jmp .L_059E
.L_05A1:
.L_05A0:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_05A2:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_05A3
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_05A5
.L_05A7:
cmp dword ptr [ebp-36], 0
jne .L_05A9
jmp .L_05A3
.L_05A9:
.L_05A8:
jmp .L_05A4
.L_05AA:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_05AD
mov dword ptr [ebp-36], 0
jmp .L_05AC
.L_05AD:
cmp dword ptr [ebp-36], 0
jne .L_05AE
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_05AE:
.L_05AC:
jmp .L_05A4
.L_05A5:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_05A4
mov ebx, dword ptr [ebp-44]
jmp dword ptr [_.L_05AF+ebx*4-128]
_.L_05AF:
.int .L_05A7
.int .L_05A4
.int .L_05AA
.int .L_05A4
.int .L_05A4
.int .L_05A4
.int .L_05A4
.int .L_05AA
.L_05A4:
inc dword ptr [ebp-32]
jmp .L_05A2
.L_05A3:
cmp dword ptr [ebp-32], 0
jne .L_05B1
mov dword ptr [ebp-32], 1
jmp .L_05B0
.L_05B1:
push 0
push -1
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
call _STRUNQUOTE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call _HANDLEARG
add esp, 12
.L_05B0:
push 0
push -1
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_059F:
jmp .L_059D
.L_059E:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_059C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init
add esp, 12
call _fb_InitSignals
call _fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
call _fb_End
add esp, 4
.L_0004:
.L_0002:
call _FBCINIT
cmp dword ptr [ebp+8], 1
jne .L_08B5
push 0
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.L_08B5:
.L_08B4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARSEARGS
add esp, 8
call _HCHECKARGS
cmp dword ptr [_FBC+60], 0
je .L_08B7
push dword ptr [_FBC+56]
call _HPRINTVERSION
add esp, 4
push 0
call _FBCEND
add esp, 4
.L_08B7:
.L_08B6:
cmp dword ptr [_FBC+56], 0
je .L_08B9
mov dword ptr [_FBC+60], -1
push 0
call _HPRINTVERSION
add esp, 4
.L_08B9:
.L_08B8:
cmp dword ptr [_FBC+64], 0
je .L_08BB
push dword ptr [_FBC+56]
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.L_08BB:
.L_08BA:
.L_08BC:
call _FBCDETERMINEPREFIX
call _FBCSETUPCOMPILERPATHS
cmp dword ptr [_FBC+56], 0
je .L_08C0
call _FBCPRINTTARGETINFO
.L_08C0:
.L_08BF:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+264]
push ecx
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+232]
push ecx
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [_FBC+68], 0
jl .L_08C3
mov ebx, dword ptr [_FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08C6
.L_08C7:
push 1
call _FBGETHOSTID
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_08C4
.L_08C6:
cmp dword ptr [ebp-24], 1
jne .L_08C8
.L_08C9:
push 1
call _FBGETTARGETID
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_08C4
.L_08C8:
cmp dword ptr [ebp-24], 2
jne .L_08CA
.L_08CB:
cmp dword ptr [ebp-20], 0
je .L_08CD
call _FBCDETERMINEMAINNAME
.L_08CD:
.L_08CC:
call _HSETOUTNAME
push 1
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_08C4
.L_08CA:
cmp dword ptr [ebp-24], 3
jne .L_08CE
.L_08CF:
push 1
lea eax, [_FBC+2751]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_08C4
.L_08CE:
cmp dword ptr [ebp-24], 4
jne .L_08D0
.L_08D1:
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_08D0:
.L_08C4:
push 0
call _FBCEND
add esp, 4
.L_08C3:
.L_08C2:
call _FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .L_08D3
push dword ptr [_FBC+56]
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.L_08D3:
.L_08D2:
call _HCOMPILEMODULES
call _FBSHOULDRESTART
test eax, eax
jne .L_08D5
jmp .L_08BD
.L_08D5:
.L_08D4:
push 8
call _FBRESTARTENDREQUEST
add esp, 4
call _ERRPREINIT
call _HCHECKARGS
cmp dword ptr [_FBC+56], 0
je .L_08D7
push 1
push 18
push offset _Lt_08D8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_08D7:
.L_08D6:
.L_08BE:
jmp .L_08BC
.L_08BD:
call _HCOMPILEXPM
test eax, eax
jne .L_08DA
push 1
call _FBCEND
add esp, 4
.L_08DA:
.L_08D9:
cmp dword ptr [_FBC+36], 0
je .L_08DC
push 0
call _FBCEND
add esp, 4
.L_08DC:
.L_08DB:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08DE
call _HCOMPILESTAGE2MODULES
.L_08DE:
.L_08DD:
cmp dword ptr [_FBC+44], 0
je .L_08E0
push 0
call _FBCEND
add esp, 4
.L_08E0:
.L_08DF:
call _HASSEMBLEMODULES
call _HASSEMBLERCS
call _HASSEMBLEXPM
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 3
jne .L_08E2
push 0
call _FBCEND
add esp, 4
.L_08E2:
.L_08E1:
call _HSETDEFAULTLIBPATHS
push 39
call _FBGETOPTION
add esp, 4
mov ebx, eax
call _FBISCROSSCOMP
not eax
and ebx, eax
je .L_08E4
call _HCOLLECTOBJINFO
.L_08E4:
.L_08E3:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 1
jne .L_08E6
call _HARCHIVEFILES
test eax, eax
jne .L_08E8
push 1
call _FBCEND
add esp, 4
.L_08E8:
.L_08E7:
push 0
call _FBCEND
add esp, 4
.L_08E6:
.L_08E5:
cmp dword ptr [_FBC+1956], 0
jne .L_08EA
call _HADDDEFAULTLIBS
.L_08EA:
.L_08E9:
call _HEXCLUDELIBSFROMLINK
call _HLINKFILES
test eax, eax
jne .L_08EC
push 1
call _FBCEND
add esp, 4
.L_08EC:
.L_08EB:
push 0
call _FBCEND
add esp, 4
.L_0003:
push 0
call _fb_End
add esp, 4
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
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
call _fb_StrDelete
add esp, 4
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCINIT:
.L_004A:
mov dword ptr [_FBC+20], -1
mov dword ptr [_FBC+24], -1
mov dword ptr [_FBC+32], -1
push -1
push 20
push 64
lea eax, [_FBC+72]
push eax
call _LISTINIT
add esp, 16
push -1
push 20
push 16
lea eax, [_FBC+104]
push eax
call _LISTINIT
add esp, 16
push 16
lea eax, [_FBC+156]
push eax
call _STRSETINIT
add esp, 8
push 64
lea eax, [_FBC+200]
push eax
call _STRLISTINIT
add esp, 8
push 16
lea eax, [_FBC+232]
push eax
call _STRLISTINIT
add esp, 8
push 16
lea eax, [_FBC+264]
push eax
call _STRSETINIT
add esp, 8
push 16
lea eax, [_FBC+308]
push eax
call _STRSETINIT
add esp, 8
push 16
lea eax, [_FBC+352]
push eax
call _STRSETINIT
add esp, 8
push 32
lea eax, [_FBC+396]
push eax
call _STRSETINIT
add esp, 8
push 32
lea eax, [_FBC+440]
push eax
call _STRSETINIT
add esp, 8
call _FBGLOBALINIT
push 10
call _FBGETOPTION
add esp, 4
mov dword ptr [_FBC+3276], eax
mov dword ptr [_FBC+68], -1
.L_004B:
ret
.balign 16
_HSETOUTNAME:
push ebp
mov ebp, esp
sub esp, 44
.L_004C:
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_004F
jmp .L_004D
.L_004F:
.L_004E:
push 0
call _FBGETOPTION
add esp, 4
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
call _HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0059
.L_005A:
push 3
call _FBGETOPTION
add esp, 4
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
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
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
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
.L_0063:
.L_005B:
jmp .L_0057
.L_0059:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
push 3
call _FBGETOPTION
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
push offset _Lt_006E
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
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
push offset _Lt_0078
push -1
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
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
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
.L_007C:
.L_0069:
.L_0067:
.L_0057:
.L_004D:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
lea eax, [_FBC+156]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_FileKill
add esp, 4
test eax, eax
je .L_0085
.L_0085:
.L_0084:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
push dword ptr [ebp+8]
call _fb_End
add esp, 4
.L_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDTEMP:
push ebp
mov ebp, esp
.L_0086:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETADD
add esp, 12
.L_0087:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCREMOVETEMP:
push ebp
mov ebp, esp
.L_0088:
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETDEL
add esp, 8
.L_0089:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDOBJ:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
lea eax, [_FBC+200]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGET1STOUTPUTLINEFROMCOMMAND:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call _fb_FileFree
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpenPipe
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
call _fb_FileInput
add esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_InputString
add esp, 12
push dword ptr [ebp-16]
call _fb_FileClose
add esp, 4
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
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_008D
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_008D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCQUERYGCC:
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
call _FBCFINDBIN
add esp, 8
call _FBGETCPUFAMILY
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
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
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
push offset _Lt_009B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-40], eax
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call _fb_FileOpenPipe
add esp, 28
test eax, eax
je .L_00A3
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push dword ptr [ebp-40]
call _fb_FileInput
add esp, 4
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_InputString
add esp, 12
push dword ptr [ebp-40]
call _fb_FileClose
add esp, 4
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
call _fb_StrInit
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0093
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0093:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCBUILDPATHTOLIBFILE:
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _HFILEEXISTS
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
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
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
call _FBCFINDBIN
add esp, 8
call _FBGETCPUFAMILY
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
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
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
push offset _Lt_009B
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-60]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
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
jne .L_00BA
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
push dword ptr [ebp-24]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BC
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_00A6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCFINDLIBFILE:
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
call _FBCBUILDPATHTOLIBFILE
add esp, 4
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
jle .L_00C0
push dword ptr [ebp-24]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00C2
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_00BE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIBPATH:
push ebp
mov ebp, esp
.L_00C3:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+440]
push eax
call _STRSETADD
add esp, 12
.L_00C4:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDLIBPATHFOR:
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
call _FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _HSTRIPFILENAME
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
push 0
push -1
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_00C9
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
.L_00C9:
.L_00C8:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_00C6:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCFINDBIN:
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_GetEnviron
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_00CF:
.L_00CE:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00D5
push 2
call _FBGETOPTION
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
push offset _Lt_00DC
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _fb_StrDelete
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
push offset _Lt_00DF
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _fb_StrDelete
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
.L_00E1:
.L_00D6:
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .L_00E5
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_00E7
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [_FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCRUNBIN:
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
call _FBCFINDBIN
add esp, 8
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
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
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
call _fb_Exec
add esp, 8
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_Shell
add esp, 4
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
call _ERRREPORTEX
add esp, 20
jmp .L_00FB
.L_00FD:
cmp dword ptr [_FBC+56], 0
je .L_00FF
push 1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.L_00FF:
.L_00FE:
.L_00FB:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPUTLDARGSINTOFILE:
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
call _HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_0108
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [ebp-16]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_010A
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0107
.L_010A:
.L_0109:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 1
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_010C
push 0
push 0
push offset _Lt_0091
push 579
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010C:
cmp dword ptr [_FBC+40], 0
jne .L_010E
lea eax, [ebp-16]
push eax
call _FBCADDTEMP
add esp, 4
.L_010E:
.L_010D:
cmp dword ptr [_FBC+56], 0
je .L_0110
push 2
push 4
push offset _Lt_0112
push -1
push -1
lea eax, [ebp-16]
push eax
push 16
push offset _Lt_0111
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString
add esp, 12
.L_0110:
.L_010F:
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_0115
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0107:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CLEARDEFLIST:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_0117:
call _fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_011A
mov dword ptr [ebp-4], 0
jmp .L_0118
.L_011A:
.L_0119:
push 0
push -1
push 11
push offset _Lt_011B
push -1
push dword ptr [ebp+8]
call _HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_011E
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_011F
push 0
push 0
push offset _Lt_0091
push 604
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_011F:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0118
.L_011E:
.L_011D:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_0120:
push dword ptr [ebp-8]
call _fb_FileEof
add esp, 4
test eax, eax
jne .L_0121
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput
add esp, 16
push 5
push offset _Lt_0122
push -1
push 4
lea eax, [ebp-48]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0124
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrLen
add esp, 8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
.L_0124:
.L_0123:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call _fb_PrintString
add esp, 12
jmp .L_0120
.L_0121:
push dword ptr [ebp-36]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0126
push 0
push 0
push offset _Lt_0091
push 619
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0126:
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0127
push 0
push 0
push offset _Lt_0091
push 620
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0127:
push dword ptr [ebp+8]
call _fb_FileKill
add esp, 4
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
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0118
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGENERATEEMPTYDEFFILE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0128:
call _fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_012B
jmp .L_0129
.L_012B:
.L_012A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset _Lt_012D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_012E
push 0
push 0
push offset _Lt_0091
push 634
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_012E:
mov dword ptr [ebp-4], -1
.L_0129:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_MAKEIMPLIB:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.L_012F:
push dword ptr [ebp+12]
call _CLEARDEFLIST
add esp, 4
test eax, eax
jne .L_0132
jmp .L_0130
.L_0132:
.L_0131:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen
add esp, 4
cmp edx, 0
jne .L_0134
cmp eax, 0
jne .L_0134
.L_08FA:
push dword ptr [ebp+12]
call _HGENERATEEMPTYDEFFILE
add esp, 4
test eax, eax
jne .L_0136
jmp .L_0130
.L_0136:
.L_0135:
.L_0134:
.L_0133:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset _Lt_0137
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 13
push offset _Lt_013C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 8
push offset _Lt_013E
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
call _HSTRIPFILENAME
add esp, 4
push eax
push 16
push offset _Lt_013D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 6
push offset _Lt_0144
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .L_0146
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0130
.L_0146:
.L_0145:
cmp dword ptr [_FBC+40], 0
jne .L_0148
push dword ptr [ebp+12]
call _FBCADDTEMP
add esp, 4
.L_0148:
.L_0147:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0130:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFINDLIB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0149:
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_014C
push 0
push 3
push offset _Lt_014D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_014B
.L_014C:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX
add esp, 20
.L_014B:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_014A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCLINKERISGOLD:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_014E:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 7
jne .L_0151
mov dword ptr [ebp-4], 0
jmp .L_014F
jmp .L_0150
.L_0151:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
push 2
call _FBCFINDBIN
add esp, 8
push 0
push 11
push offset _Lt_0152
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 8
push offset _Lt_0153
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-16]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_014F
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0150:
.L_014F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_FBCISUSINGGOLDLINKER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0154:
call _FBTARGETSUPPORTSELF
test eax, eax
je .L_0157
call _FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .L_0155
.L_0157:
.L_0156:
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLINKFILES:
push ebp
mov ebp, esp
sub esp, 124
push ebx
mov dword ptr [ebp-4], 0
.L_0158:
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
call _HSETOUTNAME
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_015C
.L_015D:
call _FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0160
.L_0161:
push 0
push 11
push offset _Lt_0162
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_015E
.L_0160:
cmp dword ptr [ebp-52], 1
jne .L_0163
.L_0164:
push 0
push 12
push offset _Lt_0165
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0163:
.L_015E:
jmp .L_015A
.L_015C:
cmp dword ptr [ebp-48], 2
jne .L_0166
.L_0167:
call _FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_016A
.L_016B:
push 0
push 13
push offset _Lt_016C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0168
.L_016A:
cmp dword ptr [ebp-52], 1
jne .L_016D
.L_016E:
push 0
push 15
push offset _Lt_016F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0168
.L_016D:
cmp dword ptr [ebp-52], 2
jne .L_0170
.L_0171:
push 0
push 22
push offset _Lt_0172
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0170:
.L_0168:
jmp .L_015A
.L_0166:
cmp dword ptr [ebp-48], 9
jne .L_0173
.L_0174:
call _FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0177
.L_0178:
push 0
push 12
push offset _Lt_0179
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0175
.L_0177:
cmp dword ptr [ebp-52], 1
jne .L_017A
.L_017B:
push 0
push 14
push offset _Lt_017C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0175
.L_017A:
cmp dword ptr [ebp-52], 2
jne .L_017D
.L_017E:
push 0
push 13
push offset _Lt_017F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_017D:
.L_0175:
.L_0173:
.L_015A:
push 0
push 5
push offset _Lt_0182
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0181
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0184
push 0
push 9
push offset _Lt_0185
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset _Lt_0187
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 4
push offset _Lt_0188
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
.L_0189:
cmp dword ptr [ebp-60], 0
je .L_018A
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset _Lt_014D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .L_0189
.L_018A:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_018F
push 0
push 5
push offset _Lt_0190
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_018F:
.L_018E:
.L_0191:
cmp dword ptr [ebp-60], 0
je .L_0192
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset _Lt_014D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .L_0191
.L_0192:
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE
add esp, 4
test eax, eax
jne .L_0197
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_0197:
.L_0196:
lea eax, [ebp-16]
push eax
push 10
push offset _Lt_0198
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_0184:
.L_0183:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_019A
.L_019C:
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_019E
push 0
push 8
push offset _Lt_019F
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_019D
.L_019E:
push 4
push offset _Lt_01A0
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A2
push 0
push 8
push offset _Lt_01A3
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign
add esp, 20
.L_01A2:
.L_01A1:
.L_019D:
push 0
push 13
push offset _Lt_01A4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_01A6
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
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 30
push offset _Lt_01A9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
test eax, eax
jne .L_01AB
push 0
push 26
push offset _Lt_01AC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01AA
.L_01AB:
push 0
push 22
push offset _Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01AA:
.L_01A6:
.L_01A5:
jmp .L_0199
.L_01AE:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_01B0
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
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 12
push offset _Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 4
push offset _Lt_0052
push -1
push 3
lea eax, [ebp-28]
push eax
call _fb_LEFT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B5
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.L_01B5:
.L_01B4:
jmp .L_01AF
.L_01B0:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_01B7
.L_01B9:
push 0
push 38
push offset _Lt_01BA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01B6
.L_01BB:
push 0
push 38
push offset _Lt_01BC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01B6
.L_01BD:
push 0
push 34
push offset _Lt_01BE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01B6
.L_01BF:
call _FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_01C2
.L_01C3:
push 0
push 36
push offset _Lt_01C4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C0
.L_01C2:
cmp dword ptr [ebp-56], 1
jne .L_01C5
.L_01C6:
push 0
push 45
push offset _Lt_01C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C0
.L_01C5:
cmp dword ptr [ebp-56], 2
jne .L_01C8
.L_01C9:
push 0
push 42
push offset _Lt_01CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C0
.L_01C8:
cmp dword ptr [ebp-56], 3
jne .L_01CB
.L_01CC:
push 0
push 44
push offset _Lt_01CD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_01B6
.L_01D0:
push 0
push 36
push offset _Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .L_01B6
mov eax, dword ptr [ebp-52]
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
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 33
mov ebx, eax
call _FBGETOPTION
add esp, 4
or ebx, eax
push 3
call _FBGETOPTION
add esp, 4
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
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_0199
.L_01D8:
push 0
push 4
push offset _Lt_01D9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset _Lt_01E0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-52], 0
.L_01E4:
push 0
push 5
push offset _Lt_01E5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [_Lt_0905+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign
add esp, 20
.L_01E2:
inc dword ptr [ebp-52]
.L_01E1:
cmp dword ptr [ebp-52], 4
jle .L_01E4
.L_01E3:
push 0
push 14
push offset _Lt_01E6
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01E7
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 11
push offset _Lt_01E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01E9
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_01EB
push 0
push 11
push offset _Lt_01E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01EC
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01EB:
.L_01EA:
jmp .L_0199
.L_019A:
cmp dword ptr [ebp-48], 11
ja .L_0199
mov eax, dword ptr [ebp-48]
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
call _FBGETOPTION
add esp, 4
cmp eax, 3
jne .L_01EF
push 0
push 6
push offset _Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset _Lt_01F2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_01EE
.L_01EF:
push 39
call _FBGETOPTION
add esp, 4
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call _FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .L_01F4
push 0
push 6
push offset _Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 12
push offset _Lt_01F6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_01F4:
.L_01F3:
.L_01EE:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_01F8
.L_01FA:
push 38
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
push 0
push 10
push offset _Lt_01FB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_01FC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_01FE
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_0200
push -1
lea eax, [ebp-40]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 16
push offset _Lt_0201
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
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
call _fb_StrConcatAssign
add esp, 20
jmp .L_01F7
.L_01F8:
cmp dword ptr [ebp-48], 4
ja .L_01F7
mov eax, dword ptr [ebp-48]
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
call _fb_StrConcatAssign
add esp, 20
.L_0206:
.L_0205:
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0209
push 0
push 7
push offset _Lt_020A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0209:
.L_0208:
push 14
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_020C
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_020E
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
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
call _fb_StrConcatAssign
add esp, 20
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
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0215
push 0
push 6
push offset _Lt_0216
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0214
.L_0215:
push 0
push 5
push offset _Lt_0217
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
.L_0214:
.L_0218:
cmp dword ptr [ebp-48], 0
je .L_0219
push 0
push -1
push -1
push 2
push offset _Lt_0138
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0218
.L_0219:
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_021E
.L_0220:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0222
push 0
push -1
push offset _Lt_0223
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0221
.L_0222:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0225
push 0
push -1
push offset _Lt_0226
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0225:
.L_0224:
.L_0221:
jmp .L_021D
.L_0227:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_0229
push 0
push -1
push offset _Lt_022A
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0228
.L_0229:
push 0
push -1
push offset _Lt_022B
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_022D
push 0
push -1
push offset _Lt_022E
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_022D:
.L_022C:
.L_0228:
push 0
push -1
push offset _Lt_022F
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_021D
.L_0230:
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0232
push 0
push -1
push offset _Lt_0226
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0231
.L_0232:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0231:
jmp .L_021D
.L_0233:
push 0
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_0235
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0237
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_0239
.L_023B:
push 0
push -1
push offset _Lt_0226
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0238
.L_023C:
push 0
push -1
push offset _Lt_023D
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0238
.L_0239:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_023C
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.L_023E+eax*4-32]
_.L_023E:
.int .L_023B
.int .L_023C
.int .L_023B
.L_0238:
jmp .L_0236
.L_0237:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .L_0240
.L_0242:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_023F
.L_0243:
push 0
push -1
push offset _Lt_0244
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_023F
.L_0240:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_0243
mov eax, dword ptr [ebp-52]
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
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0247
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 8
je .L_0249
push 0
push -1
push offset _Lt_024A
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0249:
.L_0248:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_024C
push 0
push -1
push offset _Lt_024D
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_024B
.L_024C:
push 0
push -1
push offset _Lt_022F
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_024B:
.L_0247:
.L_0246:
jmp .L_021D
.L_024E:
push 0
push -1
push offset _Lt_0223
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_021D
.L_021E:
cmp dword ptr [ebp-48], 10
ja .L_021D
mov eax, dword ptr [ebp-48]
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
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0253
push 0
push 3
push offset _Lt_014D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_001B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0255
push 0
push 11
push offset _Lt_0256
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0254
.L_0255:
push 0
push 8
push offset _Lt_0257
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0254:
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0253:
.L_0252:
.L_0251:
.L_0250:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.L_0258:
cmp dword ptr [ebp-48], 0
je .L_0259
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_014D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0258
.L_0259:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_025E
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0260
push 0
push 6
push offset _Lt_0261
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0260:
.L_025F:
.L_025E:
.L_025D:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.L_0262:
cmp dword ptr [ebp-48], 0
je .L_0263
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_014D
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0262
.L_0263:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.L_0267:
cmp dword ptr [ebp-48], 0
je .L_0268
cmp dword ptr [ebp-52], 0
je .L_0269
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08FC
.L_0269:
mov dword ptr [ebp-56], -1
.L_08FC:
cmp dword ptr [ebp-56], 0
je .L_026C
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset _Lt_026D
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.L_026C:
.L_026B:
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0267
.L_0268:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0271
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_0273
push 0
push 6
push offset _Lt_0274
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0272
.L_0273:
push 0
push 6
push offset _Lt_0275
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0272:
.L_0271:
.L_0270:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0277
.L_0279:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_027B
push 0
push -1
push offset _Lt_027C
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_027A
.L_027B:
push 0
push -1
push offset _Lt_027D
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_027A:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 8
je .L_027F
push 0
push -1
push offset _Lt_0280
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_027F:
.L_027E:
jmp .L_0276
.L_0281:
push 0
push -1
push offset _Lt_027D
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0276
.L_0277:
cmp dword ptr [ebp-48], 10
ja .L_0276
mov eax, dword ptr [ebp-48]
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
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0284
push 0
push 26
push offset _Lt_0285
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0284:
.L_0283:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_0287
.L_0289:
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
je .L_028A
mov eax, dword ptr [ebp-52]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08FD
.L_028A:
mov dword ptr [ebp-56], -1
.L_08FD:
cmp dword ptr [ebp-56], 0
je .L_028D
call _FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 1
je .L_028E
mov eax, dword ptr [ebp-60]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08FE
.L_028E:
mov dword ptr [ebp-64], -1
.L_08FE:
cmp dword ptr [ebp-64], 0
jne .L_0290
mov eax, dword ptr [ebp-60]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
jmp .L_08FF
.L_0290:
mov dword ptr [ebp-68], -1
.L_08FF:
cmp dword ptr [ebp-68], 0
jne .L_0292
mov eax, dword ptr [ebp-60]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_0900
.L_0292:
mov dword ptr [ebp-72], -1
.L_0900:
cmp dword ptr [ebp-72], 0
je .L_0295
push 0
push 16
push offset _Lt_0296
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0295:
.L_0294:
.L_028D:
.L_028C:
jmp .L_0286
.L_0287:
mov eax, dword ptr [ebp-48]
add eax, 4294967294
cmp eax, 8
ja .L_0286
mov eax, dword ptr [ebp-48]
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
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE
add esp, 4
test eax, eax
jne .L_0299
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_0299:
.L_0298:
mov dword ptr [ebp-44], 2
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_029B
mov dword ptr [ebp-44], 13
.L_029B:
.L_029A:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset _Lt_029C
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .L_029E
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_029E:
.L_029D:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .L_02A0
.L_02A2:
call _fb_FileFree
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_02A4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_02A4:
.L_02A3:
push 38
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-56], eax
push 4
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call _fb_FilePut
add esp, 16
test eax, eax
je .L_02A5
push 0
push 0
push offset _Lt_0091
push 1268
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02A5:
push dword ptr [ebp-52]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_02A6
push 0
push 0
push offset _Lt_0091
push 1270
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02A6:
jmp .L_029F
.L_02A7:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_02A9
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call _MAKEIMPLIB
add esp, 8
test eax, eax
jne .L_02AB
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_02AB:
.L_02AA:
.L_02A9:
.L_02A8:
jmp .L_029F
.L_02AC:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_02AE
push 0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.L_02AE:
.L_02AD:
push 0
push 9
push offset _Lt_02B1
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1826]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_02B2
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 14
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_02B4
push 0
push 12
push offset _Lt_02B6
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset _Lt_02B9
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.L_02B4:
.L_02B3:
push 0
push 8
push offset _Lt_02BB
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_02BD
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0181
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 3
push offset _Lt_02BE
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0181
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [_FBC+56], 0
jne .L_02C0
push 0
push 6
push offset _Lt_02C1
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_02C0:
.L_02BF:
cmp dword ptr [_FBC+56], 0
je .L_02C3
push 2
push 6
push offset _Lt_02C4
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-72]
push eax
push 0
call _fb_PrintString
add esp, 12
.L_02C3:
.L_02C2:
lea eax, [ebp-60]
push eax
push 9
call _FBCFINDBIN
add esp, 8
push -1
lea eax, [ebp-72]
push eax
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_Shell
add esp, 4
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_02C8
cmp dword ptr [_FBC+56], 0
je .L_02CA
push 1
push -1
push dword ptr [ebp-76]
call _fb_IntToStr
add esp, 4
push eax
push 24
push offset _Lt_02CB
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.L_02CA:
.L_02C9:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0159
.L_02C8:
.L_02C7:
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_029F
.L_02A0:
cmp dword ptr [ebp-48], 4
ja .L_029F
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_02CD+eax*4]
_.L_02CD:
.int .L_02A7
.int .L_02A7
.int .L_029F
.int .L_02A2
.int .L_02AC
.L_029F:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0159:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0905:
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
_HREADOBJINFO:
push ebp
mov ebp, esp
sub esp, 20
.L_02CE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02D0:
lea eax, [ebp-12]
push eax
call _OBJINFOREADNEXT
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_02D4
.L_02D6:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETADD
add esp, 12
jmp .L_02D3
.L_02D7:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETADD
add esp, 12
jmp .L_02D3
.L_02D8:
cmp dword ptr [_FBC+3280], 0
jne .L_02DA
push 0
push 1
push -1
call _OBJINFOGETFILENAME
push eax
push 20
call _ERRREPORTWARNEX
add esp, 20
mov dword ptr [_FBC+3280], -1
push -1
push 35
call _FBSETOPTION
add esp, 8
.L_02DA:
.L_02D9:
jmp .L_02D3
.L_02DB:
push -1
push 36
call _FBSETOPTION
add esp, 8
jmp .L_02D3
.L_02DC:
push dword ptr [ebp-12]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02DE
mov dword ptr [ebp-16], 0
.L_02DE:
.L_02DD:
mov eax, dword ptr [_FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02E0
push 0
push 1
push -1
call _OBJINFOGETFILENAME
push eax
push 21
call _ERRREPORTWARNEX
add esp, 20
mov eax, dword ptr [ebp-16]
mov dword ptr [_FBC+3276], eax
push dword ptr [ebp-16]
push 10
call _FBSETOPTION
add esp, 8
.L_02E0:
.L_02DF:
jmp .L_02D3
.L_02E1:
jmp .L_02D1
jmp .L_02D3
.L_02D4:
cmp dword ptr [ebp-20], 4
ja .L_02E1
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02E2+eax*4]
_.L_02E2:
.int .L_02D6
.int .L_02D7
.int .L_02D8
.int .L_02DB
.int .L_02DC
.L_02D3:
.L_02D2:
jmp .L_02D0
.L_02D1:
call _OBJINFOREADEND
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_02CF:
mov esp, ebp
pop ebp
ret
.balign 16
_HCOLLECTOBJINFO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02E3:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_02E5:
cmp dword ptr [ebp-4], 0
je .L_02E6
push dword ptr [ebp-4]
call _OBJINFOREADOBJ
add esp, 4
call _HREADOBJINFO
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_02E5
.L_02E6:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_02E7:
cmp dword ptr [ebp-8], 0
je .L_02E8
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02EA
lea eax, [_FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call _OBJINFOREADLIB
add esp, 8
call _HREADOBJINFO
.L_02EA:
.L_02E9:
push dword ptr [ebp-8]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_02E7
.L_02E8:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_02EB:
cmp dword ptr [ebp-4], 0
je .L_02EC
push dword ptr [ebp-4]
call _OBJINFOREADLIBFILE
add esp, 4
call _HREADOBJINFO
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_02EB
.L_02EC:
.L_02E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFATALINVALIDOPTION:
push ebp
mov ebp, esp
sub esp, 40
.L_02ED:
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02F2
mov dword ptr [ebp-40], 0
jmp .L_0911
.L_02F2:
mov dword ptr [ebp-40], -1
.L_0911:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0181
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset _Lt_0181
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
push dword ptr [ebp-36]
push 81
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 1
call _FBCEND
add esp, 4
.L_02EE:
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKWAITINGOBJFILE:
push ebp
mov ebp, esp
sub esp, 24
.L_02F4:
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_02F7
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
push offset _Lt_0180
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push 292
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.L_02F7:
.L_02F6:
.L_02F5:
mov esp, ebp
pop ebp
ret
.balign 16
_HSETIOFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_02FA:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_02FD
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_02FF
push 0
push -1
push 3
push offset _Lt_0300
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_02FE
.L_02FF:
push 0
push -1
push 3
push offset _Lt_0300
push -1
push dword ptr [ebp+12]
call _HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.L_02FE:
mov eax, dword ptr [ebp+8]
mov dword ptr [_FBC+4], eax
jmp .L_02FC
.L_02FD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_02FC:
lea eax, [_FBC+8]
push eax
call _FBCADDOBJ
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.L_02FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDBAS:
push ebp
mov ebp, esp
.L_0303:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+72]
push eax
call _LISTNEWNODE
add esp, 4
push eax
call _HSETIOFILE
add esp, 12
.L_0304:
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEGNUTRIPLET:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0324:
mov dword ptr [ebp-4], 0
.L_0329:
mov eax, dword ptr [ebp-4]
push dword ptr [_GNUOSMAP+eax*8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .L_032B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [_GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_0328
.L_032B:
.L_032A:
.L_0327:
inc dword ptr [ebp-4]
.L_0326:
cmp dword ptr [ebp-4], 11
jle .L_0329
.L_0328:
cmp dword ptr [ebp+12], 0
jle .L_032D
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-16], 0
.L_0331:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0333
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_0330
.L_0333:
.L_0332:
.L_032F:
inc dword ptr [ebp-16]
.L_032E:
cmp dword ptr [ebp-16], 16
jle .L_0331
.L_0330:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.L_032D:
.L_032C:
.L_0325:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSETARGETARG:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0340:
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
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-20], 0
.L_0345:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [_FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0347
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
call _fb_StrDelete
add esp, 4
jmp .L_0341
.L_0347:
.L_0346:
.L_0343:
inc dword ptr [ebp-20]
.L_0342:
cmp dword ptr [ebp-20], 11
jle .L_0345
.L_0344:
push 1
push offset _Lt_0348
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_034A
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
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _FBIDENTIFYOS
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _FBCPUTYPEFROMCPUFAMILYID
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_034A:
.L_0349:
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
je .L_034E
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_034E:
.L_034D:
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete
add esp, 4
.L_0341:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HANDLEOPT:
push ebp
mov ebp, esp
sub esp, 144
push ebx
.L_0351:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0354
.L_0356:
push dword ptr [ebp+12]
call _FBCADDOBJ
add esp, 4
jmp .L_0353
.L_0357:
push 7
push offset _Lt_0358
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_FBC+28], eax
push dword ptr [ebp+12]
call _FBIDENTIFYFBCARCH
add esp, 4
mov dword ptr [_FBC+24], eax
cmp dword ptr [_FBC+24], 0
jge .L_035A
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_035B
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HFATALINVALIDOPTION
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_035A:
.L_0359:
jmp .L_0353
.L_035E:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0362
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0361
.L_0363:
mov dword ptr [_FBC+32], 1
jmp .L_035F
.L_0361:
push 6
push offset _Lt_0365
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0364
.L_0366:
mov dword ptr [_FBC+32], 0
jmp .L_035F
.L_0364:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_0367:
.L_035F:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_0368:
push dword ptr [ebp+12]
call _HADDBAS
add esp, 4
jmp .L_0353
.L_0369:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_036A:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+52], -1
jmp .L_0353
.L_036B:
mov dword ptr [_FBC+52], -1
jmp .L_0353
.L_036C:
push dword ptr [ebp+12]
call _FBADDPREDEFINE
add esp, 4
jmp .L_0353
.L_036D:
push 2
push 0
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_036E:
push -1
push 16
call _FBSETOPTION
add esp, 8
push -1
push 21
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_036F:
push -1
push 22
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0370:
push -1
push 15
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0371:
push -1
push 13
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0372:
push -1
push 14
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0373:
push -1
push 19
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0374:
push -1
push 20
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0375:
push -1
push 21
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0376:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1006]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_0377:
push -1
push 16
call _FBSETOPTION
add esp, 8
push -1
push 17
call _FBSETOPTION
add esp, 8
push -1
push 21
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0378:
push -1
push 16
call _FBSETOPTION
add esp, 8
push -1
push 17
call _FBSETOPTION
add esp, 8
push -1
push 18
call _FBSETOPTION
add esp, 8
push -1
push 19
call _FBSETOPTION
add esp, 8
push -1
push 22
call _FBSETOPTION
add esp, 8
push -1
push 20
call _FBSETOPTION
add esp, 8
push -1
push 21
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0379:
push -1
push 33
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_037A:
push -1
push 36
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_037B:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_037D
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_037D:
.L_037C:
push 11
call _FBGETOPTION
add esp, 4
and eax, dword ptr [ebp+16]
je .L_037F
push 0
push 1
push 0
push 30
call _ERRREPORTWARN
add esp, 16
jmp .L_037E
.L_037F:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION
add esp, 8
push -1
push 11
call _FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0381
push dword ptr [ebp-8]
push 12
call _FBSETOPTION
add esp, 8
.L_0381:
.L_0380:
.L_037E:
jmp .L_0353
.L_0382:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 8
push offset _Lt_0386
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0385
.L_0387:
mov dword ptr [ebp-8], 0
jmp .L_0383
.L_0385:
push 5
push offset _Lt_0389
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0388
.L_038A:
mov dword ptr [ebp-8], 1
jmp .L_0383
.L_0388:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_038B:
.L_0383:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 6
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_038C:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0390
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0392
.L_0393:
push 4
push offset _Lt_0391
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_038F
.L_0392:
mov dword ptr [ebp-8], 0
jmp .L_038D
.L_038F:
push 4
push offset _Lt_0395
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0394
.L_0396:
mov dword ptr [ebp-8], 1
jmp .L_038D
.L_0394:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_0397:
.L_038D:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 5
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0398:
push -1
push 13
call _FBSETOPTION
add esp, 8
push -1
push 14
call _FBSETOPTION
add esp, 8
push -1
push 15
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0399:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_039D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_039C
.L_039E:
mov dword ptr [_FBC+20], 0
jmp .L_039A
.L_039C:
push 4
push offset _Lt_0040
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_039F
.L_03A0:
mov dword ptr [_FBC+20], 1
jmp .L_039A
.L_039F:
push 5
push offset _Lt_03A2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03A1
.L_03A3:
mov dword ptr [_FBC+20], 2
jmp .L_039A
.L_03A1:
push 6
push offset _Lt_03A5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03A4
.L_03A6:
mov dword ptr [_FBC+20], 3
jmp .L_039A
.L_03A4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_03A7:
.L_039A:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_03A8:
mov dword ptr [_FBC+64], -1
jmp .L_0353
.L_03A9:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_03AB:
push dword ptr [ebp+12]
call _FBADDPREINCLUDE
add esp, 4
jmp .L_0353
.L_03AC:
push 0
push dword ptr [ebp+12]
lea eax, [_FBC+264]
push eax
call _STRSETADD
add esp, 12
jmp .L_0353
.L_03AD:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_03AF
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_03AF:
.L_03AE:
push 11
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_03B1
push dword ptr [ebp-8]
push 10
call _FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_03B3
push dword ptr [ebp-8]
push 12
call _FBSETOPTION
add esp, 8
.L_03B3:
.L_03B2:
.L_03B1:
.L_03B0:
jmp .L_0353
.L_03B4:
push 1
push 0
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03B5:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_FBC+1136], -1
jmp .L_0353
.L_03B6:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_03B7:
push 4
push offset _Lt_03B8
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03BA
mov dword ptr [ebp-8], 2147483647
jmp .L_03B9
.L_03BA:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03BC
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_03BC:
.L_03BB:
.L_03B9:
push dword ptr [ebp-8]
push 26
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03BD:
push -1
push 35
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+3280], -1
jmp .L_0353
.L_03BE:
mov dword ptr [_FBC+1956], -1
jmp .L_0353
.L_03BF:
push 0
push 25
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03C0:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call _HSPLITSTR
add esp, 12
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayLBound
add esp, 8
mov dword ptr [ebp-140], eax
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayUBound
add esp, 8
mov dword ptr [ebp-144], eax
jmp .L_03C3
.L_03C6:
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_03C8
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+352]
push ebx
call _STRSETADD
add esp, 12
.L_03C8:
.L_03C7:
.L_03C4:
inc dword ptr [ebp-140]
.L_03C3:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03C6
.L_03C5:
lea ebx, [ebp-124]
push ebx
call _fb_ArrayStrErase
add esp, 4
jmp .L_0353
.L_03C9:
push 0
push 39
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03CA:
mov dword ptr [_FBC+1964], 0
jmp .L_0353
.L_03CB:
call _HCHECKWAITINGOBJFILE
cmp dword ptr [_FBC+4], 0
je .L_03CD
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [_FBC+4]
push dword ptr [ebx+12]
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [_FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03CC
.L_03CD:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrAssign
add esp, 20
.L_03CC:
jmp .L_0353
.L_03CE:
push 4
push offset _Lt_03CF
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03D1
mov dword ptr [ebp-8], 3
jmp .L_03D0
.L_03D1:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03D3
mov dword ptr [ebp-8], 0
jmp .L_03D2
.L_03D3:
cmp dword ptr [ebp-8], 3
jle .L_03D4
mov dword ptr [ebp-8], 3
.L_03D4:
.L_03D2:
.L_03D0:
push dword ptr [ebp-8]
push 8
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03D5:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
lea eax, [_FBC+308]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_03D7:
push -1
push 37
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03D8:
push -1
push 1
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+36], -1
jmp .L_0353
.L_03D9:
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign
add esp, 20
push 92
lea eax, [_FBC+1968]
push eax
call _HREPLACESLASH
add esp, 8
jmp .L_0353
.L_03DA:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 5
push offset _Lt_03DE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03DD
.L_03DF:
mov dword ptr [_FBC+68], 0
jmp .L_03DB
.L_03DD:
push 7
push offset _Lt_03E1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03E0
.L_03E2:
mov dword ptr [_FBC+68], 1
jmp .L_03DB
.L_03E0:
push 2
push offset _Lt_03E4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03E3
.L_03E5:
mov dword ptr [_FBC+68], 2
jmp .L_03DB
.L_03E3:
push 9
push offset _Lt_03E7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03E6
.L_03E8:
mov dword ptr [_FBC+68], 3
jmp .L_03DB
.L_03E6:
push 6
push offset _Lt_03EA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03E9
.L_03EB:
mov dword ptr [_FBC+68], 4
jmp .L_03DB
.L_03E9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_03EC:
.L_03DB:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_03ED:
push -1
push 23
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03EE:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+36], -1
mov dword ptr [_FBC+40], -1
jmp .L_0353
.L_03EF:
mov dword ptr [_FBC+40], -1
jmp .L_0353
.L_03F0:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+44], -1
mov dword ptr [_FBC+48], -1
jmp .L_0353
.L_03F1:
mov dword ptr [_FBC+48], -1
jmp .L_0353
.L_03F2:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_01A0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F5
.L_03F6:
push 1
push 41
call _FBSETOPTION
add esp, 8
.L_03F5:
.L_03F3:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_03F7:
push -1
push 40
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03F8:
mov dword ptr [_FBC+1960], -1
jmp .L_0353
.L_03F9:
mov dword ptr [_FBC+1964], -1
jmp .L_0353
.L_03FA:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
sal eax, 10
push eax
push 38
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_03FB:
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
call _HPARSETARGETARG
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
je .L_03FD
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_03FD:
.L_03FC:
push dword ptr [ebp-8]
push 3
call _FBSETOPTION
add esp, 8
push dword ptr [ebp-12]
push 4
call _FBSETOPTION
add esp, 8
mov ebx, dword ptr [ebp-8]
cmp ebx, 3
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
or ebx, dword ptr [ebp-16]
je .L_03FF
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [_FBC+1568]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_0348
push 129
lea ebx, [_FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrAssign
add esp, 20
.L_03FF:
.L_03FE:
jmp .L_0353
.L_0401:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_0402:
mov dword ptr [_FBC+56], -1
jmp .L_0353
.L_0403:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 5
push offset _Lt_0407
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0409
.L_040A:
push 2
push offset _Lt_0408
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0406
.L_0409:
mov dword ptr [ebp-8], 0
jmp .L_0404
.L_0406:
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_040B
.L_040C:
mov dword ptr [ebp-8], 1
jmp .L_0404
.L_040B:
push 2
push offset _Lt_040E
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_040D
.L_040F:
mov dword ptr [ebp-8], 2
jmp .L_0404
.L_040D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_0410:
.L_0404:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 7
call _FBSETOPTION
add esp, 8
jmp .L_0353
.L_0411:
cmp dword ptr [ebp+16], 0
je .L_0413
cmp dword ptr [_FBC+60], 0
jne .L_0415
push dword ptr [_FBC+56]
call _HPRINTVERSION
add esp, 4
.L_0415:
.L_0414:
.L_0413:
.L_0412:
mov dword ptr [_FBC+60], -1
jmp .L_0353
.L_0416:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_041A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0419
.L_041B:
mov dword ptr [ebp-8], 0
jmp .L_0417
.L_0419:
push 5
push offset _Lt_041D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_041C
.L_041E:
mov dword ptr [ebp-8], 4
jmp .L_0417
.L_041C:
push 6
push offset _Lt_0420
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_041F
.L_0421:
push 27
call _FBGETOPTION
add esp, 4
or eax, 2
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_041F:
push 7
push offset _Lt_0423
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0422
.L_0424:
push 27
call _FBGETOPTION
add esp, 4
or eax, 1
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_0422:
push 5
push offset _Lt_0426
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0425
.L_0427:
push 27
call _FBGETOPTION
add esp, 4
or eax, 8
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_0425:
push 11
push offset _Lt_0429
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0428
.L_042A:
push 27
call _FBGETOPTION
add esp, 4
or eax, 32
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_0428:
push 10
push offset _Lt_042C
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_042B
.L_042D:
push 27
call _FBGETOPTION
add esp, 4
or eax, 128
push eax
push 27
call _FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .L_0417
.L_042B:
push 8
push offset _Lt_042F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_042E
.L_0430:
push 27
call _FBGETOPTION
add esp, 4
or eax, 64
push eax
push 27
call _FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .L_0417
.L_042E:
push 7
push offset _Lt_0432
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0431
.L_0433:
push 27
call _FBGETOPTION
add esp, 4
or eax, 256
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_0431:
push 9
push offset _Lt_0435
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0434
.L_0436:
push -1769
push 27
call _FBSETOPTION
add esp, 8
cmp dword ptr [ebp-8], 1
jle .L_0438
mov dword ptr [ebp-8], 1
.L_0438:
.L_0437:
jmp .L_0417
.L_0434:
push 6
push offset _Lt_043A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0439
.L_043B:
push 27
call _FBGETOPTION
add esp, 4
or eax, 512
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_0439:
push 7
push offset _Lt_043D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_043C
.L_043E:
push 27
call _FBGETOPTION
add esp, 4
or eax, 1024
push eax
push 27
call _FBSETOPTION
add esp, 8
jmp .L_0417
.L_043C:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
.L_043F:
.L_0417:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-8], 0
jl .L_0441
push dword ptr [ebp-8]
push 24
call _FBSETOPTION
add esp, 8
.L_0441:
.L_0440:
jmp .L_0353
.L_0442:
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
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00F4
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
push -1
lea eax, [_FBC+1532]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+1532]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_0446:
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
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00F4
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
push -1
lea eax, [_FBC+1556]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+1556]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_044A:
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
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00F4
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
push -1
lea eax, [_FBC+1544]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+1544]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_044E:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0353
.L_044F:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 13
push offset _Lt_0453
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0452
.L_0454:
push -1
push 28
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_0452:
push 14
push offset _Lt_0456
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0455
.L_0457:
push -1
push 29
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_0455:
push 12
push offset _Lt_0459
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0458
.L_045A:
push -1
push 30
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_0458:
push 12
push offset _Lt_045C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_045B
.L_045D:
push -1
push 31
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_045B:
push 5
push offset _Lt_045F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_045E
.L_0460:
push -1
push 32
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_045E:
push 10
push offset _Lt_0462
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0461
.L_0463:
push -1
push 42
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_0461:
push 10
push offset _Lt_0465
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0464
.L_0466:
push -1
push 43
call _FBSETOPTION
add esp, 8
jmp .L_0450
.L_0464:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 8
.L_0467:
.L_0450:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0353
.L_0354:
cmp dword ptr [ebp-4], 70
ja .L_0353
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0468+eax*4]
_.L_0468:
.int .L_0356
.int .L_0357
.int .L_035E
.int .L_0368
.int .L_0369
.int .L_036A
.int .L_036B
.int .L_036C
.int .L_036D
.int .L_036D
.int .L_036E
.int .L_036F
.int .L_0370
.int .L_0371
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
.int .L_0382
.int .L_038C
.int .L_0398
.int .L_0399
.int .L_03A8
.int .L_03A9
.int .L_03AB
.int .L_03AC
.int .L_03AD
.int .L_03B4
.int .L_03B5
.int .L_03B6
.int .L_03B7
.int .L_03BD
.int .L_03BE
.int .L_03BF
.int .L_03C0
.int .L_03C9
.int .L_03CA
.int .L_03CB
.int .L_03CE
.int .L_03D5
.int .L_03D7
.int .L_03D8
.int .L_03D9
.int .L_03DA
.int .L_03ED
.int .L_03EE
.int .L_03EF
.int .L_03F0
.int .L_03F1
.int .L_03F2
.int .L_03F7
.int .L_03F8
.int .L_03F9
.int .L_03FA
.int .L_03FB
.int .L_0401
.int .L_0402
.int .L_0403
.int .L_0411
.int .L_0416
.int .L_0442
.int .L_0446
.int .L_044A
.int .L_044E
.int .L_044F
.L_0353:
.L_0352:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PARSEOPTION:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0469:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_046C
.L_046E:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0471
mov dword ptr [ebp-4], 0
jmp .L_046A
.L_0471:
.L_0470:
push 5
push offset _Lt_0472
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0474
mov dword ptr [ebp-4], 1
jmp .L_046A
.L_0474:
.L_0473:
push 4
push offset _Lt_0475
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0477
mov dword ptr [ebp-4], 2
jmp .L_046A
.L_0477:
.L_0476:
jmp .L_046B
.L_0478:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_047B
mov dword ptr [ebp-4], 3
jmp .L_046A
.L_047B:
.L_047A:
push 12
push offset _Lt_047C
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_047E
mov dword ptr [ebp-4], 4
jmp .L_046A
.L_047E:
.L_047D:
jmp .L_046B
.L_047F:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0482
mov dword ptr [ebp-4], 5
jmp .L_046A
.L_0482:
.L_0481:
jmp .L_046B
.L_0483:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0486
mov dword ptr [ebp-4], 6
jmp .L_046A
.L_0486:
.L_0485:
jmp .L_046B
.L_0487:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_048A
mov dword ptr [ebp-4], 7
jmp .L_046A
.L_048A:
.L_0489:
push 4
push offset _Lt_048B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_048D
mov dword ptr [ebp-4], 8
jmp .L_046A
.L_048D:
.L_048C:
push 6
push offset _Lt_048E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0490
mov dword ptr [ebp-4], 9
jmp .L_046A
.L_0490:
.L_048F:
jmp .L_046B
.L_0491:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0494
mov dword ptr [ebp-4], 10
jmp .L_046A
.L_0494:
.L_0493:
push 3
push offset _Lt_0495
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0497
mov dword ptr [ebp-4], 19
jmp .L_046A
.L_0497:
.L_0496:
push 7
push offset _Lt_0498
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_049A
mov dword ptr [ebp-4], 11
jmp .L_046A
.L_049A:
.L_0499:
push 8
push offset _Lt_049B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_049D
mov dword ptr [ebp-4], 12
jmp .L_046A
.L_049D:
.L_049C:
push 7
push offset _Lt_049E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A0
mov dword ptr [ebp-4], 13
jmp .L_046A
.L_04A0:
.L_049F:
push 11
push offset _Lt_04A1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A3
mov dword ptr [ebp-4], 14
jmp .L_046A
.L_04A3:
.L_04A2:
push 10
push offset _Lt_04A4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A6
mov dword ptr [ebp-4], 15
jmp .L_046A
.L_04A6:
.L_04A5:
push 9
push offset _Lt_04A7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A9
mov dword ptr [ebp-4], 16
jmp .L_046A
.L_04A9:
.L_04A8:
push 8
push offset _Lt_04AA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AC
mov dword ptr [ebp-4], 17
jmp .L_046A
.L_04AC:
.L_04AB:
push 6
push offset _Lt_04AD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AF
mov dword ptr [ebp-4], 18
jmp .L_046A
.L_04AF:
.L_04AE:
push 4
push offset _Lt_04B0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B2
mov dword ptr [ebp-4], 20
jmp .L_046A
.L_04B2:
.L_04B1:
push 7
push offset _Lt_04B3
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B5
mov dword ptr [ebp-4], 21
jmp .L_046A
.L_04B5:
.L_04B4:
jmp .L_046B
.L_04B6:
push 6
push offset _Lt_04B8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04BA
mov dword ptr [ebp-4], 22
jmp .L_046A
.L_04BA:
.L_04B9:
push 10
push offset _Lt_04BB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04BD
mov dword ptr [ebp-4], 23
jmp .L_046A
.L_04BD:
.L_04BC:
push 7
push offset _Lt_04BE
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C0
mov dword ptr [ebp-4], 24
jmp .L_046A
.L_04C0:
.L_04BF:
push 4
push offset _Lt_04C1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C3
mov dword ptr [ebp-4], 25
jmp .L_046A
.L_04C3:
.L_04C2:
jmp .L_046B
.L_04C4:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04C7
mov dword ptr [ebp-4], 26
jmp .L_046A
.L_04C7:
.L_04C6:
push 4
push offset _Lt_04C8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CA
mov dword ptr [ebp-4], 27
jmp .L_046A
.L_04CA:
.L_04C9:
jmp .L_046B
.L_04CB:
push 5
push offset _Lt_04CD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CF
mov dword ptr [ebp-4], 28
jmp .L_046A
.L_04CF:
.L_04CE:
jmp .L_046B
.L_04D0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04D3
mov dword ptr [ebp-4], 29
jmp .L_046A
.L_04D3:
.L_04D2:
push 8
push offset _Lt_04D4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D6
mov dword ptr [ebp-4], 30
jmp .L_046A
.L_04D6:
.L_04D5:
jmp .L_046B
.L_04D7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04DA
mov dword ptr [ebp-4], 31
jmp .L_046A
.L_04DA:
.L_04D9:
push 5
push offset _Lt_04DB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DD
mov dword ptr [ebp-4], 32
jmp .L_046A
.L_04DD:
.L_04DC:
push 4
push offset _Lt_0052
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DF
mov dword ptr [ebp-4], 33
jmp .L_046A
.L_04DF:
.L_04DE:
jmp .L_046B
.L_04E0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04E3
mov dword ptr [ebp-4], 34
jmp .L_046A
.L_04E3:
.L_04E2:
push 4
push offset _Lt_04E4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E6
mov dword ptr [ebp-4], 35
jmp .L_046A
.L_04E6:
.L_04E5:
push 7
push offset _Lt_04E7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E9
mov dword ptr [ebp-4], 36
jmp .L_046A
.L_04E9:
.L_04E8:
push 3
push offset _Lt_04EA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04EC
mov dword ptr [ebp-4], 37
jmp .L_046A
.L_04EC:
.L_04EB:
jmp .L_046B
.L_04ED:
push 10
push offset _Lt_04EF
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F1
mov dword ptr [ebp-4], 39
jmp .L_046A
.L_04F1:
.L_04F0:
push 10
push offset _Lt_04F2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F4
mov dword ptr [ebp-4], 38
jmp .L_046A
.L_04F4:
.L_04F3:
push 6
push offset _Lt_04F5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F7
mov dword ptr [ebp-4], 40
jmp .L_046A
.L_04F7:
.L_04F6:
push 10
push offset _Lt_04F8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FA
mov dword ptr [ebp-4], 41
jmp .L_046A
.L_04FA:
.L_04F9:
push 8
push offset _Lt_04FB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FD
mov dword ptr [ebp-4], 42
jmp .L_046A
.L_04FD:
.L_04FC:
jmp .L_046B
.L_04FE:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0501
mov dword ptr [ebp-4], 43
jmp .L_046A
.L_0501:
.L_0500:
jmp .L_046B
.L_0502:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0505
mov dword ptr [ebp-4], 44
jmp .L_046A
.L_0505:
.L_0504:
jmp .L_046B
.L_0506:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0509
mov dword ptr [ebp-4], 45
jmp .L_046A
.L_0509:
.L_0508:
push 4
push offset _Lt_050A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_050C
mov dword ptr [ebp-4], 46
jmp .L_046A
.L_050C:
.L_050B:
push 3
push offset _Lt_050D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_050F
mov dword ptr [ebp-4], 47
jmp .L_046A
.L_050F:
.L_050E:
push 7
push offset _Lt_0510
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0512
mov dword ptr [ebp-4], 48
jmp .L_046A
.L_0512:
.L_0511:
push 6
push offset _Lt_0513
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0515
mov dword ptr [ebp-4], 49
jmp .L_046A
.L_0515:
.L_0514:
push 8
push offset _Lt_0516
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0518
mov dword ptr [ebp-4], 50
jmp .L_046A
.L_0518:
.L_0517:
jmp .L_046B
.L_0519:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_051C
mov dword ptr [ebp-4], 51
jmp .L_046A
.L_051C:
.L_051B:
push 3
push offset _Lt_051D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_051F
mov dword ptr [ebp-4], 53
jmp .L_046A
.L_051F:
.L_051E:
jmp .L_046B
.L_0520:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0523
mov dword ptr [ebp-4], 52
jmp .L_046A
.L_0523:
.L_0522:
push 3
push offset _Lt_0524
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0526
mov dword ptr [ebp-4], 54
jmp .L_046A
.L_0526:
.L_0525:
jmp .L_046B
.L_0527:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_052A
mov dword ptr [ebp-4], 55
jmp .L_046A
.L_052A:
.L_0529:
push 13
push offset _Lt_052B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_052D
mov dword ptr [ebp-4], 56
jmp .L_046A
.L_052D:
.L_052C:
push 7
push offset _Lt_052E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0530
mov dword ptr [ebp-4], 57
jmp .L_046A
.L_0530:
.L_052F:
push 6
push offset _Lt_0531
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0533
mov dword ptr [ebp-4], 58
jmp .L_046A
.L_0533:
.L_0532:
jmp .L_046B
.L_0534:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0537
mov dword ptr [ebp-4], 59
jmp .L_046A
.L_0537:
.L_0536:
push 7
push offset _Lt_03E1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0539
mov dword ptr [ebp-4], 60
jmp .L_046A
.L_0539:
.L_0538:
push 6
push offset _Lt_053A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_053C
mov dword ptr [ebp-4], 61
jmp .L_046A
.L_053C:
.L_053B:
jmp .L_046B
.L_053D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0540
mov dword ptr [ebp-4], 62
jmp .L_046A
.L_0540:
.L_053F:
push 4
push offset _Lt_0541
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0543
mov dword ptr [ebp-4], 63
jmp .L_046A
.L_0543:
.L_0542:
push 8
push offset _Lt_0544
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0546
mov dword ptr [ebp-4], 64
jmp .L_046A
.L_0546:
.L_0545:
jmp .L_046B
.L_0547:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_054A
mov dword ptr [ebp-4], 65
jmp .L_046A
.L_054A:
.L_0549:
jmp .L_046B
.L_054B:
push 3
push offset _Lt_054D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_054F
mov dword ptr [ebp-4], 66
jmp .L_046A
.L_054F:
.L_054E:
push 3
push offset _Lt_0550
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0552
mov dword ptr [ebp-4], 68
jmp .L_046A
.L_0552:
.L_0551:
push 3
push offset _Lt_0553
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0555
mov dword ptr [ebp-4], 67
jmp .L_046A
.L_0555:
.L_0554:
jmp .L_046B
.L_0556:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0558
mov dword ptr [ebp-4], 69
jmp .L_046A
.L_0558:
.L_0557:
jmp .L_046B
.L_0559:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_055C
mov dword ptr [ebp-4], 70
jmp .L_046A
.L_055C:
.L_055B:
jmp .L_046B
.L_055D:
push 9
push offset _Lt_055E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0560
mov dword ptr [ebp-4], 64
jmp .L_046A
.L_0560:
.L_055F:
push 6
push offset _Lt_0561
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0563
mov dword ptr [ebp-4], 28
jmp .L_046A
.L_0563:
.L_0562:
jmp .L_046B
.L_046C:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_046B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0564+eax*4-180]
_.L_0564:
.int .L_055D
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_0483
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_0502
.int .L_046B
.int .L_046B
.int .L_0520
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_054B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046B
.int .L_046E
.int .L_0478
.int .L_047F
.int .L_0487
.int .L_0491
.int .L_04B6
.int .L_04C4
.int .L_04CB
.int .L_04D0
.int .L_046B
.int .L_046B
.int .L_04D7
.int .L_04E0
.int .L_04ED
.int .L_04FE
.int .L_0506
.int .L_046B
.int .L_0519
.int .L_0527
.int .L_0534
.int .L_046B
.int .L_053D
.int .L_0547
.int .L_0556
.int .L_046B
.int .L_0559
.L_046B:
mov dword ptr [ebp-4], -1
.L_046A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HANDLEARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0565:
cmp dword ptr [_FBC], 0
jl .L_0568
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_056A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_056A:
.L_0569:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [_FBC]
call _HANDLEOPT
add esp, 12
mov dword ptr [_FBC], -1
jmp .L_0566
.L_0568:
.L_0567:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_056C
jmp .L_0566
.L_056C:
.L_056B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_056F
.L_0570:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0572
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_0572:
.L_0571:
push dword ptr [ebp-8]
call _PARSEOPTION
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_0574
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_0574:
.L_0573:
cmp dword ptr [ebp+12], 0
je .L_0576
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [_CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_0578
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_0578:
.L_0577:
.L_0576:
.L_0575:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8], 0
je .L_057A
mov ebx, dword ptr [ebp-12]
mov dword ptr [_FBC], ebx
jmp .L_0579
.L_057A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HANDLEOPT
add esp, 12
.L_0579:
cmp dword ptr [ebp+12], 0
je .L_057C
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8+2], 0
je .L_057E
push 2
call _FBRESTARTBEGINREQUEST
add esp, 4
.L_057E:
.L_057D:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [_CMDLINEOPTIONTB+ebx*8+4], 0
je .L_0580
push 8
call _FBRESTARTBEGINREQUEST
add esp, 4
.L_0580:
.L_057F:
.L_057C:
.L_057B:
jmp .L_056D
.L_056F:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_0581
.L_0582:
cmp dword ptr [_Lt_0919], 128
jle .L_0584
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_0584:
.L_0583:
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call _fb_RIGHT
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_0586
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_0586:
.L_0585:
inc dword ptr [_Lt_0919]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _PARSEARGSFROMFILE
add esp, 8
dec dword ptr [_Lt_0919]
jmp .L_056D
.L_0581:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HGETFILEEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 0
lea eax, [ebp-16]
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 4
push offset _Lt_058A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0589
.L_058B:
push dword ptr [ebp+8]
call _HADDBAS
add esp, 4
jmp .L_0588
.L_0589:
push 2
push offset _Lt_04FF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_058C
.L_058D:
push dword ptr [ebp+8]
call _FBCADDOBJ
add esp, 4
jmp .L_0588
.L_058C:
push 2
push offset _Lt_046F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_058E
.L_058F:
push dword ptr [ebp+8]
lea eax, [_FBC+232]
push eax
call _STRLISTAPPEND
add esp, 8
jmp .L_0588
.L_058E:
push 3
push offset _Lt_0591
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0593
.L_0594:
push 4
push offset _Lt_0592
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0590
.L_0593:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+104]
push eax
call _LISTNEWNODE
add esp, 4
push eax
call _HSETIOFILE
add esp, 12
jmp .L_0588
.L_0590:
push 4
push offset _Lt_0596
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0595
.L_0597:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0599
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_0599:
.L_0598:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+136]
push eax
call _HSETIOFILE
add esp, 12
jmp .L_0588
.L_0595:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 8
.L_059A:
.L_0588:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0587:
.L_056D:
.L_0566:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0919:
.int 0

.section .text
.balign 16
_PARSEARGSFROMFILE:
push ebp
mov ebp, esp
sub esp, 16
.L_05B2:
call _fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_05B5
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05B5:
.L_05B4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_05B6:
push dword ptr [ebp-4]
call _fb_FileEof
add esp, 4
test eax, eax
jne .L_05B7
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call _fb_FileLineInput
add esp, 16
push 0
push -1
lea eax, [ebp-16]
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _FBCPARSEARGSFROMSTRING
add esp, 12
jmp .L_05B6
.L_05B7:
push dword ptr [ebp-4]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_05B8
push 0
push 0
push offset _Lt_0091
push 2712
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05B8:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_05B3:
mov esp, ebp
pop ebp
ret
.balign 16
_HTARGETNEEDSPIC:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_05B9:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY
test eax, eax
je .L_05BC
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_05BE
.L_05C0:
mov dword ptr [ebp-4], -1
jmp .L_05BD
.L_05BE:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05BD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_05C1+eax*4-8]
_.L_05C1:
.int .L_05C0
.int .L_05BD
.int .L_05BD
.int .L_05C0
.int .L_05C0
.int .L_05C0
.int .L_05C0
.int .L_05BD
.int .L_05C0
.L_05BD:
.L_05BC:
.L_05BB:
.L_05BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEARGS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_05C2:
mov dword ptr [_FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05C5
.L_05C8:
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
call _fb_StrAssign
add esp, 20
push 0
push 0
lea ebx, [ebp-12]
push ebx
call _HANDLEARG
add esp, 12
.L_05C6:
inc dword ptr [ebp-16]
.L_05C5:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05C8
.L_05C7:
cmp dword ptr [_FBC], 0
jl .L_05CA
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HFATALINVALIDOPTION
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_05CA:
.L_05C9:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_05C3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKARGS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.L_05CC:
call _HCHECKWAITINGOBJFILE
push 5
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_05CF
push 7
call _FBGETOPTION
add esp, 4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05D1
push 0
push 1
push -1
push offset _Lt_0000
push 284
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05D1:
.L_05D0:
.L_05CF:
.L_05CE:
cmp dword ptr [_FBC+24], 0
jl .L_05D3
push dword ptr [_FBC+24]
push 4
call _FBSETOPTION
add esp, 8
.L_05D3:
.L_05D2:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D5
push 0
push 1
push -1
call _FBGETFBCARCH
push eax
push 82
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05D5:
.L_05D4:
call _FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D7
push 0
push 2
call _FBSETOPTION
add esp, 8
jmp .L_05D6
.L_05D7:
push 1
push 2
call _FBSETOPTION
add esp, 8
.L_05D6:
cmp dword ptr [_FBC+20], 0
jl .L_05D9
push dword ptr [_FBC+20]
push 2
call _FBSETOPTION
add esp, 8
.L_05D9:
.L_05D8:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call _FBGETCPUFAMILY
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .L_05DB
push 0
push 1
push -1
call _FBGETFBCARCH
push eax
push 83
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05DB:
.L_05DA:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_05DD
.L_05DF:
jmp .L_05DC
.L_05E0:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05E2
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05E2:
.L_05E1:
jmp .L_05DC
.L_05DD:
cmp dword ptr [ebp-4], 4
ja .L_05E0
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05E3+eax*4]
_.L_05E3:
.int .L_05DF
.int .L_05DF
.int .L_05E0
.int .L_05E0
.int .L_05DF
.L_05DC:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_05E5
.L_05E7:
jmp .L_05E4
.L_05E8:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_05EA
push 0
push 1
push -1
push dword ptr [_FBC+136]
push 291
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.L_05EA:
.L_05E9:
jmp .L_05E4
.L_05E5:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05E8
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05EB+eax*4-8]
_.L_05EB:
.int .L_05E7
.int .L_05E8
.int .L_05E8
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.L_05E4:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05ED
push 1
push 9
call _FBSETOPTION
add esp, 8
.L_05ED:
.L_05EC:
cmp dword ptr [_FBC+32], 0
jl .L_05EF
call _FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05F3
.L_05F4:
cmp dword ptr [ebp-4], 1
jne .L_05F2
.L_05F3:
jmp .L_05F0
.L_05F2:
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
push 319
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_05F5:
.L_05F0:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
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
je .L_05F8
push 0
push 1
push -1
push offset _Lt_0000
push 84
call _ERRREPORTEX
add esp, 20
.L_05F8:
.L_05F7:
push dword ptr [_FBC+32]
push 9
call _FBSETOPTION
add esp, 8
.L_05EF:
.L_05EE:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .L_05FA
call _HTARGETNEEDSPIC
test eax, eax
je .L_05FC
push -1
push 37
call _FBSETOPTION
add esp, 8
.L_05FC:
.L_05FB:
.L_05FA:
.L_05F9:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_05FE
push 0
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_0600
push 0
push 1
push -1
push offset _Lt_0000
push 85
call _ERRREPORTEX
add esp, 20
jmp .L_05FF
.L_0600:
call _HTARGETNEEDSPIC
test eax, eax
jne .L_0601
push 0
push 1
push -1
push offset _Lt_0000
push 86
call _ERRREPORTEX
add esp, 20
.L_0601:
.L_05FF:
.L_05FE:
.L_05FD:
push -1
push 38
call _FBSETOPTION
add esp, 8
.L_05CD:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEPREFIX:
push ebp
mov ebp, esp
sub esp, 36
.L_0602:
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_0605
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
call _fb_ExePath
push eax
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
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 4
push offset _Lt_0609
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0604
.L_0605:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0604:
.L_0603:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCSETUPCOMPILERPATHS:
push ebp
mov ebp, esp
sub esp, 168
.L_060D:
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_060F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0052
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit
add esp, 20
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0611
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
push offset _Lt_0612
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0610
.L_0611:
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
push offset _Lt_0612
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign
add esp, 20
.L_0610:
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
push offset _Lt_04D4
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2490]
push eax
call _fb_StrAssign
add esp, 20
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2751]
push eax
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
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_060E:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCPRINTTARGETINFO:
push ebp
mov ebp, esp
sub esp, 36
.L_0621:
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push 0
call _FBGETFBCARCH
push eax
push 3
push offset _Lt_0623
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0623
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
call _FBGETBITS
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0626
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 129
lea eax, [_FBC+1568]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0628
push 0
push 3
push offset _Lt_0629
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_062A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0628:
.L_0627:
push 2
push 7
push offset _Lt_062B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString
add esp, 12
push 2
push 8
push offset _Lt_062C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 2
call _FBGETOPTION
add esp, 4
push eax
call _FBGETBACKENDNAME
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0622:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEMAINNAME:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_062D:
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_0630
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0632
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [_FBC+745]
push ebx
call _fb_StrAssign
add esp, 20
jmp .L_0631
.L_0632:
lea ebx, [_FBC+200]
push ebx
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0634
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0633
.L_0634:
push 0
push 8
push offset _Lt_0635
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign
add esp, 20
.L_0633:
.L_0631:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0630:
.L_062F:
.L_062E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASMNAME:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0637:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_063A
mov eax, offset _Lt_063B
mov dword ptr [ebp-16], eax
jmp .L_0639
.L_063A:
mov eax, offset _Lt_0300
mov dword ptr [ebp-16], eax
.L_0639:
cmp dword ptr [ebp+12], 1
jne .L_063D
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_0640
.L_0641:
mov eax, offset _Lt_0642
mov dword ptr [ebp-16], eax
jmp .L_063E
.L_0640:
cmp dword ptr [ebp-44], 2
jne .L_0643
.L_0644:
mov eax, offset _Lt_0645
mov dword ptr [ebp-16], eax
.L_0643:
.L_063E:
.L_063D:
.L_063C:
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
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
.L_0638:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEBAS:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_0647:
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
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push 1
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_064A
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_064C
push 0
push -1
push 8
push offset _Lt_064D
push -1
lea eax, [ebp-32]
push eax
call _HSTRIPEXT
add esp, 4
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
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
.L_064C:
.L_064B:
.L_064A:
.L_0649:
cmp dword ptr [_FBC+56], 0
je .L_0650
push 2
push 11
push offset _Lt_0651
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call _fb_PrintString
add esp, 12
push 0
push 4
push offset _Lt_0652
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
lea eax, [ebp-20]
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0654
push 0
push -1
lea eax, [ebp-32]
push eax
push 6
push offset _Lt_0655
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0654:
.L_0653:
cmp dword ptr [ebp+12], 0
je .L_0658
push 0
push 14
push offset _Lt_0659
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_0657
.L_0658:
cmp dword ptr [ebp+16], 0
je .L_065A
push 0
push 23
push offset _Lt_065B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_065A:
.L_0657:
push 1
push 0
call _fb_PrintVoid
add esp, 8
.L_0650:
.L_064F:
push 12
call _FBGETOPTION
add esp, 4
cmp eax, -1
je .L_065D
push 12
call _FBGETOPTION
add esp, 4
push eax
push 10
call _FBSETOPTION
add esp, 8
.L_065D:
.L_065C:
push 10
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_065F
push 3
push 0
call _FBSETOPTION
add esp, 8
.L_065F:
.L_065E:
.L_0660:
mov eax, dword ptr [_FBC+40]
not eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov esi, eax
call _FBGETOPTION
add esp, 4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [_FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_0664
lea esi, [ebp-20]
push esi
call _FBCADDTEMP
add esp, 4
jmp .L_0663
.L_0664:
cmp dword ptr [ebp+20], 1
jne .L_0665
call _FBRESTARTGETCOUNT
test eax, eax
jle .L_0667
lea eax, [ebp-20]
push eax
call _FBCREMOVETEMP
add esp, 4
.L_0667:
.L_0666:
.L_0665:
.L_0663:
push dword ptr [ebp+20]
lea eax, [_FBC+1006]
push eax
push dword ptr [ebp+12]
call _FBINIT
add esp, 12
cmp dword ptr [ebp+16], 0
je .L_0669
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBSETLIBS
add esp, 8
jmp .L_0668
.L_0669:
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+264]
push eax
call _FBSETLIBS
add esp, 8
.L_0668:
push dword ptr [ebp+12]
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _FBCOMPILE
add esp, 16
call _ERRGETCOUNT
test eax, eax
jle .L_066B
push 1
call _FBCEND
add esp, 4
.L_066B:
.L_066A:
call _FBSHOULDRESTART
test eax, eax
jne .L_066D
jmp .L_0661
.L_066D:
.L_066C:
push 7
call _FBRESTARTENDREQUEST
add esp, 4
call _FBEND
call _FBSHOULDRESTART
test eax, eax
je .L_066F
push 12
call _FBGETOPTION
add esp, 4
cmp eax, -1
jne .L_0671
push dword ptr [ebp-4]
push 10
call _FBSETOPTION
add esp, 8
.L_0671:
.L_0670:
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0648
.L_066F:
.L_066E:
.L_0662:
jmp .L_0660
.L_0661:
cmp dword ptr [ebp+16], 0
jne .L_0673
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBGETLIBS
add esp, 8
.L_0673:
.L_0672:
call _FBEND
cmp dword ptr [ebp+16], 0
je .L_0675
push dword ptr [ebp-8]
push 0
call _FBSETOPTION
add esp, 8
.L_0675:
.L_0674:
push dword ptr [ebp-4]
push 10
call _FBSETOPTION
add esp, 8
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0648:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEMODULES:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0676:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_067B
.L_067C:
cmp dword ptr [ebp-32], 2
jne .L_067A
.L_067B:
mov dword ptr [ebp-8], -1
jmp .L_0678
.L_067A:
mov eax, dword ptr [_FBC+1136]
mov dword ptr [ebp-8], eax
.L_067D:
.L_0678:
cmp dword ptr [ebp-8], 0
je .L_067F
push 0
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
.L_067F:
.L_067E:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0681
lea eax, [_FBC+264]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETCOPY
add esp, 8
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETCOPY
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0677
.L_0681:
.L_0680:
mov dword ptr [ebp-28], 0
.L_0682:
cmp dword ptr [ebp-8], 0
je .L_0686
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_0686:
.L_0685:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call _HCOMPILEBAS
add esp, 16
call _FBSHOULDRESTART
test eax, eax
je .L_0689
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0677
.L_0689:
.L_0688:
push dword ptr [ebp-24]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-24], eax
.L_0684:
cmp dword ptr [ebp-24], 0
jne .L_0682
.L_0683:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0677:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEXPM:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_068A:
push 0
push 28
push offset _Lt_068C
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push 21
push offset _Lt_068D
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push 20
push offset _Lt_068E
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_0690
jmp .L_068B
.L_0690:
.L_068F:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput
add esp, 16
push 10
push offset _Lt_0691
push -1
push 0
lea eax, [ebp-20]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0693
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0694
push 0
push 0
push offset _Lt_0091
push 3292
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0694:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_068B
.L_0693:
.L_0692:
mov dword ptr [ebp-24], 0
.L_0695:
push dword ptr [ebp-8]
call _fb_FileEof
add esp, 4
test eax, eax
jne .L_0696
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput
add esp, 16
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen
add esp, 8
push 1
push offset _Lt_0138
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-20]
push eax
push 1
call _fb_StrInstr
add esp, 12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset _Lt_0138
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-20]
push eax
push 2
call _fb_StrInstr
add esp, 12
push eax
lea eax, [ebp-20]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0698
cmp dword ptr [ebp-24], 0
je .L_069A
push 0
push 5
push offset _Lt_069B
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
.L_069A:
.L_0699:
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_069C
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-24], -1
.L_0698:
.L_0697:
jmp .L_0695
.L_0696:
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_069E
push 0
push 0
push offset _Lt_0091
push 3322
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_069E:
cmp dword ptr [ebp-24], 0
jne .L_06A0
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_068B
.L_06A0:
.L_069F:
push 0
push 5
push offset _Lt_06A1
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push 4
push offset _Lt_06A2
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push 67
push offset _Lt_06A3
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push 74
push offset _Lt_06A6
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-4], -1
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_068B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEXPM:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_06A7:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .L_06AA
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06A8
.L_06AA:
.L_06A9:
push 0
push -1
lea eax, [_FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [_FBC+148]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_06AC
push 0
push -1
push dword ptr [_FBC+148]
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrAssign
add esp, 20
.L_06AC:
.L_06AB:
push 0
push 5
push offset _Lt_06AD
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrConcatByref
add esp, 20
cmp dword ptr [_FBC+56], 0
je .L_06AF
push 2
push 13
push offset _Lt_06B0
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push -1
lea eax, [_FBC+136]
push eax
push -1
push 5
push offset _Lt_0652
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.L_06AF:
.L_06AE:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call _HPARSEXPM
add esp, 8
test eax, eax
jne .L_06B4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06A8
.L_06B4:
.L_06B3:
call _fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [_FBC+136]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_06B6
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_06A8
.L_06B6:
.L_06B5:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_06B8
push 0
push 0
push offset _Lt_0091
push 3378
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06B8:
cmp dword ptr [_FBC+40], 0
jne .L_06BA
lea eax, [_FBC+136]
push eax
call _FBCADDTEMP
add esp, 4
.L_06BA:
.L_06B9:
push -1
push 0
push 0
lea eax, [_FBC+136]
push eax
call _HCOMPILEBAS
add esp, 16
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_06A8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULE:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_06BB:
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
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_FBC+48]
not eax
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06BE
lea eax, [ebp-28]
push eax
call _FBCADDTEMP
add esp, 4
.L_06BE:
.L_06BD:
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06C1
.L_06C2:
mov byte ptr [ebp-36], 0
call _FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06C5
.L_06C6:
push 0
push 6
push offset _Lt_06C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06C3
.L_06C5:
cmp dword ptr [ebp-40], 1
jne .L_06C8
.L_06C9:
push 0
push 6
push offset _Lt_06CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov byte ptr [ebp-36], 1
jmp .L_06C3
.L_06C8:
cmp dword ptr [ebp-40], 4
jne .L_06CB
.L_06CC:
push 0
push 6
push offset _Lt_06C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06C3
.L_06CB:
cmp dword ptr [ebp-40], 5
je .L_06CE
.L_06CF:
cmp dword ptr [ebp-40], 6
jne .L_06CD
.L_06CE:
push 0
push 6
push offset _Lt_06CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov byte ptr [ebp-36], 1
.L_06CD:
.L_06C3:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06D1
call _FBGETCPUFAMILY
cmp eax, 4
je .L_06D2
call _FBGETCPUFAMILY
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_092C
.L_06D2:
mov dword ptr [ebp-40], -1
.L_092C:
cmp dword ptr [ebp-40], 0
jne .L_06D4
call _FBGETCPUFAMILY
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_092D
.L_06D4:
mov dword ptr [ebp-44], -1
.L_092D:
cmp dword ptr [ebp-44], 0
je .L_06D7
cmp dword ptr [_FBC+28], 0
je .L_06D9
push 0
push 14
push offset _Lt_06DA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06D8
.L_06D9:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH
push eax
push 7
push offset _Lt_06DB
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.L_06D8:
jmp .L_06D6
.L_06D7:
cmp dword ptr [_FBC+28], 0
je .L_06E0
push 0
push 15
push offset _Lt_06E1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06DF
.L_06E0:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH
push eax
push 8
push offset _Lt_06E2
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.L_06DF:
.L_06D6:
.L_06D1:
.L_06D0:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_06E7
push 0
push 7
push offset _Lt_06E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_06E7:
.L_06E6:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06EA
push 0
push 30
push offset _Lt_06EB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset _Lt_06EC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06E9
.L_06EA:
push 0
push 90
push offset _Lt_06EF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset _Lt_06F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_06E9:
push 0
push 11
push offset _Lt_06F1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 39
push offset _Lt_06F2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_06F3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 22
push offset _Lt_06F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-40], eax
jmp .L_06F6
.L_06F8:
push 0
push 12
push offset _Lt_06F9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_06F5
.L_06F6:
cmp dword ptr [ebp-40], 0
ja .L_06F5
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_06FA+eax*4]
_.L_06FA:
.int .L_06F8
.L_06F5:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_06FC
push 0
push 17
push offset _Lt_06FD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_06FC:
.L_06FB:
push 0
push 17
push offset _Lt_06FE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset _Lt_06FF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 49
push offset _Lt_0700
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push 21
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0702
push 0
push 17
push offset _Lt_0703
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0701
.L_0702:
push 0
push 20
push offset _Lt_0704
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0701:
push 0
push 13
push offset _Lt_0705
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 14
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0707
push 0
push 4
push offset _Lt_0708
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0707:
.L_0706:
push 5
call _FBGETOPTION
add esp, 4
cmp eax, 1
jne .L_070A
push 0
push 21
push offset _Lt_070B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_070A:
.L_0709:
call _FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_070F
.L_0710:
cmp dword ptr [ebp-40], 1
jne .L_070E
.L_070F:
push 9
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_0712
push 0
push 13
push offset _Lt_0713
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0712:
.L_0711:
.L_070E:
.L_070C:
jmp .L_06BF
.L_06C1:
cmp dword ptr [ebp-32], 2
jne .L_0714
.L_0715:
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0718
.L_0719:
push 0
push 12
push offset _Lt_071A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_0718:
cmp dword ptr [ebp-36], 1
jne .L_071B
.L_071C:
push 0
push 15
push offset _Lt_071D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_071B:
cmp dword ptr [ebp-36], 2
jne .L_071E
.L_071F:
push 0
push 12
push offset _Lt_0720
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_071E:
cmp dword ptr [ebp-36], 3
jne .L_0721
.L_0722:
push 0
push 16
push offset _Lt_0723
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_0721:
cmp dword ptr [ebp-36], 4
jne .L_0724
.L_0725:
push 0
push 15
push offset _Lt_0726
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_0724:
cmp dword ptr [ebp-36], 5
jne .L_0727
.L_0728:
push 0
push 17
push offset _Lt_0729
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0716
.L_0727:
cmp dword ptr [ebp-36], 6
jne .L_072A
.L_072B:
push 0
push 19
push offset _Lt_072C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_072A:
.L_0716:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_072E
push 0
push 23
push offset _Lt_072F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_072E:
.L_072D:
push 0
push 3
push offset _Lt_06F3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0733
.L_0734:
cmp dword ptr [ebp-36], 1
jne .L_0732
.L_0733:
push 9
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_0736
push 0
push 24
push offset _Lt_0737
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0736:
.L_0735:
.L_0732:
.L_0730:
.L_0714:
.L_06BF:
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0738
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_0739
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_073C
.L_073D:
mov dword ptr [ebp-36], 3
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_073F
mov dword ptr [ebp-36], 14
.L_073F:
.L_073E:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset _Lt_0740
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_073A
.L_073C:
cmp dword ptr [ebp-32], 2
jne .L_0741
.L_0742:
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_0743
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0741:
.L_073A:
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_06BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULES:
push ebp
mov ebp, esp
sub esp, 4
.L_0744:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0746:
cmp dword ptr [ebp-4], 0
je .L_0747
push dword ptr [ebp-4]
call _HCOMPILESTAGE2MODULE
add esp, 4
test eax, eax
jne .L_0749
push 1
call _FBCEND
add esp, 4
.L_0749:
.L_0748:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0746
.L_0747:
.L_0745:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULE:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_074A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call _FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_074E
.L_074F:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0751
push 0
push 12
push offset _Lt_0179
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0750
.L_0751:
push 0
push 6
push offset _Lt_0752
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0750:
jmp .L_074C
.L_074E:
cmp dword ptr [ebp-60], 1
jne .L_0753
.L_0754:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0756
push 0
push 14
push offset _Lt_017C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0755
.L_0756:
push 0
push 6
push offset _Lt_0757
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0755:
.L_0753:
.L_074C:
push 14
call _FBGETOPTION
add esp, 4
test eax, eax
jne .L_0759
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_075B
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_075D
push 0
push 24
push offset _Lt_075E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_075D:
.L_075C:
.L_075B:
.L_075A:
.L_0759:
.L_0758:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_0760
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_074B
.L_0760:
.L_075F:
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0738
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset _Lt_0739
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-56], 0
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_0765
mov dword ptr [ebp-56], 11
.L_0765:
.L_0764:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset _Lt_0766
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .L_0768
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_074B
.L_0768:
.L_0767:
cmp dword ptr [_FBC+52], 0
jne .L_076A
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP
add esp, 4
.L_076A:
.L_0769:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_074B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULES:
push ebp
mov ebp, esp
sub esp, 4
.L_076B:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_076D:
cmp dword ptr [ebp-4], 0
je .L_076E
push dword ptr [ebp-4]
call _HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .L_0770
push 1
call _FBCEND
add esp, 4
.L_0770:
.L_076F:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_076D
.L_076E:
.L_076C:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERC:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.L_0771:
push 0
push 37
push offset _Lt_0773
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset _Lt_014D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0138
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset _Lt_014D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 8
push offset _Lt_077A
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
cmp dword ptr [_FBC+52], 0
jne .L_077C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP
add esp, 4
.L_077C:
.L_077B:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0772:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERCS:
push ebp
mov ebp, esp
sub esp, 4
.L_077D:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_077F:
cmp dword ptr [ebp-4], 0
je .L_0780
push dword ptr [ebp-4]
call _HASSEMBLERC
add esp, 4
test eax, eax
jne .L_0782
push 1
call _FBCEND
add esp, 4
.L_0782:
.L_0781:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_077F
.L_0780:
.L_077E:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEXPM:
.L_0783:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_0786
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0788
lea eax, [_FBC+136]
push eax
call _HCOMPILESTAGE2MODULE
add esp, 4
.L_0788:
.L_0787:
lea eax, [_FBC+136]
push eax
call _HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .L_078A
push 1
call _FBCEND
add esp, 4
.L_078A:
.L_0789:
.L_0786:
.L_0785:
.L_0784:
ret
.balign 16
_HCOMPILEFBCTINF:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.L_078B:
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 12
push offset _Lt_001D
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [_FBC+56], 0
je .L_078E
push 2
push 10
push offset _Lt_078F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString
add esp, 12
.L_078E:
.L_078D:
call _fb_FileFree
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_0791
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
jmp .L_078C
.L_0791:
.L_0790:
push dword ptr [ebp-40]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0792
push 0
push 0
push offset _Lt_0091
push 3788
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0792:
cmp dword ptr [_FBC+40], 0
jne .L_0794
lea eax, [ebp-24]
push eax
call _FBCADDTEMP
add esp, 4
.L_0794:
.L_0793:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call _HCOMPILEBAS
add esp, 16
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0796
lea eax, [ebp-24]
push eax
call _HCOMPILESTAGE2MODULE
add esp, 4
.L_0796:
.L_0795:
lea eax, [ebp-24]
push eax
call _HASSEMBLEMODULE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
.L_078C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HARCHIVEFILES:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_0797:
call _HSETOUTNAME
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
test eax, eax
je .L_079A
.L_079A:
.L_0799:
push 0
push -1
push 3
push offset _Lt_02B2
push -1
push 261
lea eax, [_FBC+484]
push eax
push 7
push offset _Lt_079C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 39
call _FBGETOPTION
add esp, 4
mov ebx, eax
call _FBISCROSSCOMP
not eax
and ebx, eax
je .L_07A0
call _HCOMPILEFBCTINF
test eax, eax
je .L_07A2
push 0
push 15
push offset _Lt_07A5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_07A2:
.L_07A1:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 12
push offset _Lt_001D
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _FBCADDTEMP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.L_07A0:
.L_079F:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-44], eax
.L_07A7:
cmp dword ptr [ebp-44], 0
je .L_07A8
push 0
push -1
push -1
push 3
push offset _Lt_0738
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset _Lt_0138
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-44], eax
jmp .L_07A7
.L_07A8:
mov dword ptr [ebp-48], 1
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .L_07AD
mov dword ptr [ebp-48], 12
.L_07AD:
.L_07AC:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-48]
push offset _Lt_07AE
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0798:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETDEFAULTLIBPATHS:
push ebp
mov ebp, esp
sub esp, 28
.L_07AF:
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0008
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .L_07B4
push offset _Lt_07B5
call _FBCADDLIBPATHFOR
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_07B8
.L_07B9:
push offset _Lt_07BA
call _FBCADDLIBPATHFOR
add esp, 4
jmp .L_07B6
.L_07B8:
cmp dword ptr [ebp-28], 3
jne .L_07BB
.L_07BC:
push offset _Lt_07BD
call _FBCADDLIBPATHFOR
add esp, 4
jmp .L_07B6
.L_07BB:
push offset _Lt_07BF
call _FBCADDLIBPATHFOR
add esp, 4
.L_07BE:
.L_07B6:
.L_07B4:
.L_07B3:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_07C2
.L_07C3:
push offset _Lt_07C4
call _FBCADDLIBPATHFOR
add esp, 4
jmp .L_07C0
.L_07C2:
cmp dword ptr [ebp-28], 0
jne .L_07C5
.L_07C6:
push offset _Lt_07C7
call _FBCADDLIBPATHFOR
add esp, 4
.L_07C5:
.L_07C0:
.L_07B0:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_07C8:
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
lea eax, [_FBC+396]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_07C9:
mov esp, ebp
pop ebp
ret
.balign 16
_HGETFBLIBNAMESUFFIX:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_07CB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 35
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07CE
push 0
push 3
push offset _Lt_04EA
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_07CE:
.L_07CD:
push 37
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07D0
push 0
push 4
push offset _Lt_050A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_07D0:
.L_07CF:
push 0
push -1
lea eax, [ebp-24]
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
.L_07CC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HADDDEFAULTLIBS:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_07D1:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07D4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX
push eax
push 5
push offset _Lt_045F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07D3
.L_07D4:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX
push eax
push 3
push offset _Lt_0021
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_07D3:
push 36
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07DA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX
push eax
push 6
push offset _Lt_04B8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_07DE
.L_07E0:
push offset _Lt_07E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07E2
call _FBCADDDEFLIB
add esp, 4
jmp .L_07DD
.L_07E3:
push offset _Lt_07E4
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07E5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07E6
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07E7
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07E8
call _FBCADDDEFLIB
add esp, 4
jmp .L_07DD
.L_07DE:
cmp dword ptr [ebp-28], 10
ja .L_07DD
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_07E9+eax*4]
_.L_07E9:
.int .L_07E0
.int .L_07E0
.int .L_07E3
.int .L_07DD
.int .L_07DD
.int .L_07E3
.int .L_07E3
.int .L_07E3
.int .L_07E3
.int .L_07E3
.int .L_07E3
.L_07DD:
.L_07DA:
.L_07D9:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_07EB
.L_07ED:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0309
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07EE
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07EF
call _FBCADDDEFLIB
add esp, 4
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07F1
push offset _Lt_07F2
call _FBCADDDEFLIB
add esp, 4
.L_07F1:
.L_07F0:
jmp .L_07EA
.L_07F3:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F4
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_07F7:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push 35
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_07F9
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07FA
call _FBCADDDEFLIB
add esp, 4
.L_07F9:
.L_07F8:
jmp .L_07EA
.L_07FB:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_07FC:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_07FD:
push -1
push offset _Lt_07FE
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_07FF
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0801
push offset _Lt_0802
call _FBCADDDEFLIB
add esp, 4
jmp .L_0800
.L_0801:
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
.L_0800:
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0803
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push -1
push offset _Lt_0804
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0805
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0807
push offset _Lt_0808
call _FBCADDDEFLIB
add esp, 4
.L_0807:
.L_0806:
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_0809:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_080A:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F5
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07F6
call _FBCADDDEFLIB
add esp, 4
jmp .L_07EA
.L_080B:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_080C
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07EE
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_07EF
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_080D
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_080E
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_080F
call _FBCADDDEFLIB
add esp, 4
push -1
push offset _Lt_0804
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0810
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0812
push offset _Lt_0808
call _FBCADDDEFLIB
add esp, 4
.L_0812:
.L_0811:
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_0814
push offset _Lt_07F2
call _FBCADDDEFLIB
add esp, 4
.L_0814:
.L_0813:
jmp .L_07EA
.L_0815:
push offset _Lt_0040
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04B8
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0816
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0817
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0480
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0818
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0819
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_04E1
call _FBCADDDEFLIB
add esp, 4
push 23
call _FBGETOPTION
add esp, 4
test eax, eax
je .L_081B
push offset _Lt_07F2
call _FBCADDDEFLIB
add esp, 4
.L_081B:
.L_081A:
jmp .L_07EA
.L_07EB:
cmp dword ptr [ebp-4], 10
ja .L_07EA
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_081C+eax*4]
_.L_081C:
.int .L_080B
.int .L_07ED
.int .L_07FD
.int .L_07F7
.int .L_0815
.int .L_07FB
.int .L_07FC
.int .L_07FC
.int .L_080A
.int .L_07F3
.int .L_0809
.L_07EA:
.L_07D2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEXCLUDELIBSFROMLINK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_081D:
lea eax, [_FBC+352]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_081F:
cmp dword ptr [ebp-4], 0
je .L_0820
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+396]
push ebx
call _STRSETDEL
add esp, 8
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_081F
.L_0820:
.L_081E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTOPTIONS:
push ebp
mov ebp, esp
.L_0821:
push 1
push 34
push offset _Lt_0823
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 12
push offset _Lt_0824
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_0825
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 59
push offset _Lt_0826
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 35
push offset _Lt_0827
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 8
push offset _Lt_0828
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 63
push offset _Lt_0829
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_082A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_082B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_082C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_082D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_082F
push 1
push 64
push offset _Lt_0830
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_082F:
.L_082E:
push 1
push 44
push offset _Lt_0831
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 46
push offset _Lt_0832
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 41
push offset _Lt_0833
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_0834
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_0835
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_0836
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0838
push 1
push 47
push offset _Lt_0839
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_083A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 38
push offset _Lt_083B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_083C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_083D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_083E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 55
push offset _Lt_083F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 68
push offset _Lt_0840
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0838:
.L_0837:
push 1
push 41
push offset _Lt_0841
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 62
push offset _Lt_0842
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 53
push offset _Lt_0843
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0845
push 1
push 80
push offset _Lt_0846
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0845:
.L_0844:
push 1
push 61
push offset _Lt_0847
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0849
push 1
push 65
push offset _Lt_084A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_084B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0849:
.L_0848:
push 1
push 75
push offset _Lt_084C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_084E
push 1
push 58
push offset _Lt_084F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 58
push offset _Lt_0850
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 43
push offset _Lt_0851
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 38
push offset _Lt_0852
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_084D
.L_084E:
push 1
push 57
push offset _Lt_0853
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_084D:
push 1
push 77
push offset _Lt_0854
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_0855
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 58
push offset _Lt_0856
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 36
push offset _Lt_0857
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 64
push offset _Lt_0858
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 42
push offset _Lt_0859
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 76
push offset _Lt_085A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 43
push offset _Lt_085B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_085C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 45
push offset _Lt_085D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 68
push offset _Lt_085E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 63
push offset _Lt_085F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 70
push offset _Lt_0860
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 78
push offset _Lt_0861
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 71
push offset _Lt_0862
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 74
push offset _Lt_0863
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_0864
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_0865
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 80
push offset _Lt_0866
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 67
push offset _Lt_0867
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_0868
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 53
push offset _Lt_0869
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 51
push offset _Lt_086A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_086B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_086D
push 1
push 73
push offset _Lt_086E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_086D:
.L_086C:
push 1
push 44
push offset _Lt_086F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 65
push offset _Lt_0870
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_0871
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_0872
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_0873
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 41
push offset _Lt_0874
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 66
push offset _Lt_0875
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 73
push offset _Lt_0876
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 67
push offset _Lt_0877
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 75
push offset _Lt_0878
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_087A
push 1
push 47
push offset _Lt_087B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .L_0879
.L_087A:
push 1
push 47
push offset _Lt_087B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0879:
push 1
push 47
push offset _Lt_087C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 29
push offset _Lt_087D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 61
push offset _Lt_087E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 40
push offset _Lt_087F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 70
push offset _Lt_0880
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0882
push 1
push 38
push offset _Lt_0883
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_0884
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_0885
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_0886
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_0887
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_0888
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 45
push offset _Lt_0889
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_088A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_088B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 71
push offset _Lt_088C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0882:
.L_0881:
push 1
push 39
push offset _Lt_088D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 72
push offset _Lt_088E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_088F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 58
push offset _Lt_0890
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .L_0892
push 1
push 56
push offset _Lt_0893
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 70
push offset _Lt_0894
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_0895
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_0896
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 67
push offset _Lt_0897
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 53
push offset _Lt_0898
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 74
push offset _Lt_0899
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_0892:
.L_0891:
.L_0822:
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTVERSION:
push ebp
mov ebp, esp
sub esp, 60
.L_089F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset _Lt_08A7
push -1
push -1
call _FBGETHOSTBITS
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0629
push -1
push -1
call _FBGETHOSTID
push eax
push 61
push offset _Lt_08A6
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 55
push offset _Lt_08AC
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_08AE
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString
add esp, 12
.L_08AE:
.L_08AD:
cmp dword ptr [ebp+8], 0
je .L_08B0
call _FBCPRINTTARGETINFO
jmp .L_08B2
push 1
push 14
push offset _Lt_08B3
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.L_08B2:
.L_08B1:
.L_08B0:
.L_08AF:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_08A0:
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__I:
.L_08EE:
push offset _FBC
call __ZN6FBCCTXC1Ev
add esp, 4
.L_08EF:
ret
.balign 16
__GLOBAL__D:
.L_08F1:
push offset _FBC
call __ZN6FBCCTXD1Ev
add esp, 4
.L_08F2:
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
_Lt_001E:	.ascii	"__fb_ct.bas\0"
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
_Lt_0111:	.ascii	"ld options in '\0"
.balign 4
_Lt_0112:	.ascii	"': \0"
.balign 4
_Lt_0115:	.ascii	"@\0"
.balign 4
_Lt_011B:	.ascii	".clean.def\0"
.balign 4
_Lt_0122:	.ascii	"DATA\0"
.balign 4
_Lt_012D:	.ascii	"EXPORTS\0"
.balign 4
_Lt_0137:	.ascii	"--def \"\0"
.balign 4
_Lt_0138:	.ascii	"\"\0"
.balign 4
_Lt_013C:	.ascii	" --dllname \"\0"
.balign 4
_Lt_013D:	.ascii	" --output-lib \"\0"
.balign 4
_Lt_013E:	.ascii	".dll.a\"\0"
.balign 4
_Lt_0144:	.ascii	"creating import library\0"
.balign 4
_Lt_014D:	.ascii	" \"\0"
.balign 4
_Lt_0152:	.ascii	" --version\0"
.balign 4
_Lt_0153:	.ascii	"GNU gold\0"
.balign 4
_Lt_0162:	.ascii	"-m i386pe \0"
.balign 4
_Lt_0165:	.ascii	"-m i386pep \0"
.balign 4
_Lt_016C:	.ascii	"-m elf_i386 \0"
.balign 4
_Lt_016F:	.ascii	"-m elf_x86_64 \0"
.balign 4
_Lt_0172:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
_Lt_0179:	.ascii	"-arch i386 \0"
.balign 4
_Lt_017C:	.ascii	"-arch x86_64 \0"
.balign 4
_Lt_017F:	.ascii	"-arch armv6 \0"
.balign 4
_Lt_0180:	.ascii	"-o \0"
.balign 4
_Lt_0181:	.ascii	"\"\0"
.balign 4
_Lt_0182:	.ascii	"-o \"\0"
.balign 4
_Lt_0185:	.ascii	" -I \"lib\0"
.balign 4
_Lt_0187:	.ascii	"_il.a\"\0"
.balign 4
_Lt_0188:	.ascii	" -U\0"
.balign 4
_Lt_0190:	.ascii	" -lc\0"
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
_Lt_029C:	.ascii	"linking\0"
.balign 4
_Lt_02B1:	.ascii	"-TITLE:\"\0"
.balign 4
_Lt_02B2:	.ascii	"\" \0"
.balign 4
_Lt_02B6:	.ascii	"-DUMPINFO:\"\0"
.balign 4
_Lt_02B9:	.ascii	".cxbe\"\0"
.balign 4
_Lt_02BB:	.ascii	" -OUT:\"\0"
.balign 4
_Lt_02BD:	.ascii	".xbe\0"
.balign 4
_Lt_02BE:	.ascii	" \"\0"
.balign 4
_Lt_02C1:	.ascii	" >nul\0"
.balign 4
_Lt_02C4:	.ascii	"cxbe: \0"
.balign 4
_Lt_02CB:	.ascii	"cxbe failed: exit code \0"
.balign 4
_Lt_0300:	.ascii	".o\0"
.balign 4
_GNUOSMAP:
.int _Lt_0305
.int 2
.int _Lt_0306
.int 0
.int _Lt_0307
.int 3
.int _Lt_0308
.int 3
.int _Lt_0309
.int 1
.int _Lt_030A
.int 9
.int _Lt_030B
.int 5
.int _Lt_030C
.int 6
.int _Lt_030D
.int 7
.int _Lt_030E
.int 10
.int _Lt_030F
.int 8
.int _Lt_0310
.int 4
.balign 4
_Lt_0305:	.ascii	"linux\0"
.balign 4
_Lt_0306:	.ascii	"mingw\0"
.balign 4
_Lt_0307:	.ascii	"djgpp\0"
.balign 4
_Lt_0308:	.ascii	"msdosdjgpp\0"
.balign 4
_Lt_0309:	.ascii	"cygwin\0"
.balign 4
_Lt_030A:	.ascii	"darwin\0"
.balign 4
_Lt_030B:	.ascii	"freebsd\0"
.balign 4
_Lt_030C:	.ascii	"dragonfly\0"
.balign 4
_Lt_030D:	.ascii	"solaris\0"
.balign 4
_Lt_030E:	.ascii	"netbsd\0"
.balign 4
_Lt_030F:	.ascii	"openbsd\0"
.balign 4
_Lt_0310:	.ascii	"xbox\0"
.balign 4
_GNUARCHMAP:
.int _Lt_0312
.int 0
.int _Lt_0313
.int 1
.int _Lt_0314
.int 2
.int _Lt_0315
.int 3
.int _Lt_0316
.int 1
.int _Lt_0317
.int 13
.int _Lt_0318
.int 13
.int _Lt_0319
.int 14
.int _Lt_031A
.int 15
.int _Lt_031B
.int 15
.int _Lt_031C
.int 16
.int _Lt_031D
.int 17
.int _Lt_031E
.int 17
.int _Lt_031F
.int 18
.int _Lt_0320
.int 18
.int _Lt_0321
.int 19
.int _Lt_0322
.int 19
.balign 4
_Lt_0312:	.ascii	"i386\0"
.balign 4
_Lt_0313:	.ascii	"i486\0"
.balign 4
_Lt_0314:	.ascii	"i586\0"
.balign 4
_Lt_0315:	.ascii	"i686\0"
.balign 4
_Lt_0316:	.ascii	"x86\0"
.balign 4
_Lt_0317:	.ascii	"x86_64\0"
.balign 4
_Lt_0318:	.ascii	"amd64\0"
.balign 4
_Lt_0319:	.ascii	"armv6\0"
.balign 4
_Lt_031A:	.ascii	"armv7a\0"
.balign 4
_Lt_031B:	.ascii	"arm\0"
.balign 4
_Lt_031C:	.ascii	"aarch64\0"
.balign 4
_Lt_031D:	.ascii	"ppc\0"
.balign 4
_Lt_031E:	.ascii	"powerpc\0"
.balign 4
_Lt_031F:	.ascii	"ppc64  \0"
.balign 4
_Lt_0320:	.ascii	"powerpc64\0"
.balign 4
_Lt_0321:	.ascii	"ppc64le  \0"
.balign 4
_Lt_0322:	.ascii	"powerpc64le\0"
.balign 4
_FBOSARCHMAP:
.int _Lt_033C
.int 0
.int 1
.int _Lt_033D
.int 0
.int 13
.int _Lt_030C
.int 6
.int 13
.int _Lt_030D
.int 7
.int 13
.int _Lt_033E
.int 3
.int 1
.int _Lt_0310
.int 4
.int 1
.int _Lt_0309
.int 1
.int 1
.int _Lt_030A
.int 9
.int 1
.int _Lt_030B
.int 5
.int 1
.int _Lt_0305
.int 2
.int 1
.int _Lt_030E
.int 10
.int 1
.int _Lt_030F
.int 8
.int 1
.balign 4
_Lt_033C:	.ascii	"win32\0"
.balign 4
_Lt_033D:	.ascii	"win64\0"
.balign 4
_Lt_033E:	.ascii	"dos\0"
.balign 4
_Lt_0348:	.ascii	"-\0"
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
_Lt_0358:	.ascii	"native\0"
.balign 4
_Lt_035B:	.ascii	"-arch \0"
.balign 4
_Lt_0362:	.ascii	"att\0"
.balign 4
_Lt_0365:	.ascii	"intel\0"
.balign 4
_Lt_0386:	.ascii	"PRECISE\0"
.balign 4
_Lt_0389:	.ascii	"FAST\0"
.balign 4
_Lt_0390:	.ascii	"X87\0"
.balign 4
_Lt_0391:	.ascii	"FPU\0"
.balign 4
_Lt_0395:	.ascii	"SSE\0"
.balign 4
_Lt_039D:	.ascii	"gas\0"
.balign 4
_Lt_03A2:	.ascii	"llvm\0"
.balign 4
_Lt_03A5:	.ascii	"gas64\0"
.balign 4
_Lt_03B8:	.ascii	"inf\0"
.balign 4
_Lt_03CF:	.ascii	"max\0"
.balign 4
_Lt_03DE:	.ascii	"host\0"
.balign 4
_Lt_03E1:	.ascii	"target\0"
.balign 4
_Lt_03E4:	.ascii	"x\0"
.balign 4
_Lt_03E7:	.ascii	"fblibdir\0"
.balign 4
_Lt_03EA:	.ascii	"sha-1\0"
.balign 4
_Lt_0407:	.ascii	"NONE\0"
.balign 4
_Lt_0408:	.ascii	"0\0"
.balign 4
_Lt_040E:	.ascii	"2\0"
.balign 4
_Lt_041A:	.ascii	"all\0"
.balign 4
_Lt_041D:	.ascii	"none\0"
.balign 4
_Lt_0420:	.ascii	"param\0"
.balign 4
_Lt_0423:	.ascii	"escape\0"
.balign 4
_Lt_0426:	.ascii	"next\0"
.balign 4
_Lt_0429:	.ascii	"signedness\0"
.balign 4
_Lt_042C:	.ascii	"constness\0"
.balign 4
_Lt_042F:	.ascii	"funcptr\0"
.balign 4
_Lt_0432:	.ascii	"suffix\0"
.balign 4
_Lt_0435:	.ascii	"pedantic\0"
.balign 4
_Lt_043A:	.ascii	"error\0"
.balign 4
_Lt_043D:	.ascii	"upcast\0"
.balign 4
_Lt_0453:	.ascii	"gosub-setjmp\0"
.balign 4
_Lt_0456:	.ascii	"valist-as-ptr\0"
.balign 4
_Lt_0459:	.ascii	"no-thiscall\0"
.balign 4
_Lt_045C:	.ascii	"no-fastcall\0"
.balign 4
_Lt_045F:	.ascii	"fbrt\0"
.balign 4
_Lt_0462:	.ascii	"nocmdline\0"
.balign 4
_Lt_0465:	.ascii	"retinflts\0"
.balign 4
_Lt_046F:	.ascii	"a\0"
.balign 4
_Lt_0472:	.ascii	"arch\0"
.balign 4
_Lt_0475:	.ascii	"asm\0"
.balign 4
_Lt_047C:	.ascii	"buildprefix\0"
.balign 4
_Lt_0480:	.ascii	"c\0"
.balign 4
_Lt_048B:	.ascii	"dll\0"
.balign 4
_Lt_048E:	.ascii	"dylib\0"
.balign 4
_Lt_0495:	.ascii	"ex\0"
.balign 4
_Lt_0498:	.ascii	"earray\0"
.balign 4
_Lt_049B:	.ascii	"eassert\0"
.balign 4
_Lt_049E:	.ascii	"edebug\0"
.balign 4
_Lt_04A1:	.ascii	"edebuginfo\0"
.balign 4
_Lt_04A4:	.ascii	"elocation\0"
.balign 4
_Lt_04A7:	.ascii	"enullptr\0"
.balign 4
_Lt_04AA:	.ascii	"eunwind\0"
.balign 4
_Lt_04AD:	.ascii	"entry\0"
.balign 4
_Lt_04B0:	.ascii	"exx\0"
.balign 4
_Lt_04B3:	.ascii	"export\0"
.balign 4
_Lt_04B8:	.ascii	"fbgfx\0"
.balign 4
_Lt_04BB:	.ascii	"forcelang\0"
.balign 4
_Lt_04BE:	.ascii	"fpmode\0"
.balign 4
_Lt_04C1:	.ascii	"fpu\0"
.balign 4
_Lt_04C8:	.ascii	"gen\0"
.balign 4
_Lt_04CD:	.ascii	"help\0"
.balign 4
_Lt_04D4:	.ascii	"include\0"
.balign 4
_Lt_04DB:	.ascii	"lang\0"
.balign 4
_Lt_04E1:	.ascii	"m\0"
.balign 4
_Lt_04E4:	.ascii	"map\0"
.balign 4
_Lt_04E7:	.ascii	"maxerr\0"
.balign 4
_Lt_04EA:	.ascii	"mt\0"
.balign 4
_Lt_04EF:	.ascii	"noerrline\0"
.balign 4
_Lt_04F2:	.ascii	"nodeflibs\0"
.balign 4
_Lt_04F5:	.ascii	"nolib\0"
.balign 4
_Lt_04F8:	.ascii	"noobjinfo\0"
.balign 4
_Lt_04FB:	.ascii	"nostrip\0"
.balign 4
_Lt_04FF:	.ascii	"o\0"
.balign 4
_Lt_050A:	.ascii	"pic\0"
.balign 4
_Lt_050D:	.ascii	"pp\0"
.balign 4
_Lt_0510:	.ascii	"prefix\0"
.balign 4
_Lt_0513:	.ascii	"print\0"
.balign 4
_Lt_0516:	.ascii	"profile\0"
.balign 4
_Lt_051D:	.ascii	"rr\0"
.balign 4
_Lt_0524:	.ascii	"RR\0"
.balign 4
_Lt_052B:	.ascii	"showincludes\0"
.balign 4
_Lt_052E:	.ascii	"static\0"
.balign 4
_Lt_0531:	.ascii	"strip\0"
.balign 4
_Lt_053A:	.ascii	"title\0"
.balign 4
_Lt_0541:	.ascii	"vec\0"
.balign 4
_Lt_0544:	.ascii	"version\0"
.balign 4
_Lt_054D:	.ascii	"Wa\0"
.balign 4
_Lt_0550:	.ascii	"Wl\0"
.balign 4
_Lt_0553:	.ascii	"Wc\0"
.balign 4
_Lt_055E:	.ascii	"-version\0"
.balign 4
_Lt_0561:	.ascii	"-help\0"
.balign 4
_Lt_058A:	.ascii	"bas\0"
.balign 4
_Lt_0591:	.ascii	"rc\0"
.balign 4
_Lt_0592:	.ascii	"res\0"
.balign 4
_Lt_0596:	.ascii	"xpm\0"
.balign 4
_Lt_0609:	.ascii	"..\\\0"
.balign 4
_Lt_060F:	.ascii	"freebas\0"
.balign 4
_Lt_0612:	.ascii	"bin\0"
.balign 4
_Lt_0623:	.ascii	", \0"
.balign 4
_Lt_0626:	.ascii	"bit\0"
.balign 4
_Lt_0629:	.ascii	" (\0"
.balign 4
_Lt_062A:	.ascii	")\0"
.balign 4
_Lt_062B:	.ascii	"target:\0"
.balign 4
_Lt_062C:	.ascii	"backend:\0"
.balign 4
_Lt_0635:	.ascii	"unnamed\0"
.balign 4
_Lt_063B:	.ascii	".asm\0"
.balign 4
_Lt_0642:	.ascii	".c\0"
.balign 4
_Lt_0645:	.ascii	".ll\0"
.balign 4
_Lt_064D:	.ascii	".pp.bas\0"
.balign 4
_Lt_0651:	.ascii	"compiling: \0"
.balign 4
_Lt_0652:	.ascii	" -o \0"
.balign 4
_Lt_0655:	.ascii	" -pp \0"
.balign 4
_Lt_0659:	.ascii	" (main module)\0"
.balign 4
_Lt_065B:	.ascii	" (FB compile-time info)\0"
.balign 4
_Lt_068C:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
_Lt_068D:	.ascii	"fb_program_icon_data\0"
.balign 4
_Lt_068E:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
_Lt_0691:	.ascii	"/* XPM */\0"
.balign 4
_Lt_069B:	.ascii	", _\n\0"
.balign 4
_Lt_069C:	.ascii	"\t@\0"
.balign 4
_Lt_06A1:	.ascii	" _ \n\0"
.balign 4
_Lt_06A2:	.ascii	"}\n\n\0"
.balign 4
_Lt_06A3:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
_Lt_06A6:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
_Lt_06AD:	.ascii	".bas\0"
.balign 4
_Lt_06B0:	.ascii	"parsing xpm: \0"
.balign 4
_Lt_06C7:	.ascii	"-m32 \0"
.balign 4
_Lt_06CA:	.ascii	"-m64 \0"
.balign 4
_Lt_06DA:	.ascii	"-mcpu=native \0"
.balign 4
_Lt_06DB:	.ascii	"-mcpu=\0"
.balign 4
_Lt_06E1:	.ascii	"-march=native \0"
.balign 4
_Lt_06E2:	.ascii	"-march=\0"
.balign 4
_Lt_06E8:	.ascii	"-fPIC \0"
.balign 4
_Lt_06EB:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
_Lt_06EC:	.ascii	"-Wno-unused \0"
.balign 4
_Lt_06EF:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_06F0:	.ascii	"-Wno-warn-absolute-paths \0"
.balign 4
_Lt_06F1:	.ascii	"-Wno-main \0"
.balign 4
_Lt_06F2:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
_Lt_06F3:	.ascii	"-O\0"
.balign 4
_Lt_06F4:	.ascii	"-fno-strict-aliasing \0"
.balign 4
_Lt_06F9:	.ascii	"-fno-ident \0"
.balign 4
_Lt_06FD:	.ascii	"-frounding-math \0"
.balign 4
_Lt_06FE:	.ascii	"-fno-math-errno \0"
.balign 4
_Lt_06FF:	.ascii	"-fwrapv \0"
.balign 4
_Lt_0700:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
_Lt_0703:	.ascii	"-funwind-tables \0"
.balign 4
_Lt_0704:	.ascii	"-fno-unwind-tables \0"
.balign 4
_Lt_0705:	.ascii	"-Wno-format \0"
.balign 4
_Lt_0708:	.ascii	"-g \0"
.balign 4
_Lt_070B:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
_Lt_0713:	.ascii	"-masm=intel \0"
.balign 4
_Lt_071A:	.ascii	"-march=x86 \0"
.balign 4
_Lt_071D:	.ascii	"-march=x86-64 \0"
.balign 4
_Lt_0720:	.ascii	"-march=arm \0"
.balign 4
_Lt_0723:	.ascii	"-march=armv8-a \0"
.balign 4
_Lt_0726:	.ascii	"-mcpu=powerpc \0"
.balign 4
_Lt_0729:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
_Lt_072C:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
_Lt_072F:	.ascii	"-relocation-model=pic \0"
.balign 4
_Lt_0737:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
_Lt_0738:	.ascii	"\" \0"
.balign 4
_Lt_0739:	.ascii	"-o \"\0"
.balign 4
_Lt_0740:	.ascii	"compiling C\0"
.balign 4
_Lt_0743:	.ascii	"compiling LLVM IR\0"
.balign 4
_Lt_0752:	.ascii	"--32 \0"
.balign 4
_Lt_0757:	.ascii	"--64 \0"
.balign 4
_Lt_075E:	.ascii	"--strip-local-absolute \0"
.balign 4
_Lt_0766:	.ascii	"assembling\0"
.balign 4
_Lt_0773:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
_Lt_077A:	.ascii	"compiling rc\0"
.balign 4
_Lt_078F:	.ascii	"creating: \0"
.balign 4
_Lt_079C:	.ascii	"-rsc \"\0"
.balign 4
_Lt_07A5:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
_Lt_07AE:	.ascii	"archiving\0"
.balign 4
_Lt_07B5:	.ascii	"libgcc.a\0"
.balign 4
_Lt_07BA:	.ascii	"libc++.so\0"
.balign 4
_Lt_07BD:	.ascii	"libstdcx.a\0"
.balign 4
_Lt_07BF:	.ascii	"libstdc++.so\0"
.balign 4
_Lt_07C4:	.ascii	"libm.a\0"
.balign 4
_Lt_07C7:	.ascii	"libmingw32.a\0"
.balign 4
_Lt_07E1:	.ascii	"gdi32\0"
.balign 4
_Lt_07E2:	.ascii	"winmm\0"
.balign 4
_Lt_07E4:	.ascii	"X11\0"
.balign 4
_Lt_07E5:	.ascii	"Xext\0"
.balign 4
_Lt_07E6:	.ascii	"Xpm\0"
.balign 4
_Lt_07E7:	.ascii	"Xrandr\0"
.balign 4
_Lt_07E8:	.ascii	"Xrender\0"
.balign 4
_Lt_07EE:	.ascii	"kernel32\0"
.balign 4
_Lt_07EF:	.ascii	"user32\0"
.balign 4
_Lt_07F2:	.ascii	"gmon\0"
.balign 4
_Lt_07F4:	.ascii	"System\0"
.balign 4
_Lt_07F5:	.ascii	"pthread\0"
.balign 4
_Lt_07F6:	.ascii	"ncurses\0"
.balign 4
_Lt_07FA:	.ascii	"socket\0"
.balign 4
_Lt_07FE:	.ascii	"libtinfo.a\0"
.balign 4
_Lt_07FF:	.ascii	"libtinfo.so\0"
.balign 4
_Lt_0802:	.ascii	"tinfo\0"
.balign 4
_Lt_0803:	.ascii	"dl\0"
.balign 4
_Lt_0804:	.ascii	"libgcc_eh.a\0"
.balign 4
_Lt_0805:	.ascii	"libgcc_eh.so\0"
.balign 4
_Lt_0808:	.ascii	"gcc_eh\0"
.balign 4
_Lt_080C:	.ascii	"msvcrt\0"
.balign 4
_Lt_080D:	.ascii	"mingw32\0"
.balign 4
_Lt_080E:	.ascii	"mingwex\0"
.balign 4
_Lt_080F:	.ascii	"moldname\0"
.balign 4
_Lt_0810:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
_Lt_0816:	.ascii	"openxdk\0"
.balign 4
_Lt_0817:	.ascii	"hal\0"
.balign 4
_Lt_0818:	.ascii	"usb\0"
.balign 4
_Lt_0819:	.ascii	"xboxkrnl\0"
.balign 4
_Lt_0823:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
_Lt_0824:	.ascii	"input files:\0"
.balign 4
_Lt_0825:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
_Lt_0826:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
_Lt_0827:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
_Lt_0828:	.ascii	"options:\0"
.balign 4
_Lt_0829:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
_Lt_082A:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
_Lt_082B:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
_Lt_082C:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
_Lt_082D:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
_Lt_0830:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
_Lt_0831:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
_Lt_0832:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
_Lt_0833:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
_Lt_0834:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
_Lt_0835:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
_Lt_0836:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
_Lt_0839:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
_Lt_083A:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
_Lt_083B:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
_Lt_083C:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
_Lt_083D:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
_Lt_083E:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
_Lt_083F:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
_Lt_0840:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
_Lt_0841:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
_Lt_0842:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
_Lt_0843:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
_Lt_0846:	.ascii	"  -fbgfx           Link to the appropriate libfbgfx variant (normally automatic)\0"
.balign 4
_Lt_0847:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
_Lt_084A:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
_Lt_084B:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
_Lt_084C:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
_Lt_084F:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
_Lt_0850:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
_Lt_0851:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
_Lt_0852:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
_Lt_0853:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
_Lt_0854:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
_Lt_0855:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
_Lt_0856:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
_Lt_0857:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
_Lt_0858:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
_Lt_0859:	.ascii	"  -lib             Create a static library\0"
.balign 4
_Lt_085A:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
_Lt_085B:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
_Lt_085C:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
_Lt_085D:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
_Lt_085E:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
_Lt_085F:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
_Lt_0860:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
_Lt_0861:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
_Lt_0862:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
_Lt_0863:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
_Lt_0864:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
_Lt_0865:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
_Lt_0866:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
_Lt_0867:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
_Lt_0868:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
_Lt_0869:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
_Lt_086A:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
_Lt_086B:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
_Lt_086E:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
_Lt_086F:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
_Lt_0870:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
_Lt_0871:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
_Lt_0872:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
_Lt_0873:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
_Lt_0874:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
_Lt_0875:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
_Lt_0876:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
_Lt_0877:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
_Lt_0878:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
_Lt_087B:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
_Lt_087C:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
_Lt_087D:	.ascii	"  -v               Be verbose\0"
.balign 4
_Lt_087E:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
_Lt_087F:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
_Lt_0880:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
_Lt_0883:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
_Lt_0884:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
_Lt_0885:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
_Lt_0886:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
_Lt_0887:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
_Lt_0888:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
_Lt_0889:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
_Lt_088A:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
_Lt_088B:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
_Lt_088C:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
_Lt_088D:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
_Lt_088E:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
_Lt_088F:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
_Lt_0890:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
_Lt_0893:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
_Lt_0894:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
_Lt_0895:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
_Lt_0896:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
_Lt_0897:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
_Lt_0898:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
_Lt_0899:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
_Lt_08A6:	.ascii	"FreeBASIC Compiler - Version 1.10.1 (2023-12-24), built for \0"
.balign 4
_Lt_08A7:	.ascii	"bit)\0"
.balign 4
_Lt_08AC:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
_Lt_08B3:	.ascii	"source sha-1: \0"
.balign 4
_Lt_08D8:	.ascii	"Restarting fbc ...\0"

.section .ctors
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
