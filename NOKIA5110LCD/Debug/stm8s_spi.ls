   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  41                     ; 50 void SPI_DeInit(void)
  41                     ; 51 {
  43                     	switch	.text
  44  0000               _SPI_DeInit:
  48                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  50  0000 725f5200      	clr	20992
  51                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  53  0004 725f5201      	clr	20993
  54                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  56  0008 725f5202      	clr	20994
  57                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  59  000c 35025203      	mov	20995,#2
  60                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  62  0010 35075205      	mov	20997,#7
  63                     ; 57 }
  66  0014 81            	ret
 380                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 380                     ; 79 {
 381                     	switch	.text
 382  0015               _SPI_Init:
 384  0015 89            	pushw	x
 385  0016 88            	push	a
 386       00000001      OFST:	set	1
 389                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 391                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 393                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 395                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 397                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 399                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 401                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 403                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 405                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 405                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 407  0017 7b07          	ld	a,(OFST+6,sp)
 408  0019 1a08          	or	a,(OFST+7,sp)
 409  001b 6b01          	ld	(OFST+0,sp),a
 411  001d 9f            	ld	a,xl
 412  001e 1a02          	or	a,(OFST+1,sp)
 413  0020 1a01          	or	a,(OFST+0,sp)
 414  0022 c75200        	ld	20992,a
 415                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 417  0025 7b09          	ld	a,(OFST+8,sp)
 418  0027 1a0a          	or	a,(OFST+9,sp)
 419  0029 c75201        	ld	20993,a
 420                     ; 97   if (Mode == SPI_MODE_MASTER)
 422  002c 7b06          	ld	a,(OFST+5,sp)
 423  002e a104          	cp	a,#4
 424  0030 2606          	jrne	L102
 425                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 427  0032 72105201      	bset	20993,#0
 429  0036 2004          	jra	L302
 430  0038               L102:
 431                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 433  0038 72115201      	bres	20993,#0
 434  003c               L302:
 435                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 437  003c c65200        	ld	a,20992
 438  003f 1a06          	or	a,(OFST+5,sp)
 439  0041 c75200        	ld	20992,a
 440                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 442  0044 7b0b          	ld	a,(OFST+10,sp)
 443  0046 c75205        	ld	20997,a
 444                     ; 111 }
 447  0049 5b03          	addw	sp,#3
 448  004b 81            	ret
 503                     ; 119 void SPI_Cmd(FunctionalState NewState)
 503                     ; 120 {
 504                     	switch	.text
 505  004c               _SPI_Cmd:
 509                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 511                     ; 124   if (NewState != DISABLE)
 513  004c 4d            	tnz	a
 514  004d 2706          	jreq	L332
 515                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 517  004f 721c5200      	bset	20992,#6
 519  0053 2004          	jra	L532
 520  0055               L332:
 521                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 523  0055 721d5200      	bres	20992,#6
 524  0059               L532:
 525                     ; 132 }
 528  0059 81            	ret
 635                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 635                     ; 142 {
 636                     	switch	.text
 637  005a               _SPI_ITConfig:
 639  005a 89            	pushw	x
 640  005b 88            	push	a
 641       00000001      OFST:	set	1
 644                     ; 143   uint8_t itpos = 0;
 646                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 648                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 650                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 652  005c 9e            	ld	a,xh
 653  005d a40f          	and	a,#15
 654  005f 5f            	clrw	x
 655  0060 97            	ld	xl,a
 656  0061 a601          	ld	a,#1
 657  0063 5d            	tnzw	x
 658  0064 2704          	jreq	L41
 659  0066               L61:
 660  0066 48            	sll	a
 661  0067 5a            	decw	x
 662  0068 26fc          	jrne	L61
 663  006a               L41:
 664  006a 6b01          	ld	(OFST+0,sp),a
 666                     ; 151   if (NewState != DISABLE)
 668  006c 0d03          	tnz	(OFST+2,sp)
 669  006e 270a          	jreq	L503
 670                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 672  0070 c65202        	ld	a,20994
 673  0073 1a01          	or	a,(OFST+0,sp)
 674  0075 c75202        	ld	20994,a
 676  0078 2009          	jra	L703
 677  007a               L503:
 678                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 680  007a 7b01          	ld	a,(OFST+0,sp)
 681  007c 43            	cpl	a
 682  007d c45202        	and	a,20994
 683  0080 c75202        	ld	20994,a
 684  0083               L703:
 685                     ; 159 }
 688  0083 5b03          	addw	sp,#3
 689  0085 81            	ret
 721                     ; 166 void SPI_SendData(uint8_t Data)
 721                     ; 167 {
 722                     	switch	.text
 723  0086               _SPI_SendData:
 727                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 729  0086 c75204        	ld	20996,a
 730                     ; 169 }
 733  0089 81            	ret
 756                     ; 176 uint8_t SPI_ReceiveData(void)
 756                     ; 177 {
 757                     	switch	.text
 758  008a               _SPI_ReceiveData:
 762                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 764  008a c65204        	ld	a,20996
 767  008d 81            	ret
 803                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 803                     ; 188 {
 804                     	switch	.text
 805  008e               _SPI_NSSInternalSoftwareCmd:
 809                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 811                     ; 192   if (NewState != DISABLE)
 813  008e 4d            	tnz	a
 814  008f 2706          	jreq	L353
 815                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 817  0091 72105201      	bset	20993,#0
 819  0095 2004          	jra	L553
 820  0097               L353:
 821                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 823  0097 72115201      	bres	20993,#0
 824  009b               L553:
 825                     ; 200 }
 828  009b 81            	ret
 851                     ; 207 void SPI_TransmitCRC(void)
 851                     ; 208 {
 852                     	switch	.text
 853  009c               _SPI_TransmitCRC:
 857                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 859  009c 72185201      	bset	20993,#4
 860                     ; 210 }
 863  00a0 81            	ret
 899                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
 899                     ; 219 {
 900                     	switch	.text
 901  00a1               _SPI_CalculateCRCCmd:
 905                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 907                     ; 223   if (NewState != DISABLE)
 909  00a1 4d            	tnz	a
 910  00a2 2706          	jreq	L504
 911                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
 913  00a4 721a5201      	bset	20993,#5
 915  00a8 2004          	jra	L704
 916  00aa               L504:
 917                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
 919  00aa 721b5201      	bres	20993,#5
 920  00ae               L704:
 921                     ; 231 }
 924  00ae 81            	ret
 986                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
 986                     ; 239 {
 987                     	switch	.text
 988  00af               _SPI_GetCRC:
 990  00af 88            	push	a
 991       00000001      OFST:	set	1
 994                     ; 240   uint8_t crcreg = 0;
 996                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
 998                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1000  00b0 4d            	tnz	a
1001  00b1 2707          	jreq	L144
1002                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1004  00b3 c65207        	ld	a,20999
1005  00b6 6b01          	ld	(OFST+0,sp),a
1008  00b8 2005          	jra	L344
1009  00ba               L144:
1010                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1012  00ba c65206        	ld	a,20998
1013  00bd 6b01          	ld	(OFST+0,sp),a
1015  00bf               L344:
1016                     ; 255   return crcreg;
1018  00bf 7b01          	ld	a,(OFST+0,sp)
1021  00c1 5b01          	addw	sp,#1
1022  00c3 81            	ret
1047                     ; 263 void SPI_ResetCRC(void)
1047                     ; 264 {
1048                     	switch	.text
1049  00c4               _SPI_ResetCRC:
1053                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1055  00c4 a601          	ld	a,#1
1056  00c6 add9          	call	_SPI_CalculateCRCCmd
1058                     ; 270   SPI_Cmd(ENABLE);
1060  00c8 a601          	ld	a,#1
1061  00ca ad80          	call	_SPI_Cmd
1063                     ; 271 }
1066  00cc 81            	ret
1090                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1090                     ; 279 {
1091                     	switch	.text
1092  00cd               _SPI_GetCRCPolynomial:
1096                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1098  00cd c65205        	ld	a,20997
1101  00d0 81            	ret
1157                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1157                     ; 289 {
1158                     	switch	.text
1159  00d1               _SPI_BiDirectionalLineConfig:
1163                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1165                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1167  00d1 4d            	tnz	a
1168  00d2 2706          	jreq	L315
1169                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1171  00d4 721c5201      	bset	20993,#6
1173  00d8 2004          	jra	L515
1174  00da               L315:
1175                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1177  00da 721d5201      	bres	20993,#6
1178  00de               L515:
1179                     ; 301 }
1182  00de 81            	ret
1303                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1303                     ; 312 {
1304                     	switch	.text
1305  00df               _SPI_GetFlagStatus:
1307  00df 88            	push	a
1308       00000001      OFST:	set	1
1311                     ; 313   FlagStatus status = RESET;
1313                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1315                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1317  00e0 c45203        	and	a,20995
1318  00e3 2706          	jreq	L375
1319                     ; 320     status = SET; /* SPI_FLAG is set */
1321  00e5 a601          	ld	a,#1
1322  00e7 6b01          	ld	(OFST+0,sp),a
1325  00e9 2002          	jra	L575
1326  00eb               L375:
1327                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1329  00eb 0f01          	clr	(OFST+0,sp)
1331  00ed               L575:
1332                     ; 328   return status;
1334  00ed 7b01          	ld	a,(OFST+0,sp)
1337  00ef 5b01          	addw	sp,#1
1338  00f1 81            	ret
1373                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1373                     ; 347 {
1374                     	switch	.text
1375  00f2               _SPI_ClearFlag:
1379                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1381                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1383  00f2 43            	cpl	a
1384  00f3 c75203        	ld	20995,a
1385                     ; 351 }
1388  00f6 81            	ret
1462                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1462                     ; 367 {
1463                     	switch	.text
1464  00f7               _SPI_GetITStatus:
1466  00f7 88            	push	a
1467  00f8 89            	pushw	x
1468       00000002      OFST:	set	2
1471                     ; 368   ITStatus pendingbitstatus = RESET;
1473                     ; 369   uint8_t itpos = 0;
1475                     ; 370   uint8_t itmask1 = 0;
1477                     ; 371   uint8_t itmask2 = 0;
1479                     ; 372   uint8_t enablestatus = 0;
1481                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1483                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1485  00f9 a40f          	and	a,#15
1486  00fb 5f            	clrw	x
1487  00fc 97            	ld	xl,a
1488  00fd a601          	ld	a,#1
1489  00ff 5d            	tnzw	x
1490  0100 2704          	jreq	L05
1491  0102               L25:
1492  0102 48            	sll	a
1493  0103 5a            	decw	x
1494  0104 26fc          	jrne	L25
1495  0106               L05:
1496  0106 6b01          	ld	(OFST-1,sp),a
1498                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1500  0108 7b03          	ld	a,(OFST+1,sp)
1501  010a 4e            	swap	a
1502  010b a40f          	and	a,#15
1503  010d 6b02          	ld	(OFST+0,sp),a
1505                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1507  010f 7b02          	ld	a,(OFST+0,sp)
1508  0111 5f            	clrw	x
1509  0112 97            	ld	xl,a
1510  0113 a601          	ld	a,#1
1511  0115 5d            	tnzw	x
1512  0116 2704          	jreq	L45
1513  0118               L65:
1514  0118 48            	sll	a
1515  0119 5a            	decw	x
1516  011a 26fc          	jrne	L65
1517  011c               L45:
1518  011c 6b02          	ld	(OFST+0,sp),a
1520                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1522  011e c65203        	ld	a,20995
1523  0121 1402          	and	a,(OFST+0,sp)
1524  0123 6b02          	ld	(OFST+0,sp),a
1526                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1528  0125 c65202        	ld	a,20994
1529  0128 1501          	bcp	a,(OFST-1,sp)
1530  012a 270a          	jreq	L746
1532  012c 0d02          	tnz	(OFST+0,sp)
1533  012e 2706          	jreq	L746
1534                     ; 387     pendingbitstatus = SET;
1536  0130 a601          	ld	a,#1
1537  0132 6b02          	ld	(OFST+0,sp),a
1540  0134 2002          	jra	L156
1541  0136               L746:
1542                     ; 392     pendingbitstatus = RESET;
1544  0136 0f02          	clr	(OFST+0,sp)
1546  0138               L156:
1547                     ; 395   return  pendingbitstatus;
1549  0138 7b02          	ld	a,(OFST+0,sp)
1552  013a 5b03          	addw	sp,#3
1553  013c 81            	ret
1596                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1596                     ; 413 {
1597                     	switch	.text
1598  013d               _SPI_ClearITPendingBit:
1600  013d 88            	push	a
1601       00000001      OFST:	set	1
1604                     ; 414   uint8_t itpos = 0;
1606                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1608                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1610  013e a4f0          	and	a,#240
1611  0140 4e            	swap	a
1612  0141 a40f          	and	a,#15
1613  0143 5f            	clrw	x
1614  0144 97            	ld	xl,a
1615  0145 a601          	ld	a,#1
1616  0147 5d            	tnzw	x
1617  0148 2704          	jreq	L26
1618  014a               L46:
1619  014a 48            	sll	a
1620  014b 5a            	decw	x
1621  014c 26fc          	jrne	L46
1622  014e               L26:
1623  014e 6b01          	ld	(OFST+0,sp),a
1625                     ; 422   SPI->SR = (uint8_t)(~itpos);
1627  0150 7b01          	ld	a,(OFST+0,sp)
1628  0152 43            	cpl	a
1629  0153 c75203        	ld	20995,a
1630                     ; 424 }
1633  0156 84            	pop	a
1634  0157 81            	ret
1647                     	xdef	_SPI_ClearITPendingBit
1648                     	xdef	_SPI_GetITStatus
1649                     	xdef	_SPI_ClearFlag
1650                     	xdef	_SPI_GetFlagStatus
1651                     	xdef	_SPI_BiDirectionalLineConfig
1652                     	xdef	_SPI_GetCRCPolynomial
1653                     	xdef	_SPI_ResetCRC
1654                     	xdef	_SPI_GetCRC
1655                     	xdef	_SPI_CalculateCRCCmd
1656                     	xdef	_SPI_TransmitCRC
1657                     	xdef	_SPI_NSSInternalSoftwareCmd
1658                     	xdef	_SPI_ReceiveData
1659                     	xdef	_SPI_SendData
1660                     	xdef	_SPI_ITConfig
1661                     	xdef	_SPI_Cmd
1662                     	xdef	_SPI_Init
1663                     	xdef	_SPI_DeInit
1682                     	end
