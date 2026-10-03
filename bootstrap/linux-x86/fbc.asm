	.intel_syntax noprefix

.section .text
.balign 16

.globl FBCPUTYPEFROMGNUARCHINFO
FBCPUTYPEFROMGNUARCHINFO:
.type FBCPUTYPEFROMGNUARCHINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_031B:
mov dword ptr [ebp-8], 0
.L_0320:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0322
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_031C
.L_0322:
.L_0321:
.L_031E:
inc dword ptr [ebp-8]
.L_031D:
cmp dword ptr [ebp-8], 16
jle .L_0320
.L_031F:
mov dword ptr [ebp-4], -1
.L_031C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPUTYPEFROMGNUARCHINFO, .-FBCPUTYPEFROMGNUARCHINFO
.cfi_endproc
.balign 16

.globl FBCPARSEARGSFROMSTRING
FBCPARSEARGSFROMSTRING:
.type FBCPARSEARGSFROMSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0583:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_0585:
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0589
jmp .L_0586
.L_0589:
.L_0588:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_058A:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_058B
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_058D
.L_058F:
cmp dword ptr [ebp-36], 0
jne .L_0591
jmp .L_058B
.L_0591:
.L_0590:
jmp .L_058C
.L_0592:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_0595
mov dword ptr [ebp-36], 0
jmp .L_0594
.L_0595:
cmp dword ptr [ebp-36], 0
jne .L_0596
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_0596:
.L_0594:
jmp .L_058C
.L_058D:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_058C
mov ebx, dword ptr [ebp-44]
jmp dword ptr [.L_0597+ebx*4-128]
.L_0597:
.int .L_058F
.int .L_058C
.int .L_0592
.int .L_058C
.int .L_058C
.int .L_058C
.int .L_058C
.int .L_0592
.L_058C:
inc dword ptr [ebp-32]
jmp .L_058A
.L_058B:
cmp dword ptr [ebp-32], 0
jne .L_0599
mov dword ptr [ebp-32], 1
jmp .L_0598
.L_0599:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-24]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-24]
push eax
call STRUNQUOTE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call HANDLEARG
add esp, 16
.L_0598:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0587:
jmp .L_0585
.L_0586:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0584:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPARSEARGSFROMSTRING, .-FBCPARSEARGSFROMSTRING
.cfi_endproc
.balign 16

.globl main
main:
.type main, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
and esp, 0xFFFFFFF0
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_Init
add esp, 16
call fb_InitSignals
call fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
sub esp, 4
push 1
push 44
push offset Lt_0005
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call fb_End
add esp, 16
.L_0004:
.L_0002:
call FBCINIT
cmp dword ptr [ebp+8], 1
jne .L_089F
sub esp, 12
push 0
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_089F:
.L_089E:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARSEARGS
add esp, 16
call HCHECKARGS
cmp dword ptr [FBC+60], 0
je .L_08A1
sub esp, 12
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 16
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08A1:
.L_08A0:
cmp dword ptr [FBC+56], 0
je .L_08A3
mov dword ptr [FBC+60], -1
sub esp, 12
push 0
call HPRINTVERSION
add esp, 16
.L_08A3:
.L_08A2:
cmp dword ptr [FBC+64], 0
je .L_08A5
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08A5:
.L_08A4:
.L_08A6:
call FBCDETERMINEPREFIX
call FBCSETUPCOMPILERPATHS
cmp dword ptr [FBC+56], 0
je .L_08AA
call FBCPRINTTARGETINFO
.L_08AA:
.L_08A9:
sub esp, 12
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
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+264]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+232]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [FBC+68], 0
jl .L_08AD
mov ebx, dword ptr [FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08B0
.L_08B1:
sub esp, 4
push 1
sub esp, 8
call FBGETHOSTID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08AE
.L_08B0:
cmp dword ptr [ebp-24], 1
jne .L_08B2
.L_08B3:
sub esp, 4
push 1
sub esp, 8
call FBGETTARGETID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08AE
.L_08B2:
cmp dword ptr [ebp-24], 2
jne .L_08B4
.L_08B5:
cmp dword ptr [ebp-20], 0
je .L_08B7
call FBCDETERMINEMAINNAME
.L_08B7:
.L_08B6:
call HSETOUTNAME
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08AE
.L_08B4:
cmp dword ptr [ebp-24], 3
jne .L_08B8
.L_08B9:
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+2751]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08AE
.L_08B8:
cmp dword ptr [ebp-24], 4
jne .L_08BA
.L_08BB:
sub esp, 4
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_08BA:
.L_08AE:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08AD:
.L_08AC:
call FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .L_08BD
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08BD:
.L_08BC:
call HCOMPILEMODULES
call FBSHOULDRESTART
test eax, eax
jne .L_08BF
jmp .L_08A7
.L_08BF:
.L_08BE:
sub esp, 12
push 8
call FBRESTARTENDREQUEST
add esp, 16
call ERRPREINIT
call HCHECKARGS
cmp dword ptr [FBC+56], 0
je .L_08C1
sub esp, 4
push 1
push 18
push offset Lt_08C2
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_08C1:
.L_08C0:
.L_08A8:
jmp .L_08A6
.L_08A7:
call HCOMPILEXPM
test eax, eax
jne .L_08C4
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08C4:
.L_08C3:
cmp dword ptr [FBC+36], 0
je .L_08C6
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08C6:
.L_08C5:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08C8
call HCOMPILESTAGE2MODULES
.L_08C8:
.L_08C7:
cmp dword ptr [FBC+44], 0
je .L_08CA
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08CA:
.L_08C9:
call HASSEMBLEMODULES
call HASSEMBLERCS
call HASSEMBLEXPM
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .L_08CC
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08CC:
.L_08CB:
call HSETDEFAULTLIBPATHS
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_08CE
call HCOLLECTOBJINFO
.L_08CE:
.L_08CD:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_08D0
call HARCHIVEFILES
test eax, eax
jne .L_08D2
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08D2:
.L_08D1:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08D0:
.L_08CF:
cmp dword ptr [FBC+1956], 0
jne .L_08D4
call HADDDEFAULTLIBS
.L_08D4:
.L_08D3:
call HEXCLUDELIBSFROMLINK
call HLINKFILES
test eax, eax
jne .L_08D6
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08D6:
.L_08D5:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_0003:
sub esp, 12
push 0
call fb_End
add esp, 16
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size main, .-main
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
.L_0013:
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
.L_0014:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTC1Ev:
.type _ZN10FBC_EXTOPTC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTC1Ev, .-_ZN10FBC_EXTOPTC1Ev
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTaSERKS_:
.type _ZN10FBC_EXTOPTaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0025:
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
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
.L_0026:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTaSERKS_, .-_ZN10FBC_EXTOPTaSERKS_
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTD1Ev:
.type _ZN10FBC_EXTOPTD1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0029:
.L_002A:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTD1Ev, .-_ZN10FBC_EXTOPTD1Ev
.cfi_endproc
.balign 16
_ZN9FBCIOFILEC1Ev:
.type _ZN9FBCIOFILEC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILEC1Ev, .-_ZN9FBCIOFILEC1Ev
.cfi_endproc
.balign 16
_ZN9FBCIOFILEaSERKS_:
.type _ZN9FBCIOFILEaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_002D:
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
.L_002E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILEaSERKS_, .-_ZN9FBCIOFILEaSERKS_
.cfi_endproc
.balign 16
_ZN9FBCIOFILED1Ev:
.type _ZN9FBCIOFILED1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0031:
.L_0032:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILED1Ev, .-_ZN9FBCIOFILED1Ev
.cfi_endproc
.balign 16
_ZN6FBCCTXC1Ev:
.type _ZN6FBCCTXC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
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
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call _ZN9FBCIOFILEC1Ev
add esp, 16
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
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTC1Ev
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXC1Ev, .-_ZN6FBCCTXC1Ev
.cfi_endproc
.balign 16
_ZN6FBCCTXaSERKS_:
.type _ZN6FBCCTXaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
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
sub esp, 12
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
add esp, 32
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
sub esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call _ZN9FBCIOFILEaSERKS_
add esp, 16
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
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
mov ecx, dword ptr [ebp+12]
add ecx, 1136
mov ebx, dword ptr [ebp+8]
add ebx, 1136
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 8
mov eax, dword ptr [ebp+12]
add eax, 1532
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1532
lea eax, [ebx]
push eax
call _ZN10FBC_EXTOPTaSERKS_
add esp, 16
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
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
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXaSERKS_, .-_ZN6FBCCTXaSERKS_
.cfi_endproc
.balign 16
_ZN6FBCCTXD1Ev:
.type _ZN6FBCCTXD1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0039:
.L_003A:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTD1Ev
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea eax, [ebx]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXD1Ev, .-_ZN6FBCCTXD1Ev
.cfi_endproc
.balign 16
FBCINIT:
.type FBCINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
sub esp, 8
push 16
lea eax, [FBC+156]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 64
lea eax, [FBC+200]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+232]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+264]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+308]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+352]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+396]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+440]
push eax
call STRSETINIT
add esp, 16
call FBGLOBALINIT
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [FBC+3276], eax
mov dword ptr [FBC+68], -1
.L_004A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCINIT, .-FBCINIT
.cfi_endproc
.balign 16
HSETOUTNAME:
.type HSETOUTNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_004B:
sub esp, 8
push 261
lea eax, [FBC+484]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_004E
jmp .L_004C
.L_004E:
.L_004D:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_0050
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0052
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
lea eax, [FBC+745]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_004C
.L_0050:
.L_004F:
sub esp, 12
push 0
push 261
lea eax, [FBC+745]
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0058
.L_0059:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
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
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_005A
.L_005C:
cmp dword ptr [ebp-8], 11
jne .L_0063
.L_0064:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
.L_0063:
.L_005A:
jmp .L_0056
.L_0058:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_006C
.L_006D:
cmp dword ptr [ebp-8], 0
jne .L_006B
.L_006C:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
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
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0078
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0069
.L_0070:
cmp dword ptr [ebp-8], 3
jne .L_007C
.L_007D:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
.L_007C:
.L_0069:
.L_0067:
.L_0056:
.L_004C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETOUTNAME, .-HSETOUTNAME
.cfi_endproc
.balign 16
FBCEND:
.type FBCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0080:
sub esp, 12
lea eax, [FBC+156]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
sub esp, 12
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_FileKill
add esp, 16
test eax, eax
je .L_0085
.L_0085:
.L_0084:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
sub esp, 12
push dword ptr [ebp+8]
call fb_End
add esp, 16
.L_0081:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCEND, .-FBCEND
.cfi_endproc
.balign 16
FBCADDTEMP:
.type FBCADDTEMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0086:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETADD
add esp, 16
.L_0087:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDTEMP, .-FBCADDTEMP
.cfi_endproc
.balign 16
FBCREMOVETEMP:
.type FBCREMOVETEMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0088:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETDEL
add esp, 16
.L_0089:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCREMOVETEMP, .-FBCREMOVETEMP
.cfi_endproc
.balign 16
FBCADDOBJ:
.type FBCADDOBJ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDOBJ, .-FBCADDOBJ
.cfi_endproc
.balign 16
HGET1STOUTPUTLINEFROMCOMMAND:
.type HGET1STOUTPUTLINEFROMCOMMAND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call fb_FileFree
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpenPipe
add esp, 32
test eax, eax
je .L_008F
jmp .L_008D
.L_008F:
.L_008E:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push dword ptr [ebp-16]
call fb_FileInput
add esp, 16
sub esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call fb_InputString
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_FileClose
add esp, 16
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
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008D
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_008D:
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
.size HGET1STOUTPUTLINEFROMCOMMAND, .-HGET1STOUTPUTLINEFROMCOMMAND
.cfi_endproc
.balign 16
FBCQUERYGCC:
.type FBCQUERYGCC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0092:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
lea eax, [ebp-24]
push eax
push 3
call FBCFINDBIN
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0096
.L_0097:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-56], 1
jne .L_0099
.L_009A:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_0099:
cmp dword ptr [ebp-56], 4
jne .L_009C
.L_009D:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_009C:
cmp dword ptr [ebp-56], 5
je .L_009F
.L_00A0:
cmp dword ptr [ebp-56], 6
jne .L_009E
.L_009F:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_009E:
.L_0094:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
call fb_FileFree
mov dword ptr [ebp-40], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call fb_FileOpenPipe
add esp, 32
test eax, eax
je .L_00A3
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push dword ptr [ebp-40]
call fb_FileInput
add esp, 16
sub esp, 4
push 0
push -1
lea eax, [ebp-52]
push eax
call fb_InputString
add esp, 16
sub esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 16
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
sub esp, 12
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0093
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0093:
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
.size FBCQUERYGCC, .-FBCQUERYGCC
.cfi_endproc
.balign 16
FBCBUILDPATHTOLIBFILE:
.type FBCBUILDPATHTOLIBFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 88
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
sub esp, 4
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
je .L_00AA
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00AA:
.L_00A9:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 8
lea eax, [ebp-60]
push eax
push 3
call FBCFINDBIN
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-88], eax
cmp dword ptr [ebp-88], 0
jne .L_00AD
.L_00AE:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-88], 1
jne .L_00AF
.L_00B0:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-88], 4
jne .L_00B1
.L_00B2:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-88], 5
je .L_00B4
.L_00B5:
cmp dword ptr [ebp-88], 6
jne .L_00B3
.L_00B4:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
.L_00B3:
.L_00AB:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
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
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-60]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_00BA
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
sub esp, 8
push dword ptr [ebp-24]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BC
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00BC:
.L_00BB:
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
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_00A6:
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
.size FBCBUILDPATHTOLIBFILE, .-FBCBUILDPATHTOLIBFILE
.cfi_endproc
.balign 16
FBCFINDLIBFILE:
.type FBCFINDLIBFILE, @function
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
.L_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00C0
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00C2
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
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
.L_00BE:
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
.size FBCFINDLIBFILE, .-FBCFINDLIBFILE
.cfi_endproc
.balign 16
FBCADDDEFLIBPATH:
.type FBCADDDEFLIBPATH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C3:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 16
.L_00C4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDDEFLIBPATH, .-FBCADDDEFLIBPATH
.cfi_endproc
.balign 16
FBCADDLIBPATHFOR:
.type FBCADDLIBPATHFOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_00C5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HSTRIPFILENAME
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
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00C9
sub esp, 12
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 16
.L_00C9:
.L_00C8:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_00C6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDLIBPATHFOR, .-FBCADDLIBPATHFOR
.cfi_endproc
.balign 16
FBCFINDBIN:
.type FBCFINDBIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_00CA:
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [FBCTOOLTB+eax+16]
and ebx, 4
test ebx, ebx
je .L_00CD
sub esp, 12
push 0
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
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
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_GetEnviron
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00CF:
.L_00CE:
sub esp, 8
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_00D1
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
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
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00D5
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_00D8
.L_00D9:
cmp dword ptr [ebp+8], 0
jne .L_00DB
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp+8], 2
jne .L_00DE
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00E5
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_00E7
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00E9
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
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
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_00E8
.L_00E9:
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
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
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00E8:
jmp .L_00E6
.L_00E7:
sub esp, 12
push 0
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00E6:
mov ebx, dword ptr [ebp+8]
imul ebx, 284
or dword ptr [FBCTOOLTB+ebx+16], 8
.L_00E5:
.L_00E4:
.L_00D1:
.L_00D0:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCFINDBIN, .-FBCFINDBIN
.cfi_endproc
.balign 16
FBCRUNBIN:
.type FBCRUNBIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call FBCFINDBIN
add esp, 16
cmp dword ptr [FBC+56], 0
je .L_00F1
sub esp, 4
push 2
sub esp, 4
push 3
push offset Lt_00F2
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
push dword ptr [ebp+16]
push -1
sub esp, 4
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_00F1:
.L_00F0:
sub esp, 8
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
call fb_Exec
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F8
mov dword ptr [ebp-4], -1
jmp .L_00F7
.L_00F8:
cmp dword ptr [ebp-8], 0
jge .L_00F9
sub esp, 12
push 0
push 6
push -1
push dword ptr [ebp-20]
push 91
call ERRREPORTEX
add esp, 32
jmp .L_00F7
.L_00F9:
cmp dword ptr [FBC+56], 0
je .L_00FB
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 29
push offset Lt_00FD
push -1
sub esp, 4
push -1
lea eax, [ebp-20]
push eax
push -1
sub esp, 4
push 11
push offset Lt_00FC
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_00FB:
.L_00FA:
.L_00F7:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_00EF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCRUNBIN, .-FBCRUNBIN
.cfi_endproc
.balign 16
CLEARDEFLIST:
.type CLEARDEFLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-4], 0
.L_0102:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0105
mov dword ptr [ebp-4], 0
jmp .L_0103
.L_0105:
.L_0104:
sub esp, 12
push 0
push -1
sub esp, 8
push 11
push offset Lt_0106
push -1
sub esp, 4
push dword ptr [ebp+8]
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
call fb_FileFree
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0109
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_010A
push 0
push 0
push offset Lt_0091
push 604
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010A:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0103
.L_0109:
.L_0108:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_010B:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_010C
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 5
push offset Lt_010D
push -1
sub esp, 12
push 4
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_010F
sub esp, 12
push 0
push -1
sub esp, 4
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
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_010F:
.L_010E:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
sub esp, 4
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call fb_PrintString
add esp, 16
jmp .L_010B
.L_010C:
sub esp, 12
push dword ptr [ebp-36]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0111
push 0
push 0
push offset Lt_0091
push 619
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0111:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0112
push 0
push 0
push offset Lt_0091
push 620
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0112:
sub esp, 12
push dword ptr [ebp+8]
call fb_FileKill
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call rename
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0103
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0103:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLEARDEFLIST, .-CLEARDEFLIST
.cfi_endproc
.balign 16
HGENERATEEMPTYDEFFILE:
.type HGENERATEEMPTYDEFFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0113:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0116
jmp .L_0114
.L_0116:
.L_0115:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
sub esp, 4
push 1
push 7
push offset Lt_0118
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0119
push 0
push 0
push offset Lt_0091
push 634
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0119:
mov dword ptr [ebp-4], -1
.L_0114:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGENERATEEMPTYDEFFILE, .-HGENERATEEMPTYDEFFILE
.cfi_endproc
.balign 16
MAKEIMPLIB:
.type MAKEIMPLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 120
mov dword ptr [ebp-4], 0
.L_011A:
sub esp, 12
push dword ptr [ebp+12]
call CLEARDEFLIST
add esp, 16
test eax, eax
jne .L_011D
jmp .L_011B
.L_011D:
.L_011C:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call fb_FileLen
add esp, 16
cmp edx, 0
jne .L_011F
cmp eax, 0
jne .L_011F
.L_08E4:
sub esp, 12
push dword ptr [ebp+12]
call HGENERATEEMPTYDEFFILE
add esp, 16
test eax, eax
jne .L_0121
jmp .L_011B
.L_0121:
.L_0120:
.L_011F:
.L_011E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp+12]
push 8
push offset Lt_0122
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_0127
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 8
push offset Lt_0129
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 16
push eax
push 16
push offset Lt_0128
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 6
push offset Lt_012F
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0131
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_011B
.L_0131:
.L_0130:
cmp dword ptr [FBC+40], 0
jne .L_0133
sub esp, 12
push dword ptr [ebp+12]
call FBCADDTEMP
add esp, 16
.L_0133:
.L_0132:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_011B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size MAKEIMPLIB, .-MAKEIMPLIB
.cfi_endproc
.balign 16
HFINDLIB:
.type HFINDLIB, @function
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
.L_0134:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0137
sub esp, 12
push 0
push 3
push offset Lt_0138
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0136
.L_0137:
sub esp, 12
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 32
.L_0136:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0135:
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
.size HFINDLIB, .-HFINDLIB
.cfi_endproc
.balign 16
FBCLINKERISGOLD:
.type FBCLINKERISGOLD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0139:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
jne .L_013C
mov dword ptr [ebp-4], 0
jmp .L_013A
jmp .L_013B
.L_013C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 8
lea eax, [ebp-16]
push eax
push 2
call FBCFINDBIN
add esp, 16
sub esp, 12
push 0
push 11
push offset Lt_013D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
sub esp, 4
push 8
push offset Lt_013E
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
lea eax, [ebp-16]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_013A
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_013B:
.L_013A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCLINKERISGOLD, .-FBCLINKERISGOLD
.cfi_endproc
.balign 16
FBCISUSINGGOLDLINKER:
.type FBCISUSINGGOLDLINKER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_013F:
call FBTARGETSUPPORTSELF
test eax, eax
je .L_0142
call FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .L_0140
.L_0142:
.L_0141:
mov dword ptr [ebp-4], 0
.L_0140:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCISUSINGGOLDLINKER, .-FBCISUSINGGOLDLINKER
.cfi_endproc
.balign 16
HLINKFILES:
.type HLINKFILES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
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
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_0147
.L_0148:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_014B
.L_014C:
sub esp, 12
push 0
push 11
push offset Lt_014D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0149
.L_014B:
cmp dword ptr [ebp-52], 1
jne .L_014E
.L_014F:
sub esp, 12
push 0
push 12
push offset Lt_0150
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_014E:
.L_0149:
jmp .L_0145
.L_0147:
cmp dword ptr [ebp-48], 2
jne .L_0151
.L_0152:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0155
.L_0156:
sub esp, 12
push 0
push 13
push offset Lt_0157
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0153
.L_0155:
cmp dword ptr [ebp-52], 1
jne .L_0158
.L_0159:
sub esp, 12
push 0
push 15
push offset Lt_015A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0153
.L_0158:
cmp dword ptr [ebp-52], 2
jne .L_015B
.L_015C:
sub esp, 12
push 0
push 22
push offset Lt_015D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_015B:
.L_0153:
jmp .L_0145
.L_0151:
cmp dword ptr [ebp-48], 9
jne .L_015E
.L_015F:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0162
.L_0163:
sub esp, 12
push 0
push 12
push offset Lt_0164
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0160
.L_0162:
cmp dword ptr [ebp-52], 1
jne .L_0165
.L_0166:
sub esp, 12
push 0
push 14
push offset Lt_0167
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0160
.L_0165:
cmp dword ptr [ebp-52], 2
jne .L_0168
.L_0169:
sub esp, 12
push 0
push 13
push offset Lt_016A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0168:
.L_0160:
.L_015E:
.L_0145:
sub esp, 12
push 0
push 5
push offset Lt_016D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 0
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_016F
sub esp, 12
push 0
push 9
push offset Lt_0170
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_0172
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0173
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-60], eax
.L_0174:
cmp dword ptr [ebp-60], 0
je .L_0175
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_0138
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-60], eax
jmp .L_0174
.L_0175:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_017A
sub esp, 12
push 0
push 5
push offset Lt_017B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_017A:
.L_0179:
.L_017C:
cmp dword ptr [ebp-60], 0
je .L_017D
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_0138
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-60], eax
jmp .L_017C
.L_017D:
sub esp, 4
lea eax, [ebp-16]
push eax
push 10
push offset Lt_0181
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_016F:
.L_016E:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0183
.L_0185:
sub esp, 8
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0187
sub esp, 12
push 0
push 8
push offset Lt_0188
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0186
.L_0187:
push 4
push offset Lt_0189
push 129
lea eax, [FBC+1401]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_018B
sub esp, 12
push 0
push 8
push offset Lt_018C
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
.L_018B:
.L_018A:
.L_0186:
sub esp, 12
push 0
push 13
push offset Lt_018D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_018F
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 30
push offset Lt_0192
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
test eax, eax
jne .L_0194
sub esp, 12
push 0
push 26
push offset Lt_0195
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0193
.L_0194:
sub esp, 12
push 0
push 22
push offset Lt_0196
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0193:
.L_018F:
.L_018E:
jmp .L_0182
.L_0197:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0199
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 12
push offset Lt_019C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
push 4
push offset Lt_0051
push -1
sub esp, 12
push 3
lea eax, [ebp-28]
push eax
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_019E
sub esp, 12
push 0
push -1
sub esp, 4
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
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.L_019E:
.L_019D:
jmp .L_0198
.L_0199:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_01A0
.L_01A2:
sub esp, 12
push 0
push 38
push offset Lt_01A3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A4:
sub esp, 12
push 0
push 38
push offset Lt_01A5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A6:
sub esp, 12
push 0
push 34
push offset Lt_01A7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A8:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_01AB
.L_01AC:
sub esp, 12
push 0
push 36
push offset Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01AB:
cmp dword ptr [ebp-56], 1
jne .L_01AE
.L_01AF:
sub esp, 12
push 0
push 45
push offset Lt_01B0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01AE:
cmp dword ptr [ebp-56], 2
jne .L_01B1
.L_01B2:
sub esp, 12
push 0
push 42
push offset Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01B1:
cmp dword ptr [ebp-56], 3
jne .L_01B4
.L_01B5:
sub esp, 12
push 0
push 44
push offset Lt_01B6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01B4:
.L_01A9:
jmp .L_019F
.L_01B7:
sub esp, 12
push 0
push 40
push offset Lt_01B8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01B9:
sub esp, 12
push 0
push 36
push offset Lt_01BA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A0:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .L_019F
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_01BB+eax*4-8]
.L_01BB:
.int .L_01A8
.int .L_019F
.int .L_019F
.int .L_01A2
.int .L_01A4
.int .L_01A6
.int .L_01B9
.int .L_019F
.int .L_01B7
.L_019F:
.L_0198:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 33
mov ebx, eax
call FBGETOPTION
add esp, 16
or ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01BD
sub esp, 12
push 0
push 18
push offset Lt_01BE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01BD:
.L_01BC:
jmp .L_0182
.L_01BF:
sub esp, 12
push 0
push 66
push offset Lt_01C0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0182
.L_01C1:
sub esp, 12
push 0
push 4
push offset Lt_01C2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 26
push offset Lt_01C9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-52], 0
.L_01CD:
sub esp, 12
push 0
push 5
push offset Lt_01CE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [Lt_08EF+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_01CB:
inc dword ptr [ebp-52]
.L_01CA:
cmp dword ptr [ebp-52], 4
jle .L_01CD
.L_01CC:
sub esp, 12
push 0
push 14
push offset Lt_01CF
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D0
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 11
push offset Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D2
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_01D4
sub esp, 12
push 0
push 11
push offset Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D5
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01D4:
.L_01D3:
jmp .L_0182
.L_0183:
cmp dword ptr [ebp-48], 11
ja .L_0182
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01D6+eax*4]
.L_01D6:
.int .L_0185
.int .L_0185
.int .L_0197
.int .L_0182
.int .L_01BF
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_01C1
.L_0182:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .L_01D8
sub esp, 12
push 0
push 6
push offset Lt_01D9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_01DB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01D7
.L_01D8:
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .L_01DD
sub esp, 12
push 0
push 6
push offset Lt_01D9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_01DF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01DD:
.L_01DC:
.L_01D7:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_01E1
.L_01E3:
sub esp, 12
push 38
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 12
push 0
push 10
push offset Lt_01E4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_01E5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_01E7
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_01E9
push -1
lea eax, [ebp-40]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 16
push offset Lt_01EA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01E7:
.L_01E6:
jmp .L_01E0
.L_01EB:
sub esp, 12
push 0
push 23
push offset Lt_01EC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01E0
.L_01E1:
cmp dword ptr [ebp-48], 4
ja .L_01E0
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01ED+eax*4]
.L_01ED:
.int .L_01E3
.int .L_01E3
.int .L_01E0
.int .L_01E0
.int .L_01EB
.L_01E0:
cmp dword ptr [FBC+1960], 0
je .L_01EF
sub esp, 12
push 0
push 10
push offset Lt_01F0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01EF:
.L_01EE:
sub esp, 8
push 261
lea eax, [FBC+1140]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_01F2
sub esp, 12
push 0
push 7
push offset Lt_01F3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01F2:
.L_01F1:
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_01F5
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_01F7
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01F9
cmp dword ptr [FBC+1964], 0
je .L_01FB
sub esp, 12
push 0
push 4
push offset Lt_01FC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01FB:
.L_01FA:
.L_01F9:
.L_01F8:
.L_01F7:
.L_01F6:
.L_01F5:
.L_01F4:
sub esp, 12
lea eax, [FBC+440]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_01FE
sub esp, 12
push 0
push 6
push offset Lt_01FF
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_01FD
.L_01FE:
sub esp, 12
push 0
push 5
push offset Lt_0200
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
.L_01FD:
.L_0201:
cmp dword ptr [ebp-48], 0
je .L_0202
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
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
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0201
.L_0202:
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0207
.L_0209:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_020B
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_020A
.L_020B:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_020E
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020F
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_020E:
.L_020D:
.L_020A:
jmp .L_0206
.L_0210:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0212
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0213
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0211
.L_0212:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0214
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0216
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0217
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0216:
.L_0215:
.L_0211:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0218
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0206
.L_0219:
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_021B
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020F
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_021A
.L_021B:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_021A:
jmp .L_0206
.L_021C:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_021E
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0220
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_0222
.L_0224:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020F
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0221
.L_0225:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0226
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0221
.L_0222:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_0225
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_0227+eax*4-32]
.L_0227:
.int .L_0224
.int .L_0225
.int .L_0224
.L_0221:
jmp .L_021F
.L_0220:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_0229
.L_022B:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0228
.L_022C:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_022D
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0228
.L_0229:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_022C
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_022E+eax*4-32]
.L_022E:
.int .L_022B
.int .L_022C
.int .L_022B
.L_0228:
.L_021F:
.L_021E:
.L_021D:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0230
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .L_0232
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0233
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0232:
.L_0231:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0235
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0236
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0234
.L_0235:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0218
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0234:
.L_0230:
.L_022F:
jmp .L_0206
.L_0237:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0206
.L_0207:
cmp dword ptr [ebp-48], 10
ja .L_0206
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0238+eax*4]
.L_0238:
.int .L_0210
.int .L_0209
.int .L_021C
.int .L_0219
.int .L_0237
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.int .L_021C
.L_0206:
cmp dword ptr [FBC+1956], 0
jne .L_023A
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_023C
sub esp, 12
push 0
push 3
push offset Lt_0138
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_001A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_023E
sub esp, 12
push 0
push 11
push offset Lt_023F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_023D
.L_023E:
sub esp, 12
push 0
push 8
push offset Lt_0240
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_023D:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_023C:
.L_023B:
.L_023A:
.L_0239:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.L_0241:
cmp dword ptr [ebp-48], 0
je .L_0242
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0138
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0241
.L_0242:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0247
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_0249
sub esp, 12
push 0
push 6
push offset Lt_024A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0249:
.L_0248:
.L_0247:
.L_0246:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.L_024B:
cmp dword ptr [ebp-48], 0
je .L_024C
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0138
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_024B
.L_024C:
sub esp, 12
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.L_0250:
cmp dword ptr [ebp-48], 0
je .L_0251
cmp dword ptr [ebp-52], 0
je .L_0252
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
jmp .L_08E6
.L_0252:
mov dword ptr [ebp-56], -1
.L_08E6:
cmp dword ptr [ebp-56], 0
je .L_0255
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset Lt_0256
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_0255:
.L_0254:
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0250
.L_0251:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_025A
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_025C
sub esp, 12
push 0
push 6
push offset Lt_025D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_025B
.L_025C:
sub esp, 12
push 0
push 6
push offset Lt_025E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_025B:
.L_025A:
.L_0259:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0260
.L_0262:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0264
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0265
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0263
.L_0264:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0266
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0263:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .L_0268
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0269
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0268:
.L_0267:
jmp .L_025F
.L_026A:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0266
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_025F
.L_0260:
cmp dword ptr [ebp-48], 10
ja .L_025F
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_026B+eax*4]
.L_026B:
.int .L_026A
.int .L_025F
.int .L_0262
.int .L_025F
.int .L_025F
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_0262
.int .L_025F
.int .L_0262
.L_025F:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_026D
sub esp, 12
push 0
push 26
push offset Lt_026E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_026D:
.L_026C:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0270
.L_0272:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
je .L_0273
mov eax, dword ptr [ebp-52]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08E7
.L_0273:
mov dword ptr [ebp-56], -1
.L_08E7:
cmp dword ptr [ebp-56], 0
je .L_0276
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 1
je .L_0277
mov eax, dword ptr [ebp-60]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08E8
.L_0277:
mov dword ptr [ebp-64], -1
.L_08E8:
cmp dword ptr [ebp-64], 0
jne .L_0279
mov eax, dword ptr [ebp-60]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
jmp .L_08E9
.L_0279:
mov dword ptr [ebp-68], -1
.L_08E9:
cmp dword ptr [ebp-68], 0
jne .L_027B
mov eax, dword ptr [ebp-60]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_08EA
.L_027B:
mov dword ptr [ebp-72], -1
.L_08EA:
cmp dword ptr [ebp-72], 0
je .L_027E
sub esp, 12
push 0
push 16
push offset Lt_027F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_027E:
.L_027D:
.L_0276:
.L_0275:
jmp .L_026F
.L_0270:
mov eax, dword ptr [ebp-48]
add eax, 4294967294
cmp eax, 8
ja .L_026F
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0280+eax*4-8]
.L_0280:
.int .L_0272
.int .L_026F
.int .L_026F
.int .L_0272
.int .L_0272
.int .L_0272
.int .L_0272
.int .L_0272
.int .L_0272
.L_026F:
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-44], 2
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0282
mov dword ptr [ebp-44], 13
.L_0282:
.L_0281:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset Lt_0283
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0285
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_0285:
.L_0284:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0287
.L_0289:
call fb_FileFree
mov dword ptr [ebp-52], eax
sub esp, 8
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
add esp, 32
test eax, eax
je .L_028B
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_028B:
.L_028A:
sub esp, 12
push 38
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-56], eax
push 4
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call fb_FilePut
add esp, 16
test eax, eax
je .L_028C
push 0
push 0
push offset Lt_0091
push 1268
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_028C:
sub esp, 12
push dword ptr [ebp-52]
call fb_FileClose
add esp, 16
test eax, eax
je .L_028D
push 0
push 0
push offset Lt_0091
push 1270
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_028D:
jmp .L_0286
.L_028E:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0290
sub esp, 8
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call MAKEIMPLIB
add esp, 16
test eax, eax
jne .L_0292
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_0292:
.L_0291:
.L_0290:
.L_028F:
jmp .L_0286
.L_0293:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
sub esp, 8
push 129
lea eax, [FBC+1826]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0295
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.L_0295:
.L_0294:
sub esp, 12
push 0
push 9
push offset Lt_0298
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1826]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0299
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
je .L_029B
sub esp, 12
push 0
push 12
push offset Lt_029D
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_02A0
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.L_029B:
.L_029A:
sub esp, 12
push 0
push 8
push offset Lt_02A2
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_02A4
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_02A5
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [FBC+56], 0
jne .L_02A7
sub esp, 12
push 0
push 6
push offset Lt_02A8
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02A7:
.L_02A6:
cmp dword ptr [FBC+56], 0
je .L_02AA
sub esp, 4
push 2
push 6
push offset Lt_02AB
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-72]
push eax
push 0
call fb_PrintString
add esp, 16
.L_02AA:
.L_02A9:
sub esp, 8
lea eax, [ebp-60]
push eax
push 9
call FBCFINDBIN
add esp, 16
sub esp, 12
push -1
lea eax, [ebp-72]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
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
add esp, 16
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_02AF
cmp dword ptr [FBC+56], 0
je .L_02B1
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 16
push eax
push 24
push offset Lt_02B2
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_02B1:
.L_02B0:
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_02AF:
.L_02AE:
sub esp, 12
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0286
.L_0287:
cmp dword ptr [ebp-48], 4
ja .L_0286
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_02B4+eax*4]
.L_02B4:
.int .L_028E
.int .L_028E
.int .L_0286
.int .L_0289
.int .L_0293
.L_0286:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLINKFILES, .-HLINKFILES
.cfi_endproc

.section .data
.balign 4
Lt_08EF:
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
.type HREADOBJINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02B5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02B7:
sub esp, 12
lea eax, [ebp-12]
push eax
call OBJINFOREADNEXT
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_02BB
.L_02BD:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 16
jmp .L_02BA
.L_02BE:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 16
jmp .L_02BA
.L_02BF:
cmp dword ptr [FBC+3280], 0
jne .L_02C1
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 20
call ERRREPORTWARNEX
add esp, 32
mov dword ptr [FBC+3280], -1
sub esp, 8
push -1
push 35
call FBSETOPTION
add esp, 16
.L_02C1:
.L_02C0:
jmp .L_02BA
.L_02C2:
sub esp, 8
push -1
push 36
call FBSETOPTION
add esp, 16
jmp .L_02BA
.L_02C3:
sub esp, 12
push dword ptr [ebp-12]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02C5
mov dword ptr [ebp-16], 0
.L_02C5:
.L_02C4:
mov eax, dword ptr [FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02C7
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 21
call ERRREPORTWARNEX
add esp, 32
mov eax, dword ptr [ebp-16]
mov dword ptr [FBC+3276], eax
sub esp, 8
push dword ptr [ebp-16]
push 10
call FBSETOPTION
add esp, 16
.L_02C7:
.L_02C6:
jmp .L_02BA
.L_02C8:
jmp .L_02B8
jmp .L_02BA
.L_02BB:
cmp dword ptr [ebp-20], 4
ja .L_02C8
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02C9+eax*4]
.L_02C9:
.int .L_02BD
.int .L_02BE
.int .L_02BF
.int .L_02C2
.int .L_02C3
.L_02BA:
.L_02B9:
jmp .L_02B7
.L_02B8:
call OBJINFOREADEND
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_02B6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADOBJINFO, .-HREADOBJINFO
.cfi_endproc
.balign 16
HCOLLECTOBJINFO:
.type HCOLLECTOBJINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02CA:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_02CC:
cmp dword ptr [ebp-4], 0
je .L_02CD
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADOBJ
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02CC
.L_02CD:
sub esp, 12
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.L_02CE:
cmp dword ptr [ebp-8], 0
je .L_02CF
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02D1
sub esp, 8
lea eax, [FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call OBJINFOREADLIB
add esp, 16
call HREADOBJINFO
.L_02D1:
.L_02D0:
sub esp, 12
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_02CE
.L_02CF:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D2:
cmp dword ptr [ebp-4], 0
je .L_02D3
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADLIBFILE
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02D2
.L_02D3:
.L_02CB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOLLECTOBJINFO, .-HCOLLECTOBJINFO
.cfi_endproc
.balign 16
HFATALINVALIDOPTION:
.type HFATALINVALIDOPTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_02D4:
sub esp, 12
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02D9
mov dword ptr [ebp-40], 0
jmp .L_08FB
.L_02D9:
mov dword ptr [ebp-40], -1
.L_08FB:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_016C
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 2
push offset Lt_016C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-36]
push 81
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_02D5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFATALINVALIDOPTION, .-HFATALINVALIDOPTION
.cfi_endproc
.balign 16
HCHECKWAITINGOBJFILE:
.type HCHECKWAITINGOBJFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02DB:
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_02DE
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
push 4
push offset Lt_016B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push 292
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02DE:
.L_02DD:
.L_02DC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKWAITINGOBJFILE, .-HCHECKWAITINGOBJFILE
.cfi_endproc
.balign 16
HSETIOFILE:
.type HSETIOFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02E1:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .L_02E4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_02E6
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_02E7
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
jmp .L_02E5
.L_02E6:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_02E7
push -1
sub esp, 4
push dword ptr [ebp+12]
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02E5:
mov eax, dword ptr [ebp+8]
mov dword ptr [FBC+4], eax
jmp .L_02E3
.L_02E4:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_02E3:
sub esp, 12
lea eax, [FBC+8]
push eax
call FBCADDOBJ
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02E2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETIOFILE, .-HSETIOFILE
.cfi_endproc
.balign 16
HADDBAS:
.type HADDBAS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02EA:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [FBC+72]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
.L_02EB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDBAS, .-HADDBAS
.cfi_endproc
.balign 16
HPARSEGNUTRIPLET:
.type HPARSEGNUTRIPLET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_030B:
mov dword ptr [ebp-4], 0
.L_0310:
sub esp, 4
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [GNUOSMAP+eax*8]
call fb_StrAllocTempDescZ
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
test eax, eax
jle .L_0312
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_030F
.L_0312:
.L_0311:
.L_030E:
inc dword ptr [ebp-4]
.L_030D:
cmp dword ptr [ebp-4], 11
jle .L_0310
.L_030F:
cmp dword ptr [ebp+12], 0
jle .L_0314
sub esp, 12
push 0
push -1
sub esp, 4
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-16], 0
.L_0318:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_031A
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_0317
.L_031A:
.L_0319:
.L_0316:
inc dword ptr [ebp-16]
.L_0315:
cmp dword ptr [ebp-16], 16
jle .L_0318
.L_0317:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
.L_0314:
.L_0313:
.L_030C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEGNUTRIPLET, .-HPARSEGNUTRIPLET
.cfi_endproc
.balign 16
HPARSETARGETARG:
.type HPARSETARGETARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0327:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-20], 0
.L_032C:
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
jne .L_032E
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
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0328
.L_032E:
.L_032D:
.L_032A:
inc dword ptr [ebp-20]
.L_0329:
cmp dword ptr [ebp-20], 11
jle .L_032C
.L_032B:
sub esp, 4
sub esp, 4
push 1
push offset Lt_032F
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_0331
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call FBIDENTIFYOS
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 4
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
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCPUTYPEFROMCPUFAMILYID
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_0331:
.L_0330:
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
je .L_0335
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_0335:
.L_0334:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 16
.L_0328:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSETARGETARG, .-HPARSETARGETARG
.cfi_endproc
.balign 16
HANDLEOPT:
.type HANDLEOPT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 148
push ebx
.L_0338:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_033B
.L_033D:
sub esp, 12
push dword ptr [ebp+12]
call FBCADDOBJ
add esp, 16
jmp .L_033A
.L_033E:
push 7
push offset Lt_033F
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [FBC+28], eax
sub esp, 12
push dword ptr [ebp+12]
call FBIDENTIFYFBCARCH
add esp, 16
mov dword ptr [FBC+24], eax
cmp dword ptr [FBC+24], 0
jge .L_0341
sub esp, 8
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+12]
push 7
push offset Lt_0342
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HFATALINVALIDOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0341:
.L_0340:
jmp .L_033A
.L_0345:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0349
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0348
.L_034A:
mov dword ptr [FBC+32], 1
jmp .L_0346
.L_0348:
push 6
push offset Lt_034C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_034B
.L_034D:
mov dword ptr [FBC+32], 0
jmp .L_0346
.L_034B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_034E:
.L_0346:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_034F:
sub esp, 12
push dword ptr [ebp+12]
call HADDBAS
add esp, 16
jmp .L_033A
.L_0350:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+3012]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0351:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+52], -1
jmp .L_033A
.L_0352:
mov dword ptr [FBC+52], -1
jmp .L_033A
.L_0353:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREDEFINE
add esp, 16
jmp .L_033A
.L_0354:
sub esp, 8
push 2
push 0
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0355:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0356:
sub esp, 8
push -1
push 22
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0357:
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0358:
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0359:
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035A:
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035B:
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035C:
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035D:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1006]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_035E:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 17
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035F:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 17
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 18
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 22
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0360:
sub esp, 8
push -1
push 33
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0361:
sub esp, 8
push -1
push 36
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0362:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0364
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0364:
.L_0363:
sub esp, 12
push 11
call FBGETOPTION
add esp, 16
and eax, dword ptr [ebp+16]
je .L_0366
push 0
push 1
push 0
push 30
call ERRREPORTWARN
add esp, 16
jmp .L_0365
.L_0366:
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 11
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0368
sub esp, 8
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 16
.L_0368:
.L_0367:
.L_0365:
jmp .L_033A
.L_0369:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 8
push offset Lt_036D
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_036C
.L_036E:
mov dword ptr [ebp-8], 0
jmp .L_036A
.L_036C:
push 5
push offset Lt_0370
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_036F
.L_0371:
mov dword ptr [ebp-8], 1
jmp .L_036A
.L_036F:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0372:
.L_036A:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 6
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0373:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0377
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0379
.L_037A:
push 4
push offset Lt_0378
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0376
.L_0379:
mov dword ptr [ebp-8], 0
jmp .L_0374
.L_0376:
push 4
push offset Lt_037C
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_037B
.L_037D:
mov dword ptr [ebp-8], 1
jmp .L_0374
.L_037B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_037E:
.L_0374:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 5
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_037F:
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0380:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0384
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0383
.L_0385:
mov dword ptr [FBC+20], 0
jmp .L_0381
.L_0383:
push 4
push offset Lt_003F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0386
.L_0387:
mov dword ptr [FBC+20], 1
jmp .L_0381
.L_0386:
push 5
push offset Lt_0389
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0388
.L_038A:
mov dword ptr [FBC+20], 2
jmp .L_0381
.L_0388:
push 6
push offset Lt_038C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_038B
.L_038D:
mov dword ptr [FBC+20], 3
jmp .L_0381
.L_038B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_038E:
.L_0381:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_038F:
mov dword ptr [FBC+64], -1
jmp .L_033A
.L_0390:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_0392:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREINCLUDE
add esp, 16
jmp .L_033A
.L_0393:
sub esp, 4
push 0
push dword ptr [ebp+12]
lea eax, [FBC+264]
push eax
call STRSETADD
add esp, 16
jmp .L_033A
.L_0394:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0396
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0396:
.L_0395:
sub esp, 12
push 11
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_0398
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_039A
sub esp, 8
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 16
.L_039A:
.L_0399:
.L_0398:
.L_0397:
jmp .L_033A
.L_039B:
sub esp, 8
push 1
push 0
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_039C:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [FBC+1136], -1
jmp .L_033A
.L_039D:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+1140]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_039E:
push 4
push offset Lt_039F
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03A1
mov dword ptr [ebp-8], 2147483647
jmp .L_03A0
.L_03A1:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03A3
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03A3:
.L_03A2:
.L_03A0:
sub esp, 8
push dword ptr [ebp-8]
push 26
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03A4:
sub esp, 8
push -1
push 35
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+3280], -1
jmp .L_033A
.L_03A5:
mov dword ptr [FBC+1956], -1
jmp .L_033A
.L_03A6:
sub esp, 8
push 0
push 25
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03A7:
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
sub esp, 4
lea eax, [ebp-124]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
sub esp, 4
push 0
push 2
push offset Lt_01E5
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call HSPLITSTR
add esp, 16
sub esp, 12
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayLBound
add esp, 16
mov dword ptr [ebp-140], eax
sub esp, 8
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayUBound
add esp, 16
mov dword ptr [ebp-144], eax
jmp .L_03AA
.L_03AD:
sub esp, 8
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jle .L_03AF
sub esp, 4
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [FBC+352]
push ebx
call STRSETADD
add esp, 16
.L_03AF:
.L_03AE:
.L_03AB:
inc dword ptr [ebp-140]
.L_03AA:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03AD
.L_03AC:
sub esp, 12
lea ebx, [ebp-124]
push ebx
call fb_ArrayStrErase
add esp, 16
jmp .L_033A
.L_03B0:
sub esp, 8
push 0
push 39
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03B1:
mov dword ptr [FBC+1964], 0
jmp .L_033A
.L_03B2:
call HCHECKWAITINGOBJFILE
cmp dword ptr [FBC+4], 0
je .L_03B4
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [FBC+4]
push dword ptr [ebx+12]
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03B3
.L_03B4:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrAssign
add esp, 32
.L_03B3:
jmp .L_033A
.L_03B5:
push 4
push offset Lt_03B6
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03B8
mov dword ptr [ebp-8], 3
jmp .L_03B7
.L_03B8:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03BA
mov dword ptr [ebp-8], 0
jmp .L_03B9
.L_03BA:
cmp dword ptr [ebp-8], 3
jle .L_03BB
mov dword ptr [ebp-8], 3
.L_03BB:
.L_03B9:
.L_03B7:
sub esp, 8
push dword ptr [ebp-8]
push 8
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03BC:
sub esp, 4
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-16]
push eax
lea eax, [FBC+308]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03BE:
sub esp, 8
push -1
push 37
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03BF:
sub esp, 8
push -1
push 1
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
jmp .L_033A
.L_03C0:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 47
lea eax, [FBC+1968]
push eax
call HREPLACESLASH
add esp, 16
jmp .L_033A
.L_03C1:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_03C5
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C4
.L_03C6:
mov dword ptr [FBC+68], 0
jmp .L_03C2
.L_03C4:
push 7
push offset Lt_03C8
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C7
.L_03C9:
mov dword ptr [FBC+68], 1
jmp .L_03C2
.L_03C7:
push 2
push offset Lt_03CB
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CA
.L_03CC:
mov dword ptr [FBC+68], 2
jmp .L_03C2
.L_03CA:
push 9
push offset Lt_03CE
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CD
.L_03CF:
mov dword ptr [FBC+68], 3
jmp .L_03C2
.L_03CD:
push 6
push offset Lt_03D1
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03D0
.L_03D2:
mov dword ptr [FBC+68], 4
jmp .L_03C2
.L_03D0:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03D3:
.L_03C2:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03D4:
sub esp, 8
push -1
push 23
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03D5:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
mov dword ptr [FBC+40], -1
jmp .L_033A
.L_03D6:
mov dword ptr [FBC+40], -1
jmp .L_033A
.L_03D7:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+44], -1
mov dword ptr [FBC+48], -1
jmp .L_033A
.L_03D8:
mov dword ptr [FBC+48], -1
jmp .L_033A
.L_03D9:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0189
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03DC
.L_03DD:
sub esp, 8
push 1
push 41
call FBSETOPTION
add esp, 16
.L_03DC:
.L_03DA:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03DE:
sub esp, 8
push -1
push 40
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03DF:
mov dword ptr [FBC+1960], -1
jmp .L_033A
.L_03E0:
mov dword ptr [FBC+1964], -1
jmp .L_033A
.L_03E1:
sub esp, 8
sub esp, 4
push dword ptr [ebp+12]
call fb_VALINT
add esp, 8
sal eax, 10
push eax
push 38
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03E2:
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
je .L_03E4
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03E4:
.L_03E3:
sub esp, 8
push dword ptr [ebp-8]
push 3
call FBSETOPTION
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push 4
call FBSETOPTION
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
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
je .L_03E6
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [FBC+1568]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_032F
push 129
lea ebx, [FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 129
lea eax, [FBC+1697]
push eax
call fb_StrAssign
add esp, 32
.L_03E6:
.L_03E5:
jmp .L_033A
.L_03E8:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_03E9:
mov dword ptr [FBC+56], -1
jmp .L_033A
.L_03EA:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_03EE
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_03F0
.L_03F1:
push 2
push offset Lt_03EF
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03ED
.L_03F0:
mov dword ptr [ebp-8], 0
jmp .L_03EB
.L_03ED:
push 2
push offset Lt_0006
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F2
.L_03F3:
mov dword ptr [ebp-8], 1
jmp .L_03EB
.L_03F2:
push 2
push offset Lt_03F5
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F4
.L_03F6:
mov dword ptr [ebp-8], 2
jmp .L_03EB
.L_03F4:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03F7:
.L_03EB:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 7
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03F8:
cmp dword ptr [ebp+16], 0
je .L_03FA
cmp dword ptr [FBC+60], 0
jne .L_03FC
sub esp, 12
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 16
.L_03FC:
.L_03FB:
.L_03FA:
.L_03F9:
mov dword ptr [FBC+60], -1
jmp .L_033A
.L_03FD:
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0401
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0400
.L_0402:
mov dword ptr [ebp-8], 0
jmp .L_03FE
.L_0400:
push 5
push offset Lt_0404
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0403
.L_0405:
mov dword ptr [ebp-8], 4
jmp .L_03FE
.L_0403:
push 6
push offset Lt_0407
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0406
.L_0408:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 2
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_0406:
push 7
push offset Lt_040A
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0409
.L_040B:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 1
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_0409:
push 5
push offset Lt_040D
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040C
.L_040E:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 8
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_040C:
push 11
push offset Lt_0410
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040F
.L_0411:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 32
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_040F:
push 10
push offset Lt_0413
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0412
.L_0414:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 128
push eax
push 27
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .L_03FE
.L_0412:
push 8
push offset Lt_0416
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0415
.L_0417:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 64
push eax
push 27
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .L_03FE
.L_0415:
push 7
push offset Lt_0419
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0418
.L_041A:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 256
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_0418:
push 9
push offset Lt_041C
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_041B
.L_041D:
sub esp, 8
push -1769
push 27
call FBSETOPTION
add esp, 16
cmp dword ptr [ebp-8], 1
jle .L_041F
mov dword ptr [ebp-8], 1
.L_041F:
.L_041E:
jmp .L_03FE
.L_041B:
push 6
push offset Lt_0421
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0420
.L_0422:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 512
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_0420:
push 7
push offset Lt_0424
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0423
.L_0425:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 1024
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FE
.L_0423:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
.L_0426:
.L_03FE:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-8], 0
jl .L_0428
sub esp, 8
push dword ptr [ebp-8]
push 24
call FBSETOPTION
add esp, 16
.L_0428:
.L_0427:
jmp .L_033A
.L_0429:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E5
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [FBC+1532]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_042D:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E5
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [FBC+1556]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0431:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E5
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [FBC+1544]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0435:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0436:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 13
push offset Lt_043A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0439
.L_043B:
sub esp, 8
push -1
push 28
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_0439:
push 14
push offset Lt_043D
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_043C
.L_043E:
sub esp, 8
push -1
push 29
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_043C:
push 12
push offset Lt_0440
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_043F
.L_0441:
sub esp, 8
push -1
push 30
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_043F:
push 12
push offset Lt_0443
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0442
.L_0444:
sub esp, 8
push -1
push 31
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_0442:
push 5
push offset Lt_0446
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0445
.L_0447:
sub esp, 8
push -1
push 32
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_0445:
push 10
push offset Lt_0449
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0448
.L_044A:
sub esp, 8
push -1
push 42
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_0448:
push 10
push offset Lt_044C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_044B
.L_044D:
sub esp, 8
push -1
push 43
call FBSETOPTION
add esp, 16
jmp .L_0437
.L_044B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_044E:
.L_0437:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_033B:
cmp dword ptr [ebp-4], 70
ja .L_033A
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_044F+eax*4]
.L_044F:
.int .L_033D
.int .L_033E
.int .L_0345
.int .L_034F
.int .L_0350
.int .L_0351
.int .L_0352
.int .L_0353
.int .L_0354
.int .L_0354
.int .L_0355
.int .L_0356
.int .L_0357
.int .L_0358
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
.int .L_0369
.int .L_0373
.int .L_037F
.int .L_0380
.int .L_038F
.int .L_0390
.int .L_0392
.int .L_0393
.int .L_0394
.int .L_039B
.int .L_039C
.int .L_039D
.int .L_039E
.int .L_03A4
.int .L_03A5
.int .L_03A6
.int .L_03A7
.int .L_03B0
.int .L_03B1
.int .L_03B2
.int .L_03B5
.int .L_03BC
.int .L_03BE
.int .L_03BF
.int .L_03C0
.int .L_03C1
.int .L_03D4
.int .L_03D5
.int .L_03D6
.int .L_03D7
.int .L_03D8
.int .L_03D9
.int .L_03DE
.int .L_03DF
.int .L_03E0
.int .L_03E1
.int .L_03E2
.int .L_03E8
.int .L_03E9
.int .L_03EA
.int .L_03F8
.int .L_03FD
.int .L_0429
.int .L_042D
.int .L_0431
.int .L_0435
.int .L_0436
.L_033A:
.L_0339:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HANDLEOPT, .-HANDLEOPT
.cfi_endproc
.balign 16
PARSEOPTION:
.type PARSEOPTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0450:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0453
.L_0455:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0458
mov dword ptr [ebp-4], 0
jmp .L_0451
.L_0458:
.L_0457:
push 5
push offset Lt_0459
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_045B
mov dword ptr [ebp-4], 1
jmp .L_0451
.L_045B:
.L_045A:
push 4
push offset Lt_045C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_045E
mov dword ptr [ebp-4], 2
jmp .L_0451
.L_045E:
.L_045D:
jmp .L_0452
.L_045F:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0462
mov dword ptr [ebp-4], 3
jmp .L_0451
.L_0462:
.L_0461:
push 12
push offset Lt_0463
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0465
mov dword ptr [ebp-4], 4
jmp .L_0451
.L_0465:
.L_0464:
jmp .L_0452
.L_0466:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0469
mov dword ptr [ebp-4], 5
jmp .L_0451
.L_0469:
.L_0468:
jmp .L_0452
.L_046A:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_046D
mov dword ptr [ebp-4], 6
jmp .L_0451
.L_046D:
.L_046C:
jmp .L_0452
.L_046E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0471
mov dword ptr [ebp-4], 7
jmp .L_0451
.L_0471:
.L_0470:
push 4
push offset Lt_0472
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0474
mov dword ptr [ebp-4], 8
jmp .L_0451
.L_0474:
.L_0473:
push 6
push offset Lt_0475
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0477
mov dword ptr [ebp-4], 9
jmp .L_0451
.L_0477:
.L_0476:
jmp .L_0452
.L_0478:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_047B
mov dword ptr [ebp-4], 10
jmp .L_0451
.L_047B:
.L_047A:
push 3
push offset Lt_047C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_047E
mov dword ptr [ebp-4], 19
jmp .L_0451
.L_047E:
.L_047D:
push 7
push offset Lt_047F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0481
mov dword ptr [ebp-4], 11
jmp .L_0451
.L_0481:
.L_0480:
push 8
push offset Lt_0482
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0484
mov dword ptr [ebp-4], 12
jmp .L_0451
.L_0484:
.L_0483:
push 7
push offset Lt_0485
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0487
mov dword ptr [ebp-4], 13
jmp .L_0451
.L_0487:
.L_0486:
push 11
push offset Lt_0488
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048A
mov dword ptr [ebp-4], 14
jmp .L_0451
.L_048A:
.L_0489:
push 10
push offset Lt_048B
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048D
mov dword ptr [ebp-4], 15
jmp .L_0451
.L_048D:
.L_048C:
push 9
push offset Lt_048E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0490
mov dword ptr [ebp-4], 16
jmp .L_0451
.L_0490:
.L_048F:
push 8
push offset Lt_0491
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0493
mov dword ptr [ebp-4], 17
jmp .L_0451
.L_0493:
.L_0492:
push 6
push offset Lt_0494
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0496
mov dword ptr [ebp-4], 18
jmp .L_0451
.L_0496:
.L_0495:
push 4
push offset Lt_0497
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0499
mov dword ptr [ebp-4], 20
jmp .L_0451
.L_0499:
.L_0498:
push 7
push offset Lt_049A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_049C
mov dword ptr [ebp-4], 21
jmp .L_0451
.L_049C:
.L_049B:
jmp .L_0452
.L_049D:
push 6
push offset Lt_049F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A1
mov dword ptr [ebp-4], 22
jmp .L_0451
.L_04A1:
.L_04A0:
push 10
push offset Lt_04A2
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A4
mov dword ptr [ebp-4], 23
jmp .L_0451
.L_04A4:
.L_04A3:
push 7
push offset Lt_04A5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A7
mov dword ptr [ebp-4], 24
jmp .L_0451
.L_04A7:
.L_04A6:
push 4
push offset Lt_04A8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AA
mov dword ptr [ebp-4], 25
jmp .L_0451
.L_04AA:
.L_04A9:
jmp .L_0452
.L_04AB:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04AE
mov dword ptr [ebp-4], 26
jmp .L_0451
.L_04AE:
.L_04AD:
push 4
push offset Lt_04AF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B1
mov dword ptr [ebp-4], 27
jmp .L_0451
.L_04B1:
.L_04B0:
jmp .L_0452
.L_04B2:
push 5
push offset Lt_04B4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B6
mov dword ptr [ebp-4], 28
jmp .L_0451
.L_04B6:
.L_04B5:
jmp .L_0452
.L_04B7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04BA
mov dword ptr [ebp-4], 29
jmp .L_0451
.L_04BA:
.L_04B9:
push 8
push offset Lt_04BB
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04BD
mov dword ptr [ebp-4], 30
jmp .L_0451
.L_04BD:
.L_04BC:
jmp .L_0452
.L_04BE:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04C1
mov dword ptr [ebp-4], 31
jmp .L_0451
.L_04C1:
.L_04C0:
push 5
push offset Lt_04C2
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C4
mov dword ptr [ebp-4], 32
jmp .L_0451
.L_04C4:
.L_04C3:
push 4
push offset Lt_0051
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C6
mov dword ptr [ebp-4], 33
jmp .L_0451
.L_04C6:
.L_04C5:
jmp .L_0452
.L_04C7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04CA
mov dword ptr [ebp-4], 34
jmp .L_0451
.L_04CA:
.L_04C9:
push 4
push offset Lt_04CB
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CD
mov dword ptr [ebp-4], 35
jmp .L_0451
.L_04CD:
.L_04CC:
push 7
push offset Lt_04CE
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D0
mov dword ptr [ebp-4], 36
jmp .L_0451
.L_04D0:
.L_04CF:
push 3
push offset Lt_04D1
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D3
mov dword ptr [ebp-4], 37
jmp .L_0451
.L_04D3:
.L_04D2:
jmp .L_0452
.L_04D4:
push 10
push offset Lt_04D6
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D8
mov dword ptr [ebp-4], 39
jmp .L_0451
.L_04D8:
.L_04D7:
push 10
push offset Lt_04D9
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DB
mov dword ptr [ebp-4], 38
jmp .L_0451
.L_04DB:
.L_04DA:
push 6
push offset Lt_04DC
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DE
mov dword ptr [ebp-4], 40
jmp .L_0451
.L_04DE:
.L_04DD:
push 10
push offset Lt_04DF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E1
mov dword ptr [ebp-4], 41
jmp .L_0451
.L_04E1:
.L_04E0:
push 8
push offset Lt_04E2
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04E4
mov dword ptr [ebp-4], 42
jmp .L_0451
.L_04E4:
.L_04E3:
jmp .L_0452
.L_04E5:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04E8
mov dword ptr [ebp-4], 43
jmp .L_0451
.L_04E8:
.L_04E7:
jmp .L_0452
.L_04E9:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_04EC
mov dword ptr [ebp-4], 44
jmp .L_0451
.L_04EC:
.L_04EB:
jmp .L_0452
.L_04ED:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04F0
mov dword ptr [ebp-4], 45
jmp .L_0451
.L_04F0:
.L_04EF:
push 4
push offset Lt_04F1
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F3
mov dword ptr [ebp-4], 46
jmp .L_0451
.L_04F3:
.L_04F2:
push 3
push offset Lt_04F4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F6
mov dword ptr [ebp-4], 47
jmp .L_0451
.L_04F6:
.L_04F5:
push 7
push offset Lt_04F7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F9
mov dword ptr [ebp-4], 48
jmp .L_0451
.L_04F9:
.L_04F8:
push 6
push offset Lt_04FA
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FC
mov dword ptr [ebp-4], 49
jmp .L_0451
.L_04FC:
.L_04FB:
push 8
push offset Lt_04FD
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FF
mov dword ptr [ebp-4], 50
jmp .L_0451
.L_04FF:
.L_04FE:
jmp .L_0452
.L_0500:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0503
mov dword ptr [ebp-4], 51
jmp .L_0451
.L_0503:
.L_0502:
push 3
push offset Lt_0504
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0506
mov dword ptr [ebp-4], 53
jmp .L_0451
.L_0506:
.L_0505:
jmp .L_0452
.L_0507:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_050A
mov dword ptr [ebp-4], 52
jmp .L_0451
.L_050A:
.L_0509:
push 3
push offset Lt_050B
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_050D
mov dword ptr [ebp-4], 54
jmp .L_0451
.L_050D:
.L_050C:
jmp .L_0452
.L_050E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0511
mov dword ptr [ebp-4], 55
jmp .L_0451
.L_0511:
.L_0510:
push 13
push offset Lt_0512
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0514
mov dword ptr [ebp-4], 56
jmp .L_0451
.L_0514:
.L_0513:
push 7
push offset Lt_0515
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0517
mov dword ptr [ebp-4], 57
jmp .L_0451
.L_0517:
.L_0516:
push 6
push offset Lt_0518
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_051A
mov dword ptr [ebp-4], 58
jmp .L_0451
.L_051A:
.L_0519:
jmp .L_0452
.L_051B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_051E
mov dword ptr [ebp-4], 59
jmp .L_0451
.L_051E:
.L_051D:
push 7
push offset Lt_03C8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0520
mov dword ptr [ebp-4], 60
jmp .L_0451
.L_0520:
.L_051F:
push 6
push offset Lt_0521
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0523
mov dword ptr [ebp-4], 61
jmp .L_0451
.L_0523:
.L_0522:
jmp .L_0452
.L_0524:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0527
mov dword ptr [ebp-4], 62
jmp .L_0451
.L_0527:
.L_0526:
push 4
push offset Lt_0528
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_052A
mov dword ptr [ebp-4], 63
jmp .L_0451
.L_052A:
.L_0529:
push 8
push offset Lt_052B
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_052D
mov dword ptr [ebp-4], 64
jmp .L_0451
.L_052D:
.L_052C:
jmp .L_0452
.L_052E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0531
mov dword ptr [ebp-4], 65
jmp .L_0451
.L_0531:
.L_0530:
jmp .L_0452
.L_0532:
push 3
push offset Lt_0534
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0536
mov dword ptr [ebp-4], 66
jmp .L_0451
.L_0536:
.L_0535:
push 3
push offset Lt_0537
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0539
mov dword ptr [ebp-4], 68
jmp .L_0451
.L_0539:
.L_0538:
push 3
push offset Lt_053A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_053C
mov dword ptr [ebp-4], 67
jmp .L_0451
.L_053C:
.L_053B:
jmp .L_0452
.L_053D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_053F
mov dword ptr [ebp-4], 69
jmp .L_0451
.L_053F:
.L_053E:
jmp .L_0452
.L_0540:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0543
mov dword ptr [ebp-4], 70
jmp .L_0451
.L_0543:
.L_0542:
jmp .L_0452
.L_0544:
push 9
push offset Lt_0545
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0547
mov dword ptr [ebp-4], 64
jmp .L_0451
.L_0547:
.L_0546:
push 6
push offset Lt_0548
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_054A
mov dword ptr [ebp-4], 28
jmp .L_0451
.L_054A:
.L_0549:
jmp .L_0452
.L_0453:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_0452
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_054B+eax*4-180]
.L_054B:
.int .L_0544
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_046A
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_04E9
.int .L_0452
.int .L_0452
.int .L_0507
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0532
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0452
.int .L_0455
.int .L_045F
.int .L_0466
.int .L_046E
.int .L_0478
.int .L_049D
.int .L_04AB
.int .L_04B2
.int .L_04B7
.int .L_0452
.int .L_0452
.int .L_04BE
.int .L_04C7
.int .L_04D4
.int .L_04E5
.int .L_04ED
.int .L_0452
.int .L_0500
.int .L_050E
.int .L_051B
.int .L_0452
.int .L_0524
.int .L_052E
.int .L_053D
.int .L_0452
.int .L_0540
.L_0452:
mov dword ptr [ebp-4], -1
.L_0451:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSEOPTION, .-PARSEOPTION
.cfi_endproc
.balign 16
HANDLEARG:
.type HANDLEARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_054C:
cmp dword ptr [FBC], 0
jl .L_054F
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0551
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0551:
.L_0550:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [FBC]
call HANDLEOPT
add esp, 16
mov dword ptr [FBC], -1
jmp .L_054D
.L_054F:
.L_054E:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0553
jmp .L_054D
.L_0553:
.L_0552:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_0556
.L_0557:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0559
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0559:
.L_0558:
sub esp, 12
push dword ptr [ebp-8]
call PARSEOPTION
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_055B
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_055B:
.L_055A:
cmp dword ptr [ebp+12], 0
je .L_055D
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_055F
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_055F:
.L_055E:
.L_055D:
.L_055C:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8], 0
je .L_0561
mov ebx, dword ptr [ebp-12]
mov dword ptr [FBC], ebx
jmp .L_0560
.L_0561:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HANDLEOPT
add esp, 16
.L_0560:
cmp dword ptr [ebp+12], 0
je .L_0563
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8+2], 0
je .L_0565
sub esp, 12
push 2
call FBRESTARTBEGINREQUEST
add esp, 16
.L_0565:
.L_0564:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [CMDLINEOPTIONTB+ebx*8+4], 0
je .L_0567
sub esp, 12
push 8
call FBRESTARTBEGINREQUEST
add esp, 16
.L_0567:
.L_0566:
.L_0563:
.L_0562:
jmp .L_0554
.L_0556:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_0568
.L_056A:
cmp dword ptr [Lt_0903], 128
jle .L_056C
sub esp, 12
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_056C:
.L_056B:
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_056E
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_056E:
.L_056D:
inc dword ptr [Lt_0903]
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call PARSEARGSFROMFILE
add esp, 16
dec dword ptr [Lt_0903]
jmp .L_0554
.L_0568:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HGETFILEEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0572
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0571
.L_0573:
sub esp, 12
push dword ptr [ebp+8]
call HADDBAS
add esp, 16
jmp .L_0570
.L_0571:
push 2
push offset Lt_04E6
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0574
.L_0575:
sub esp, 12
push dword ptr [ebp+8]
call FBCADDOBJ
add esp, 16
jmp .L_0570
.L_0574:
push 2
push offset Lt_0456
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0576
.L_0577:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+232]
push eax
call STRLISTAPPEND
add esp, 16
jmp .L_0570
.L_0576:
push 3
push offset Lt_0579
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_057B
.L_057C:
push 4
push offset Lt_057A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0578
.L_057B:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+104]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
jmp .L_0570
.L_0578:
push 4
push offset Lt_057E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_057D
.L_057F:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0581
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0581:
.L_0580:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+136]
push eax
call HSETIOFILE
add esp, 16
jmp .L_0570
.L_057D:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0582:
.L_0570:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_056F:
.L_0554:
.L_054D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HANDLEARG, .-HANDLEARG
.cfi_endproc

.section .data
.balign 4
Lt_0903:
.int 0

.section .text
.balign 16
PARSEARGSFROMFILE:
.type PARSEARGSFROMFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_059A:
call fb_FileFree
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_059D
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_059D:
.L_059C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_059E:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_059F
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-16]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call FBCPARSEARGSFROMSTRING
add esp, 16
jmp .L_059E
.L_059F:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileClose
add esp, 16
test eax, eax
je .L_05A0
push 0
push 0
push offset Lt_0091
push 2712
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05A0:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_059B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSEARGSFROMFILE, .-PARSEARGSFROMFILE
.cfi_endproc
.balign 16
HTARGETNEEDSPIC:
.type HTARGETNEEDSPIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_05A1:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .L_05A4
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_05A6
.L_05A8:
mov dword ptr [ebp-4], -1
jmp .L_05A5
.L_05A6:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05A5
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_05A9+eax*4-8]
.L_05A9:
.int .L_05A8
.int .L_05A5
.int .L_05A5
.int .L_05A8
.int .L_05A8
.int .L_05A8
.int .L_05A8
.int .L_05A5
.int .L_05A8
.L_05A5:
.L_05A4:
.L_05A3:
.L_05A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTARGETNEEDSPIC, .-HTARGETNEEDSPIC
.cfi_endproc
.balign 16
HPARSEARGS:
.type HPARSEARGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_05AA:
mov dword ptr [FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05AD
.L_05B0:
sub esp, 12
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
add esp, 32
sub esp, 4
push 0
push 0
lea ebx, [ebp-12]
push ebx
call HANDLEARG
add esp, 16
.L_05AE:
inc dword ptr [ebp-16]
.L_05AD:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05B0
.L_05AF:
cmp dword ptr [FBC], 0
jl .L_05B2
sub esp, 8
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
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_05B2:
.L_05B1:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05AB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEARGS, .-HPARSEARGS
.cfi_endproc
.balign 16
HCHECKARGS:
.type HCHECKARGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_05B4:
call HCHECKWAITINGOBJFILE
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_05B7
sub esp, 12
push 7
call FBGETOPTION
add esp, 16
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
sub esp, 12
push 6
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05B9
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 284
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05B9:
.L_05B8:
.L_05B7:
.L_05B6:
cmp dword ptr [FBC+24], 0
jl .L_05BB
sub esp, 8
push dword ptr [FBC+24]
push 4
call FBSETOPTION
add esp, 16
.L_05BB:
.L_05BA:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
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
je .L_05BD
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 82
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05BD:
.L_05BC:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05BF
sub esp, 8
push 0
push 2
call FBSETOPTION
add esp, 16
jmp .L_05BE
.L_05BF:
sub esp, 8
push 1
push 2
call FBSETOPTION
add esp, 16
.L_05BE:
cmp dword ptr [FBC+20], 0
jl .L_05C1
sub esp, 8
push dword ptr [FBC+20]
push 2
call FBSETOPTION
add esp, 16
.L_05C1:
.L_05C0:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
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
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
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
je .L_05C3
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 83
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05C3:
.L_05C2:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_05C5
.L_05C7:
jmp .L_05C4
.L_05C8:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05CA
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05CA:
.L_05C9:
jmp .L_05C4
.L_05C5:
cmp dword ptr [ebp-4], 4
ja .L_05C8
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05CB+eax*4]
.L_05CB:
.int .L_05C7
.int .L_05C7
.int .L_05C8
.int .L_05C8
.int .L_05C7
.L_05C4:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_05CD
.L_05CF:
jmp .L_05CC
.L_05D0:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_05D2
sub esp, 12
push 0
push 1
push -1
push dword ptr [FBC+136]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05D2:
.L_05D1:
jmp .L_05CC
.L_05CD:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05D0
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05D3+eax*4-8]
.L_05D3:
.int .L_05CF
.int .L_05D0
.int .L_05D0
.int .L_05CF
.int .L_05CF
.int .L_05CF
.int .L_05CF
.int .L_05CF
.int .L_05CF
.L_05CC:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D5
sub esp, 8
push 1
push 9
call FBSETOPTION
add esp, 16
.L_05D5:
.L_05D4:
cmp dword ptr [FBC+32], 0
jl .L_05D7
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05DB
.L_05DC:
cmp dword ptr [ebp-4], 1
jne .L_05DA
.L_05DB:
jmp .L_05D8
.L_05DA:
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-16]
push 319
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_05DD:
.L_05D8:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
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
je .L_05E0
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 84
call ERRREPORTEX
add esp, 32
.L_05E0:
.L_05DF:
sub esp, 8
push dword ptr [FBC+32]
push 9
call FBSETOPTION
add esp, 16
.L_05D7:
.L_05D6:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_05E2
call HTARGETNEEDSPIC
test eax, eax
je .L_05E4
sub esp, 8
push -1
push 37
call FBSETOPTION
add esp, 16
.L_05E4:
.L_05E3:
.L_05E2:
.L_05E1:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_05E6
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_05E8
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 85
call ERRREPORTEX
add esp, 32
jmp .L_05E7
.L_05E8:
call HTARGETNEEDSPIC
test eax, eax
jne .L_05E9
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 86
call ERRREPORTEX
add esp, 32
.L_05E9:
.L_05E7:
.L_05E6:
.L_05E5:
sub esp, 8
push -1
push 38
call FBSETOPTION
add esp, 16
.L_05B5:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKARGS, .-HCHECKARGS
.cfi_endproc
.balign 16
FBCDETERMINEPREFIX:
.type FBCDETERMINEPREFIX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_05EA:
sub esp, 8
push 261
lea eax, [FBC+1968]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_05ED
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001A
push -1
sub esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
sub esp, 12
call fb_ExePath
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_05F1
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
jmp .L_05EC
.L_05ED:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001A
push -1
sub esp, 4
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
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05EC:
.L_05EB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCDETERMINEPREFIX, .-FBCDETERMINEPREFIX
.cfi_endproc
.balign 16
FBCSETUPCOMPILERPATHS:
.type FBCSETUPCOMPILERPATHS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 168
.L_05F5:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push 10
push offset Lt_05F7
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0051
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_05F9
sub esp, 12
push 0
push -1
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
sub esp, 4
push 4
push offset Lt_05FA
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 32
jmp .L_05F8
.L_05F9:
sub esp, 12
push 0
push -1
sub esp, 8
push 129
lea eax, [FBC+1697]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
sub esp, 4
push 4
push offset Lt_05FA
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 32
.L_05F8:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
sub esp, 4
push 8
push offset Lt_04BB
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2490]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
sub esp, 4
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
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2751]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05F6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCSETUPCOMPILERPATHS, .-FBCSETUPCOMPILERPATHS
.cfi_endproc
.balign 16
FBCPRINTTARGETINFO:
.type FBCPRINTTARGETINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0609:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
call FBGETFBCARCH
push eax
push 3
push offset Lt_060B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_060B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 4
call FBGETBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_060E
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1568]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0610
sub esp, 12
push 0
push 3
push offset Lt_0611
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0612
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0610:
.L_060F:
sub esp, 4
push 2
push 7
push offset Lt_0613
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 2
push 8
push offset Lt_0614
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push 2
call FBGETOPTION
add esp, 4
push eax
call FBGETBACKENDNAME
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_060A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPRINTTARGETINFO, .-FBCPRINTTARGETINFO
.cfi_endproc
.balign 16
FBCDETERMINEMAINNAME:
.type FBCDETERMINEMAINNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0615:
sub esp, 8
push 261
lea eax, [FBC+745]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0618
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_061A
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [FBC+745]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0619
.L_061A:
sub esp, 12
lea ebx, [FBC+200]
push ebx
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_061C
sub esp, 12
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
jmp .L_061B
.L_061C:
sub esp, 12
push 0
push 8
push offset Lt_061D
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
.L_061B:
.L_0619:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 12
push eax
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0618:
.L_0617:
.L_0616:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCDETERMINEMAINNAME, .-FBCDETERMINEMAINNAME
.cfi_endproc
.balign 16
HGETASMNAME:
.type HGETASMNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_061F:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_0622
mov eax, offset Lt_0623
mov dword ptr [ebp-16], eax
jmp .L_0621
.L_0622:
mov eax, offset Lt_02E7
mov dword ptr [ebp-16], eax
.L_0621:
cmp dword ptr [ebp+12], 1
jne .L_0625
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_0628
.L_0629:
mov eax, offset Lt_062A
mov dword ptr [ebp-16], eax
jmp .L_0626
.L_0628:
cmp dword ptr [ebp-44], 2
jne .L_062B
.L_062C:
mov eax, offset Lt_062D
mov dword ptr [ebp-16], eax
.L_062B:
.L_0626:
.L_0625:
.L_0624:
sub esp, 12
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0620:
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
.size HGETASMNAME, .-HGETASMNAME
.cfi_endproc
.balign 16
HCOMPILEBAS:
.type HCOMPILEBAS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 48
push ebx
push esi
.L_062F:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0632
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0634
sub esp, 12
push 0
push -1
sub esp, 8
push 8
push offset Lt_0635
push -1
sub esp, 4
lea eax, [ebp-32]
push eax
call HSTRIPEXT
add esp, 8
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
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 32
.L_0634:
.L_0633:
.L_0632:
.L_0631:
cmp dword ptr [FBC+56], 0
je .L_0638
sub esp, 4
push 2
push 11
push offset Lt_0639
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
push 4
push offset Lt_063A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
lea eax, [ebp-20]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .L_063C
sub esp, 4
push 0
sub esp, 4
push -1
lea eax, [ebp-32]
push eax
push 6
push offset Lt_063D
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_063C:
.L_063B:
cmp dword ptr [ebp+12], 0
je .L_0640
sub esp, 4
push 0
push 14
push offset Lt_0641
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_063F
.L_0640:
cmp dword ptr [ebp+16], 0
je .L_0642
sub esp, 4
push 0
push 23
push offset Lt_0643
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0642:
.L_063F:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.L_0638:
.L_0637:
sub esp, 12
push 12
call FBGETOPTION
add esp, 16
cmp eax, -1
je .L_0645
sub esp, 8
sub esp, 4
push 12
call FBGETOPTION
add esp, 8
push eax
push 10
call FBSETOPTION
add esp, 16
.L_0645:
.L_0644:
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_0647
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
.L_0647:
.L_0646:
.L_0648:
mov eax, dword ptr [FBC+40]
not eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov esi, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_064C
sub esp, 12
lea esi, [ebp-20]
push esi
call FBCADDTEMP
add esp, 16
jmp .L_064B
.L_064C:
cmp dword ptr [ebp+20], 1
jne .L_064D
call FBRESTARTGETCOUNT
test eax, eax
jle .L_064F
sub esp, 12
lea eax, [ebp-20]
push eax
call FBCREMOVETEMP
add esp, 16
.L_064F:
.L_064E:
.L_064D:
.L_064B:
sub esp, 4
push dword ptr [ebp+20]
lea eax, [FBC+1006]
push eax
push dword ptr [ebp+12]
call FBINIT
add esp, 16
cmp dword ptr [ebp+16], 0
je .L_0651
sub esp, 8
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBSETLIBS
add esp, 16
jmp .L_0650
.L_0651:
sub esp, 8
lea eax, [FBC+308]
push eax
lea eax, [FBC+264]
push eax
call FBSETLIBS
add esp, 16
.L_0650:
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
jle .L_0653
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0653:
.L_0652:
call FBSHOULDRESTART
test eax, eax
jne .L_0655
jmp .L_0649
.L_0655:
.L_0654:
sub esp, 12
push 7
call FBRESTARTENDREQUEST
add esp, 16
call FBEND
call FBSHOULDRESTART
test eax, eax
je .L_0657
sub esp, 12
push 12
call FBGETOPTION
add esp, 16
cmp eax, -1
jne .L_0659
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 16
.L_0659:
.L_0658:
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0630
.L_0657:
.L_0656:
.L_064A:
jmp .L_0648
.L_0649:
cmp dword ptr [ebp+16], 0
jne .L_065B
sub esp, 8
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBGETLIBS
add esp, 16
.L_065B:
.L_065A:
call FBEND
cmp dword ptr [ebp+16], 0
je .L_065D
sub esp, 8
push dword ptr [ebp-8]
push 0
call FBSETOPTION
add esp, 16
.L_065D:
.L_065C:
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0630:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEBAS, .-HCOMPILEBAS
.cfi_endproc
.balign 16
HCOMPILEMODULES:
.type HCOMPILEMODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_065E:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0663
.L_0664:
cmp dword ptr [ebp-32], 2
jne .L_0662
.L_0663:
mov dword ptr [ebp-8], -1
jmp .L_0660
.L_0662:
mov eax, dword ptr [FBC+1136]
mov dword ptr [ebp-8], eax
.L_0665:
.L_0660:
cmp dword ptr [ebp-8], 0
je .L_0667
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
.L_0667:
.L_0666:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0669
sub esp, 8
lea eax, [FBC+264]
push eax
lea eax, [FBC+396]
push eax
call STRSETCOPY
add esp, 16
sub esp, 8
lea eax, [FBC+308]
push eax
lea eax, [FBC+440]
push eax
call STRSETCOPY
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_065F
.L_0669:
.L_0668:
mov dword ptr [ebp-28], 0
.L_066A:
cmp dword ptr [ebp-8], 0
je .L_066E
push -1
sub esp, 8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call HSTRIPPATH
add esp, 12
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
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_066E:
.L_066D:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call HCOMPILEBAS
add esp, 16
call FBSHOULDRESTART
test eax, eax
je .L_0671
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_065F
.L_0671:
.L_0670:
sub esp, 12
push dword ptr [ebp-24]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-24], eax
.L_066C:
cmp dword ptr [ebp-24], 0
jne .L_066A
.L_066B:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_065F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEMODULES, .-HCOMPILEMODULES
.cfi_endproc
.balign 16
HPARSEXPM:
.type HPARSEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0672:
sub esp, 12
push 0
push 28
push offset Lt_0674
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 21
push offset Lt_0675
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 20
push offset Lt_0676
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0678
jmp .L_0673
.L_0678:
.L_0677:
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
push offset Lt_0679
push -1
sub esp, 12
push 0
lea eax, [ebp-20]
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_067B
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_067C
push 0
push 0
push offset Lt_0091
push 3292
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_067C:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0673
.L_067B:
.L_067A:
mov dword ptr [ebp-24], 0
.L_067D:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_067E
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 8
sub esp, 12
sub esp, 4
push 1
push offset Lt_0123
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-20]
push eax
push 1
call fb_StrInstr
add esp, 24
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 12
sub esp, 4
push 1
push offset Lt_0123
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-20]
push eax
push 2
call fb_StrInstr
add esp, 24
push eax
lea eax, [ebp-20]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0680
cmp dword ptr [ebp-24], 0
je .L_0682
sub esp, 12
push 0
push 5
push offset Lt_0683
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
.L_0682:
.L_0681:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-20]
push eax
push 3
push offset Lt_0684
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
mov dword ptr [ebp-24], -1
.L_0680:
.L_067F:
jmp .L_067D
.L_067E:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0686
push 0
push 0
push offset Lt_0091
push 3322
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0686:
cmp dword ptr [ebp-24], 0
jne .L_0688
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0673
.L_0688:
.L_0687:
sub esp, 12
push 0
push 5
push offset Lt_0689
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_068A
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 67
push offset Lt_068B
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 74
push offset Lt_068E
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0673:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEXPM, .-HPARSEXPM
.cfi_endproc
.balign 16
HCOMPILEXPM:
.type HCOMPILEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_068F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0692
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0690
.L_0692:
.L_0691:
sub esp, 12
push 0
push -1
lea eax, [FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [FBC+148]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0694
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [FBC+148]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [FBC+136]
push eax
call fb_StrAssign
add esp, 32
.L_0694:
.L_0693:
sub esp, 12
push 0
push 5
push offset Lt_0695
push -1
lea eax, [FBC+136]
push eax
call fb_StrConcatByref
add esp, 32
cmp dword ptr [FBC+56], 0
je .L_0697
sub esp, 4
push 2
push 13
push offset Lt_0698
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
lea eax, [FBC+136]
push eax
push -1
sub esp, 4
push 5
push offset Lt_063A
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_0697:
.L_0696:
sub esp, 8
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call HPARSEXPM
add esp, 16
test eax, eax
jne .L_069C
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0690
.L_069C:
.L_069B:
call fb_FileFree
mov dword ptr [ebp-32], eax
sub esp, 8
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [FBC+136]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_069E
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0690
.L_069E:
.L_069D:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
sub esp, 4
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-32]
call fb_FileClose
add esp, 16
test eax, eax
je .L_06A0
push 0
push 0
push offset Lt_0091
push 3378
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06A0:
cmp dword ptr [FBC+40], 0
jne .L_06A2
sub esp, 12
lea eax, [FBC+136]
push eax
call FBCADDTEMP
add esp, 16
.L_06A2:
.L_06A1:
push -1
push 0
push 0
lea eax, [FBC+136]
push eax
call HCOMPILEBAS
add esp, 16
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0690:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEXPM, .-HCOMPILEXPM
.cfi_endproc
.balign 16
HCOMPILESTAGE2MODULE:
.type HCOMPILESTAGE2MODULE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_06A3:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [FBC+48]
not eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06A6
sub esp, 12
lea eax, [ebp-28]
push eax
call FBCADDTEMP
add esp, 16
.L_06A6:
.L_06A5:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06A9
.L_06AA:
mov byte ptr [ebp-36], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06AD
.L_06AE:
sub esp, 12
push 0
push 6
push offset Lt_06AF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06AB
.L_06AD:
cmp dword ptr [ebp-40], 1
jne .L_06B0
.L_06B1:
sub esp, 12
push 0
push 6
push offset Lt_06B2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov byte ptr [ebp-36], 1
jmp .L_06AB
.L_06B0:
cmp dword ptr [ebp-40], 4
jne .L_06B3
.L_06B4:
sub esp, 12
push 0
push 6
push offset Lt_06AF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06AB
.L_06B3:
cmp dword ptr [ebp-40], 5
je .L_06B6
.L_06B7:
cmp dword ptr [ebp-40], 6
jne .L_06B5
.L_06B6:
sub esp, 12
push 0
push 6
push offset Lt_06B2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov byte ptr [ebp-36], 1
.L_06B5:
.L_06AB:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06B9
call FBGETCPUFAMILY
cmp eax, 4
je .L_06BA
call FBGETCPUFAMILY
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0916
.L_06BA:
mov dword ptr [ebp-40], -1
.L_0916:
cmp dword ptr [ebp-40], 0
jne .L_06BC
call FBGETCPUFAMILY
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0917
.L_06BC:
mov dword ptr [ebp-44], -1
.L_0917:
cmp dword ptr [ebp-44], 0
je .L_06BF
cmp dword ptr [FBC+28], 0
je .L_06C1
sub esp, 12
push 0
push 14
push offset Lt_06C2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06C0
.L_06C1:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push 0
call FBGETGCCARCH
push eax
push 7
push offset Lt_06C3
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_06C0:
jmp .L_06BE
.L_06BF:
cmp dword ptr [FBC+28], 0
je .L_06C8
sub esp, 12
push 0
push 15
push offset Lt_06C9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06C7
.L_06C8:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push 0
call FBGETGCCARCH
push eax
push 8
push offset Lt_06CA
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_06C7:
.L_06BE:
.L_06B9:
.L_06B8:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_06CF
sub esp, 12
push 0
push 7
push offset Lt_06D0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06CF:
.L_06CE:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06D2
sub esp, 12
push 0
push 30
push offset Lt_06D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_06D4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06D1
.L_06D2:
sub esp, 12
push 0
push 90
push offset Lt_06D7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 26
push offset Lt_06D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06D1:
sub esp, 12
push 0
push 11
push offset Lt_06D9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 39
push offset Lt_06DA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_06DB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 22
push offset Lt_06DC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-40], eax
jmp .L_06DE
.L_06E0:
sub esp, 12
push 0
push 12
push offset Lt_06E1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06DD
.L_06DE:
cmp dword ptr [ebp-40], 0
ja .L_06DD
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_06E2+eax*4]
.L_06E2:
.int .L_06E0
.L_06DD:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06E4
sub esp, 12
push 0
push 17
push offset Lt_06E5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06E4:
.L_06E3:
sub esp, 12
push 0
push 17
push offset Lt_06E6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_06E7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 49
push offset Lt_06E8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 21
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_06EA
sub esp, 12
push 0
push 17
push offset Lt_06EB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06E9
.L_06EA:
sub esp, 12
push 0
push 20
push offset Lt_06EC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06E9:
sub esp, 12
push 0
push 13
push offset Lt_06ED
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
je .L_06EF
sub esp, 12
push 0
push 4
push offset Lt_06F0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06EF:
.L_06EE:
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_06F2
sub esp, 12
push 0
push 21
push offset Lt_06F3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06F2:
.L_06F1:
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_06F7
.L_06F8:
cmp dword ptr [ebp-40], 1
jne .L_06F6
.L_06F7:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_06FA
sub esp, 12
push 0
push 13
push offset Lt_06FB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06FA:
.L_06F9:
.L_06F6:
.L_06F4:
jmp .L_06A7
.L_06A9:
cmp dword ptr [ebp-32], 2
jne .L_06FC
.L_06FD:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0700
.L_0701:
sub esp, 12
push 0
push 12
push offset Lt_0702
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_0700:
cmp dword ptr [ebp-36], 1
jne .L_0703
.L_0704:
sub esp, 12
push 0
push 15
push offset Lt_0705
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_0703:
cmp dword ptr [ebp-36], 2
jne .L_0706
.L_0707:
sub esp, 12
push 0
push 12
push offset Lt_0708
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_0706:
cmp dword ptr [ebp-36], 3
jne .L_0709
.L_070A:
sub esp, 12
push 0
push 16
push offset Lt_070B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_0709:
cmp dword ptr [ebp-36], 4
jne .L_070C
.L_070D:
sub esp, 12
push 0
push 15
push offset Lt_070E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_070C:
cmp dword ptr [ebp-36], 5
jne .L_070F
.L_0710:
sub esp, 12
push 0
push 17
push offset Lt_0711
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06FE
.L_070F:
cmp dword ptr [ebp-36], 6
jne .L_0712
.L_0713:
sub esp, 12
push 0
push 19
push offset Lt_0714
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0712:
.L_06FE:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0716
sub esp, 12
push 0
push 23
push offset Lt_0717
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0716:
.L_0715:
sub esp, 12
push 0
push 3
push offset Lt_06DB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_071B
.L_071C:
cmp dword ptr [ebp-36], 1
jne .L_071A
.L_071B:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_071E
sub esp, 12
push 0
push 24
push offset Lt_071F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_071E:
.L_071D:
.L_071A:
.L_0718:
.L_06FC:
.L_06A7:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0720
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0721
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_0724
.L_0725:
mov dword ptr [ebp-36], 3
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0727
mov dword ptr [ebp-36], 14
.L_0727:
.L_0726:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset Lt_0728
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0722
.L_0724:
cmp dword ptr [ebp-32], 2
jne .L_0729
.L_072A:
sub esp, 4
lea eax, [ebp-16]
push eax
push 4
push offset Lt_072B
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
.L_0729:
.L_0722:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_06A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILESTAGE2MODULE, .-HCOMPILESTAGE2MODULE
.cfi_endproc
.balign 16
HCOMPILESTAGE2MODULES:
.type HCOMPILESTAGE2MODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_072C:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_072E:
cmp dword ptr [ebp-4], 0
je .L_072F
sub esp, 12
push dword ptr [ebp-4]
call HCOMPILESTAGE2MODULE
add esp, 16
test eax, eax
jne .L_0731
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0731:
.L_0730:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_072E
.L_072F:
.L_072D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILESTAGE2MODULES, .-HCOMPILESTAGE2MODULES
.cfi_endproc
.balign 16
HASSEMBLEMODULE:
.type HASSEMBLEMODULE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_0732:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0736
.L_0737:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0739
sub esp, 12
push 0
push 12
push offset Lt_0164
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0738
.L_0739:
sub esp, 12
push 0
push 6
push offset Lt_073A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0738:
jmp .L_0734
.L_0736:
cmp dword ptr [ebp-60], 1
jne .L_073B
.L_073C:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_073E
sub esp, 12
push 0
push 14
push offset Lt_0167
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_073D
.L_073E:
sub esp, 12
push 0
push 6
push offset Lt_073F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_073D:
.L_073B:
.L_0734:
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_0741
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0743
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_0745
sub esp, 12
push 0
push 24
push offset Lt_0746
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0745:
.L_0744:
.L_0743:
.L_0742:
.L_0741:
.L_0740:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0748
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0733
.L_0748:
.L_0747:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0720
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset Lt_0721
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-56], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_074D
mov dword ptr [ebp-56], 11
.L_074D:
.L_074C:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset Lt_074E
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0750
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0733
.L_0750:
.L_074F:
cmp dword ptr [FBC+52], 0
jne .L_0752
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.L_0752:
.L_0751:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0733:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEMODULE, .-HASSEMBLEMODULE
.cfi_endproc
.balign 16
HASSEMBLEMODULES:
.type HASSEMBLEMODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0753:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0755:
cmp dword ptr [ebp-4], 0
je .L_0756
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .L_0758
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0758:
.L_0757:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0755
.L_0756:
.L_0754:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEMODULES, .-HASSEMBLEMODULES
.cfi_endproc
.balign 16
HASSEMBLERC:
.type HASSEMBLERC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
mov dword ptr [ebp-4], 0
.L_0759:
sub esp, 12
push 0
push 37
push offset Lt_075B
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset Lt_0138
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset Lt_0138
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 8
push offset Lt_0762
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [FBC+52], 0
jne .L_0764
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.L_0764:
.L_0763:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_075A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLERC, .-HASSEMBLERC
.cfi_endproc
.balign 16
HASSEMBLERCS:
.type HASSEMBLERCS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0765:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0767:
cmp dword ptr [ebp-4], 0
je .L_0768
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLERC
add esp, 16
test eax, eax
jne .L_076A
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_076A:
.L_0769:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0767
.L_0768:
.L_0766:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLERCS, .-HASSEMBLERCS
.cfi_endproc
.balign 16
HASSEMBLEXPM:
.type HASSEMBLEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_076B:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_076E
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0770
sub esp, 12
lea eax, [FBC+136]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.L_0770:
.L_076F:
sub esp, 12
lea eax, [FBC+136]
push eax
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .L_0772
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0772:
.L_0771:
.L_076E:
.L_076D:
.L_076C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEXPM, .-HASSEMBLEXPM
.cfi_endproc
.balign 16
HCOMPILEFBCTINF:
.type HCOMPILEFBCTINF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0773:
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILEC1Ev
add esp, 16
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push 16
push offset Lt_001D
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_001C
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [FBC+56], 0
je .L_0776
sub esp, 4
push 2
push 10
push offset Lt_0777
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-24]
push eax
push 0
call fb_PrintString
add esp, 16
.L_0776:
.L_0775:
call fb_FileFree
mov dword ptr [ebp-40], eax
sub esp, 8
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0779
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
jmp .L_0774
.L_0779:
.L_0778:
sub esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 16
test eax, eax
je .L_077A
push 0
push 0
push offset Lt_0091
push 3788
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_077A:
cmp dword ptr [FBC+40], 0
jne .L_077C
sub esp, 12
lea eax, [ebp-24]
push eax
call FBCADDTEMP
add esp, 16
.L_077C:
.L_077B:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call HCOMPILEBAS
add esp, 16
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .L_077E
sub esp, 12
lea eax, [ebp-24]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.L_077E:
.L_077D:
sub esp, 12
lea eax, [ebp-24]
push eax
call HASSEMBLEMODULE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
.L_0774:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEFBCTINF, .-HCOMPILEFBCTINF
.cfi_endproc
.balign 16
HARCHIVEFILES:
.type HARCHIVEFILES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_077F:
call HSETOUTNAME
sub esp, 12
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
test eax, eax
je .L_0782
.L_0782:
.L_0781:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0299
push -1
sub esp, 4
push 261
lea eax, [FBC+484]
push eax
push 7
push offset Lt_0784
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_0788
call HCOMPILEFBCTINF
test eax, eax
je .L_078A
sub esp, 12
push 0
push 15
push offset Lt_078D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_078A:
.L_0789:
sub esp, 12
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
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_0788:
.L_0787:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-44], eax
.L_078F:
cmp dword ptr [ebp-44], 0
je .L_0790
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_0720
push -1
sub esp, 4
push -1
push dword ptr [ebp-44]
push 2
push offset Lt_0123
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
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
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-44]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_078F
.L_0790:
mov dword ptr [ebp-48], 1
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0795
mov dword ptr [ebp-48], 12
.L_0795:
.L_0794:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-48]
push offset Lt_0796
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0780:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HARCHIVEFILES, .-HARCHIVEFILES
.cfi_endproc
.balign 16
HSETDEFAULTLIBPATHS:
.type HSETDEFAULTLIBPATHS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0797:
sub esp, 12
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
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
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
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_079C
sub esp, 12
push offset Lt_079D
call FBCADDLIBPATHFOR
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_07A0
.L_07A1:
sub esp, 12
push offset Lt_07A2
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_079E
.L_07A0:
cmp dword ptr [ebp-28], 3
jne .L_07A3
.L_07A4:
sub esp, 12
push offset Lt_07A5
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_079E
.L_07A3:
sub esp, 12
push offset Lt_07A7
call FBCADDLIBPATHFOR
add esp, 16
.L_07A6:
.L_079E:
.L_079C:
.L_079B:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_07AA
.L_07AB:
sub esp, 12
push offset Lt_07AC
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_07A8
.L_07AA:
cmp dword ptr [ebp-28], 0
jne .L_07AD
.L_07AE:
sub esp, 12
push offset Lt_07AF
call FBCADDLIBPATHFOR
add esp, 16
.L_07AD:
.L_07A8:
.L_0798:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETDEFAULTLIBPATHS, .-HSETDEFAULTLIBPATHS
.cfi_endproc
.balign 16
FBCADDDEFLIB:
.type FBCADDDEFLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_07B0:
sub esp, 4
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_07B1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDDEFLIB, .-FBCADDDEFLIB
.cfi_endproc
.balign 16
HGETFBLIBNAMESUFFIX:
.type HGETFBLIBNAMESUFFIX, @function
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
.L_07B3:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 35
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07B6
sub esp, 12
push 0
push 3
push offset Lt_04D1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_07B6:
.L_07B5:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07B8
sub esp, 12
push 0
push 4
push offset Lt_04F1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_07B8:
.L_07B7:
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
.L_07B4:
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
.size HGETFBLIBNAMESUFFIX, .-HGETFBLIBNAMESUFFIX
.cfi_endproc
.balign 16
HADDDEFAULTLIBS:
.type HADDDEFAULTLIBS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_07B9:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07BC
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 5
push offset Lt_0446
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07BB
.L_07BC:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
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
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_07BB:
sub esp, 12
push 36
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07C2
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 6
push offset Lt_049F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_07C6
.L_07C8:
sub esp, 12
push offset Lt_07C9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CA
call FBCADDDEFLIB
add esp, 16
jmp .L_07C5
.L_07CB:
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 15
push offset Lt_07CC
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_07CE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D1
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D2
call FBCADDDEFLIB
add esp, 16
jmp .L_07C5
.L_07C6:
cmp dword ptr [ebp-28], 10
ja .L_07C5
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_07D3+eax*4]
.L_07D3:
.int .L_07C8
.int .L_07C8
.int .L_07CB
.int .L_07C5
.int .L_07C5
.int .L_07CB
.int .L_07CB
.int .L_07CB
.int .L_07CB
.int .L_07CB
.int .L_07CB
.L_07C5:
.L_07C2:
.L_07C1:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_07D5
.L_07D7:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_02F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07DB
sub esp, 12
push offset Lt_07DC
call FBCADDDEFLIB
add esp, 16
.L_07DB:
.L_07DA:
jmp .L_07D4
.L_07DD:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07E1:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 35
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07E3
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E4
call FBCADDDEFLIB
add esp, 16
.L_07E3:
.L_07E2:
jmp .L_07D4
.L_07E5:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07E6:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07E7:
sub esp, 8
push -1
push offset Lt_07E8
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07E9
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07EB
sub esp, 12
push offset Lt_07EC
call FBCADDDEFLIB
add esp, 16
jmp .L_07EA
.L_07EB:
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
.L_07EA:
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07ED
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_07EE
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07EF
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07F1
sub esp, 12
push offset Lt_07F2
call FBCADDDEFLIB
add esp, 16
.L_07F1:
.L_07F0:
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07F3:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07F4:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E0
call FBCADDDEFLIB
add esp, 16
jmp .L_07D4
.L_07F5:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F6
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F7
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F9
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_07EE
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07FA
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07FC
sub esp, 12
push offset Lt_07F2
call FBCADDDEFLIB
add esp, 16
.L_07FC:
.L_07FB:
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07FE
sub esp, 12
push offset Lt_07DC
call FBCADDDEFLIB
add esp, 16
.L_07FE:
.L_07FD:
jmp .L_07D4
.L_07FF:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_049F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0800
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0801
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0467
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0802
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0803
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0805
sub esp, 12
push offset Lt_07DC
call FBCADDDEFLIB
add esp, 16
.L_0805:
.L_0804:
jmp .L_07D4
.L_07D5:
cmp dword ptr [ebp-4], 10
ja .L_07D4
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0806+eax*4]
.L_0806:
.int .L_07F5
.int .L_07D7
.int .L_07E7
.int .L_07E1
.int .L_07FF
.int .L_07E5
.int .L_07E6
.int .L_07E6
.int .L_07F4
.int .L_07DD
.int .L_07F3
.L_07D4:
.L_07BA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDDEFAULTLIBS, .-HADDDEFAULTLIBS
.cfi_endproc
.balign 16
HEXCLUDELIBSFROMLINK:
.type HEXCLUDELIBSFROMLINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0807:
sub esp, 12
lea eax, [FBC+352]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0809:
cmp dword ptr [ebp-4], 0
je .L_080A
sub esp, 8
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [FBC+396]
push ebx
call STRSETDEL
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0809
.L_080A:
.L_0808:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEXCLUDELIBSFROMLINK, .-HEXCLUDELIBSFROMLINK
.cfi_endproc
.balign 16
HPRINTOPTIONS:
.type HPRINTOPTIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_080B:
sub esp, 4
push 1
push 34
push offset Lt_080D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 12
push offset Lt_080E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_080F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 59
push offset Lt_0810
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 35
push offset Lt_0811
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 8
push offset Lt_0812
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_0813
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0814
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0815
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0816
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_0817
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0819
sub esp, 4
push 1
push 64
push offset Lt_081A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0819:
.L_0818:
sub esp, 4
push 1
push 44
push offset Lt_081B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 46
push offset Lt_081C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_081D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_081E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_081F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_0820
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0822
sub esp, 4
push 1
push 47
push offset Lt_0823
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_0824
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_0825
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0826
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0827
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0828
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 55
push offset Lt_0829
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 68
push offset Lt_082A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0822:
.L_0821:
sub esp, 4
push 1
push 41
push offset Lt_082B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 62
push offset Lt_082C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_082D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_082F
sub esp, 4
push 1
push 80
push offset Lt_0830
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_082F:
.L_082E:
sub esp, 4
push 1
push 61
push offset Lt_0831
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0833
sub esp, 4
push 1
push 65
push offset Lt_0834
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0835
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0833:
.L_0832:
sub esp, 4
push 1
push 75
push offset Lt_0836
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0838
sub esp, 4
push 1
push 58
push offset Lt_0839
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_083A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_083B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_083C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0837
.L_0838:
sub esp, 4
push 1
push 57
push offset Lt_083D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0837:
sub esp, 4
push 1
push 77
push offset Lt_083E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_083F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_0840
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 36
push offset Lt_0841
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 64
push offset Lt_0842
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 42
push offset Lt_0843
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 76
push offset Lt_0844
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_0845
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0846
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_0847
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 68
push offset Lt_0848
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_0849
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_084A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 78
push offset Lt_084B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 71
push offset Lt_084C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 74
push offset Lt_084D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_084E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_084F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 80
push offset Lt_0850
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0851
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0852
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0853
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 51
push offset Lt_0854
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0855
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0857
sub esp, 4
push 1
push 73
push offset Lt_0858
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0857:
.L_0856:
sub esp, 4
push 1
push 44
push offset Lt_0859
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 65
push offset Lt_085A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_085B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_085C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_085D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_085E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 66
push offset Lt_085F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 73
push offset Lt_0860
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0861
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 75
push offset Lt_0862
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0864
sub esp, 4
push 1
push 47
push offset Lt_0865
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0863
.L_0864:
sub esp, 4
push 1
push 47
push offset Lt_0865
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0863:
sub esp, 4
push 1
push 47
push offset Lt_0866
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 29
push offset Lt_0867
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 61
push offset Lt_0868
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 40
push offset Lt_0869
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_086A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_086C
sub esp, 4
push 1
push 38
push offset Lt_086D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_086E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_086F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0870
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0871
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0872
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_0873
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0874
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0875
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 71
push offset Lt_0876
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_086C:
.L_086B:
sub esp, 4
push 1
push 39
push offset Lt_0877
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 72
push offset Lt_0878
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0879
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_087A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_087C
sub esp, 4
push 1
push 56
push offset Lt_087D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_087E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_087F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_0880
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0881
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0882
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 74
push offset Lt_0883
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_087C:
.L_087B:
.L_080C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRINTOPTIONS, .-HPRINTOPTIONS
.cfi_endproc
.balign 16
HPRINTVERSION:
.type HPRINTVERSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
.L_0889:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 1
sub esp, 4
push 5
push offset Lt_0891
push -1
sub esp, 4
push -1
sub esp, 12
sub esp, 4
call FBGETHOSTBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_0611
push -1
sub esp, 4
push -1
call FBGETHOSTID
push eax
push 61
push offset Lt_0890
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
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 55
push offset Lt_0896
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0898
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
.L_0898:
.L_0897:
cmp dword ptr [ebp+8], 0
je .L_089A
call FBCPRINTTARGETINFO
jmp .L_089C
sub esp, 4
push 1
push 14
push offset Lt_089D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_089C:
.L_089B:
.L_089A:
.L_0899:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_088A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRINTVERSION, .-HPRINTVERSION
.cfi_endproc
.balign 16
_GLOBAL__I:
.type _GLOBAL__I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08D8:
sub esp, 12
push offset FBC
call _ZN6FBCCTXC1Ev
add esp, 16
.L_08D9:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GLOBAL__I, .-_GLOBAL__I
.cfi_endproc
.balign 16
_GLOBAL__D:
.type _GLOBAL__D, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08DB:
sub esp, 12
push offset FBC
call _ZN6FBCCTXD1Ev
add esp, 16
.L_08DC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GLOBAL__D, .-_GLOBAL__D
.cfi_endproc

.section .rodata
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

.section .data
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

.section .rodata
.balign 4
Lt_003F:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	FBC,3284

.section .rodata
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
Lt_00F2:	.ascii	": \0"
.balign 4
Lt_00F4:	.ascii	" \0"
.balign 4
Lt_00FC:	.ascii	" failed: '\0"
.balign 4
Lt_00FD:	.ascii	"' terminated with exit code \0"
.balign 4
Lt_0106:	.ascii	".clean.def\0"
.balign 4
Lt_010D:	.ascii	"DATA\0"
.balign 4
Lt_0118:	.ascii	"EXPORTS\0"
.balign 4
Lt_0122:	.ascii	"--def \"\0"
.balign 4
Lt_0123:	.ascii	"\"\0"
.balign 4
Lt_0127:	.ascii	" --dllname \"\0"
.balign 4
Lt_0128:	.ascii	" --output-lib \"\0"
.balign 4
Lt_0129:	.ascii	".dll.a\"\0"
.balign 4
Lt_012F:	.ascii	"creating import library\0"
.balign 4
Lt_0138:	.ascii	" \"\0"
.balign 4
Lt_013D:	.ascii	" --version\0"
.balign 4
Lt_013E:	.ascii	"GNU gold\0"
.balign 4
Lt_014D:	.ascii	"-m i386pe \0"
.balign 4
Lt_0150:	.ascii	"-m i386pep \0"
.balign 4
Lt_0157:	.ascii	"-m elf_i386 \0"
.balign 4
Lt_015A:	.ascii	"-m elf_x86_64 \0"
.balign 4
Lt_015D:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
Lt_0164:	.ascii	"-arch i386 \0"
.balign 4
Lt_0167:	.ascii	"-arch x86_64 \0"
.balign 4
Lt_016A:	.ascii	"-arch armv6 \0"
.balign 4
Lt_016B:	.ascii	"-o \0"
.balign 4
Lt_016C:	.ascii	"\"\0"
.balign 4
Lt_016D:	.ascii	"-o \"\0"
.balign 4
Lt_0170:	.ascii	" -I \"lib\0"
.balign 4
Lt_0172:	.ascii	"_il.a\"\0"
.balign 4
Lt_0173:	.ascii	" -U\0"
.balign 4
Lt_017B:	.ascii	" -lc\0"
.balign 4
Lt_0181:	.ascii	"making DXE\0"
.balign 4
Lt_0188:	.ascii	"console\0"
.balign 4
Lt_0189:	.ascii	"gui\0"
.balign 4
Lt_018C:	.ascii	"windows\0"
.balign 4
Lt_018D:	.ascii	" -subsystem \0"
.balign 4
Lt_0192:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
Lt_0195:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
Lt_0196:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
Lt_019C:	.ascii	" -shared -h\0"
.balign 4
Lt_01A3:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
Lt_01A5:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
Lt_01A7:	.ascii	" --dynamic-linker /lib/64/ld.so.1\0"
.balign 4
Lt_01AD:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
Lt_01B0:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
Lt_01B3:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
Lt_01B6:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
Lt_01B8:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
Lt_01BA:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
Lt_01BE:	.ascii	" --export-dynamic\0"
.balign 4
Lt_01C0:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
Lt_01C2:	.ascii	" -O\0"
.balign 4
Lt_01C9:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
Lt_01CE:	.ascii	" -s \0"
.balign 4
Lt_01CF:	.ascii	" --shell-file\0"
.balign 4
Lt_01D0:	.ascii	"fb_shell.html\0"
.balign 4
Lt_01D1:	.ascii	" --post-js\0"
.balign 4
Lt_01D2:	.ascii	"fb_rtlib.js\0"
.balign 4
Lt_01D5:	.ascii	"termlib_min.js\0"
.balign 4
Lt_01D9:	.ascii	" -T \"\0"
.balign 4
Lt_01DB:	.ascii	"/i386go32.x\"\0"
.balign 4
Lt_01DF:	.ascii	"/fbextra.x\"\0"
.balign 4
Lt_01E4:	.ascii	" --stack \0"
.balign 4
Lt_01E5:	.ascii	",\0"
.balign 4
Lt_01E9:	.ascii	".def\0"
.balign 4
Lt_01EA:	.ascii	" --output-def \"\0"
.balign 4
Lt_01EC:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
Lt_01F0:	.ascii	" -Bstatic\0"
.balign 4
Lt_01F3:	.ascii	" -Map \0"
.balign 4
Lt_01FC:	.ascii	" -s\0"
.balign 4
Lt_01FF:	.ascii	" -L \"\0"
.balign 4
Lt_0200:	.ascii	" -L\"\0"
.balign 4
Lt_020C:	.ascii	"crt0.o\0"
.balign 4
Lt_020F:	.ascii	"gcrt0.o\0"
.balign 4
Lt_0213:	.ascii	"dllcrt2.o\0"
.balign 4
Lt_0214:	.ascii	"crt2.o\0"
.balign 4
Lt_0217:	.ascii	"gcrt2.o\0"
.balign 4
Lt_0218:	.ascii	"crtbegin.o\0"
.balign 4
Lt_0226:	.ascii	"gcrt1.o\0"
.balign 4
Lt_022D:	.ascii	"crt1.o\0"
.balign 4
Lt_0233:	.ascii	"crti.o\0"
.balign 4
Lt_0236:	.ascii	"crtbeginS.o\0"
.balign 4
Lt_023F:	.ascii	"fbrt0pic.o\0"
.balign 4
Lt_0240:	.ascii	"fbrt0.o\0"
.balign 4
Lt_024A:	.ascii	" \"-(\"\0"
.balign 4
Lt_0256:	.ascii	" -l\0"
.balign 4
Lt_025D:	.ascii	" \"-)\"\0"
.balign 4
Lt_025E:	.ascii	" -lfb\0"
.balign 4
Lt_0265:	.ascii	"crtendS.o\0"
.balign 4
Lt_0266:	.ascii	"crtend.o\0"
.balign 4
Lt_0269:	.ascii	"crtn.o\0"
.balign 4
Lt_026E:	.ascii	" -macosx_version_min 10.4\0"
.balign 4
Lt_027F:	.ascii	" --eh-frame-hdr\0"
.balign 4
Lt_0283:	.ascii	"linking\0"
.balign 4
Lt_0298:	.ascii	"-TITLE:\"\0"
.balign 4
Lt_0299:	.ascii	"\" \0"
.balign 4
Lt_029D:	.ascii	"-DUMPINFO:\"\0"
.balign 4
Lt_02A0:	.ascii	".cxbe\"\0"
.balign 4
Lt_02A2:	.ascii	" -OUT:\"\0"
.balign 4
Lt_02A4:	.ascii	".xbe\0"
.balign 4
Lt_02A5:	.ascii	" \"\0"
.balign 4
Lt_02A8:	.ascii	" >nul\0"
.balign 4
Lt_02AB:	.ascii	"cxbe: \0"
.balign 4
Lt_02B2:	.ascii	"cxbe failed: exit code \0"
.balign 4
Lt_02E7:	.ascii	".o\0"

.section .data
.balign 4
GNUOSMAP:
.int Lt_02EC
.int 2
.int Lt_02ED
.int 0
.int Lt_02EE
.int 3
.int Lt_02EF
.int 3
.int Lt_02F0
.int 1
.int Lt_02F1
.int 9
.int Lt_02F2
.int 5
.int Lt_02F3
.int 6
.int Lt_02F4
.int 7
.int Lt_02F5
.int 10
.int Lt_02F6
.int 8
.int Lt_02F7
.int 4

.section .rodata
.balign 4
Lt_02EC:	.ascii	"linux\0"
.balign 4
Lt_02ED:	.ascii	"mingw\0"
.balign 4
Lt_02EE:	.ascii	"djgpp\0"
.balign 4
Lt_02EF:	.ascii	"msdosdjgpp\0"
.balign 4
Lt_02F0:	.ascii	"cygwin\0"
.balign 4
Lt_02F1:	.ascii	"darwin\0"
.balign 4
Lt_02F2:	.ascii	"freebsd\0"
.balign 4
Lt_02F3:	.ascii	"dragonfly\0"
.balign 4
Lt_02F4:	.ascii	"solaris\0"
.balign 4
Lt_02F5:	.ascii	"netbsd\0"
.balign 4
Lt_02F6:	.ascii	"openbsd\0"
.balign 4
Lt_02F7:	.ascii	"xbox\0"

.section .data
.balign 4
GNUARCHMAP:
.int Lt_02F9
.int 0
.int Lt_02FA
.int 1
.int Lt_02FB
.int 2
.int Lt_02FC
.int 3
.int Lt_02FD
.int 3
.int Lt_02FE
.int 13
.int Lt_02FF
.int 13
.int Lt_0300
.int 14
.int Lt_0301
.int 15
.int Lt_0302
.int 15
.int Lt_0303
.int 16
.int Lt_0304
.int 17
.int Lt_0305
.int 17
.int Lt_0306
.int 18
.int Lt_0307
.int 18
.int Lt_0308
.int 19
.int Lt_0309
.int 19

.section .rodata
.balign 4
Lt_02F9:	.ascii	"i386\0"
.balign 4
Lt_02FA:	.ascii	"i486\0"
.balign 4
Lt_02FB:	.ascii	"i586\0"
.balign 4
Lt_02FC:	.ascii	"i686\0"
.balign 4
Lt_02FD:	.ascii	"x86\0"
.balign 4
Lt_02FE:	.ascii	"x86_64\0"
.balign 4
Lt_02FF:	.ascii	"amd64\0"
.balign 4
Lt_0300:	.ascii	"armv6\0"
.balign 4
Lt_0301:	.ascii	"armv7a\0"
.balign 4
Lt_0302:	.ascii	"arm\0"
.balign 4
Lt_0303:	.ascii	"aarch64\0"
.balign 4
Lt_0304:	.ascii	"ppc\0"
.balign 4
Lt_0305:	.ascii	"powerpc\0"
.balign 4
Lt_0306:	.ascii	"ppc64  \0"
.balign 4
Lt_0307:	.ascii	"powerpc64\0"
.balign 4
Lt_0308:	.ascii	"ppc64le  \0"
.balign 4
Lt_0309:	.ascii	"powerpc64le\0"

.section .data
.balign 4
FBOSARCHMAP:
.int Lt_0323
.int 0
.int 3
.int Lt_0324
.int 0
.int 13
.int Lt_02F3
.int 6
.int 13
.int Lt_02F4
.int 7
.int 13
.int Lt_0325
.int 3
.int 3
.int Lt_02F7
.int 4
.int 3
.int Lt_02F0
.int 1
.int 3
.int Lt_02F1
.int 9
.int 3
.int Lt_02F2
.int 5
.int 3
.int Lt_02EC
.int 2
.int 3
.int Lt_02F5
.int 10
.int 3
.int Lt_02F6
.int 8
.int 3

.section .rodata
.balign 4
Lt_0323:	.ascii	"win32\0"
.balign 4
Lt_0324:	.ascii	"win64\0"
.balign 4
Lt_0325:	.ascii	"dos\0"
.balign 4
Lt_032F:	.ascii	"-\0"

.section .data
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

.section .rodata
.balign 4
Lt_033F:	.ascii	"native\0"
.balign 4
Lt_0342:	.ascii	"-arch \0"
.balign 4
Lt_0349:	.ascii	"att\0"
.balign 4
Lt_034C:	.ascii	"intel\0"
.balign 4
Lt_036D:	.ascii	"PRECISE\0"
.balign 4
Lt_0370:	.ascii	"FAST\0"
.balign 4
Lt_0377:	.ascii	"X87\0"
.balign 4
Lt_0378:	.ascii	"FPU\0"
.balign 4
Lt_037C:	.ascii	"SSE\0"
.balign 4
Lt_0384:	.ascii	"gas\0"
.balign 4
Lt_0389:	.ascii	"llvm\0"
.balign 4
Lt_038C:	.ascii	"gas64\0"
.balign 4
Lt_039F:	.ascii	"inf\0"
.balign 4
Lt_03B6:	.ascii	"max\0"
.balign 4
Lt_03C5:	.ascii	"host\0"
.balign 4
Lt_03C8:	.ascii	"target\0"
.balign 4
Lt_03CB:	.ascii	"x\0"
.balign 4
Lt_03CE:	.ascii	"fblibdir\0"
.balign 4
Lt_03D1:	.ascii	"sha-1\0"
.balign 4
Lt_03EE:	.ascii	"NONE\0"
.balign 4
Lt_03EF:	.ascii	"0\0"
.balign 4
Lt_03F5:	.ascii	"2\0"
.balign 4
Lt_0401:	.ascii	"all\0"
.balign 4
Lt_0404:	.ascii	"none\0"
.balign 4
Lt_0407:	.ascii	"param\0"
.balign 4
Lt_040A:	.ascii	"escape\0"
.balign 4
Lt_040D:	.ascii	"next\0"
.balign 4
Lt_0410:	.ascii	"signedness\0"
.balign 4
Lt_0413:	.ascii	"constness\0"
.balign 4
Lt_0416:	.ascii	"funcptr\0"
.balign 4
Lt_0419:	.ascii	"suffix\0"
.balign 4
Lt_041C:	.ascii	"pedantic\0"
.balign 4
Lt_0421:	.ascii	"error\0"
.balign 4
Lt_0424:	.ascii	"upcast\0"
.balign 4
Lt_043A:	.ascii	"gosub-setjmp\0"
.balign 4
Lt_043D:	.ascii	"valist-as-ptr\0"
.balign 4
Lt_0440:	.ascii	"no-thiscall\0"
.balign 4
Lt_0443:	.ascii	"no-fastcall\0"
.balign 4
Lt_0446:	.ascii	"fbrt\0"
.balign 4
Lt_0449:	.ascii	"nocmdline\0"
.balign 4
Lt_044C:	.ascii	"retinflts\0"
.balign 4
Lt_0456:	.ascii	"a\0"
.balign 4
Lt_0459:	.ascii	"arch\0"
.balign 4
Lt_045C:	.ascii	"asm\0"
.balign 4
Lt_0463:	.ascii	"buildprefix\0"
.balign 4
Lt_0467:	.ascii	"c\0"
.balign 4
Lt_0472:	.ascii	"dll\0"
.balign 4
Lt_0475:	.ascii	"dylib\0"
.balign 4
Lt_047C:	.ascii	"ex\0"
.balign 4
Lt_047F:	.ascii	"earray\0"
.balign 4
Lt_0482:	.ascii	"eassert\0"
.balign 4
Lt_0485:	.ascii	"edebug\0"
.balign 4
Lt_0488:	.ascii	"edebuginfo\0"
.balign 4
Lt_048B:	.ascii	"elocation\0"
.balign 4
Lt_048E:	.ascii	"enullptr\0"
.balign 4
Lt_0491:	.ascii	"eunwind\0"
.balign 4
Lt_0494:	.ascii	"entry\0"
.balign 4
Lt_0497:	.ascii	"exx\0"
.balign 4
Lt_049A:	.ascii	"export\0"
.balign 4
Lt_049F:	.ascii	"fbgfx\0"
.balign 4
Lt_04A2:	.ascii	"forcelang\0"
.balign 4
Lt_04A5:	.ascii	"fpmode\0"
.balign 4
Lt_04A8:	.ascii	"fpu\0"
.balign 4
Lt_04AF:	.ascii	"gen\0"
.balign 4
Lt_04B4:	.ascii	"help\0"
.balign 4
Lt_04BB:	.ascii	"include\0"
.balign 4
Lt_04C2:	.ascii	"lang\0"
.balign 4
Lt_04C8:	.ascii	"m\0"
.balign 4
Lt_04CB:	.ascii	"map\0"
.balign 4
Lt_04CE:	.ascii	"maxerr\0"
.balign 4
Lt_04D1:	.ascii	"mt\0"
.balign 4
Lt_04D6:	.ascii	"noerrline\0"
.balign 4
Lt_04D9:	.ascii	"nodeflibs\0"
.balign 4
Lt_04DC:	.ascii	"nolib\0"
.balign 4
Lt_04DF:	.ascii	"noobjinfo\0"
.balign 4
Lt_04E2:	.ascii	"nostrip\0"
.balign 4
Lt_04E6:	.ascii	"o\0"
.balign 4
Lt_04F1:	.ascii	"pic\0"
.balign 4
Lt_04F4:	.ascii	"pp\0"
.balign 4
Lt_04F7:	.ascii	"prefix\0"
.balign 4
Lt_04FA:	.ascii	"print\0"
.balign 4
Lt_04FD:	.ascii	"profile\0"
.balign 4
Lt_0504:	.ascii	"rr\0"
.balign 4
Lt_050B:	.ascii	"RR\0"
.balign 4
Lt_0512:	.ascii	"showincludes\0"
.balign 4
Lt_0515:	.ascii	"static\0"
.balign 4
Lt_0518:	.ascii	"strip\0"
.balign 4
Lt_0521:	.ascii	"title\0"
.balign 4
Lt_0528:	.ascii	"vec\0"
.balign 4
Lt_052B:	.ascii	"version\0"
.balign 4
Lt_0534:	.ascii	"Wa\0"
.balign 4
Lt_0537:	.ascii	"Wl\0"
.balign 4
Lt_053A:	.ascii	"Wc\0"
.balign 4
Lt_0545:	.ascii	"-version\0"
.balign 4
Lt_0548:	.ascii	"-help\0"
.balign 4
Lt_0572:	.ascii	"bas\0"
.balign 4
Lt_0579:	.ascii	"rc\0"
.balign 4
Lt_057A:	.ascii	"res\0"
.balign 4
Lt_057E:	.ascii	"xpm\0"
.balign 4
Lt_05F1:	.ascii	"../\0"
.balign 4
Lt_05F7:	.ascii	"freebasic\0"
.balign 4
Lt_05FA:	.ascii	"bin\0"
.balign 4
Lt_060B:	.ascii	", \0"
.balign 4
Lt_060E:	.ascii	"bit\0"
.balign 4
Lt_0611:	.ascii	" (\0"
.balign 4
Lt_0612:	.ascii	")\0"
.balign 4
Lt_0613:	.ascii	"target:\0"
.balign 4
Lt_0614:	.ascii	"backend:\0"
.balign 4
Lt_061D:	.ascii	"unnamed\0"
.balign 4
Lt_0623:	.ascii	".asm\0"
.balign 4
Lt_062A:	.ascii	".c\0"
.balign 4
Lt_062D:	.ascii	".ll\0"
.balign 4
Lt_0635:	.ascii	".pp.bas\0"
.balign 4
Lt_0639:	.ascii	"compiling: \0"
.balign 4
Lt_063A:	.ascii	" -o \0"
.balign 4
Lt_063D:	.ascii	" -pp \0"
.balign 4
Lt_0641:	.ascii	" (main module)\0"
.balign 4
Lt_0643:	.ascii	" (FB compile-time info)\0"
.balign 4
Lt_0674:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
Lt_0675:	.ascii	"fb_program_icon_data\0"
.balign 4
Lt_0676:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
Lt_0679:	.ascii	"/* XPM */\0"
.balign 4
Lt_0683:	.ascii	", _\n\0"
.balign 4
Lt_0684:	.ascii	"\t@\0"
.balign 4
Lt_0689:	.ascii	" _ \n\0"
.balign 4
Lt_068A:	.ascii	"}\n\n\0"
.balign 4
Lt_068B:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
Lt_068E:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
Lt_0695:	.ascii	".bas\0"
.balign 4
Lt_0698:	.ascii	"parsing xpm: \0"
.balign 4
Lt_06AF:	.ascii	"-m32 \0"
.balign 4
Lt_06B2:	.ascii	"-m64 \0"
.balign 4
Lt_06C2:	.ascii	"-mcpu=native \0"
.balign 4
Lt_06C3:	.ascii	"-mcpu=\0"
.balign 4
Lt_06C9:	.ascii	"-march=native \0"
.balign 4
Lt_06CA:	.ascii	"-march=\0"
.balign 4
Lt_06D0:	.ascii	"-fPIC \0"
.balign 4
Lt_06D3:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
Lt_06D4:	.ascii	"-Wno-unused \0"
.balign 4
Lt_06D7:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
Lt_06D8:	.ascii	"-Wno-warn-absolute-paths \0"
.balign 4
Lt_06D9:	.ascii	"-Wno-main \0"
.balign 4
Lt_06DA:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
Lt_06DB:	.ascii	"-O\0"
.balign 4
Lt_06DC:	.ascii	"-fno-strict-aliasing \0"
.balign 4
Lt_06E1:	.ascii	"-fno-ident \0"
.balign 4
Lt_06E5:	.ascii	"-frounding-math \0"
.balign 4
Lt_06E6:	.ascii	"-fno-math-errno \0"
.balign 4
Lt_06E7:	.ascii	"-fwrapv \0"
.balign 4
Lt_06E8:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
Lt_06EB:	.ascii	"-funwind-tables \0"
.balign 4
Lt_06EC:	.ascii	"-fno-unwind-tables \0"
.balign 4
Lt_06ED:	.ascii	"-Wno-format \0"
.balign 4
Lt_06F0:	.ascii	"-g \0"
.balign 4
Lt_06F3:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
Lt_06FB:	.ascii	"-masm=intel \0"
.balign 4
Lt_0702:	.ascii	"-march=x86 \0"
.balign 4
Lt_0705:	.ascii	"-march=x86-64 \0"
.balign 4
Lt_0708:	.ascii	"-march=arm \0"
.balign 4
Lt_070B:	.ascii	"-march=armv8-a \0"
.balign 4
Lt_070E:	.ascii	"-mcpu=powerpc \0"
.balign 4
Lt_0711:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
Lt_0714:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
Lt_0717:	.ascii	"-relocation-model=pic \0"
.balign 4
Lt_071F:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
Lt_0720:	.ascii	"\" \0"
.balign 4
Lt_0721:	.ascii	"-o \"\0"
.balign 4
Lt_0728:	.ascii	"compiling C\0"
.balign 4
Lt_072B:	.ascii	"compiling LLVM IR\0"
.balign 4
Lt_073A:	.ascii	"--32 \0"
.balign 4
Lt_073F:	.ascii	"--64 \0"
.balign 4
Lt_0746:	.ascii	"--strip-local-absolute \0"
.balign 4
Lt_074E:	.ascii	"assembling\0"
.balign 4
Lt_075B:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
Lt_0762:	.ascii	"compiling rc\0"
.balign 4
Lt_0777:	.ascii	"creating: \0"
.balign 4
Lt_0784:	.ascii	"-rsc \"\0"
.balign 4
Lt_078D:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
Lt_0796:	.ascii	"archiving\0"
.balign 4
Lt_079D:	.ascii	"libgcc.a\0"
.balign 4
Lt_07A2:	.ascii	"libc++.so\0"
.balign 4
Lt_07A5:	.ascii	"libstdcx.a\0"
.balign 4
Lt_07A7:	.ascii	"libstdc++.so\0"
.balign 4
Lt_07AC:	.ascii	"libm.a\0"
.balign 4
Lt_07AF:	.ascii	"libmingw32.a\0"
.balign 4
Lt_07C9:	.ascii	"gdi32\0"
.balign 4
Lt_07CA:	.ascii	"winmm\0"
.balign 4
Lt_07CC:	.ascii	"/usr/X11R6/lib\0"
.balign 4
Lt_07CE:	.ascii	"X11\0"
.balign 4
Lt_07CF:	.ascii	"Xext\0"
.balign 4
Lt_07D0:	.ascii	"Xpm\0"
.balign 4
Lt_07D1:	.ascii	"Xrandr\0"
.balign 4
Lt_07D2:	.ascii	"Xrender\0"
.balign 4
Lt_07D8:	.ascii	"kernel32\0"
.balign 4
Lt_07D9:	.ascii	"user32\0"
.balign 4
Lt_07DC:	.ascii	"gmon\0"
.balign 4
Lt_07DE:	.ascii	"System\0"
.balign 4
Lt_07DF:	.ascii	"pthread\0"
.balign 4
Lt_07E0:	.ascii	"ncurses\0"
.balign 4
Lt_07E4:	.ascii	"socket\0"
.balign 4
Lt_07E8:	.ascii	"libtinfo.a\0"
.balign 4
Lt_07E9:	.ascii	"libtinfo.so\0"
.balign 4
Lt_07EC:	.ascii	"tinfo\0"
.balign 4
Lt_07ED:	.ascii	"dl\0"
.balign 4
Lt_07EE:	.ascii	"libgcc_eh.a\0"
.balign 4
Lt_07EF:	.ascii	"libgcc_eh.so\0"
.balign 4
Lt_07F2:	.ascii	"gcc_eh\0"
.balign 4
Lt_07F6:	.ascii	"msvcrt\0"
.balign 4
Lt_07F7:	.ascii	"mingw32\0"
.balign 4
Lt_07F8:	.ascii	"mingwex\0"
.balign 4
Lt_07F9:	.ascii	"moldname\0"
.balign 4
Lt_07FA:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
Lt_0800:	.ascii	"openxdk\0"
.balign 4
Lt_0801:	.ascii	"hal\0"
.balign 4
Lt_0802:	.ascii	"usb\0"
.balign 4
Lt_0803:	.ascii	"xboxkrnl\0"
.balign 4
Lt_080D:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
Lt_080E:	.ascii	"input files:\0"
.balign 4
Lt_080F:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
Lt_0810:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
Lt_0811:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
Lt_0812:	.ascii	"options:\0"
.balign 4
Lt_0813:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
Lt_0814:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
Lt_0815:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
Lt_0816:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
Lt_0817:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
Lt_081A:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
Lt_081B:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
Lt_081C:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
Lt_081D:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
Lt_081E:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
Lt_081F:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
Lt_0820:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
Lt_0823:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
Lt_0824:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
Lt_0825:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
Lt_0826:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
Lt_0827:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
Lt_0828:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
Lt_0829:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
Lt_082A:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
Lt_082B:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
Lt_082C:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
Lt_082D:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
Lt_0830:	.ascii	"  -fbgfx           Link to the appropriate libfbgfx variant (normally automatic)\0"
.balign 4
Lt_0831:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
Lt_0834:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
Lt_0835:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
Lt_0836:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
Lt_0839:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
Lt_083A:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
Lt_083B:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
Lt_083C:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
Lt_083D:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
Lt_083E:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
Lt_083F:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
Lt_0840:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
Lt_0841:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
Lt_0842:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
Lt_0843:	.ascii	"  -lib             Create a static library\0"
.balign 4
Lt_0844:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
Lt_0845:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
Lt_0846:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
Lt_0847:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
Lt_0848:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
Lt_0849:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
Lt_084A:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
Lt_084B:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
Lt_084C:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
Lt_084D:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
Lt_084E:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
Lt_084F:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
Lt_0850:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
Lt_0851:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
Lt_0852:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
Lt_0853:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
Lt_0854:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
Lt_0855:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
Lt_0858:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
Lt_0859:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
Lt_085A:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
Lt_085B:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
Lt_085C:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
Lt_085D:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
Lt_085E:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
Lt_085F:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
Lt_0860:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
Lt_0861:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
Lt_0862:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
Lt_0865:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
Lt_0866:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
Lt_0867:	.ascii	"  -v               Be verbose\0"
.balign 4
Lt_0868:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
Lt_0869:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
Lt_086A:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
Lt_086D:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
Lt_086E:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
Lt_086F:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
Lt_0870:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
Lt_0871:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
Lt_0872:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
Lt_0873:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
Lt_0874:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
Lt_0875:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
Lt_0876:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
Lt_0877:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
Lt_0878:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
Lt_0879:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
Lt_087A:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
Lt_087D:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
Lt_087E:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
Lt_087F:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
Lt_0880:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
Lt_0881:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
Lt_0882:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
Lt_0883:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
Lt_0890:	.ascii	"FreeBASIC Compiler - Version 1.10.1 (2023-12-24), built for \0"
.balign 4
Lt_0891:	.ascii	"bit)\0"
.balign 4
Lt_0896:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
Lt_089D:	.ascii	"source sha-1: \0"
.balign 4
Lt_08C2:	.ascii	"Restarting fbc ...\0"

.section .ctors, "aw", @progbits
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
