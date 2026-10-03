	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irzhlc:
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
__ZN12SECTIONENTRYC1Ev:
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
.L_0067:
.L_0068:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0069:
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
.L_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYD1Ev:
push ebp
mov ebp, esp
push ebx
.L_006D:
.L_006E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0075:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYC1Ev
add esp, 4
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0075
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
.L_0072:
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0077:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.L_007A:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYaSERKS_
add esp, 8
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_007A
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
.L_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0082:
.L_0083:
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.L_0085:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYD1Ev
add esp, 4
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .L_0085
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT@0:
.L_0097:
call _IRHLINIT@0
push 6
push 4
push 8
lea eax, [_CTX+2608]
push eax
call _LISTINIT@16
push 7
push 32
push 32
lea eax, [_CTX+2680]
push eax
call _LISTINIT@16
push 6
push 8
push 8
lea eax, [_CTX+2724]
push eax
call _LISTINIT@16
or dword ptr [_IR+272], 131074
call _FBIS64BIT@0
test eax, eax
je .L_009A
mov eax, dword ptr [_DTYPENAME+52]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+56]
mov dword ptr [_DTYPENAME+36], eax
jmp .L_0099
.L_009A:
mov eax, dword ptr [_DTYPENAME+44]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+48]
mov dword ptr [_DTYPENAME+36], eax
.L_0099:
.L_0098:
ret
.balign 16
__END@0:
.L_009B:
lea eax, [_CTX+2724]
push eax
call _LISTEND@4
lea eax, [_CTX+2680]
push eax
call _LISTEND@4
lea eax, [_CTX+2608]
push eax
call _LISTEND@4
call _IRHLEND@0
.L_009C:
ret
.balign 16
_SECTIONBEGIN@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009D:
inc dword ptr [_CTX+2580]
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [_CTX+2580], 0
jle .L_00A1
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .L_00A0
.L_00A1:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.L_00A0:
.L_009E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONWRITELINE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_00A2:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00A6
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00A8
push 0
push -1
push 1
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx@8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2@8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
jmp .L_00A7
.L_00A8:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
.L_00A7:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .L_00AC
push 0
push -1
push -1
push 1
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx@8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2@8
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00AC:
.L_00AB:
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00A5:
push 0
push -1
push 3
push offset _Lt_00AF
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00A3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SECTIONINDENT@0:
push ebx
.L_00B1:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
inc dword ptr [ebx+16]
.L_00B2:
pop ebx
ret
.balign 16
_SECTIONUNINDENT@0:
push ebx
.L_00B3:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
dec dword ptr [ebx+16]
.L_00B4:
pop ebx
ret
.balign 16
_SECTIONINSIDEPROC@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B5:
mov eax, dword ptr [_CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONEND@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00B7:
cmp dword ptr [_CTX+2580], 0
jle .L_00BA
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_00BC
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00BE
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .L_00BD
.L_00BE:
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
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
.L_00BD:
.L_00BC:
.L_00BB:
.L_00BA:
.L_00B9:
dec dword ptr [_CTX+2580]
.L_00B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONGOSUB@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00C0:
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
inc dword ptr [_CTX+2584]
.L_00C1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_SECTIONRETURN@4:
push ebp
mov ebp, esp
.L_00C2:
dec dword ptr [_CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
.L_00C3:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITELINE@8:
push ebp
mov ebp, esp
.L_00C4:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [_ENV+148]
je .L_00C7
push 0
push 7
push offset _Lt_00C8
push -1
push offset _Lt_076A
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_CTX+2588]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_076A
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00C9
push -1
push offset _Lt_076A
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_CTX+2592]
push eax
push -1
push offset _Lt_076A
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00CA
push -1
push offset _Lt_076A
call _fb_StrConcatAssign@20
push offset _Lt_076A
call _SECTIONWRITELINE@4
.L_00C7:
.L_00C6:
push dword ptr [ebp+8]
call _SECTIONWRITELINE@4
.L_00C5:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_076A,12

.section .text
.balign 16
_HUPDATECURRENTFILENAME@4:
push ebp
mov ebp, esp
.L_00CB:
push 0
push -1
push offset _Lt_00CE
push offset _Lt_00CD
push dword ptr [ebp+8]
call _HREPLACE@12
push eax
push -1
lea eax, [_CTX+2592]
push eax
call _fb_StrAssign@20
.L_00CC:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITESTATICASSERT@4:
push ebp
mov ebp, esp
sub esp, 52
.L_00CF:
mov eax, dword ptr [_CTX+2604]
and eax, 64
test eax, eax
jne .L_00D2
or dword ptr [_CTX+2604], 64
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset _Lt_00D3
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_00D2:
.L_00D1:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push dword ptr [ebp+8]
push 21
push offset _Lt_00D5
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
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_00D0:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HAPPENDCTORATTRIB@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00DA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .L_00DD
cmp dword ptr [ebp+16], 0
jne .L_00DF
push 0
push 2
push offset _Lt_00E0
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00DF:
.L_00DE:
push 0
push 17
push offset _Lt_00E1
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 65536
je .L_00E3
push 0
push 12
push offset _Lt_00E4
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_00E2
.L_00E3:
push 0
push 11
push offset _Lt_00E5
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00E2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_00E7
push 0
push -1
push 3
push offset _Lt_00E9
push -1
push -1
push dword ptr [ebp-4]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_00E8
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
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00E7:
.L_00E6:
push 0
push 4
push offset _Lt_00EC
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+16], 0
je .L_00EE
push 0
push 2
push offset _Lt_00E0
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00EE:
.L_00ED:
.L_00DD:
.L_00DC:
.L_00DB:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETMANGLEDNAMEFORASM@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00EF:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_ENV+292]
and eax, dword ptr [ebp+12]
je .L_00F2
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 2
push offset _Lt_00F3
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
.L_00F2:
.L_00F1:
call _FBGETCPUFAMILY@0
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
je .L_00F6
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .L_00F8
push 0
push 2
push offset _Lt_00F9
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN@4
push edx
push eax
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_00F8:
.L_00F7:
.L_00F6:
.L_00F5:
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
.L_00F0:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HNEEDALIAS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY@0
test eax, eax
je .L_00FD
jmp .L_00FB
.L_00FD:
.L_00FC:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0101
.L_0102:
cmp dword ptr [ebp-8], 1
je .L_0101
.L_0103:
cmp dword ptr [ebp-8], 4
jne .L_0100
.L_0101:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0105
jmp .L_00FB
.L_0105:
.L_0104:
jmp .L_00FE
.L_0100:
jmp .L_00FB
.L_0106:
.L_00FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_010A
.L_010B:
cmp dword ptr [ebp-8], 4
jne .L_0109
.L_010A:
mov dword ptr [ebp-4], -1
jmp .L_0107
.L_0109:
cmp dword ptr [ebp-8], 1
jne .L_010C
.L_010D:
mov dword ptr [ebp-4], -1
.L_010C:
.L_0107:
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCHEADER@8:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .L_0111
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB@12
.L_0111:
.L_0110:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .L_0113
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .L_0115
push 0
push 8
push offset _Lt_0116
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0115:
.L_0114:
.L_0113:
.L_0112:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .L_011D
.L_011E:
cmp dword ptr [ebp-72], 2
je .L_011D
.L_011F:
cmp dword ptr [ebp-72], 4
jne .L_011C
.L_011D:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0123
.L_0124:
cmp dword ptr [ebp-76], 4
jne .L_0122
.L_0123:
push 0
push 11
push offset _Lt_0125
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0120
.L_0122:
push 0
push 26
push offset _Lt_0127
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0126:
.L_0120:
jmp .L_011A
.L_011C:
cmp dword ptr [ebp-72], 5
jne .L_0128
.L_0129:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_012D
.L_012E:
cmp dword ptr [ebp-76], 4
jne .L_012C
.L_012D:
push 0
push 12
push offset _Lt_012F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_012A
.L_012C:
push 0
push 27
push offset _Lt_0131
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0130:
.L_012A:
jmp .L_011A
.L_0128:
cmp dword ptr [ebp-72], 6
jne .L_0132
.L_0133:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .L_0137
.L_0138:
cmp dword ptr [ebp-76], 4
jne .L_0136
.L_0137:
push 0
push 12
push offset _Lt_0139
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0134
.L_0136:
push 0
push 27
push offset _Lt_013B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_013A:
.L_0134:
.L_0132:
.L_011A:
.L_0119:
.L_0118:
push 0
push 2
push offset _Lt_00E0
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_013D
push 0
push 3
push offset _Lt_013E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_013C
.L_013D:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_013C:
push 0
push 3
push offset _Lt_00E8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-60], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .L_0141
mov eax, dword ptr [ebp+12]
and eax, 1
je .L_0143
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0142
.L_0143:
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp-60]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0142:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .L_0149
push 0
push 3
push offset _Lt_014A
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.L_0149:
.L_0148:
.L_0141:
.L_0140:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .L_014B
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .L_076D
.L_014B:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.L_076D:
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
je .L_014E
push 0
push 5
push offset _Lt_0088
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_014E:
.L_014D:
.L_014F:
cmp dword ptr [ebp-68], 0
je .L_0150
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .L_0152
push 0
push 4
push offset _Lt_0153
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0151
.L_0152:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .L_0155
push 0
push 7
push offset _Lt_0156
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
jmp .L_0154
.L_0155:
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0154:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0158
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0158:
.L_0157:
.L_0151:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .L_015B
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-72], ecx
jmp .L_076E
.L_015B:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-72], eax
.L_076E:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_015E
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_015E:
.L_015D:
jmp .L_014F
.L_0150:
push 0
push 3
push offset _Lt_00E9
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
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
je .L_0160
push dword ptr [ebp+8]
call _HNEEDALIAS@4
test eax, eax
je .L_0162
push 0
push 7
push offset _Lt_0163
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0164
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0162:
.L_0161:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB@12
.L_0160:
.L_015F:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_010F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HGETUDTTAG@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0165:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .L_0168
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
je .L_016A
push 0
push 7
push offset _Lt_016B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .L_0169
.L_016A:
push 0
push 8
push offset _Lt_016C
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.L_0169:
.L_0168:
.L_0167:
.L_0166:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETUDTID@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .L_0170
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _SYMBGETVALISTTYPE@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .L_0174
.L_0175:
cmp dword ptr [ebp-28], 4
je .L_0174
.L_0176:
cmp dword ptr [ebp-28], 5
jne .L_0173
.L_0174:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_016E
.L_0173:
.L_0171:
.L_0170:
.L_016F:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_0177
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
call _fb_StrAssign@20
.L_016E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETUDTNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0179:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_017A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITUDT@8:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_017B:
cmp dword ptr [ebp+8], 0
jne .L_017E
jmp .L_017C
.L_017E:
.L_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .L_0180
jmp .L_017C
.L_0180:
.L_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0182
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0184
inc dword ptr [ebp-4]
jmp .L_0183
.L_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
jne .L_0185
inc dword ptr [ebp-4]
.L_0185:
.L_0183:
mov eax, dword ptr [_CTX+2580]
cmp dword ptr [ebp-4], eax
jle .L_0187
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
.L_0187:
.L_0186:
jmp .L_0181
.L_0182:
mov dword ptr [ebp-4], 0
.L_0181:
push dword ptr [ebp-4]
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0189
.L_018B:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
push -1
push 2
push offset _Lt_00E0
push -1
push -1
push 0
push 10
call _HEMITTYPE@8
push eax
push 9
push offset _Lt_018C
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
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HWRITELINE@8
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .L_0188
.L_0193:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITSTRUCT@8
jmp .L_0188
.L_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_0196
push 0
push -1
push 3
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .L_0198
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset _Lt_018C
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _HWRITELINE@8
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.L_0198:
.L_0197:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0196:
.L_0195:
jmp .L_0188
.L_0189:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .L_0188
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_019C+eax*4-12]
_.L_019C:
.int .L_0194
.int .L_0188
.int .L_0188
.int .L_0188
.int .L_0188
.int .L_0188
.int .L_018B
.int .L_0193
.L_0188:
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_017C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITARRAYDECL@4:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_019D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_01A0
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
jmp .L_019E
.L_01A0:
.L_019F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .L_01A4
.L_01A5:
cmp dword ptr [ebp-28], 12
jne .L_01A3
.L_01A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .L_01A7
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-36], eax
jmp .L_01A9
.L_01AC:
push 0
push -1
push -1
push 2
push offset _Lt_01AE
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
sal eax, 4
mov esi, dword ptr [ebx+68]
add esi, eax
mov ebx, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
sub ebx, dword ptr [esi]
sbb eax, dword ptr [esi+4]
add ebx, 1
adc eax, 0
push eax
push ebx
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_01AD
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
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_01AA:
inc dword ptr [ebp-32]
.L_01A9:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .L_01AC
.L_01AB:
.L_01A7:
.L_01A6:
.L_01A3:
.L_01A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .L_01B3
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .L_01B7
.L_01B8:
cmp dword ptr [ebp-36], 4
jne .L_01B6
.L_01B7:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .L_01B4
.L_01B6:
cmp dword ptr [ebp-36], 7
jne .L_01B9
.L_01BA:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.L_01B9:
.L_01B4:
cmp dword ptr [ebp-28], 0
jl .L_01BC
jg .L_0773
cmp dword ptr [ebp-32], 0
jbe .L_01BC
.L_0773:
push 0
push 2
push offset _Lt_01AD
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01AE
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_01BC:
.L_01BB:
.L_01B3:
.L_01B2:
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
.L_019E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITVARDECL@12:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_01BD:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01C0
push 0
push 8
push offset _Lt_01C1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_01BF
.L_01C0:
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
je .L_01C2
push 0
push 8
push offset _Lt_0116
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign@20
.L_01C2:
.L_01BF:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call _SYMBGETREALTYPE@12
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITARRAYDECL@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
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
je .L_01C7
push 0
push 25
push offset _Lt_01C8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01C7:
.L_01C6:
cmp dword ptr [ebp+16], 0
je .L_01CA
push 0
push -1
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_01CB
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_01CA:
.L_01C9:
push 0
push 2
push offset _Lt_018D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01BE:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEEMITLOCALVAR@4:
push ebp
mov ebp, esp
push ebx
.L_01CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_01D1
jmp .L_01CF
.L_01D1:
.L_01D0:
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
je .L_01D3
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
jmp .L_01D2
.L_01D3:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
.L_01D2:
.L_01CF:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HALLOCGLOBALVAR@4:
push ebp
mov ebp, esp
push ebx
.L_01D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_01D7
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
je .L_01D9
jmp .L_01D5
.L_01D9:
.L_01D8:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
jmp .L_01D6
.L_01D7:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
.L_01D6:
.L_01D5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.L_01DA:
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
je .L_01DD
jmp .L_01DB
.L_01DD:
.L_01DC:
mov esi, dword ptr [_CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .L_01E0
.L_01E1:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .L_01E3
push 0
push dword ptr [ebp+8]
push -1
call _HEMITVARDECL@12
jmp .L_01E2
.L_01E3:
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR@4
.L_01E2:
jmp .L_01DE
.L_01E0:
cmp dword ptr [ebp-4], 2
jne .L_01E4
.L_01E5:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .L_01E7
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR@4
.L_01E7:
.L_01E6:
.L_01E4:
.L_01DE:
.L_01DB:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4:
push ebp
mov ebp, esp
.L_01E8:
push dword ptr [ebp+8]
call _SYMBISDATADESC@4
test eax, eax
je .L_01EB
jmp .L_01E9
.L_01EB:
.L_01EA:
push dword ptr [ebp+8]
call _HMAYBEEMITGLOBALVAR@4
.L_01E9:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITPROCPROTO@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_01EC:
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
je .L_01EF
jmp .L_01ED
.L_01EF:
.L_01EE:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
test eax, eax
jne .L_01F1
jmp .L_01ED
.L_01F1:
.L_01F0:
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
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
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
.L_01ED:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITFIELDTYPES@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F4:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.L_01F6:
cmp dword ptr [ebp-4], 0
je .L_01F7
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
call _HEMITUDT@8
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .L_01F6
.L_01F7:
.L_01F5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFINDPARENTANONALREADYONSTACK@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-12], ebx
.L_01FA:
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL@4
mov dword ptr [ebp-8], eax
.L_01FD:
cmp dword ptr [ebp-8], 0
je .L_01FE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .L_0200
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_01F9
.L_0200:
.L_01FF:
push dword ptr [ebp-8]
call _LISTGETPREV@4
mov dword ptr [ebp-8], eax
jmp .L_01FD
.L_01FE:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-12], ebx
.L_01FC:
cmp dword ptr [ebp-12], 0
jne .L_01FA
.L_01FB:
mov dword ptr [ebp-4], 0
.L_01F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPUSHANONPARENTS@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0201:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .L_0204
jmp .L_0202
.L_0204:
.L_0203:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+168]
push dword ptr [ebp+8]
call _HPUSHANONPARENTS@8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
je .L_0206
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_0207
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .L_0205
.L_0206:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_0209
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.L_0205:
call _SECTIONINDENT@0
lea ebx, [_CTX+2608]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0202:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPOPANONPARENTS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_020B:
.L_020D:
lea eax, [_CTX+2608]
push eax
call _LISTGETTAIL@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .L_020E
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset _Lt_020F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL@4
push eax
lea eax, [_CTX+2608]
push eax
call _LISTDELNODE@8
jmp .L_020D
.L_020E:
.L_020C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCTWITHFIELDS@4:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_0211:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-20], eax
.L_0213:
cmp dword ptr [ebp-20], 0
je .L_0214
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+168], ebx
jne .L_0216
push 0
call _HPOPANONPARENTS@4
jmp .L_0215
.L_0216:
push dword ptr [ebp-20]
call _HFINDPARENTANONALREADYONSTACK@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HPOPANONPARENTS@4
mov eax, dword ptr [ebp-20]
push dword ptr [eax+168]
cmp dword ptr [ebp-24], 0
je .L_0217
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .L_0782
.L_0217:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.L_0782:
push dword ptr [ebp-40]
call _HPUSHANONPARENTS@8
.L_0215:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_021A
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset _Lt_00E0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-20]
call _HEMITARRAYDECL@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+125]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .L_021E
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN@8
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_021F
mov dword ptr [ebp-68], 24
jmp .L_0783
.L_021F:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0783:
cmp dword ptr [ebp-68], 20
jne .L_0222
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+125]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .L_0224
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.L_0224:
.L_0223:
.L_0222:
.L_0221:
cmp dword ptr [ebp-4], 0
jne .L_0226
push 0
push 33
push offset _Lt_0227
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-12]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0228
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.L_0226:
.L_0225:
.L_021E:
.L_021D:
cmp dword ptr [ebp-12], 0
jle .L_0229
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_0784
.L_0229:
mov dword ptr [ebp-64], -1
.L_0784:
cmp dword ptr [ebp-64], 0
je .L_022C
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_022D
mov dword ptr [ebp-68], 24
jmp .L_0785
.L_022D:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0785:
cmp dword ptr [ebp-68], 20
jne .L_0230
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN@8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .L_0231
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_0786
.L_0231:
mov dword ptr [ebp-76], 0
.L_0786:
cmp dword ptr [ebp-76], 0
je .L_0234
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.L_0234:
.L_0233:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+125]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .L_0235
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .L_0787
.L_0235:
mov dword ptr [ebp-84], 0
.L_0787:
cmp dword ptr [ebp-84], 0
je .L_0238
push 0
push 25
push offset _Lt_0239
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-72]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0228
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.L_0238:
.L_0237:
.L_0230:
.L_022F:
.L_022C:
.L_022B:
push 0
push 2
push offset _Lt_018D
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push -1
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
.L_021A:
.L_0219:
push dword ptr [ebp-20]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-20], eax
jmp .L_0213
.L_0214:
push 0
call _HPOPANONPARENTS@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0212:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCT@8:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_023A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .L_023D
cmp dword ptr [ebp+12], 0
je .L_023F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .L_0241
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
.L_0241:
.L_0240:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_023B
.L_023F:
.L_023E:
.L_023D:
.L_023C:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 134217728
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+120]
and ebx, 32768
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0245
push dword ptr [ebp+8]
call _HEMITFIELDTYPES@4
.L_0245:
.L_0244:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .L_0247
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_023B
.L_0247:
.L_0246:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+125]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0249
push 0
push 29
push offset _Lt_024A
push -1
lea ecx, [ebp-16]
push ecx
call _fb_StrConcatAssign@20
.L_0249:
.L_0248:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_024B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push -1
lea eax, [ebp-16]
push eax
call _HWRITELINE@8
call _SECTIONINDENT@0
cmp dword ptr [ebp-4], 0
je .L_024D
push dword ptr [ebp+8]
call _HEMITSTRUCTWITHFIELDS@4
jmp .L_024C
.L_024D:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 3
push offset _Lt_024F
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push 24
push offset _Lt_024E
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
.L_024C:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset _Lt_020F
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
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
call _fb_ULongintToStr@8
push eax
push -1
push 7
push offset _Lt_0255
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTID@4
push eax
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG@4
push eax
push 9
push offset _Lt_0254
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
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
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITESTATICASSERT@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_023B:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HWRITEX86F2I@12:
push ebp
mov ebp, esp
sub esp, 356
push ebx
.L_025B:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push dword ptr [ebp+16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [_ENV+132], 1
jne .L_025E
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_025F
mov dword ptr [ebp-352], 24
jmp .L_0791
.L_025F:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.L_0791:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .L_0263
.L_0264:
push 0
push 2
push offset _Lt_0265
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
jmp .L_0261
.L_0263:
cmp dword ptr [ebp-356], 8
jne .L_0266
.L_0267:
push 0
push 2
push offset _Lt_0268
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
.L_0266:
.L_0261:
cmp dword ptr [ebp+16], 15
jne .L_026A
push 0
push 2
push offset _Lt_026B
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign@20
jmp .L_0269
.L_026A:
push 0
push 2
push offset _Lt_0265
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign@20
.L_0269:
.L_025E:
.L_025D:
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-60]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 9
push offset _Lt_026F
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset _Lt_00E8
push -1
push -1
push dword ptr [ebp+8]
push -1
push 5
push offset _Lt_026E
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset _Lt_026D
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat@20
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
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
call _HWRITELINE@8
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset _Lt_0277
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
push eax
call _HWRITELINE@8
lea eax, [ebp-156]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 9
push offset _Lt_027A
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset _Lt_0279
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
lea eax, [ebp-192]
push eax
call _HWRITELINE@8
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset _Lt_027E
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
call _HWRITELINE@8
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_0281
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_0280
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign@20
lea eax, [ebp-240]
push eax
call _HWRITELINE@8
lea eax, [ebp-240]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 6
push offset _Lt_0286
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_0285
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign@20
lea eax, [ebp-276]
push eax
call _HWRITELINE@8
lea eax, [ebp-276]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset _Lt_028A
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign@20
lea eax, [ebp-288]
push eax
call _HWRITELINE@8
lea eax, [ebp-288]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset _Lt_028C
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
call _HWRITELINE@8
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset _Lt_028E
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign@20
lea eax, [ebp-312]
push eax
call _HWRITELINE@8
lea eax, [ebp-312]
push eax
call _fb_StrDelete@4
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset _Lt_0290
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign@20
lea eax, [ebp-324]
push eax
call _HWRITELINE@8
lea eax, [ebp-324]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset _Lt_0292
push -1
lea eax, [ebp-336]
push eax
call _fb_StrAssign@20
lea eax, [ebp-336]
push eax
call _HWRITELINE@8
lea eax, [ebp-336]
push eax
call _fb_StrDelete@4
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset _Lt_0294
push -1
lea eax, [ebp-348]
push eax
call _fb_StrAssign@20
lea eax, [ebp-348]
push eax
call _HWRITELINE@8
lea eax, [ebp-348]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_025C:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HWRITEGENERICF2I@12:
push ebp
mov ebp, esp
sub esp, 96
.L_0296:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .L_0299
push 0
push 11
push offset _Lt_029A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_0298
.L_0299:
push 0
push 10
push offset _Lt_029B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0298:
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 11
push offset _Lt_029F
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset _Lt_029E
push -1
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE@8
push eax
push -1
push 13
push offset _Lt_029D
push -1
push -1
push dword ptr [ebp+8]
push 12
push offset _Lt_029C
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
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@8
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0297:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HWRITEF2I@12:
push ebp
mov ebp, esp
.L_02A7:
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_02AA
cmp dword ptr [ebp+12], 11
je .L_02AD
.L_02AE:
cmp dword ptr [ebp+12], 13
jne .L_02AC
.L_02AD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEX86F2I@12
jmp .L_02A8
.L_02AC:
.L_02AB:
.L_02AA:
.L_02A9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEGENERICF2I@12
.L_02A8:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEEMITPROCEXPORT@4:
push ebp
mov ebp, esp
push ebx
.L_02AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .L_02B2
jmp .L_02B0
.L_02B2:
.L_02B1:
push 0
push 3
push offset _Lt_02B3
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push 10
push offset _Lt_02B4
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push 16
push offset _Lt_02B5
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatByref@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 7
push offset _Lt_02B6
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 3
push offset _Lt_02B7
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
push 0
push 3
push offset _Lt_02B8
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatByref@20
.L_02B0:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBEGIN@0:
push ebp
mov ebp, esp
sub esp, 124
mov dword ptr [ebp-4], 0
.L_02B9:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS@4
test eax, eax
je .L_02BC
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
.L_02BC:
.L_02BB:
call _fb_FileFree@0
mov dword ptr [_ENV+580], eax
push 0
push dword ptr [_ENV+580]
push 0
push 3
push 0
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_02BE
mov dword ptr [ebp-4], 0
jmp .L_02BA
.L_02BE:
.L_02BD:
mov dword ptr [_CTX+2580], -1
mov dword ptr [_CTX+2584], 0
mov dword ptr [_CTX+2588], 0
mov dword ptr [_CTX+2604], 0
mov dword ptr [_CTX+2756], 0
lea eax, [_ENV+304]
push eax
call _HUPDATECURRENTFILENAME@4
call _SECTIONBEGIN@0
cmp dword ptr [_ENV+148], 0
je .L_02C0
push 0
push 0
push 0
push 113
call __EMITDBG@16
.L_02C0:
.L_02BF:
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset _Lt_02C1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@8
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset _Lt_02C3
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset _Lt_02C5
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset _Lt_02C7
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset _Lt_02C9
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _HWRITELINE@8
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset _Lt_02CB
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
call _HWRITELINE@8
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset _Lt_02CD
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITELINE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset _Lt_02CF
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-100]
push eax
call _HWRITELINE@8
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
call _FBIS64BIT@0
test eax, eax
je .L_02D2
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02D3
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
jmp .L_02D1
.L_02D2:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02D5
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
call _HWRITELINE@8
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
.L_02D1:
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset _Lt_02D7
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
call _SECTIONBEGIN@0
mov dword ptr [ebp-4], -1
.L_02BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND@0:
push ebp
mov ebp, esp
sub esp, 52
.L_02D9:
lea eax, [_ENV+304]
push eax
call _HUPDATECURRENTFILENAME@4
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2604]
and eax, 1
je .L_02DC
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02DD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02DC:
mov eax, dword ptr [_CTX+2604]
and eax, 2
je .L_02E0
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02E1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02E0:
mov eax, dword ptr [_CTX+2604]
and eax, 4
je .L_02E4
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02E5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02E4:
mov eax, dword ptr [_CTX+2604]
and eax, 8
je .L_02E8
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02E9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02E8:
mov eax, dword ptr [_CTX+2604]
and eax, 16
je .L_02EC
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02ED
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02EC:
mov eax, dword ptr [_CTX+2604]
and eax, 32
je .L_02F0
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02F1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITEF2I@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02F0:
push offset _HMAYBEEMITPROCPROTO@4
push 3
call _SYMBFOREACHGLOBAL@8
mov dword ptr [_CTX+2756], 1
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HMAYBEEMITGLOBALVAR@4
call _IRFOREACHDATASTMT@4
mov dword ptr [_CTX+2756], 2
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HMAYBEEMITGLOBALVAR@4
call _IRFOREACHDATASTMT@4
push dword ptr [ebp-4]
call _SECTIONRETURN@4
mov eax, dword ptr [_ENV+284]
and eax, 4
and eax, dword ptr [_ENV+224]
je .L_02F4
push offset _HMAYBEEMITPROCEXPORT@4
push 3
call _SYMBFOREACHGLOBAL@8
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_02F6
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 3
push offset _Lt_0290
push -1
push -1
lea eax, [_CTX+2668]
push eax
push 35
push offset _Lt_02F7
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
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 20
push offset _Lt_02FB
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
lea eax, [ebp-52]
push eax
call _HWRITELINE@8
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
.L_02F6:
.L_02F5:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrAssign@20
.L_02F4:
.L_02F3:
call _SECTIONEND@0
cmp dword ptr [_CTX+12], 0
jne .L_02FE
push -1
lea eax, [_CTX]
push eax
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_0300
.L_0300:
.L_02FF:
.L_02FE:
.L_02FD:
call _SECTIONEND@0
push dword ptr [_ENV+580]
call _fb_FileClose@4
test eax, eax
je .L_0302
.L_0302:
.L_0301:
mov dword ptr [_ENV+580], 0
.L_02DA:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0303:
cmp dword ptr [ebp+8], 1
jne .L_0306
.L_0307:
mov dword ptr [ebp-4], 0
jmp .L_0304
jmp .L_0305
.L_0306:
push 0
push 1
push 0
push offset _Lt_0309
push 21
call _ERRREPORTEX@20
.L_0308:
.L_0305:
.L_0304:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__SUPPORTSOP@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_030A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_030D
.L_030F:
mov dword ptr [ebp-4], 0
jmp .L_030C
.L_0310:
mov dword ptr [ebp-4], -1
jmp .L_030C
.L_030D:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .L_0310
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0311+eax*4-228]
_.L_0311:
.int .L_030F
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_030F
.int .L_030F
.int .L_0310
.int .L_0310
.int .L_0310
.int .L_030F
.int .L_030F
.L_030C:
.L_030B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.L_0312:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+16], ebx
.L_0313:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCEND@4:
push ebp
mov ebp, esp
push ebx
.L_0314:
mov eax, dword ptr [_LEX+422348]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+20], ebx
.L_0315:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEBEGIN@4:
push ebp
mov ebp, esp
.L_0316:
.L_0317:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEEND@4:
push ebp
mov ebp, esp
.L_0318:
.L_0319:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISSTATICWITHDTOR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_031A:
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
call _SYMBHASDTOR@4
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_031B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCSTATICVARS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_031C:
push 0
call _SECTIONGOSUB@4
mov dword ptr [ebp-8], eax
.L_031E:
cmp dword ptr [ebp+8], 0
je .L_031F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .L_0322
.L_0323:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS@4
jmp .L_0320
.L_0322:
cmp dword ptr [ebp-12], 1
jne .L_0324
.L_0325:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_0327
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0329
push dword ptr [ebp-4]
call _HMAYBEEMITLOCALVAR@4
.L_0329:
.L_0328:
.L_0327:
.L_0326:
.L_0324:
.L_0320:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp+8], eax
jmp .L_031E
.L_031F:
push dword ptr [ebp-8]
call _SECTIONRETURN@4
.L_031D:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__SETVREGDATATYPE@12:
push ebp
mov ebp, esp
push ebx
.L_032A:
cmp dword ptr [ebp+8], 0
je .L_032D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_032D:
.L_032C:
.L_032B:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITTYPE@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_032E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE@8
cmp eax, 1
jle .L_0331
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .L_0334
.L_0335:
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
jmp .L_0332
.L_0334:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.L_0336:
.L_0332:
.L_0331:
.L_0330:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0338
.L_033A:
cmp dword ptr [ebp+12], 0
je .L_033C
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call _HEMITUDT@8
push 0
push -1
push dword ptr [ebp+12]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_033B
.L_033C:
cmp dword ptr [ebp+8], 10
jne .L_033D
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_033E
mov dword ptr [ebp-36], 24
jmp .L_0794
.L_033E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0794:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_033B
.L_033D:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_033B:
jmp .L_0337
.L_0340:
dec dword ptr [ebp-28]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call _HEMITUDT@8
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0337
.L_0341:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0342
mov dword ptr [ebp-36], 24
jmp .L_0795
.L_0342:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0795:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0337
.L_0344:
push 0
push 0
push dword ptr [_DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0337
.L_0345:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .L_0337
.L_0338:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967289
cmp ebx, 15
ja .L_0345
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.L_0346+ebx*4-28]
_.L_0346:
.int .L_0341
.int .L_0345
.int .L_0345
.int .L_033A
.int .L_0345
.int .L_0345
.int .L_0345
.int .L_0345
.int .L_0345
.int .L_0345
.int .L_0345
.int .L_0344
.int .L_0345
.int .L_033A
.int .L_0345
.int .L_0340
.L_0337:
cmp dword ptr [ebp-28], 0
jle .L_0348
push 0
push -1
push 1
push offset _Lt_0349
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
call _fb_StrFill2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0348:
.L_0347:
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
.L_032F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEW@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_034A:
lea eax, [_CTX+2680]
push eax
call _LISTNEWNODE@4
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
.L_034B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRFREENODE@4:
push ebp
mov ebp, esp
.L_034C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_034F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_0351
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
.L_0351:
.L_0350:
.L_034F:
.L_034E:
push dword ptr [ebp+8]
lea eax, [_CTX+2680]
push eax
call _LISTDELNODE@8
.L_034D:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRFREETREE@4:
push ebp
mov ebp, esp
.L_0352:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0355
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRFREETREE@4
.L_0355:
.L_0354:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0357
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _EXPRFREETREE@4
.L_0357:
.L_0356:
push dword ptr [ebp+8]
call _EXPRFREENODE@4
.L_0353:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRNEWTEXT@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0358:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
call _ZSTRDUP@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0359:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWIMMI@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_035A:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_035C
mov dword ptr [ebp-12], 24
jmp .L_0798
.L_035C:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0798:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_035F
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0360
mov dword ptr [ebp-16], 24
jmp .L_0799
.L_0360:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0799:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0362
mov dword ptr [ebp-20], 13
jmp .L_079A
.L_0362:
mov dword ptr [ebp-20], 14
.L_079A:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .L_035E
.L_035F:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0364
mov dword ptr [ebp-16], 24
jmp .L_079B
.L_0364:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_079B:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0366
mov dword ptr [ebp-20], 11
jmp .L_079C
.L_0366:
mov dword ptr [ebp-20], 12
.L_079C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.L_035E:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_035B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWIMMF@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0368:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0369:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_SYMBISCARRAY@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_036A:
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
je .L_036D
mov dword ptr [ebp-4], 0
jmp .L_036B
.L_036D:
.L_036C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_0371
.L_0372:
cmp dword ptr [ebp-8], 12
jne .L_0370
.L_0371:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0374
mov dword ptr [ebp-4], 0
jmp .L_036B
.L_0374:
.L_0373:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0376
mov dword ptr [ebp-4], -1
jmp .L_036B
.L_0376:
.L_0375:
.L_0370:
.L_036E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .L_037A
.L_037B:
cmp dword ptr [ebp-8], 4
je .L_037A
.L_037C:
cmp dword ptr [ebp-8], 7
jne .L_0379
.L_037A:
mov dword ptr [ebp-4], -1
jmp .L_036B
.L_0379:
.L_0377:
mov dword ptr [ebp-4], 0
.L_036B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRNEWCAST@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_037D:
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
je .L_0380
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037E
.L_0380:
.L_037F:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .L_0381
mov dword ptr [ebp-8], 24
jmp .L_07A0
.L_0381:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.L_07A0:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .L_0383
mov dword ptr [ebp-12], 24
jmp .L_07A1
.L_0383:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.L_07A1:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx+20]
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
je .L_0386
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .L_037E
.L_0386:
.L_0385:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .L_0388
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
je .L_038A
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_037E
.L_038A:
.L_0389:
.L_0388:
.L_0387:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 511
cmp esi, 4
jne .L_038C
push 0
push 3
push 3
call _EXPRNEW@12
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp+16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-20]
mov dword ptr [ebp+16], esi
.L_038C:
.L_038B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call _EXPRNEW@12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [ebp+16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_037E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWMACRO@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_038D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_038E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_EXPRNEWSYM@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_038F:
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
je .L_0392
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+88]
mov dword ptr [ebp+8], ebx
.L_0392:
.L_0391:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .L_0394
push 0
push 32
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
jmp .L_0393
.L_0394:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .L_0395
push dword ptr [ebp+8]
push 54
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
jmp .L_0393
.L_0395:
push dword ptr [ebp+8]
call _SYMBISCARRAY@4
test eax, eax
je .L_0396
push 0
push -2147483648
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
jmp .L_0393
.L_0396:
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
je .L_0397
push 0
push 66
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+24], ecx
jmp .L_0393
.L_0397:
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call _SYMBGETREALTYPE@12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+24], ecx
.L_0393:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0390:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_TYPECBOP@12:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_0398:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .L_039B
mov dword ptr [ebp-4], 11
jmp .L_0399
.L_039B:
.L_039A:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_039C
mov dword ptr [ebp-8], 24
jmp .L_07AF
.L_039C:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_07AF:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_039E
mov dword ptr [ebp-12], 24
jmp .L_07B0
.L_039E:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07B0:
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
je .L_03A1
mov dword ptr [ebp-4], 16
jmp .L_0399
.L_03A1:
.L_03A0:
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
je .L_03A3
mov dword ptr [ebp-4], 15
jmp .L_0399
.L_03A3:
.L_03A2:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A4
mov dword ptr [ebp-16], 24
jmp .L_07B1
.L_03A4:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07B1:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .L_03A7
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03A8
mov dword ptr [ebp-48], 24
jmp .L_07B2
.L_03A8:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B2:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03AA
mov dword ptr [ebp-52], 11
jmp .L_07B3
.L_03AA:
mov dword ptr [ebp-52], 12
.L_07B3:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.L_03A7:
.L_03A6:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03AC
mov dword ptr [ebp-20], 24
jmp .L_07B4
.L_03AC:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_07B4:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .L_03AF
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03B0
mov dword ptr [ebp-48], 24
jmp .L_07B5
.L_03B0:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_07B5:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03B2
mov dword ptr [ebp-52], 11
jmp .L_07B6
.L_03B2:
mov dword ptr [ebp-52], 12
.L_07B6:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.L_03AF:
.L_03AE:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_03B4
mov dword ptr [ebp-24], 24
jmp .L_07B7
.L_03B4:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_07B7:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_03B6
mov dword ptr [ebp-28], 24
jmp .L_07B8
.L_03B6:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_07B8:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [_SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .L_03B9
push dword ptr [ebp+12]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.L_03B9:
.L_03B8:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03BA
mov dword ptr [ebp-32], 24
jmp .L_07BA
.L_03BA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07BA:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_03BC
mov dword ptr [ebp-36], 24
jmp .L_07BB
.L_03BC:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_07BB:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .L_03BF
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03C0
mov dword ptr [ebp-52], 24
jmp .L_07BD
.L_03C0:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_07BD:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03C2
mov dword ptr [ebp-56], 13
jmp .L_07BE
.L_03C2:
mov dword ptr [ebp-56], 14
.L_07BE:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03C4
mov dword ptr [ebp-60], 24
jmp .L_07BF
.L_03C4:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07BF:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03C6
mov dword ptr [ebp-64], 13
jmp .L_07C0
.L_03C6:
mov dword ptr [ebp-64], 14
.L_07C0:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.L_03BF:
.L_03BE:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_03C8
mov dword ptr [ebp-40], 24
jmp .L_07C1
.L_03C8:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07C1:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_03CA
mov dword ptr [ebp-44], 24
jmp .L_07C2
.L_03CA:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07C2:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
and ebx, dword ptr [_SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .L_03CD
push dword ptr [ebp+12]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.L_03CD:
.L_03CC:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0399:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWUOP@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03CE:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .L_03D1
.L_03D3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D5:
.L_03D4:
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
jmp .L_03D0
.L_03D6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03D8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03D8:
.L_03D7:
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
jmp .L_03D0
.L_03D9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03DB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+24]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_03DB:
.L_03DA:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call _TYPECBOP@12
mov dword ptr [ebp-12], eax
jmp .L_03D0
.L_03DC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .L_03D0
.L_03DD:
jmp .L_03D0
.L_03D1:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .L_03DD
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.L_03DE+ebx*4-88]
_.L_03DE:
.int .L_03D3
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03D9
.int .L_03DD
.int .L_03D9
.int .L_03DD
.int .L_03DC
.int .L_03DD
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DD
.int .L_03DC
.int .L_03DD
.int .L_03DD
.int .L_03DC
.int .L_03DC
.int .L_03DC
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03DD
.int .L_03D6
.L_03D0:
cmp dword ptr [ebp-16], 0
je .L_03E0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call _EXPRFREENODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03CF
.L_03E0:
.L_03DF:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_03CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEWBOP@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03E1:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _TYPECBOP@12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_03E4
.L_03E6:
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
je .L_03E8
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
je .L_03EA
push dword ptr [ebp+12]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp+16], eax
.L_03EA:
.L_03E9:
.L_03E8:
.L_03E7:
jmp .L_03E3
.L_03E4:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .L_03E3
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_03EB+eax*4-180]
_.L_03EB:
.int .L_03E6
.int .L_03E6
.int .L_03E6
.int .L_03E6
.int .L_03E6
.int .L_03E6
.L_03E3:
push 0
push dword ptr [ebp-12]
push 5
call _EXPRNEW@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRCACHE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03EC:
lea eax, [_CTX+2724]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.L_03ED:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRLOOKUP@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03EE:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_03F0:
cmp dword ptr [ebp-8], 0
je .L_03F1
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .L_03F3
jmp .L_03F1
.L_03F3:
.L_03F2:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_03F0
.L_03F1:
cmp dword ptr [ebp-8], 0
je .L_03F5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
lea ebx, [_CTX+2724]
push ebx
call _LISTDELNODE@8
jmp .L_03F4
.L_03F5:
mov dword ptr [ebp-4], 0
.L_03F4:
.L_03EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITINT@12:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_03F6:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03F8
mov dword ptr [ebp-28], 24
jmp .L_07D1
.L_03F8:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_07D1:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03FB
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03FC
mov dword ptr [ebp-32], 24
jmp .L_07D2
.L_03FC:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07D2:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_03FF
cmp dword ptr [ebp+16], 2147483648
jne .L_0401
cmp dword ptr [ebp+12], 0
jne .L_0401
.L_07D4:
push 0
push 2
push offset _Lt_0402
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0401:
.L_0400:
push 0
push 3
push offset _Lt_0403
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_03FE
.L_03FF:
cmp dword ptr [ebp+16], 4294967295
jne .L_0405
cmp dword ptr [ebp+12], 2147483648
jne .L_0405
.L_07D5:
push 0
push 2
push offset _Lt_0402
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0405:
.L_0404:
.L_03FE:
jmp .L_03FA
.L_03FB:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0406
mov dword ptr [ebp-32], 24
jmp .L_07D3
.L_0406:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.L_07D3:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_0409
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_040A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0408
.L_0409:
push 0
push -1
mov eax, dword ptr [ebp+12]
push eax
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0402
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0408:
.L_03FA:
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
.L_03F7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITFLOAT@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_040B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .L_040F
.L_0410:
cmp dword ptr [ebp-28], 4293918720
jne .L_040E
.L_040F:
cmp dword ptr [ebp+8], 16
jne .L_0412
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0414
push 0
push 19
push offset _Lt_0415
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0413
.L_0414:
push 0
push 16
push offset _Lt_0416
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0413:
jmp .L_0411
.L_0412:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0418
push 0
push 20
push offset _Lt_0419
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0417
.L_0418:
push 0
push 17
push offset _Lt_041A
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0417:
.L_0411:
jmp .L_040D
.L_040E:
cmp dword ptr [ebp-28], 2146959360
je .L_041C
.L_041D:
cmp dword ptr [ebp-28], 4294443008
jne .L_041B
.L_041C:
cmp dword ptr [ebp+8], 16
jne .L_041F
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0421
push 0
push 23
push offset _Lt_0422
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0420
.L_0421:
push 0
push 20
push offset _Lt_0423
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0420:
jmp .L_041E
.L_041F:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .L_0425
push 0
push 24
push offset _Lt_0426
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0424
.L_0425:
push 0
push 21
push offset _Lt_0427
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_0424:
.L_041E:
jmp .L_040D
.L_041B:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX_C99@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 15
jne .L_042A
push 0
push 2
push offset _Lt_042B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_042A:
.L_0429:
.L_0428:
.L_040D:
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
.L_040C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HBUILDSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_042C:
push 0
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-12], ecx
jmp .L_042F
.L_0432:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-8]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_0434
push 0
push -1
push -1
push 2
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 3
push offset _Lt_0435
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
push ebx
call _HISVALIDHEXDIGIT@4
test eax, eax
je .L_0438
push 0
push 4
push offset _Lt_0439
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0438:
.L_0437:
jmp .L_0433
.L_0434:
cmp dword ptr [ebp-4], 63
jne .L_043A
push 0
push 2
push offset _Lt_043B
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .L_043D
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-16], al
movzx eax, byte ptr [ebp-16]
cmp eax, 61
je .L_0449
.L_044A:
movzx eax, byte ptr [ebp-16]
cmp eax, 47
je .L_0449
.L_044B:
movzx eax, byte ptr [ebp-16]
cmp eax, 39
je .L_0449
.L_044C:
movzx eax, byte ptr [ebp-16]
cmp eax, 40
je .L_0449
.L_044D:
movzx eax, byte ptr [ebp-16]
cmp eax, 41
je .L_0449
.L_044E:
movzx eax, byte ptr [ebp-16]
cmp eax, 33
je .L_0449
.L_044F:
movzx eax, byte ptr [ebp-16]
cmp eax, 60
je .L_0449
.L_0450:
movzx eax, byte ptr [ebp-16]
cmp eax, 62
je .L_0449
.L_0451:
movzx eax, byte ptr [ebp-16]
cmp eax, 45
jne .L_0440
.L_0449:
push 0
push 4
push offset _Lt_0439
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0440:
.L_043E:
.L_043D:
.L_043C:
jmp .L_0433
.L_043A:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0433:
.L_0430:
inc dword ptr [ebp-8]
.L_042F:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_0432
.L_0431:
push 0
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_042D:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBUILDWSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0452:
push 0
push 3
push offset _Lt_0454
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .L_0456
.L_0459:
mov ecx, dword ptr [ebp-12]
sal ecx, 1
mov ebx, dword ptr [ebp+12]
add ebx, ecx
movzx ecx, word ptr [ebx]
mov dword ptr [ebp-4], ecx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_045B
push 0
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 3
push offset _Lt_0435
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
movzx eax, word ptr [ecx+2]
push eax
call _HISVALIDHEXDIGIT@4
test eax, eax
je .L_045E
push 0
push 5
push offset _Lt_045F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_045E:
.L_045D:
jmp .L_045A
.L_045B:
cmp dword ptr [ebp-4], 63
jne .L_0460
push 0
push 2
push offset _Lt_043B
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
movzx eax, word ptr [ecx+2]
cmp eax, 63
jne .L_0462
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov ax, word ptr [ecx+4]
mov word ptr [ebp-20], ax
movzx eax, word ptr [ebp-20]
cmp eax, 61
je .L_0466
.L_0467:
movzx eax, word ptr [ebp-20]
cmp eax, 47
je .L_0466
.L_0468:
movzx eax, word ptr [ebp-20]
cmp eax, 39
je .L_0466
.L_0469:
movzx eax, word ptr [ebp-20]
cmp eax, 40
je .L_0466
.L_046A:
movzx eax, word ptr [ebp-20]
cmp eax, 41
je .L_0466
.L_046B:
movzx eax, word ptr [ebp-20]
cmp eax, 33
je .L_0466
.L_046C:
movzx eax, word ptr [ebp-20]
cmp eax, 60
je .L_0466
.L_046D:
movzx eax, word ptr [ebp-20]
cmp eax, 62
je .L_0466
.L_046E:
movzx eax, word ptr [ebp-20]
cmp eax, 45
jne .L_0465
.L_0466:
push 0
push 5
push offset _Lt_045F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0465:
.L_0463:
.L_0462:
.L_0461:
jmp .L_045A
.L_0460:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_045A:
.L_0457:
inc dword ptr [ebp-12]
.L_0456:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .L_0459
.L_0458:
push 0
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0453:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBOPTOSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_046F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0472
.L_0474:
mov eax, offset _Lt_0475
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0476:
mov eax, offset _Lt_0477
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0478:
mov eax, offset _Lt_0479
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_047A:
mov eax, offset _Lt_047B
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_047C:
mov eax, offset _Lt_047B
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_047D:
mov eax, offset _Lt_047E
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_047F:
mov eax, offset _Lt_0480
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0481:
mov eax, offset _Lt_0482
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0483:
mov eax, offset _Lt_0484
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0485:
mov eax, offset _Lt_0486
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0487:
mov eax, offset _Lt_0488
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0489:
mov eax, offset _Lt_048A
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_048B:
mov eax, offset _Lt_048C
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_048D:
mov eax, offset _Lt_048E
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_048F:
mov eax, offset _Lt_0490
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0491:
mov eax, offset _Lt_0492
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0493:
mov eax, offset _Lt_0494
mov dword ptr [ebp-4], eax
jmp .L_0471
.L_0472:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .L_0471
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0495+eax*4-112]
_.L_0495:
.int .L_0474
.int .L_0476
.int .L_0478
.int .L_047A
.int .L_047C
.int .L_047D
.int .L_0483
.int .L_0485
.int .L_0471
.int .L_0471
.int .L_0487
.int .L_0471
.int .L_0471
.int .L_047F
.int .L_0481
.int .L_0471
.int .L_0471
.int .L_0489
.int .L_048B
.int .L_048D
.int .L_048F
.int .L_0491
.int .L_0493
.L_0471:
.L_0470:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUOPTOSTR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0496:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .L_0499
.L_049A:
mov eax, offset _Lt_049B
mov dword ptr [ebp-4], eax
jmp .L_0498
.L_0499:
cmp dword ptr [ebp+8], 76
jne .L_049C
.L_049D:
mov eax, offset _Lt_0349
mov dword ptr [ebp-4], eax
jmp .L_0498
.L_049C:
cmp dword ptr [ebp+8], 54
jne .L_049E
.L_049F:
mov eax, offset _Lt_0448
mov dword ptr [ebp-4], eax
jmp .L_0498
.L_049E:
cmp dword ptr [ebp+8], 52
jne .L_04A0
.L_04A1:
mov eax, offset _Lt_04A2
mov dword ptr [ebp-4], eax
jmp .L_0498
.L_04A0:
cmp dword ptr [ebp+8], 56
jne .L_04A3
.L_04A4:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_04A5
mov dword ptr [ebp-8], 24
jmp .L_07D6
.L_04A5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07D6:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_04A8
.L_04AA:
mov ebx, offset _Lt_04AB
mov dword ptr [ebp-4], ebx
jmp .L_04A7
.L_04AC:
mov ebx, offset _Lt_04AD
mov dword ptr [ebp-4], ebx
jmp .L_04A7
.L_04AE:
mov ebx, offset _Lt_04AF
mov dword ptr [ebp-4], ebx
jmp .L_04A7
.L_04B0:
mov ebx, offset _Lt_04B1
mov dword ptr [ebp-4], ebx
jmp .L_04A7
.L_04A8:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .L_04B0
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_04B2+ebx*4-28]
_.L_04B2:
.int .L_04AE
.int .L_04AE
.int .L_04AA
.int .L_04AC
.L_04A7:
jmp .L_0498
.L_04A3:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .L_04B5
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04B7
.L_04B9:
mov ebx, offset _Lt_04BA
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04BB:
mov ebx, offset _Lt_04BC
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04BD:
mov ebx, offset _Lt_04BE
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04BF:
mov ebx, offset _Lt_04C0
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04C1:
mov ebx, offset _Lt_04C2
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04C3:
mov ebx, offset _Lt_04C4
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04C5:
mov ebx, offset _Lt_04C6
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04C7:
mov ebx, offset _Lt_04C8
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04C9:
mov ebx, offset _Lt_04CA
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04CB:
mov ebx, offset _Lt_04CC
mov dword ptr [ebp-4], ebx
jmp .L_04B6
.L_04CD:
jmp .L_04B6
.L_04B7:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04CD
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_04CE+ebx*4-232]
_.L_04CE:
.int .L_04B9
.int .L_04BB
.int .L_04BD
.int .L_04BF
.int .L_04C1
.int .L_04C3
.int .L_04CD
.int .L_04C5
.int .L_04CD
.int .L_04CD
.int .L_04C7
.int .L_04C9
.int .L_04CB
.L_04B6:
jmp .L_04B4
.L_04B5:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_04D0
.L_04D2:
mov ebx, offset _Lt_04D3
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04D4:
mov ebx, offset _Lt_04D5
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04D6:
mov ebx, offset _Lt_04D7
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04D8:
mov ebx, offset _Lt_04D9
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04DA:
mov ebx, offset _Lt_04DB
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04DC:
mov ebx, offset _Lt_04DD
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04DE:
mov ebx, offset _Lt_04DF
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04E0:
mov ebx, offset _Lt_04E1
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04E2:
mov ebx, offset _Lt_04E3
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04E4:
mov ebx, offset _Lt_04E5
mov dword ptr [ebp-4], ebx
jmp .L_04CF
.L_04E6:
jmp .L_04CF
.L_04D0:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .L_04E6
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_04E7+ebx*4-232]
_.L_04E7:
.int .L_04D2
.int .L_04D4
.int .L_04D6
.int .L_04D8
.int .L_04DA
.int .L_04DC
.int .L_04E6
.int .L_04DE
.int .L_04E6
.int .L_04E6
.int .L_04E0
.int .L_04E2
.int .L_04E4
.L_04CF:
.L_04B4:
.L_04B3:
.L_0498:
.L_0497:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HIMM2TEXT@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_04E8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04EA
mov dword ptr [ebp-4], 24
jmp .L_07D7
.L_04EA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_07D7:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04ED
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITFLOAT@12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .L_04EC
.L_04ED:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITINT@12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_04EC:
.L_04E9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSYM2TEXT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04F0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_04F3
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_04F5
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
push edx
push eax
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
push dword ptr [ebp+8]
call _HBUILDWSTRLIT@16
jmp .L_04F4
.L_04F5:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov dword ptr [ebp-4], 0
lea eax, [ebp-4]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPE@8
push eax
push dword ptr [ebp+8]
call _HBUILDSTRLIT@16
.L_04F4:
jmp .L_04F2
.L_04F3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .L_04F9
push 0
push 3
push offset _Lt_04FA
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_04F8
.L_04F9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_04FB
push 0
push 2
push offset _Lt_049B
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_04FB:
.L_04F8:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_04F2:
.L_04F1:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEXPRFLUSH@8:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_04FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0500
.L_0502:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push -1
lea ebx, [_CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
jmp .L_04FF
.L_0504:
push dword ptr [ebp+8]
lea eax, [_CTX+2712]
push eax
call _HIMM2TEXT@8
jmp .L_04FF
.L_0505:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
lea eax, [_CTX+2712]
push eax
call _HSYM2TEXT@8
jmp .L_04FF
.L_0506:
push 0
push -1
push -1
push 2
push offset _Lt_013F
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push 2
push offset _Lt_0444
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
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
jmp .L_04FF
.L_050A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .L_050D
.L_050E:
push 0
push 19
push offset _Lt_050F
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_014A
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_050B
.L_050D:
cmp dword ptr [ebp-20], 109
jne .L_0511
.L_0512:
push 0
push 21
push offset _Lt_0513
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_050B
.L_0511:
cmp dword ptr [ebp-20], 110
jne .L_0514
.L_0515:
push 0
push 19
push offset _Lt_0516
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
jmp .L_050B
.L_0514:
cmp dword ptr [ebp-20], 111
jne .L_0517
.L_0518:
push 0
push 20
push offset _Lt_0519
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0517:
.L_051A:
.L_050B:
jmp .L_04FF
.L_051B:
push 0
push -1
push 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HUOPTOSTR@12
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
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
je .L_051E
push 0
push 2
push offset _Lt_0444
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
cmp dword ptr [ebp-12], 0
je .L_0520
push 0
push 2
push offset _Lt_00E0
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0520:
.L_051F:
.L_051E:
.L_051D:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH@8
cmp dword ptr [ebp+12], 0
je .L_0522
cmp dword ptr [ebp-12], 0
je .L_0524
push 0
push 2
push offset _Lt_00E0
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0524:
.L_0523:
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0522:
.L_0521:
jmp .L_04FF
.L_0525:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .L_0528
.L_0529:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_052B
push 0
push 17
push offset _Lt_052C
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
jmp .L_052A
.L_052B:
push 0
push 16
push offset _Lt_052D
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
.L_052A:
push 0
push 2
push offset _Lt_0444
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push 3
push offset _Lt_014A
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _HEXPRFLUSH@8
push 0
push 2
push offset _Lt_013F
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
jmp .L_0526
.L_0528:
cmp dword ptr [ebp+12], 0
je .L_0530
push 0
push 2
push offset _Lt_0444
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatByref@20
.L_0530:
.L_052F:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH@8
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
call _HBOPTOSTR@4
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH@8
cmp dword ptr [ebp+12], 0
je .L_0533
push 0
push 2
push offset _Lt_013F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatByref@20
.L_0533:
.L_0532:
.L_052E:
.L_0526:
jmp .L_04FF
.L_0500:
cmp dword ptr [ebp-16], 6
ja .L_04FF
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0534+eax*4]
_.L_0534:
.int .L_0502
.int .L_0504
.int .L_0505
.int .L_0506
.int .L_051B
.int .L_0525
.int .L_050A
.L_04FF:
.L_04FE:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRFLUSH@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0535:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEXPRFLUSH@8
push 0
push -1
lea eax, [_CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
call _EXPRFREETREE@4
.L_0536:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_EXPRNEWOFFSET@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0537:
push dword ptr [ebp+8]
call _EXPRNEWSYM@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBISCARRAY@4
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
jne .L_053A
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
.L_053A:
.L_0539:
cmp dword ptr [ebp+16], 0
jne .L_07DC
cmp dword ptr [ebp+12], 0
je .L_053C
.L_07DC:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_053C:
.L_053B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0538:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_EXPRNEWVREG@8:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_053D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_0540
.L_0542:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .L_0544
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_0546
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .L_07E4
cmp dword ptr [eax+40], 0
je .L_0548
.L_07E4:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0548:
.L_0547:
jmp .L_0545
.L_0546:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
.L_0545:
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
jmp .L_053F
.L_0544:
.L_0543:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
mov ebx, -1
jne .L_07E5
cmp dword ptr [eax+40], 0
jne .L_07E5
.L_07E6:
xor ebx, ebx
.L_07E5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBISCARRAY@4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWSYM@4
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
je .L_054A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_054B
mov dword ptr [ebp-40], 24
jmp .L_07DD
.L_054B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_07DD:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_054D
mov dword ptr [ebp-44], 24
jmp .L_07DE
.L_054D:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.L_07DE:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_054F
mov dword ptr [ebp-52], 24
jmp .L_07E0
.L_054F:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_07E0:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .L_0553
.L_0554:
mov dword ptr [ebp-28], -1
jmp .L_0551
.L_0553:
cmp dword ptr [ebp-56], 20
jne .L_0555
.L_0556:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call _SYMBGETVALISTTYPE@8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .L_0551
.L_0555:
mov eax, dword ptr [ebp-32]
and eax, 480
je .L_0558
mov dword ptr [ebp-60], 24
jmp .L_07E1
.L_0558:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.L_07E1:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .L_055C
.L_055D:
mov dword ptr [ebp-28], -1
jmp .L_055A
.L_055C:
cmp dword ptr [ebp-64], 20
jne .L_055E
.L_055F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call _SYMBGETVALISTTYPE@8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.L_055E:
.L_055A:
.L_0557:
.L_0551:
.L_054A:
.L_0549:
cmp dword ptr [ebp-28], 0
jne .L_0561
jmp .L_053F
.L_0561:
.L_0560:
cmp dword ptr [ebp-24], 0
jne .L_0563
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
.L_0563:
.L_0562:
cmp dword ptr [ebp-16], 0
je .L_0565
cmp dword ptr [ebp-24], 0
je .L_0567
push dword ptr [ebp-8]
push 0
push 8
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
jmp .L_0566
.L_0567:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_0566:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .L_0569
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _EXPRNEWVREG@8
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_0569:
.L_0568:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .L_07ED
cmp dword ptr [eax+40], 0
je .L_056B
.L_07ED:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
.L_056B:
.L_056A:
.L_0565:
.L_0564:
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
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP@8
mov dword ptr [ebp-8], eax
jmp .L_053F
.L_056C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWOFFSET@12
mov dword ptr [ebp-8], eax
jmp .L_053F
.L_056D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_056E
mov dword ptr [ebp-24], 24
jmp .L_07E2
.L_056E:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_07E2:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .L_0571
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call _EXPRNEWIMMF@12
mov dword ptr [ebp-8], eax
jmp .L_0570
.L_0571:
cmp dword ptr [ebp-12], 1
jne .L_0572
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .L_07EE
cmp dword ptr [eax+24], 0
je .L_0573
.L_07EE:
mov dword ptr [ebp-28], 1
jmp .L_07E3
.L_0573:
mov dword ptr [ebp-28], 0
.L_07E3:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
jmp .L_0570
.L_0572:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
.L_0570:
jmp .L_053F
.L_0575:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRLOOKUP@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0577
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0578
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-8], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.L_0577:
.L_0576:
jmp .L_053F
.L_0540:
cmp dword ptr [ebp-20], 5
ja .L_053F
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_057B+eax*4]
_.L_057B:
.int .L_056D
.int .L_0542
.int .L_0542
.int .L_0542
.int .L_0575
.int .L_056C
.L_053F:
cmp dword ptr [ebp+12], 0
jne .L_057D
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_057D:
.L_057C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_053E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 24
.L_057E:
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_0581
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 3
push offset _Lt_0582
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
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
lea eax, [ebp-24]
push eax
call _HWRITELINE@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0581:
.L_0580:
.L_057F:
mov esp, ebp
pop ebp
ret 4
.balign 16
_EXPRSTORE@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0585:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0588
cmp dword ptr [ebp+16], 0
je .L_058A
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0578
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_07EF
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
push offset _Lt_07F0
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00E0
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_07EF
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_01CB
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_018D
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07F0
call _HWRITELINE@8
push dword ptr [_Lt_07EF]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT@12
mov dword ptr [ebp+12], eax
jmp .L_0589
.L_058A:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
.L_0589:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRCACHE@8
jmp .L_0587
.L_0588:
push -1
push dword ptr [ebp+8]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
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
je .L_058D
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp+12], eax
.L_058D:
.L_058C:
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07F0
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_01CB
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_018D
push -1
push offset _Lt_07F0
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07F0
call _HWRITELINE@8
.L_0587:
.L_0586:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_07F0,12
.balign 4
	.lcomm	_Lt_07EF,12

.section .text
.balign 16
__EMITBOP@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_058E:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_0591
push 0
push 5
push offset _Lt_0592
push -1
push offset _Lt_07F4
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
push eax
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_07F4
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_0593
push -1
push offset _Lt_07F4
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_07F4
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_07F4
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_018D
push -1
push offset _Lt_07F4
call _fb_StrConcatAssign@20
push 0
push offset _Lt_07F4
call _HWRITELINE@8
jmp .L_058F
.L_0591:
.L_0590:
cmp dword ptr [ebp+20], 0
jne .L_0596
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.L_0596:
.L_0595:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0598
.L_059A:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .L_059C
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_059C:
.L_059B:
jmp .L_0597
.L_059D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_059F
push dword ptr [ebp-4]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
.L_059F:
.L_059E:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .L_05A1
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
.L_05A1:
.L_05A0:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0597
.L_05A2:
push dword ptr [ebp-4]
push 0
push 16
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push 0
push 16
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0597
.L_05A3:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0597
.L_05A4:
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05A5
mov dword ptr [ebp-16], 24
jmp .L_07F3
.L_05A5:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_07F3:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-8]
push 34
call _EXPRNEWBOP@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0597
.L_05A7:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05A9
push 8
push 0
push 1
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05A8
.L_05A9:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05A8:
jmp .L_0597
.L_05AA:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .L_05AC
push 8
push 0
push 1
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05AB
.L_05AC:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05AB:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0597
.L_0598:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .L_0597
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_05AD+eax*4-112]
_.L_05AD:
.int .L_059D
.int .L_059D
.int .L_05A3
.int .L_05A2
.int .L_05A3
.int .L_05A3
.int .L_05A3
.int .L_05A3
.int .L_0597
.int .L_0597
.int .L_05A3
.int .L_05A7
.int .L_05AA
.int .L_05A4
.int .L_05A4
.int .L_0597
.int .L_0597
.int .L_059A
.int .L_059A
.int .L_059A
.int .L_059A
.int .L_059A
.int .L_059A
.L_0597:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE@12
.L_058F:
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_07F4,12

.section .text
.balign 16
__EMITUOP@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05AE:
cmp dword ptr [ebp+16], 0
jne .L_05B1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.L_05B1:
.L_05B0:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
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
je .L_05B3
push 8
push 0
push 0
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 45
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_05B2
.L_05B3:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05B2:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_05AF:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_05B4:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
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
je .L_05B7
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .L_05B9
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+28], 0
mov ebx, -1
jne .L_0800
cmp dword ptr [ecx+24], 0
jne .L_0800
.L_0801:
xor ebx, ebx
.L_0800:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05B8
.L_05B9:
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
.L_05B8:
jmp .L_05B6
.L_05B7:
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
je .L_05BA
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_05BC
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_05BD
mov dword ptr [ebp-16], 24
jmp .L_07F7
.L_05BD:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_07F7:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_05BF
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+24]
fld qword ptr [_Lt_07F9]
fcomip st, st(1)
fstp st(0)
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_07F8
.L_05BF:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+28], 0
mov ecx, -1
jne .L_0805
cmp dword ptr [ebx+24], 0
jne .L_0805
.L_0806:
xor ecx, ecx
.L_0805:
mov dword ptr [ebp-20], ecx
.L_07F8:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .L_05BB
.L_05BC:
push 8
push 0
push 0
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-4]
push 48
call _EXPRNEWBOP@12
mov dword ptr [ebp-4], eax
.L_05BB:
jmp .L_05B6
.L_05BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C2
mov dword ptr [ebp-8], 24
jmp .L_07FA
.L_05C2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_07FA:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_05C4
mov dword ptr [ebp-12], 24
jmp .L_07FB
.L_05C4:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_07FB:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .L_05C1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05C6
mov dword ptr [ebp-36], 24
jmp .L_07FD
.L_05C6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_07FD:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .L_05CA
.L_05CB:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05CD
push 0
push 7
push offset _Lt_05CE
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 1
jmp .L_05CC
.L_05CD:
push 0
push 7
push offset _Lt_05CF
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 8
.L_05CC:
mov dword ptr [ebp-32], 11
jmp .L_05C8
.L_05CA:
cmp dword ptr [ebp-40], 7
jg .L_05D0
.L_05D1:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D3
push 0
push 7
push offset _Lt_05D4
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 2
jmp .L_05D2
.L_05D3:
push 0
push 7
push offset _Lt_05D5
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 16
.L_05D2:
mov dword ptr [ebp-32], 13
jmp .L_05C8
.L_05D0:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .L_05D8
push 0
push 8
push offset _Lt_05D9
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 4
jmp .L_05D7
.L_05D8:
push 0
push 8
push offset _Lt_05DA
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
or dword ptr [_CTX+2604], 32
.L_05D7:
mov dword ptr [ebp-32], 14
.L_05D6:
.L_05C8:
push 0
push 3
push offset _Lt_00E8
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00E9
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_05C1:
.L_05B6:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRSTORE@12
.L_05B5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORE@8:
push ebp
mov ebp, esp
.L_05DB:
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
push dword ptr [ebp+8]
call _EXPRSTORE@12
.L_05DC:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSPILLREGS@0:
.L_05DD:
.L_05DE:
ret
.balign 16
__EMITLOAD@4:
push ebp
mov ebp, esp
.L_05DF:
.L_05E0:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLOADRES@8:
push ebp
mov ebp, esp
sub esp, 36
.L_05E1:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call __EMITSTORE@8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 8
push offset _Lt_05E3
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
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_05E2:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITADDR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_05E7:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .L_05EA
.L_05EB:
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
je .L_05ED
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .L_05EF
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call _EXPRNEWSYM@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
jmp .L_05E9
.L_05EF:
.L_05EE:
.L_05ED:
.L_05EC:
push -1
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
push 22
call _EXPRNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_05E9
.L_05EA:
cmp dword ptr [ebp+8], 76
jne .L_05F0
.L_05F1:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
.L_05F0:
.L_05E9:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_05E8:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOCALL@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_05F2:
push 0
push 3
push offset _Lt_00E8
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.L_05F4:
cmp dword ptr [ebp-4], 0
je .L_05F6
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
jmp .L_080B
.L_05F6:
mov dword ptr [ebp-16], 0
.L_080B:
cmp dword ptr [ebp-16], 0
je .L_05F5
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-20], eax
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call _EXPRNEWVREG@8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_05F8
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
jmp .L_080C
.L_05F8:
mov dword ptr [ebp-28], 0
.L_080C:
cmp dword ptr [ebp-28], 0
je .L_05FB
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _EXPRNEWCAST@12
mov dword ptr [ebp-24], eax
.L_05FB:
.L_05FA:
push 0
push -1
push 0
push dword ptr [ebp-24]
call _EXPRFLUSH@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push dword ptr [ebp-4]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE@8
cmp dword ptr [ebp-20], 0
je .L_05FD
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .L_05FF
push 0
push 3
push offset _Lt_014A
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_05FF:
.L_05FE:
.L_05FD:
.L_05FC:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_05F4
.L_05F5:
push 0
push 3
push offset _Lt_00E9
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+16], 0
jne .L_0601
push 0
push 2
push offset _Lt_018D
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push 0
push dword ptr [ebp+8]
call _HWRITELINE@8
jmp .L_0600
.L_0601:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+4]
call _EXPRNEWTEXT@12
push eax
push dword ptr [ebp+16]
call _EXPRSTORE@12
.L_0600:
.L_05F3:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCALL@16:
push ebp
mov ebp, esp
.L_0602:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0811
call _fb_StrAssign@20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset _Lt_0811
call _HDOCALL@16
.L_0603:
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0811,12

.section .text
.balign 16
__EMITCALLPTR@20:
push ebp
mov ebp, esp
.L_0604:
push 0
push 2
push offset _Lt_0444
push -1
push offset _Lt_0812
call _fb_StrAssign@20
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push offset _Lt_0812
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013F
push -1
push offset _Lt_0812
call _fb_StrConcatAssign@20
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset _Lt_0812
call _HDOCALL@16
.L_0605:
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_0812,12

.section .text
.balign 16
__EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 36
.L_0606:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push -1
push -1
push 0
push dword ptr [ebp+8]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 7
push offset _Lt_0608
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
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0607:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 36
.L_060C:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_060E
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
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_060D:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITJMPTB@40:
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.L_0612:
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
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+24], 0
jg .L_0615
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_060E
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign@20
lea eax, [ebp-280]
push eax
call _HWRITELINE@8
lea eax, [ebp-280]
push eax
call _fb_StrDelete@4
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0619
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign@20
lea eax, [ebp-316]
push eax
call _HWRITELINE@8
lea eax, [ebp-316]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0613
.L_0615:
.L_0614:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call _EXPRNEWIMMI@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset _Lt_061E
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push -1
push 2
push offset _Lt_01AD
push -1
push -1
lea eax, [ebp-12]
push eax
push 20
push offset _Lt_061D
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
lea eax, [ebp-104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-104]
push eax
call _HWRITELINE@8
lea eax, [ebp-104]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.L_0624:
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
jne .L_0628
cmp esi, edi
jne .L_0628
.L_0813:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .L_0627
.L_0628:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.L_0627:
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset _Lt_0629
push -1
push 0
push dword ptr [ebp-248]
call _SYMBGETMANGLEDNAME@4
push eax
push 3
push offset _Lt_04FA
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-284]
push eax
call _HWRITELINE@8
lea eax, [ebp-284]
push eax
call _fb_StrDelete@4
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .L_062E
cmp edi, esi
jne .L_062E
.L_0814:
jmp .L_0625
.L_062E:
.L_062D:
inc dword ptr [ebp-112]
.L_0626:
jmp .L_0624
.L_0625:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset _Lt_020F
push -1
lea esi, [ebp-124]
push esi
call _fb_StrAssign@20
lea esi, [ebp-124]
push esi
call _HWRITELINE@8
lea esi, [ebp-124]
push esi
call _fb_StrDelete@4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .L_0815
cmp dword ptr [ebp+32], 0
je .L_0631
.L_0815:
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
.L_0631:
.L_0630:
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 46
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 9
push offset _Lt_0593
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push 5
push offset _Lt_0592
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign@20
lea eax, [ebp-184]
push eax
call _HWRITELINE@8
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT@12
mov dword ptr [ebp-40], eax
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI@12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP@12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push 3
push offset _Lt_024F
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH@8
push eax
push -1
push 2
push offset _Lt_01AD
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0608
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign@20
lea eax, [ebp-244]
push eax
call _HWRITELINE@8
lea eax, [ebp-244]
push eax
call _fb_StrDelete@4
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
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
__EMITMEM@20:
push ebp
mov ebp, esp
sub esp, 84
.L_063C:
cmp dword ptr [ebp+8], 107
jne .L_063F
.L_0640:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push 6
push offset _Lt_0642
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 19
push offset _Lt_0641
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
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .L_063E
.L_063F:
cmp dword ptr [ebp+8], 105
jne .L_0648
.L_0649:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_ULongintToStr@8
push eax
push -1
push 3
push offset _Lt_014A
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push -1
push 3
push offset _Lt_014A
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
push eax
call _EXPRFLUSH@8
push eax
push 19
push offset _Lt_064A
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
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HWRITELINE@8
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.L_0648:
.L_063E:
.L_063D:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITMACRO@16:
push ebp
mov ebp, esp
sub esp, 32
.L_0652:
cmp dword ptr [ebp+8], 109
jne .L_0655
.L_0656:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
jmp .L_0654
.L_0655:
cmp dword ptr [ebp+8], 110
jne .L_0659
.L_065A:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
jmp .L_0654
.L_0659:
cmp dword ptr [ebp+8], 112
jne .L_065D
.L_065E:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE@12
jmp .L_0654
.L_065D:
cmp dword ptr [ebp+8], 111
jne .L_065F
.L_0660:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG@8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO@20
push eax
call _EXPRFLUSH@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
call _HWRITELINE@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
.L_065F:
.L_0654:
.L_0653:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITDECL@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0663:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_0666
jmp .L_0664
.L_0666:
.L_0665:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0668
push dword ptr [ebp-4]
call _HISSTATICWITHDTOR@4
test eax, eax
je .L_066A
jmp .L_0664
.L_066A:
.L_0669:
.L_0668:
.L_0667:
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR@4
.L_0664:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITDBG@16:
push ebp
mov ebp, esp
.L_066B:
cmp dword ptr [ebp+8], 113
jne .L_066E
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .L_0670
push dword ptr [ebp+20]
call _HUPDATECURRENTFILENAME@4
.L_0670:
.L_066F:
.L_066E:
.L_066D:
.L_066C:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0671:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0816
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0816
call _fb_TRIM@4
push eax
push -1
push offset _Lt_0816
call _fb_StrAssign@20
push -1
push offset _Lt_0816
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .L_0674
mov eax, dword ptr [_Lt_0816]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .L_0676
push 0
push 14
push offset _Lt_0677
push -1
push offset _Lt_0816
call _fb_StrConcatAssign@20
.L_0676:
.L_0675:
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push offset _Lt_0816
push 4
push offset _Lt_0678
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_0674:
.L_0673:
.L_0672:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0816,12

.section .text
.balign 16
_HFINDLABELINSEENLIST@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_067B:
push dword ptr [ebp+8]
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
.L_067D:
cmp dword ptr [ebp-8], 0
jne .L_0681
jmp .L_067E
.L_0681:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax], ebx
jne .L_0683
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .L_067E
.L_0683:
.L_0682:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-16]
.L_067F:
jmp .L_067D
.L_067E:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_067C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITASMLINE@4:
push ebp
mov ebp, esp
sub esp, 156
push ebx
.L_0684:
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
call _LISTINIT@16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-48], eax
.L_0686:
cmp dword ptr [ebp-48], 0
je .L_0687
mov eax, dword ptr [ebp-48]
cmp dword ptr [eax], 1
jne .L_0689
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 7
jne .L_068C
.L_068D:
mov dword ptr [ebp-4], -1
jmp .L_068A
.L_068C:
cmp dword ptr [ebp-116], 1
jne .L_068E
.L_068F:
inc dword ptr [ebp-8]
.L_068E:
.L_068A:
.L_0689:
.L_0688:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0686
.L_0687:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
push 0
push 8
push offset _Lt_0690
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrInit@20
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_0692
push 0
push 14
push offset _Lt_0693
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_0692:
.L_0691:
cmp dword ptr [ebp-4], 0
je .L_0695
push 0
push 6
push offset _Lt_0696
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_0695:
.L_0694:
push 0
push 3
push offset _Lt_00E8
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
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
.L_0697:
cmp dword ptr [ebp-48], 0
je .L_0698
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-116], ebx
cmp dword ptr [ebp-116], 0
jne .L_069B
.L_069C:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
jmp .L_0699
.L_069B:
cmp dword ptr [ebp-116], 1
jne .L_069E
.L_069F:
cmp dword ptr [_ENV+132], 0
jne .L_06A1
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_06A3
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-120], eax
cmp dword ptr [ebp-120], 1
jne .L_06A6
.L_06A7:
push 0
push 2
push offset _Lt_06A8
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-76]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [ebp-76]
cmp dword ptr [ebp-4], 0
je .L_06AA
push -1
lea eax, [ebp-100]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_06AC
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
.L_06AC:
.L_06AB:
push 0
push -1
push -1
push 2
push offset _Lt_013F
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push 6
push offset _Lt_06AD
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
jmp .L_06A9
.L_06AA:
push -1
lea eax, [ebp-88]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_06B2
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [ebp-88]
push eax
call _fb_StrConcatAssign@20
.L_06B2:
.L_06B1:
push 0
push -1
push -1
push 2
push offset _Lt_013F
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push 7
push offset _Lt_06B3
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
.L_06A9:
jmp .L_06A4
.L_06A6:
cmp dword ptr [ebp-120], 7
jne .L_06B7
.L_06B8:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-128], ebx
push dword ptr [ebp-128]
lea ebx, [ebp-44]
push ebx
call _HFINDLABELINSEENLIST@8
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], -1
je .L_06BA
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-132]
mov dword ptr [ebp-124], eax
jmp .L_06B9
.L_06BA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-124], eax
inc dword ptr [ebp-8]
lea eax, [ebp-44]
push eax
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp-128]
mov dword ptr [eax], ebx
push -1
lea ebx, [ebp-112]
push ebx
call _fb_StrLen@8
test eax, eax
jle .L_06BC
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [ebp-112]
push eax
call _fb_StrConcatAssign@20
.L_06BC:
.L_06BB:
push 0
push -1
push 0
push dword ptr [ebp-128]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-112]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
.L_06B9:
push 0
push 3
push offset _Lt_06BE
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-124]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
jmp .L_06A4
.L_06B7:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_06BF:
.L_06A4:
jmp .L_06A2
.L_06A3:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_06A2:
jmp .L_06A0
.L_06A1:
push 0
push -1
push 0
mov eax, dword ptr [ebp-48]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
.L_06A0:
.L_069E:
.L_0699:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-48], ebx
jmp .L_0697
.L_0698:
lea ebx, [ebp-44]
push ebx
call _LISTEND@4
cmp dword ptr [_ENV+132], 0
jne .L_06C4
push -1
lea ebx, [ebp-72]
push ebx
call _fb_StrLen@8
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-72]
lea ecx, [ebp-60]
push ecx
call _HBUILDSTRLIT@16
call _SECTIONINSIDEPROC@0
test eax, eax
je .L_06C6
push 0
push 4
push offset _Lt_06C7
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_06C7
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-100]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 18
push offset _Lt_06C8
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 0
je .L_06CC
.L_06CD:
cmp dword ptr [ebp-116], 1
jne .L_06CB
.L_06CC:
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_06CF
push 0
push 43
push offset _Lt_06D0
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_06CE
.L_06CF:
push 0
push 43
push offset _Lt_06D1
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 55
push offset _Lt_06D2
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06CE:
cmp dword ptr [_ENV+116], 1
jne .L_06D4
push 0
push 57
push offset _Lt_06D5
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 65
push offset _Lt_06D6
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
cmp eax, 1
jne .L_06D8
push 0
push 71
push offset _Lt_06D9
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06D8:
.L_06D7:
.L_06D4:
.L_06D3:
jmp .L_06C9
.L_06CB:
cmp dword ptr [ebp-116], 2
je .L_06DB
.L_06DC:
cmp dword ptr [ebp-116], 3
jne .L_06DA
.L_06DB:
push 0
push 43
push offset _Lt_06DD
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 55
push offset _Lt_06D2
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
cmp eax, 3
jne .L_06DF
push 0
push 29
push offset _Lt_06E0
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 64
push offset _Lt_06E1
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push 8
push offset _Lt_06E2
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06DF:
.L_06DE:
.L_06DA:
.L_06C9:
cmp dword ptr [ebp-4], 0
je .L_06E4
push 0
push 4
push offset _Lt_06C7
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-112]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06E4:
.L_06E3:
.L_06C6:
.L_06C5:
jmp .L_06C3
.L_06C4:
push 0
push -1
lea eax, [ebp-72]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_06C3:
push 0
push 4
push offset _Lt_00D6
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
push 0
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.L_0685:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIBEGIN@4:
push ebp
mov ebp, esp
.L_06E5:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+2652], 0
.L_06E6:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIEND@4:
push ebp
mov ebp, esp
.L_06E7:
push dword ptr [_CTX+2640]
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL@12
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign@20
.L_06E8:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINISEPARATOR@0:
.L_06E9:
cmp dword ptr [_CTX+2652], 0
jle .L_06EC
push 0
push 3
push offset _Lt_014A
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_06EC:
.L_06EB:
.L_06EA:
ret
.balign 16
__EMITVARINII@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06ED:
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
jne .L_0818
cmp dword ptr [ebp+12], 0
jne .L_0818
.L_0819:
xor eax, eax
.L_0818:
and ebx, eax
je .L_06F0
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_06F0:
.L_06EF:
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F2
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
.L_06F2:
.L_06F1:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06EE:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIF@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMF@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_06F6
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
.L_06F6:
.L_06F5:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST@12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06F4:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIOFS@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_06F7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWOFFSET@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_06FA
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
.L_06FA:
.L_06F9:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call _EXPRNEWCAST@12
mov dword ptr [ebp-4], eax
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_06F8:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITVARINISTR@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_06FB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_06FE
jg .L_081A
cmp dword ptr [ebp+20], ebx
jbe .L_06FE
.L_081A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_06FE:
.L_06FD:
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
call _HUNESCAPE@8
push eax
lea eax, [_CTX+2640]
push eax
call _HBUILDSTRLIT@16
call _HVARINISEPARATOR@0
.L_06FC:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIWSTR@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0700:
push 0
push 3
push offset _Lt_0702
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
call _HUNESCAPEW@8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0705
jg .L_081B
cmp dword ptr [ebp+20], ebx
jbe .L_0705
.L_081B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.L_0705:
.L_0704:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-20], ecx
jmp .L_0707
.L_070A:
cmp dword ptr [ebp-16], 0
jle .L_070C
push 0
push 3
push offset _Lt_014A
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatByref@20
.L_070C:
.L_070B:
push 0
push 3
push offset _Lt_070D
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatByref@20
mov ecx, dword ptr [ebp-16]
sal ecx, 1
mov ebx, dword ptr [ebp+16]
add ebx, ecx
movzx ecx, word ptr [ebx]
mov dword ptr [ebp-4], ecx
push 39
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .L_070F
push 0
push 3
push offset _Lt_0435
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign@20
jmp .L_070E
.L_070F:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_070E:
push 0
push 2
push offset _Lt_0443
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_0708:
inc dword ptr [ebp-16]
.L_0707:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_070A
.L_0709:
push 0
push 3
push offset _Lt_0710
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
call _HVARINISEPARATOR@0
.L_0701:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIPAD@8:
push ebp
mov ebp, esp
.L_0711:
.L_0712:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEBEGIN@8:
push ebp
mov ebp, esp
.L_0713:
inc dword ptr [_CTX+2652]
push 0
push 3
push offset _Lt_0702
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
.L_0714:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEEND@0:
.L_0715:
push 3
push offset _Lt_014A
push -1
push 2
lea eax, [_CTX+2640]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0718
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+2640]
push eax
call _fb_LEFTSELF@8
.L_0718:
.L_0717:
push 0
push 3
push offset _Lt_0710
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatByref@20
dec dword ptr [_CTX+2652]
call _HVARINISEPARATOR@0
.L_0716:
ret
.balign 16
__EMITFBCTINFBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
.L_0719:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push 19
push offset _Lt_071C
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_071E
push 0
push 50
push offset _Lt_0722
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
jmp .L_071D
.L_071E:
push 0
push 44
push offset _Lt_0725
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
.L_071D:
push 0
push 16
push offset _Lt_0726
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
.L_071A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFSTRING@4:
push ebp
mov ebp, esp
sub esp, 24
.L_0727:
push 0
push -1
push -1
push 3
push offset _Lt_0729
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2656]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
.L_0728:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFBCTINFEND@0:
.L_072C:
push 3
push offset _Lt_0729
push -1
push 2
lea eax, [_CTX+2656]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_072F
push 0
push -1
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+2656]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign@20
.L_072F:
.L_072E:
push 0
push 3
push offset _Lt_0730
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatByref@20
push -1
lea eax, [_CTX+2656]
push eax
call _HWRITELINE@8
.L_072D:
ret
.balign 16
__EMITPROCBEGIN@8:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.L_0731:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call _HUPDATECURRENTFILENAME@4
call _IRHLEMITPROCBEGIN@0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
call _HWRITELINE@8
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
cmp dword ptr [_ENV+148], 0
je .L_0735
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call __EMITDBG@16
.L_0735:
.L_0734:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_0737
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 20
push offset _Lt_02FB
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HWRITELINE@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 5
push offset _Lt_073A
push -1
push -1
lea eax, [ebp-12]
push eax
push 18
push offset _Lt_0739
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@8
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 6
push offset _Lt_073F
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_073E
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
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HWRITELINE@8
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0732
.L_0737:
.L_0736:
call _SECTIONBEGIN@0
push dword ptr [ebp+8]
call _HNEEDALIAS@4
test eax, eax
je .L_0744
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_018D
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HWRITELINE@8
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.L_0744:
.L_0743:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HEMITPROCHEADER@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 2
push offset _Lt_0277
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0732:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPROCEND@12:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_0749:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .L_074C
cmp dword ptr [_ENV+108], 2
jne .L_074E
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_073A
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_0750
push -1
push -1
lea eax, [ebp-12]
push eax
push 17
push offset _Lt_074F
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
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
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HWRITELINE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.L_074E:
.L_074D:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_074A
.L_074C:
.L_074B:
call _SECTIONUNINDENT@0
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset _Lt_0294
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
call _SECTIONEND@0
.L_0757:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_075B
jmp .L_0758
.L_075B:
.L_075A:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _EXPRFREETREE@4
push dword ptr [ebp-16]
lea eax, [_CTX+2724]
push eax
call _LISTDELNODE@8
.L_0759:
jmp .L_0757
.L_0758:
call _IRHLEMITPROCEND@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_074A:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 12
.L_075C:
call _SECTIONBEGIN@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0277
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _SECTIONINDENT@0
.L_075D:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 12
.L_075F:
call _SECTIONUNINDENT@0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0294
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _SECTIONEND@0
.L_0760:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.L_0763:
push offset _CTX
call __ZN8IRHLCCTXC1Ev
add esp, 4
.L_0764:
ret
.balign 16
__GLOBAL__D:
.L_0766:
push offset _CTX
call __ZN8IRHLCCTXD1Ev
add esp, 4
.L_0767:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4

.globl _IRHLC_VTBL
_IRHLC_VTBL:
.int __INIT@0
.int __END@0
.int __EMITBEGIN@0
.int __EMITEND@0
.int __GETOPTIONVALUE@4
.int __SUPPORTSOP@8
.int __PROCBEGIN@4
.int __PROCEND@4
.long 0
.long 0
.long 0
.int __SCOPEBEGIN@4
.int __SCOPEEND@4
.int __PROCALLOCSTATICVARS@4
.int __EMITCONVERT@8
.int __EMITLABEL@4
.int __EMITLABEL@4
.long 0
.int __EMITPROCBEGIN@8
.int __EMITPROCEND@12
.int _IRHLEMITPUSHARG@24
.int __EMITASMLINE@4
.int __EMITCOMMENT@4
.int __EMITBOP@20
.int __EMITUOP@12
.int __EMITSTORE@8
.int __EMITSPILLREGS@0
.int __EMITLOAD@4
.int __EMITLOADRES@8
.long 0
.int __EMITADDR@12
.int __EMITCALL@16
.int __EMITCALLPTR@20
.long 0
.int __EMITJUMPPTR@4
.int __EMITBRANCH@8
.int __EMITJMPTB@40
.int __EMITMEM@20
.int __EMITMACRO@16
.int __EMITSCOPEBEGIN@4
.int __EMITSCOPEEND@4
.int __EMITDECL@4
.int __EMITDBG@16
.int __EMITVARINIBEGIN@4
.int __EMITVARINIEND@4
.int __EMITVARINII@12
.int __EMITVARINIF@12
.int __EMITVARINIOFS@16
.int __EMITVARINISTR@20
.int __EMITVARINIWSTR@20
.int __EMITVARINIPAD@8
.int __EMITVARINISCOPEBEGIN@8
.int __EMITVARINISCOPEEND@0
.int __EMITFBCTINFBEGIN@0
.int __EMITFBCTINFSTRING@4
.int __EMITFBCTINFEND@0
.int _IRHLALLOCVREG@8
.int _IRHLALLOCVRIMM@16
.int _IRHLALLOCVRIMMF@16
.int _IRHLALLOCVRVAR@20
.int _IRHLALLOCVRIDX@28
.int _IRHLALLOCVRPTR@20
.int _IRHLALLOCVROFS@20
.int __SETVREGDATATYPE@12
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,2760

.section .data
.balign 4
_DTYPENAME:
.int _Lt_0088
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.int _Lt_008C
.int _Lt_008D
.int _Lt_008E
.long 0
.long 0
.long 0
.long 0
.int _Lt_008F
.int _Lt_0090
.int _Lt_0091
.int _Lt_0092
.int _Lt_0093
.int _Lt_0094
.int _Lt_0095
.long 0
.int _Lt_0096
.long 0
.long 0
.long 0
.int _Lt_0088
.long 0
.skip 4,0
.balign 4
_Lt_0088:	.ascii	"void\0"
.balign 4
_Lt_0089:	.ascii	"boolean\0"
.balign 4
_Lt_008A:	.ascii	"int8\0"
.balign 4
_Lt_008B:	.ascii	"uint8\0"
.balign 4
_Lt_008C:	.ascii	"char\0"
.balign 4
_Lt_008D:	.ascii	"int16\0"
.balign 4
_Lt_008E:	.ascii	"uint16\0"
.balign 4
_Lt_008F:	.ascii	"int32\0"
.balign 4
_Lt_0090:	.ascii	"uint32\0"
.balign 4
_Lt_0091:	.ascii	"int64\0"
.balign 4
_Lt_0092:	.ascii	"uint64\0"
.balign 4
_Lt_0093:	.ascii	"float\0"
.balign 4
_Lt_0094:	.ascii	"double\0"
.balign 4
_Lt_0095:	.ascii	"FBSTRING\0"
.balign 4
_Lt_0096:	.ascii	"__builtin_va_list\0"
.balign 4
_Lt_00A9:	.ascii	"\t\0"
.balign 4
_Lt_00AF:	.ascii	"\r\n\0"
.balign 4
_Lt_00C8:	.ascii	"#line \0"
.balign 4
_Lt_00C9:	.ascii	" \"\0"
.balign 4
_Lt_00CA:	.ascii	"\"\0"
.balign 4
_Lt_00CD:	.ascii	"\\\0"
.balign 4
_Lt_00CE:	.ascii	"\\\\\0"
.balign 4
_Lt_00D3:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
_Lt_00D5:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
_Lt_00D6:	.ascii	" );\0"
.balign 4
_Lt_00E0:	.ascii	" \0"
.balign 4
_Lt_00E1:	.ascii	"__attribute__(( \0"
.balign 4
_Lt_00E4:	.ascii	"constructor\0"
.balign 4
_Lt_00E5:	.ascii	"destructor\0"
.balign 4
_Lt_00E8:	.ascii	"( \0"
.balign 4
_Lt_00E9:	.ascii	" )\0"
.balign 4
_Lt_00EC:	.ascii	" ))\0"
.balign 4
_Lt_00F3:	.ascii	"_\0"
.balign 4
_Lt_00F9:	.ascii	"@\0"
.balign 4
_Lt_0116:	.ascii	"static \0"
.balign 4
_Lt_0125:	.ascii	" __stdcall\0"
.balign 4
_Lt_0127:	.ascii	" __attribute__((stdcall))\0"
.balign 4
_Lt_012F:	.ascii	" __thiscall\0"
.balign 4
_Lt_0131:	.ascii	" __attribute__((thiscall))\0"
.balign 4
_Lt_0139:	.ascii	" __fastcall\0"
.balign 4
_Lt_013B:	.ascii	" __attribute__((fastcall))\0"
.balign 4
_Lt_013E:	.ascii	"(*\0"
.balign 4
_Lt_013F:	.ascii	")\0"
.balign 4
_Lt_014A:	.ascii	", \0"
.balign 4
_Lt_0153:	.ascii	"...\0"
.balign 4
_Lt_0156:	.ascii	"char**\0"
.balign 4
_Lt_0163:	.ascii	" asm(\"\0"
.balign 4
_Lt_0164:	.ascii	"\")\0"
.balign 4
_Lt_016B:	.ascii	"union \0"
.balign 4
_Lt_016C:	.ascii	"struct \0"
.balign 4
_Lt_0177:	.ascii	"$\0"
.balign 4
_Lt_018C:	.ascii	"typedef \0"
.balign 4
_Lt_018D:	.ascii	";\0"
.balign 4
_Lt_01AD:	.ascii	"[\0"
.balign 4
_Lt_01AE:	.ascii	"]\0"
.balign 4
_Lt_01C1:	.ascii	"extern \0"
.balign 4
_Lt_01C8:	.ascii	" __attribute__((common))\0"
.balign 4
_Lt_01CB:	.ascii	" = \0"
.balign 4
_Lt_0207:	.ascii	"union {\0"
.balign 4
_Lt_0209:	.ascii	"struct {\0"
.balign 4
_Lt_020F:	.ascii	"};\0"
.balign 4
_Lt_0227:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
_Lt_0228:	.ascii	")))\0"
.balign 4
_Lt_0239:	.ascii	" __attribute__((aligned(\0"
.balign 4
_Lt_024A:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
_Lt_024B:	.ascii	" {\0"
.balign 4
_Lt_024E:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
_Lt_024F:	.ascii	"];\0"
.balign 4
_Lt_0254:	.ascii	"sizeof( \0"
.balign 4
_Lt_0255:	.ascii	" ) == \0"
.balign 4
_Lt_0265:	.ascii	"l\0"
.balign 4
_Lt_0268:	.ascii	"q\0"
.balign 4
_Lt_026B:	.ascii	"s\0"
.balign 4
_Lt_026D:	.ascii	"static inline \0"
.balign 4
_Lt_026E:	.ascii	" fb_\0"
.balign 4
_Lt_026F:	.ascii	" value )\0"
.balign 4
_Lt_0277:	.ascii	"{\0"
.balign 4
_Lt_0279:	.ascii	"volatile \0"
.balign 4
_Lt_027A:	.ascii	" result;\0"
.balign 4
_Lt_027E:	.ascii	"__asm__(\0"
.balign 4
_Lt_0280:	.ascii	"\"fld\0"
.balign 4
_Lt_0281:	.ascii	" %1;\"\0"
.balign 4
_Lt_0285:	.ascii	"\"fistp\0"
.balign 4
_Lt_0286:	.ascii	" %0;\"\0"
.balign 4
_Lt_028A:	.ascii	":\"=m\" (result)\0"
.balign 4
_Lt_028C:	.ascii	":\"m\" (value)\0"
.balign 4
_Lt_028E:	.ascii	":\"st\"\0"
.balign 4
_Lt_0290:	.ascii	");\0"
.balign 4
_Lt_0292:	.ascii	"return result;\0"
.balign 4
_Lt_0294:	.ascii	"}\0"
.balign 4
_Lt_029A:	.ascii	"nearbyintf\0"
.balign 4
_Lt_029B:	.ascii	"nearbyint\0"
.balign 4
_Lt_029C:	.ascii	"#define fb_\0"
.balign 4
_Lt_029D:	.ascii	"( value ) ((\0"
.balign 4
_Lt_029E:	.ascii	")__builtin_\0"
.balign 4
_Lt_029F:	.ascii	"( value ))\0"
.balign 4
_Lt_02B3:	.ascii	"\t\"\0"
.balign 4
_Lt_02B4:	.ascii	"\\t.ascii \0"
.balign 4
_Lt_02B5:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
_Lt_02B6:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
_Lt_02B7:	.ascii	"\\n\0"
.balign 4
_Lt_02B8:	.ascii	"\"\n\0"
.balign 4
_Lt_02C1:	.ascii	"typedef   signed char       int8;\0"
.balign 4
_Lt_02C3:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
_Lt_02C5:	.ascii	"typedef   signed short      int16;\0"
.balign 4
_Lt_02C7:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
_Lt_02C9:	.ascii	"typedef   signed int        int32;\0"
.balign 4
_Lt_02CB:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
_Lt_02CD:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
_Lt_02CF:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
_Lt_02D3:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
_Lt_02D5:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
_Lt_02D7:	.ascii	"typedef int8 boolean;\0"
.balign 4
_Lt_02DD:	.ascii	"F2I\0"
.balign 4
_Lt_02E1:	.ascii	"F2L\0"
.balign 4
_Lt_02E5:	.ascii	"F2UL\0"
.balign 4
_Lt_02E9:	.ascii	"D2I\0"
.balign 4
_Lt_02ED:	.ascii	"D2L\0"
.balign 4
_Lt_02F1:	.ascii	"D2UL\0"
.balign 4
_Lt_02F7:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
_Lt_02FB:	.ascii	"__asm__( \".text\" );\0"
.balign 4
_Lt_0309:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0349:	.ascii	"*\0"
.balign 4
_Lt_0402:	.ascii	"u\0"
.balign 4
_Lt_0403:	.ascii	"ll\0"
.balign 4
_Lt_040A:	.ascii	"ull\0"
.balign 4
_Lt_0415:	.ascii	"(-__builtin_inf())\0"
.balign 4
_Lt_0416:	.ascii	"__builtin_inf()\0"
.balign 4
_Lt_0419:	.ascii	"(-__builtin_inff())\0"
.balign 4
_Lt_041A:	.ascii	"__builtin_inff()\0"
.balign 4
_Lt_0422:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
_Lt_0423:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
_Lt_0426:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
_Lt_0427:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
_Lt_042B:	.ascii	"f\0"
.balign 4
_Lt_0435:	.ascii	"\\x\0"
.balign 4
_Lt_0439:	.ascii	"\" \"\0"
.balign 4
_Lt_043B:	.ascii	"?\0"
.balign 4
_Lt_0443:	.ascii	"'\0"
.balign 4
_Lt_0444:	.ascii	"(\0"
.balign 4
_Lt_0448:	.ascii	"-\0"
.balign 4
_Lt_0454:	.ascii	"L\"\0"
.balign 4
_Lt_045F:	.ascii	"\" L\"\0"
.balign 4
_Lt_0475:	.ascii	" + \0"
.balign 4
_Lt_0477:	.ascii	" - \0"
.balign 4
_Lt_0479:	.ascii	" * \0"
.balign 4
_Lt_047B:	.ascii	" / \0"
.balign 4
_Lt_047E:	.ascii	" % \0"
.balign 4
_Lt_0480:	.ascii	" << \0"
.balign 4
_Lt_0482:	.ascii	" >> \0"
.balign 4
_Lt_0484:	.ascii	" & \0"
.balign 4
_Lt_0486:	.ascii	" | \0"
.balign 4
_Lt_0488:	.ascii	" ^ \0"
.balign 4
_Lt_048A:	.ascii	" == \0"
.balign 4
_Lt_048C:	.ascii	" > \0"
.balign 4
_Lt_048E:	.ascii	" < \0"
.balign 4
_Lt_0490:	.ascii	" != \0"
.balign 4
_Lt_0492:	.ascii	" >= \0"
.balign 4
_Lt_0494:	.ascii	" <= \0"
.balign 4
_Lt_049B:	.ascii	"&\0"
.balign 4
_Lt_04A2:	.ascii	"~\0"
.balign 4
_Lt_04AB:	.ascii	"__builtin_fabsf\0"
.balign 4
_Lt_04AD:	.ascii	"__builtin_fabs\0"
.balign 4
_Lt_04AF:	.ascii	"__builtin_llabs\0"
.balign 4
_Lt_04B1:	.ascii	"__builtin_abs\0"
.balign 4
_Lt_04BA:	.ascii	"__builtin_sinf\0"
.balign 4
_Lt_04BC:	.ascii	"__builtin_asinf\0"
.balign 4
_Lt_04BE:	.ascii	"__builtin_cosf\0"
.balign 4
_Lt_04C0:	.ascii	"__builtin_acosf\0"
.balign 4
_Lt_04C2:	.ascii	"__builtin_tanf\0"
.balign 4
_Lt_04C4:	.ascii	"__builtin_atanf\0"
.balign 4
_Lt_04C6:	.ascii	"__builtin_sqrtf\0"
.balign 4
_Lt_04C8:	.ascii	"__builtin_logf\0"
.balign 4
_Lt_04CA:	.ascii	"__builtin_expf\0"
.balign 4
_Lt_04CC:	.ascii	"__builtin_floorf\0"
.balign 4
_Lt_04D3:	.ascii	"__builtin_sin\0"
.balign 4
_Lt_04D5:	.ascii	"__builtin_asin\0"
.balign 4
_Lt_04D7:	.ascii	"__builtin_cos\0"
.balign 4
_Lt_04D9:	.ascii	"__builtin_acos\0"
.balign 4
_Lt_04DB:	.ascii	"__builtin_tan\0"
.balign 4
_Lt_04DD:	.ascii	"__builtin_atan\0"
.balign 4
_Lt_04DF:	.ascii	"__builtin_sqrt\0"
.balign 4
_Lt_04E1:	.ascii	"__builtin_log\0"
.balign 4
_Lt_04E3:	.ascii	"__builtin_exp\0"
.balign 4
_Lt_04E5:	.ascii	"__builtin_floor\0"
.balign 4
_Lt_04FA:	.ascii	"&&\0"
.balign 4
_Lt_050F:	.ascii	"__builtin_va_arg( \0"
.balign 4
_Lt_0513:	.ascii	"__builtin_va_start( \0"
.balign 4
_Lt_0516:	.ascii	"__builtin_va_end( \0"
.balign 4
_Lt_0519:	.ascii	"__builtin_va_copy( \0"
.balign 4
_Lt_052C:	.ascii	"__builtin_atan2f\0"
.balign 4
_Lt_052D:	.ascii	"__builtin_atan2\0"
.balign 4
_Lt_0578:	.ascii	"vr$\0"
.balign 4
_Lt_0582:	.ascii	":;\0"
.balign 4
_Lt_0592:	.ascii	"if( \0"
.balign 4
_Lt_0593:	.ascii	" ) goto \0"
.balign 4
_Lt_05CE:	.ascii	"fb_F2I\0"
.balign 4
_Lt_05CF:	.ascii	"fb_D2I\0"
.balign 4
_Lt_05D4:	.ascii	"fb_F2L\0"
.balign 4
_Lt_05D5:	.ascii	"fb_D2L\0"
.balign 4
_Lt_05D9:	.ascii	"fb_F2UL\0"
.balign 4
_Lt_05DA:	.ascii	"fb_D2UL\0"
.balign 4
_Lt_05E3:	.ascii	"return \0"
.balign 4
_Lt_0608:	.ascii	"goto *\0"
.balign 4
_Lt_060E:	.ascii	"goto \0"
.balign 4
_Lt_0619:	.ascii	"(void)\0"
.balign 4
_Lt_061D:	.ascii	"static const void* \0"
.balign 4
_Lt_061E:	.ascii	"] = {\0"
.balign 4
_Lt_0629:	.ascii	",\0"
.balign 4
_Lt_0641:	.ascii	"__builtin_memset( \0"
.balign 4
_Lt_0642:	.ascii	", 0, \0"
.balign 4
_Lt_064A:	.ascii	"__builtin_memcpy( \0"
.balign 4
_Lt_0677:	.ascii	"not_an_escape\0"
.balign 4
_Lt_0678:	.ascii	"// \0"
.balign 4
_Lt_0690:	.ascii	"__asm__\0"
.balign 4
_Lt_0693:	.ascii	" __volatile__\0"
.balign 4
_Lt_0696:	.ascii	" goto\0"
.balign 4
_Lt_06A8:	.ascii	"%\0"
.balign 4
_Lt_06AD:	.ascii	"\"m\" (\0"
.balign 4
_Lt_06B3:	.ascii	"\"+m\" (\0"
.balign 4
_Lt_06BE:	.ascii	"%l\0"
.balign 4
_Lt_06C7:	.ascii	" : \0"
.balign 4
_Lt_06C8:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
_Lt_06D0:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"edi\", \"esi\"\0"
.balign 4
_Lt_06D1:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rdi\", \"rsi\"\0"
.balign 4
_Lt_06D2:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
_Lt_06D5:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
_Lt_06D6:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
_Lt_06D9:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
_Lt_06DD:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
_Lt_06E0:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
_Lt_06E1:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
_Lt_06E2:	.ascii	", \"r30\"\0"
.balign 4
_Lt_0702:	.ascii	"{ \0"
.balign 4
_Lt_070D:	.ascii	"L'\0"
.balign 4
_Lt_0710:	.ascii	" }\0"
.balign 4
_Lt_071C:	.ascii	"static const char \0"
.balign 4
_Lt_0722:	.ascii	"__attribute__((used, section(\"__DATA,fbctinf\"))) \0"
.balign 4
_Lt_0725:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
_Lt_0726:	.ascii	"__fbctinf[] = \"\0"
.balign 4
_Lt_0729:	.ascii	"\\0\0"
.balign 4
_Lt_0730:	.ascii	"\";\0"
.balign 4
_Lt_0739:	.ascii	"__asm__( \".globl \0"
.balign 4
_Lt_073A:	.ascii	"\" );\0"
.balign 4
_Lt_073E:	.ascii	"__asm__( \"\0"
.balign 4
_Lt_073F:	.ascii	":\" );\0"
.balign 4
_Lt_074F:	.ascii	"__asm__( \".size \0"
.balign 4
_Lt_0750:	.ascii	", .-\0"
.balign 8
_Lt_07F9:	.quad	0x0000000000000000

.section .ctors
.int _fb_ctor__irzhlc
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
