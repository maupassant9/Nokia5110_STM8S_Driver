   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  41                     ; 53 void UART1_DeInit(void)
  41                     ; 54 {
  43                     	switch	.text
  44  0000               _UART1_DeInit:
  48                     ; 57   (void)UART1->SR;
  50  0000 c65230        	ld	a,21040
  51                     ; 58   (void)UART1->DR;
  53  0003 c65231        	ld	a,21041
  54                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  56  0006 725f5233      	clr	21043
  57                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  59  000a 725f5232      	clr	21042
  60                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  62  000e 725f5234      	clr	21044
  63                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  65  0012 725f5235      	clr	21045
  66                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  68  0016 725f5236      	clr	21046
  69                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  71  001a 725f5237      	clr	21047
  72                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  74  001e 725f5238      	clr	21048
  75                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  77  0022 725f5239      	clr	21049
  78                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  80  0026 725f523a      	clr	21050
  81                     ; 71 }
  84  002a 81            	ret
 381                     .const:	section	.text
 382  0000               L01:
 383  0000 00000064      	dc.l	100
 384                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 384                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 384                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 384                     ; 93 {
 385                     	switch	.text
 386  002b               _UART1_Init:
 388  002b 520c          	subw	sp,#12
 389       0000000c      OFST:	set	12
 392                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 396                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 398                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 400                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 402                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 404                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 406                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 408                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 410  002d 72195234      	bres	21044,#4
 411                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 413  0031 c65234        	ld	a,21044
 414  0034 1a13          	or	a,(OFST+7,sp)
 415  0036 c75234        	ld	21044,a
 416                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 418  0039 c65236        	ld	a,21046
 419  003c a4cf          	and	a,#207
 420  003e c75236        	ld	21046,a
 421                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 423  0041 c65236        	ld	a,21046
 424  0044 1a14          	or	a,(OFST+8,sp)
 425  0046 c75236        	ld	21046,a
 426                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 428  0049 c65234        	ld	a,21044
 429  004c a4f9          	and	a,#249
 430  004e c75234        	ld	21044,a
 431                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 433  0051 c65234        	ld	a,21044
 434  0054 1a15          	or	a,(OFST+9,sp)
 435  0056 c75234        	ld	21044,a
 436                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 438  0059 725f5232      	clr	21042
 439                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 441  005d c65233        	ld	a,21043
 442  0060 a40f          	and	a,#15
 443  0062 c75233        	ld	21043,a
 444                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 446  0065 c65233        	ld	a,21043
 447  0068 a4f0          	and	a,#240
 448  006a c75233        	ld	21043,a
 449                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 451  006d 96            	ldw	x,sp
 452  006e 1c000f        	addw	x,#OFST+3
 453  0071 cd0000        	call	c_ltor
 455  0074 a604          	ld	a,#4
 456  0076 cd0000        	call	c_llsh
 458  0079 96            	ldw	x,sp
 459  007a 1c0001        	addw	x,#OFST-11
 460  007d cd0000        	call	c_rtol
 463  0080 cd0000        	call	_CLK_GetClockFreq
 465  0083 96            	ldw	x,sp
 466  0084 1c0001        	addw	x,#OFST-11
 467  0087 cd0000        	call	c_ludv
 469  008a 96            	ldw	x,sp
 470  008b 1c0009        	addw	x,#OFST-3
 471  008e cd0000        	call	c_rtol
 474                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 476  0091 96            	ldw	x,sp
 477  0092 1c000f        	addw	x,#OFST+3
 478  0095 cd0000        	call	c_ltor
 480  0098 a604          	ld	a,#4
 481  009a cd0000        	call	c_llsh
 483  009d 96            	ldw	x,sp
 484  009e 1c0001        	addw	x,#OFST-11
 485  00a1 cd0000        	call	c_rtol
 488  00a4 cd0000        	call	_CLK_GetClockFreq
 490  00a7 a664          	ld	a,#100
 491  00a9 cd0000        	call	c_smul
 493  00ac 96            	ldw	x,sp
 494  00ad 1c0001        	addw	x,#OFST-11
 495  00b0 cd0000        	call	c_ludv
 497  00b3 96            	ldw	x,sp
 498  00b4 1c0005        	addw	x,#OFST-7
 499  00b7 cd0000        	call	c_rtol
 502                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 504  00ba 96            	ldw	x,sp
 505  00bb 1c0009        	addw	x,#OFST-3
 506  00be cd0000        	call	c_ltor
 508  00c1 a664          	ld	a,#100
 509  00c3 cd0000        	call	c_smul
 511  00c6 96            	ldw	x,sp
 512  00c7 1c0001        	addw	x,#OFST-11
 513  00ca cd0000        	call	c_rtol
 516  00cd 96            	ldw	x,sp
 517  00ce 1c0005        	addw	x,#OFST-7
 518  00d1 cd0000        	call	c_ltor
 520  00d4 96            	ldw	x,sp
 521  00d5 1c0001        	addw	x,#OFST-11
 522  00d8 cd0000        	call	c_lsub
 524  00db a604          	ld	a,#4
 525  00dd cd0000        	call	c_llsh
 527  00e0 ae0000        	ldw	x,#L01
 528  00e3 cd0000        	call	c_ludv
 530  00e6 b603          	ld	a,c_lreg+3
 531  00e8 a40f          	and	a,#15
 532  00ea ca5233        	or	a,21043
 533  00ed c75233        	ld	21043,a
 534                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 536  00f0 96            	ldw	x,sp
 537  00f1 1c0009        	addw	x,#OFST-3
 538  00f4 cd0000        	call	c_ltor
 540  00f7 a604          	ld	a,#4
 541  00f9 cd0000        	call	c_lursh
 543  00fc b603          	ld	a,c_lreg+3
 544  00fe a4f0          	and	a,#240
 545  0100 b703          	ld	c_lreg+3,a
 546  0102 3f02          	clr	c_lreg+2
 547  0104 3f01          	clr	c_lreg+1
 548  0106 3f00          	clr	c_lreg
 549  0108 b603          	ld	a,c_lreg+3
 550  010a ca5233        	or	a,21043
 551  010d c75233        	ld	21043,a
 552                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 554  0110 c65232        	ld	a,21042
 555  0113 1a0c          	or	a,(OFST+0,sp)
 556  0115 c75232        	ld	21042,a
 557                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 559  0118 c65235        	ld	a,21045
 560  011b a4f3          	and	a,#243
 561  011d c75235        	ld	21045,a
 562                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 564  0120 c65236        	ld	a,21046
 565  0123 a4f8          	and	a,#248
 566  0125 c75236        	ld	21046,a
 567                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 567                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 569  0128 7b16          	ld	a,(OFST+10,sp)
 570  012a a407          	and	a,#7
 571  012c ca5236        	or	a,21046
 572  012f c75236        	ld	21046,a
 573                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 575  0132 7b17          	ld	a,(OFST+11,sp)
 576  0134 a504          	bcp	a,#4
 577  0136 2706          	jreq	L561
 578                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 580  0138 72165235      	bset	21045,#3
 582  013c 2004          	jra	L761
 583  013e               L561:
 584                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 586  013e 72175235      	bres	21045,#3
 587  0142               L761:
 588                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 590  0142 7b17          	ld	a,(OFST+11,sp)
 591  0144 a508          	bcp	a,#8
 592  0146 2706          	jreq	L171
 593                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 595  0148 72145235      	bset	21045,#2
 597  014c 2004          	jra	L371
 598  014e               L171:
 599                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 601  014e 72155235      	bres	21045,#2
 602  0152               L371:
 603                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 605  0152 7b16          	ld	a,(OFST+10,sp)
 606  0154 a580          	bcp	a,#128
 607  0156 2706          	jreq	L571
 608                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 610  0158 72175236      	bres	21046,#3
 612  015c 200a          	jra	L771
 613  015e               L571:
 614                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 616  015e 7b16          	ld	a,(OFST+10,sp)
 617  0160 a408          	and	a,#8
 618  0162 ca5236        	or	a,21046
 619  0165 c75236        	ld	21046,a
 620  0168               L771:
 621                     ; 176 }
 624  0168 5b0c          	addw	sp,#12
 625  016a 81            	ret
 680                     ; 184 void UART1_Cmd(FunctionalState NewState)
 680                     ; 185 {
 681                     	switch	.text
 682  016b               _UART1_Cmd:
 686                     ; 186   if (NewState != DISABLE)
 688  016b 4d            	tnz	a
 689  016c 2706          	jreq	L722
 690                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 692  016e 721b5234      	bres	21044,#5
 694  0172 2004          	jra	L132
 695  0174               L722:
 696                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 698  0174 721a5234      	bset	21044,#5
 699  0178               L132:
 700                     ; 196 }
 703  0178 81            	ret
 824                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 824                     ; 212 {
 825                     	switch	.text
 826  0179               _UART1_ITConfig:
 828  0179 89            	pushw	x
 829  017a 89            	pushw	x
 830       00000002      OFST:	set	2
 833                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 837                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 839                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 841                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 843  017b 9e            	ld	a,xh
 844  017c 6b01          	ld	(OFST-1,sp),a
 846                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 848  017e 9f            	ld	a,xl
 849  017f a40f          	and	a,#15
 850  0181 5f            	clrw	x
 851  0182 97            	ld	xl,a
 852  0183 a601          	ld	a,#1
 853  0185 5d            	tnzw	x
 854  0186 2704          	jreq	L61
 855  0188               L02:
 856  0188 48            	sll	a
 857  0189 5a            	decw	x
 858  018a 26fc          	jrne	L02
 859  018c               L61:
 860  018c 6b02          	ld	(OFST+0,sp),a
 862                     ; 224   if (NewState != DISABLE)
 864  018e 0d07          	tnz	(OFST+5,sp)
 865  0190 272a          	jreq	L503
 866                     ; 227     if (uartreg == 0x01)
 868  0192 7b01          	ld	a,(OFST-1,sp)
 869  0194 a101          	cp	a,#1
 870  0196 260a          	jrne	L703
 871                     ; 229       UART1->CR1 |= itpos;
 873  0198 c65234        	ld	a,21044
 874  019b 1a02          	or	a,(OFST+0,sp)
 875  019d c75234        	ld	21044,a
 877  01a0 2045          	jra	L713
 878  01a2               L703:
 879                     ; 231     else if (uartreg == 0x02)
 881  01a2 7b01          	ld	a,(OFST-1,sp)
 882  01a4 a102          	cp	a,#2
 883  01a6 260a          	jrne	L313
 884                     ; 233       UART1->CR2 |= itpos;
 886  01a8 c65235        	ld	a,21045
 887  01ab 1a02          	or	a,(OFST+0,sp)
 888  01ad c75235        	ld	21045,a
 890  01b0 2035          	jra	L713
 891  01b2               L313:
 892                     ; 237       UART1->CR4 |= itpos;
 894  01b2 c65237        	ld	a,21047
 895  01b5 1a02          	or	a,(OFST+0,sp)
 896  01b7 c75237        	ld	21047,a
 897  01ba 202b          	jra	L713
 898  01bc               L503:
 899                     ; 243     if (uartreg == 0x01)
 901  01bc 7b01          	ld	a,(OFST-1,sp)
 902  01be a101          	cp	a,#1
 903  01c0 260b          	jrne	L123
 904                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
 906  01c2 7b02          	ld	a,(OFST+0,sp)
 907  01c4 43            	cpl	a
 908  01c5 c45234        	and	a,21044
 909  01c8 c75234        	ld	21044,a
 911  01cb 201a          	jra	L713
 912  01cd               L123:
 913                     ; 247     else if (uartreg == 0x02)
 915  01cd 7b01          	ld	a,(OFST-1,sp)
 916  01cf a102          	cp	a,#2
 917  01d1 260b          	jrne	L523
 918                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
 920  01d3 7b02          	ld	a,(OFST+0,sp)
 921  01d5 43            	cpl	a
 922  01d6 c45235        	and	a,21045
 923  01d9 c75235        	ld	21045,a
 925  01dc 2009          	jra	L713
 926  01de               L523:
 927                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
 929  01de 7b02          	ld	a,(OFST+0,sp)
 930  01e0 43            	cpl	a
 931  01e1 c45237        	and	a,21047
 932  01e4 c75237        	ld	21047,a
 933  01e7               L713:
 934                     ; 257 }
 937  01e7 5b04          	addw	sp,#4
 938  01e9 81            	ret
 974                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
 974                     ; 266 {
 975                     	switch	.text
 976  01ea               _UART1_HalfDuplexCmd:
 980                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 982                     ; 269   if (NewState != DISABLE)
 984  01ea 4d            	tnz	a
 985  01eb 2706          	jreq	L743
 986                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
 988  01ed 72165238      	bset	21048,#3
 990  01f1 2004          	jra	L153
 991  01f3               L743:
 992                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
 994  01f3 72175238      	bres	21048,#3
 995  01f7               L153:
 996                     ; 277 }
 999  01f7 81            	ret
1056                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1056                     ; 286 {
1057                     	switch	.text
1058  01f8               _UART1_IrDAConfig:
1062                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1064                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1066  01f8 4d            	tnz	a
1067  01f9 2706          	jreq	L104
1068                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1070  01fb 72145238      	bset	21048,#2
1072  01ff 2004          	jra	L304
1073  0201               L104:
1074                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1076  0201 72155238      	bres	21048,#2
1077  0205               L304:
1078                     ; 297 }
1081  0205 81            	ret
1116                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1116                     ; 306 {
1117                     	switch	.text
1118  0206               _UART1_IrDACmd:
1122                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1124                     ; 310   if (NewState != DISABLE)
1126  0206 4d            	tnz	a
1127  0207 2706          	jreq	L324
1128                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1130  0209 72125238      	bset	21048,#1
1132  020d 2004          	jra	L524
1133  020f               L324:
1134                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1136  020f 72135238      	bres	21048,#1
1137  0213               L524:
1138                     ; 320 }
1141  0213 81            	ret
1200                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1200                     ; 330 {
1201                     	switch	.text
1202  0214               _UART1_LINBreakDetectionConfig:
1206                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1208                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1210  0214 4d            	tnz	a
1211  0215 2706          	jreq	L554
1212                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1214  0217 721a5237      	bset	21047,#5
1216  021b 2004          	jra	L754
1217  021d               L554:
1218                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1220  021d 721b5237      	bres	21047,#5
1221  0221               L754:
1222                     ; 341 }
1225  0221 81            	ret
1260                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1260                     ; 350 {
1261                     	switch	.text
1262  0222               _UART1_LINCmd:
1266                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1268                     ; 353   if (NewState != DISABLE)
1270  0222 4d            	tnz	a
1271  0223 2706          	jreq	L774
1272                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1274  0225 721c5236      	bset	21046,#6
1276  0229 2004          	jra	L105
1277  022b               L774:
1278                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1280  022b 721d5236      	bres	21046,#6
1281  022f               L105:
1282                     ; 363 }
1285  022f 81            	ret
1320                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1320                     ; 372 {
1321                     	switch	.text
1322  0230               _UART1_SmartCardCmd:
1326                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1328                     ; 375   if (NewState != DISABLE)
1330  0230 4d            	tnz	a
1331  0231 2706          	jreq	L125
1332                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1334  0233 721a5238      	bset	21048,#5
1336  0237 2004          	jra	L325
1337  0239               L125:
1338                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1340  0239 721b5238      	bres	21048,#5
1341  023d               L325:
1342                     ; 385 }
1345  023d 81            	ret
1381                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1381                     ; 395 {
1382                     	switch	.text
1383  023e               _UART1_SmartCardNACKCmd:
1387                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1389                     ; 398   if (NewState != DISABLE)
1391  023e 4d            	tnz	a
1392  023f 2706          	jreq	L345
1393                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1395  0241 72185238      	bset	21048,#4
1397  0245 2004          	jra	L545
1398  0247               L345:
1399                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1401  0247 72195238      	bres	21048,#4
1402  024b               L545:
1403                     ; 408 }
1406  024b 81            	ret
1463                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1463                     ; 417 {
1464                     	switch	.text
1465  024c               _UART1_WakeUpConfig:
1469                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1471                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1473  024c 72175234      	bres	21044,#3
1474                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1476  0250 ca5234        	or	a,21044
1477  0253 c75234        	ld	21044,a
1478                     ; 422 }
1481  0256 81            	ret
1517                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1517                     ; 431 {
1518                     	switch	.text
1519  0257               _UART1_ReceiverWakeUpCmd:
1523                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1525                     ; 434   if (NewState != DISABLE)
1527  0257 4d            	tnz	a
1528  0258 2706          	jreq	L316
1529                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1531  025a 72125235      	bset	21045,#1
1533  025e 2004          	jra	L516
1534  0260               L316:
1535                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1537  0260 72135235      	bres	21045,#1
1538  0264               L516:
1539                     ; 444 }
1542  0264 81            	ret
1565                     ; 451 uint8_t UART1_ReceiveData8(void)
1565                     ; 452 {
1566                     	switch	.text
1567  0265               _UART1_ReceiveData8:
1571                     ; 453   return ((uint8_t)UART1->DR);
1573  0265 c65231        	ld	a,21041
1576  0268 81            	ret
1608                     ; 461 uint16_t UART1_ReceiveData9(void)
1608                     ; 462 {
1609                     	switch	.text
1610  0269               _UART1_ReceiveData9:
1612  0269 89            	pushw	x
1613       00000002      OFST:	set	2
1616                     ; 463   uint16_t temp = 0;
1618                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1620  026a c65234        	ld	a,21044
1621  026d 5f            	clrw	x
1622  026e a480          	and	a,#128
1623  0270 5f            	clrw	x
1624  0271 02            	rlwa	x,a
1625  0272 58            	sllw	x
1626  0273 1f01          	ldw	(OFST-1,sp),x
1628                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1630  0275 c65231        	ld	a,21041
1631  0278 5f            	clrw	x
1632  0279 97            	ld	xl,a
1633  027a 01            	rrwa	x,a
1634  027b 1a02          	or	a,(OFST+0,sp)
1635  027d 01            	rrwa	x,a
1636  027e 1a01          	or	a,(OFST-1,sp)
1637  0280 01            	rrwa	x,a
1638  0281 01            	rrwa	x,a
1639  0282 a4ff          	and	a,#255
1640  0284 01            	rrwa	x,a
1641  0285 a401          	and	a,#1
1642  0287 01            	rrwa	x,a
1645  0288 5b02          	addw	sp,#2
1646  028a 81            	ret
1678                     ; 474 void UART1_SendData8(uint8_t Data)
1678                     ; 475 {
1679                     	switch	.text
1680  028b               _UART1_SendData8:
1684                     ; 477   UART1->DR = Data;
1686  028b c75231        	ld	21041,a
1687                     ; 478 }
1690  028e 81            	ret
1722                     ; 486 void UART1_SendData9(uint16_t Data)
1722                     ; 487 {
1723                     	switch	.text
1724  028f               _UART1_SendData9:
1726  028f 89            	pushw	x
1727       00000000      OFST:	set	0
1730                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1732  0290 721d5234      	bres	21044,#6
1733                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1735  0294 54            	srlw	x
1736  0295 54            	srlw	x
1737  0296 9f            	ld	a,xl
1738  0297 a440          	and	a,#64
1739  0299 ca5234        	or	a,21044
1740  029c c75234        	ld	21044,a
1741                     ; 493   UART1->DR   = (uint8_t)(Data);
1743  029f 7b02          	ld	a,(OFST+2,sp)
1744  02a1 c75231        	ld	21041,a
1745                     ; 494 }
1748  02a4 85            	popw	x
1749  02a5 81            	ret
1772                     ; 501 void UART1_SendBreak(void)
1772                     ; 502 {
1773                     	switch	.text
1774  02a6               _UART1_SendBreak:
1778                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
1780  02a6 72105235      	bset	21045,#0
1781                     ; 504 }
1784  02aa 81            	ret
1816                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
1816                     ; 512 {
1817                     	switch	.text
1818  02ab               _UART1_SetAddress:
1820  02ab 88            	push	a
1821       00000000      OFST:	set	0
1824                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
1826                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
1828  02ac c65237        	ld	a,21047
1829  02af a4f0          	and	a,#240
1830  02b1 c75237        	ld	21047,a
1831                     ; 519   UART1->CR4 |= UART1_Address;
1833  02b4 c65237        	ld	a,21047
1834  02b7 1a01          	or	a,(OFST+1,sp)
1835  02b9 c75237        	ld	21047,a
1836                     ; 520 }
1839  02bc 84            	pop	a
1840  02bd 81            	ret
1872                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
1872                     ; 529 {
1873                     	switch	.text
1874  02be               _UART1_SetGuardTime:
1878                     ; 531   UART1->GTR = UART1_GuardTime;
1880  02be c75239        	ld	21049,a
1881                     ; 532 }
1884  02c1 81            	ret
1916                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
1916                     ; 557 {
1917                     	switch	.text
1918  02c2               _UART1_SetPrescaler:
1922                     ; 559   UART1->PSCR = UART1_Prescaler;
1924  02c2 c7523a        	ld	21050,a
1925                     ; 560 }
1928  02c5 81            	ret
2071                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2071                     ; 569 {
2072                     	switch	.text
2073  02c6               _UART1_GetFlagStatus:
2075  02c6 89            	pushw	x
2076  02c7 88            	push	a
2077       00000001      OFST:	set	1
2080                     ; 570   FlagStatus status = RESET;
2082                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2084                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2086  02c8 a30210        	cpw	x,#528
2087  02cb 2610          	jrne	L1301
2088                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2090  02cd 9f            	ld	a,xl
2091  02ce c45237        	and	a,21047
2092  02d1 2706          	jreq	L3301
2093                     ; 582       status = SET;
2095  02d3 a601          	ld	a,#1
2096  02d5 6b01          	ld	(OFST+0,sp),a
2099  02d7 202b          	jra	L7301
2100  02d9               L3301:
2101                     ; 587       status = RESET;
2103  02d9 0f01          	clr	(OFST+0,sp)
2105  02db 2027          	jra	L7301
2106  02dd               L1301:
2107                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2109  02dd 1e02          	ldw	x,(OFST+1,sp)
2110  02df a30101        	cpw	x,#257
2111  02e2 2611          	jrne	L1401
2112                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2114  02e4 c65235        	ld	a,21045
2115  02e7 1503          	bcp	a,(OFST+2,sp)
2116  02e9 2706          	jreq	L3401
2117                     ; 595       status = SET;
2119  02eb a601          	ld	a,#1
2120  02ed 6b01          	ld	(OFST+0,sp),a
2123  02ef 2013          	jra	L7301
2124  02f1               L3401:
2125                     ; 600       status = RESET;
2127  02f1 0f01          	clr	(OFST+0,sp)
2129  02f3 200f          	jra	L7301
2130  02f5               L1401:
2131                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2133  02f5 c65230        	ld	a,21040
2134  02f8 1503          	bcp	a,(OFST+2,sp)
2135  02fa 2706          	jreq	L1501
2136                     ; 608       status = SET;
2138  02fc a601          	ld	a,#1
2139  02fe 6b01          	ld	(OFST+0,sp),a
2142  0300 2002          	jra	L7301
2143  0302               L1501:
2144                     ; 613       status = RESET;
2146  0302 0f01          	clr	(OFST+0,sp)
2148  0304               L7301:
2149                     ; 617   return status;
2151  0304 7b01          	ld	a,(OFST+0,sp)
2154  0306 5b03          	addw	sp,#3
2155  0308 81            	ret
2190                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2190                     ; 647 {
2191                     	switch	.text
2192  0309               _UART1_ClearFlag:
2196                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2198                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2200  0309 a30020        	cpw	x,#32
2201  030c 2606          	jrne	L3701
2202                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2204  030e 35df5230      	mov	21040,#223
2206  0312 2004          	jra	L5701
2207  0314               L3701:
2208                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2210  0314 72195237      	bres	21047,#4
2211  0318               L5701:
2212                     ; 660 }
2215  0318 81            	ret
2289                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2289                     ; 676 {
2290                     	switch	.text
2291  0319               _UART1_GetITStatus:
2293  0319 89            	pushw	x
2294  031a 89            	pushw	x
2295       00000002      OFST:	set	2
2298                     ; 677   ITStatus pendingbitstatus = RESET;
2300                     ; 678   uint8_t itpos = 0;
2302                     ; 679   uint8_t itmask1 = 0;
2304                     ; 680   uint8_t itmask2 = 0;
2306                     ; 681   uint8_t enablestatus = 0;
2308                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2310                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2312  031b 9f            	ld	a,xl
2313  031c a40f          	and	a,#15
2314  031e 5f            	clrw	x
2315  031f 97            	ld	xl,a
2316  0320 a601          	ld	a,#1
2317  0322 5d            	tnzw	x
2318  0323 2704          	jreq	L27
2319  0325               L47:
2320  0325 48            	sll	a
2321  0326 5a            	decw	x
2322  0327 26fc          	jrne	L47
2323  0329               L27:
2324  0329 6b01          	ld	(OFST-1,sp),a
2326                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2328  032b 7b04          	ld	a,(OFST+2,sp)
2329  032d 4e            	swap	a
2330  032e a40f          	and	a,#15
2331  0330 6b02          	ld	(OFST+0,sp),a
2333                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2335  0332 7b02          	ld	a,(OFST+0,sp)
2336  0334 5f            	clrw	x
2337  0335 97            	ld	xl,a
2338  0336 a601          	ld	a,#1
2339  0338 5d            	tnzw	x
2340  0339 2704          	jreq	L67
2341  033b               L001:
2342  033b 48            	sll	a
2343  033c 5a            	decw	x
2344  033d 26fc          	jrne	L001
2345  033f               L67:
2346  033f 6b02          	ld	(OFST+0,sp),a
2348                     ; 695   if (UART1_IT == UART1_IT_PE)
2350  0341 1e03          	ldw	x,(OFST+1,sp)
2351  0343 a30100        	cpw	x,#256
2352  0346 261c          	jrne	L1311
2353                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2355  0348 c65234        	ld	a,21044
2356  034b 1402          	and	a,(OFST+0,sp)
2357  034d 6b02          	ld	(OFST+0,sp),a
2359                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2361  034f c65230        	ld	a,21040
2362  0352 1501          	bcp	a,(OFST-1,sp)
2363  0354 270a          	jreq	L3311
2365  0356 0d02          	tnz	(OFST+0,sp)
2366  0358 2706          	jreq	L3311
2367                     ; 704       pendingbitstatus = SET;
2369  035a a601          	ld	a,#1
2370  035c 6b02          	ld	(OFST+0,sp),a
2373  035e 2041          	jra	L7311
2374  0360               L3311:
2375                     ; 709       pendingbitstatus = RESET;
2377  0360 0f02          	clr	(OFST+0,sp)
2379  0362 203d          	jra	L7311
2380  0364               L1311:
2381                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2383  0364 1e03          	ldw	x,(OFST+1,sp)
2384  0366 a30346        	cpw	x,#838
2385  0369 261c          	jrne	L1411
2386                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2388  036b c65237        	ld	a,21047
2389  036e 1402          	and	a,(OFST+0,sp)
2390  0370 6b02          	ld	(OFST+0,sp),a
2392                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2394  0372 c65237        	ld	a,21047
2395  0375 1501          	bcp	a,(OFST-1,sp)
2396  0377 270a          	jreq	L3411
2398  0379 0d02          	tnz	(OFST+0,sp)
2399  037b 2706          	jreq	L3411
2400                     ; 721       pendingbitstatus = SET;
2402  037d a601          	ld	a,#1
2403  037f 6b02          	ld	(OFST+0,sp),a
2406  0381 201e          	jra	L7311
2407  0383               L3411:
2408                     ; 726       pendingbitstatus = RESET;
2410  0383 0f02          	clr	(OFST+0,sp)
2412  0385 201a          	jra	L7311
2413  0387               L1411:
2414                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2416  0387 c65235        	ld	a,21045
2417  038a 1402          	and	a,(OFST+0,sp)
2418  038c 6b02          	ld	(OFST+0,sp),a
2420                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2422  038e c65230        	ld	a,21040
2423  0391 1501          	bcp	a,(OFST-1,sp)
2424  0393 270a          	jreq	L1511
2426  0395 0d02          	tnz	(OFST+0,sp)
2427  0397 2706          	jreq	L1511
2428                     ; 737       pendingbitstatus = SET;
2430  0399 a601          	ld	a,#1
2431  039b 6b02          	ld	(OFST+0,sp),a
2434  039d 2002          	jra	L7311
2435  039f               L1511:
2436                     ; 742       pendingbitstatus = RESET;
2438  039f 0f02          	clr	(OFST+0,sp)
2440  03a1               L7311:
2441                     ; 747   return  pendingbitstatus;
2443  03a1 7b02          	ld	a,(OFST+0,sp)
2446  03a3 5b04          	addw	sp,#4
2447  03a5 81            	ret
2483                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2483                     ; 776 {
2484                     	switch	.text
2485  03a6               _UART1_ClearITPendingBit:
2489                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2491                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2493  03a6 a30255        	cpw	x,#597
2494  03a9 2606          	jrne	L3711
2495                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2497  03ab 35df5230      	mov	21040,#223
2499  03af 2004          	jra	L5711
2500  03b1               L3711:
2501                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2503  03b1 72195237      	bres	21047,#4
2504  03b5               L5711:
2505                     ; 789 }
2508  03b5 81            	ret
2521                     	xdef	_UART1_ClearITPendingBit
2522                     	xdef	_UART1_GetITStatus
2523                     	xdef	_UART1_ClearFlag
2524                     	xdef	_UART1_GetFlagStatus
2525                     	xdef	_UART1_SetPrescaler
2526                     	xdef	_UART1_SetGuardTime
2527                     	xdef	_UART1_SetAddress
2528                     	xdef	_UART1_SendBreak
2529                     	xdef	_UART1_SendData9
2530                     	xdef	_UART1_SendData8
2531                     	xdef	_UART1_ReceiveData9
2532                     	xdef	_UART1_ReceiveData8
2533                     	xdef	_UART1_ReceiverWakeUpCmd
2534                     	xdef	_UART1_WakeUpConfig
2535                     	xdef	_UART1_SmartCardNACKCmd
2536                     	xdef	_UART1_SmartCardCmd
2537                     	xdef	_UART1_LINCmd
2538                     	xdef	_UART1_LINBreakDetectionConfig
2539                     	xdef	_UART1_IrDACmd
2540                     	xdef	_UART1_IrDAConfig
2541                     	xdef	_UART1_HalfDuplexCmd
2542                     	xdef	_UART1_ITConfig
2543                     	xdef	_UART1_Cmd
2544                     	xdef	_UART1_Init
2545                     	xdef	_UART1_DeInit
2546                     	xref	_CLK_GetClockFreq
2547                     	xref.b	c_lreg
2548                     	xref.b	c_x
2567                     	xref	c_lursh
2568                     	xref	c_lsub
2569                     	xref	c_smul
2570                     	xref	c_ludv
2571                     	xref	c_rtol
2572                     	xref	c_llsh
2573                     	xref	c_ltor
2574                     	end
