   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  73                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  73                     ; 88 {
  75                     	switch	.text
  76  0000               _FLASH_Unlock:
  80                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  82                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
  84  0000 a1fd          	cp	a,#253
  85  0002 260a          	jrne	L73
  86                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
  88  0004 35565062      	mov	20578,#86
  89                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
  91  0008 35ae5062      	mov	20578,#174
  93  000c 2008          	jra	L14
  94  000e               L73:
  95                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  97  000e 35ae5064      	mov	20580,#174
  98                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 100  0012 35565064      	mov	20580,#86
 101  0016               L14:
 102                     ; 104 }
 105  0016 81            	ret
 140                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 140                     ; 113 {
 141                     	switch	.text
 142  0017               _FLASH_Lock:
 146                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 148                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 150  0017 c4505f        	and	a,20575
 151  001a c7505f        	ld	20575,a
 152                     ; 119 }
 155  001d 81            	ret
 178                     ; 126 void FLASH_DeInit(void)
 178                     ; 127 {
 179                     	switch	.text
 180  001e               _FLASH_DeInit:
 184                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 186  001e 725f505a      	clr	20570
 187                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 189  0022 725f505b      	clr	20571
 190                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 192  0026 35ff505c      	mov	20572,#255
 193                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 195  002a 7217505f      	bres	20575,#3
 196                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 198  002e 7213505f      	bres	20575,#1
 199                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 201  0032 c6505f        	ld	a,20575
 202                     ; 134 }
 205  0035 81            	ret
 260                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 260                     ; 143 {
 261                     	switch	.text
 262  0036               _FLASH_ITConfig:
 266                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 268                     ; 147   if(NewState != DISABLE)
 270  0036 4d            	tnz	a
 271  0037 2706          	jreq	L711
 272                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 274  0039 7212505a      	bset	20570,#1
 276  003d 2004          	jra	L121
 277  003f               L711:
 278                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 280  003f 7213505a      	bres	20570,#1
 281  0043               L121:
 282                     ; 155 }
 285  0043 81            	ret
 317                     ; 164 void FLASH_EraseByte(uint32_t Address)
 317                     ; 165 {
 318                     	switch	.text
 319  0044               _FLASH_EraseByte:
 321       00000000      OFST:	set	0
 324                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 326                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 328  0044 1e05          	ldw	x,(OFST+5,sp)
 329  0046 7f            	clr	(x)
 330                     ; 171 }
 333  0047 81            	ret
 372                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 372                     ; 182 {
 373                     	switch	.text
 374  0048               _FLASH_ProgramByte:
 376       00000000      OFST:	set	0
 379                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 381                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 383  0048 7b07          	ld	a,(OFST+7,sp)
 384  004a 1e05          	ldw	x,(OFST+5,sp)
 385  004c f7            	ld	(x),a
 386                     ; 186 }
 389  004d 81            	ret
 421                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 421                     ; 196 {
 422                     	switch	.text
 423  004e               _FLASH_ReadByte:
 425       00000000      OFST:	set	0
 428                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 430                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 432  004e 1e05          	ldw	x,(OFST+5,sp)
 433  0050 f6            	ld	a,(x)
 436  0051 81            	ret
 475                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 475                     ; 213 {
 476                     	switch	.text
 477  0052               _FLASH_ProgramWord:
 479       00000000      OFST:	set	0
 482                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 484                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 486  0052 721c505b      	bset	20571,#6
 487                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 489  0056 721d505c      	bres	20572,#6
 490                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 492  005a 7b07          	ld	a,(OFST+7,sp)
 493  005c 1e05          	ldw	x,(OFST+5,sp)
 494  005e f7            	ld	(x),a
 495                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 497  005f 7b08          	ld	a,(OFST+8,sp)
 498  0061 1e05          	ldw	x,(OFST+5,sp)
 499  0063 e701          	ld	(1,x),a
 500                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 502  0065 7b09          	ld	a,(OFST+9,sp)
 503  0067 1e05          	ldw	x,(OFST+5,sp)
 504  0069 e702          	ld	(2,x),a
 505                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 507  006b 7b0a          	ld	a,(OFST+10,sp)
 508  006d 1e05          	ldw	x,(OFST+5,sp)
 509  006f e703          	ld	(3,x),a
 510                     ; 229 }
 513  0071 81            	ret
 554                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 554                     ; 238 {
 555                     	switch	.text
 556  0072               _FLASH_ProgramOptionByte:
 558  0072 89            	pushw	x
 559       00000000      OFST:	set	0
 562                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 564                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 566  0073 721e505b      	bset	20571,#7
 567                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 569  0077 721f505c      	bres	20572,#7
 570                     ; 247   if(Address == 0x4800)
 572  007b a34800        	cpw	x,#18432
 573  007e 2607          	jrne	L522
 574                     ; 250     *((NEAR uint8_t*)Address) = Data;
 576  0080 7b05          	ld	a,(OFST+5,sp)
 577  0082 1e01          	ldw	x,(OFST+1,sp)
 578  0084 f7            	ld	(x),a
 580  0085 200c          	jra	L722
 581  0087               L522:
 582                     ; 255     *((NEAR uint8_t*)Address) = Data;
 584  0087 7b05          	ld	a,(OFST+5,sp)
 585  0089 1e01          	ldw	x,(OFST+1,sp)
 586  008b f7            	ld	(x),a
 587                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 589  008c 7b05          	ld	a,(OFST+5,sp)
 590  008e 43            	cpl	a
 591  008f 1e01          	ldw	x,(OFST+1,sp)
 592  0091 e701          	ld	(1,x),a
 593  0093               L722:
 594                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 596  0093 a6fd          	ld	a,#253
 597  0095 cd017d        	call	_FLASH_WaitForLastOperation
 599                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 601  0098 721f505b      	bres	20571,#7
 602                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 604  009c 721e505c      	bset	20572,#7
 605                     ; 263 }
 608  00a0 85            	popw	x
 609  00a1 81            	ret
 643                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 643                     ; 271 {
 644                     	switch	.text
 645  00a2               _FLASH_EraseOptionByte:
 647  00a2 89            	pushw	x
 648       00000000      OFST:	set	0
 651                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 653                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 655  00a3 721e505b      	bset	20571,#7
 656                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 658  00a7 721f505c      	bres	20572,#7
 659                     ; 280   if(Address == 0x4800)
 661  00ab a34800        	cpw	x,#18432
 662  00ae 2603          	jrne	L542
 663                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 665  00b0 7f            	clr	(x)
 667  00b1 2009          	jra	L742
 668  00b3               L542:
 669                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 671  00b3 1e01          	ldw	x,(OFST+1,sp)
 672  00b5 7f            	clr	(x)
 673                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 675  00b6 1e01          	ldw	x,(OFST+1,sp)
 676  00b8 a6ff          	ld	a,#255
 677  00ba e701          	ld	(1,x),a
 678  00bc               L742:
 679                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 681  00bc a6fd          	ld	a,#253
 682  00be cd017d        	call	_FLASH_WaitForLastOperation
 684                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 686  00c1 721f505b      	bres	20571,#7
 687                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 689  00c5 721e505c      	bset	20572,#7
 690                     ; 296 }
 693  00c9 85            	popw	x
 694  00ca 81            	ret
 749                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 749                     ; 304 {
 750                     	switch	.text
 751  00cb               _FLASH_ReadOptionByte:
 753  00cb 5204          	subw	sp,#4
 754       00000004      OFST:	set	4
 757                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
 759                     ; 306   uint16_t res_value = 0;
 761                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 763                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 765  00cd f6            	ld	a,(x)
 766  00ce 6b01          	ld	(OFST-3,sp),a
 768                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 770  00d0 e601          	ld	a,(1,x)
 771  00d2 6b02          	ld	(OFST-2,sp),a
 773                     ; 315   if(Address == 0x4800)	 
 775  00d4 a34800        	cpw	x,#18432
 776  00d7 2608          	jrne	L372
 777                     ; 317     res_value =	 value_optbyte;
 779  00d9 7b01          	ld	a,(OFST-3,sp)
 780  00db 5f            	clrw	x
 781  00dc 97            	ld	xl,a
 782  00dd 1f03          	ldw	(OFST-1,sp),x
 785  00df 2023          	jra	L572
 786  00e1               L372:
 787                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
 789  00e1 7b02          	ld	a,(OFST-2,sp)
 790  00e3 43            	cpl	a
 791  00e4 1101          	cp	a,(OFST-3,sp)
 792  00e6 2617          	jrne	L772
 793                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 795  00e8 7b01          	ld	a,(OFST-3,sp)
 796  00ea 5f            	clrw	x
 797  00eb 97            	ld	xl,a
 798  00ec 4f            	clr	a
 799  00ed 02            	rlwa	x,a
 800  00ee 1f03          	ldw	(OFST-1,sp),x
 802                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
 804  00f0 7b02          	ld	a,(OFST-2,sp)
 805  00f2 5f            	clrw	x
 806  00f3 97            	ld	xl,a
 807  00f4 01            	rrwa	x,a
 808  00f5 1a04          	or	a,(OFST+0,sp)
 809  00f7 01            	rrwa	x,a
 810  00f8 1a03          	or	a,(OFST-1,sp)
 811  00fa 01            	rrwa	x,a
 812  00fb 1f03          	ldw	(OFST-1,sp),x
 815  00fd 2005          	jra	L572
 816  00ff               L772:
 817                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
 819  00ff ae5555        	ldw	x,#21845
 820  0102 1f03          	ldw	(OFST-1,sp),x
 822  0104               L572:
 823                     ; 331   return(res_value);
 825  0104 1e03          	ldw	x,(OFST-1,sp)
 828  0106 5b04          	addw	sp,#4
 829  0108 81            	ret
 903                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 903                     ; 341 {
 904                     	switch	.text
 905  0109               _FLASH_SetLowPowerMode:
 907  0109 88            	push	a
 908       00000000      OFST:	set	0
 911                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 913                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 915  010a c6505a        	ld	a,20570
 916  010d a4f3          	and	a,#243
 917  010f c7505a        	ld	20570,a
 918                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 920  0112 c6505a        	ld	a,20570
 921  0115 1a01          	or	a,(OFST+1,sp)
 922  0117 c7505a        	ld	20570,a
 923                     ; 350 }
 926  011a 84            	pop	a
 927  011b 81            	ret
 985                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
 985                     ; 359 {
 986                     	switch	.text
 987  011c               _FLASH_SetProgrammingTime:
 991                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
 993                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
 995  011c 7211505a      	bres	20570,#0
 996                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
 998  0120 ca505a        	or	a,20570
 999  0123 c7505a        	ld	20570,a
1000                     ; 365 }
1003  0126 81            	ret
1028                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1028                     ; 373 {
1029                     	switch	.text
1030  0127               _FLASH_GetLowPowerMode:
1034                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1036  0127 c6505a        	ld	a,20570
1037  012a a40c          	and	a,#12
1040  012c 81            	ret
1065                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1065                     ; 383 {
1066                     	switch	.text
1067  012d               _FLASH_GetProgrammingTime:
1071                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1073  012d c6505a        	ld	a,20570
1074  0130 a401          	and	a,#1
1077  0132 81            	ret
1109                     ; 392 uint32_t FLASH_GetBootSize(void)
1109                     ; 393 {
1110                     	switch	.text
1111  0133               _FLASH_GetBootSize:
1113  0133 5204          	subw	sp,#4
1114       00000004      OFST:	set	4
1117                     ; 394   uint32_t temp = 0;
1119                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1121  0135 c6505d        	ld	a,20573
1122  0138 5f            	clrw	x
1123  0139 97            	ld	xl,a
1124  013a 90ae0200      	ldw	y,#512
1125  013e cd0000        	call	c_umul
1127  0141 96            	ldw	x,sp
1128  0142 1c0001        	addw	x,#OFST-3
1129  0145 cd0000        	call	c_rtol
1132                     ; 400   if(FLASH->FPR == 0xFF)
1134  0148 c6505d        	ld	a,20573
1135  014b a1ff          	cp	a,#255
1136  014d 2611          	jrne	L714
1137                     ; 402     temp += 512;
1139  014f ae0200        	ldw	x,#512
1140  0152 bf02          	ldw	c_lreg+2,x
1141  0154 ae0000        	ldw	x,#0
1142  0157 bf00          	ldw	c_lreg,x
1143  0159 96            	ldw	x,sp
1144  015a 1c0001        	addw	x,#OFST-3
1145  015d cd0000        	call	c_lgadd
1148  0160               L714:
1149                     ; 406   return(temp);
1151  0160 96            	ldw	x,sp
1152  0161 1c0001        	addw	x,#OFST-3
1153  0164 cd0000        	call	c_ltor
1157  0167 5b04          	addw	sp,#4
1158  0169 81            	ret
1260                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1260                     ; 418 {
1261                     	switch	.text
1262  016a               _FLASH_GetFlagStatus:
1264  016a 88            	push	a
1265       00000001      OFST:	set	1
1268                     ; 419   FlagStatus status = RESET;
1270                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1272                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1274  016b c4505f        	and	a,20575
1275  016e 2706          	jreq	L764
1276                     ; 426     status = SET; /* FLASH_FLAG is set */
1278  0170 a601          	ld	a,#1
1279  0172 6b01          	ld	(OFST+0,sp),a
1282  0174 2002          	jra	L174
1283  0176               L764:
1284                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1286  0176 0f01          	clr	(OFST+0,sp)
1288  0178               L174:
1289                     ; 434   return status;
1291  0178 7b01          	ld	a,(OFST+0,sp)
1294  017a 5b01          	addw	sp,#1
1295  017c 81            	ret
1376                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1376                     ; 550 {
1377                     	switch	.text
1378  017d               _FLASH_WaitForLastOperation:
1380  017d 5203          	subw	sp,#3
1381       00000003      OFST:	set	3
1384                     ; 551   uint8_t flagstatus = 0x00;
1386  017f 0f03          	clr	(OFST+0,sp)
1388                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1390  0181 aeffff        	ldw	x,#65535
1391  0184 1f01          	ldw	(OFST-2,sp),x
1393                     ; 576   UNUSED(FLASH_MemType);
1396  0186 200e          	jra	L135
1397  0188               L725:
1398                     ; 579     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1400  0188 c6505f        	ld	a,20575
1401  018b a405          	and	a,#5
1402  018d 6b03          	ld	(OFST+0,sp),a
1404                     ; 580     timeout--;
1406  018f 1e01          	ldw	x,(OFST-2,sp)
1407  0191 1d0001        	subw	x,#1
1408  0194 1f01          	ldw	(OFST-2,sp),x
1410  0196               L135:
1411                     ; 577   while((flagstatus == 0x00) && (timeout != 0x00))
1413  0196 0d03          	tnz	(OFST+0,sp)
1414  0198 2604          	jrne	L535
1416  019a 1e01          	ldw	x,(OFST-2,sp)
1417  019c 26ea          	jrne	L725
1418  019e               L535:
1419                     ; 584   if(timeout == 0x00 )
1421  019e 1e01          	ldw	x,(OFST-2,sp)
1422  01a0 2604          	jrne	L735
1423                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1425  01a2 a602          	ld	a,#2
1426  01a4 6b03          	ld	(OFST+0,sp),a
1428  01a6               L735:
1429                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1431  01a6 7b03          	ld	a,(OFST+0,sp)
1434  01a8 5b03          	addw	sp,#3
1435  01aa 81            	ret
1494                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1494                     ; 600 {
1495                     	switch	.text
1496  01ab               _FLASH_EraseBlock:
1498  01ab 89            	pushw	x
1499  01ac 5206          	subw	sp,#6
1500       00000006      OFST:	set	6
1503                     ; 601   uint32_t startaddress = 0;
1505                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1507                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1509  01ae 7b0b          	ld	a,(OFST+5,sp)
1510  01b0 a1fd          	cp	a,#253
1511  01b2 260c          	jrne	L765
1512                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1514                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1516  01b4 ae8000        	ldw	x,#32768
1517  01b7 1f05          	ldw	(OFST-1,sp),x
1518  01b9 ae0000        	ldw	x,#0
1519  01bc 1f03          	ldw	(OFST-3,sp),x
1522  01be 200a          	jra	L175
1523  01c0               L765:
1524                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1526                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1528  01c0 ae4000        	ldw	x,#16384
1529  01c3 1f05          	ldw	(OFST-1,sp),x
1530  01c5 ae0000        	ldw	x,#0
1531  01c8 1f03          	ldw	(OFST-3,sp),x
1533  01ca               L175:
1534                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1536  01ca 1e07          	ldw	x,(OFST+1,sp)
1537  01cc a640          	ld	a,#64
1538  01ce cd0000        	call	c_cmulx
1540  01d1 96            	ldw	x,sp
1541  01d2 1c0003        	addw	x,#OFST-3
1542  01d5 cd0000        	call	c_ladd
1544  01d8 be02          	ldw	x,c_lreg+2
1545  01da 1f01          	ldw	(OFST-5,sp),x
1547                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
1549  01dc 721a505b      	bset	20571,#5
1550                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1552  01e0 721b505c      	bres	20572,#5
1553                     ; 637     *pwFlash = (uint32_t)0;
1555  01e4 1e01          	ldw	x,(OFST-5,sp)
1556  01e6 a600          	ld	a,#0
1557  01e8 e703          	ld	(3,x),a
1558  01ea a600          	ld	a,#0
1559  01ec e702          	ld	(2,x),a
1560  01ee a600          	ld	a,#0
1561  01f0 e701          	ld	(1,x),a
1562  01f2 a600          	ld	a,#0
1563  01f4 f7            	ld	(x),a
1564                     ; 645 }
1567  01f5 5b08          	addw	sp,#8
1568  01f7 81            	ret
1666                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
1666                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
1666                     ; 658 {
1667                     	switch	.text
1668  01f8               _FLASH_ProgramBlock:
1670  01f8 89            	pushw	x
1671  01f9 5206          	subw	sp,#6
1672       00000006      OFST:	set	6
1675                     ; 659   uint16_t Count = 0;
1677                     ; 660   uint32_t startaddress = 0;
1679                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1681                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
1683                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1685  01fb 7b0b          	ld	a,(OFST+5,sp)
1686  01fd a1fd          	cp	a,#253
1687  01ff 260c          	jrne	L736
1688                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1690                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1692  0201 ae8000        	ldw	x,#32768
1693  0204 1f03          	ldw	(OFST-3,sp),x
1694  0206 ae0000        	ldw	x,#0
1695  0209 1f01          	ldw	(OFST-5,sp),x
1698  020b 200a          	jra	L146
1699  020d               L736:
1700                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1702                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1704  020d ae4000        	ldw	x,#16384
1705  0210 1f03          	ldw	(OFST-3,sp),x
1706  0212 ae0000        	ldw	x,#0
1707  0215 1f01          	ldw	(OFST-5,sp),x
1709  0217               L146:
1710                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1712  0217 1e07          	ldw	x,(OFST+1,sp)
1713  0219 a640          	ld	a,#64
1714  021b cd0000        	call	c_cmulx
1716  021e 96            	ldw	x,sp
1717  021f 1c0001        	addw	x,#OFST-5
1718  0222 cd0000        	call	c_lgadd
1721                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1723  0225 0d0c          	tnz	(OFST+6,sp)
1724  0227 260a          	jrne	L346
1725                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
1727  0229 7210505b      	bset	20571,#0
1728                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1730  022d 7211505c      	bres	20572,#0
1732  0231 2008          	jra	L546
1733  0233               L346:
1734                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
1736  0233 7218505b      	bset	20571,#4
1737                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1739  0237 7219505c      	bres	20572,#4
1740  023b               L546:
1741                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1743  023b 5f            	clrw	x
1744  023c 1f05          	ldw	(OFST-1,sp),x
1746  023e               L746:
1747                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1749  023e 1e0d          	ldw	x,(OFST+7,sp)
1750  0240 72fb05        	addw	x,(OFST-1,sp)
1751  0243 f6            	ld	a,(x)
1752  0244 1e03          	ldw	x,(OFST-3,sp)
1753  0246 72fb05        	addw	x,(OFST-1,sp)
1754  0249 f7            	ld	(x),a
1755                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1757  024a 1e05          	ldw	x,(OFST-1,sp)
1758  024c 1c0001        	addw	x,#1
1759  024f 1f05          	ldw	(OFST-1,sp),x
1763  0251 1e05          	ldw	x,(OFST-1,sp)
1764  0253 a30040        	cpw	x,#64
1765  0256 25e6          	jrult	L746
1766                     ; 698 }
1769  0258 5b08          	addw	sp,#8
1770  025a 81            	ret
1783                     	xdef	_FLASH_WaitForLastOperation
1784                     	xdef	_FLASH_ProgramBlock
1785                     	xdef	_FLASH_EraseBlock
1786                     	xdef	_FLASH_GetFlagStatus
1787                     	xdef	_FLASH_GetBootSize
1788                     	xdef	_FLASH_GetProgrammingTime
1789                     	xdef	_FLASH_GetLowPowerMode
1790                     	xdef	_FLASH_SetProgrammingTime
1791                     	xdef	_FLASH_SetLowPowerMode
1792                     	xdef	_FLASH_EraseOptionByte
1793                     	xdef	_FLASH_ProgramOptionByte
1794                     	xdef	_FLASH_ReadOptionByte
1795                     	xdef	_FLASH_ProgramWord
1796                     	xdef	_FLASH_ReadByte
1797                     	xdef	_FLASH_ProgramByte
1798                     	xdef	_FLASH_EraseByte
1799                     	xdef	_FLASH_ITConfig
1800                     	xdef	_FLASH_DeInit
1801                     	xdef	_FLASH_Lock
1802                     	xdef	_FLASH_Unlock
1803                     	xref.b	c_lreg
1804                     	xref.b	c_x
1805                     	xref.b	c_y
1824                     	xref	c_ladd
1825                     	xref	c_cmulx
1826                     	xref	c_ltor
1827                     	xref	c_lgadd
1828                     	xref	c_rtol
1829                     	xref	c_umul
1830                     	end
