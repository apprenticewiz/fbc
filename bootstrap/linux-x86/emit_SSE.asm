	.intel_syntax noprefix

.section .text
.balign 16

.globl _INIT_OPFNTB_SSE
_INIT_OPFNTB_SSE:
.type _INIT_OPFNTB_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0964:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_EMITLOADB2F_X86], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITLOADF2I_SSE
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITLOADI2F_SSE
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITLOADF2L_SSE
mov dword ptr [ebx+40], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITLOADL2F_SSE
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITLOADF2F_SSE
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITLOADB2F_SSE
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSTORF2I_SSE
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITSTORI2F_SSE
mov dword ptr [eax+84], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSTORF2L_SSE
mov dword ptr [ebx+104], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITSTORL2F_SSE
mov dword ptr [eax+92], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSTORF2F_SSE
mov dword ptr [ebx+88], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITMOVF_SSE
mov dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITADDF_SSE
mov dword ptr [ebx+148], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITSUBF_SSE
mov dword ptr [eax+160], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITMULF_SSE
mov dword ptr [ebx+172], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITDIVF_SSE
mov dword ptr [eax+184], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITATN2_SSE
mov dword ptr [ebx+260], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITPOW_SSE
mov dword ptr [eax+264], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITCGTF_SSE
mov dword ptr [ebx+280], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITCLTF_SSE
mov dword ptr [eax+292], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITCEQF_SSE
mov dword ptr [ebx+304], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITCNEF_SSE
mov dword ptr [eax+316], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITCGEF_SSE
mov dword ptr [ebx+328], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITCLEF_SSE
mov dword ptr [eax+340], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITNEGF_SSE
mov dword ptr [ebx+352], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITHADDF_SSE
mov dword ptr [eax+368], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITABSF_SSE
mov dword ptr [ebx+376], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITSGNF_SSE
mov dword ptr [eax+388], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITFIX_SSE
mov dword ptr [ebx+396], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITFRAC_SSE
mov dword ptr [eax+400], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSIN_SSE
mov dword ptr [ebx+412], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITASIN_SSE
mov dword ptr [eax+416], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITCOS_SSE
mov dword ptr [ebx+420], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITACOS_SSE
mov dword ptr [eax+424], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITTAN_SSE
mov dword ptr [ebx+428], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITATAN_SSE
mov dword ptr [eax+432], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSQRT_SSE
mov dword ptr [ebx+436], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITRSQRT_SSE
mov dword ptr [eax+440], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITRCP_SSE
mov dword ptr [ebx+444], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITLOG_SSE
mov dword ptr [eax+448], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITEXP_SSE
mov dword ptr [ebx+452], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITFLOOR_SSE
mov dword ptr [eax+456], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITSWZREPF_SSE
mov dword ptr [ebx+408], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _EMITPUSHF_SSE
mov dword ptr [eax+472], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _EMITPOPF_SSE
mov dword ptr [ebx+484], eax
mov dword ptr [ebp-4], -1
.L_0965:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _INIT_OPFNTB_SSE, .-_INIT_OPFNTB_SSE
.cfi_endproc
.balign 16
fb_ctor__emit_SSE:
.type fb_ctor__emit_SSE, @function
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
.size fb_ctor__emit_SSE, .-fb_ctor__emit_SSE
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
HULONG2DBL:
.type HULONG2DBL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0075:
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0966
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push -1
push 0
push 8
push offset Lt_0967
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0078
push -1
push offset Lt_0968
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0967
push -1
push offset Lt_0968
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0079
push -1
push offset Lt_0968
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0968]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_007A
push -1
push offset Lt_0968
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0966
push -1
push offset Lt_0968
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0968]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_007B
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_007C
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_007D
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_007E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_007F
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0080
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0966]
call HLABEL
add esp, 16
.L_0076:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HULONG2DBL, .-HULONG2DBL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0966,12
.balign 4
	.lcomm	Lt_0967,12
.balign 4
	.lcomm	Lt_0968,12

.section .text
.balign 16
_EMITLOADB2F_SSE:
.type _EMITLOADB2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 116
push ebx
.L_0081:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMITLOADB2F_X86]
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0084
mov dword ptr [ebp-20], 24
jmp .L_0969
.L_0084:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0969:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-16], ebx
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-16], 4
jle .L_008B
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 8
push offset Lt_008D
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-116]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008A
.L_008B:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0094
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-116]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 16
.L_008A:
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0082:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADB2F_SSE, .-_EMITLOADB2F_SSE
.cfi_endproc
.balign 16
_EMITSTORF2L_SSE:
.type _EMITSTORF2L_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 116
push ebx
.L_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00A0
mov dword ptr [ebp-4], 24
jmp .L_096A
.L_00A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_096A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
jne .L_00A3
jmp .L_009F
.L_00A3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 1
jne .L_00A5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00A6
mov dword ptr [ebp-32], 24
jmp .L_096B
.L_00A6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_096B:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_096C], ebx
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_096C]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_096D
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_096C], 4
jle .L_00AB
sub esp, 12
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_096D
push 25
push offset Lt_00AD
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-104]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_00AA
.L_00AB:
sub esp, 12
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_096D
push 24
push offset Lt_00B2
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-104]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_00AA:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_096C]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_00A5:
.L_00A4:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_096E
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_096E
push 7
push offset Lt_00B8
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_009F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2L_SSE, .-_EMITSTORF2L_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_096E,12
.balign 4
	.lcomm	Lt_096D,12
.balign 4
	.lcomm	Lt_096C,4

.section .text
.balign 16
_EMITSTORF2I_SSE:
.type _EMITSTORF2I_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_00BB:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0975
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0976
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00BD
mov dword ptr [ebp-4], 24
jmp .L_096F
.L_00BD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_096F:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0977], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00BF
mov dword ptr [ebp-8], 24
jmp .L_0970
.L_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0970:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0978], eax
mov eax, dword ptr [Lt_0978]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C1
mov dword ptr [ebp-12], 24
jmp .L_0971
.L_00C1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0971:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-20]
je .L_00C4
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_00C7
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 5
push offset Lt_00C8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 1
jne .L_00CB
cmp dword ptr [Lt_0977], 4
jle .L_00CD
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 25
push offset Lt_00AD
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_00CC
.L_00CD:
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 24
push offset Lt_00B2
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_00CC:
.L_00CB:
.L_00C6:
sub esp, 12
push offset Lt_00D2
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0975]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_00D3
call OUTP
add esp, 16
jmp .L_00BC
.L_00C4:
.L_00C3:
mov eax, dword ptr [Lt_0978]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00D4
mov dword ptr [ebp-16], 24
jmp .L_0973
.L_00D4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0973:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
and ebx, dword ptr [ebp-20]
je .L_00D7
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_00D9
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 5
push offset Lt_00C8
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00D8
.L_00D9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 1
jne .L_00DC
cmp dword ptr [Lt_0977], 4
jle .L_00DE
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 25
push offset Lt_00AD
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_00DD
.L_00DE:
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push 24
push offset Lt_00B2
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_00DD:
.L_00DC:
.L_00D8:
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0975
push 7
push offset Lt_00B8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
jmp .L_00BC
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0978]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00E7
mov dword ptr [Lt_097E], -1
sub esp, 12
push 0
push -1
push offset Lt_0975
push -1
push offset Lt_097F
call fb_StrAssign
add esp, 32
mov dword ptr [Lt_0980], -1
jmp .L_00E6
.L_00E7:
mov dword ptr [Lt_0980], 0
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0981], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0981]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_097F
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0981]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_097E], eax
cmp dword ptr [Lt_097E], 0
jne .L_00E9
sub esp, 12
push dword ptr [Lt_097F]
call HPUSH
add esp, 16
.L_00E9:
.L_00E8:
.L_00E6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_00EB
sub esp, 12
push offset Lt_00EC
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00ED
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_097F
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00D3
call OUTP
add esp, 16
jmp .L_00EA
.L_00EB:
cmp dword ptr [Lt_0977], 4
jle .L_00F4
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_097F
push 10
push offset Lt_00F5
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00F3
.L_00F4:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0976
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_097F
push 10
push offset Lt_00FA
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
.L_00F3:
.L_00EA:
cmp dword ptr [Lt_0980], 0
jne .L_0100
cmp dword ptr [Lt_0978], 1
jne .L_0102
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0981]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0982
call fb_StrAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0982
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0975
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0101
.L_0102:
cmp dword ptr [Lt_0978], 2
jne .L_0107
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0981]
push 5
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0983
call fb_StrAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0983
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0975
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0101
.L_0107:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_097F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0975
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
.L_0101:
cmp dword ptr [Lt_097E], 0
jne .L_0111
sub esp, 12
push dword ptr [Lt_097F]
call HPOP
add esp, 16
.L_0111:
.L_0110:
.L_0100:
.L_00FF:
.L_00BC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2I_SSE, .-_EMITSTORF2I_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0975,12
.balign 4
	.lcomm	Lt_0976,12
.balign 4
	.lcomm	Lt_0977,4
.balign 4
	.lcomm	Lt_0978,4
.balign 4
	.lcomm	Lt_0984,12
.balign 4
	.lcomm	Lt_097F,12
.balign 4
	.lcomm	Lt_0982,12
.balign 4
	.lcomm	Lt_0983,12
.balign 4
	.lcomm	Lt_097E,4
.balign 4
	.lcomm	Lt_0981,4
.balign 4
	.lcomm	Lt_0980,4

.section .text
.balign 16
_EMITSTORL2F_SSE:
.type _EMITSTORL2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0112:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0987
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0988
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0115
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0116
mov dword ptr [ebp-4], 24
jmp .L_0985
.L_0116:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0985:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_0119
sub esp, 4
push offset Lt_098B
push offset Lt_0988
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_098B]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0988]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [DTYPETB+ebx+4]
push ecx
push 6
push offset Lt_011A
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_098C
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_098C]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
jmp .L_0118
.L_0119:
sub esp, 4
push offset Lt_098B
push offset Lt_0988
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_098B]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0988]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_0118:
jmp .L_0114
.L_0115:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_011F
mov dword ptr [ebp-4], 24
jmp .L_0986
.L_011F:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0986:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0122
sub esp, 12
push 0
push 6
push offset Lt_011A
push -1
push offset Lt_098C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0988
push -1
push offset Lt_098C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_098C]
call OUTP
add esp, 16
jmp .L_0121
.L_0122:
sub esp, 12
push 0
push 6
push offset Lt_011A
push -1
push offset Lt_098C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0988
push -1
push offset Lt_098C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_098C]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_0121:
.L_0114:
sub esp, 12
push 0
push 6
push offset Lt_0123
push -1
push offset Lt_098C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0987
push -1
push offset Lt_098C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_098C]
call OUTP
add esp, 16
.L_0113:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORL2F_SSE, .-_EMITSTORL2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0987,12
.balign 4
	.lcomm	Lt_0988,12
.balign 4
	.lcomm	Lt_098B,12
.balign 4
	.lcomm	Lt_098C,12

.section .text
.balign 16
_EMITSTORI2F_SSE:
.type _EMITSTORI2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0124:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0991
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0992
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0126
mov dword ptr [ebp-4], 24
jmp .L_098D
.L_0126:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_098D:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0993], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0128
mov dword ptr [ebp-8], 24
jmp .L_098E
.L_0128:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_098E:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0994], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_012A
mov dword ptr [ebp-12], 24
jmp .L_098F
.L_012A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_098F:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0994]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_012D
sub esp, 12
push offset Lt_007D
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0992]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0991
push 6
push offset Lt_0123
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0125
.L_012D:
.L_012C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0994]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0131
sub esp, 12
push 0
push -1
push offset Lt_0992
push -1
push offset Lt_0999
call fb_StrAssign
add esp, 32
mov dword ptr [Lt_099A], -1
jmp .L_0130
.L_0131:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_099B], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_099B]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0999
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_099B]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_099A], eax
cmp dword ptr [Lt_099A], 0
jne .L_0133
sub esp, 12
push dword ptr [Lt_0999]
call HPUSH
add esp, 16
.L_0133:
.L_0132:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0135
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0992
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0999
push 5
push offset Lt_00EE
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0134
.L_0135:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_013A
mov dword ptr [ebp-16], 24
jmp .L_0990
.L_013A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0990:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_013D
sub esp, 12
push 0
push 7
push offset Lt_013E
push -1
push offset Lt_099C
call fb_StrAssign
add esp, 32
jmp .L_013C
.L_013D:
sub esp, 12
push 0
push 7
push offset Lt_013F
push -1
push offset Lt_099C
call fb_StrAssign
add esp, 32
.L_013C:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0992
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0999
push -1
push offset Lt_099C
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
.L_0134:
.L_0130:
cmp dword ptr [Lt_0993], 4
jle .L_0145
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0999
push 16
push offset Lt_0147
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0991
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_0145:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0999
push 16
push offset Lt_0150
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0991
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
.L_0144:
cmp dword ptr [Lt_099A], 0
jne .L_0158
sub esp, 12
push dword ptr [Lt_0999]
call HPOP
add esp, 16
.L_0158:
.L_0157:
.L_0125:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORI2F_SSE, .-_EMITSTORI2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0991,12
.balign 4
	.lcomm	Lt_0992,12
.balign 4
	.lcomm	Lt_0999,12
.balign 4
	.lcomm	Lt_0993,4
.balign 4
	.lcomm	Lt_0994,4
.balign 4
	.lcomm	Lt_099B,4
.balign 4
	.lcomm	Lt_099A,4
.balign 4
	.lcomm	Lt_099C,12

.section .text
.balign 16
HEMITSTOREFREG2F_SSE:
.type HEMITSTOREFREG2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
.L_0159:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_099E
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_099F
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_015B
mov dword ptr [ebp-4], 24
jmp .L_099D
.L_015B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_099D:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09A0], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_09A0]
cmp ebx, 4
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_015E
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_099F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_099E
push 8
push offset Lt_015F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 24
push eax
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_015A
.L_015E:
.L_015D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_0165
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_099F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_099E
push 8
push offset Lt_0166
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0164
.L_0165:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 3
jne .L_016B
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_099F
push 15
push offset Lt_016D
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_099F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_099E
push 8
push offset Lt_0166
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 8
push -2147483648
push offset Lt_099E
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_099E
push 7
push offset Lt_0094
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
add esp, 24
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
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0164
.L_016B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 4
jne .L_0178
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_099F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_099E
push 8
push offset Lt_0179
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0178:
.L_0164:
.L_015A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITSTOREFREG2F_SSE, .-HEMITSTOREFREG2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_099E,12
.balign 4
	.lcomm	Lt_099F,12
.balign 4
	.lcomm	Lt_09A0,4

.section .text
.balign 16
_EMITSTORF2F_SSE:
.type _EMITSTORF2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
.L_017E:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09A5
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09A6
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0180
mov dword ptr [ebp-4], 24
jmp .L_09A3
.L_0180:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09A3:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09A7], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0182
mov dword ptr [ebp-8], 24
jmp .L_09A4
.L_0182:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_09A4:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_09A8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [Lt_09AA], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_0185
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+16], 0
jne .L_0187
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09A5
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A5
push 6
push offset Lt_0123
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
jmp .L_017F
.L_0187:
.L_0186:
cmp dword ptr [Lt_09AA], 0
je .L_018B
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTOREFREG2F_SSE
add esp, 16
jmp .L_017F
.L_018B:
.L_018A:
cmp dword ptr [Lt_09A7], 4
jle .L_018D
cmp dword ptr [Lt_09A8], 4
jg .L_018F
sub esp, 12
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A6
push 10
push offset Lt_0190
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-104]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 16
.L_018F:
.L_018E:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_018C
.L_018D:
cmp dword ptr [Lt_09A8], 4
jle .L_019A
sub esp, 12
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A6
push 10
push offset Lt_019B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-104]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 16
.L_019A:
.L_0199:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_018C:
jmp .L_0184
.L_0185:
mov eax, dword ptr [Lt_09A7]
cmp dword ptr [Lt_09A8], eax
jne .L_01A5
cmp dword ptr [Lt_09AA], 0
je .L_01A7
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09A5
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09A6
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_09A7], 4
jle .L_01A9
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 14
push offset Lt_01AB
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_015F
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01A8
.L_01A9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_01B3
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 14
push offset Lt_01B5
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_0166
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01B2
.L_01B3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 3
jne .L_01BC
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 14
push offset Lt_01BE
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_0166
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_01C5
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 8
push -2147483648
push offset Lt_09A5
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 7
push offset Lt_0094
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-128]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01B2
.L_01BC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 4
jne .L_01CA
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 14
push offset Lt_01BE
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_0179
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_01CA:
.L_01B2:
.L_01A8:
jmp .L_017F
.L_01A7:
.L_01A6:
cmp dword ptr [Lt_09A7], 4
jle .L_01D2
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 14
push offset Lt_01D4
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01D1
.L_01D2:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 13
push offset Lt_01DC
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_01D1:
jmp .L_01A4
.L_01A5:
cmp dword ptr [Lt_09A8], 4
jle .L_01E4
cmp dword ptr [Lt_09AA], 0
je .L_01E6
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 16
push offset Lt_01E8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_0166
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01E5
.L_01E6:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 16
push offset Lt_01F0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_01E5:
jmp .L_01E3
.L_01E4:
cmp dword ptr [Lt_09AA], 0
je .L_01F8
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 16
push offset Lt_01FA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_015F
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01F7
.L_01F8:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09A6
push 16
push offset Lt_0202
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09A5
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_01F7:
.L_01E3:
.L_01A4:
.L_0184:
.L_017F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2F_SSE, .-_EMITSTORF2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09A5,12
.balign 4
	.lcomm	Lt_09A6,12
.balign 4
	.lcomm	Lt_09A7,4
.balign 4
	.lcomm	Lt_09A8,4
.balign 4
	.lcomm	Lt_09AA,4
.balign 4
	.lcomm	Lt_09AB,12

.section .text
.balign 16
_EMITLOADF2L_SSE:
.type _EMITLOADF2L_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0209:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09AF
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09B0
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_020B
mov dword ptr [ebp-4], 24
jmp .L_09AC
.L_020B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09AC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09B1], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+16], 1
jne .L_020E
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_0210
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
cmp dword ptr [Lt_09B1], 4
jle .L_0212
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09B0
push 25
push offset Lt_00AD
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_0211
.L_0212:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09B0
push 24
push offset Lt_00B2
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_0211:
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
jmp .L_020F
.L_0210:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09B0
push 5
push offset Lt_00C8
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_020F:
.L_020E:
.L_020D:
sub esp, 4
push offset Lt_09B2
push offset Lt_09AF
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0219
mov dword ptr [ebp-8], 24
jmp .L_09AD
.L_0219:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_09AD:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
jne .L_021B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .L_09AE
.L_021B:
mov dword ptr [ebp-12], -1
.L_09AE:
cmp dword ptr [ebp-12], 0
je .L_021E
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [DTYPETB+eax+4]
push ebx
push 7
push offset Lt_00B8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
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
push -1
push offset Lt_09B4
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_09B4]
call OUTP
add esp, 16
jmp .L_021D
.L_021E:
sub esp, 12
push offset Lt_0221
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0222
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0223
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00ED
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0224
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0222
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0225
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0226
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00ED
call OUTP
add esp, 16
.L_021D:
sub esp, 12
push dword ptr [Lt_09AF]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_09B2]
call HPOP
add esp, 16
.L_020A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2L_SSE, .-_EMITLOADF2L_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09AF,12
.balign 4
	.lcomm	Lt_09B0,12
.balign 4
	.lcomm	Lt_09B2,12
.balign 4
	.lcomm	Lt_09B4,12
.balign 4
	.lcomm	Lt_09B5,4
.balign 4
	.lcomm	Lt_09B1,4

.section .text
.balign 16
_EMITLOADF2I_SSE:
.type _EMITLOADF2I_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 164
push ebx
.L_0227:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09BB
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09BC
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0229
mov dword ptr [ebp-4], 24
jmp .L_09B6
.L_0229:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09B6:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09BD], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_022B
mov dword ptr [ebp-8], 24
jmp .L_09B7
.L_022B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_09B7:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_09BE], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_022D
mov dword ptr [ebp-12], 24
jmp .L_09B8
.L_022D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_09B8:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_09BE]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0230
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0232
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push 5
push offset Lt_00C8
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0231
.L_0232:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 1
jne .L_0235
cmp dword ptr [Lt_09BD], 4
jle .L_0237
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push 25
push offset Lt_00AD
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_0236
.L_0237:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push 24
push offset Lt_00B2
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_0236:
.L_0235:
.L_0231:
sub esp, 12
push offset Lt_00D2
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_09BB]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_00D3
call OUTP
add esp, 16
jmp .L_0228
.L_0230:
.L_022F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_023D
mov dword ptr [Lt_09C1], -1
cmp dword ptr [Lt_09BE], 4
jge .L_023F
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_09BB
call fb_StrAssign
add esp, 32
.L_023F:
.L_023E:
sub esp, 12
push 0
push -1
push offset Lt_09BB
push -1
push offset Lt_09C2
call fb_StrAssign
add esp, 32
mov dword ptr [Lt_09C3], -1
jmp .L_023C
.L_023D:
mov dword ptr [Lt_09C3], 0
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_09C4], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_09C4]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_09C2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_09C4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_09C5
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_09C4]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_09C1], eax
cmp dword ptr [Lt_09C1], 0
jne .L_0241
sub esp, 12
push dword ptr [Lt_09C2]
call HPUSH
add esp, 16
.L_0241:
.L_0240:
.L_023C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_0243
sub esp, 12
push offset Lt_00EC
call OUTP
add esp, 16
cmp dword ptr [Lt_09BE], 2
jne .L_0245
sub esp, 12
push offset Lt_0246
call OUTP
add esp, 16
jmp .L_0244
.L_0245:
sub esp, 12
push offset Lt_00ED
call OUTP
add esp, 16
.L_0244:
sub esp, 12
push dword ptr [Lt_09C2]
call HPOP
add esp, 16
jmp .L_0242
.L_0243:
sub esp, 12
push 0
push -1
sub esp, 4
cmp dword ptr [Lt_09BD], 4
jle .L_0247
mov dword ptr [ebp-16], 100
jmp .L_09B9
.L_0247:
mov dword ptr [ebp-16], 115
.L_09B9:
push dword ptr [ebp-16]
push 1
call fb_CHR
add esp, 12
push eax
push -1
push offset Lt_09C6
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0249
mov dword ptr [ebp-20], 24
jmp .L_09BA
.L_0249:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_09BA:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [Lt_09BE]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [SYMB_DTYPETB+eax+8]
je .L_024C
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_024E
cmp dword ptr [Lt_09BD], 4
jle .L_0250
sub esp, 12
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push 14
push offset Lt_01D4
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-152]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 16
jmp .L_024F
.L_0250:
sub esp, 12
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push 13
push offset Lt_01DC
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-152]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-152]
push eax
call fb_StrDelete
add esp, 16
.L_024F:
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_09BC
call fb_StrAssign
add esp, 32
.L_024E:
.L_024D:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 9
push offset Lt_0256
push -1
sub esp, 4
push -1
push offset Lt_09C6
push 5
push offset Lt_0255
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_025C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09C2
push 6
push offset Lt_025D
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-128]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 16
jmp .L_024B
.L_024C:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09BC
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09BC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09C2
push -1
sub esp, 4
push 5
push offset Lt_0263
push -1
sub esp, 4
push -1
push offset Lt_09C6
push 5
push offset Lt_0262
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 16
.L_024B:
.L_0242:
cmp dword ptr [Lt_09C3], 0
jne .L_026B
cmp dword ptr [Lt_09BE], 4
jne .L_026D
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09C2
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09BB
push 5
push offset Lt_00EE
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_026C
.L_026D:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09C5
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09BB
push 5
push offset Lt_00EE
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_026C:
cmp dword ptr [Lt_09C1], 0
jne .L_0277
sub esp, 12
push dword ptr [Lt_09C2]
call HPOP
add esp, 16
.L_0277:
.L_0276:
.L_026B:
.L_026A:
.L_0228:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2I_SSE, .-_EMITLOADF2I_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09BB,12
.balign 4
	.lcomm	Lt_09BC,12
.balign 4
	.lcomm	Lt_09C6,12
.balign 4
	.lcomm	Lt_09C2,12
.balign 4
	.lcomm	Lt_09C5,12
.balign 4
	.lcomm	Lt_09BD,4
.balign 4
	.lcomm	Lt_09BE,4
.balign 4
	.lcomm	Lt_09C1,4
.balign 4
	.lcomm	Lt_09C4,4
.balign 4
	.lcomm	Lt_09C3,4
.balign 4
	.lcomm	Lt_09C8,4
.balign 4
	.lcomm	Lt_09C9,4

.section .text
.balign 16
_EMITLOADL2F_SSE:
.type _EMITLOADL2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_0278:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09CD
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09CE
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_027B
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_027C
mov dword ptr [ebp-56], 24
jmp .L_09CA
.L_027C:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-56], ecx
.L_09CA:
mov ecx, dword ptr [ebp-56]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_027F
sub esp, 4
push offset Lt_09D1
push offset Lt_09CE
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_09D1]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_09CE]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [DTYPETB+ebx+4]
push ecx
push 6
push offset Lt_011A
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ecx, [ebp-68]
push ecx
call fb_StrConcat
add esp, 24
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
push offset Lt_09D2
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_09D2]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
jmp .L_027E
.L_027F:
sub esp, 4
push offset Lt_09D1
push offset Lt_09CE
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_09D1]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_09CE]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_027E:
jmp .L_027A
.L_027B:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0282
mov dword ptr [ebp-56], 24
jmp .L_09CB
.L_0282:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-56], eax
.L_09CB:
mov eax, dword ptr [ebp-56]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0285
sub esp, 12
push 0
push 6
push offset Lt_011A
push -1
push offset Lt_09D2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_09CE
push -1
push offset Lt_09D2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_09D2]
call OUTP
add esp, 16
jmp .L_0284
.L_0285:
sub esp, 12
push 0
push 6
push offset Lt_011A
push -1
push offset Lt_09D2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_09CE
push -1
push offset Lt_09D2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_09D2]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_0284:
.L_027A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0286
mov dword ptr [ebp-4], 24
jmp .L_09CC
.L_0286:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09CC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09D3], ecx
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_09D3]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_09D3], 4
jle .L_028B
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09CD
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
jmp .L_028A
.L_028B:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09CD
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
.L_028A:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_09D3]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0279:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADL2F_SSE, .-_EMITLOADL2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09CD,12
.balign 4
	.lcomm	Lt_09CE,12
.balign 4
	.lcomm	Lt_09D1,12
.balign 4
	.lcomm	Lt_09D2,12
.balign 4
	.lcomm	Lt_09D3,4

.section .text
.balign 16
_EMITLOADI2F_SSE:
.type _EMITLOADI2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 500
push ebx
.L_0296:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09D8
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09D9
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0298
mov dword ptr [ebp-4], 24
jmp .L_09D4
.L_0298:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09D4:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09DA], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_029A
mov dword ptr [ebp-8], 24
jmp .L_09D5
.L_029A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_09D5:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_09DB], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_029C
mov dword ptr [ebp-12], 24
jmp .L_09D6
.L_029C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_09D6:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_09DA]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_029F
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_09DE], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_09DE]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_09DF
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_09DE]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_09E0], eax
cmp dword ptr [Lt_09E0], 0
jne .L_02A1
sub esp, 12
push dword ptr [Lt_09DF]
call HPUSH
add esp, 16
.L_02A1:
.L_02A0:
cmp dword ptr [Lt_09DB], 4
jle .L_02A3
sub esp, 4
push 14
push 1089470464
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_09E1], eax
sub esp, 12
mov eax, dword ptr [Lt_09E1]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_09E1]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_09E2], eax
sub esp, 12
push 0
push 4
push offset Lt_02A4
push -1
push offset Lt_09E3
call fb_StrAssign
add esp, 32
jmp .L_02A2
.L_02A3:
sub esp, 4
push 9
push 0
push 1199570944
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_09E1], eax
sub esp, 12
mov eax, dword ptr [Lt_09E1]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_09E1]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_09E2], eax
sub esp, 12
push 0
push 4
push offset Lt_02A5
push -1
push offset Lt_09E3
call fb_StrAssign
add esp, 32
.L_02A2:
mov eax, dword ptr [Lt_09E1]
mov dword ptr [eax+100], 16
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_02AB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 5
push offset Lt_02AA
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
add esp, 24
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-156]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09DF
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09D8
push -1
sub esp, 4
push -1
push offset Lt_09E3
push 7
push offset Lt_02B0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 5
push offset Lt_00EE
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-264]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-264]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-264]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_02BB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 5
push offset Lt_02BA
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
lea eax, [ebp-276]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-312]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09DF
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_09E3
push 7
push offset Lt_02B0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
lea eax, [ebp-324]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
lea eax, [ebp-360]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-372]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-372]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-372]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09D9
push dword ptr [Lt_09E2]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_09E3
push 4
push offset Lt_02C5
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
lea eax, [ebp-408]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
lea eax, [ebp-420]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-432]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-432]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-432]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09D8
push -1
sub esp, 4
push -1
push offset Lt_09E3
push 4
push offset Lt_02CB
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
lea eax, [ebp-444]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
lea eax, [ebp-456]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
lea eax, [ebp-468]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
lea eax, [ebp-480]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-492]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-492]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-492]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_09E0], 0
jne .L_02D2
sub esp, 12
push dword ptr [Lt_09DF]
call HPOP
add esp, 16
.L_02D2:
.L_02D1:
jmp .L_0297
.L_029F:
.L_029E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_09DA]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_02D4
mov dword ptr [Lt_09E0], -1
sub esp, 12
push 0
push -1
push offset Lt_09D9
push -1
push offset Lt_09DF
call fb_StrAssign
add esp, 32
jmp .L_02D3
.L_02D4:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_09DE], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_09DE]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_09DF
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_09DE]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_09E0], eax
cmp dword ptr [Lt_09E0], 0
jne .L_02D6
sub esp, 12
push dword ptr [Lt_09DF]
call HPUSH
add esp, 16
.L_02D6:
.L_02D5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_09DA]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_02D8
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 5
push offset Lt_00EE
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
add esp, 24
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
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
jmp .L_02D7
.L_02D8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_02DD
mov dword ptr [ebp-64], 24
jmp .L_09D7
.L_02DD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-64], eax
.L_09D7:
mov eax, dword ptr [ebp-64]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_02E0
sub esp, 12
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 7
push offset Lt_013E
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
add esp, 28
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-112]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 16
jmp .L_02DF
.L_02E0:
sub esp, 12
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D9
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09DF
push 7
push offset Lt_013F
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
add esp, 28
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-112]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 16
.L_02DF:
.L_02D7:
.L_02D3:
cmp dword ptr [Lt_09DB], 4
jle .L_02EA
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09DF
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09D8
push 10
push offset Lt_02EB
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
add esp, 24
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
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
jmp .L_02E9
.L_02EA:
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09DF
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09D8
push 10
push offset Lt_02F0
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
add esp, 24
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
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
.L_02E9:
cmp dword ptr [Lt_09E0], 0
jne .L_02F6
sub esp, 12
push dword ptr [Lt_09DF]
call HPOP
add esp, 16
.L_02F6:
.L_02F5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_02F8
jmp .L_0297
.L_02F8:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_09DB]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_09DB], 4
jle .L_02FC
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D8
push 15
push offset Lt_02FE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_02FB
.L_02FC:
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09D8
push 14
push offset Lt_0302
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_02FB:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_09DB]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_0297:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADI2F_SSE, .-_EMITLOADI2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09D8,12
.balign 4
	.lcomm	Lt_09D9,12
.balign 4
	.lcomm	Lt_09DA,4
.balign 4
	.lcomm	Lt_09DB,4
.balign 4
	.lcomm	Lt_09E3,12
.balign 4
	.lcomm	Lt_09DF,12
.balign 4
	.lcomm	Lt_09E0,4
.balign 4
	.lcomm	Lt_09DE,4
.balign 4
	.lcomm	Lt_09E1,4
.balign 4
	.lcomm	Lt_09E2,4

.section .text
.balign 16
_EMITLOADF2F_SSE:
.type _EMITLOADF2F_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0307:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09EA
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_030A
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09EB
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push 5
push offset Lt_00C8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0308
.L_030A:
.L_0309:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09EB
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_030D
mov dword ptr [ebp-4], 24
jmp .L_09E8
.L_030D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09E8:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09EC], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_030F
mov dword ptr [ebp-8], 24
jmp .L_09E9
.L_030F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_09E9:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_09ED], eax
mov eax, dword ptr [Lt_09ED]
cmp dword ptr [Lt_09EC], eax
jne .L_0312
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0314
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09EB
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_09ED], 4
jle .L_0316
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 8
push offset Lt_015F
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0315
.L_0316:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_031C
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 8
push offset Lt_0166
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_031B
.L_031C:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 8
push offset Lt_0179
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_031B:
.L_0315:
jmp .L_0308
.L_0314:
.L_0313:
cmp dword ptr [Lt_09ED], 4
jle .L_0326
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0325
.L_0326:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0325:
jmp .L_0311
.L_0312:
cmp dword ptr [Lt_09EC], 4
jle .L_032F
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0331
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 10
push offset Lt_0332
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0330
.L_0331:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 10
push offset Lt_019B
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0330:
jmp .L_0311
.L_032F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_033C
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 10
push offset Lt_033D
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033B
.L_033C:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09EB
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09EA
push 10
push offset Lt_0190
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_033B:
.L_0311:
.L_0308:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2F_SSE, .-_EMITLOADF2F_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09EB,12
.balign 4
	.lcomm	Lt_09EA,12
.balign 4
	.lcomm	Lt_09EC,4
.balign 4
	.lcomm	Lt_09ED,4

.section .text
.balign 16
_EMITMOVF_SSE:
.type _EMITMOVF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0346:
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09F0
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_09F1
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0348
mov dword ptr [ebp-4], 24
jmp .L_09EE
.L_0348:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09EE:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09F2], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_034A
mov dword ptr [ebp-8], 24
jmp .L_09EF
.L_034A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_09EF:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_09F3], eax
mov eax, dword ptr [Lt_09F2]
cmp eax, 4
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_09F3]
cmp ebx, 4
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_034D
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+20], 0
je .L_034F
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09F1
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09F0
push 10
push offset Lt_0332
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_034E
.L_034F:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09F1
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09F0
push 10
push offset Lt_019B
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_034E:
jmp .L_034C
.L_034D:
mov eax, dword ptr [Lt_09F3]
cmp eax, 4
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_09F2]
cmp ebx, 4
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0358
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+20], 0
je .L_035A
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09F1
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09F0
push 10
push offset Lt_033D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0359
.L_035A:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09F1
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09F0
push 10
push offset Lt_0190
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0359:
jmp .L_034C
.L_0358:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09F1
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09F0
push 8
push offset Lt_0363
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_034C:
.L_0347:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMOVF_SSE, .-_EMITMOVF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09F0,12
.balign 4
	.lcomm	Lt_09F1,12
.balign 4
	.lcomm	Lt_09F2,4
.balign 4
	.lcomm	Lt_09F3,4

.section .text
.balign 16
_EMITSWZREPF_SSE:
.type _EMITSWZREPF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0368:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_036A
mov dword ptr [ebp-4], 24
jmp .L_09F8
.L_036A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_09F8:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09F9], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09FA
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_09F9], 4
jle .L_036D
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FA
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09FA
push 10
push offset Lt_036E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 24
push eax
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_036C
.L_036D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 2
jne .L_0374
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FA
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09FA
push 10
push offset Lt_0375
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0373
.L_0374:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_037B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09FA
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_09FA
push 8
push offset Lt_037A
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
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0373:
.L_036C:
.L_0369:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSWZREPF_SSE, .-_EMITSWZREPF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09FA,12
.balign 4
	.lcomm	Lt_09F9,4

.section .text
.balign 16
HEMITCONVERTOPERANDS_SSE:
.type HEMITCONVERTOPERANDS_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0382:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09FD
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_09FE
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0384
mov dword ptr [ebp-8], 24
jmp .L_09FB
.L_0384:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_09FB:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_09FF], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0386
mov dword ptr [ebp-12], 24
jmp .L_09FC
.L_0386:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_09FC:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A00], eax
mov dword ptr [ebp-4], 0
cmp dword ptr [Lt_0A00], 4
jle .L_0389
cmp dword ptr [Lt_09FF], 4
jne .L_038B
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_038D
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FE
push 16
push offset Lt_01FA
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_038C
.L_038D:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FE
push 16
push offset Lt_0202
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_038C:
mov dword ptr [ebp-4], -1
.L_038B:
.L_038A:
jmp .L_0388
.L_0389:
cmp dword ptr [Lt_09FF], 4
jle .L_0393
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0395
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FE
push 16
push offset Lt_01E8
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0394
.L_0395:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_09FE
push 16
push offset Lt_01F0
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0394:
mov dword ptr [ebp-4], -1
.L_0393:
.L_0392:
.L_0388:
.L_0383:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITCONVERTOPERANDS_SSE, .-HEMITCONVERTOPERANDS_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_09FD,12
.balign 4
	.lcomm	Lt_09FE,12
.balign 4
	.lcomm	Lt_0A01,12
.balign 4
	.lcomm	Lt_09FF,4
.balign 4
	.lcomm	Lt_0A00,4

.section .text
.balign 16
_EMITADDF_SSE:
.type _EMITADDF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_039A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A05
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A06
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_039C
mov dword ptr [ebp-4], 24
jmp .L_0A02
.L_039C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A02:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A07], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_039E
mov dword ptr [ebp-8], 24
jmp .L_0A03
.L_039E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A03:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A08], eax
mov dword ptr [Lt_0A09], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_03A1
sub esp, 12
push 0
push -1
push offset Lt_0A05
push -1
push offset Lt_0A0A
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A08]
mov dword ptr [Lt_0A09], eax
jmp .L_03A0
.L_03A1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_03A2
sub esp, 12
push 0
push -1
push offset Lt_0A06
push -1
push offset Lt_0A0A
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A07]
mov dword ptr [Lt_0A09], eax
.L_03A2:
.L_03A0:
cmp dword ptr [Lt_0A09], 0
je .L_03A4
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A09]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_03A4:
.L_03A3:
cmp dword ptr [Lt_0A09], 8
jne .L_03A8
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A0A
push 8
push offset Lt_008D
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03A7
.L_03A8:
cmp dword ptr [Lt_0A09], 4
jne .L_03AD
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A0A
push 7
push offset Lt_0094
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_03AD:
.L_03A7:
cmp dword ptr [Lt_0A09], 0
je .L_03B3
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A09]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_03B3:
.L_03B2:
sub esp, 12
push 0
push 5
push offset Lt_03B6
push -1
push offset Lt_0A0A
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_03B8
sub esp, 12
push 0
push 5
push offset Lt_03B9
push -1
push offset Lt_0A0A
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03BB
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_0A06
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A07], 4
jle .L_03BD
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A06
push 14
push offset Lt_01AB
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03BC
.L_03BD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_03C1
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A06
push 14
push offset Lt_01B5
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03C0
.L_03C1:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A06
push 14
push offset Lt_01BE
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_03C0:
.L_03BC:
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A06
call fb_StrAssign
add esp, 32
.L_03BB:
.L_03BA:
.L_03B8:
.L_03B7:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERTOPERANDS_SSE
add esp, 16
test eax, eax
je .L_03C7
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A06
call fb_StrAssign
add esp, 32
.L_03C7:
.L_03C6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03C8
mov dword ptr [ebp-12], 24
jmp .L_0A04
.L_03C8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0A04:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_03CB
cmp dword ptr [Lt_0A08], 4
jle .L_03CD
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A06
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A05
push -1
sub esp, 4
push 3
push offset Lt_03CE
push -1
push offset Lt_0A0A
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03CC
.L_03CD:
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A06
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A05
push -1
sub esp, 4
push 3
push offset Lt_03D4
push -1
push offset Lt_0A0A
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.L_03CC:
jmp .L_03CA
.L_03CB:
sub esp, 12
push offset Lt_03DA
call OUTP
add esp, 16
.L_03CA:
.L_039B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDF_SSE, .-_EMITADDF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A05,12
.balign 4
	.lcomm	Lt_0A06,12
.balign 4
	.lcomm	Lt_0A0A,12
.balign 4
	.lcomm	Lt_0A07,4
.balign 4
	.lcomm	Lt_0A08,4
.balign 4
	.lcomm	Lt_0A09,4

.section .text
.balign 16
_EMITSUBF_SSE:
.type _EMITSUBF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_03DB:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A0E
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A0F
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03DD
mov dword ptr [ebp-4], 24
jmp .L_0A0B
.L_03DD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A0B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A10], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03DF
mov dword ptr [ebp-8], 24
jmp .L_0A0C
.L_03DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A0C:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A11], eax
mov dword ptr [Lt_0A12], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_03E2
sub esp, 12
push 0
push -1
push offset Lt_0A0E
push -1
push offset Lt_0A13
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A11]
mov dword ptr [Lt_0A12], eax
jmp .L_03E1
.L_03E2:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_03E3
sub esp, 12
push 0
push -1
push offset Lt_0A0F
push -1
push offset Lt_0A13
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A10]
mov dword ptr [Lt_0A12], eax
.L_03E3:
.L_03E1:
cmp dword ptr [Lt_0A12], 0
je .L_03E5
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A12]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_03E5:
.L_03E4:
cmp dword ptr [Lt_0A12], 8
jne .L_03E9
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A13
push 8
push offset Lt_008D
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03E8
.L_03E9:
cmp dword ptr [Lt_0A12], 4
jne .L_03EE
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A13
push 7
push offset Lt_0094
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_03EE:
.L_03E8:
cmp dword ptr [Lt_0A12], 0
je .L_03F4
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A12]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_03F4:
.L_03F3:
sub esp, 12
push 0
push 5
push offset Lt_03F7
push -1
push offset Lt_0A13
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_03F9
sub esp, 12
push 0
push 5
push offset Lt_03FA
push -1
push offset Lt_0A13
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03FC
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_0A0F
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A10], 4
jle .L_03FE
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A0F
push 14
push offset Lt_01AB
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_03FD
.L_03FE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_0402
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A0F
push 14
push offset Lt_01B5
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0401
.L_0402:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A0F
push 14
push offset Lt_01BE
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0401:
.L_03FD:
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A0F
call fb_StrAssign
add esp, 32
.L_03FC:
.L_03FB:
.L_03F9:
.L_03F8:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERTOPERANDS_SSE
add esp, 16
test eax, eax
je .L_0408
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A0F
call fb_StrAssign
add esp, 32
.L_0408:
.L_0407:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0409
mov dword ptr [ebp-12], 24
jmp .L_0A0D
.L_0409:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0A0D:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_040C
cmp dword ptr [Lt_0A11], 4
jle .L_040E
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A0F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A0E
push -1
sub esp, 4
push 3
push offset Lt_03CE
push -1
push offset Lt_0A13
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
jmp .L_040D
.L_040E:
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A0F
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A0E
push -1
sub esp, 4
push 3
push offset Lt_03D4
push -1
push offset Lt_0A13
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.L_040D:
jmp .L_040B
.L_040C:
sub esp, 12
push offset Lt_0419
call OUTP
add esp, 16
.L_040B:
.L_03DC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSUBF_SSE, .-_EMITSUBF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A0E,12
.balign 4
	.lcomm	Lt_0A0F,12
.balign 4
	.lcomm	Lt_0A13,12
.balign 4
	.lcomm	Lt_0A10,4
.balign 4
	.lcomm	Lt_0A11,4
.balign 4
	.lcomm	Lt_0A12,4

.section .text
.balign 16
_EMITMULF_SSE:
.type _EMITMULF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_041A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A17
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A18
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_041C
mov dword ptr [ebp-4], 24
jmp .L_0A14
.L_041C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A14:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A19], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_041E
mov dword ptr [ebp-8], 24
jmp .L_0A15
.L_041E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A15:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A1A], eax
mov dword ptr [Lt_0A1B], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0421
sub esp, 12
push 0
push -1
push offset Lt_0A17
push -1
push offset Lt_0A1C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A1A]
mov dword ptr [Lt_0A1B], eax
jmp .L_0420
.L_0421:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_0422
sub esp, 12
push 0
push -1
push offset Lt_0A18
push -1
push offset Lt_0A1C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A19]
mov dword ptr [Lt_0A1B], eax
.L_0422:
.L_0420:
cmp dword ptr [Lt_0A1B], 0
je .L_0424
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A1B]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0424:
.L_0423:
cmp dword ptr [Lt_0A1B], 8
jne .L_0428
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A1C
push 8
push offset Lt_008D
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0427
.L_0428:
cmp dword ptr [Lt_0A1B], 4
jne .L_042D
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A1C
push 7
push offset Lt_0094
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_042D:
.L_0427:
cmp dword ptr [Lt_0A1B], 0
je .L_0433
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A1B]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0433:
.L_0432:
sub esp, 12
push 0
push 5
push offset Lt_0436
push -1
push offset Lt_0A1C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0438
sub esp, 12
push 0
push 5
push offset Lt_0439
push -1
push offset Lt_0A1C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_043B
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_0A18
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A19], 4
jle .L_043D
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A18
push 14
push offset Lt_01AB
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_043C
.L_043D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_0441
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A18
push 14
push offset Lt_01B5
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0440
.L_0441:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A18
push 14
push offset Lt_01BE
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0440:
.L_043C:
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A18
call fb_StrAssign
add esp, 32
.L_043B:
.L_043A:
.L_0438:
.L_0437:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERTOPERANDS_SSE
add esp, 16
test eax, eax
je .L_0447
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A18
call fb_StrAssign
add esp, 32
.L_0447:
.L_0446:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0448
mov dword ptr [ebp-12], 24
jmp .L_0A16
.L_0448:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0A16:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_044B
cmp dword ptr [Lt_0A1A], 4
jle .L_044D
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A18
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A17
push -1
sub esp, 4
push 3
push offset Lt_03CE
push -1
push offset Lt_0A1C
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
jmp .L_044C
.L_044D:
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A18
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A17
push -1
sub esp, 4
push 3
push offset Lt_03D4
push -1
push offset Lt_0A1C
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.L_044C:
jmp .L_044A
.L_044B:
sub esp, 12
push offset Lt_0458
call OUTP
add esp, 16
.L_044A:
.L_041B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMULF_SSE, .-_EMITMULF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A17,12
.balign 4
	.lcomm	Lt_0A18,12
.balign 4
	.lcomm	Lt_0A1C,12
.balign 4
	.lcomm	Lt_0A19,4
.balign 4
	.lcomm	Lt_0A1A,4
.balign 4
	.lcomm	Lt_0A1B,4

.section .text
.balign 16
_EMITDIVF_SSE:
.type _EMITDIVF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0459:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A20
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A21
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_045B
mov dword ptr [ebp-4], 24
jmp .L_0A1D
.L_045B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A1D:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A22], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_045D
mov dword ptr [ebp-8], 24
jmp .L_0A1E
.L_045D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A1E:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A23], eax
mov dword ptr [Lt_0A24], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0460
sub esp, 12
push 0
push -1
push offset Lt_0A20
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A23]
mov dword ptr [Lt_0A24], eax
jmp .L_045F
.L_0460:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 0
jne .L_0461
sub esp, 12
push 0
push -1
push offset Lt_0A21
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A22]
mov dword ptr [Lt_0A24], eax
.L_0461:
.L_045F:
cmp dword ptr [Lt_0A24], 0
je .L_0463
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A24]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0463:
.L_0462:
cmp dword ptr [Lt_0A24], 8
jne .L_0467
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A25
push 8
push offset Lt_008D
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0466
.L_0467:
cmp dword ptr [Lt_0A24], 4
jne .L_046C
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A25
push 7
push offset Lt_0094
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
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_046C:
.L_0466:
cmp dword ptr [Lt_0A24], 0
je .L_0472
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A24]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0472:
.L_0471:
sub esp, 12
push 0
push 5
push offset Lt_0475
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0477
sub esp, 12
push 0
push 5
push offset Lt_0478
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_047A
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_0A21
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A22], 4
jle .L_047C
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A21
push 14
push offset Lt_01AB
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_047B
.L_047C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 2
jne .L_0480
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A21
push 14
push offset Lt_01B5
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_047F
.L_0480:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A21
push 14
push offset Lt_01BE
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
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_047F:
.L_047B:
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A21
call fb_StrAssign
add esp, 32
.L_047A:
.L_0479:
.L_0477:
.L_0476:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERTOPERANDS_SSE
add esp, 16
test eax, eax
je .L_0486
sub esp, 12
push 0
push 5
push offset Lt_014A
push -1
push offset Lt_0A21
call fb_StrAssign
add esp, 32
.L_0486:
.L_0485:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0487
mov dword ptr [ebp-12], 24
jmp .L_0A1F
.L_0487:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0A1F:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_048A
cmp dword ptr [Lt_0A23], 4
jle .L_048C
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A21
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A20
push -1
sub esp, 4
push 3
push offset Lt_03CE
push -1
push offset Lt_0A25
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
jmp .L_048B
.L_048C:
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A21
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A20
push -1
sub esp, 4
push 3
push offset Lt_03D4
push -1
push offset Lt_0A25
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.L_048B:
jmp .L_0489
.L_048A:
sub esp, 12
push offset Lt_0497
call OUTP
add esp, 16
.L_0489:
.L_045A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDIVF_SSE, .-_EMITDIVF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A20,12
.balign 4
	.lcomm	Lt_0A21,12
.balign 4
	.lcomm	Lt_0A25,12
.balign 4
	.lcomm	Lt_0A22,4
.balign 4
	.lcomm	Lt_0A23,4
.balign 4
	.lcomm	Lt_0A24,4

.section .text
.balign 16
_EMITATN2_SSE:
.type _EMITATN2_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0498:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A28
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A29
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_049A
mov dword ptr [ebp-4], 24
jmp .L_0A26
.L_049A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A26:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A2A], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_049C
mov dword ptr [ebp-8], 24
jmp .L_0A27
.L_049C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A27:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A2B], eax
mov dword ptr [Lt_0A2C], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_049F
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov dword ptr [Lt_0A2C], -1
cmp dword ptr [Lt_0A2B], 4
jle .L_04A1
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A29
push 25
push offset Lt_00AD
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_04A0
.L_04A1:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A29
push 24
push offset Lt_00B2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_04A0:
jmp .L_049E
.L_049F:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A29
push 5
push offset Lt_00C8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
.L_049E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04A9
cmp dword ptr [Lt_0A2C], 0
jne .L_04AB
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov dword ptr [Lt_0A2C], -1
.L_04AB:
.L_04AA:
cmp dword ptr [Lt_0A2A], 4
jle .L_04AD
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A28
push 25
push offset Lt_00AD
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_04AC
.L_04AD:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A28
push 24
push offset Lt_00B2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_04AC:
jmp .L_04A8
.L_04A9:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A28
push 5
push offset Lt_00C8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
.L_04A8:
sub esp, 12
push offset Lt_04B4
call OUTP
add esp, 16
cmp dword ptr [Lt_0A2B], 4
jle .L_04B6
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A29
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_04B5
.L_04B6:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A29
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_04B5:
cmp dword ptr [Lt_0A2C], 0
je .L_04C0
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
.L_04C0:
.L_04BF:
.L_0499:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITATN2_SSE, .-_EMITATN2_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A28,12
.balign 4
	.lcomm	Lt_0A29,12
.balign 4
	.lcomm	Lt_0A2D,12
.balign 4
	.lcomm	Lt_0A2A,4
.balign 4
	.lcomm	Lt_0A2B,4
.balign 4
	.lcomm	Lt_0A2C,4

.section .text
.balign 16
_EMITPOW_SSE:
.type _EMITPOW_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_04C1:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A2E
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A2F
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov dword ptr [Lt_0A30], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_04C4
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov dword ptr [Lt_0A30], -1
cmp dword ptr [Lt_0A31], 4
jle .L_04C6
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2F
push 25
push offset Lt_00AD
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_04C5
.L_04C6:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2F
push 24
push offset Lt_00B2
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_04C5:
jmp .L_04C3
.L_04C4:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2F
push 5
push offset Lt_00C8
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_04C3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04CE
cmp dword ptr [Lt_0A30], 0
jne .L_04D0
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov dword ptr [Lt_0A30], -1
.L_04D0:
.L_04CF:
cmp dword ptr [Lt_0A32], 4
jle .L_04D2
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2E
push 25
push offset Lt_00AD
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_04D1
.L_04D2:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2E
push 24
push offset Lt_00B2
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_04D1:
jmp .L_04CD
.L_04CE:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A2E
push 5
push offset Lt_00C8
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_04CD:
sub esp, 12
push offset Lt_04D9
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DA
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0221
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DB
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DC
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DF
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0080
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04E0
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04E1
call OUTP
add esp, 16
cmp dword ptr [Lt_0A31], 4
jle .L_04E3
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A2F
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_04E2
.L_04E3:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A2F
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.L_04E2:
cmp dword ptr [Lt_0A30], 0
je .L_04ED
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
.L_04ED:
.L_04EC:
.L_04C2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOW_SSE, .-_EMITPOW_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A2E,12
.balign 4
	.lcomm	Lt_0A2F,12
.balign 4
	.lcomm	Lt_0A33,12
.balign 4
	.lcomm	Lt_0A32,4
.balign 4
	.lcomm	Lt_0A31,4
.balign 4
	.lcomm	Lt_0A30,4

.section .text
.balign 16
HCMPF_SSE:
.type HCMPF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_04EE:
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04F0
mov dword ptr [ebp-4], 24
jmp .L_0A34
.L_04F0:
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A34:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A36], ebx
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_04F2
mov dword ptr [ebp-8], 24
jmp .L_0A35
.L_04F2:
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0A35:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0A37], eax
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A38
push dword ptr [ebp+24]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A39
push dword ptr [ebp+28]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ebp+12], 0
jne .L_04F5
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0A3A
call fb_StrAssign
add esp, 32
jmp .L_04F4
.L_04F5:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0A3A
call fb_StrAssign
add esp, 32
.L_04F4:
mov dword ptr [Lt_0A3B], 0
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+16], 0
jne .L_04F7
sub esp, 12
push 0
push -1
push offset Lt_0A38
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A36]
mov dword ptr [Lt_0A3B], eax
jmp .L_04F6
.L_04F7:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax+16], 0
jne .L_04F8
sub esp, 12
push 0
push -1
push offset Lt_0A39
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0A37]
mov dword ptr [Lt_0A3B], eax
.L_04F8:
.L_04F6:
cmp dword ptr [Lt_0A3B], 0
je .L_04FA
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A3B]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
.L_04FA:
.L_04F9:
cmp dword ptr [Lt_0A3B], 8
jne .L_04FE
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A3C
push 8
push offset Lt_008D
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_04FD
.L_04FE:
cmp dword ptr [Lt_0A3B], 4
jne .L_0503
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A3C
push 7
push offset Lt_0094
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0503:
.L_04FD:
cmp dword ptr [Lt_0A3B], 0
je .L_0509
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A3B]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
.L_0509:
.L_0508:
cmp dword ptr [Lt_0A36], 4
jle .L_050D
cmp dword ptr [Lt_0A37], 4
jle .L_050F
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A39
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A38
push 8
push offset Lt_0510
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_050E
.L_050F:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A39
push 16
push offset Lt_0202
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A38
push 8
push offset Lt_0510
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_050E:
jmp .L_050C
.L_050D:
cmp dword ptr [Lt_0A37], 4
jle .L_051C
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A38
push 16
push offset Lt_0202
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A39
push 14
push offset Lt_0520
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .L_051B
.L_051C:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A39
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A38
push 8
push offset Lt_0523
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
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_051B:
.L_050C:
cmp dword ptr [ebp+8], 0
jne .L_0529
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_052A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0A3A]
push dword ptr [Lt_0A3C]
call HBRANCH
add esp, 16
jmp .L_04EF
.L_0529:
.L_0528:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A3D
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ENV+112], 1
jl .L_052D
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0A3E
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_052F
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0A41], eax
cmp dword ptr [Lt_0A41], 0
jne .L_0531
sub esp, 12
push 0
push 11
push offset Lt_0532
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
.L_0531:
.L_0530:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0536
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_0533
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
add esp, 28
push eax
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
cmp dword ptr [Lt_0A41], 0
jne .L_053A
sub esp, 12
push 0
push 11
push offset Lt_0532
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
jmp .L_0539
.L_053A:
sub esp, 8
push offset Lt_053B
push dword ptr [Lt_0A3D]
call HMOV
add esp, 16
.L_0539:
jmp .L_052E
.L_052F:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A3E
push -1
sub esp, 4
push 2
push offset Lt_053C
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_0533
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
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
.L_052E:
sub esp, 12
push 0
push 5
push offset Lt_02BA
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0540
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0541
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
jmp .L_052C
.L_052D:
sub esp, 12
push 0
push 5
push offset Lt_00EE
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0542
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_052A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0A3A]
push dword ptr [Lt_0A3C]
call HBRANCH
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0544
push -1
push offset Lt_0A3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0A3D
push -1
push offset Lt_0A3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0A3C]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0A3A]
call HLABEL
add esp, 16
.L_052C:
.L_04EF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCMPF_SSE, .-HCMPF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A3D,12
.balign 4
	.lcomm	Lt_0A3E,12
.balign 4
	.lcomm	Lt_0A38,12
.balign 4
	.lcomm	Lt_0A39,12
.balign 4
	.lcomm	Lt_0A3C,12
.balign 4
	.lcomm	Lt_0A3A,12
.balign 4
	.lcomm	Lt_0A42,4
.balign 4
	.lcomm	Lt_0A41,4
.balign 4
	.lcomm	Lt_0A37,4
.balign 4
	.lcomm	Lt_0A36,4
.balign 4
	.lcomm	Lt_0A3B,4

.section .text
.balign 16
_EMITCGTF_SSE:
.type _EMITCGTF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0545:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0548
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_0546:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGTF_SSE, .-_EMITCGTF_SSE
.cfi_endproc
.balign 16
_EMITCLTF_SSE:
.type _EMITCLTF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0549:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_054B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_054A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLTF_SSE, .-_EMITCLTF_SSE
.cfi_endproc
.balign 16
_EMITCEQF_SSE:
.type _EMITCEQF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_054C:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_054E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_054D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCEQF_SSE, .-_EMITCEQF_SSE
.cfi_endproc
.balign 16
_EMITCNEF_SSE:
.type _EMITCNEF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_054F:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0551
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_0550:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCNEF_SSE, .-_EMITCNEF_SSE
.cfi_endproc
.balign 16
_EMITCLEF_SSE:
.type _EMITCLEF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0552:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0554
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_0553:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLEF_SSE, .-_EMITCLEF_SSE
.cfi_endproc
.balign 16
_EMITCGEF_SSE:
.type _EMITCGEF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0555:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0557
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF_SSE
add esp, 32
.L_0556:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGEF_SSE, .-_EMITCGEF_SSE
.cfi_endproc
.balign 16
_EMITNEGF_SSE:
.type _EMITNEGF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_0558:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_055A
mov dword ptr [ebp-4], 24
jmp .L_0A43
.L_055A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A43:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A44], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A45
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_055D
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A44]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A44], 4
jle .L_0561
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A45
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0560
.L_0561:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A45
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
.L_0560:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A44]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_055D:
.L_055C:
cmp dword ptr [Lt_0A44], 4
jle .L_056D
sub esp, 4
push 14
push 2147483648
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A46], eax
sub esp, 12
mov eax, dword ptr [Lt_0A46]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A46]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A47], eax
jmp .L_056C
.L_056D:
sub esp, 4
push 9
push 4294967295
push 2147483648
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A46], eax
sub esp, 12
mov eax, dword ptr [Lt_0A46]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A46]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A47], eax
.L_056C:
mov eax, dword ptr [Lt_0A46]
mov dword ptr [eax+100], 16
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A48
push dword ptr [Lt_0A47]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A44], 4
jle .L_056F
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A48
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A45
push 7
push offset Lt_0570
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_056E
.L_056F:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A48
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A45
push 7
push offset Lt_0575
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_056E:
.L_0559:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNEGF_SSE, .-_EMITNEGF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A45,12
.balign 4
	.lcomm	Lt_0A48,12
.balign 4
	.lcomm	Lt_0A44,4
.balign 4
	.lcomm	Lt_0A46,4
.balign 4
	.lcomm	Lt_0A47,4

.section .text
.balign 16
_EMITHADDF_SSE:
.type _EMITHADDF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 180
push ebx
.L_057A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A4A
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_057C
mov dword ptr [ebp-4], 24
jmp .L_0A49
.L_057C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A49:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 4
jle .L_057F
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A4A
push 15
push offset Lt_016D
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_0582
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_057E
.L_057F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 2
jne .L_0588
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_058B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 14
push offset Lt_058A
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_0590
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0587
.L_0588:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 3
jne .L_0595
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_058B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 14
push offset Lt_058A
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_0590
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A4A
push 15
push offset Lt_016D
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_0590
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-172]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0587
.L_0595:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 4
jne .L_05A4
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A4A
push 15
push offset Lt_016D
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_05A7
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_058B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 14
push offset Lt_058A
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
add esp, 24
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
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4A
push 7
push offset Lt_0590
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-172]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 16
.L_05A4:
.L_0587:
.L_057E:
.L_057B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITHADDF_SSE, .-_EMITHADDF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A4A,12

.section .text
.balign 16
_EMITABSF_SSE:
.type _EMITABSF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_05B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05B6
mov dword ptr [ebp-4], 24
jmp .L_0A4B
.L_05B6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A4B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A4C], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A4D
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_05B9
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A4C]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A4C], 4
jle .L_05BD
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4D
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05BC
.L_05BD:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4D
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
.L_05BC:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A4C]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_05B9:
.L_05B8:
cmp dword ptr [Lt_0A4C], 4
jle .L_05C9
sub esp, 4
push 14
push 2147483647
push 4294967295
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A4E], eax
sub esp, 12
mov eax, dword ptr [Lt_0A4E]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A4E]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A4F], eax
jmp .L_05C8
.L_05C9:
sub esp, 4
push 9
push 0
push 2147483647
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A4E], eax
sub esp, 12
mov eax, dword ptr [Lt_0A4E]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A4E]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A4F], eax
.L_05C8:
mov eax, dword ptr [Lt_0A4E]
mov dword ptr [eax+100], 16
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A50
push dword ptr [Lt_0A4F]
call HPREPOPERAND
add esp, 32
cmp dword ptr [Lt_0A4C], 4
jle .L_05CB
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A50
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4D
push 7
push offset Lt_05CC
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05CA
.L_05CB:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A50
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A4D
push 7
push offset Lt_05D1
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_05CA:
.L_05B5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITABSF_SSE, .-_EMITABSF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A4D,12
.balign 4
	.lcomm	Lt_0A50,12
.balign 4
	.lcomm	Lt_0A4C,4
.balign 4
	.lcomm	Lt_0A4E,4
.balign 4
	.lcomm	Lt_0A4F,4

.section .text
.balign 16
_EMITSGNF_SSE:
.type _EMITSGNF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 148
push ebx
.L_05D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_05D8
mov dword ptr [ebp-4], 24
jmp .L_0A51
.L_05D8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A51:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A52], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A53
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_05DB
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A52]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A52], 4
jle .L_05DF
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 8
push offset Lt_008D
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05DE
.L_05DF:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 7
push offset Lt_0094
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
.L_05DE:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A52]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_05DB:
.L_05DA:
cmp dword ptr [Lt_0A52], 4
jle .L_05EB
sub esp, 12
push offset Lt_05EC
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A53
push 16
push offset Lt_05EE
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push 14
push 2147483647
push 4294967295
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A54], eax
mov eax, dword ptr [Lt_0A54]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A54]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A54]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A55], eax
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A56
push dword ptr [Lt_0A55]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A56
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 6
push offset Lt_05F1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push 14
push 3220176896
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A54], eax
mov eax, dword ptr [Lt_0A54]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A54]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A54]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A55], eax
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A56
push dword ptr [Lt_0A55]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A56
push 13
push offset Lt_05F7
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 7
push offset Lt_05CC
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05EA
.L_05EB:
sub esp, 12
push offset Lt_05FE
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A53
push 16
push offset Lt_0600
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push 9
push 0
push 2147483647
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A54], eax
mov eax, dword ptr [Lt_0A54]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A54]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A54]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A55], eax
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A56
push dword ptr [Lt_0A55]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A56
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 6
push offset Lt_0603
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push 9
push 4294967295
push 3212836864
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A54], eax
mov eax, dword ptr [Lt_0A54]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A54]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A54]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A55], eax
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A56
push dword ptr [Lt_0A55]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A56
push 13
push offset Lt_0609
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A53
push 7
push offset Lt_05D1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 16
.L_05EA:
.L_05D7:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSGNF_SSE, .-_EMITSGNF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A53,12
.balign 4
	.lcomm	Lt_0A56,12
.balign 4
	.lcomm	Lt_0A54,4
.balign 4
	.lcomm	Lt_0A55,4
.balign 4
	.lcomm	Lt_0A52,4

.section .text
.balign 16
HSINCOS_FAST_SSE:
.type HSINCOS_FAST_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 1204
push ebx
.L_0610:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A57
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov dword ptr [Lt_0A58], 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0616
add dword ptr [Lt_0A58], 4
.L_0616:
.L_0615:
mov dword ptr [Lt_0A59], 3
mov dword ptr [Lt_0A5A], 0
mov dword ptr [Lt_0A59+4], 5
mov dword ptr [Lt_0A5A+4], 0
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_0618
mov dword ptr [Lt_0A59], 3
mov dword ptr [Lt_0A5A], -1
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_061A
mov dword ptr [Lt_0A59+4], 0
mov dword ptr [Lt_0A5A+4], -1
jmp .L_0619
.L_061A:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_061B
mov dword ptr [Lt_0A59+4], 5
mov dword ptr [Lt_0A5A+4], -1
.L_061B:
.L_0619:
jmp .L_0617
.L_0618:
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_061C
mov dword ptr [Lt_0A59], 0
mov dword ptr [Lt_0A5A], -1
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_061E
mov dword ptr [Lt_0A59+4], 5
mov dword ptr [Lt_0A5A+4], -1
.L_061E:
.L_061D:
jmp .L_0617
.L_061C:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_0620
mov dword ptr [Lt_0A59+4], 5
mov dword ptr [Lt_0A5A+4], -1
.L_0620:
.L_061F:
.L_0617:
sub esp, 12
push 1
call HFINDFREEREG
add esp, 16
mov dword ptr [Lt_0A59+8], eax
cmp dword ptr [Lt_0A59+8], -1
jne .L_0622
mov dword ptr [Lt_0A59+8], 0
mov dword ptr [Lt_0A5A+8], 0
jmp .L_0621
.L_0622:
mov dword ptr [Lt_0A5A+8], -1
.L_0621:
mov eax, dword ptr [Lt_0A5A]
and eax, 1
sal eax, 2
add dword ptr [Lt_0A58], eax
mov eax, dword ptr [Lt_0A5A+4]
and eax, 1
sal eax, 2
add dword ptr [Lt_0A58], eax
mov eax, dword ptr [Lt_0A5A+8]
and eax, 1
sal eax, 2
add dword ptr [Lt_0A58], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0A59]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0A5B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0A59+4]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0A5B + 12
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0A59+8]
push 15
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0A5B + 24
call fb_StrAssign
add esp, 32
sub esp, 4
push 9
push 0
push 2147483647
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A5C], eax
mov eax, dword ptr [Lt_0A5C]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A5C]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A5C]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A5D], eax
sub esp, 4
push 9
push 0
push 1070141403
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A5E], eax
mov eax, dword ptr [Lt_0A5E]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A5E]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A5E]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A5F], eax
sub esp, 4
push 9
push 0
push 1059256707
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A60], eax
mov eax, dword ptr [Lt_0A60]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A60]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A60]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A61], eax
sub esp, 4
push 9
push 0
push 1065353216
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A62], eax
mov eax, dword ptr [Lt_0A62]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A62]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A62]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A63], eax
sub esp, 4
push 9
push 0
push 1070141403
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A64], eax
mov eax, dword ptr [Lt_0A64]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A64]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A64]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A65], eax
sub esp, 4
push 9
push 4294967295
push 3206897127
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A66], eax
mov eax, dword ptr [Lt_0A66]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A66]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A66]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A67], eax
sub esp, 4
push 9
push 0
push 1034106339
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A68], eax
mov eax, dword ptr [Lt_0A68]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A68]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A68]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A69], eax
sub esp, 4
push 9
push 4294967295
push 3147393382
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A6A], eax
mov eax, dword ptr [Lt_0A6A]
mov dword ptr [eax+100], 16
sub esp, 12
mov eax, dword ptr [Lt_0A6A]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A6A]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A6B], eax
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A57
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A58]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0626
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0094
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1152]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1152]
push eax
call fb_StrDelete
add esp, 16
.L_0626:
.L_0625:
mov dword ptr [Lt_0A6C], 4
mov dword ptr [Lt_0A6D], 0
.L_062E:
mov eax, dword ptr [Lt_0A6D]
cmp dword ptr [Lt_0A5A+eax*4], 0
jne .L_0630
cmp dword ptr [Lt_0A6D], 2
jge .L_0632
sub esp, 12
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
push 0
push -1
sub esp, 8
push -1
mov eax, dword ptr [Lt_0A6D]
imul eax, 12
lea ebx, [Lt_0A5B+eax]
push ebx
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 2
push offset Lt_0634
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0A6C]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0633
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1164]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1164]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1164]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0631
.L_0632:
sub esp, 12
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
push 0
push -1
sub esp, 8
push -1
mov eax, dword ptr [Lt_0A6D]
imul eax, 12
lea ebx, [Lt_0A5B+eax]
push ebx
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 2
push offset Lt_0634
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0A6C]
call fb_IntToStr
add esp, 16
push eax
push 12
push offset Lt_063A
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1164]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1164]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1164]
push eax
call fb_StrDelete
add esp, 16
.L_0631:
add dword ptr [Lt_0A6C], 4
.L_0630:
.L_062F:
.L_062C:
inc dword ptr [Lt_0A6D]
.L_062B:
cmp dword ptr [Lt_0A6D], 2
jle .L_062E
.L_062D:
cmp dword ptr [ebp+12], 0
jne .L_0641
sub esp, 12
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A57
push 14
push offset Lt_0302
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1128]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1128]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1128]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A61]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0644
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
lea eax, [ebp-1164]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1176]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1176]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1176]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_0649
call OUTP
add esp, 16
.L_0641:
.L_0640:
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A6E
push dword ptr [Lt_0A5D]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_05D1
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
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp+12], -1
jne .L_064F
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A5F]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0590
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1152]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1152]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A61]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-1200], 0
mov dword ptr [ebp-1196], 0
mov dword ptr [ebp-1192], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0644
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
lea eax, [ebp-1164]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
lea eax, [ebp-1176]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1188], 0
mov dword ptr [ebp-1184], 0
mov dword ptr [ebp-1180], 0
lea eax, [ebp-1188]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1200]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1200]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1200]
push eax
call fb_StrDelete
add esp, 16
.L_064F:
.L_064E:
sub esp, 12
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A57
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B
push 11
push offset Lt_0658
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
add esp, 28
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A63]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push 13
push offset Lt_01DC
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 12
push 11
push offset Lt_065F
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
add esp, 24
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 24
push 11
push offset Lt_0664
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-240]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_066A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 12
push 11
push offset Lt_0669
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
lea eax, [ebp-276]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-288]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push 11
push offset Lt_066F
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-312]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
push 0
push -1
sub esp, 8
push 11
push offset Lt_007C
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 12
push 11
push offset Lt_0672
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
lea eax, [ebp-324]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-360]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-360]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-360]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_0677
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B
push 11
push offset Lt_0672
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
lea eax, [ebp-372]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-408]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-408]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-408]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 24
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_067C
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
lea eax, [ebp-420]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
lea eax, [ebp-432]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
lea eax, [ebp-444]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-456]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-456]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-456]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push 11
push offset Lt_0681
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
lea eax, [ebp-468]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-480]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-480]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-480]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
mov dword ptr [ebp-520], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0684
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
lea eax, [ebp-492]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
lea eax, [ebp-504]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
lea eax, [ebp-516]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-528]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-528]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-528]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 24
push 11
push offset Lt_0689
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 0
lea eax, [ebp-540]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
mov dword ptr [ebp-544], 0
lea eax, [ebp-552]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
lea eax, [ebp-564]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-576]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-576]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-576]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
mov dword ptr [ebp-592], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A57
push 13
push offset Lt_068F
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
mov dword ptr [ebp-580], 0
lea eax, [ebp-588]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-600]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-600]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-600]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
mov dword ptr [ebp-616], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 24
push 13
push offset Lt_0609
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
mov dword ptr [ebp-604], 0
lea eax, [ebp-612]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-624]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-624]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-624]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
mov dword ptr [ebp-664], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A57
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 24
push 11
push offset Lt_0694
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
mov dword ptr [ebp-628], 0
lea eax, [ebp-636]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
mov dword ptr [ebp-640], 0
lea eax, [ebp-648]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-660], 0
mov dword ptr [ebp-656], 0
mov dword ptr [ebp-652], 0
lea eax, [ebp-660]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-672]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-672]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-672]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
mov dword ptr [ebp-688], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 24
push 17
push offset Lt_069A
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
lea eax, [ebp-684]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-696]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-696]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-696]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp+12], 0
jne .L_069E
sub esp, 12
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 12
push 11
push offset Lt_069F
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1152]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1152]
push eax
call fb_StrDelete
add esp, 16
.L_069E:
.L_069D:
sub esp, 12
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
mov dword ptr [ebp-736], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B
push 11
push offset Lt_0689
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
mov dword ptr [ebp-700], 0
lea eax, [ebp-708]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
mov dword ptr [ebp-712], 0
lea eax, [ebp-720]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
mov dword ptr [ebp-724], 0
lea eax, [ebp-732]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-744]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-744]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-744]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_06A9
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
mov dword ptr [ebp-784], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 12
push 11
push offset Lt_06AA
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
mov dword ptr [ebp-748], 0
lea eax, [ebp-756]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
mov dword ptr [ebp-760], 0
lea eax, [ebp-768]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
mov dword ptr [ebp-772], 0
lea eax, [ebp-780]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-792]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-792]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-792]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
mov dword ptr [ebp-832], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A5B + 24
push 7
push offset Lt_0094
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
mov dword ptr [ebp-796], 0
lea eax, [ebp-804]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
lea eax, [ebp-816]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
lea eax, [ebp-828]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-840]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-840]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-840]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A6B]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push 13
push offset Lt_06B4
mov dword ptr [ebp-852], 0
mov dword ptr [ebp-848], 0
mov dword ptr [ebp-844], 0
lea eax, [ebp-852]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-864]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-864]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-864]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A69]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-888], 0
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push 13
push offset Lt_06B8
mov dword ptr [ebp-876], 0
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
lea eax, [ebp-876]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-888]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-888]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-888]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-912], 0
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 24
push 13
push offset Lt_06B4
mov dword ptr [ebp-900], 0
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
lea eax, [ebp-900]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-912]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-912]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-912]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-960], 0
mov dword ptr [ebp-956], 0
mov dword ptr [ebp-952], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 12
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 11
push offset Lt_0689
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
lea eax, [ebp-924]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-936], 0
mov dword ptr [ebp-932], 0
mov dword ptr [ebp-928], 0
lea eax, [ebp-936]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-948], 0
mov dword ptr [ebp-944], 0
mov dword ptr [ebp-940], 0
lea eax, [ebp-948]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-960]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-960]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-960]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A67]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push 13
push offset Lt_06B8
mov dword ptr [ebp-972], 0
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
lea eax, [ebp-972]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-984]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-984]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-984]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-1008], 0
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A5B + 24
push 13
push offset Lt_06B4
mov dword ptr [ebp-996], 0
mov dword ptr [ebp-992], 0
mov dword ptr [ebp-988], 0
lea eax, [ebp-996]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1008]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1008]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1008]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A6E
push dword ptr [Lt_0A65]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-1032], 0
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A6E
push 13
push offset Lt_06B8
mov dword ptr [ebp-1020], 0
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
lea eax, [ebp-1020]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1032]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1032]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1032]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-1080], 0
mov dword ptr [ebp-1076], 0
mov dword ptr [ebp-1072], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A57
push 7
push offset Lt_0644
mov dword ptr [ebp-1044], 0
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
lea eax, [ebp-1044]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1056], 0
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
lea eax, [ebp-1056]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1068], 0
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
lea eax, [ebp-1068]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1080]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1080]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1080]
push eax
call fb_StrDelete
add esp, 16
mov dword ptr [Lt_0A6C], 4
mov dword ptr [Lt_0A6D], 0
.L_06CE:
mov eax, dword ptr [Lt_0A6D]
cmp dword ptr [Lt_0A5A+eax*4], 0
jne .L_06D0
cmp dword ptr [Lt_0A6D], 2
jge .L_06D2
sub esp, 12
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0634
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0A6C]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 6
push offset Lt_06D3
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
mov eax, dword ptr [Lt_0A6D]
imul eax, 12
lea ebx, [Lt_0A5B+eax]
push ebx
push 5
push offset Lt_00EE
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea ebx, [ebp-1116]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
lea eax, [ebp-1164]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1176]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1176]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1176]
push eax
call fb_StrDelete
add esp, 16
jmp .L_06D1
.L_06D2:
sub esp, 12
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0634
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0A6C]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 6
push offset Lt_06D3
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
mov eax, dword ptr [Lt_0A6D]
imul eax, 12
lea ebx, [Lt_0A5B+eax]
push ebx
push 7
push offset Lt_0094
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea ebx, [ebp-1116]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
lea eax, [ebp-1164]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1176]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1176]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1176]
push eax
call fb_StrDelete
add esp, 16
.L_06D1:
add dword ptr [Lt_0A6C], 4
.L_06D0:
.L_06CF:
.L_06CC:
inc dword ptr [Lt_0A6D]
.L_06CB:
cmp dword ptr [Lt_0A6D], 2
jle .L_06CE
.L_06CD:
sub esp, 12
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A58]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-1092], 0
mov dword ptr [ebp-1088], 0
mov dword ptr [ebp-1084], 0
lea eax, [ebp-1092]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-1104]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-1104]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-1104]
push eax
call fb_StrDelete
add esp, 16
.L_0611:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSINCOS_FAST_SSE, .-HSINCOS_FAST_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A59,12
.balign 4
	.lcomm	Lt_0A5A,12
.balign 4
	.lcomm	Lt_0A58,4
.balign 4
	.lcomm	Lt_0A6D,4
.balign 4
	.lcomm	Lt_0A6C,4
.balign 4
	.lcomm	Lt_0A57,12
.balign 4
	.lcomm	Lt_0A6E,12
.balign 4
	.lcomm	Lt_0A5B,36
.balign 4
	.lcomm	Lt_0A5C,4
.balign 4
	.lcomm	Lt_0A62,4
.balign 4
	.lcomm	Lt_0A5E,4
.balign 4
	.lcomm	Lt_0A60,4
.balign 4
	.lcomm	Lt_0A64,4
.balign 4
	.lcomm	Lt_0A66,4
.balign 4
	.lcomm	Lt_0A68,4
.balign 4
	.lcomm	Lt_0A6A,4
.balign 4
	.lcomm	Lt_0A5D,4
.balign 4
	.lcomm	Lt_0A63,4
.balign 4
	.lcomm	Lt_0A5F,4
.balign 4
	.lcomm	Lt_0A61,4
.balign 4
	.lcomm	Lt_0A65,4
.balign 4
	.lcomm	Lt_0A67,4
.balign 4
	.lcomm	Lt_0A69,4
.balign 4
	.lcomm	Lt_0A6B,4

.section .text
.balign 16
_EMITSIN_SSE:
.type _EMITSIN_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_06E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_06E4
mov dword ptr [ebp-4], 24
jmp .L_0A6F
.L_06E4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A6F:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A70], ebx
mov ebx, dword ptr [Lt_0A70]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+120]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_06E7
sub esp, 8
push 0
push dword ptr [ebp+8]
call HSINCOS_FAST_SSE
add esp, 16
jmp .L_06E3
.L_06E7:
.L_06E6:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A73
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_06E9
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A70]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A70], 4
jle .L_06ED
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A73
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_06EC
.L_06ED:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A73
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_06EC:
.L_06E9:
.L_06E8:
sub esp, 12
push offset Lt_06F2
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_06F4
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A70]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_06F4:
.L_06F3:
cmp dword ptr [Lt_0A70], 4
jle .L_06F8
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A73
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_06F7
.L_06F8:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A73
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_06F7:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A70]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_06E3:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSIN_SSE, .-_EMITSIN_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A73,12
.balign 4
	.lcomm	Lt_0A70,4

.section .text
.balign 16
_EMITASIN_SSE:
.type _EMITASIN_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0703:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0705
mov dword ptr [ebp-4], 24
jmp .L_0A74
.L_0705:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A74:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A75], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A76
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_0708
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A75]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A75], 4
jle .L_070C
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A76
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_070B
.L_070C:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A76
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_070B:
.L_0708:
.L_0707:
sub esp, 12
push offset Lt_0221
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0711
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DF
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0712
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0713
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04B4
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0715
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A75]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0715:
.L_0714:
cmp dword ptr [Lt_0A75], 4
jle .L_0719
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A76
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0718
.L_0719:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A76
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0718:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A75]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0704:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITASIN_SSE, .-_EMITASIN_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A76,12
.balign 4
	.lcomm	Lt_0A75,4

.section .text
.balign 16
_EMITCOS_SSE:
.type _EMITCOS_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0724:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0726
mov dword ptr [ebp-4], 24
jmp .L_0A77
.L_0726:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A77:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A78], ebx
mov ebx, dword ptr [Lt_0A78]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+120]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0729
sub esp, 8
push -1
push dword ptr [ebp+8]
call HSINCOS_FAST_SSE
add esp, 16
jmp .L_0725
.L_0729:
.L_0728:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A7B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_072B
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A78]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A78], 4
jle .L_072F
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A7B
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_072E
.L_072F:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A7B
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_072E:
.L_072B:
.L_072A:
sub esp, 12
push offset Lt_0734
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0736
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A78]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0736:
.L_0735:
cmp dword ptr [Lt_0A78], 4
jle .L_073A
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A7B
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0739
.L_073A:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A7B
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0739:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A78]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0725:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCOS_SSE, .-_EMITCOS_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A7B,12
.balign 4
	.lcomm	Lt_0A78,4

.section .text
.balign 16
_EMITACOS_SSE:
.type _EMITACOS_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0745:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0747
mov dword ptr [ebp-4], 24
jmp .L_0A7C
.L_0747:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A7C:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A7D], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A7E
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_074A
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A7D]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A7D], 4
jle .L_074E
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A7E
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_074D
.L_074E:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A7E
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_074D:
.L_074A:
.L_0749:
sub esp, 12
push offset Lt_0221
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0711
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DF
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0712
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0713
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04B4
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0754
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A7D]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0754:
.L_0753:
cmp dword ptr [Lt_0A7D], 4
jle .L_0758
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A7E
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0757
.L_0758:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A7E
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0757:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A7D]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0746:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITACOS_SSE, .-_EMITACOS_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A7E,12
.balign 4
	.lcomm	Lt_0A7D,4

.section .text
.balign 16
_EMITTAN_SSE:
.type _EMITTAN_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0763:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0765
mov dword ptr [ebp-4], 24
jmp .L_0A7F
.L_0765:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A7F:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A80], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A81
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_0768
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A80]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A80], 4
jle .L_076C
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A81
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_076B
.L_076C:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A81
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_076B:
.L_0768:
.L_0767:
sub esp, 12
push offset Lt_0771
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0772
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0774
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A80]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0774:
.L_0773:
cmp dword ptr [Lt_0A80], 4
jle .L_0778
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A81
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0777
.L_0778:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A81
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0777:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A80]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0764:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITTAN_SSE, .-_EMITTAN_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A81,12
.balign 4
	.lcomm	Lt_0A80,4

.section .text
.balign 16
_EMITATAN_SSE:
.type _EMITATAN_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0783:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0785
mov dword ptr [ebp-4], 24
jmp .L_0A82
.L_0785:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A82:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A83], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A84
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_0788
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A83]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A83], 4
jle .L_078C
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A84
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_078B
.L_078C:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A84
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_078B:
.L_0788:
.L_0787:
sub esp, 12
push offset Lt_04DF
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04B4
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0792
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A83]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0792:
.L_0791:
cmp dword ptr [Lt_0A83], 4
jle .L_0796
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A84
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0795
.L_0796:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A84
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0795:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A83]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0784:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITATAN_SSE, .-_EMITATAN_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A84,12
.balign 4
	.lcomm	Lt_0A83,4

.section .text
.balign 16
_EMITSQRT_SSE:
.type _EMITSQRT_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_07A1:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A86
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_07A3
mov dword ptr [ebp-4], 24
jmp .L_0A85
.L_07A3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A85:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A87], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_07A6
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A87]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A87], 4
jle .L_07AA
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A86
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07A9
.L_07AA:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A86
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_07A9:
.L_07A6:
.L_07A5:
cmp dword ptr [Lt_0A87], 4
jle .L_07B4
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A86
push 8
push offset Lt_07B5
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07B3
.L_07B4:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A86
push 8
push offset Lt_07BA
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_07B3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_07C0
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A87]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_07C0:
.L_07BF:
.L_07A2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSQRT_SSE, .-_EMITSQRT_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A86,12
.balign 4
	.lcomm	Lt_0A87,4

.section .text
.balign 16
_EMITRSQRT_SSE:
.type _EMITRSQRT_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_07C3:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A89
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_07C5
mov dword ptr [ebp-4], 24
jmp .L_0A88
.L_07C5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A88:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A8A], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_07C8
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8A]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A8A], 4
jle .L_07CC
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A89
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07CB
.L_07CC:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A89
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_07CB:
.L_07C8:
.L_07C7:
cmp dword ptr [Lt_0A8A], 4
jle .L_07D6
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A89
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A89
push 9
push offset Lt_07D7
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07D5
.L_07D6:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A89
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A89
push 9
push offset Lt_07DC
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_07D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_07E2
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8A]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_07E2:
.L_07E1:
.L_07C4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITRSQRT_SSE, .-_EMITRSQRT_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A89,12
.balign 4
	.lcomm	Lt_0A8A,4

.section .text
.balign 16
_EMITRCP_SSE:
.type _EMITRCP_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_07E5:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A8C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_07E7
mov dword ptr [ebp-4], 24
jmp .L_0A8B
.L_07E7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A8B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A8D], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
jne .L_07EA
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8D]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A8D], 4
jle .L_07EE
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A8C
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07ED
.L_07EE:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A8C
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_07ED:
.L_07EA:
.L_07E9:
cmp dword ptr [Lt_0A8D], 4
jle .L_07F8
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A8C
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A8C
push 7
push offset Lt_07F9
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07F7
.L_07F8:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A8C
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A8C
push 7
push offset Lt_07FE
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_07F7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0804
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8D]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0804:
.L_0803:
.L_07E6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITRCP_SSE, .-_EMITRCP_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A8C,12
.balign 4
	.lcomm	Lt_0A8D,4

.section .text
.balign 16
_EMITLOG_SSE:
.type _EMITLOG_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0807:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0809
mov dword ptr [ebp-4], 24
jmp .L_0A8E
.L_0809:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A8E:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A8F], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A90
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_080C
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8F]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A8F], 4
jle .L_0810
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A90
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_080F
.L_0810:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A90
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_080F:
.L_080C:
.L_080B:
sub esp, 12
push offset Lt_0815
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DA
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0817
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8F]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0817:
.L_0816:
cmp dword ptr [Lt_0A8F], 4
jle .L_081B
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A90
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_081A
.L_081B:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A90
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_081A:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A8F]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0808:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOG_SSE, .-_EMITLOG_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A90,12
.balign 4
	.lcomm	Lt_0A8F,4

.section .text
.balign 16
_EMITEXP_SSE:
.type _EMITEXP_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0826:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0828
mov dword ptr [ebp-4], 24
jmp .L_0A91
.L_0828:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A91:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A92], ebx
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A93
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 1
jne .L_082B
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A92]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A92], 4
jle .L_082F
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A93
push 25
push offset Lt_00AD
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_082E
.L_082F:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A93
push 24
push offset Lt_00B2
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_082E:
.L_082B:
.L_082A:
sub esp, 12
push offset Lt_0834
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0835
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0836
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DB
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0837
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04DE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0838
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_0839
call OUTP
add esp, 16
sub esp, 12
push offset Lt_00D3
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04E0
call OUTP
add esp, 16
sub esp, 12
push offset Lt_04E1
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_083B
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A92]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_083B:
.L_083A:
cmp dword ptr [Lt_0A92], 4
jle .L_083F
sub esp, 12
push offset Lt_008C
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A93
push 8
push offset Lt_008D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_083E
.L_083F:
sub esp, 12
push offset Lt_0093
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A93
push 7
push offset Lt_0094
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_083E:
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0A92]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0827:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITEXP_SSE, .-_EMITEXP_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A93,12
.balign 4
	.lcomm	Lt_0A92,4

.section .text
.balign 16
_EMITFLOOR_SSE:
.type _EMITFLOOR_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 436
push ebx
.L_084A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_084C
mov dword ptr [ebp-4], 24
jmp .L_0A94
.L_084C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A94:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A95], ebx
cmp dword ptr [Lt_0A95], 4
jle .L_084F
sub esp, 4
push 14
push 3220176896
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A96], eax
sub esp, 12
mov eax, dword ptr [Lt_0A96]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A96]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A97], eax
sub esp, 12
push 0
push 3
push offset Lt_03CE
push -1
push offset Lt_0A98
call fb_StrAssign
add esp, 32
jmp .L_084E
.L_084F:
sub esp, 4
push 9
push 4294967295
push 3212836864
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A96], eax
sub esp, 12
mov eax, dword ptr [Lt_0A96]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A96]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A97], eax
sub esp, 12
push 0
push 3
push offset Lt_03D4
push -1
push offset Lt_0A98
call fb_StrAssign
add esp, 32
.L_084E:
mov eax, dword ptr [Lt_0A96]
mov dword ptr [eax+100], 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0A99
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0A9A
push dword ptr [Lt_0A97]
call HPREPOPERAND
add esp, 32
sub esp, 12
push offset Lt_00C5
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_0851
cmp dword ptr [Lt_0A95], 4
jle .L_0853
sub esp, 12
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A99
push 25
push offset Lt_00AD
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-424]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-424]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-424]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_0852
.L_0853:
sub esp, 12
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A99
push 24
push offset Lt_00B2
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-424]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-424]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-424]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_0852:
sub esp, 12
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A99
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 6
push offset Lt_0858
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-400]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-400]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-400]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0850
.L_0851:
cmp dword ptr [Lt_0A95], 4
jle .L_085F
sub esp, 12
push offset Lt_0860
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0861
call OUTP
add esp, 16
jmp .L_085E
.L_085F:
sub esp, 12
push offset Lt_0862
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0863
call OUTP
add esp, 16
.L_085E:
.L_0850:
sub esp, 12
push offset Lt_00D2
call OUTP
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 6
push offset Lt_0123
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
add esp, 28
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A99
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A99
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 5
push offset Lt_0867
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
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
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 5
push offset Lt_03F7
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-160]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A99
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 8
push offset Lt_0872
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0A9A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A99
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 5
push offset Lt_0878
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-280]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0A99
push -1
sub esp, 4
push -1
push offset Lt_0A98
push 5
push offset Lt_03B6
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-340]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-340]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-340]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00E5
call OUTP
add esp, 16
.L_084B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFLOOR_SSE, .-_EMITFLOOR_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A99,12
.balign 4
	.lcomm	Lt_0A9A,12
.balign 4
	.lcomm	Lt_0A98,12
.balign 4
	.lcomm	Lt_0A95,4
.balign 4
	.lcomm	Lt_0A96,4
.balign 4
	.lcomm	Lt_0A97,4

.section .text
.balign 16
_EMITFIX_SSE:
.type _EMITFIX_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 660
push ebx
.L_0883:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0885
mov dword ptr [ebp-4], 24
jmp .L_0A9B
.L_0885:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0A9B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0A9C], ebx
cmp dword ptr [Lt_0A9C], 4
jle .L_0888
sub esp, 4
push 14
push 3220176896
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A9D], eax
sub esp, 12
mov eax, dword ptr [Lt_0A9D]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A9D]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A9E], eax
sub esp, 4
push 14
push 2147483648
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A9F], eax
sub esp, 12
mov eax, dword ptr [Lt_0A9F]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A9F]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AA0], eax
sub esp, 12
push 0
push 3
push offset Lt_03CE
push -1
push offset Lt_0AA1
call fb_StrAssign
add esp, 32
jmp .L_0887
.L_0888:
sub esp, 4
push 9
push 4294967295
push 3212836864
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A9D], eax
sub esp, 12
mov eax, dword ptr [Lt_0A9D]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A9D]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0A9E], eax
sub esp, 4
push 9
push 4294967295
push 2147483648
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0A9F], eax
sub esp, 12
mov eax, dword ptr [Lt_0A9F]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0A9F]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AA0], eax
sub esp, 12
push 0
push 3
push offset Lt_03D4
push -1
push offset Lt_0AA1
call fb_StrAssign
add esp, 32
.L_0887:
mov eax, dword ptr [Lt_0A9D]
mov dword ptr [eax+100], 16
mov eax, dword ptr [Lt_0A9F]
mov dword ptr [eax+100], 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0AA2
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0AA3
push dword ptr [Lt_0A9E]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0AA4
push dword ptr [Lt_0AA0]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [Lt_0A9C]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_088C
cmp dword ptr [Lt_0A9C], 4
jle .L_088E
sub esp, 12
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AA2
push 25
push offset Lt_00AD
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-628]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-628]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-628]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_088D
.L_088E:
sub esp, 12
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AA2
push 24
push offset Lt_00B2
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-628]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-628]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-628]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_088D:
jmp .L_088B
.L_088C:
cmp dword ptr [Lt_0A9C], 4
jle .L_0894
sub esp, 12
push offset Lt_0860
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push 8
push offset Lt_008D
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
lea eax, [ebp-628]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
lea eax, [ebp-640]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-652]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-652]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-652]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0893
.L_0894:
sub esp, 12
push offset Lt_0862
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push 7
push offset Lt_0094
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
lea eax, [ebp-628]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
lea eax, [ebp-640]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-652]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-652]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-652]
push eax
call fb_StrDelete
add esp, 16
.L_0893:
.L_088B:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push 11
push offset Lt_089D
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_0867
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0A9C], 4
jle .L_08A2
sub esp, 12
push offset Lt_08A3
call OUTP
add esp, 16
jmp .L_08A1
.L_08A2:
sub esp, 12
push offset Lt_08A4
call OUTP
add esp, 16
.L_08A1:
sub esp, 12
push offset Lt_00D2
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 8
push offset Lt_0872
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
add esp, 24
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
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AA4
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_0878
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-184]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 6
push offset Lt_0123
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_03F7
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-280]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_0867
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-340]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-340]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-340]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AA3
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_0867
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-400]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-400]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-400]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
push 0
push -1
sub esp, 8
push 8
push offset Lt_08C2
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 7
push offset Lt_08C1
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
lea eax, [ebp-424]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-460]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-460]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-460]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_0878
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-520]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-520]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-520]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AA2
push -1
sub esp, 4
push -1
push offset Lt_0AA1
push 5
push offset Lt_03B6
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-580]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-580]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-580]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [Lt_0A9C]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-604]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-604]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-604]
push eax
call fb_StrDelete
add esp, 16
.L_0884:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFIX_SSE, .-_EMITFIX_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0AA2,12
.balign 4
	.lcomm	Lt_0AA1,12
.balign 4
	.lcomm	Lt_0AA4,12
.balign 4
	.lcomm	Lt_0AA3,12
.balign 4
	.lcomm	Lt_0A9C,4
.balign 4
	.lcomm	Lt_0A9D,4
.balign 4
	.lcomm	Lt_0A9F,4
.balign 4
	.lcomm	Lt_0A9E,4
.balign 4
	.lcomm	Lt_0AA0,4

.section .text
.balign 16
_EMITFRAC_SSE:
.type _EMITFRAC_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 740
push ebx
.L_08D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_08D6
mov dword ptr [ebp-4], 24
jmp .L_0AA5
.L_08D6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0AA5:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0AA6], ebx
cmp dword ptr [Lt_0AA6], 4
jle .L_08D9
sub esp, 4
push 14
push 3220176896
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0AA7], eax
sub esp, 12
mov eax, dword ptr [Lt_0AA7]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0AA7]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AA8], eax
sub esp, 4
push 14
push 2147483648
push 0
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0AA9], eax
sub esp, 12
mov eax, dword ptr [Lt_0AA9]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0AA9]
push 0
push 14
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AAA], eax
sub esp, 12
push 0
push 3
push offset Lt_03CE
push -1
push offset Lt_0AAB
call fb_StrAssign
add esp, 32
jmp .L_08D8
.L_08D9:
sub esp, 4
push 9
push 4294967295
push 3212836864
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0AA7], eax
sub esp, 12
mov eax, dword ptr [Lt_0AA7]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0AA7]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AA8], eax
sub esp, 4
push 9
push 4294967295
push 2147483648
call SYMBALLOCINTCONST
add esp, 16
mov dword ptr [Lt_0AA9], eax
sub esp, 12
mov eax, dword ptr [Lt_0AA9]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [Lt_0AA9]
push 0
push 9
call dword ptr [IR+236]
add esp, 32
mov dword ptr [Lt_0AAA], eax
sub esp, 12
push 0
push 3
push offset Lt_03D4
push -1
push offset Lt_0AAB
call fb_StrAssign
add esp, 32
.L_08D8:
mov eax, dword ptr [Lt_0AA7]
mov dword ptr [eax+100], 16
mov eax, dword ptr [Lt_0AA9]
mov dword ptr [eax+100], 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0AAC
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0AAD
push dword ptr [Lt_0AA8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 25
push offset Lt_0AAE
push dword ptr [Lt_0AAA]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [Lt_0AA6]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0087
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
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 1
jne .L_08DD
cmp dword ptr [Lt_0AA6], 4
jle .L_08DF
sub esp, 12
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push 25
push offset Lt_00AD
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-688]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-688]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-688]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B0
call OUTP
add esp, 16
jmp .L_08DE
.L_08DF:
sub esp, 12
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push 24
push offset Lt_00B2
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-688]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-688]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-688]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_00B5
call OUTP
add esp, 16
.L_08DE:
jmp .L_08DC
.L_08DD:
cmp dword ptr [Lt_0AA6], 4
jle .L_08E5
sub esp, 12
push offset Lt_0860
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_008E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 8
push offset Lt_008D
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-712]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-712]
push eax
call fb_StrDelete
add esp, 16
jmp .L_08E4
.L_08E5:
sub esp, 12
push offset Lt_0862
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
push 0
push -1
sub esp, 8
push 16
push offset Lt_0095
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 7
push offset Lt_0094
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-712]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-712]
push eax
call fb_StrDelete
add esp, 16
.L_08E4:
.L_08DC:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push 11
push offset Lt_089D
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_0867
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0AA6], 4
jle .L_08F2
sub esp, 12
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_007D
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 8
push offset Lt_08F3
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
lea eax, [ebp-712]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
lea eax, [ebp-724]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-736]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-736]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-736]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_08A3
call OUTP
add esp, 16
jmp .L_08F1
.L_08F2:
sub esp, 12
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 9
push offset Lt_08FA
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-712]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-712]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_08A4
call OUTP
add esp, 16
.L_08F1:
sub esp, 12
push offset Lt_00D2
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 8
push offset Lt_0872
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
add esp, 24
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
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_011E
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAE
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_0878
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-184]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 6
push offset Lt_0123
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_03F7
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-280]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_0867
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-340]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-340]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-340]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAD
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_0867
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-400]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-400]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-400]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
push 0
push -1
sub esp, 8
push 8
push offset Lt_08C2
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 7
push offset Lt_08C1
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
lea eax, [ebp-424]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-460]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-460]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-460]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_0878
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-520]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-520]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-520]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0AA6], 4
jle .L_0926
sub esp, 12
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0004
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 8
push offset Lt_08F3
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
lea eax, [ebp-712]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
lea eax, [ebp-724]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-736]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-736]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-736]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0925
.L_0926:
sub esp, 12
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push 9
push offset Lt_092D
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
lea eax, [ebp-676]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-712]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-712]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-712]
push eax
call fb_StrDelete
add esp, 16
.L_0925:
sub esp, 12
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_06A0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 5
push offset Lt_014A
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_03B6
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-580]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-580]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-580]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_014A
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AAC
push -1
sub esp, 4
push -1
push offset Lt_0AAB
push 5
push offset Lt_03F7
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
lea eax, [ebp-628]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-640]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-640]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-640]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-664], 0
mov dword ptr [ebp-660], 0
mov dword ptr [ebp-656], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [Lt_0AA6]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
lea eax, [ebp-652]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-664]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-664]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-664]
push eax
call fb_StrDelete
add esp, 16
.L_08D5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFRAC_SSE, .-_EMITFRAC_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0AAC,12
.balign 4
	.lcomm	Lt_0AAB,12
.balign 4
	.lcomm	Lt_0AAE,12
.balign 4
	.lcomm	Lt_0AAD,12
.balign 4
	.lcomm	Lt_0AA6,4
.balign 4
	.lcomm	Lt_0AA7,4
.balign 4
	.lcomm	Lt_0AA9,4
.balign 4
	.lcomm	Lt_0AA8,4
.balign 4
	.lcomm	Lt_0AAA,4

.section .text
.balign 16
_EMITPUSHF_SSE:
.type _EMITPUSHF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_093E:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0AB0
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0941
mov dword ptr [ebp-4], 24
jmp .L_0AAF
.L_0941:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0AAF:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0AB1], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0944
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0946
sub esp, 12
push 0
push 6
push offset Lt_0947
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB0
push -1
push offset Lt_0AB2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB2]
call OUTP
add esp, 16
jmp .L_0945
.L_0946:
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0AB0
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0947
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB0
push -1
push offset Lt_0AB2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB2]
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0AB0
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0947
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB0
push -1
push offset Lt_0AB2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB2]
call OUTP
add esp, 16
.L_0945:
jmp .L_0943
.L_0944:
sub esp, 12
push 0
push 10
push offset Lt_0087
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_0AB1]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0AB2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB2]
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0949
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 6
push offset Lt_0123
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
add esp, 28
push eax
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB2]
call OUTP
add esp, 16
jmp .L_093F
.L_0949:
.L_0948:
cmp dword ptr [Lt_0AB1], 4
jle .L_094D
sub esp, 12
push 0
push 8
push offset Lt_008D
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
jmp .L_094C
.L_094D:
sub esp, 12
push 0
push 7
push offset Lt_0094
push -1
push offset Lt_0AB2
call fb_StrAssign
add esp, 32
.L_094C:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0AB0
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push 6
push offset Lt_06A0
push -1
push offset Lt_0AB2
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0943:
.L_093F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHF_SSE, .-_EMITPUSHF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0AB0,12
.balign 4
	.lcomm	Lt_0AB1,4
.balign 4
	.lcomm	Lt_0AB2,12

.section .text
.balign 16
_EMITPOPF_SSE:
.type _EMITPOPF_SSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_0952:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0AB4
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0954
mov dword ptr [ebp-4], 24
jmp .L_0AB3
.L_0954:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0AB3:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0AB5], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0957
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0959
sub esp, 12
push 0
push 5
push offset Lt_095A
push -1
push offset Lt_0AB6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB4
push -1
push offset Lt_0AB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB6]
call OUTP
add esp, 16
jmp .L_0958
.L_0959:
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0AB4
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_095A
push -1
push offset Lt_0AB6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB4
push -1
push offset Lt_0AB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB6]
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0AB4
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_095A
push -1
push offset Lt_0AB6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0AB4
push -1
push offset Lt_0AB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0AB6]
call OUTP
add esp, 16
.L_0958:
jmp .L_0956
.L_0957:
cmp dword ptr [Lt_0AB5], 4
jle .L_095C
sub esp, 12
push 0
push 8
push offset Lt_008D
push -1
push offset Lt_0AB6
call fb_StrAssign
add esp, 32
jmp .L_095B
.L_095C:
sub esp, 12
push 0
push 7
push offset Lt_0094
push -1
push offset Lt_0AB6
call fb_StrAssign
add esp, 32
.L_095B:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_011B
push -1
sub esp, 4
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [DTYPETB+eax+4]
push ebx
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0AB4
push -1
push offset Lt_0AB6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 24
push eax
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
add esp, 24
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0AB5]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_009B
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-88]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
.L_0956:
.L_0953:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOPF_SSE, .-_EMITPOPF_SSE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0AB4,12
.balign 4
	.lcomm	Lt_0AB6,12
.balign 4
	.lcomm	Lt_0AB5,4

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_0072,36

.section .rodata
.balign 4
Lt_0073:	.ascii	", \0"

.section .bss
.balign 4
	.lcomm	Lt_0074,36
.balign 4
	.lcomm	_EMITLOADB2F_X86,4

.section .rodata
.balign 4
Lt_0078:	.ascii	"cmp \0"
.balign 4
Lt_0079:	.ascii	", 0\0"
.balign 4
Lt_007A:	.ascii	"jns \0"
.balign 4
Lt_007B:	.ascii	"0x403f\0"
.balign 4
Lt_007C:	.ascii	"0x80000000\0"
.balign 4
Lt_007D:	.ascii	"0\0"
.balign 4
Lt_007E:	.ascii	"fldt [esp]\0"
.balign 4
Lt_007F:	.ascii	"add esp, 12\0"
.balign 4
Lt_0080:	.ascii	"faddp\0"
.balign 4
Lt_0087:	.ascii	"sub esp, \0"
.balign 4
Lt_008C:	.ascii	"fstp qword ptr [esp]\0"
.balign 4
Lt_008D:	.ascii	"movlpd \0"
.balign 4
Lt_008E:	.ascii	"qword ptr [esp]\0"
.balign 4
Lt_0093:	.ascii	"fstp dword ptr [esp]\0"
.balign 4
Lt_0094:	.ascii	"movss \0"
.balign 4
Lt_0095:	.ascii	"dword ptr [esp]\0"
.balign 4
Lt_009B:	.ascii	"add esp, \0"
.balign 4
Lt_00AD:	.ascii	"movlpd qword ptr [esp], \0"
.balign 4
Lt_00B0:	.ascii	"fld qword ptr [esp]\0"
.balign 4
Lt_00B2:	.ascii	"movss dword ptr [esp], \0"
.balign 4
Lt_00B5:	.ascii	"fld dword ptr [esp]\0"
.balign 4
Lt_00B8:	.ascii	"fistp \0"
.balign 4
Lt_00C5:	.ascii	"sub esp, 8\0"
.balign 4
Lt_00C8:	.ascii	"fld \0"
.balign 4
Lt_00D2:	.ascii	"fistp qword ptr [esp]\0"
.balign 4
Lt_00D3:	.ascii	"add esp, 4\0"
.balign 4
Lt_00E5:	.ascii	"add esp, 8\0"
.balign 4
Lt_00EC:	.ascii	"sub esp, 4\0"
.balign 4
Lt_00ED:	.ascii	"fistp dword ptr [esp]\0"
.balign 4
Lt_00EE:	.ascii	"mov \0"
.balign 4
Lt_00F5:	.ascii	"cvtsd2si \0"
.balign 4
Lt_00FA:	.ascii	"cvtss2si \0"
.balign 4
Lt_011A:	.ascii	"fild \0"
.balign 4
Lt_011B:	.ascii	" [esp]\0"
.balign 4
Lt_011E:	.ascii	"fild qword ptr [esp]\0"
.balign 4
Lt_0123:	.ascii	"fstp \0"
.balign 4
Lt_013E:	.ascii	"movsx \0"
.balign 4
Lt_013F:	.ascii	"movzx \0"
.balign 4
Lt_0147:	.ascii	"cvtsi2sd xmm7, \0"
.balign 4
Lt_014A:	.ascii	"xmm7\0"
.balign 4
Lt_0150:	.ascii	"cvtsi2ss xmm7, \0"
.balign 4
Lt_015F:	.ascii	"movupd \0"
.balign 4
Lt_0166:	.ascii	"movlps \0"
.balign 4
Lt_016D:	.ascii	"movhlps xmm7, \0"
.balign 4
Lt_0179:	.ascii	"movups \0"
.balign 4
Lt_0190:	.ascii	"cvtss2sd \0"
.balign 4
Lt_019B:	.ascii	"cvtsd2ss \0"
.balign 4
Lt_01AB:	.ascii	"movupd xmm7, \0"
.balign 4
Lt_01B5:	.ascii	"movlps xmm7, \0"
.balign 4
Lt_01BE:	.ascii	"movups xmm7, \0"
.balign 4
Lt_01C5:	.ascii	"unpckhps xmm7, xmm7\0"
.balign 4
Lt_01D4:	.ascii	"movlpd xmm7, \0"
.balign 4
Lt_01DC:	.ascii	"movss xmm7, \0"
.balign 4
Lt_01E8:	.ascii	"cvtpd2ps xmm7, \0"
.balign 4
Lt_01F0:	.ascii	"cvtsd2ss xmm7, \0"
.balign 4
Lt_01FA:	.ascii	"cvtps2pd xmm7, \0"
.balign 4
Lt_0202:	.ascii	"cvtss2sd xmm7, \0"
.balign 4
Lt_0221:	.ascii	"fld st(0)\0"
.balign 4
Lt_0222:	.ascii	"push 0x4f800000\0"
.balign 4
Lt_0223:	.ascii	"fdiv dword ptr [esp]\0"
.balign 4
Lt_0224:	.ascii	"fild dword ptr [esp]\0"
.balign 4
Lt_0225:	.ascii	"fmul dword ptr [esp]\0"
.balign 4
Lt_0226:	.ascii	"fsubp\0"
.balign 4
Lt_0246:	.ascii	"fistp word ptr [esp]\0"
.balign 4
Lt_0255:	.ascii	"cvtp\0"
.balign 4
Lt_0256:	.ascii	"2dq xmm7\0"
.balign 4
Lt_025C:	.ascii	"packssdw xmm7, xmm7\0"
.balign 4
Lt_025D:	.ascii	"movd \0"
.balign 4
Lt_0262:	.ascii	"cvts\0"
.balign 4
Lt_0263:	.ascii	"2si \0"
.balign 4
Lt_02A4:	.ascii	"sd \0"
.balign 4
Lt_02A5:	.ascii	"ss \0"
.balign 4
Lt_02AA:	.ascii	"and \0"
.balign 4
Lt_02AB:	.ascii	"0xFFFF\0"
.balign 4
Lt_02B0:	.ascii	"cvtsi2\0"
.balign 4
Lt_02BA:	.ascii	"shr \0"
.balign 4
Lt_02BB:	.ascii	"16\0"
.balign 4
Lt_02C5:	.ascii	"mul\0"
.balign 4
Lt_02CB:	.ascii	"add\0"
.balign 4
Lt_02EB:	.ascii	"cvtsi2sd \0"
.balign 4
Lt_02F0:	.ascii	"cvtsi2ss \0"
.balign 4
Lt_02FE:	.ascii	"movlpd [esp], \0"
.balign 4
Lt_0302:	.ascii	"movss [esp], \0"
.balign 4
Lt_0332:	.ascii	"cvtpd2ps \0"
.balign 4
Lt_033D:	.ascii	"cvtps2pd \0"
.balign 4
Lt_0363:	.ascii	"movaps \0"
.balign 4
Lt_036E:	.ascii	"unpcklpd \0"
.balign 4
Lt_0375:	.ascii	"unpcklps \0"
.balign 4
Lt_037A:	.ascii	"shufps \0"
.balign 4
Lt_037B:	.ascii	"0x0\0"
.balign 4
Lt_03B6:	.ascii	"adds\0"
.balign 4
Lt_03B9:	.ascii	"addp\0"
.balign 4
Lt_03CE:	.ascii	"d \0"
.balign 4
Lt_03D4:	.ascii	"s \0"
.balign 4
Lt_03DA:	.ascii	" implement 'add integer to float'\0"
.balign 4
Lt_03F7:	.ascii	"subs\0"
.balign 4
Lt_03FA:	.ascii	"subp\0"
.balign 4
Lt_0419:	.ascii	" implement 'subtract integer from float'\0"
.balign 4
Lt_0436:	.ascii	"muls\0"
.balign 4
Lt_0439:	.ascii	"mulp\0"
.balign 4
Lt_0458:	.ascii	" implement 'multiply float by integer'\0"
.balign 4
Lt_0475:	.ascii	"divs\0"
.balign 4
Lt_0478:	.ascii	"divp\0"
.balign 4
Lt_0497:	.ascii	" implement 'divide float by integer'\0"
.balign 4
Lt_04B4:	.ascii	"fpatan\0"
.balign 4
Lt_04D9:	.ascii	"fabs\0"
.balign 4
Lt_04DA:	.ascii	"fyl2x\0"
.balign 4
Lt_04DB:	.ascii	"frndint\0"
.balign 4
Lt_04DC:	.ascii	"fsub st(1), st(0)\0"
.balign 4
Lt_04DD:	.ascii	"fxch\0"
.balign 4
Lt_04DE:	.ascii	"f2xm1\0"
.balign 4
Lt_04DF:	.ascii	"fld1\0"
.balign 4
Lt_04E0:	.ascii	"fscale\0"
.balign 4
Lt_04E1:	.ascii	"fstp st(1)\0"
.balign 4
Lt_0510:	.ascii	"comisd \0"
.balign 4
Lt_0520:	.ascii	"comisd xmm7, \0"
.balign 4
Lt_0523:	.ascii	"comiss \0"
.balign 4
Lt_052A:	.ascii	"j\0"
.balign 4
Lt_0532:	.ascii	"xchg edx, \0"
.balign 4
Lt_0533:	.ascii	"set\0"
.balign 4
Lt_0536:	.ascii	"\tdl\0"
.balign 4
Lt_053B:	.ascii	"edx\0"
.balign 4
Lt_053C:	.ascii	" \0"
.balign 4
Lt_0540:	.ascii	", 1\0"
.balign 4
Lt_0541:	.ascii	"sbb \0"
.balign 4
Lt_0542:	.ascii	", -1\0"
.balign 4
Lt_0544:	.ascii	"xor \0"
.balign 4
Lt_0548:	.ascii	"a\0"
.balign 4
Lt_054B:	.ascii	"b\0"
.balign 4
Lt_054E:	.ascii	"e\0"
.balign 4
Lt_0551:	.ascii	"ne\0"
.balign 4
Lt_0554:	.ascii	"be\0"
.balign 4
Lt_0557:	.ascii	"ae\0"
.balign 4
Lt_0570:	.ascii	"xorpd \0"
.balign 4
Lt_0575:	.ascii	"xorps \0"
.balign 4
Lt_0582:	.ascii	"addsd \0"
.balign 4
Lt_058A:	.ascii	"pshufd xmm7, \0"
.balign 4
Lt_058B:	.ascii	"0x01\0"
.balign 4
Lt_0590:	.ascii	"addss \0"
.balign 4
Lt_05A7:	.ascii	"addps \0"
.balign 4
Lt_05CC:	.ascii	"andpd \0"
.balign 4
Lt_05D1:	.ascii	"andps \0"
.balign 4
Lt_05EC:	.ascii	"xorpd xmm7, xmm7\0"
.balign 4
Lt_05EE:	.ascii	"cmpneqsd xmm7, \0"
.balign 4
Lt_05F1:	.ascii	"orpd \0"
.balign 4
Lt_05F7:	.ascii	"andpd xmm7, \0"
.balign 4
Lt_05FE:	.ascii	"xorps xmm7, xmm7\0"
.balign 4
Lt_0600:	.ascii	"cmpneqss xmm7, \0"
.balign 4
Lt_0603:	.ascii	"orps \0"
.balign 4
Lt_0609:	.ascii	"andps xmm7, \0"
.balign 4
Lt_0633:	.ascii	"mov [esp+\0"
.balign 4
Lt_0634:	.ascii	"]\0"
.balign 4
Lt_063A:	.ascii	"movss [esp+\0"
.balign 4
Lt_0644:	.ascii	"mulss \0"
.balign 4
Lt_0649:	.ascii	"and       dword ptr [esp], 0x80000000\0"
.balign 4
Lt_0658:	.ascii	"cvttss2si \0"
.balign 4
Lt_065F:	.ascii	"mov       \0"
.balign 4
Lt_0664:	.ascii	"cvtsi2ss  \0"
.balign 4
Lt_0669:	.ascii	"shl       \0"
.balign 4
Lt_066A:	.ascii	"30\0"
.balign 4
Lt_066F:	.ascii	"not       \0"
.balign 4
Lt_0672:	.ascii	"and       \0"
.balign 4
Lt_0677:	.ascii	"0x1\0"
.balign 4
Lt_067C:	.ascii	"subss \0"
.balign 4
Lt_0681:	.ascii	"dec       \0"
.balign 4
Lt_0684:	.ascii	"minss \0"
.balign 4
Lt_0689:	.ascii	"movd      \0"
.balign 4
Lt_068F:	.ascii	"subss xmm7, \0"
.balign 4
Lt_0694:	.ascii	"andnps    \0"
.balign 4
Lt_069A:	.ascii	"orps      xmm7, \0"
.balign 4
Lt_069F:	.ascii	"xor       \0"
.balign 4
Lt_06A0:	.ascii	"[esp]\0"
.balign 4
Lt_06A9:	.ascii	"mulss xmm7, xmm7\0"
.balign 4
Lt_06AA:	.ascii	"or        \0"
.balign 4
Lt_06B4:	.ascii	"mulss xmm7, \0"
.balign 4
Lt_06B8:	.ascii	"addss xmm7, \0"
.balign 4
Lt_06D3:	.ascii	"[esp+\0"
.balign 4
Lt_06F2:	.ascii	"fsin\0"
.balign 4
Lt_0711:	.ascii	"fmul st(0), st(0)\0"
.balign 4
Lt_0712:	.ascii	"fsubrp\0"
.balign 4
Lt_0713:	.ascii	"fsqrt\0"
.balign 4
Lt_0734:	.ascii	"fcos\0"
.balign 4
Lt_0771:	.ascii	"fptan\0"
.balign 4
Lt_0772:	.ascii	"fstp st(0)\0"
.balign 4
Lt_07B5:	.ascii	"sqrtsd \0"
.balign 4
Lt_07BA:	.ascii	"sqrtss \0"
.balign 4
Lt_07D7:	.ascii	"rsqrtsd \0"
.balign 4
Lt_07DC:	.ascii	"rsqrtss \0"
.balign 4
Lt_07F9:	.ascii	"rcpsd \0"
.balign 4
Lt_07FE:	.ascii	"rcpss \0"
.balign 4
Lt_0815:	.ascii	"fldln2\0"
.balign 4
Lt_0834:	.ascii	"fldl2e\0"
.balign 4
Lt_0835:	.ascii	"fmulp st(1), st\0"
.balign 4
Lt_0836:	.ascii	"fld st\0"
.balign 4
Lt_0837:	.ascii	"fsub st(1), st\0"
.balign 4
Lt_0838:	.ascii	"0x3f800000\0"
.balign 4
Lt_0839:	.ascii	"fadd dword ptr [esp]\0"
.balign 4
Lt_0858:	.ascii	"movap\0"
.balign 4
Lt_0860:	.ascii	"fst qword ptr [esp]\0"
.balign 4
Lt_0861:	.ascii	"movlpd xmm7, qword ptr [esp]\0"
.balign 4
Lt_0862:	.ascii	"fst dword ptr [esp]\0"
.balign 4
Lt_0863:	.ascii	"movss xmm7, dword ptr [esp]\0"
.balign 4
Lt_0867:	.ascii	"xorp\0"
.balign 4
Lt_0872:	.ascii	"cmpnles\0"
.balign 4
Lt_0878:	.ascii	"andp\0"
.balign 4
Lt_089D:	.ascii	"xmm7, xmm7\0"
.balign 4
Lt_08A3:	.ascii	"movlpd [esp+8], xmm7\0"
.balign 4
Lt_08A4:	.ascii	"movss [esp+8], xmm7\0"
.balign 4
Lt_08C1:	.ascii	"cmplts\0"
.balign 4
Lt_08C2:	.ascii	"[esp+8]\0"
.balign 4
Lt_08F3:	.ascii	"shufpd \0"
.balign 4
Lt_08FA:	.ascii	"movlhps \0"
.balign 4
Lt_092D:	.ascii	"movhlps \0"
.balign 4
Lt_0947:	.ascii	"push \0"
.balign 4
Lt_095A:	.ascii	"pop \0"

.section .ctors, "aw", @progbits
.int fb_ctor__emit_SSE
