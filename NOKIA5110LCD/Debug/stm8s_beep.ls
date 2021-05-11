   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  41                     ; 54 void BEEP_DeInit(void)
  41                     ; 55 {
  43                     	switch	.text
  44  0000               _BEEP_DeInit:
  48                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  50  0000 351f50f3      	mov	20723,#31
  51                     ; 57 }
  54  0004 81            	ret
 119                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 119                     ; 68 {
 120                     	switch	.text
 121  0005               _BEEP_Init:
 123  0005 88            	push	a
 124       00000000      OFST:	set	0
 127                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 129                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 131  0006 c650f3        	ld	a,20723
 132  0009 a41f          	and	a,#31
 133  000b a11f          	cp	a,#31
 134  000d 2610          	jrne	L15
 135                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 137  000f c650f3        	ld	a,20723
 138  0012 a4e0          	and	a,#224
 139  0014 c750f3        	ld	20723,a
 140                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 142  0017 c650f3        	ld	a,20723
 143  001a aa0b          	or	a,#11
 144  001c c750f3        	ld	20723,a
 145  001f               L15:
 146                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 148  001f c650f3        	ld	a,20723
 149  0022 a43f          	and	a,#63
 150  0024 c750f3        	ld	20723,a
 151                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 153  0027 c650f3        	ld	a,20723
 154  002a 1a01          	or	a,(OFST+1,sp)
 155  002c c750f3        	ld	20723,a
 156                     ; 82 }
 159  002f 84            	pop	a
 160  0030 81            	ret
 215                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 215                     ; 92 {
 216                     	switch	.text
 217  0031               _BEEP_Cmd:
 221                     ; 93   if (NewState != DISABLE)
 223  0031 4d            	tnz	a
 224  0032 2706          	jreq	L101
 225                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 227  0034 721a50f3      	bset	20723,#5
 229  0038 2004          	jra	L301
 230  003a               L101:
 231                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 233  003a 721b50f3      	bres	20723,#5
 234  003e               L301:
 235                     ; 103 }
 238  003e 81            	ret
 285                     .const:	section	.text
 286  0000               L41:
 287  0000 000003e8      	dc.l	1000
 288                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 288                     ; 119 {
 289                     	switch	.text
 290  003f               _BEEP_LSICalibrationConfig:
 292  003f 5206          	subw	sp,#6
 293       00000006      OFST:	set	6
 296                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 298                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 300  0041 96            	ldw	x,sp
 301  0042 1c0009        	addw	x,#OFST+3
 302  0045 cd0000        	call	c_ltor
 304  0048 ae0000        	ldw	x,#L41
 305  004b cd0000        	call	c_ludv
 307  004e be02          	ldw	x,c_lreg+2
 308  0050 1f03          	ldw	(OFST-3,sp),x
 310                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 312  0052 c650f3        	ld	a,20723
 313  0055 a4e0          	and	a,#224
 314  0057 c750f3        	ld	20723,a
 315                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 317  005a 1e03          	ldw	x,(OFST-3,sp)
 318  005c 54            	srlw	x
 319  005d 54            	srlw	x
 320  005e 54            	srlw	x
 321  005f 1f05          	ldw	(OFST-1,sp),x
 323                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 325  0061 1e05          	ldw	x,(OFST-1,sp)
 326  0063 58            	sllw	x
 327  0064 58            	sllw	x
 328  0065 58            	sllw	x
 329  0066 1f01          	ldw	(OFST-5,sp),x
 331  0068 1e03          	ldw	x,(OFST-3,sp)
 332  006a 72f001        	subw	x,(OFST-5,sp)
 333  006d 1605          	ldw	y,(OFST-1,sp)
 334  006f 9058          	sllw	y
 335  0071 905c          	incw	y
 336  0073 cd0000        	call	c_imul
 338  0076 1605          	ldw	y,(OFST-1,sp)
 339  0078 9058          	sllw	y
 340  007a 9058          	sllw	y
 341  007c 9058          	sllw	y
 342  007e bf00          	ldw	c_x,x
 343  0080 90b300        	cpw	y,c_x
 344  0083 250c          	jrult	L521
 345                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 347  0085 7b06          	ld	a,(OFST+0,sp)
 348  0087 a002          	sub	a,#2
 349  0089 ca50f3        	or	a,20723
 350  008c c750f3        	ld	20723,a
 352  008f 2009          	jra	L721
 353  0091               L521:
 354                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 356  0091 7b06          	ld	a,(OFST+0,sp)
 357  0093 4a            	dec	a
 358  0094 ca50f3        	or	a,20723
 359  0097 c750f3        	ld	20723,a
 360  009a               L721:
 361                     ; 142 }
 364  009a 5b06          	addw	sp,#6
 365  009c 81            	ret
 378                     	xdef	_BEEP_LSICalibrationConfig
 379                     	xdef	_BEEP_Cmd
 380                     	xdef	_BEEP_Init
 381                     	xdef	_BEEP_DeInit
 382                     	xref.b	c_lreg
 383                     	xref.b	c_x
 402                     	xref	c_imul
 403                     	xref	c_ludv
 404                     	xref	c_ltor
 405                     	end
