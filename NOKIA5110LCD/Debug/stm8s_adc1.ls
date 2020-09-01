   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  41                     ; 52 void ADC1_DeInit(void)
  41                     ; 53 {
  43                     	switch	.text
  44  0000               _ADC1_DeInit:
  48                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  50  0000 725f5400      	clr	21504
  51                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  53  0004 725f5401      	clr	21505
  54                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  56  0008 725f5402      	clr	21506
  57                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  59  000c 725f5403      	clr	21507
  60                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  62  0010 725f5406      	clr	21510
  63                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  65  0014 725f5407      	clr	21511
  66                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  68  0018 35ff5408      	mov	21512,#255
  69                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  71  001c 35035409      	mov	21513,#3
  72                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  74  0020 725f540a      	clr	21514
  75                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  77  0024 725f540b      	clr	21515
  78                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  80  0028 725f540e      	clr	21518
  81                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  83  002c 725f540f      	clr	21519
  84                     ; 66 }
  87  0030 81            	ret
 538                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 538                     ; 89 {
 539                     	switch	.text
 540  0031               _ADC1_Init:
 542  0031 89            	pushw	x
 543       00000000      OFST:	set	0
 546                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 548                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 550                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 552                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 554                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 556                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 558                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 560                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 562                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 564  0032 7b08          	ld	a,(OFST+8,sp)
 565  0034 88            	push	a
 566  0035 9f            	ld	a,xl
 567  0036 97            	ld	xl,a
 568  0037 7b02          	ld	a,(OFST+2,sp)
 569  0039 95            	ld	xh,a
 570  003a cd013d        	call	_ADC1_ConversionConfig
 572  003d 84            	pop	a
 573                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 575  003e 7b05          	ld	a,(OFST+5,sp)
 576  0040 ad5a          	call	_ADC1_PrescalerConfig
 578                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 580  0042 7b07          	ld	a,(OFST+7,sp)
 581  0044 97            	ld	xl,a
 582  0045 7b06          	ld	a,(OFST+6,sp)
 583  0047 95            	ld	xh,a
 584  0048 cd016b        	call	_ADC1_ExternalTriggerConfig
 586                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 588  004b 7b0a          	ld	a,(OFST+10,sp)
 589  004d 97            	ld	xl,a
 590  004e 7b09          	ld	a,(OFST+9,sp)
 591  0050 95            	ld	xh,a
 592  0051 ad5c          	call	_ADC1_SchmittTriggerConfig
 594                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 596  0053 72105401      	bset	21505,#0
 597                     ; 119 }
 600  0057 85            	popw	x
 601  0058 81            	ret
 636                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 636                     ; 127 {
 637                     	switch	.text
 638  0059               _ADC1_Cmd:
 642                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 644                     ; 131   if (NewState != DISABLE)
 646  0059 4d            	tnz	a
 647  005a 2706          	jreq	L362
 648                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 650  005c 72105401      	bset	21505,#0
 652  0060 2004          	jra	L562
 653  0062               L362:
 654                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 656  0062 72115401      	bres	21505,#0
 657  0066               L562:
 658                     ; 139 }
 661  0066 81            	ret
 696                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 696                     ; 147 {
 697                     	switch	.text
 698  0067               _ADC1_ScanModeCmd:
 702                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 704                     ; 151   if (NewState != DISABLE)
 706  0067 4d            	tnz	a
 707  0068 2706          	jreq	L503
 708                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 710  006a 72125402      	bset	21506,#1
 712  006e 2004          	jra	L703
 713  0070               L503:
 714                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 716  0070 72135402      	bres	21506,#1
 717  0074               L703:
 718                     ; 159 }
 721  0074 81            	ret
 756                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 756                     ; 167 {
 757                     	switch	.text
 758  0075               _ADC1_DataBufferCmd:
 762                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 764                     ; 171   if (NewState != DISABLE)
 766  0075 4d            	tnz	a
 767  0076 2706          	jreq	L723
 768                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 770  0078 721e5403      	bset	21507,#7
 772  007c 2004          	jra	L133
 773  007e               L723:
 774                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 776  007e 721f5403      	bres	21507,#7
 777  0082               L133:
 778                     ; 179 }
 781  0082 81            	ret
 937                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
 937                     ; 191 {
 938                     	switch	.text
 939  0083               _ADC1_ITConfig:
 941  0083 89            	pushw	x
 942       00000000      OFST:	set	0
 945                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
 947                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 949                     ; 196   if (NewState != DISABLE)
 951  0084 0d05          	tnz	(OFST+5,sp)
 952  0086 2709          	jreq	L714
 953                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
 955  0088 9f            	ld	a,xl
 956  0089 ca5400        	or	a,21504
 957  008c c75400        	ld	21504,a
 959  008f 2009          	jra	L124
 960  0091               L714:
 961                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
 963  0091 7b02          	ld	a,(OFST+2,sp)
 964  0093 43            	cpl	a
 965  0094 c45400        	and	a,21504
 966  0097 c75400        	ld	21504,a
 967  009a               L124:
 968                     ; 206 }
 971  009a 85            	popw	x
 972  009b 81            	ret
1008                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1008                     ; 215 {
1009                     	switch	.text
1010  009c               _ADC1_PrescalerConfig:
1012  009c 88            	push	a
1013       00000000      OFST:	set	0
1016                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1018                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1020  009d c65401        	ld	a,21505
1021  00a0 a48f          	and	a,#143
1022  00a2 c75401        	ld	21505,a
1023                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1025  00a5 c65401        	ld	a,21505
1026  00a8 1a01          	or	a,(OFST+1,sp)
1027  00aa c75401        	ld	21505,a
1028                     ; 223 }
1031  00ad 84            	pop	a
1032  00ae 81            	ret
1079                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1079                     ; 234 {
1080                     	switch	.text
1081  00af               _ADC1_SchmittTriggerConfig:
1083  00af 89            	pushw	x
1084       00000000      OFST:	set	0
1087                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1089                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1091                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1093  00b0 9e            	ld	a,xh
1094  00b1 a1ff          	cp	a,#255
1095  00b3 2620          	jrne	L364
1096                     ; 241     if (NewState != DISABLE)
1098  00b5 9f            	ld	a,xl
1099  00b6 4d            	tnz	a
1100  00b7 270a          	jreq	L564
1101                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1103  00b9 725f5407      	clr	21511
1104                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1106  00bd 725f5406      	clr	21510
1108  00c1 2078          	jra	L174
1109  00c3               L564:
1110                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1112  00c3 c65407        	ld	a,21511
1113  00c6 aaff          	or	a,#255
1114  00c8 c75407        	ld	21511,a
1115                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1117  00cb c65406        	ld	a,21510
1118  00ce aaff          	or	a,#255
1119  00d0 c75406        	ld	21510,a
1120  00d3 2066          	jra	L174
1121  00d5               L364:
1122                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1124  00d5 7b01          	ld	a,(OFST+1,sp)
1125  00d7 a108          	cp	a,#8
1126  00d9 242f          	jruge	L374
1127                     ; 254     if (NewState != DISABLE)
1129  00db 0d02          	tnz	(OFST+2,sp)
1130  00dd 2716          	jreq	L574
1131                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1133  00df 7b01          	ld	a,(OFST+1,sp)
1134  00e1 5f            	clrw	x
1135  00e2 97            	ld	xl,a
1136  00e3 a601          	ld	a,#1
1137  00e5 5d            	tnzw	x
1138  00e6 2704          	jreq	L42
1139  00e8               L62:
1140  00e8 48            	sll	a
1141  00e9 5a            	decw	x
1142  00ea 26fc          	jrne	L62
1143  00ec               L42:
1144  00ec 43            	cpl	a
1145  00ed c45407        	and	a,21511
1146  00f0 c75407        	ld	21511,a
1148  00f3 2046          	jra	L174
1149  00f5               L574:
1150                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1152  00f5 7b01          	ld	a,(OFST+1,sp)
1153  00f7 5f            	clrw	x
1154  00f8 97            	ld	xl,a
1155  00f9 a601          	ld	a,#1
1156  00fb 5d            	tnzw	x
1157  00fc 2704          	jreq	L03
1158  00fe               L23:
1159  00fe 48            	sll	a
1160  00ff 5a            	decw	x
1161  0100 26fc          	jrne	L23
1162  0102               L03:
1163  0102 ca5407        	or	a,21511
1164  0105 c75407        	ld	21511,a
1165  0108 2031          	jra	L174
1166  010a               L374:
1167                     ; 265     if (NewState != DISABLE)
1169  010a 0d02          	tnz	(OFST+2,sp)
1170  010c 2718          	jreq	L305
1171                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1173  010e 7b01          	ld	a,(OFST+1,sp)
1174  0110 a008          	sub	a,#8
1175  0112 5f            	clrw	x
1176  0113 97            	ld	xl,a
1177  0114 a601          	ld	a,#1
1178  0116 5d            	tnzw	x
1179  0117 2704          	jreq	L43
1180  0119               L63:
1181  0119 48            	sll	a
1182  011a 5a            	decw	x
1183  011b 26fc          	jrne	L63
1184  011d               L43:
1185  011d 43            	cpl	a
1186  011e c45406        	and	a,21510
1187  0121 c75406        	ld	21510,a
1189  0124 2015          	jra	L174
1190  0126               L305:
1191                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1193  0126 7b01          	ld	a,(OFST+1,sp)
1194  0128 a008          	sub	a,#8
1195  012a 5f            	clrw	x
1196  012b 97            	ld	xl,a
1197  012c a601          	ld	a,#1
1198  012e 5d            	tnzw	x
1199  012f 2704          	jreq	L04
1200  0131               L24:
1201  0131 48            	sll	a
1202  0132 5a            	decw	x
1203  0133 26fc          	jrne	L24
1204  0135               L04:
1205  0135 ca5406        	or	a,21510
1206  0138 c75406        	ld	21510,a
1207  013b               L174:
1208                     ; 274 }
1211  013b 85            	popw	x
1212  013c 81            	ret
1269                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1269                     ; 287 {
1270                     	switch	.text
1271  013d               _ADC1_ConversionConfig:
1273  013d 89            	pushw	x
1274       00000000      OFST:	set	0
1277                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1279                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1281                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1283                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1285  013e 72175402      	bres	21506,#3
1286                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1288  0142 c65402        	ld	a,21506
1289  0145 1a05          	or	a,(OFST+5,sp)
1290  0147 c75402        	ld	21506,a
1291                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1293  014a 9e            	ld	a,xh
1294  014b a101          	cp	a,#1
1295  014d 2606          	jrne	L535
1296                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1298  014f 72125401      	bset	21505,#1
1300  0153 2004          	jra	L735
1301  0155               L535:
1302                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1304  0155 72135401      	bres	21505,#1
1305  0159               L735:
1306                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1308  0159 c65400        	ld	a,21504
1309  015c a4f0          	and	a,#240
1310  015e c75400        	ld	21504,a
1311                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1313  0161 c65400        	ld	a,21504
1314  0164 1a02          	or	a,(OFST+2,sp)
1315  0166 c75400        	ld	21504,a
1316                     ; 313 }
1319  0169 85            	popw	x
1320  016a 81            	ret
1366                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1366                     ; 326 {
1367                     	switch	.text
1368  016b               _ADC1_ExternalTriggerConfig:
1370  016b 89            	pushw	x
1371       00000000      OFST:	set	0
1374                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1376                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1378                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1380  016c c65402        	ld	a,21506
1381  016f a4cf          	and	a,#207
1382  0171 c75402        	ld	21506,a
1383                     ; 334   if (NewState != DISABLE)
1385  0174 9f            	ld	a,xl
1386  0175 4d            	tnz	a
1387  0176 2706          	jreq	L365
1388                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1390  0178 721c5402      	bset	21506,#6
1392  017c 2004          	jra	L565
1393  017e               L365:
1394                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1396  017e 721d5402      	bres	21506,#6
1397  0182               L565:
1398                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1400  0182 c65402        	ld	a,21506
1401  0185 1a01          	or	a,(OFST+1,sp)
1402  0187 c75402        	ld	21506,a
1403                     ; 347 }
1406  018a 85            	popw	x
1407  018b 81            	ret
1431                     ; 358 void ADC1_StartConversion(void)
1431                     ; 359 {
1432                     	switch	.text
1433  018c               _ADC1_StartConversion:
1437                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1439  018c 72105401      	bset	21505,#0
1440                     ; 361 }
1443  0190 81            	ret
1483                     ; 370 uint16_t ADC1_GetConversionValue(void)
1483                     ; 371 {
1484                     	switch	.text
1485  0191               _ADC1_GetConversionValue:
1487  0191 5205          	subw	sp,#5
1488       00000005      OFST:	set	5
1491                     ; 372   uint16_t temph = 0;
1493                     ; 373   uint8_t templ = 0;
1495                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1497  0193 c65402        	ld	a,21506
1498  0196 a508          	bcp	a,#8
1499  0198 2715          	jreq	L516
1500                     ; 378     templ = ADC1->DRL;
1502  019a c65405        	ld	a,21509
1503  019d 6b03          	ld	(OFST-2,sp),a
1505                     ; 380     temph = ADC1->DRH;
1507  019f c65404        	ld	a,21508
1508  01a2 5f            	clrw	x
1509  01a3 97            	ld	xl,a
1510  01a4 1f04          	ldw	(OFST-1,sp),x
1512                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1514  01a6 1e04          	ldw	x,(OFST-1,sp)
1515  01a8 7b03          	ld	a,(OFST-2,sp)
1516  01aa 02            	rlwa	x,a
1517  01ab 1f04          	ldw	(OFST-1,sp),x
1520  01ad 2021          	jra	L716
1521  01af               L516:
1522                     ; 387     temph = ADC1->DRH;
1524  01af c65404        	ld	a,21508
1525  01b2 5f            	clrw	x
1526  01b3 97            	ld	xl,a
1527  01b4 1f04          	ldw	(OFST-1,sp),x
1529                     ; 389     templ = ADC1->DRL;
1531  01b6 c65405        	ld	a,21509
1532  01b9 6b03          	ld	(OFST-2,sp),a
1534                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1536  01bb 1e04          	ldw	x,(OFST-1,sp)
1537  01bd 4f            	clr	a
1538  01be 02            	rlwa	x,a
1539  01bf 1f01          	ldw	(OFST-4,sp),x
1541  01c1 7b03          	ld	a,(OFST-2,sp)
1542  01c3 97            	ld	xl,a
1543  01c4 a640          	ld	a,#64
1544  01c6 42            	mul	x,a
1545  01c7 01            	rrwa	x,a
1546  01c8 1a02          	or	a,(OFST-3,sp)
1547  01ca 01            	rrwa	x,a
1548  01cb 1a01          	or	a,(OFST-4,sp)
1549  01cd 01            	rrwa	x,a
1550  01ce 1f04          	ldw	(OFST-1,sp),x
1552  01d0               L716:
1553                     ; 394   return ((uint16_t)temph);
1555  01d0 1e04          	ldw	x,(OFST-1,sp)
1558  01d2 5b05          	addw	sp,#5
1559  01d4 81            	ret
1605                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1605                     ; 406 {
1606                     	switch	.text
1607  01d5               _ADC1_AWDChannelConfig:
1609  01d5 89            	pushw	x
1610       00000000      OFST:	set	0
1613                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1615                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1617                     ; 411   if (Channel < (uint8_t)8)
1619  01d6 9e            	ld	a,xh
1620  01d7 a108          	cp	a,#8
1621  01d9 242e          	jruge	L346
1622                     ; 413     if (NewState != DISABLE)
1624  01db 9f            	ld	a,xl
1625  01dc 4d            	tnz	a
1626  01dd 2714          	jreq	L546
1627                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1629  01df 9e            	ld	a,xh
1630  01e0 5f            	clrw	x
1631  01e1 97            	ld	xl,a
1632  01e2 a601          	ld	a,#1
1633  01e4 5d            	tnzw	x
1634  01e5 2704          	jreq	L65
1635  01e7               L06:
1636  01e7 48            	sll	a
1637  01e8 5a            	decw	x
1638  01e9 26fc          	jrne	L06
1639  01eb               L65:
1640  01eb ca540f        	or	a,21519
1641  01ee c7540f        	ld	21519,a
1643  01f1 2047          	jra	L156
1644  01f3               L546:
1645                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
1647  01f3 7b01          	ld	a,(OFST+1,sp)
1648  01f5 5f            	clrw	x
1649  01f6 97            	ld	xl,a
1650  01f7 a601          	ld	a,#1
1651  01f9 5d            	tnzw	x
1652  01fa 2704          	jreq	L26
1653  01fc               L46:
1654  01fc 48            	sll	a
1655  01fd 5a            	decw	x
1656  01fe 26fc          	jrne	L46
1657  0200               L26:
1658  0200 43            	cpl	a
1659  0201 c4540f        	and	a,21519
1660  0204 c7540f        	ld	21519,a
1661  0207 2031          	jra	L156
1662  0209               L346:
1663                     ; 424     if (NewState != DISABLE)
1665  0209 0d02          	tnz	(OFST+2,sp)
1666  020b 2717          	jreq	L356
1667                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
1669  020d 7b01          	ld	a,(OFST+1,sp)
1670  020f a008          	sub	a,#8
1671  0211 5f            	clrw	x
1672  0212 97            	ld	xl,a
1673  0213 a601          	ld	a,#1
1674  0215 5d            	tnzw	x
1675  0216 2704          	jreq	L66
1676  0218               L07:
1677  0218 48            	sll	a
1678  0219 5a            	decw	x
1679  021a 26fc          	jrne	L07
1680  021c               L66:
1681  021c ca540e        	or	a,21518
1682  021f c7540e        	ld	21518,a
1684  0222 2016          	jra	L156
1685  0224               L356:
1686                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
1688  0224 7b01          	ld	a,(OFST+1,sp)
1689  0226 a008          	sub	a,#8
1690  0228 5f            	clrw	x
1691  0229 97            	ld	xl,a
1692  022a a601          	ld	a,#1
1693  022c 5d            	tnzw	x
1694  022d 2704          	jreq	L27
1695  022f               L47:
1696  022f 48            	sll	a
1697  0230 5a            	decw	x
1698  0231 26fc          	jrne	L47
1699  0233               L27:
1700  0233 43            	cpl	a
1701  0234 c4540e        	and	a,21518
1702  0237 c7540e        	ld	21518,a
1703  023a               L156:
1704                     ; 433 }
1707  023a 85            	popw	x
1708  023b 81            	ret
1741                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
1741                     ; 442 {
1742                     	switch	.text
1743  023c               _ADC1_SetHighThreshold:
1745  023c 89            	pushw	x
1746       00000000      OFST:	set	0
1749                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
1751  023d 54            	srlw	x
1752  023e 54            	srlw	x
1753  023f 9f            	ld	a,xl
1754  0240 c75408        	ld	21512,a
1755                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
1757  0243 7b02          	ld	a,(OFST+2,sp)
1758  0245 c75409        	ld	21513,a
1759                     ; 445 }
1762  0248 85            	popw	x
1763  0249 81            	ret
1796                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
1796                     ; 454 {
1797                     	switch	.text
1798  024a               _ADC1_SetLowThreshold:
1802                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
1804  024a 9f            	ld	a,xl
1805  024b c7540b        	ld	21515,a
1806                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
1808  024e 54            	srlw	x
1809  024f 54            	srlw	x
1810  0250 9f            	ld	a,xl
1811  0251 c7540a        	ld	21514,a
1812                     ; 457 }
1815  0254 81            	ret
1862                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
1862                     ; 467 {
1863                     	switch	.text
1864  0255               _ADC1_GetBufferValue:
1866  0255 88            	push	a
1867  0256 5205          	subw	sp,#5
1868       00000005      OFST:	set	5
1871                     ; 468   uint16_t temph = 0;
1873                     ; 469   uint8_t templ = 0;
1875                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
1877                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1879  0258 c65402        	ld	a,21506
1880  025b a508          	bcp	a,#8
1881  025d 271f          	jreq	L727
1882                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1884  025f 7b06          	ld	a,(OFST+1,sp)
1885  0261 48            	sll	a
1886  0262 5f            	clrw	x
1887  0263 97            	ld	xl,a
1888  0264 d653e1        	ld	a,(21473,x)
1889  0267 6b03          	ld	(OFST-2,sp),a
1891                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1893  0269 7b06          	ld	a,(OFST+1,sp)
1894  026b 48            	sll	a
1895  026c 5f            	clrw	x
1896  026d 97            	ld	xl,a
1897  026e d653e0        	ld	a,(21472,x)
1898  0271 5f            	clrw	x
1899  0272 97            	ld	xl,a
1900  0273 1f04          	ldw	(OFST-1,sp),x
1902                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1904  0275 1e04          	ldw	x,(OFST-1,sp)
1905  0277 7b03          	ld	a,(OFST-2,sp)
1906  0279 02            	rlwa	x,a
1907  027a 1f04          	ldw	(OFST-1,sp),x
1910  027c 202b          	jra	L137
1911  027e               L727:
1912                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1914  027e 7b06          	ld	a,(OFST+1,sp)
1915  0280 48            	sll	a
1916  0281 5f            	clrw	x
1917  0282 97            	ld	xl,a
1918  0283 d653e0        	ld	a,(21472,x)
1919  0286 5f            	clrw	x
1920  0287 97            	ld	xl,a
1921  0288 1f04          	ldw	(OFST-1,sp),x
1923                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1925  028a 7b06          	ld	a,(OFST+1,sp)
1926  028c 48            	sll	a
1927  028d 5f            	clrw	x
1928  028e 97            	ld	xl,a
1929  028f d653e1        	ld	a,(21473,x)
1930  0292 6b03          	ld	(OFST-2,sp),a
1932                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
1934  0294 1e04          	ldw	x,(OFST-1,sp)
1935  0296 4f            	clr	a
1936  0297 02            	rlwa	x,a
1937  0298 1f01          	ldw	(OFST-4,sp),x
1939  029a 7b03          	ld	a,(OFST-2,sp)
1940  029c 97            	ld	xl,a
1941  029d a640          	ld	a,#64
1942  029f 42            	mul	x,a
1943  02a0 01            	rrwa	x,a
1944  02a1 1a02          	or	a,(OFST-3,sp)
1945  02a3 01            	rrwa	x,a
1946  02a4 1a01          	or	a,(OFST-4,sp)
1947  02a6 01            	rrwa	x,a
1948  02a7 1f04          	ldw	(OFST-1,sp),x
1950  02a9               L137:
1951                     ; 493   return ((uint16_t)temph);
1953  02a9 1e04          	ldw	x,(OFST-1,sp)
1956  02ab 5b06          	addw	sp,#6
1957  02ad 81            	ret
2021                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2021                     ; 503 {
2022                     	switch	.text
2023  02ae               _ADC1_GetAWDChannelStatus:
2025  02ae 88            	push	a
2026  02af 88            	push	a
2027       00000001      OFST:	set	1
2030                     ; 504   uint8_t status = 0;
2032                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2034                     ; 509   if (Channel < (uint8_t)8)
2036  02b0 a108          	cp	a,#8
2037  02b2 2412          	jruge	L367
2038                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2040  02b4 5f            	clrw	x
2041  02b5 97            	ld	xl,a
2042  02b6 a601          	ld	a,#1
2043  02b8 5d            	tnzw	x
2044  02b9 2704          	jreq	L601
2045  02bb               L011:
2046  02bb 48            	sll	a
2047  02bc 5a            	decw	x
2048  02bd 26fc          	jrne	L011
2049  02bf               L601:
2050  02bf c4540d        	and	a,21517
2051  02c2 6b01          	ld	(OFST+0,sp),a
2054  02c4 2014          	jra	L567
2055  02c6               L367:
2056                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2058  02c6 7b02          	ld	a,(OFST+1,sp)
2059  02c8 a008          	sub	a,#8
2060  02ca 5f            	clrw	x
2061  02cb 97            	ld	xl,a
2062  02cc a601          	ld	a,#1
2063  02ce 5d            	tnzw	x
2064  02cf 2704          	jreq	L211
2065  02d1               L411:
2066  02d1 48            	sll	a
2067  02d2 5a            	decw	x
2068  02d3 26fc          	jrne	L411
2069  02d5               L211:
2070  02d5 c4540c        	and	a,21516
2071  02d8 6b01          	ld	(OFST+0,sp),a
2073  02da               L567:
2074                     ; 518   return ((FlagStatus)status);
2076  02da 7b01          	ld	a,(OFST+0,sp)
2079  02dc 85            	popw	x
2080  02dd 81            	ret
2234                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2234                     ; 528 {
2235                     	switch	.text
2236  02de               _ADC1_GetFlagStatus:
2238  02de 88            	push	a
2239  02df 88            	push	a
2240       00000001      OFST:	set	1
2243                     ; 529   uint8_t flagstatus = 0;
2245                     ; 530   uint8_t temp = 0;
2247                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2249                     ; 535   if ((Flag & 0x0F) == 0x01)
2251  02e0 a40f          	and	a,#15
2252  02e2 a101          	cp	a,#1
2253  02e4 2609          	jrne	L1501
2254                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2256  02e6 c65403        	ld	a,21507
2257  02e9 a440          	and	a,#64
2258  02eb 6b01          	ld	(OFST+0,sp),a
2261  02ed 2045          	jra	L3501
2262  02ef               L1501:
2263                     ; 540   else if ((Flag & 0xF0) == 0x10)
2265  02ef 7b02          	ld	a,(OFST+1,sp)
2266  02f1 a4f0          	and	a,#240
2267  02f3 a110          	cp	a,#16
2268  02f5 2636          	jrne	L5501
2269                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2271  02f7 7b02          	ld	a,(OFST+1,sp)
2272  02f9 a40f          	and	a,#15
2273  02fb 6b01          	ld	(OFST+0,sp),a
2275                     ; 544     if (temp < 8)
2277  02fd 7b01          	ld	a,(OFST+0,sp)
2278  02ff a108          	cp	a,#8
2279  0301 2414          	jruge	L7501
2280                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2282  0303 7b01          	ld	a,(OFST+0,sp)
2283  0305 5f            	clrw	x
2284  0306 97            	ld	xl,a
2285  0307 a601          	ld	a,#1
2286  0309 5d            	tnzw	x
2287  030a 2704          	jreq	L021
2288  030c               L221:
2289  030c 48            	sll	a
2290  030d 5a            	decw	x
2291  030e 26fc          	jrne	L221
2292  0310               L021:
2293  0310 c4540d        	and	a,21517
2294  0313 6b01          	ld	(OFST+0,sp),a
2297  0315 201d          	jra	L3501
2298  0317               L7501:
2299                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2301  0317 7b01          	ld	a,(OFST+0,sp)
2302  0319 a008          	sub	a,#8
2303  031b 5f            	clrw	x
2304  031c 97            	ld	xl,a
2305  031d a601          	ld	a,#1
2306  031f 5d            	tnzw	x
2307  0320 2704          	jreq	L421
2308  0322               L621:
2309  0322 48            	sll	a
2310  0323 5a            	decw	x
2311  0324 26fc          	jrne	L621
2312  0326               L421:
2313  0326 c4540c        	and	a,21516
2314  0329 6b01          	ld	(OFST+0,sp),a
2316  032b 2007          	jra	L3501
2317  032d               L5501:
2318                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2320  032d c65400        	ld	a,21504
2321  0330 1402          	and	a,(OFST+1,sp)
2322  0332 6b01          	ld	(OFST+0,sp),a
2324  0334               L3501:
2325                     ; 557   return ((FlagStatus)flagstatus);
2327  0334 7b01          	ld	a,(OFST+0,sp)
2330  0336 85            	popw	x
2331  0337 81            	ret
2373                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2373                     ; 568 {
2374                     	switch	.text
2375  0338               _ADC1_ClearFlag:
2377  0338 88            	push	a
2378  0339 88            	push	a
2379       00000001      OFST:	set	1
2382                     ; 569   uint8_t temp = 0;
2384                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2386                     ; 574   if ((Flag & 0x0F) == 0x01)
2388  033a a40f          	and	a,#15
2389  033c a101          	cp	a,#1
2390  033e 2606          	jrne	L5011
2391                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2393  0340 721d5403      	bres	21507,#6
2395  0344 204b          	jra	L7011
2396  0346               L5011:
2397                     ; 579   else if ((Flag & 0xF0) == 0x10)
2399  0346 7b02          	ld	a,(OFST+1,sp)
2400  0348 a4f0          	and	a,#240
2401  034a a110          	cp	a,#16
2402  034c 263a          	jrne	L1111
2403                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2405  034e 7b02          	ld	a,(OFST+1,sp)
2406  0350 a40f          	and	a,#15
2407  0352 6b01          	ld	(OFST+0,sp),a
2409                     ; 583     if (temp < 8)
2411  0354 7b01          	ld	a,(OFST+0,sp)
2412  0356 a108          	cp	a,#8
2413  0358 2416          	jruge	L3111
2414                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2416  035a 7b01          	ld	a,(OFST+0,sp)
2417  035c 5f            	clrw	x
2418  035d 97            	ld	xl,a
2419  035e a601          	ld	a,#1
2420  0360 5d            	tnzw	x
2421  0361 2704          	jreq	L231
2422  0363               L431:
2423  0363 48            	sll	a
2424  0364 5a            	decw	x
2425  0365 26fc          	jrne	L431
2426  0367               L231:
2427  0367 43            	cpl	a
2428  0368 c4540d        	and	a,21517
2429  036b c7540d        	ld	21517,a
2431  036e 2021          	jra	L7011
2432  0370               L3111:
2433                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2435  0370 7b01          	ld	a,(OFST+0,sp)
2436  0372 a008          	sub	a,#8
2437  0374 5f            	clrw	x
2438  0375 97            	ld	xl,a
2439  0376 a601          	ld	a,#1
2440  0378 5d            	tnzw	x
2441  0379 2704          	jreq	L631
2442  037b               L041:
2443  037b 48            	sll	a
2444  037c 5a            	decw	x
2445  037d 26fc          	jrne	L041
2446  037f               L631:
2447  037f 43            	cpl	a
2448  0380 c4540c        	and	a,21516
2449  0383 c7540c        	ld	21516,a
2450  0386 2009          	jra	L7011
2451  0388               L1111:
2452                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2454  0388 7b02          	ld	a,(OFST+1,sp)
2455  038a 43            	cpl	a
2456  038b c45400        	and	a,21504
2457  038e c75400        	ld	21504,a
2458  0391               L7011:
2459                     ; 596 }
2462  0391 85            	popw	x
2463  0392 81            	ret
2516                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2516                     ; 617 {
2517                     	switch	.text
2518  0393               _ADC1_GetITStatus:
2520  0393 89            	pushw	x
2521  0394 88            	push	a
2522       00000001      OFST:	set	1
2525                     ; 618   ITStatus itstatus = RESET;
2527                     ; 619   uint8_t temp = 0;
2529                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2531                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2533  0395 01            	rrwa	x,a
2534  0396 a4f0          	and	a,#240
2535  0398 5f            	clrw	x
2536  0399 02            	rlwa	x,a
2537  039a a30010        	cpw	x,#16
2538  039d 2636          	jrne	L5411
2539                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2541  039f 7b03          	ld	a,(OFST+2,sp)
2542  03a1 a40f          	and	a,#15
2543  03a3 6b01          	ld	(OFST+0,sp),a
2545                     ; 628     if (temp < 8)
2547  03a5 7b01          	ld	a,(OFST+0,sp)
2548  03a7 a108          	cp	a,#8
2549  03a9 2414          	jruge	L7411
2550                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2552  03ab 7b01          	ld	a,(OFST+0,sp)
2553  03ad 5f            	clrw	x
2554  03ae 97            	ld	xl,a
2555  03af a601          	ld	a,#1
2556  03b1 5d            	tnzw	x
2557  03b2 2704          	jreq	L441
2558  03b4               L641:
2559  03b4 48            	sll	a
2560  03b5 5a            	decw	x
2561  03b6 26fc          	jrne	L641
2562  03b8               L441:
2563  03b8 c4540d        	and	a,21517
2564  03bb 6b01          	ld	(OFST+0,sp),a
2567  03bd 201d          	jra	L3511
2568  03bf               L7411:
2569                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2571  03bf 7b01          	ld	a,(OFST+0,sp)
2572  03c1 a008          	sub	a,#8
2573  03c3 5f            	clrw	x
2574  03c4 97            	ld	xl,a
2575  03c5 a601          	ld	a,#1
2576  03c7 5d            	tnzw	x
2577  03c8 2704          	jreq	L051
2578  03ca               L251:
2579  03ca 48            	sll	a
2580  03cb 5a            	decw	x
2581  03cc 26fc          	jrne	L251
2582  03ce               L051:
2583  03ce c4540c        	and	a,21516
2584  03d1 6b01          	ld	(OFST+0,sp),a
2586  03d3 2007          	jra	L3511
2587  03d5               L5411:
2588                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
2590  03d5 c65400        	ld	a,21504
2591  03d8 1403          	and	a,(OFST+2,sp)
2592  03da 6b01          	ld	(OFST+0,sp),a
2594  03dc               L3511:
2595                     ; 641   return ((ITStatus)itstatus);
2597  03dc 7b01          	ld	a,(OFST+0,sp)
2600  03de 5b03          	addw	sp,#3
2601  03e0 81            	ret
2644                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
2644                     ; 663 {
2645                     	switch	.text
2646  03e1               _ADC1_ClearITPendingBit:
2648  03e1 89            	pushw	x
2649  03e2 88            	push	a
2650       00000001      OFST:	set	1
2653                     ; 664   uint8_t temp = 0;
2655                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2657                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2659  03e3 01            	rrwa	x,a
2660  03e4 a4f0          	and	a,#240
2661  03e6 5f            	clrw	x
2662  03e7 02            	rlwa	x,a
2663  03e8 a30010        	cpw	x,#16
2664  03eb 263a          	jrne	L5711
2665                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2667  03ed 7b03          	ld	a,(OFST+2,sp)
2668  03ef a40f          	and	a,#15
2669  03f1 6b01          	ld	(OFST+0,sp),a
2671                     ; 673     if (temp < 8)
2673  03f3 7b01          	ld	a,(OFST+0,sp)
2674  03f5 a108          	cp	a,#8
2675  03f7 2416          	jruge	L7711
2676                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2678  03f9 7b01          	ld	a,(OFST+0,sp)
2679  03fb 5f            	clrw	x
2680  03fc 97            	ld	xl,a
2681  03fd a601          	ld	a,#1
2682  03ff 5d            	tnzw	x
2683  0400 2704          	jreq	L651
2684  0402               L061:
2685  0402 48            	sll	a
2686  0403 5a            	decw	x
2687  0404 26fc          	jrne	L061
2688  0406               L651:
2689  0406 43            	cpl	a
2690  0407 c4540d        	and	a,21517
2691  040a c7540d        	ld	21517,a
2693  040d 2021          	jra	L3021
2694  040f               L7711:
2695                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2697  040f 7b01          	ld	a,(OFST+0,sp)
2698  0411 a008          	sub	a,#8
2699  0413 5f            	clrw	x
2700  0414 97            	ld	xl,a
2701  0415 a601          	ld	a,#1
2702  0417 5d            	tnzw	x
2703  0418 2704          	jreq	L261
2704  041a               L461:
2705  041a 48            	sll	a
2706  041b 5a            	decw	x
2707  041c 26fc          	jrne	L461
2708  041e               L261:
2709  041e 43            	cpl	a
2710  041f c4540c        	and	a,21516
2711  0422 c7540c        	ld	21516,a
2712  0425 2009          	jra	L3021
2713  0427               L5711:
2714                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
2716  0427 7b03          	ld	a,(OFST+2,sp)
2717  0429 43            	cpl	a
2718  042a c45400        	and	a,21504
2719  042d c75400        	ld	21504,a
2720  0430               L3021:
2721                     ; 686 }
2724  0430 5b03          	addw	sp,#3
2725  0432 81            	ret
2738                     	xdef	_ADC1_ClearITPendingBit
2739                     	xdef	_ADC1_GetITStatus
2740                     	xdef	_ADC1_ClearFlag
2741                     	xdef	_ADC1_GetFlagStatus
2742                     	xdef	_ADC1_GetAWDChannelStatus
2743                     	xdef	_ADC1_GetBufferValue
2744                     	xdef	_ADC1_SetLowThreshold
2745                     	xdef	_ADC1_SetHighThreshold
2746                     	xdef	_ADC1_GetConversionValue
2747                     	xdef	_ADC1_StartConversion
2748                     	xdef	_ADC1_AWDChannelConfig
2749                     	xdef	_ADC1_ExternalTriggerConfig
2750                     	xdef	_ADC1_ConversionConfig
2751                     	xdef	_ADC1_SchmittTriggerConfig
2752                     	xdef	_ADC1_PrescalerConfig
2753                     	xdef	_ADC1_ITConfig
2754                     	xdef	_ADC1_DataBufferCmd
2755                     	xdef	_ADC1_ScanModeCmd
2756                     	xdef	_ADC1_Cmd
2757                     	xdef	_ADC1_Init
2758                     	xdef	_ADC1_DeInit
2777                     	end
