   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  13                     .const:	section	.text
  14  0000               _APR_Array:
  15  0000 00            	dc.b	0
  16  0001 1e            	dc.b	30
  17  0002 1e            	dc.b	30
  18  0003 1e            	dc.b	30
  19  0004 1e            	dc.b	30
  20  0005 1e            	dc.b	30
  21  0006 1e            	dc.b	30
  22  0007 1e            	dc.b	30
  23  0008 1e            	dc.b	30
  24  0009 1e            	dc.b	30
  25  000a 1e            	dc.b	30
  26  000b 1e            	dc.b	30
  27  000c 1e            	dc.b	30
  28  000d 3d            	dc.b	61
  29  000e 17            	dc.b	23
  30  000f 17            	dc.b	23
  31  0010 3e            	dc.b	62
  32  0011               _TBR_Array:
  33  0011 00            	dc.b	0
  34  0012 01            	dc.b	1
  35  0013 02            	dc.b	2
  36  0014 03            	dc.b	3
  37  0015 04            	dc.b	4
  38  0016 05            	dc.b	5
  39  0017 06            	dc.b	6
  40  0018 07            	dc.b	7
  41  0019 08            	dc.b	8
  42  001a 09            	dc.b	9
  43  001b 0a            	dc.b	10
  44  001c 0b            	dc.b	11
  45  001d 0c            	dc.b	12
  46  001e 0c            	dc.b	12
  47  001f 0e            	dc.b	14
  48  0020 0f            	dc.b	15
  49  0021 0f            	dc.b	15
  78                     ; 73 void AWU_DeInit(void)
  78                     ; 74 {
  80                     	switch	.text
  81  0000               _AWU_DeInit:
  85                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  87  0000 725f50f0      	clr	20720
  88                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  90  0004 353f50f1      	mov	20721,#63
  91                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
  93  0008 725f50f2      	clr	20722
  94                     ; 78 }
  97  000c 81            	ret
 259                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 259                     ; 89 {
 260                     	switch	.text
 261  000d               _AWU_Init:
 263  000d 88            	push	a
 264       00000000      OFST:	set	0
 267                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 269                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 271  000e 721850f0      	bset	20720,#4
 272                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 274  0012 c650f2        	ld	a,20722
 275  0015 a4f0          	and	a,#240
 276  0017 c750f2        	ld	20722,a
 277                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 279  001a 7b01          	ld	a,(OFST+1,sp)
 280  001c 5f            	clrw	x
 281  001d 97            	ld	xl,a
 282  001e c650f2        	ld	a,20722
 283  0021 da0011        	or	a,(_TBR_Array,x)
 284  0024 c750f2        	ld	20722,a
 285                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 287  0027 c650f1        	ld	a,20721
 288  002a a4c0          	and	a,#192
 289  002c c750f1        	ld	20721,a
 290                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 292  002f 7b01          	ld	a,(OFST+1,sp)
 293  0031 5f            	clrw	x
 294  0032 97            	ld	xl,a
 295  0033 c650f1        	ld	a,20721
 296  0036 da0000        	or	a,(_APR_Array,x)
 297  0039 c750f1        	ld	20721,a
 298                     ; 103 }
 301  003c 84            	pop	a
 302  003d 81            	ret
 357                     ; 112 void AWU_Cmd(FunctionalState NewState)
 357                     ; 113 {
 358                     	switch	.text
 359  003e               _AWU_Cmd:
 363                     ; 114   if (NewState != DISABLE)
 365  003e 4d            	tnz	a
 366  003f 2706          	jreq	L331
 367                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 369  0041 721850f0      	bset	20720,#4
 371  0045 2004          	jra	L531
 372  0047               L331:
 373                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 375  0047 721950f0      	bres	20720,#4
 376  004b               L531:
 377                     ; 124 }
 380  004b 81            	ret
 427                     	switch	.const
 428  0022               L41:
 429  0022 000003e8      	dc.l	1000
 430                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 430                     ; 140 {
 431                     	switch	.text
 432  004c               _AWU_LSICalibrationConfig:
 434  004c 5206          	subw	sp,#6
 435       00000006      OFST:	set	6
 438                     ; 141   uint16_t lsifreqkhz = 0x0;
 440                     ; 142   uint16_t A = 0x0;
 442                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 444                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 446  004e 96            	ldw	x,sp
 447  004f 1c0009        	addw	x,#OFST+3
 448  0052 cd0000        	call	c_ltor
 450  0055 ae0022        	ldw	x,#L41
 451  0058 cd0000        	call	c_ludv
 453  005b be02          	ldw	x,c_lreg+2
 454  005d 1f03          	ldw	(OFST-3,sp),x
 456                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 458  005f 1e03          	ldw	x,(OFST-3,sp)
 459  0061 54            	srlw	x
 460  0062 54            	srlw	x
 461  0063 1f05          	ldw	(OFST-1,sp),x
 463                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 465  0065 1e05          	ldw	x,(OFST-1,sp)
 466  0067 58            	sllw	x
 467  0068 58            	sllw	x
 468  0069 1f01          	ldw	(OFST-5,sp),x
 470  006b 1e03          	ldw	x,(OFST-3,sp)
 471  006d 72f001        	subw	x,(OFST-5,sp)
 472  0070 1605          	ldw	y,(OFST-1,sp)
 473  0072 9058          	sllw	y
 474  0074 905c          	incw	y
 475  0076 cd0000        	call	c_imul
 477  0079 1605          	ldw	y,(OFST-1,sp)
 478  007b 9058          	sllw	y
 479  007d 9058          	sllw	y
 480  007f bf00          	ldw	c_x,x
 481  0081 90b300        	cpw	y,c_x
 482  0084 2509          	jrult	L751
 483                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 485  0086 7b06          	ld	a,(OFST+0,sp)
 486  0088 a002          	sub	a,#2
 487  008a c750f1        	ld	20721,a
 489  008d 2006          	jra	L161
 490  008f               L751:
 491                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 493  008f 7b06          	ld	a,(OFST+0,sp)
 494  0091 4a            	dec	a
 495  0092 c750f1        	ld	20721,a
 496  0095               L161:
 497                     ; 161 }
 500  0095 5b06          	addw	sp,#6
 501  0097 81            	ret
 524                     ; 168 void AWU_IdleModeEnable(void)
 524                     ; 169 {
 525                     	switch	.text
 526  0098               _AWU_IdleModeEnable:
 530                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 532  0098 721950f0      	bres	20720,#4
 533                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 535  009c 35f050f2      	mov	20722,#240
 536                     ; 175 }
 539  00a0 81            	ret
 583                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 583                     ; 184 {
 584                     	switch	.text
 585  00a1               _AWU_GetFlagStatus:
 589                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 591  00a1 c650f0        	ld	a,20720
 592  00a4 a520          	bcp	a,#32
 593  00a6 2603          	jrne	L22
 594  00a8 4f            	clr	a
 595  00a9 2002          	jra	L42
 596  00ab               L22:
 597  00ab a601          	ld	a,#1
 598  00ad               L42:
 601  00ad 81            	ret
 636                     	xdef	_TBR_Array
 637                     	xdef	_APR_Array
 638                     	xdef	_AWU_GetFlagStatus
 639                     	xdef	_AWU_IdleModeEnable
 640                     	xdef	_AWU_LSICalibrationConfig
 641                     	xdef	_AWU_Cmd
 642                     	xdef	_AWU_Init
 643                     	xdef	_AWU_DeInit
 644                     	xref.b	c_lreg
 645                     	xref.b	c_x
 664                     	xref	c_imul
 665                     	xref	c_ludv
 666                     	xref	c_ltor
 667                     	end
