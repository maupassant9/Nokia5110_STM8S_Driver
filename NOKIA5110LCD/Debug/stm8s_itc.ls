   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  41                     ; 50 uint8_t ITC_GetCPUCC(void)
  41                     ; 51 {
  43                     	switch	.text
  44  0000               _ITC_GetCPUCC:
  48                     ; 53   _asm("push cc");
  51  0000 8a            push cc
  53                     ; 54   _asm("pop a");
  56  0001 84            pop a
  58                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  61  0002 81            	ret
  84                     ; 80 void ITC_DeInit(void)
  84                     ; 81 {
  85                     	switch	.text
  86  0003               _ITC_DeInit:
  90                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  92  0003 35ff7f70      	mov	32624,#255
  93                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  95  0007 35ff7f71      	mov	32625,#255
  96                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  98  000b 35ff7f72      	mov	32626,#255
  99                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 101  000f 35ff7f73      	mov	32627,#255
 102                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 104  0013 35ff7f74      	mov	32628,#255
 105                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 107  0017 35ff7f75      	mov	32629,#255
 108                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 110  001b 35ff7f76      	mov	32630,#255
 111                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 113  001f 35ff7f77      	mov	32631,#255
 114                     ; 90 }
 117  0023 81            	ret
 142                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 142                     ; 98 {
 143                     	switch	.text
 144  0024               _ITC_GetSoftIntStatus:
 148                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 150  0024 adda          	call	_ITC_GetCPUCC
 152  0026 a428          	and	a,#40
 155  0028 81            	ret
 400                     .const:	section	.text
 401  0000               L22:
 402  0000 004c          	dc.w	L14
 403  0002 004c          	dc.w	L14
 404  0004 004c          	dc.w	L14
 405  0006 004c          	dc.w	L14
 406  0008 0055          	dc.w	L34
 407  000a 0055          	dc.w	L34
 408  000c 0055          	dc.w	L34
 409  000e 0055          	dc.w	L34
 410  0010 0089          	dc.w	L771
 411  0012 0089          	dc.w	L771
 412  0014 005e          	dc.w	L54
 413  0016 005e          	dc.w	L54
 414  0018 0067          	dc.w	L74
 415  001a 0067          	dc.w	L74
 416  001c 0067          	dc.w	L74
 417  001e 0067          	dc.w	L74
 418  0020 0070          	dc.w	L15
 419  0022 0070          	dc.w	L15
 420  0024 0070          	dc.w	L15
 421  0026 0070          	dc.w	L15
 422  0028 0089          	dc.w	L771
 423  002a 0089          	dc.w	L771
 424  002c 0079          	dc.w	L35
 425  002e 0079          	dc.w	L35
 426  0030 0082          	dc.w	L55
 427                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 427                     ; 108 {
 428                     	switch	.text
 429  0029               _ITC_GetSoftwarePriority:
 431  0029 88            	push	a
 432  002a 89            	pushw	x
 433       00000002      OFST:	set	2
 436                     ; 109   uint8_t Value = 0;
 438  002b 0f02          	clr	(OFST+0,sp)
 440                     ; 110   uint8_t Mask = 0;
 442                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 444                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 446  002d a403          	and	a,#3
 447  002f 48            	sll	a
 448  0030 5f            	clrw	x
 449  0031 97            	ld	xl,a
 450  0032 a603          	ld	a,#3
 451  0034 5d            	tnzw	x
 452  0035 2704          	jreq	L41
 453  0037               L61:
 454  0037 48            	sll	a
 455  0038 5a            	decw	x
 456  0039 26fc          	jrne	L61
 457  003b               L41:
 458  003b 6b01          	ld	(OFST-1,sp),a
 460                     ; 118   switch (IrqNum)
 462  003d 7b03          	ld	a,(OFST+1,sp)
 464                     ; 198   default:
 464                     ; 199     break;
 465  003f a119          	cp	a,#25
 466  0041 2407          	jruge	L02
 467  0043 5f            	clrw	x
 468  0044 97            	ld	xl,a
 469  0045 58            	sllw	x
 470  0046 de0000        	ldw	x,(L22,x)
 471  0049 fc            	jp	(x)
 472  004a               L02:
 473  004a 203d          	jra	L771
 474  004c               L14:
 475                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 475                     ; 121   case ITC_IRQ_AWU:
 475                     ; 122   case ITC_IRQ_CLK:
 475                     ; 123   case ITC_IRQ_PORTA:
 475                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 477  004c c67f70        	ld	a,32624
 478  004f 1401          	and	a,(OFST-1,sp)
 479  0051 6b02          	ld	(OFST+0,sp),a
 481                     ; 125     break;
 483  0053 2034          	jra	L771
 484  0055               L34:
 485                     ; 127   case ITC_IRQ_PORTB:
 485                     ; 128   case ITC_IRQ_PORTC:
 485                     ; 129   case ITC_IRQ_PORTD:
 485                     ; 130   case ITC_IRQ_PORTE:
 485                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 487  0055 c67f71        	ld	a,32625
 488  0058 1401          	and	a,(OFST-1,sp)
 489  005a 6b02          	ld	(OFST+0,sp),a
 491                     ; 132     break;
 493  005c 202b          	jra	L771
 494  005e               L54:
 495                     ; 141   case ITC_IRQ_SPI:
 495                     ; 142   case ITC_IRQ_TIM1_OVF:
 495                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 497  005e c67f72        	ld	a,32626
 498  0061 1401          	and	a,(OFST-1,sp)
 499  0063 6b02          	ld	(OFST+0,sp),a
 501                     ; 144     break;
 503  0065 2022          	jra	L771
 504  0067               L74:
 505                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 505                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 505                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 505                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 505                     ; 150 #else
 505                     ; 151   case ITC_IRQ_TIM2_OVF:
 505                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 505                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 505                     ; 154   case ITC_IRQ_TIM3_OVF:
 505                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 507  0067 c67f73        	ld	a,32627
 508  006a 1401          	and	a,(OFST-1,sp)
 509  006c 6b02          	ld	(OFST+0,sp),a
 511                     ; 156     break;
 513  006e 2019          	jra	L771
 514  0070               L15:
 515                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 515                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 515                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 515                     ; 161   case ITC_IRQ_UART1_TX:
 515                     ; 162   case ITC_IRQ_UART1_RX:
 515                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 515                     ; 164 #if defined(STM8AF622x)
 515                     ; 165   case ITC_IRQ_UART4_TX:
 515                     ; 166   case ITC_IRQ_UART4_RX:
 515                     ; 167 #endif /*STM8AF622x */
 515                     ; 168   case ITC_IRQ_I2C:
 515                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 517  0070 c67f74        	ld	a,32628
 518  0073 1401          	and	a,(OFST-1,sp)
 519  0075 6b02          	ld	(OFST+0,sp),a
 521                     ; 170     break;
 523  0077 2010          	jra	L771
 524  0079               L35:
 525                     ; 184   case ITC_IRQ_ADC1:
 525                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 525                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 525                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 525                     ; 188 #else
 525                     ; 189   case ITC_IRQ_TIM4_OVF:
 525                     ; 190 #endif /*STM8S903 or STM8AF622x */
 525                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 527  0079 c67f75        	ld	a,32629
 528  007c 1401          	and	a,(OFST-1,sp)
 529  007e 6b02          	ld	(OFST+0,sp),a
 531                     ; 192     break;
 533  0080 2007          	jra	L771
 534  0082               L55:
 535                     ; 194   case ITC_IRQ_EEPROM_EEC:
 535                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 537  0082 c67f76        	ld	a,32630
 538  0085 1401          	and	a,(OFST-1,sp)
 539  0087 6b02          	ld	(OFST+0,sp),a
 541                     ; 196     break;
 543  0089               L75:
 544                     ; 198   default:
 544                     ; 199     break;
 546  0089               L771:
 547                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 549  0089 7b03          	ld	a,(OFST+1,sp)
 550  008b a403          	and	a,#3
 551  008d 48            	sll	a
 552  008e 5f            	clrw	x
 553  008f 97            	ld	xl,a
 554  0090 7b02          	ld	a,(OFST+0,sp)
 555  0092 5d            	tnzw	x
 556  0093 2704          	jreq	L42
 557  0095               L62:
 558  0095 44            	srl	a
 559  0096 5a            	decw	x
 560  0097 26fc          	jrne	L62
 561  0099               L42:
 562  0099 6b02          	ld	(OFST+0,sp),a
 564                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 566  009b 7b02          	ld	a,(OFST+0,sp)
 569  009d 5b03          	addw	sp,#3
 570  009f 81            	ret
 630                     	switch	.const
 631  0032               L44:
 632  0032 00d5          	dc.w	L102
 633  0034 00d5          	dc.w	L102
 634  0036 00d5          	dc.w	L102
 635  0038 00d5          	dc.w	L102
 636  003a 00e7          	dc.w	L302
 637  003c 00e7          	dc.w	L302
 638  003e 00e7          	dc.w	L302
 639  0040 00e7          	dc.w	L302
 640  0042 0151          	dc.w	L152
 641  0044 0151          	dc.w	L152
 642  0046 00f9          	dc.w	L502
 643  0048 00f9          	dc.w	L502
 644  004a 010b          	dc.w	L702
 645  004c 010b          	dc.w	L702
 646  004e 010b          	dc.w	L702
 647  0050 010b          	dc.w	L702
 648  0052 011d          	dc.w	L112
 649  0054 011d          	dc.w	L112
 650  0056 011d          	dc.w	L112
 651  0058 011d          	dc.w	L112
 652  005a 0151          	dc.w	L152
 653  005c 0151          	dc.w	L152
 654  005e 012f          	dc.w	L312
 655  0060 012f          	dc.w	L312
 656  0062 0141          	dc.w	L512
 657                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 657                     ; 221 {
 658                     	switch	.text
 659  00a0               _ITC_SetSoftwarePriority:
 661  00a0 89            	pushw	x
 662  00a1 89            	pushw	x
 663       00000002      OFST:	set	2
 666                     ; 222   uint8_t Mask = 0;
 668                     ; 223   uint8_t NewPriority = 0;
 670                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 672                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 674                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 676                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 678  00a2 9e            	ld	a,xh
 679  00a3 a403          	and	a,#3
 680  00a5 48            	sll	a
 681  00a6 5f            	clrw	x
 682  00a7 97            	ld	xl,a
 683  00a8 a603          	ld	a,#3
 684  00aa 5d            	tnzw	x
 685  00ab 2704          	jreq	L23
 686  00ad               L43:
 687  00ad 48            	sll	a
 688  00ae 5a            	decw	x
 689  00af 26fc          	jrne	L43
 690  00b1               L23:
 691  00b1 43            	cpl	a
 692  00b2 6b01          	ld	(OFST-1,sp),a
 694                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 696  00b4 7b03          	ld	a,(OFST+1,sp)
 697  00b6 a403          	and	a,#3
 698  00b8 48            	sll	a
 699  00b9 5f            	clrw	x
 700  00ba 97            	ld	xl,a
 701  00bb 7b04          	ld	a,(OFST+2,sp)
 702  00bd 5d            	tnzw	x
 703  00be 2704          	jreq	L63
 704  00c0               L04:
 705  00c0 48            	sll	a
 706  00c1 5a            	decw	x
 707  00c2 26fc          	jrne	L04
 708  00c4               L63:
 709  00c4 6b02          	ld	(OFST+0,sp),a
 711                     ; 239   switch (IrqNum)
 713  00c6 7b03          	ld	a,(OFST+1,sp)
 715                     ; 329   default:
 715                     ; 330     break;
 716  00c8 a119          	cp	a,#25
 717  00ca 2407          	jruge	L24
 718  00cc 5f            	clrw	x
 719  00cd 97            	ld	xl,a
 720  00ce 58            	sllw	x
 721  00cf de0032        	ldw	x,(L44,x)
 722  00d2 fc            	jp	(x)
 723  00d3               L24:
 724  00d3 207c          	jra	L152
 725  00d5               L102:
 726                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 726                     ; 242   case ITC_IRQ_AWU:
 726                     ; 243   case ITC_IRQ_CLK:
 726                     ; 244   case ITC_IRQ_PORTA:
 726                     ; 245     ITC->ISPR1 &= Mask;
 728  00d5 c67f70        	ld	a,32624
 729  00d8 1401          	and	a,(OFST-1,sp)
 730  00da c77f70        	ld	32624,a
 731                     ; 246     ITC->ISPR1 |= NewPriority;
 733  00dd c67f70        	ld	a,32624
 734  00e0 1a02          	or	a,(OFST+0,sp)
 735  00e2 c77f70        	ld	32624,a
 736                     ; 247     break;
 738  00e5 206a          	jra	L152
 739  00e7               L302:
 740                     ; 249   case ITC_IRQ_PORTB:
 740                     ; 250   case ITC_IRQ_PORTC:
 740                     ; 251   case ITC_IRQ_PORTD:
 740                     ; 252   case ITC_IRQ_PORTE:
 740                     ; 253     ITC->ISPR2 &= Mask;
 742  00e7 c67f71        	ld	a,32625
 743  00ea 1401          	and	a,(OFST-1,sp)
 744  00ec c77f71        	ld	32625,a
 745                     ; 254     ITC->ISPR2 |= NewPriority;
 747  00ef c67f71        	ld	a,32625
 748  00f2 1a02          	or	a,(OFST+0,sp)
 749  00f4 c77f71        	ld	32625,a
 750                     ; 255     break;
 752  00f7 2058          	jra	L152
 753  00f9               L502:
 754                     ; 264   case ITC_IRQ_SPI:
 754                     ; 265   case ITC_IRQ_TIM1_OVF:
 754                     ; 266     ITC->ISPR3 &= Mask;
 756  00f9 c67f72        	ld	a,32626
 757  00fc 1401          	and	a,(OFST-1,sp)
 758  00fe c77f72        	ld	32626,a
 759                     ; 267     ITC->ISPR3 |= NewPriority;
 761  0101 c67f72        	ld	a,32626
 762  0104 1a02          	or	a,(OFST+0,sp)
 763  0106 c77f72        	ld	32626,a
 764                     ; 268     break;
 766  0109 2046          	jra	L152
 767  010b               L702:
 768                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 768                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 768                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 768                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 768                     ; 274 #else
 768                     ; 275   case ITC_IRQ_TIM2_OVF:
 768                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 768                     ; 277 #endif /*STM8S903 or STM8AF622x */
 768                     ; 278   case ITC_IRQ_TIM3_OVF:
 768                     ; 279     ITC->ISPR4 &= Mask;
 770  010b c67f73        	ld	a,32627
 771  010e 1401          	and	a,(OFST-1,sp)
 772  0110 c77f73        	ld	32627,a
 773                     ; 280     ITC->ISPR4 |= NewPriority;
 775  0113 c67f73        	ld	a,32627
 776  0116 1a02          	or	a,(OFST+0,sp)
 777  0118 c77f73        	ld	32627,a
 778                     ; 281     break;
 780  011b 2034          	jra	L152
 781  011d               L112:
 782                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 782                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 782                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 782                     ; 286   case ITC_IRQ_UART1_TX:
 782                     ; 287   case ITC_IRQ_UART1_RX:
 782                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 782                     ; 289 #if defined(STM8AF622x)
 782                     ; 290   case ITC_IRQ_UART4_TX:
 782                     ; 291   case ITC_IRQ_UART4_RX:
 782                     ; 292 #endif /*STM8AF622x */
 782                     ; 293   case ITC_IRQ_I2C:
 782                     ; 294     ITC->ISPR5 &= Mask;
 784  011d c67f74        	ld	a,32628
 785  0120 1401          	and	a,(OFST-1,sp)
 786  0122 c77f74        	ld	32628,a
 787                     ; 295     ITC->ISPR5 |= NewPriority;
 789  0125 c67f74        	ld	a,32628
 790  0128 1a02          	or	a,(OFST+0,sp)
 791  012a c77f74        	ld	32628,a
 792                     ; 296     break;
 794  012d 2022          	jra	L152
 795  012f               L312:
 796                     ; 312   case ITC_IRQ_ADC1:
 796                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 796                     ; 314     
 796                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 796                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 796                     ; 317 #else
 796                     ; 318   case ITC_IRQ_TIM4_OVF:
 796                     ; 319 #endif /* STM8S903 or STM8AF622x */
 796                     ; 320     ITC->ISPR6 &= Mask;
 798  012f c67f75        	ld	a,32629
 799  0132 1401          	and	a,(OFST-1,sp)
 800  0134 c77f75        	ld	32629,a
 801                     ; 321     ITC->ISPR6 |= NewPriority;
 803  0137 c67f75        	ld	a,32629
 804  013a 1a02          	or	a,(OFST+0,sp)
 805  013c c77f75        	ld	32629,a
 806                     ; 322     break;
 808  013f 2010          	jra	L152
 809  0141               L512:
 810                     ; 324   case ITC_IRQ_EEPROM_EEC:
 810                     ; 325     ITC->ISPR7 &= Mask;
 812  0141 c67f76        	ld	a,32630
 813  0144 1401          	and	a,(OFST-1,sp)
 814  0146 c77f76        	ld	32630,a
 815                     ; 326     ITC->ISPR7 |= NewPriority;
 817  0149 c67f76        	ld	a,32630
 818  014c 1a02          	or	a,(OFST+0,sp)
 819  014e c77f76        	ld	32630,a
 820                     ; 327     break;
 822  0151               L712:
 823                     ; 329   default:
 823                     ; 330     break;
 825  0151               L152:
 826                     ; 332 }
 829  0151 5b04          	addw	sp,#4
 830  0153 81            	ret
 843                     	xdef	_ITC_GetSoftwarePriority
 844                     	xdef	_ITC_SetSoftwarePriority
 845                     	xdef	_ITC_GetSoftIntStatus
 846                     	xdef	_ITC_DeInit
 847                     	xdef	_ITC_GetCPUCC
 866                     	end
