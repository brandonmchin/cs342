; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	C:\Users\brandon\Documents\Systems Organization\Classwork\4-23_Matrix\Matrix Optimization\Matrix Optimization\matrix_multiplication.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	__real@00000000
PUBLIC	?matrix_multiplication@@YAXQAY07M00@Z		; matrix_multiplication
EXTRN	__fltused:DWORD
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT __real@00000000
; File c:\users\brandon\documents\systems organization\classwork\4-23_matrix\matrix optimization\matrix optimization\matrix_multiplication.cpp
CONST	SEGMENT
__real@00000000 DD 000000000r			; 0
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?matrix_multiplication@@YAXQAY07M00@Z
_TEXT	SEGMENT
$T4463 = -576						; size = 16
$T4464 = -544						; size = 16
$T4465 = -512						; size = 16
$T4466 = -480						; size = 16
$T4467 = -448						; size = 16
$T4468 = -416						; size = 16
_k$4459 = -196						; size = 4
_j$4455 = -184						; size = 4
_i$4451 = -172						; size = 4
_s$ = -160						; size = 16
_v4$ = -128						; size = 16
_v3$ = -96						; size = 16
_v2$ = -64						; size = 16
_v1$ = -32						; size = 16
_mask$ = -8						; size = 4
_A$ = 8							; size = 4
_B$ = 12						; size = 4
_S$ = 16						; size = 4
?matrix_multiplication@@YAXQAY07M00@Z PROC		; matrix_multiplication, COMDAT

; 21   : {

	push	ebx
	mov	ebx, esp
	sub	esp, 8
	and	esp, -16				; fffffff0H
	add	esp, 4
	push	ebp
	mov	ebp, DWORD PTR [ebx+4]
	mov	DWORD PTR [esp+4], ebp
	mov	ebp, esp
	sub	esp, 584				; 00000248H
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-584]
	mov	ecx, 146				; 00000092H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 22   : 	const int mask = 0x1F;

	mov	DWORD PTR _mask$[ebp], 31		; 0000001fH

; 23   : 
; 24   : 	__m128 v1 = { 0.0, 0.0, 0.0, 0.0 }, v2 = { 0.0, 0.0, 0.0, 0.0 },

	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v1$[ebp], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v1$[ebp+4], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v1$[ebp+8], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v1$[ebp+12], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v2$[ebp], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v2$[ebp+4], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v2$[ebp+8], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v2$[ebp+12], xmm0

; 25   : 	v3 = { 0.0, 0.0, 0.0, 0.0 }, v4 = { 0.0, 0.0, 0.0, 0.0 }, s = { 0.0, 0.0, 0.0, 0.0 };

	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v3$[ebp], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v3$[ebp+4], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v3$[ebp+8], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v3$[ebp+12], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v4$[ebp], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v4$[ebp+4], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v4$[ebp+8], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _v4$[ebp+12], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _s$[ebp], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _s$[ebp+4], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _s$[ebp+8], xmm0
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _s$[ebp+12], xmm0

; 26   : 	for (int i = 0; i < size; i++) {

	mov	DWORD PTR _i$4451[ebp], 0
	jmp	SHORT $LN9@matrix_mul
$LN8@matrix_mul:
	mov	eax, DWORD PTR _i$4451[ebp]
	add	eax, 1
	mov	DWORD PTR _i$4451[ebp], eax
$LN9@matrix_mul:
	cmp	DWORD PTR _i$4451[ebp], 8
	jge	$LN7@matrix_mul

; 27   : 		for (int j = 0; j < size; j++) {

	mov	DWORD PTR _j$4455[ebp], 0
	jmp	SHORT $LN6@matrix_mul
$LN5@matrix_mul:
	mov	eax, DWORD PTR _j$4455[ebp]
	add	eax, 1
	mov	DWORD PTR _j$4455[ebp], eax
$LN6@matrix_mul:
	cmp	DWORD PTR _j$4455[ebp], 8
	jge	$LN4@matrix_mul

; 28   : 			for (int k = 0; k < size; k += 8) {

	mov	DWORD PTR _k$4459[ebp], 0
	jmp	SHORT $LN3@matrix_mul
$LN2@matrix_mul:
	mov	eax, DWORD PTR _k$4459[ebp]
	add	eax, 8
	mov	DWORD PTR _k$4459[ebp], eax
$LN3@matrix_mul:
	cmp	DWORD PTR _k$4459[ebp], 8
	jge	$LN1@matrix_mul

; 29   : 				v1 = _mm_set_ps(A[i][k], A[i][k + 1], A[i][k + 2], A[i][k + 3]);

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _A$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm0, DWORD PTR [eax+ecx*4+12]
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _A$[ebx]
	mov	eax, DWORD PTR _k$4459[ebp]
	movss	xmm1, DWORD PTR [edx+eax*4+8]
	mov	ecx, DWORD PTR _i$4451[ebp]
	shl	ecx, 5
	add	ecx, DWORD PTR _A$[ebx]
	mov	edx, DWORD PTR _k$4459[ebp]
	movss	xmm2, DWORD PTR [ecx+edx*4+4]
	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _A$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm3, DWORD PTR [eax+ecx*4]
	unpcklps xmm0, xmm2
	unpcklps xmm1, xmm3
	unpcklps xmm0, xmm1
	movaps	XMMWORD PTR $T4463[ebp], xmm0
	movaps	xmm0, XMMWORD PTR $T4463[ebp]
	movaps	XMMWORD PTR _v1$[ebp], xmm0

; 30   : 				v2 = _mm_set_ps(A[i][k + 4], A[i][k + 5], A[i][k + 6], A[i][k + 7]);

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _A$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm0, DWORD PTR [eax+ecx*4+28]
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _A$[ebx]
	mov	eax, DWORD PTR _k$4459[ebp]
	movss	xmm1, DWORD PTR [edx+eax*4+24]
	mov	ecx, DWORD PTR _i$4451[ebp]
	shl	ecx, 5
	add	ecx, DWORD PTR _A$[ebx]
	mov	edx, DWORD PTR _k$4459[ebp]
	movss	xmm2, DWORD PTR [ecx+edx*4+20]
	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _A$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm3, DWORD PTR [eax+ecx*4+16]
	unpcklps xmm0, xmm2
	unpcklps xmm1, xmm3
	unpcklps xmm0, xmm1
	movaps	XMMWORD PTR $T4464[ebp], xmm0
	movaps	xmm0, XMMWORD PTR $T4464[ebp]
	movaps	XMMWORD PTR _v2$[ebp], xmm0

; 31   : 				v3 = _mm_set_ps(B[i][k], B[i][k + 1], B[i][k + 2], B[i][k + 3]);

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _B$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm0, DWORD PTR [eax+ecx*4+12]
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _B$[ebx]
	mov	eax, DWORD PTR _k$4459[ebp]
	movss	xmm1, DWORD PTR [edx+eax*4+8]
	mov	ecx, DWORD PTR _i$4451[ebp]
	shl	ecx, 5
	add	ecx, DWORD PTR _B$[ebx]
	mov	edx, DWORD PTR _k$4459[ebp]
	movss	xmm2, DWORD PTR [ecx+edx*4+4]
	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _B$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm3, DWORD PTR [eax+ecx*4]
	unpcklps xmm0, xmm2
	unpcklps xmm1, xmm3
	unpcklps xmm0, xmm1
	movaps	XMMWORD PTR $T4465[ebp], xmm0
	movaps	xmm0, XMMWORD PTR $T4465[ebp]
	movaps	XMMWORD PTR _v3$[ebp], xmm0

; 32   : 				v4 = _mm_set_ps(B[i][k + 4], B[i][k + 5], B[i][k + 6], B[i][k + 7]);

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _B$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm0, DWORD PTR [eax+ecx*4+28]
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _B$[ebx]
	mov	eax, DWORD PTR _k$4459[ebp]
	movss	xmm1, DWORD PTR [edx+eax*4+24]
	mov	ecx, DWORD PTR _i$4451[ebp]
	shl	ecx, 5
	add	ecx, DWORD PTR _B$[ebx]
	mov	edx, DWORD PTR _k$4459[ebp]
	movss	xmm2, DWORD PTR [ecx+edx*4+20]
	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _B$[ebx]
	mov	ecx, DWORD PTR _k$4459[ebp]
	movss	xmm3, DWORD PTR [eax+ecx*4+16]
	unpcklps xmm0, xmm2
	unpcklps xmm1, xmm3
	unpcklps xmm0, xmm1
	movaps	XMMWORD PTR $T4466[ebp], xmm0
	movaps	xmm0, XMMWORD PTR $T4466[ebp]
	movaps	XMMWORD PTR _v4$[ebp], xmm0

; 33   : 
; 34   : 				s = _mm_dp_ps(v1, v3, mask);

	movaps	xmm0, XMMWORD PTR _v3$[ebp]
	movaps	xmm1, XMMWORD PTR _v1$[ebp]
	dpps	xmm1, xmm0, 31				; 0000001fH
	movaps	XMMWORD PTR $T4467[ebp], xmm1
	movaps	xmm0, XMMWORD PTR $T4467[ebp]
	movaps	XMMWORD PTR _s$[ebp], xmm0

; 35   : 
; 36   : 				S[i][j] += s.m128_f32[0] + s.m128_f32[1] + s.m128_f32[2] + s.m128_f32[3];

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _S$[ebx]
	movss	xmm0, DWORD PTR _s$[ebp]
	cvtps2pd xmm0, xmm0
	movss	xmm1, DWORD PTR _s$[ebp+4]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	movss	xmm1, DWORD PTR _s$[ebp+8]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	movss	xmm1, DWORD PTR _s$[ebp+12]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	mov	ecx, DWORD PTR _j$4455[ebp]
	movss	xmm1, DWORD PTR [eax+ecx*4]
	cvtps2pd xmm1, xmm1
	addsd	xmm1, xmm0
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _S$[ebx]
	xorps	xmm0, xmm0
	cvtsd2ss xmm0, xmm1
	mov	eax, DWORD PTR _j$4455[ebp]
	movss	DWORD PTR [edx+eax*4], xmm0

; 37   : 
; 38   : 				s = _mm_dp_ps(v2, v4, mask);

	movaps	xmm0, XMMWORD PTR _v4$[ebp]
	movaps	xmm1, XMMWORD PTR _v2$[ebp]
	dpps	xmm1, xmm0, 31				; 0000001fH
	movaps	XMMWORD PTR $T4468[ebp], xmm1
	movaps	xmm0, XMMWORD PTR $T4468[ebp]
	movaps	XMMWORD PTR _s$[ebp], xmm0

; 39   : 
; 40   : 				S[i][j] += s.m128_f32[0] + s.m128_f32[1] + s.m128_f32[2] + s.m128_f32[3];

	mov	eax, DWORD PTR _i$4451[ebp]
	shl	eax, 5
	add	eax, DWORD PTR _S$[ebx]
	movss	xmm0, DWORD PTR _s$[ebp]
	cvtps2pd xmm0, xmm0
	movss	xmm1, DWORD PTR _s$[ebp+4]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	movss	xmm1, DWORD PTR _s$[ebp+8]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	movss	xmm1, DWORD PTR _s$[ebp+12]
	cvtps2pd xmm1, xmm1
	addsd	xmm0, xmm1
	mov	ecx, DWORD PTR _j$4455[ebp]
	movss	xmm1, DWORD PTR [eax+ecx*4]
	cvtps2pd xmm1, xmm1
	addsd	xmm1, xmm0
	mov	edx, DWORD PTR _i$4451[ebp]
	shl	edx, 5
	add	edx, DWORD PTR _S$[ebx]
	xorps	xmm0, xmm0
	cvtsd2ss xmm0, xmm1
	mov	eax, DWORD PTR _j$4455[ebp]
	movss	DWORD PTR [edx+eax*4], xmm0

; 41   : 			}

	jmp	$LN2@matrix_mul
$LN1@matrix_mul:

; 42   : 		}

	jmp	$LN5@matrix_mul
$LN4@matrix_mul:

; 43   : 	}

	jmp	$LN8@matrix_mul
$LN7@matrix_mul:

; 44   : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	mov	esp, ebx
	pop	ebx
	ret	0
?matrix_multiplication@@YAXQAY07M00@Z ENDP		; matrix_multiplication
_TEXT	ENDS
END