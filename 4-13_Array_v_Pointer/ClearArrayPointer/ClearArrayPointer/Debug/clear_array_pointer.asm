; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

	TITLE	C:\Users\brandon\Documents\Systems Organization\Classwork\4-13_Array_v_Pointer\ClearArrayPointer\ClearArrayPointer\clear_array_pointer.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?clear_array_pointer@@YAXQAHH@Z			; clear_array_pointer
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\users\brandon\documents\systems organization\classwork\4-13_array_v_pointer\cleararraypointer\cleararraypointer\clear_array_pointer.cpp
rtc$TMZ	SEGMENT
;__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
;__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?clear_array_pointer@@YAXQAHH@Z
_TEXT	SEGMENT
_arr$ = 8						; size = 4
_size$ = 12						; size = 4
?clear_array_pointer@@YAXQAHH@Z PROC			; clear_array_pointer, COMDAT

; 4    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 5    : 	for (int *p = &arr[0]; p < &arr[size]; p++)

	mov	eax, DWORD PTR _arr$[ebp]
	mov ebx, DWORD PTR _size$[ebp]		; MODIFIED
	lea edx, DWORD PTR [eax+ebx*4]		; MODIFIED
	jmp	SHORT $LN3@clear_arra
$LN2@clear_arra:
	add	eax, 4
$LN3@clear_arra:
	cmp	eax, edx						; MODIFIED DWORD PTR _p$2537[ebp] to eax
	jae	SHORT $LN4@clear_arra

; 6    : 		*p = 0;

	mov	DWORD PTR [eax], 0
	jmp	SHORT $LN2@clear_arra
$LN4@clear_arra:

; 7    : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?clear_array_pointer@@YAXQAHH@Z ENDP			; clear_array_pointer
_TEXT	ENDS
END
