	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irzhlc:
.L_0002:
.L_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
.L_0012:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN12SECTIONENTRYC1Ev:
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
.L_0066:
.L_0067:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN12SECTIONENTRYaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0068:
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
.L_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN12SECTIONENTRYD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006C:
.L_006D:
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
_ZN8IRHLCCTXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0074:
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYC1Ev
add esp, 4
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0074
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2592
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2608
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
add eax, 2640
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2652
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2656
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2668
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2712
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2724
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
add eax, 2756
mov dword ptr [eax], 0
.L_0071:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8IRHLCCTXaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0076:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.L_0079:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYaSERKS_
add esp, 8
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0079
mov eax, dword ptr [ebp+12]
add eax, 2580
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2584
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2588
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2592
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2592
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 2604
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
add eax, 2608
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2608
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
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2640
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 2652
mov ebx, dword ptr [ebp+8]
add ebx, 2652
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2656
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2656
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2668
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2680
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
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2712
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2712
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+8]
add ecx, 2724
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 2724
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+12]
add eax, 2756
mov ebx, dword ptr [ebp+8]
add ebx, 2756
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN8IRHLCCTXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0081:
.L_0082:
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.L_0084:
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYD1Ev
add esp, 4
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0084
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_INIT:
.L_0096:
call IRHLINIT
push 6
push 4
push 8
lea eax, [CTX+2608]
push eax
call LISTINIT
add esp, 16
push 7
push 28
push 32
lea eax, [CTX+2680]
push eax
call LISTINIT
add esp, 16
push 6
push 8
push 8
lea eax, [CTX+2724]
push eax
call LISTINIT
add esp, 16
or dword ptr [IR+272], 131074
call FBIS64BIT
test eax, eax
je .L_0099
mov eax, dword ptr [DTYPENAME+52]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+56]
mov dword ptr [DTYPENAME+36], eax
jmp .L_0098
.L_0099:
mov eax, dword ptr [DTYPENAME+44]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+48]
mov dword ptr [DTYPENAME+36], eax
.L_0098:
.L_0097:
ret
.balign 16
_END:
.L_009A:
lea eax, [CTX+2724]
push eax
call LISTEND
add esp, 4
lea eax, [CTX+2680]
push eax
call LISTEND
add esp, 4
lea eax, [CTX+2608]
push eax
call LISTEND
add esp, 4
call IRHLEND
.L_009B:
ret
.balign 16
SECTIONBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009C:
inc dword ptr [CTX+2580]
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [CTX+2580], 0
jle .L_00A0
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .L_009F
.L_00A0:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.L_009F:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONWRITELINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_00A1:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00A5
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00A7
push 0
push -1
push 1
push offset Lt_00A8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_00A6
.L_00A7:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
.L_00A6:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00AB
push 0
push -1
push -1
push 1
push offset Lt_00A8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00AB:
.L_00AA:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00A4:
push 0
push -1
push 2
push offset Lt_00AE
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONINDENT:
push ebx
.L_00B0:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
inc dword ptr [ebx+16]
.L_00B1:
pop ebx
ret
.balign 16
SECTIONUNINDENT:
push ebx
.L_00B2:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
dec dword ptr [ebx+16]
.L_00B3:
pop ebx
ret
.balign 16
SECTIONINSIDEPROC:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B4:
mov eax, dword ptr [CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00B6:
cmp dword ptr [CTX+2580], 0
jle .L_00B9
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_00BB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00BD
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00BC
.L_00BD:
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
.L_00BC:
.L_00BB:
.L_00BA:
.L_00B9:
.L_00B8:
dec dword ptr [CTX+2580]
.L_00B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONGOSUB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00BF:
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
inc dword ptr [CTX+2584]
.L_00C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SECTIONRETURN:
push ebp
mov ebp, esp
.L_00C1:
dec dword ptr [CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
.L_00C2:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITELINE:
push ebp
mov ebp, esp
.L_00C3:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ENV+148]
je .L_00C6
push 0
push 7
push offset Lt_00C7
push -1
push offset Lt_0768
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [CTX+2588]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_0768
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00C8
push -1
push offset Lt_0768
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [CTX+2592]
push eax
push -1
push offset Lt_0768
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_00C9
push -1
push offset Lt_0768
call fb_StrConcatAssign
add esp, 20
push offset Lt_0768
call SECTIONWRITELINE
add esp, 4
.L_00C6:
.L_00C5:
push dword ptr [ebp+8]
call SECTIONWRITELINE
add esp, 4
.L_00C4:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0768,12

.section .text
.balign 16
HUPDATECURRENTFILENAME:
push ebp
mov ebp, esp
.L_00CA:
push 0
push -1
push offset Lt_00CD
push offset Lt_00CC
push dword ptr [ebp+8]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [CTX+2592]
push eax
call fb_StrAssign
add esp, 20
.L_00CB:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITESTATICASSERT:
push ebp
mov ebp, esp
sub esp, 52
.L_00CE:
mov eax, dword ptr [CTX+2604]
and eax, 64
test eax, eax
jne .L_00D1
or dword ptr [CTX+2604], 64
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset Lt_00D2
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_00D1:
.L_00D0:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset Lt_00D5
push -1
push -1
push dword ptr [ebp+8]
push 21
push offset Lt_00D4
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
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
.L_00CF:
mov esp, ebp
pop ebp
ret
.balign 16
HAPPENDCTORATTRIB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00D9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .L_00DC
cmp dword ptr [ebp+16], 0
jne .L_00DE
push 0
push 2
push offset Lt_00DF
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00DE:
.L_00DD:
push 0
push 17
push offset Lt_00E0
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 65536
je .L_00E2
push 0
push 12
push offset Lt_00E3
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_00E1
.L_00E2:
push 0
push 11
push offset Lt_00E4
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00E1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E6
push 0
push -1
push 3
push offset Lt_00E8
push -1
push -1
push dword ptr [ebp-4]
call fb_IntToStr
add esp, 4
push eax
push 3
push offset Lt_00E7
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
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00E6:
.L_00E5:
push 0
push 4
push offset Lt_00EB
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+16], 0
je .L_00ED
push 0
push 2
push offset Lt_00DF
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_00ED:
.L_00EC:
.L_00DC:
.L_00DB:
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETMANGLEDNAMEFORASM:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ENV+292]
and eax, dword ptr [ebp+12]
je .L_00F1
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 2
push offset Lt_00F2
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
.L_00F1:
.L_00F0:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00F5
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .L_00F7
push 0
push 2
push offset Lt_00F8
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 4
push edx
push eax
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_00F7:
.L_00F6:
.L_00F5:
.L_00F4:
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
.L_00EF:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HNEEDALIAS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .L_00FC
jmp .L_00FA
.L_00FC:
.L_00FB:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0100
.L_0101:
cmp dword ptr [ebp-8], 1
je .L_0100
.L_0102:
cmp dword ptr [ebp-8], 4
jne .L_00FF
.L_0100:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0104
jmp .L_00FA
.L_0104:
.L_0103:
jmp .L_00FD
.L_00FF:
jmp .L_00FA
.L_0105:
.L_00FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_0109
.L_010A:
cmp dword ptr [ebp-8], 4
jne .L_0108
.L_0109:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0108:
cmp dword ptr [ebp-8], 1
jne .L_010B
.L_010C:
mov dword ptr [ebp-4], -1
.L_010B:
.L_0106:
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITPROCHEADER:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .L_0110
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 12
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .L_0112
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_0114
push 0
push 8
push offset Lt_0115
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0114:
.L_0113:
.L_0112:
.L_0111:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
call FBGETCPUFAMILY
test eax, eax
jne .L_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .L_011C
.L_011D:
cmp dword ptr [ebp-72], 2
je .L_011C
.L_011E:
cmp dword ptr [ebp-72], 4
jne .L_011B
.L_011C:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0122
.L_0123:
cmp dword ptr [ebp-76], 4
jne .L_0121
.L_0122:
push 0
push 11
push offset Lt_0124
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_011F
.L_0121:
push 0
push 26
push offset Lt_0126
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0125:
.L_011F:
jmp .L_0119
.L_011B:
cmp dword ptr [ebp-72], 5
jne .L_0127
.L_0128:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_012C
.L_012D:
cmp dword ptr [ebp-76], 4
jne .L_012B
.L_012C:
push 0
push 12
push offset Lt_012E
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0129
.L_012B:
push 0
push 27
push offset Lt_0130
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_012F:
.L_0129:
jmp .L_0119
.L_0127:
cmp dword ptr [ebp-72], 6
jne .L_0131
.L_0132:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0136
.L_0137:
cmp dword ptr [ebp-76], 4
jne .L_0135
.L_0136:
push 0
push 12
push offset Lt_0138
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0133
.L_0135:
push 0
push 27
push offset Lt_013A
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0139:
.L_0133:
.L_0131:
.L_0119:
.L_0118:
.L_0117:
push 0
push 2
push offset Lt_00DF
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_013C
push 0
push 3
push offset Lt_013D
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_013E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_013B
.L_013C:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_013B:
push 0
push 3
push offset Lt_00E7
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-60], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_0140
mov eax, dword ptr [ebp+12]
and eax, 1
je .L_0142
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-60], ebx
push 0
push -1
push -1
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0141
.L_0142:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-60], eax
push 0
push -1
push -1
mov eax, dword ptr [ebp-60]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-60]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 31
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 32505856
or ecx, ebx
push ecx
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp-60]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DF
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0141:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_0148
push 0
push 3
push offset Lt_0149
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0148:
.L_0147:
.L_0140:
.L_013F:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_014A
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .L_076B
.L_014A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.L_076B:
mov ecx, dword ptr [ebp-64]
mov dword ptr [ebp-68], ecx
cmp dword ptr [ebp-60], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-68], 0
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_014D
push 0
push 5
push offset Lt_0087
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_014D:
.L_014C:
.L_014E:
cmp dword ptr [ebp-68], 0
je .L_014F
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .L_0151
push 0
push 4
push offset Lt_0152
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0150
.L_0151:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .L_0154
push 0
push 7
push offset Lt_0155
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 20
jmp .L_0153
.L_0154:
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0153:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0157
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_0157:
.L_0156:
.L_0150:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_015A
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-72], ecx
jmp .L_076C
.L_015A:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-72], eax
.L_076C:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_015D
push 0
push 3
push offset Lt_0149
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_015D:
.L_015C:
jmp .L_014E
.L_014F:
push 0
push 3
push offset Lt_00E8
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_015F
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 4
test eax, eax
je .L_0161
push 0
push 7
push offset Lt_0162
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0163
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0161:
.L_0160:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 12
.L_015F:
.L_015E:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
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
.L_010E:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTTAG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0164:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0167
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .L_0169
push 0
push 7
push offset Lt_016A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0168
.L_0169:
push 0
push 8
push offset Lt_016B
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
.L_0168:
.L_0167:
.L_0166:
.L_0165:
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTID:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .L_016F
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .L_0173
.L_0174:
cmp dword ptr [ebp-28], 4
je .L_0173
.L_0175:
cmp dword ptr [ebp-28], 5
jne .L_0172
.L_0173:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_016D
.L_0172:
.L_0170:
.L_016F:
.L_016E:
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_0176
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
call fb_StrAssign
add esp, 20
.L_016D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETUDTNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0178:
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0179:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITUDT:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_017A:
cmp dword ptr [ebp+8], 0
jne .L_017D
jmp .L_017B
.L_017D:
.L_017C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_017F
jmp .L_017B
.L_017F:
.L_017E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0181
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0183
inc dword ptr [ebp-4]
jmp .L_0182
.L_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
jne .L_0184
inc dword ptr [ebp-4]
.L_0184:
.L_0182:
mov eax, dword ptr [CTX+2580]
cmp dword ptr [ebp-4], eax
jle .L_0186
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
.L_0186:
.L_0185:
jmp .L_0180
.L_0181:
mov dword ptr [ebp-4], 0
.L_0180:
push dword ptr [ebp-4]
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0188
.L_018A:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00DF
push -1
push -1
push 0
push 10
call HEMITTYPE
add esp, 8
push eax
push 9
push offset Lt_018B
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
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0187
.L_0192:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTRUCT
add esp, 8
jmp .L_0187
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_0195
push 0
push -1
push 3
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .L_0197
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset Lt_018B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.L_0197:
.L_0196:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_0195:
.L_0194:
jmp .L_0187
.L_0188:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .L_0187
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_019B+eax*4-12]
.L_019B:
.int .L_0193
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_0187
.int .L_018A
.int .L_0192
.L_0187:
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_017B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITARRAYDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_019F
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_019D
.L_019F:
.L_019E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .L_01A3
.L_01A4:
cmp dword ptr [ebp-28], 12
jne .L_01A2
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .L_01A6
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_01A8
.L_01AB:
push 0
push -1
push -1
push 2
push offset Lt_01AD
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov ebx, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
sub ebx, dword ptr [esi]
sbb eax, dword ptr [esi+4]
add ebx, 1
adc eax, 0
push eax
push ebx
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_01AC
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
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_01A9:
inc dword ptr [ebp-32]
.L_01A8:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .L_01AB
.L_01AA:
.L_01A6:
.L_01A5:
.L_01A2:
.L_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .L_01B2
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .L_01B6
.L_01B7:
cmp dword ptr [ebp-36], 4
jne .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .L_01B3
.L_01B5:
cmp dword ptr [ebp-36], 7
jne .L_01B8
.L_01B9:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.L_01B8:
.L_01B3:
cmp dword ptr [ebp-28], 0
jl .L_01BB
jg .L_0771
cmp dword ptr [ebp-32], 0
jbe .L_01BB
.L_0771:
push 0
push 2
push offset Lt_01AC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_01AD
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01BB:
.L_01BA:
.L_01B2:
.L_01B1:
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
.L_019D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITVARDECL:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_01BC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01BF
push 0
push 8
push offset Lt_01C0
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_01BE
.L_01BF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 56
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01C1
push 0
push 8
push offset Lt_0115
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_01C1:
.L_01BE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 12
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset Lt_00DF
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
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
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
not eax
and ecx, eax
je .L_01C6
push 0
push 25
push offset Lt_01C7
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01C6:
.L_01C5:
cmp dword ptr [ebp+16], 0
je .L_01C9
push 0
push -1
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_01CA
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_01C9:
.L_01C8:
push 0
push 2
push offset Lt_018C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITLOCALVAR:
push ebp
mov ebp, esp
push ebx
.L_01CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01D0
jmp .L_01CE
.L_01D0:
.L_01CF:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01D2
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01D1
.L_01D2:
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
.L_01D1:
.L_01CE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HALLOCGLOBALVAR:
push ebp
mov ebp, esp
push ebx
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_01D6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_01D8
jmp .L_01D4
.L_01D8:
.L_01D7:
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01D5
.L_01D6:
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
.L_01D5:
.L_01D4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.L_01D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
and esi, 2
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 16388
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_01DC
jmp .L_01DA
.L_01DC:
.L_01DB:
mov esi, dword ptr [CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .L_01DF
.L_01E0:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .L_01E2
push 0
push dword ptr [ebp+8]
push -1
call HEMITVARDECL
add esp, 12
jmp .L_01E1
.L_01E2:
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 4
.L_01E1:
jmp .L_01DD
.L_01DF:
cmp dword ptr [ebp-4], 2
jne .L_01E3
.L_01E4:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .L_01E6
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 4
.L_01E6:
.L_01E5:
.L_01E3:
.L_01DD:
.L_01DA:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITGLOBALVAREXCEPTDATASTMT:
push ebp
mov ebp, esp
.L_01E7:
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 4
test eax, eax
je .L_01EA
jmp .L_01E8
.L_01EA:
.L_01E9:
push dword ptr [ebp+8]
call HMAYBEEMITGLOBALVAR
add esp, 4
.L_01E8:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITPROCPROTO:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01EB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_01EE
jmp .L_01EC
.L_01EE:
.L_01ED:
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
test eax, eax
jne .L_01F0
jmp .L_01EC
.L_01F0:
.L_01EF:
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
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
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
.L_01EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITFIELDTYPES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F3:
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01F5:
cmp dword ptr [ebp-4], 0
je .L_01F6
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call HEMITUDT
add esp, 8
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01F5
.L_01F6:
.L_01F4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFINDPARENTANONALREADYONSTACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.L_01F9:
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.L_01FC:
cmp dword ptr [ebp-8], 0
je .L_01FD
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .L_01FF
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01F8
.L_01FF:
.L_01FE:
push dword ptr [ebp-8]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.L_01FB:
cmp dword ptr [ebp-12], 0
jne .L_01F9
.L_01FA:
mov dword ptr [ebp-4], 0
.L_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPUSHANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0200:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .L_0203
jmp .L_0201
.L_0203:
.L_0202:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+164]
push dword ptr [ebp+8]
call HPUSHANONPARENTS
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .L_0205
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_0206
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_0204
.L_0205:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset Lt_0208
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
.L_0204:
call SECTIONINDENT
lea ebx, [CTX+2608]
push ebx
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0201:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPOPANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_020A:
.L_020C:
lea eax, [CTX+2608]
push eax
call LISTGETTAIL
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .L_020D
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset Lt_020E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 4
push eax
lea eax, [CTX+2608]
push eax
call LISTDELNODE
add esp, 8
jmp .L_020C
.L_020D:
.L_020B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRUCTWITHFIELDS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_0210:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
.L_0212:
cmp dword ptr [ebp-20], 0
je .L_0213
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+164], ebx
jne .L_0215
push 0
call HPOPANONPARENTS
add esp, 4
jmp .L_0214
.L_0215:
push dword ptr [ebp-20]
call HFINDPARENTANONALREADYONSTACK
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HPOPANONPARENTS
add esp, 4
mov eax, dword ptr [ebp-20]
push dword ptr [eax+164]
cmp dword ptr [ebp-24], 0
je .L_0216
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .L_0780
.L_0216:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.L_0780:
push dword ptr [ebp-40]
call HPUSHANONPARENTS
add esp, 8
.L_0214:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0219
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset Lt_00DF
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-20]
call HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .L_021D
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 8
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_021E
mov dword ptr [ebp-68], 24
jmp .L_0781
.L_021E:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0781:
cmp dword ptr [ebp-68], 20
jne .L_0221
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+121]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .L_0223
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.L_0223:
.L_0222:
.L_0221:
.L_0220:
cmp dword ptr [ebp-4], 0
jne .L_0225
push 0
push 33
push offset Lt_0226
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-12]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0227
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0225:
.L_0224:
.L_021D:
.L_021C:
cmp dword ptr [ebp-12], 0
jle .L_0228
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0782
.L_0228:
mov dword ptr [ebp-64], -1
.L_0782:
cmp dword ptr [ebp-64], 0
je .L_022B
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_022C
mov dword ptr [ebp-68], 24
jmp .L_0783
.L_022C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0783:
cmp dword ptr [ebp-68], 20
jne .L_022F
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .L_0230
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_0784
.L_0230:
mov dword ptr [ebp-76], 0
.L_0784:
cmp dword ptr [ebp-76], 0
je .L_0233
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.L_0233:
.L_0232:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+121]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .L_0234
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .L_0785
.L_0234:
mov dword ptr [ebp-84], 0
.L_0785:
cmp dword ptr [ebp-84], 0
je .L_0237
push 0
push 25
push offset Lt_0238
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_0227
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0237:
.L_0236:
.L_022F:
.L_022E:
.L_022B:
.L_022A:
push 0
push 2
push offset Lt_018C
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
.L_0219:
.L_0218:
push dword ptr [ebp-20]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_0212
.L_0213:
push 0
call HPOPANONPARENTS
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0211:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTRUCT:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_0239:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_023C
cmp dword ptr [ebp+12], 0
je .L_023E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0240
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 4
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
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
.L_0240:
.L_023F:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_023A
.L_023E:
.L_023D:
.L_023C:
.L_023B:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 134217728
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 32768
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0244
push dword ptr [ebp+8]
call HEMITFIELDTYPES
add esp, 4
.L_0244:
.L_0243:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .L_0246
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_023A
.L_0246:
.L_0245:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+121]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0248
push 0
push 29
push offset Lt_0249
push -1
lea ecx, [ebp-16]
push ecx
call fb_StrConcatAssign
add esp, 20
.L_0248:
.L_0247:
push 0
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_024A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 8
call SECTIONINDENT
cmp dword ptr [ebp-4], 0
je .L_024C
push dword ptr [ebp+8]
call HEMITSTRUCTWITHFIELDS
add esp, 4
jmp .L_024B
.L_024C:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 3
push offset Lt_024E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 8
push eax
push 24
push offset Lt_024D
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
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_024B:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset Lt_020E
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 7
push offset Lt_0254
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTID
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 4
push eax
push 9
push offset Lt_0253
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
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITESTATICASSERT
add esp, 4
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_023A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEX86F2I:
push ebp
mov ebp, esp
sub esp, 356
push ebx
.L_025A:
push 0
push -1
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+16]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ENV+132], 1
jne .L_025D
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_025E
mov dword ptr [ebp-352], 24
jmp .L_078F
.L_025E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.L_078F:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .L_0262
.L_0263:
push 0
push 2
push offset Lt_0264
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0260
.L_0262:
cmp dword ptr [ebp-356], 8
jne .L_0265
.L_0266:
push 0
push 2
push offset Lt_0267
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 20
.L_0265:
.L_0260:
cmp dword ptr [ebp+16], 15
jne .L_0269
push 0
push 2
push offset Lt_026A
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0268
.L_0269:
push 0
push 2
push offset Lt_0264
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 20
.L_0268:
.L_025D:
.L_025C:
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-60]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 9
push offset Lt_026E
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset Lt_00E7
push -1
push -1
push dword ptr [ebp+8]
push -1
push 5
push offset Lt_026D
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset Lt_026C
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
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset Lt_0276
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 9
push offset Lt_0279
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0278
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset Lt_027D
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset Lt_0280
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_027F
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 6
push offset Lt_0285
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset Lt_0284
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset Lt_0289
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset Lt_028B
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset Lt_028D
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 4
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset Lt_028F
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset Lt_0291
push -1
lea eax, [ebp-336]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-336]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-336]
push eax
call fb_StrDelete
add esp, 4
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset Lt_0293
push -1
lea eax, [ebp-348]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-348]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-348]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
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
.L_025B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEGENERICF2I:
push ebp
mov ebp, esp
sub esp, 96
.L_0295:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .L_0298
push 0
push 11
push offset Lt_0299
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0297
.L_0298:
push 0
push 10
push offset Lt_029A
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0297:
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 11
push offset Lt_029E
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset Lt_029D
push -1
push -1
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 8
push eax
push -1
push 13
push offset Lt_029C
push -1
push -1
push dword ptr [ebp+8]
push 12
push offset Lt_029B
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
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0296:
mov esp, ebp
pop ebp
ret
.balign 16
HWRITEF2I:
push ebp
mov ebp, esp
.L_02A6:
call FBGETCPUFAMILY
test eax, eax
jne .L_02A9
cmp dword ptr [ebp+12], 11
je .L_02AC
.L_02AD:
cmp dword ptr [ebp+12], 13
jne .L_02AB
.L_02AC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEX86F2I
add esp, 12
jmp .L_02A7
.L_02AB:
.L_02AA:
.L_02A9:
.L_02A8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEGENERICF2I
add esp, 12
.L_02A7:
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEEMITPROCEXPORT:
push ebp
mov ebp, esp
push ebx
.L_02AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .L_02B1
jmp .L_02AF
.L_02B1:
.L_02B0:
push 0
push 3
push offset Lt_02B2
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push 10
push offset Lt_02B3
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push 16
push offset Lt_02B4
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 7
push offset Lt_02B5
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 3
push offset Lt_02B6
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
push 0
push 3
push offset Lt_02B7
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatByref
add esp, 20
.L_02AF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 124
mov dword ptr [ebp-4], 0
.L_02B8:
lea eax, [ENV+584]
push eax
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_02BB
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 4
.L_02BB:
.L_02BA:
call fb_FileFree
mov dword ptr [ENV+580], eax
push 0
push dword ptr [ENV+580]
push 0
push 3
push 0
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_02BD
mov dword ptr [ebp-4], 0
jmp .L_02B9
.L_02BD:
.L_02BC:
mov dword ptr [CTX+2580], -1
mov dword ptr [CTX+2584], 0
mov dword ptr [CTX+2588], 0
mov dword ptr [CTX+2604], 0
mov dword ptr [CTX+2756], 0
lea eax, [ENV+304]
push eax
call HUPDATECURRENTFILENAME
add esp, 4
call SECTIONBEGIN
cmp dword ptr [ENV+148], 0
je .L_02BF
push 0
push 0
push 0
push 113
call _EMITDBG
add esp, 16
.L_02BF:
.L_02BE:
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset Lt_02C0
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset Lt_02C2
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset Lt_02C4
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset Lt_02C6
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset Lt_02C8
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset Lt_02CA
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset Lt_02CC
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset Lt_02CE
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
call FBIS64BIT
test eax, eax
je .L_02D1
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02D2
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
jmp .L_02D0
.L_02D1:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02D4
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 4
.L_02D0:
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset Lt_02D6
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
call SECTIONBEGIN
mov dword ptr [ebp-4], -1
.L_02B9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_EMITEND:
push ebp
mov ebp, esp
sub esp, 52
.L_02D8:
lea eax, [ENV+304]
push eax
call HUPDATECURRENTFILENAME
add esp, 4
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2604]
and eax, 1
je .L_02DB
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02DC
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02DB:
mov eax, dword ptr [CTX+2604]
and eax, 2
je .L_02DF
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02E0
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02DF:
mov eax, dword ptr [CTX+2604]
and eax, 4
je .L_02E3
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02E4
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02E3:
mov eax, dword ptr [CTX+2604]
and eax, 8
je .L_02E7
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02E8
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02E7:
mov eax, dword ptr [CTX+2604]
and eax, 16
je .L_02EB
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02EC
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02EB:
mov eax, dword ptr [CTX+2604]
and eax, 32
je .L_02EF
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02F0
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02EF:
push offset HMAYBEEMITPROCPROTO
push 3
call SYMBFOREACHGLOBAL
add esp, 8
mov dword ptr [CTX+2756], 1
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 8
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 4
mov dword ptr [CTX+2756], 2
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 8
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 4
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 4
mov eax, dword ptr [ENV+284]
and eax, 4
and eax, dword ptr [ENV+224]
je .L_02F3
push offset HMAYBEEMITPROCEXPORT
push 3
call SYMBFOREACHGLOBAL
add esp, 8
push -1
lea eax, [CTX+2668]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_02F5
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 3
push offset Lt_028F
push -1
push -1
lea eax, [CTX+2668]
push eax
push 35
push offset Lt_02F6
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
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 20
push offset Lt_02FA
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 4
.L_02F5:
.L_02F4:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2668]
push eax
call fb_StrAssign
add esp, 20
.L_02F3:
.L_02F2:
call SECTIONEND
cmp dword ptr [CTX+12], 0
jne .L_02FD
push -1
lea eax, [CTX]
push eax
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_02FF
.L_02FF:
.L_02FE:
.L_02FD:
.L_02FC:
call SECTIONEND
push dword ptr [ENV+580]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0301
.L_0301:
.L_0300:
mov dword ptr [ENV+580], 0
.L_02D9:
mov esp, ebp
pop ebp
ret
.balign 16
_GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0302:
cmp dword ptr [ebp+8], 1
jne .L_0305
.L_0306:
mov dword ptr [ebp-4], 0
jmp .L_0303
jmp .L_0304
.L_0305:
push 0
push 1
push 0
push offset Lt_0308
push 21
call ERRREPORTEX
add esp, 20
.L_0307:
.L_0304:
.L_0303:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0309:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_030C
.L_030E:
mov dword ptr [ebp-4], 0
jmp .L_030B
.L_030F:
mov dword ptr [ebp-4], -1
jmp .L_030B
.L_030C:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .L_030F
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0310+eax*4-228]
.L_0310:
.int .L_030E
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030E
.int .L_030E
.int .L_030F
.int .L_030F
.int .L_030F
.int .L_030E
.int .L_030E
.L_030B:
.L_030A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0311:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+16], ebx
.L_0312:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCEND:
push ebp
mov ebp, esp
push ebx
.L_0313:
mov eax, dword ptr [LEX+840140]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+20], ebx
.L_0314:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEBEGIN:
push ebp
mov ebp, esp
.L_0315:
.L_0316:
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEEND:
push ebp
mov ebp, esp
.L_0317:
.L_0318:
mov esp, ebp
pop ebp
ret
.balign 16
HISSTATICWITHDTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0319:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_031A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_031B:
push 0
call SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-8], eax
.L_031D:
cmp dword ptr [ebp+8], 0
je .L_031E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .L_0321
.L_0322:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _PROCALLOCSTATICVARS
add esp, 4
jmp .L_031F
.L_0321:
cmp dword ptr [ebp-12], 1
jne .L_0323
.L_0324:
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0326
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0328
push dword ptr [ebp-4]
call HMAYBEEMITLOCALVAR
add esp, 4
.L_0328:
.L_0327:
.L_0326:
.L_0325:
.L_0323:
.L_031F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .L_031D
.L_031E:
push dword ptr [ebp-8]
call SECTIONRETURN
add esp, 4
.L_031C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SETVREGDATATYPE:
push ebp
mov ebp, esp
push ebx
.L_0329:
cmp dword ptr [ebp+8], 0
je .L_032C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_032C:
.L_032B:
.L_032A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITTYPE:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_032D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_0330
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .L_0333
.L_0334:
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
jmp .L_0331
.L_0333:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.L_0335:
.L_0331:
.L_0330:
.L_032F:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0337
.L_0339:
cmp dword ptr [ebp+12], 0
je .L_033B
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call HEMITUDT
add esp, 8
push 0
push -1
push dword ptr [ebp+12]
call HGETUDTNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_033A
.L_033B:
cmp dword ptr [ebp+8], 10
jne .L_033C
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_033D
mov dword ptr [ebp-36], 24
jmp .L_0792
.L_033D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0792:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_033A
.L_033C:
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
.L_033A:
jmp .L_0336
.L_033F:
dec dword ptr [ebp-28]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call HEMITUDT
add esp, 8
push 0
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0336
.L_0340:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0341
mov dword ptr [ebp-36], 24
jmp .L_0793
.L_0341:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0793:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0336
.L_0343:
push 0
push 0
push dword ptr [DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0336
.L_0344:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
jmp .L_0336
.L_0337:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967289
cmp ebx, 15
ja .L_0344
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.L_0345+ebx*4-28]
.L_0345:
.int .L_0340
.int .L_0344
.int .L_0344
.int .L_0339
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0344
.int .L_0343
.int .L_0344
.int .L_0339
.int .L_0344
.int .L_033F
.L_0336:
cmp dword ptr [ebp-28], 0
jle .L_0347
push 0
push -1
push 1
push offset Lt_0348
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
call fb_StrFill2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0347:
.L_0346:
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
.L_032E:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0349:
lea eax, [CTX+2680]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_034A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFREENODE:
push ebp
mov ebp, esp
.L_034B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_034E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0350
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 4
.L_0350:
.L_034F:
.L_034E:
.L_034D:
push dword ptr [ebp+8]
lea eax, [CTX+2680]
push eax
call LISTDELNODE
add esp, 8
.L_034C:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFREETREE:
push ebp
mov ebp, esp
.L_0351:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0354
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRFREETREE
add esp, 4
.L_0354:
.L_0353:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0356
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call EXPRFREETREE
add esp, 4
.L_0356:
.L_0355:
push dword ptr [ebp+8]
call EXPRFREENODE
add esp, 4
.L_0352:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0357:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
call ZSTRDUP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0358:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWIMMI:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0359:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035B
mov dword ptr [ebp-12], 24
jmp .L_0796
.L_035B:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0796:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_035E
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035F
mov dword ptr [ebp-16], 24
jmp .L_0797
.L_035F:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0797:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0361
mov dword ptr [ebp-20], 13
jmp .L_0798
.L_0361:
mov dword ptr [ebp-20], 14
.L_0798:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .L_035D
.L_035E:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0363
mov dword ptr [ebp-16], 24
jmp .L_0799
.L_0363:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0799:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0365
mov dword ptr [ebp-20], 11
jmp .L_079A
.L_0365:
mov dword ptr [ebp-20], 12
.L_079A:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.L_035D:
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_035A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWIMMF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0367:
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0368:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SYMBISCARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0369:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 81920
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_036C
mov dword ptr [ebp-4], 0
jmp .L_036A
.L_036C:
.L_036B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_0370
.L_0371:
cmp dword ptr [ebp-8], 12
jne .L_036F
.L_0370:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0373
mov dword ptr [ebp-4], 0
jmp .L_036A
.L_0373:
.L_0372:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0375
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_0375:
.L_0374:
.L_036F:
.L_036D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_0379
.L_037A:
cmp dword ptr [ebp-8], 4
je .L_0379
.L_037B:
cmp dword ptr [ebp-8], 7
jne .L_0378
.L_0379:
mov dword ptr [ebp-4], -1
jmp .L_036A
.L_0378:
.L_0376:
mov dword ptr [ebp-4], 0
.L_036A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWCAST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_037C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
cmp ebx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [eax+8]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
je .L_037F
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037D
.L_037F:
.L_037E:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .L_0380
mov dword ptr [ebp-8], 24
jmp .L_079E
.L_0380:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.L_079E:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0382
mov dword ptr [ebp-12], 24
jmp .L_079F
.L_0382:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.L_079F:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [SYMB_DTYPETB+ebx+20]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
mov esi, dword ptr [ebp+8]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
je .L_0385
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037D
.L_0385:
.L_0384:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .L_0387
mov esi, dword ptr [ebp+8]
and esi, 480
sar esi, 5
test esi, esi
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
sar ebx, 5
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and esi, ebx
je .L_0389
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_037D
.L_0389:
.L_0388:
.L_0387:
.L_0386:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 511
cmp esi, 4
jne .L_038B
push 0
push 3
push 3
call EXPRNEW
add esp, 12
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp+16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-20]
mov dword ptr [ebp+16], esi
.L_038B:
.L_038A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call EXPRNEW
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [ebp+16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_037D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWMACRO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_038C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_038D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWSYM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_038E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0391
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp+8], ebx
.L_0391:
.L_0390:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .L_0393
push 0
push 32
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_0392
.L_0393:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_0394
push dword ptr [ebp+8]
push 54
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .L_0392
.L_0394:
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 4
test eax, eax
je .L_0395
push 0
push -2147483648
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0392
.L_0395:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0396
push 0
push 66
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
jmp .L_0392
.L_0396:
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
.L_0392:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_038F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
TYPECBOP:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0397:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_039A
mov dword ptr [ebp-4], 11
jmp .L_0398
.L_039A:
.L_0399:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_039B
mov dword ptr [ebp-8], 24
jmp .L_07AD
.L_039B:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_07AD:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_039D
mov dword ptr [ebp-12], 24
jmp .L_07AE
.L_039D:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07AE:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03A0
mov dword ptr [ebp-4], 16
jmp .L_0398
.L_03A0:
.L_039F:
mov eax, dword ptr [ebp+12]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_03A2
mov dword ptr [ebp-4], 15
jmp .L_0398
.L_03A2:
.L_03A1:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A3
mov dword ptr [ebp-16], 24
jmp .L_07AF
.L_03A3:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07AF:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .L_03A6
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A7
mov dword ptr [ebp-48], 24
jmp .L_07B0
.L_03A7:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B0:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_03A9
mov dword ptr [ebp-52], 11
jmp .L_07B1
.L_03A9:
mov dword ptr [ebp-52], 12
.L_07B1:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.L_03A6:
.L_03A5:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03AB
mov dword ptr [ebp-20], 24
jmp .L_07B2
.L_03AB:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_07B2:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .L_03AE
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03AF
mov dword ptr [ebp-48], 24
jmp .L_07B3
.L_03AF:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B3:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_03B1
mov dword ptr [ebp-52], 11
jmp .L_07B4
.L_03B1:
mov dword ptr [ebp-52], 12
.L_07B4:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.L_03AE:
.L_03AD:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03B3
mov dword ptr [ebp-24], 24
jmp .L_07B5
.L_03B3:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_07B5:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03B5
mov dword ptr [ebp-28], 24
jmp .L_07B6
.L_03B5:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_07B6:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .L_03B8
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.L_03B8:
.L_03B7:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03B9
mov dword ptr [ebp-32], 24
jmp .L_07B8
.L_03B9:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07B8:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_03BB
mov dword ptr [ebp-36], 24
jmp .L_07B9
.L_03BB:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_07B9:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .L_03BE
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03BF
mov dword ptr [ebp-52], 24
jmp .L_07BB
.L_03BF:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_07BB:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03C1
mov dword ptr [ebp-56], 13
jmp .L_07BC
.L_03C1:
mov dword ptr [ebp-56], 14
.L_07BC:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C3
mov dword ptr [ebp-60], 24
jmp .L_07BD
.L_03C3:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07BD:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03C5
mov dword ptr [ebp-64], 13
jmp .L_07BE
.L_03C5:
mov dword ptr [ebp-64], 14
.L_07BE:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.L_03BE:
.L_03BD:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03C7
mov dword ptr [ebp-40], 24
jmp .L_07BF
.L_03C7:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07BF:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C9
mov dword ptr [ebp-44], 24
jmp .L_07C0
.L_03C9:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07C0:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
and ebx, dword ptr [SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .L_03CC
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.L_03CC:
.L_03CB:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0398:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWUOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03CD:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_03D0
.L_03D2:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D4:
.L_03D3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_03CF
.L_03D5:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D7:
.L_03D6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_03CF
.L_03D8:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03DA
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+20]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03DA:
.L_03D9:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
jmp .L_03CF
.L_03DB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .L_03CF
.L_03DC:
jmp .L_03CF
.L_03D0:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .L_03DC
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.L_03DD+ebx*4-88]
.L_03DD:
.int .L_03D2
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03D8
.int .L_03DC
.int .L_03D8
.int .L_03DC
.int .L_03DB
.int .L_03DC
.int .L_03DB
.int .L_03DB
.int .L_03DB
.int .L_03DB
.int .L_03DB
.int .L_03DB
.int .L_03DC
.int .L_03DB
.int .L_03DC
.int .L_03DC
.int .L_03DB
.int .L_03DB
.int .L_03DB
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03D5
.L_03CF:
cmp dword ptr [ebp-16], 0
je .L_03DF
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call EXPRFREENODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03CE
.L_03DF:
.L_03DE:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWBOP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03E0:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03E3
.L_03E5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_03E7
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03E9
push dword ptr [ebp+12]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+16], eax
.L_03E9:
.L_03E8:
.L_03E7:
.L_03E6:
jmp .L_03E2
.L_03E3:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .L_03E2
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_03EA+eax*4-180]
.L_03EA:
.int .L_03E5
.int .L_03E5
.int .L_03E5
.int .L_03E5
.int .L_03E5
.int .L_03E5
.L_03E2:
push 0
push dword ptr [ebp-12]
push 5
call EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRCACHE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03EB:
lea eax, [CTX+2724]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_03EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRLOOKUP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03ED:
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.L_03EF:
cmp dword ptr [ebp-8], 0
je .L_03F0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_03F2
jmp .L_03F0
.L_03F2:
.L_03F1:
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_03EF
.L_03F0:
cmp dword ptr [ebp-8], 0
je .L_03F4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
lea ebx, [CTX+2724]
push ebx
call LISTDELNODE
add esp, 8
jmp .L_03F3
.L_03F4:
mov dword ptr [ebp-4], 0
.L_03F3:
.L_03EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEMITINT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03F5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F7
mov dword ptr [ebp-28], 24
jmp .L_07CF
.L_03F7:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_07CF:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03FA
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03FB
mov dword ptr [ebp-32], 24
jmp .L_07D0
.L_03FB:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07D0:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_03FE
cmp dword ptr [ebp+16], 2147483648
jne .L_0400
cmp dword ptr [ebp+12], 0
jne .L_0400
.L_07D2:
push 0
push 2
push offset Lt_0401
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0400:
.L_03FF:
push 0
push 3
push offset Lt_0402
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_03FD
.L_03FE:
cmp dword ptr [ebp+16], 4294967295
jne .L_0404
cmp dword ptr [ebp+12], 2147483648
jne .L_0404
.L_07D3:
push 0
push 2
push offset Lt_0401
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0404:
.L_0403:
.L_03FD:
jmp .L_03F9
.L_03FA:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0405
mov dword ptr [ebp-32], 24
jmp .L_07D1
.L_0405:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07D1:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_0408
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_0409
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0407
.L_0408:
push 0
push -1
mov eax, dword ptr [ebp+12]
push eax
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0401
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0407:
.L_03F9:
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
.L_03F6:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HEMITFLOAT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_040A:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .L_040E
.L_040F:
cmp dword ptr [ebp-28], 4293918720
jne .L_040D
.L_040E:
cmp dword ptr [ebp+8], 16
jne .L_0411
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0413
push 0
push 19
push offset Lt_0414
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0412
.L_0413:
push 0
push 16
push offset Lt_0415
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0412:
jmp .L_0410
.L_0411:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0417
push 0
push 20
push offset Lt_0418
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0416
.L_0417:
push 0
push 17
push offset Lt_0419
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0416:
.L_0410:
jmp .L_040C
.L_040D:
cmp dword ptr [ebp-28], 2146959360
je .L_041B
.L_041C:
cmp dword ptr [ebp-28], 4294443008
jne .L_041A
.L_041B:
cmp dword ptr [ebp+8], 16
jne .L_041E
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0420
push 0
push 23
push offset Lt_0421
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_041F
.L_0420:
push 0
push 20
push offset Lt_0422
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_041F:
jmp .L_041D
.L_041E:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0424
push 0
push 24
push offset Lt_0425
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0423
.L_0424:
push 0
push 21
push offset Lt_0426
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0423:
.L_041D:
jmp .L_040C
.L_041A:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFLOATTOHEX_C99
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 15
jne .L_0429
push 0
push 2
push offset Lt_042A
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0429:
.L_0428:
.L_0427:
.L_040C:
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
.L_040B:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDSTRLIT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_042B:
push 0
push 2
push offset Lt_00C9
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-12], ecx
jmp .L_042E
.L_0431:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-8]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_0433
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push 3
push offset Lt_0434
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
push ebx
call HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .L_0437
push 0
push 4
push offset Lt_0438
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0437:
.L_0436:
jmp .L_0432
.L_0433:
cmp dword ptr [ebp-4], 63
jne .L_0439
push 0
push 2
push offset Lt_043A
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .L_043C
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-16], al
movzx eax, byte ptr [ebp-16]
cmp eax, 61
je .L_0447
.L_0448:
movzx eax, byte ptr [ebp-16]
cmp eax, 47
je .L_0447
.L_0449:
movzx eax, byte ptr [ebp-16]
cmp eax, 39
je .L_0447
.L_044A:
movzx eax, byte ptr [ebp-16]
cmp eax, 40
je .L_0447
.L_044B:
movzx eax, byte ptr [ebp-16]
cmp eax, 41
je .L_0447
.L_044C:
movzx eax, byte ptr [ebp-16]
cmp eax, 33
je .L_0447
.L_044D:
movzx eax, byte ptr [ebp-16]
cmp eax, 60
je .L_0447
.L_044E:
movzx eax, byte ptr [ebp-16]
cmp eax, 62
je .L_0447
.L_044F:
movzx eax, byte ptr [ebp-16]
cmp eax, 45
jne .L_043F
.L_0447:
push 0
push 4
push offset Lt_0438
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_043F:
.L_043D:
.L_043C:
.L_043B:
jmp .L_0432
.L_0439:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0432:
.L_042F:
inc dword ptr [ebp-8]
.L_042E:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_0431
.L_0430:
push 0
push 2
push offset Lt_00C9
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_042C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDWSTRLIT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0450:
push 0
push 3
push offset Lt_0452
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .L_0454
.L_0457:
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_0459
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push 3
push offset Lt_0434
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
push dword ptr [ecx+4]
call HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .L_045C
push 0
push 5
push offset Lt_045D
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_045C:
.L_045B:
jmp .L_0458
.L_0459:
cmp dword ptr [ebp-4], 63
jne .L_045E
push 0
push 2
push offset Lt_043A
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
cmp dword ptr [ecx+4], 63
jne .L_0460
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add eax, ecx
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 61
je .L_0464
.L_0465:
cmp dword ptr [ebp-20], 47
je .L_0464
.L_0466:
cmp dword ptr [ebp-20], 39
je .L_0464
.L_0467:
cmp dword ptr [ebp-20], 40
je .L_0464
.L_0468:
cmp dword ptr [ebp-20], 41
je .L_0464
.L_0469:
cmp dword ptr [ebp-20], 33
je .L_0464
.L_046A:
cmp dword ptr [ebp-20], 60
je .L_0464
.L_046B:
cmp dword ptr [ebp-20], 62
je .L_0464
.L_046C:
cmp dword ptr [ebp-20], 45
jne .L_0463
.L_0464:
push 0
push 5
push offset Lt_045D
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0463:
.L_0461:
.L_0460:
.L_045F:
jmp .L_0458
.L_045E:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0458:
.L_0455:
inc dword ptr [ebp-12]
.L_0454:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0457
.L_0456:
push 0
push 2
push offset Lt_00C9
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0451:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBOPTOSTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_046D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0470
.L_0472:
mov eax, offset Lt_0473
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0474:
mov eax, offset Lt_0475
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0476:
mov eax, offset Lt_0477
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0478:
mov eax, offset Lt_0479
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_047A:
mov eax, offset Lt_0479
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_047B:
mov eax, offset Lt_047C
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_047D:
mov eax, offset Lt_047E
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_047F:
mov eax, offset Lt_0480
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0481:
mov eax, offset Lt_0482
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0483:
mov eax, offset Lt_0484
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0485:
mov eax, offset Lt_0486
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0487:
mov eax, offset Lt_0488
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0489:
mov eax, offset Lt_048A
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_048B:
mov eax, offset Lt_048C
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_048D:
mov eax, offset Lt_048E
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_048F:
mov eax, offset Lt_0490
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0491:
mov eax, offset Lt_0492
mov dword ptr [ebp-4], eax
jmp .L_046F
.L_0470:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_046F
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0493+eax*4-112]
.L_0493:
.int .L_0472
.int .L_0474
.int .L_0476
.int .L_0478
.int .L_047A
.int .L_047B
.int .L_0481
.int .L_0483
.int .L_046F
.int .L_046F
.int .L_0485
.int .L_046F
.int .L_046F
.int .L_047D
.int .L_047F
.int .L_046F
.int .L_046F
.int .L_0487
.int .L_0489
.int .L_048B
.int .L_048D
.int .L_048F
.int .L_0491
.L_046F:
.L_046E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HUOPTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0494:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .L_0497
.L_0498:
mov eax, offset Lt_0499
mov dword ptr [ebp-4], eax
jmp .L_0496
.L_0497:
cmp dword ptr [ebp+8], 76
jne .L_049A
.L_049B:
mov eax, offset Lt_0348
mov dword ptr [ebp-4], eax
jmp .L_0496
.L_049A:
cmp dword ptr [ebp+8], 54
jne .L_049C
.L_049D:
mov eax, offset Lt_0446
mov dword ptr [ebp-4], eax
jmp .L_0496
.L_049C:
cmp dword ptr [ebp+8], 52
jne .L_049E
.L_049F:
mov eax, offset Lt_04A0
mov dword ptr [ebp-4], eax
jmp .L_0496
.L_049E:
cmp dword ptr [ebp+8], 56
jne .L_04A1
.L_04A2:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_04A3
mov dword ptr [ebp-8], 24
jmp .L_07D4
.L_04A3:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07D4:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_04A6
.L_04A8:
mov ebx, offset Lt_04A9
mov dword ptr [ebp-4], ebx
jmp .L_04A5
.L_04AA:
mov ebx, offset Lt_04AB
mov dword ptr [ebp-4], ebx
jmp .L_04A5
.L_04AC:
mov ebx, offset Lt_04AD
mov dword ptr [ebp-4], ebx
jmp .L_04A5
.L_04AE:
mov ebx, offset Lt_04AF
mov dword ptr [ebp-4], ebx
jmp .L_04A5
.L_04A6:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .L_04AE
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_04B0+ebx*4-28]
.L_04B0:
.int .L_04AC
.int .L_04AC
.int .L_04A8
.int .L_04AA
.L_04A5:
jmp .L_0496
.L_04A1:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .L_04B3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04B5
.L_04B7:
mov ebx, offset Lt_04B8
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04B9:
mov ebx, offset Lt_04BA
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04BB:
mov ebx, offset Lt_04BC
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04BD:
mov ebx, offset Lt_04BE
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04BF:
mov ebx, offset Lt_04C0
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04C1:
mov ebx, offset Lt_04C2
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04C3:
mov ebx, offset Lt_04C4
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04C5:
mov ebx, offset Lt_04C6
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04C7:
mov ebx, offset Lt_04C8
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04C9:
mov ebx, offset Lt_04CA
mov dword ptr [ebp-4], ebx
jmp .L_04B4
.L_04CB:
jmp .L_04B4
.L_04B5:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04CB
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_04CC+ebx*4-232]
.L_04CC:
.int .L_04B7
.int .L_04B9
.int .L_04BB
.int .L_04BD
.int .L_04BF
.int .L_04C1
.int .L_04CB
.int .L_04C3
.int .L_04CB
.int .L_04CB
.int .L_04C5
.int .L_04C7
.int .L_04C9
.L_04B4:
jmp .L_04B2
.L_04B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04CE
.L_04D0:
mov ebx, offset Lt_04D1
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04D2:
mov ebx, offset Lt_04D3
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04D4:
mov ebx, offset Lt_04D5
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04D6:
mov ebx, offset Lt_04D7
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04D8:
mov ebx, offset Lt_04D9
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04DA:
mov ebx, offset Lt_04DB
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04DC:
mov ebx, offset Lt_04DD
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04DE:
mov ebx, offset Lt_04DF
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04E0:
mov ebx, offset Lt_04E1
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04E2:
mov ebx, offset Lt_04E3
mov dword ptr [ebp-4], ebx
jmp .L_04CD
.L_04E4:
jmp .L_04CD
.L_04CE:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04E4
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_04E5+ebx*4-232]
.L_04E5:
.int .L_04D0
.int .L_04D2
.int .L_04D4
.int .L_04D6
.int .L_04D8
.int .L_04DA
.int .L_04E4
.int .L_04DC
.int .L_04E4
.int .L_04E4
.int .L_04DE
.int .L_04E0
.int .L_04E2
.L_04CD:
.L_04B2:
.L_04B1:
.L_0496:
.L_0495:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HIMM2TEXT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_04E6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04E8
mov dword ptr [ebp-4], 24
jmp .L_07D5
.L_04E8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_07D5:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_04EB
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITFLOAT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_04EA
.L_04EB:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITINT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_04EA:
.L_04E7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYM2TEXT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04EE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_04F1
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_04F3
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
push edx
push eax
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDWSTRLIT
add esp, 16
jmp .L_04F2
.L_04F3:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDSTRLIT
add esp, 16
.L_04F2:
jmp .L_04F0
.L_04F1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .L_04F7
push 0
push 3
push offset Lt_04F8
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_04F6
.L_04F7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_04F9
push 0
push 2
push offset Lt_0499
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_04F9:
.L_04F6:
push 0
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_04F0:
.L_04EF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_04FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_04FE
.L_0500:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
lea ebx, [CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
jmp .L_04FD
.L_0502:
push dword ptr [ebp+8]
lea eax, [CTX+2712]
push eax
call HIMM2TEXT
add esp, 8
jmp .L_04FD
.L_0503:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
lea eax, [CTX+2712]
push eax
call HSYM2TEXT
add esp, 8
jmp .L_04FD
.L_0504:
push 0
push -1
push -1
push 2
push offset Lt_013E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push 2
push offset Lt_0442
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
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
jmp .L_04FD
.L_0508:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .L_050B
.L_050C:
push 0
push 19
push offset Lt_050D
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0149
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0509
.L_050B:
cmp dword ptr [ebp-20], 109
jne .L_050F
.L_0510:
push 0
push 21
push offset Lt_0511
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0149
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0509
.L_050F:
cmp dword ptr [ebp-20], 110
jne .L_0512
.L_0513:
push 0
push 19
push offset Lt_0514
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_0509
.L_0512:
cmp dword ptr [ebp-20], 111
jne .L_0515
.L_0516:
push 0
push 20
push offset Lt_0517
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0149
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_0515:
.L_0518:
.L_0509:
jmp .L_04FD
.L_0519:
push 0
push -1
push 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call HUOPTOSTR
add esp, 12
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_051C
push 0
push 2
push offset Lt_0442
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp-12], 0
je .L_051E
push 0
push 2
push offset Lt_00DF
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_051E:
.L_051D:
.L_051C:
.L_051B:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_0520
cmp dword ptr [ebp-12], 0
je .L_0522
push 0
push 2
push offset Lt_00DF
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_0522:
.L_0521:
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_0520:
.L_051F:
jmp .L_04FD
.L_0523:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .L_0526
.L_0527:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0529
push 0
push 17
push offset Lt_052A
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
jmp .L_0528
.L_0529:
push 0
push 16
push offset Lt_052B
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
.L_0528:
push 0
push 2
push offset Lt_0442
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push 3
push offset Lt_0149
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call HEXPRFLUSH
add esp, 8
push 0
push 2
push offset Lt_013E
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
jmp .L_0524
.L_0526:
cmp dword ptr [ebp+12], 0
je .L_052E
push 0
push 2
push offset Lt_0442
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatByref
add esp, 20
.L_052E:
.L_052D:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 8
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call HBOPTOSTR
add esp, 4
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_0531
push 0
push 2
push offset Lt_013E
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatByref
add esp, 20
.L_0531:
.L_0530:
.L_052C:
.L_0524:
jmp .L_04FD
.L_04FE:
cmp dword ptr [ebp-16], 6
ja .L_04FD
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0532+eax*4]
.L_0532:
.int .L_0500
.int .L_0502
.int .L_0503
.int .L_0504
.int .L_0519
.int .L_0523
.int .L_0508
.L_04FD:
.L_04FC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0533:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEXPRFLUSH
add esp, 8
push 0
push -1
lea eax, [CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call EXPRFREETREE
add esp, 4
.L_0534:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWOFFSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0535:
push dword ptr [ebp+8]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 4
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
test ebx, ebx
jne .L_0538
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0538:
.L_0537:
cmp dword ptr [ebp+16], 0
jne .L_07DA
cmp dword ptr [ebp+12], 0
je .L_053A
.L_07DA:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_053A:
.L_0539:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0536:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
EXPRNEWVREG:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_053B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_053E
.L_0540:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .L_0542
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .L_0544
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+48]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_07E2
cmp dword ptr [eax+36], 0
je .L_0546
.L_07E2:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0546:
.L_0545:
jmp .L_0543
.L_0544:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.L_0543:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_053D
.L_0542:
.L_0541:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ebx, -1
jne .L_07E3
cmp dword ptr [eax+36], 0
jne .L_07E3
.L_07E4:
xor ebx, ebx
.L_07E3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBISCARRAY
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp-36]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0548
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0549
mov dword ptr [ebp-40], 24
jmp .L_07DB
.L_0549:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07DB:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_054B
mov dword ptr [ebp-44], 24
jmp .L_07DC
.L_054B:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07DC:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_054D
mov dword ptr [ebp-52], 24
jmp .L_07DE
.L_054D:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_07DE:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .L_0551
.L_0552:
mov dword ptr [ebp-28], -1
jmp .L_054F
.L_0551:
cmp dword ptr [ebp-56], 20
jne .L_0553
.L_0554:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .L_054F
.L_0553:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0556
mov dword ptr [ebp-60], 24
jmp .L_07DF
.L_0556:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07DF:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .L_055A
.L_055B:
mov dword ptr [ebp-28], -1
jmp .L_0558
.L_055A:
cmp dword ptr [ebp-64], 20
jne .L_055C
.L_055D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.L_055C:
.L_0558:
.L_0555:
.L_054F:
.L_0548:
.L_0547:
cmp dword ptr [ebp-28], 0
jne .L_055F
jmp .L_053D
.L_055F:
.L_055E:
cmp dword ptr [ebp-24], 0
jne .L_0561
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0561:
.L_0560:
cmp dword ptr [ebp-16], 0
je .L_0563
cmp dword ptr [ebp-24], 0
je .L_0565
push dword ptr [ebp-8]
push 0
push 8
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0564
.L_0565:
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_0564:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_0567
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0567:
.L_0566:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_07EB
cmp dword ptr [eax+36], 0
je .L_0569
.L_07EB:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.L_0569:
.L_0568:
.L_0563:
.L_0562:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32505856
or ecx, ebx
push ecx
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_053D
.L_056A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_053D
.L_056B:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_056C
mov dword ptr [ebp-24], 24
jmp .L_07E0
.L_056C:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_07E0:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .L_056F
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_056E
.L_056F:
cmp dword ptr [ebp-12], 1
jne .L_0570
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_07EC
cmp dword ptr [eax+24], 0
je .L_0571
.L_07EC:
mov dword ptr [ebp-28], 1
jmp .L_07E1
.L_0571:
mov dword ptr [ebp-28], 0
.L_07E1:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_056E
.L_0570:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.L_056E:
jmp .L_053D
.L_0573:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRLOOKUP
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0575
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_0576
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-8], eax
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
.L_0575:
.L_0574:
jmp .L_053D
.L_053E:
cmp dword ptr [ebp-20], 5
ja .L_053D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0579+eax*4]
.L_0579:
.int .L_056B
.int .L_0540
.int .L_0540
.int .L_0540
.int .L_0573
.int .L_056A
.L_053D:
cmp dword ptr [ebp+12], 0
jne .L_057B
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_057B:
.L_057A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_053C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABEL:
push ebp
mov ebp, esp
sub esp, 24
.L_057C:
call SECTIONINSIDEPROC
test eax, eax
je .L_057F
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 3
push offset Lt_0580
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_057F:
.L_057E:
.L_057D:
mov esp, ebp
pop ebp
ret
.balign 16
EXPRSTORE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0583:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0586
cmp dword ptr [ebp+16], 0
je .L_0588
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_0576
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_07ED
call fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
push -1
push offset Lt_07EE
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00DF
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset Lt_07ED
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_01CA
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_018C
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07EE
call HWRITELINE
add esp, 8
push dword ptr [Lt_07ED]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp+12], eax
jmp .L_0587
.L_0588:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.L_0587:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRCACHE
add esp, 8
jmp .L_0585
.L_0586:
push -1
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_058B
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.L_058B:
.L_058A:
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EE
call fb_StrAssign
add esp, 20
push 0
push 4
push offset Lt_01CA
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_018C
push -1
push offset Lt_07EE
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07EE
call HWRITELINE
add esp, 8
.L_0585:
.L_0584:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_07EE,12
.balign 4
	.lcomm	Lt_07ED,12

.section .text
.balign 16
_EMITBOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_058C:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_058F
push 0
push 5
push offset Lt_0590
push -1
push offset Lt_07F2
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_07F2
call fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset Lt_0591
push -1
push offset Lt_07F2
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_07F2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_07F2
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_018C
push -1
push offset Lt_07F2
call fb_StrConcatAssign
add esp, 20
push 0
push offset Lt_07F2
call HWRITELINE
add esp, 8
jmp .L_058D
.L_058F:
.L_058E:
cmp dword ptr [ebp+20], 0
jne .L_0594
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0594:
.L_0593:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0596
.L_0598:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .L_059A
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_059A:
.L_0599:
jmp .L_0595
.L_059B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059D
push dword ptr [ebp-4]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
.L_059D:
.L_059C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059F
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.L_059F:
.L_059E:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0595
.L_05A0:
push dword ptr [ebp-4]
push 0
push 16
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push 0
push 16
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0595
.L_05A1:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0595
.L_05A2:
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05A3
mov dword ptr [ebp-16], 24
jmp .L_07F1
.L_05A3:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_07F1:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 34
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0595
.L_05A5:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A7
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05A6
.L_05A7:
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05A6:
jmp .L_0595
.L_05A8:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05AA
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05A9
.L_05AA:
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05A9:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0595
.L_0596:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .L_0595
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_05AB+eax*4-112]
.L_05AB:
.int .L_059B
.int .L_059B
.int .L_05A1
.int .L_05A0
.int .L_05A1
.int .L_05A1
.int .L_05A1
.int .L_05A1
.int .L_0595
.int .L_0595
.int .L_05A1
.int .L_05A5
.int .L_05A8
.int .L_05A2
.int .L_05A2
.int .L_0595
.int .L_0595
.int .L_0598
.int .L_0598
.int .L_0598
.int .L_0598
.int .L_0598
.int .L_0598
.L_0595:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 12
.L_058D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_07F2,12

.section .text
.balign 16
_EMITUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05AC:
cmp dword ptr [ebp+16], 0
jne .L_05AF
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.L_05AF:
.L_05AE:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_05B1
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 45
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05B0
.L_05B1:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05B0:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_05B2:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_05B5
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .L_05B7
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+24], 0
mov ebx, -1
jne .L_07FE
cmp dword ptr [ecx+20], 0
jne .L_07FE
.L_07FF:
xor ebx, ebx
.L_07FE:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B6
.L_05B7:
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.L_05B6:
jmp .L_05B4
.L_05B5:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_05B8
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_05BA
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_05BB
mov dword ptr [ebp-16], 24
jmp .L_07F5
.L_05BB:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07F5:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_05BD
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+20]
fld qword ptr [Lt_07F7]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_07F6
.L_05BD:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+24], 0
mov ecx, -1
jne .L_0803
cmp dword ptr [ebx+20], 0
jne .L_0803
.L_0804:
xor ecx, ecx
.L_0803:
mov dword ptr [ebp-20], ecx
.L_07F6:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B9
.L_05BA:
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 48
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.L_05B9:
jmp .L_05B4
.L_05B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C0
mov dword ptr [ebp-8], 24
jmp .L_07F8
.L_05C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07F8:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_05C2
mov dword ptr [ebp-12], 24
jmp .L_07F9
.L_05C2:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07F9:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_05BF
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C4
mov dword ptr [ebp-36], 24
jmp .L_07FB
.L_05C4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_07FB:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .L_05C8
.L_05C9:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05CB
push 0
push 7
push offset Lt_05CC
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 1
jmp .L_05CA
.L_05CB:
push 0
push 7
push offset Lt_05CD
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 8
.L_05CA:
mov dword ptr [ebp-32], 11
jmp .L_05C6
.L_05C8:
cmp dword ptr [ebp-40], 7
jg .L_05CE
.L_05CF:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D1
push 0
push 7
push offset Lt_05D2
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 2
jmp .L_05D0
.L_05D1:
push 0
push 7
push offset Lt_05D3
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 16
.L_05D0:
mov dword ptr [ebp-32], 13
jmp .L_05C6
.L_05CE:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D6
push 0
push 8
push offset Lt_05D7
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 4
jmp .L_05D5
.L_05D6:
push 0
push 8
push offset Lt_05D8
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
or dword ptr [CTX+2604], 32
.L_05D5:
mov dword ptr [ebp-32], 14
.L_05D4:
.L_05C6:
push 0
push 3
push offset Lt_00E7
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_00E8
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_05BF:
.L_05B4:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 12
.L_05B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORE:
push ebp
mov ebp, esp
.L_05D9:
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 12
.L_05DA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSPILLREGS:
.L_05DB:
.L_05DC:
ret
.balign 16
_EMITLOAD:
push ebp
mov ebp, esp
.L_05DD:
.L_05DE:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 36
.L_05DF:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _EMITSTORE
add esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 8
push offset Lt_05E1
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
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_05E0:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05E5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_05E8
.L_05E9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_05EB
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .L_05ED
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_05E7
.L_05ED:
.L_05EC:
.L_05EB:
.L_05EA:
push -1
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push 22
call EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_05E7
.L_05E8:
cmp dword ptr [ebp+8], 76
jne .L_05EE
.L_05EF:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
.L_05EE:
.L_05E7:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05E6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOCALL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_05F0:
push 0
push 3
push offset Lt_00E7
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.L_05F2:
cmp dword ptr [ebp-4], 0
je .L_05F4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+20]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0809
.L_05F4:
mov dword ptr [ebp-16], 0
.L_0809:
cmp dword ptr [ebp-16], 0
je .L_05F3
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-20], eax
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_05F6
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 4
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .L_080A
.L_05F6:
mov dword ptr [ebp-28], 0
.L_080A:
cmp dword ptr [ebp-28], 0
je .L_05F9
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-24], eax
.L_05F9:
.L_05F8:
push 0
push -1
push 0
push dword ptr [ebp-24]
call EXPRFLUSH
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
push dword ptr [ebp-4]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 8
cmp dword ptr [ebp-20], 0
je .L_05FB
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .L_05FD
push 0
push 3
push offset Lt_0149
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_05FD:
.L_05FC:
.L_05FB:
.L_05FA:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_05F2
.L_05F3:
push 0
push 3
push offset Lt_00E8
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
cmp dword ptr [ebp+16], 0
jne .L_05FF
push 0
push 2
push offset Lt_018C
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
push 0
push dword ptr [ebp+8]
call HWRITELINE
add esp, 8
jmp .L_05FE
.L_05FF:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call EXPRNEWTEXT
add esp, 12
push eax
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 12
.L_05FE:
.L_05F1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALL:
push ebp
mov ebp, esp
.L_0600:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_080F
call fb_StrAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset Lt_080F
call HDOCALL
add esp, 16
.L_0601:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_080F,12

.section .text
.balign 16
_EMITCALLPTR:
push ebp
mov ebp, esp
.L_0602:
push 0
push 2
push offset Lt_0442
push -1
push offset Lt_0810
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push offset Lt_0810
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_013E
push -1
push offset Lt_0810
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset Lt_0810
call HDOCALL
add esp, 16
.L_0603:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0810,12

.section .text
.balign 16
_EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 36
.L_0604:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push -1
push -1
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 7
push offset Lt_0606
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
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0605:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 36
.L_060A:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_060C
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
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_060B:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.L_0610:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-44], ebx
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+24], 0
jg .L_0613
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_060C
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0617
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-316]
push eax
call fb_StrDelete
add esp, 4
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
jmp .L_0611
.L_0613:
.L_0612:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset Lt_061C
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset Lt_01AC
push -1
push -1
lea eax, [ebp-12]
push eax
push 20
push offset Lt_061B
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.L_0622:
mov dword ptr [ebp-248], 0
mov esi, dword ptr [ebp-112]
mov eax, esi
sar eax, 31
mov ecx, dword ptr [ebp-108]
sal ecx, 3
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov edi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
cmp eax, ecx
jne .L_0626
cmp esi, edi
jne .L_0626
.L_0811:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .L_0625
.L_0626:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.L_0625:
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset Lt_0627
push -1
push 0
push dword ptr [ebp-248]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 3
push offset Lt_04F8
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 4
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .L_062C
cmp edi, esi
jne .L_062C
.L_0812:
jmp .L_0623
.L_062C:
.L_062B:
inc dword ptr [ebp-112]
.L_0624:
jmp .L_0622
.L_0623:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset Lt_020E
push -1
lea esi, [ebp-124]
push esi
call fb_StrAssign
add esp, 20
lea esi, [ebp-124]
push esi
call HWRITELINE
add esp, 8
lea esi, [ebp-124]
push esi
call fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .L_0813
cmp dword ptr [ebp+32], 0
je .L_062F
.L_0813:
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
.L_062F:
.L_062E:
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 46
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 9
push offset Lt_0591
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push 5
push offset Lt_0590
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push 3
push offset Lt_024E
push -1
push -1
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset Lt_01AC
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0606
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-244]
push eax
call fb_StrDelete
add esp, 4
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
.L_0611:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMEM:
push ebp
mov ebp, esp
sub esp, 84
.L_063A:
cmp dword ptr [ebp+8], 107
jne .L_063D
.L_063E:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset Lt_00D5
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push 6
push offset Lt_0640
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 19
push offset Lt_063F
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
jmp .L_063C
.L_063D:
cmp dword ptr [ebp+8], 105
jne .L_0646
.L_0647:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 4
push offset Lt_00D5
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call fb_ULongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0149
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push -1
push 3
push offset Lt_0149
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
call EXPRFLUSH
add esp, 8
push eax
push 19
push offset Lt_0648
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
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
.L_0646:
.L_063C:
.L_063B:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMACRO:
push ebp
mov ebp, esp
sub esp, 32
.L_0650:
cmp dword ptr [ebp+8], 109
jne .L_0653
.L_0654:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0652
.L_0653:
cmp dword ptr [ebp+8], 110
jne .L_0657
.L_0658:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0652
.L_0657:
cmp dword ptr [ebp+8], 112
jne .L_065B
.L_065C:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 12
jmp .L_0652
.L_065B:
cmp dword ptr [ebp+8], 111
jne .L_065D
.L_065E:
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
.L_065D:
.L_0652:
.L_0651:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDECL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0661:
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0664
jmp .L_0662
.L_0664:
.L_0663:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0666
push dword ptr [ebp-4]
call HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .L_0668
jmp .L_0662
.L_0668:
.L_0667:
.L_0666:
.L_0665:
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 4
.L_0662:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDBG:
push ebp
mov ebp, esp
.L_0669:
cmp dword ptr [ebp+8], 113
jne .L_066C
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .L_066E
push dword ptr [ebp+20]
call HUPDATECURRENTFILENAME
add esp, 4
.L_066E:
.L_066D:
.L_066C:
.L_066B:
.L_066A:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCOMMENT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_066F:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0814
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_0814
call fb_TRIM
add esp, 4
push eax
push -1
push offset Lt_0814
call fb_StrAssign
add esp, 20
push -1
push offset Lt_0814
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .L_0672
mov eax, dword ptr [Lt_0814]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .L_0674
push 0
push 14
push offset Lt_0675
push -1
push offset Lt_0814
call fb_StrConcatAssign
add esp, 20
.L_0674:
.L_0673:
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push offset Lt_0814
push 4
push offset Lt_0676
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
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
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_0672:
.L_0671:
.L_0670:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0814,12

.section .text
.balign 16
HFINDLABELINSEENLIST:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0679:
push dword ptr [ebp+8]
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
.L_067B:
cmp dword ptr [ebp-8], 0
jne .L_067F
jmp .L_067C
.L_067F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax], ebx
jne .L_0681
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_067C
.L_0681:
.L_0680:
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-16]
.L_067D:
jmp .L_067B
.L_067C:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_067A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 156
push ebx
.L_0682:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-44]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
push -1
push 4
push 8
lea eax, [ebp-44]
push eax
call LISTINIT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0684:
cmp dword ptr [ebp-48], 0
je .L_0685
mov eax, dword ptr [ebp-48]
cmp dword ptr [eax], 1
jne .L_0687
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 7
jne .L_068A
.L_068B:
mov dword ptr [ebp-4], -1
jmp .L_0688
.L_068A:
cmp dword ptr [ebp-116], 1
jne .L_068C
.L_068D:
inc dword ptr [ebp-8]
.L_068C:
.L_0688:
.L_0687:
.L_0686:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0684
.L_0685:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
push 0
push 8
push offset Lt_068E
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrInit
add esp, 20
call SECTIONINSIDEPROC
test eax, eax
je .L_0690
push 0
push 14
push offset Lt_0691
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0690:
.L_068F:
cmp dword ptr [ebp-4], 0
je .L_0693
push 0
push 6
push offset Lt_0694
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0693:
.L_0692:
push 0
push 3
push offset Lt_00E7
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0695:
cmp dword ptr [ebp-48], 0
je .L_0696
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 0
jne .L_0699
.L_069A:
push 0
push -1
push 0
mov ebx, dword ptr [ebp-48]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-72]
push ebx
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea ebx, [ebp-128]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0697
.L_0699:
cmp dword ptr [ebp-116], 1
jne .L_069C
.L_069D:
cmp dword ptr [ENV+132], 0
jne .L_069F
call SECTIONINSIDEPROC
test eax, eax
je .L_06A1
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-120], eax
cmp dword ptr [ebp-120], 1
jne .L_06A4
.L_06A5:
push 0
push 2
push offset Lt_06A6
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [ebp-76]
cmp dword ptr [ebp-4], 0
je .L_06A8
push -1
lea eax, [ebp-100]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06AA
push 0
push 3
push offset Lt_0149
push -1
lea eax, [ebp-100]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06AA:
.L_06A9:
push 0
push -1
push -1
push 2
push offset Lt_013E
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset Lt_06AB
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
jmp .L_06A7
.L_06A8:
push -1
lea eax, [ebp-88]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06B0
push 0
push 3
push offset Lt_0149
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06B0:
.L_06AF:
push 0
push -1
push -1
push 2
push offset Lt_013E
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset Lt_06B1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
.L_06A7:
jmp .L_06A2
.L_06A4:
cmp dword ptr [ebp-120], 7
jne .L_06B5
.L_06B6:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-128], ebx
push dword ptr [ebp-128]
lea ebx, [ebp-44]
push ebx
call HFINDLABELINSEENLIST
add esp, 8
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], -1
je .L_06B8
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-132]
mov dword ptr [ebp-124], eax
jmp .L_06B7
.L_06B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-124], eax
inc dword ptr [ebp-8]
lea eax, [ebp-44]
push eax
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-128]
mov dword ptr [eax], ebx
push -1
lea ebx, [ebp-112]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jle .L_06BA
push 0
push 3
push offset Lt_0149
push -1
lea eax, [ebp-112]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06BA:
.L_06B9:
push 0
push -1
push 0
push dword ptr [ebp-128]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-112]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
.L_06B7:
push 0
push 3
push offset Lt_06BC
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-124]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06A2
.L_06B5:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_06BD:
.L_06A2:
jmp .L_06A0
.L_06A1:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_06A0:
jmp .L_069E
.L_069F:
push 0
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
.L_069E:
.L_069C:
.L_0697:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0695
.L_0696:
lea ebx, [ebp-44]
push ebx
call LISTEND
add esp, 4
cmp dword ptr [ENV+132], 0
jne .L_06C2
push -1
lea ebx, [ebp-72]
push ebx
call fb_StrLen
add esp, 8
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-72]
lea ecx, [ebp-60]
push ecx
call HBUILDSTRLIT
add esp, 16
call SECTIONINSIDEPROC
test eax, eax
je .L_06C4
push 0
push 4
push offset Lt_06C5
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset Lt_06C5
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-100]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 18
push offset Lt_06C6
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 0
je .L_06CA
.L_06CB:
cmp dword ptr [ebp-116], 1
jne .L_06C9
.L_06CA:
call FBGETCPUFAMILY
test eax, eax
jne .L_06CD
push 0
push 43
push offset Lt_06CE
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_06CC
.L_06CD:
push 0
push 43
push offset Lt_06CF
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset Lt_06D0
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06CC:
cmp dword ptr [ENV+116], 1
jne .L_06D2
push 0
push 57
push offset Lt_06D3
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 65
push offset Lt_06D4
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
cmp eax, 1
jne .L_06D6
push 0
push 71
push offset Lt_06D7
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06D6:
.L_06D5:
.L_06D2:
.L_06D1:
jmp .L_06C7
.L_06C9:
cmp dword ptr [ebp-116], 2
je .L_06D9
.L_06DA:
cmp dword ptr [ebp-116], 3
jne .L_06D8
.L_06D9:
push 0
push 43
push offset Lt_06DB
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset Lt_06D0
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
call FBGETCPUFAMILY
cmp eax, 3
jne .L_06DD
push 0
push 29
push offset Lt_06DE
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 64
push offset Lt_06DF
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset Lt_06E0
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06DD:
.L_06DC:
.L_06D8:
.L_06C7:
cmp dword ptr [ebp-4], 0
je .L_06E2
push 0
push 4
push offset Lt_06C5
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-112]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06E2:
.L_06E1:
.L_06C4:
.L_06C3:
jmp .L_06C1
.L_06C2:
push 0
push -1
lea eax, [ebp-72]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
.L_06C1:
push 0
push 4
push offset Lt_00D5
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
.L_0683:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
.L_06E3:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [CTX+2652], 0
.L_06E4:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIEND:
push ebp
mov ebp, esp
.L_06E5:
push dword ptr [CTX+2640]
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 20
.L_06E6:
mov esp, ebp
pop ebp
ret
.balign 16
HVARINISEPARATOR:
.L_06E7:
cmp dword ptr [CTX+2652], 0
jle .L_06EA
push 0
push 3
push offset Lt_0149
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_06EA:
.L_06E9:
.L_06E8:
ret
.balign 16
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06EB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+16], 0
mov eax, -1
jne .L_0816
cmp dword ptr [ebp+12], 0
jne .L_0816
.L_0817:
xor eax, eax
.L_0816:
and ebx, eax
je .L_06EE
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_06EE:
.L_06ED:
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F0
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_06F0:
.L_06EF:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F4
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_06F4:
.L_06F3:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06F2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F5:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_06F8
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-8], eax
.L_06F8:
.L_06F7:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push -1
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06F6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_06F9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_06FC
jg .L_0818
cmp dword ptr [ebp+20], ebx
jbe .L_06FC
.L_0818:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_06FC:
.L_06FB:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
push eax
push ebx
mov dword ptr [ebp-4], 0
lea ebx, [ebp-4]
push ebx
push dword ptr [ebp+16]
call HUNESCAPE
add esp, 8
push eax
lea eax, [CTX+2640]
push eax
call HBUILDSTRLIT
add esp, 16
call HVARINISEPARATOR
.L_06FA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_06FE:
push 0
push 3
push offset Lt_0700
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
call HUNESCAPEW
add esp, 8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0703
jg .L_0819
cmp dword ptr [ebp+20], ebx
jbe .L_0703
.L_0819:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_0703:
.L_0702:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-20], ecx
jmp .L_0705
.L_0708:
cmp dword ptr [ebp-16], 0
jle .L_070A
push 0
push 3
push offset Lt_0149
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatByref
add esp, 20
.L_070A:
.L_0709:
push 0
push 3
push offset Lt_070B
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatByref
add esp, 20
mov ecx, dword ptr [ebp-16]
sal ecx, 2
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
push 39
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .L_070D
push 0
push 3
push offset Lt_0434
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_070C
.L_070D:
push 0
push -1
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_070C:
push 0
push 2
push offset Lt_0441
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_0706:
inc dword ptr [ebp-16]
.L_0705:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0708
.L_0707:
push 0
push 3
push offset Lt_070E
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
call HVARINISEPARATOR
.L_06FF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIPAD:
push ebp
mov ebp, esp
.L_070F:
.L_0710:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.L_0711:
inc dword ptr [CTX+2652]
push 0
push 3
push offset Lt_0700
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
.L_0712:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEEND:
.L_0713:
push 3
push offset Lt_0149
push -1
push 2
lea eax, [CTX+2640]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0716
push -1
lea eax, [CTX+2640]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2640]
push eax
call fb_LEFTSELF
add esp, 8
.L_0716:
.L_0715:
push 0
push 3
push offset Lt_070E
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatByref
add esp, 20
dec dword ptr [CTX+2652]
call HVARINISEPARATOR
.L_0714:
ret
.balign 16
_EMITFBCTINFBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_0717:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 0
push 19
push offset Lt_071A
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
push 3
call FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_071C
push 0
push 50
push offset Lt_0720
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
jmp .L_071B
.L_071C:
push 0
push 44
push offset Lt_0723
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
.L_071B:
push 0
push 16
push offset Lt_0724
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
.L_0718:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 24
.L_0725:
push 0
push -1
push -1
push 3
push offset Lt_0727
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [CTX+2656]
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
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
.L_0726:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFEND:
.L_072A:
push 3
push offset Lt_0727
push -1
push 2
lea eax, [CTX+2656]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_072D
push 0
push -1
push -1
lea eax, [CTX+2656]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2656]
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 20
.L_072D:
.L_072C:
push 0
push 3
push offset Lt_072E
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatByref
add esp, 20
push -1
lea eax, [CTX+2656]
push eax
call HWRITELINE
add esp, 8
.L_072B:
ret
.balign 16
_EMITPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.L_072F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call HUPDATECURRENTFILENAME
add esp, 4
call IRHLEMITPROCBEGIN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-24]
push ebx
call HWRITELINE
add esp, 8
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 4
cmp dword ptr [ENV+148], 0
je .L_0733
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call _EMITDBG
add esp, 16
.L_0733:
.L_0732:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0735
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 20
push offset Lt_02FA
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 5
push offset Lt_0738
push -1
push -1
lea eax, [ebp-12]
push eax
push 18
push offset Lt_0737
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
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 6
push offset Lt_073D
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset Lt_073C
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
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0730
.L_0735:
.L_0734:
call SECTIONBEGIN
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 4
test eax, eax
je .L_0742
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset Lt_018C
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_0742:
.L_0741:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 2
push offset Lt_0276
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0730:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPROCEND:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_0747:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_074A
cmp dword ptr [ENV+108], 2
jne .L_074C
push 0
push -1
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset Lt_0738
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset Lt_074E
push -1
push -1
lea eax, [ebp-12]
push eax
push 17
push offset Lt_074D
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
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_074C:
.L_074B:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0748
.L_074A:
.L_0749:
call SECTIONUNINDENT
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset Lt_0293
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
call SECTIONEND
.L_0755:
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0759
jmp .L_0756
.L_0759:
.L_0758:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call EXPRFREETREE
add esp, 4
push dword ptr [ebp-16]
lea eax, [CTX+2724]
push eax
call LISTDELNODE
add esp, 8
.L_0757:
jmp .L_0755
.L_0756:
call IRHLEMITPROCEND
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0748:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.L_075A:
call SECTIONBEGIN
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0276
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call SECTIONINDENT
.L_075B:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEEND:
push ebp
mov ebp, esp
sub esp, 12
.L_075D:
call SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0293
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
call SECTIONEND
.L_075E:
mov esp, ebp
pop ebp
ret
.balign 16
_GLOBAL__I:
.L_0761:
push offset CTX
call _ZN8IRHLCCTXC1Ev
add esp, 4
.L_0762:
ret
.balign 16
_GLOBAL__D:
.L_0764:
push offset CTX
call _ZN8IRHLCCTXD1Ev
add esp, 4
.L_0765:
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4

.globl IRHLC_VTBL
IRHLC_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.int _SUPPORTSOP
.int _PROCBEGIN
.int _PROCEND
.long 0
.long 0
.long 0
.int _SCOPEBEGIN
.int _SCOPEEND
.int _PROCALLOCSTATICVARS
.int _EMITCONVERT
.int _EMITLABEL
.int _EMITLABEL
.long 0
.int _EMITPROCBEGIN
.int _EMITPROCEND
.int IRHLEMITPUSHARG
.int _EMITASMLINE
.int _EMITCOMMENT
.int _EMITBOP
.int _EMITUOP
.int _EMITSTORE
.int _EMITSPILLREGS
.int _EMITLOAD
.int _EMITLOADRES
.long 0
.int _EMITADDR
.int _EMITCALL
.int _EMITCALLPTR
.long 0
.int _EMITJUMPPTR
.int _EMITBRANCH
.int _EMITJMPTB
.int _EMITMEM
.int _EMITMACRO
.int _EMITSCOPEBEGIN
.int _EMITSCOPEEND
.int _EMITDECL
.int _EMITDBG
.int _EMITVARINIBEGIN
.int _EMITVARINIEND
.int _EMITVARINII
.int _EMITVARINIF
.int _EMITVARINIOFS
.int _EMITVARINISTR
.int _EMITVARINIWSTR
.int _EMITVARINIPAD
.int _EMITVARINISCOPEBEGIN
.int _EMITVARINISCOPEEND
.int _EMITFBCTINFBEGIN
.int _EMITFBCTINFSTRING
.int _EMITFBCTINFEND
.int IRHLALLOCVREG
.int IRHLALLOCVRIMM
.int IRHLALLOCVRIMMF
.int IRHLALLOCVRVAR
.int IRHLALLOCVRIDX
.int IRHLALLOCVRPTR
.int IRHLALLOCVROFS
.int _SETVREGDATATYPE
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	CTX,2760

.section .data
.balign 4
DTYPENAME:
.int Lt_0087
.int Lt_0088
.int Lt_0089
.int Lt_008A
.int Lt_008B
.int Lt_008C
.int Lt_008D
.long 0
.long 0
.long 0
.long 0
.int Lt_008E
.int Lt_008F
.int Lt_0090
.int Lt_0091
.int Lt_0092
.int Lt_0093
.int Lt_0094
.long 0
.int Lt_0095
.long 0
.long 0
.long 0
.int Lt_0087
.long 0
.skip 4,0
.balign 4
Lt_0087:	.ascii	"void\0"
.balign 4
Lt_0088:	.ascii	"boolean\0"
.balign 4
Lt_0089:	.ascii	"int8\0"
.balign 4
Lt_008A:	.ascii	"uint8\0"
.balign 4
Lt_008B:	.ascii	"char\0"
.balign 4
Lt_008C:	.ascii	"int16\0"
.balign 4
Lt_008D:	.ascii	"uint16\0"
.balign 4
Lt_008E:	.ascii	"int32\0"
.balign 4
Lt_008F:	.ascii	"uint32\0"
.balign 4
Lt_0090:	.ascii	"int64\0"
.balign 4
Lt_0091:	.ascii	"uint64\0"
.balign 4
Lt_0092:	.ascii	"float\0"
.balign 4
Lt_0093:	.ascii	"double\0"
.balign 4
Lt_0094:	.ascii	"FBSTRING\0"
.balign 4
Lt_0095:	.ascii	"__builtin_va_list\0"
.balign 4
Lt_00A8:	.ascii	"\t\0"
.balign 4
Lt_00AE:	.ascii	"\n\0"
.balign 4
Lt_00C7:	.ascii	"#line \0"
.balign 4
Lt_00C8:	.ascii	" \"\0"
.balign 4
Lt_00C9:	.ascii	"\"\0"
.balign 4
Lt_00CC:	.ascii	"\\\0"
.balign 4
Lt_00CD:	.ascii	"\\\\\0"
.balign 4
Lt_00D2:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
Lt_00D4:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
Lt_00D5:	.ascii	" );\0"
.balign 4
Lt_00DF:	.ascii	" \0"
.balign 4
Lt_00E0:	.ascii	"__attribute__(( \0"
.balign 4
Lt_00E3:	.ascii	"constructor\0"
.balign 4
Lt_00E4:	.ascii	"destructor\0"
.balign 4
Lt_00E7:	.ascii	"( \0"
.balign 4
Lt_00E8:	.ascii	" )\0"
.balign 4
Lt_00EB:	.ascii	" ))\0"
.balign 4
Lt_00F2:	.ascii	"_\0"
.balign 4
Lt_00F8:	.ascii	"@\0"
.balign 4
Lt_0115:	.ascii	"static \0"
.balign 4
Lt_0124:	.ascii	" __stdcall\0"
.balign 4
Lt_0126:	.ascii	" __attribute__((stdcall))\0"
.balign 4
Lt_012E:	.ascii	" __thiscall\0"
.balign 4
Lt_0130:	.ascii	" __attribute__((thiscall))\0"
.balign 4
Lt_0138:	.ascii	" __fastcall\0"
.balign 4
Lt_013A:	.ascii	" __attribute__((fastcall))\0"
.balign 4
Lt_013D:	.ascii	"(*\0"
.balign 4
Lt_013E:	.ascii	")\0"
.balign 4
Lt_0149:	.ascii	", \0"
.balign 4
Lt_0152:	.ascii	"...\0"
.balign 4
Lt_0155:	.ascii	"char**\0"
.balign 4
Lt_0162:	.ascii	" asm(\"\0"
.balign 4
Lt_0163:	.ascii	"\")\0"
.balign 4
Lt_016A:	.ascii	"union \0"
.balign 4
Lt_016B:	.ascii	"struct \0"
.balign 4
Lt_0176:	.ascii	"$\0"
.balign 4
Lt_018B:	.ascii	"typedef \0"
.balign 4
Lt_018C:	.ascii	";\0"
.balign 4
Lt_01AC:	.ascii	"[\0"
.balign 4
Lt_01AD:	.ascii	"]\0"
.balign 4
Lt_01C0:	.ascii	"extern \0"
.balign 4
Lt_01C7:	.ascii	" __attribute__((common))\0"
.balign 4
Lt_01CA:	.ascii	" = \0"
.balign 4
Lt_0206:	.ascii	"union {\0"
.balign 4
Lt_0208:	.ascii	"struct {\0"
.balign 4
Lt_020E:	.ascii	"};\0"
.balign 4
Lt_0226:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
Lt_0227:	.ascii	")))\0"
.balign 4
Lt_0238:	.ascii	" __attribute__((aligned(\0"
.balign 4
Lt_0249:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
Lt_024A:	.ascii	" {\0"
.balign 4
Lt_024D:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
Lt_024E:	.ascii	"];\0"
.balign 4
Lt_0253:	.ascii	"sizeof( \0"
.balign 4
Lt_0254:	.ascii	" ) == \0"
.balign 4
Lt_0264:	.ascii	"l\0"
.balign 4
Lt_0267:	.ascii	"q\0"
.balign 4
Lt_026A:	.ascii	"s\0"
.balign 4
Lt_026C:	.ascii	"static inline \0"
.balign 4
Lt_026D:	.ascii	" fb_\0"
.balign 4
Lt_026E:	.ascii	" value )\0"
.balign 4
Lt_0276:	.ascii	"{\0"
.balign 4
Lt_0278:	.ascii	"volatile \0"
.balign 4
Lt_0279:	.ascii	" result;\0"
.balign 4
Lt_027D:	.ascii	"__asm__(\0"
.balign 4
Lt_027F:	.ascii	"\"fld\0"
.balign 4
Lt_0280:	.ascii	" %1;\"\0"
.balign 4
Lt_0284:	.ascii	"\"fistp\0"
.balign 4
Lt_0285:	.ascii	" %0;\"\0"
.balign 4
Lt_0289:	.ascii	":\"=m\" (result)\0"
.balign 4
Lt_028B:	.ascii	":\"m\" (value)\0"
.balign 4
Lt_028D:	.ascii	":\"st\"\0"
.balign 4
Lt_028F:	.ascii	");\0"
.balign 4
Lt_0291:	.ascii	"return result;\0"
.balign 4
Lt_0293:	.ascii	"}\0"
.balign 4
Lt_0299:	.ascii	"nearbyintf\0"
.balign 4
Lt_029A:	.ascii	"nearbyint\0"
.balign 4
Lt_029B:	.ascii	"#define fb_\0"
.balign 4
Lt_029C:	.ascii	"( value ) ((\0"
.balign 4
Lt_029D:	.ascii	")__builtin_\0"
.balign 4
Lt_029E:	.ascii	"( value ))\0"
.balign 4
Lt_02B2:	.ascii	"\t\"\0"
.balign 4
Lt_02B3:	.ascii	"\\t.ascii \0"
.balign 4
Lt_02B4:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
Lt_02B5:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
Lt_02B6:	.ascii	"\\n\0"
.balign 4
Lt_02B7:	.ascii	"\"\n\0"
.balign 4
Lt_02C0:	.ascii	"typedef   signed char       int8;\0"
.balign 4
Lt_02C2:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
Lt_02C4:	.ascii	"typedef   signed short      int16;\0"
.balign 4
Lt_02C6:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
Lt_02C8:	.ascii	"typedef   signed int        int32;\0"
.balign 4
Lt_02CA:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
Lt_02CC:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
Lt_02CE:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
Lt_02D2:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
Lt_02D4:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
Lt_02D6:	.ascii	"typedef int8 boolean;\0"
.balign 4
Lt_02DC:	.ascii	"F2I\0"
.balign 4
Lt_02E0:	.ascii	"F2L\0"
.balign 4
Lt_02E4:	.ascii	"F2UL\0"
.balign 4
Lt_02E8:	.ascii	"D2I\0"
.balign 4
Lt_02EC:	.ascii	"D2L\0"
.balign 4
Lt_02F0:	.ascii	"D2UL\0"
.balign 4
Lt_02F6:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
Lt_02FA:	.ascii	"__asm__( \".text\" );\0"
.balign 4
Lt_0308:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_0348:	.ascii	"*\0"
.balign 4
Lt_0401:	.ascii	"u\0"
.balign 4
Lt_0402:	.ascii	"ll\0"
.balign 4
Lt_0409:	.ascii	"ull\0"
.balign 4
Lt_0414:	.ascii	"(-__builtin_inf())\0"
.balign 4
Lt_0415:	.ascii	"__builtin_inf()\0"
.balign 4
Lt_0418:	.ascii	"(-__builtin_inff())\0"
.balign 4
Lt_0419:	.ascii	"__builtin_inff()\0"
.balign 4
Lt_0421:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
Lt_0422:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
Lt_0425:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
Lt_0426:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
Lt_042A:	.ascii	"f\0"
.balign 4
Lt_0434:	.ascii	"\\x\0"
.balign 4
Lt_0438:	.ascii	"\" \"\0"
.balign 4
Lt_043A:	.ascii	"?\0"
.balign 4
Lt_0441:	.ascii	"'\0"
.balign 4
Lt_0442:	.ascii	"(\0"
.balign 4
Lt_0446:	.ascii	"-\0"
.balign 4
Lt_0452:	.ascii	"L\"\0"
.balign 4
Lt_045D:	.ascii	"\" L\"\0"
.balign 4
Lt_0473:	.ascii	" + \0"
.balign 4
Lt_0475:	.ascii	" - \0"
.balign 4
Lt_0477:	.ascii	" * \0"
.balign 4
Lt_0479:	.ascii	" / \0"
.balign 4
Lt_047C:	.ascii	" % \0"
.balign 4
Lt_047E:	.ascii	" << \0"
.balign 4
Lt_0480:	.ascii	" >> \0"
.balign 4
Lt_0482:	.ascii	" & \0"
.balign 4
Lt_0484:	.ascii	" | \0"
.balign 4
Lt_0486:	.ascii	" ^ \0"
.balign 4
Lt_0488:	.ascii	" == \0"
.balign 4
Lt_048A:	.ascii	" > \0"
.balign 4
Lt_048C:	.ascii	" < \0"
.balign 4
Lt_048E:	.ascii	" != \0"
.balign 4
Lt_0490:	.ascii	" >= \0"
.balign 4
Lt_0492:	.ascii	" <= \0"
.balign 4
Lt_0499:	.ascii	"&\0"
.balign 4
Lt_04A0:	.ascii	"~\0"
.balign 4
Lt_04A9:	.ascii	"__builtin_fabsf\0"
.balign 4
Lt_04AB:	.ascii	"__builtin_fabs\0"
.balign 4
Lt_04AD:	.ascii	"__builtin_llabs\0"
.balign 4
Lt_04AF:	.ascii	"__builtin_abs\0"
.balign 4
Lt_04B8:	.ascii	"__builtin_sinf\0"
.balign 4
Lt_04BA:	.ascii	"__builtin_asinf\0"
.balign 4
Lt_04BC:	.ascii	"__builtin_cosf\0"
.balign 4
Lt_04BE:	.ascii	"__builtin_acosf\0"
.balign 4
Lt_04C0:	.ascii	"__builtin_tanf\0"
.balign 4
Lt_04C2:	.ascii	"__builtin_atanf\0"
.balign 4
Lt_04C4:	.ascii	"__builtin_sqrtf\0"
.balign 4
Lt_04C6:	.ascii	"__builtin_logf\0"
.balign 4
Lt_04C8:	.ascii	"__builtin_expf\0"
.balign 4
Lt_04CA:	.ascii	"__builtin_floorf\0"
.balign 4
Lt_04D1:	.ascii	"__builtin_sin\0"
.balign 4
Lt_04D3:	.ascii	"__builtin_asin\0"
.balign 4
Lt_04D5:	.ascii	"__builtin_cos\0"
.balign 4
Lt_04D7:	.ascii	"__builtin_acos\0"
.balign 4
Lt_04D9:	.ascii	"__builtin_tan\0"
.balign 4
Lt_04DB:	.ascii	"__builtin_atan\0"
.balign 4
Lt_04DD:	.ascii	"__builtin_sqrt\0"
.balign 4
Lt_04DF:	.ascii	"__builtin_log\0"
.balign 4
Lt_04E1:	.ascii	"__builtin_exp\0"
.balign 4
Lt_04E3:	.ascii	"__builtin_floor\0"
.balign 4
Lt_04F8:	.ascii	"&&\0"
.balign 4
Lt_050D:	.ascii	"__builtin_va_arg( \0"
.balign 4
Lt_0511:	.ascii	"__builtin_va_start( \0"
.balign 4
Lt_0514:	.ascii	"__builtin_va_end( \0"
.balign 4
Lt_0517:	.ascii	"__builtin_va_copy( \0"
.balign 4
Lt_052A:	.ascii	"__builtin_atan2f\0"
.balign 4
Lt_052B:	.ascii	"__builtin_atan2\0"
.balign 4
Lt_0576:	.ascii	"vr$\0"
.balign 4
Lt_0580:	.ascii	":;\0"
.balign 4
Lt_0590:	.ascii	"if( \0"
.balign 4
Lt_0591:	.ascii	" ) goto \0"
.balign 4
Lt_05CC:	.ascii	"fb_F2I\0"
.balign 4
Lt_05CD:	.ascii	"fb_D2I\0"
.balign 4
Lt_05D2:	.ascii	"fb_F2L\0"
.balign 4
Lt_05D3:	.ascii	"fb_D2L\0"
.balign 4
Lt_05D7:	.ascii	"fb_F2UL\0"
.balign 4
Lt_05D8:	.ascii	"fb_D2UL\0"
.balign 4
Lt_05E1:	.ascii	"return \0"
.balign 4
Lt_0606:	.ascii	"goto *\0"
.balign 4
Lt_060C:	.ascii	"goto \0"
.balign 4
Lt_0617:	.ascii	"(void)\0"
.balign 4
Lt_061B:	.ascii	"static const void* \0"
.balign 4
Lt_061C:	.ascii	"] = {\0"
.balign 4
Lt_0627:	.ascii	",\0"
.balign 4
Lt_063F:	.ascii	"__builtin_memset( \0"
.balign 4
Lt_0640:	.ascii	", 0, \0"
.balign 4
Lt_0648:	.ascii	"__builtin_memcpy( \0"
.balign 4
Lt_0675:	.ascii	"not_an_escape\0"
.balign 4
Lt_0676:	.ascii	"// \0"
.balign 4
Lt_068E:	.ascii	"__asm__\0"
.balign 4
Lt_0691:	.ascii	" __volatile__\0"
.balign 4
Lt_0694:	.ascii	" goto\0"
.balign 4
Lt_06A6:	.ascii	"%\0"
.balign 4
Lt_06AB:	.ascii	"\"m\" (\0"
.balign 4
Lt_06B1:	.ascii	"\"+m\" (\0"
.balign 4
Lt_06BC:	.ascii	"%l\0"
.balign 4
Lt_06C5:	.ascii	" : \0"
.balign 4
Lt_06C6:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
Lt_06CE:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"edi\", \"esi\"\0"
.balign 4
Lt_06CF:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rdi\", \"rsi\"\0"
.balign 4
Lt_06D0:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
Lt_06D3:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
Lt_06D4:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
Lt_06D7:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
Lt_06DB:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
Lt_06DE:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
Lt_06DF:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
Lt_06E0:	.ascii	", \"r30\"\0"
.balign 4
Lt_0700:	.ascii	"{ \0"
.balign 4
Lt_070B:	.ascii	"L'\0"
.balign 4
Lt_070E:	.ascii	" }\0"
.balign 4
Lt_071A:	.ascii	"static const char \0"
.balign 4
Lt_0720:	.ascii	"__attribute__((used, section(\"__DATA,fbctinf\"))) \0"
.balign 4
Lt_0723:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
Lt_0724:	.ascii	"__fbctinf[] = \"\0"
.balign 4
Lt_0727:	.ascii	"\\0\0"
.balign 4
Lt_072E:	.ascii	"\";\0"
.balign 4
Lt_0737:	.ascii	"__asm__( \".globl \0"
.balign 4
Lt_0738:	.ascii	"\" );\0"
.balign 4
Lt_073C:	.ascii	"__asm__( \"\0"
.balign 4
Lt_073D:	.ascii	":\" );\0"
.balign 4
Lt_074D:	.ascii	"__asm__( \".size \0"
.balign 4
Lt_074E:	.ascii	", .-\0"
.balign 8
Lt_07F7:	.quad	0x0000000000000000

.section .ctors
.int fb_ctor__irzhlc
.int _GLOBAL__I

.section .dtors
.int _GLOBAL__D
