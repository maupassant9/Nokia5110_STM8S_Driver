   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  42                     ; 40 private void sce0(void)
  42                     ; 41 {
  44                     	switch	.text
  45  0000               _sce0:
  49                     ; 42 	GPIO_WriteLow(LCD5110_SCE_GPIO,LCD5110_SCE_PIN);
  51  0000 4b04          	push	#4
  52  0002 ae5000        	ldw	x,#20480
  53  0005 cd0000        	call	_GPIO_WriteLow
  55  0008 84            	pop	a
  56                     ; 43 }
  59  0009 81            	ret
  83                     ; 45 private void sce1(void)
  83                     ; 46 {
  84                     	switch	.text
  85  000a               _sce1:
  89                     ; 47 	GPIO_WriteHigh(LCD5110_SCE_GPIO,LCD5110_SCE_PIN);
  91  000a 4b04          	push	#4
  92  000c ae5000        	ldw	x,#20480
  93  000f cd0000        	call	_GPIO_WriteHigh
  95  0012 84            	pop	a
  96                     ; 48 }
  99  0013 81            	ret
 123                     ; 50 private void res0(void)
 123                     ; 51 {
 124                     	switch	.text
 125  0014               _res0:
 129                     ; 52 	GPIO_WriteLow(LCD5110_RESET_GPIO,LCD5110_RESET_PIN);
 131  0014 4b10          	push	#16
 132  0016 ae500f        	ldw	x,#20495
 133  0019 cd0000        	call	_GPIO_WriteLow
 135  001c 84            	pop	a
 136                     ; 53 }
 139  001d 81            	ret
 163                     ; 55 private void res1(void)
 163                     ; 56 {
 164                     	switch	.text
 165  001e               _res1:
 169                     ; 57 	GPIO_WriteHigh(LCD5110_RESET_GPIO,LCD5110_RESET_PIN);
 171  001e 4b10          	push	#16
 172  0020 ae500f        	ldw	x,#20495
 173  0023 cd0000        	call	_GPIO_WriteHigh
 175  0026 84            	pop	a
 176                     ; 58 }
 179  0027 81            	ret
 203                     ; 60 private void dc0(void)
 203                     ; 61 {
 204                     	switch	.text
 205  0028               _dc0:
 209                     ; 62 	GPIO_WriteLow(LCD5110_DC_GPIO,LCD5110_DC_PIN);
 211  0028 4b02          	push	#2
 212  002a ae5000        	ldw	x,#20480
 213  002d cd0000        	call	_GPIO_WriteLow
 215  0030 84            	pop	a
 216                     ; 63 }
 219  0031 81            	ret
 243                     ; 65 private void dc1(void)
 243                     ; 66 {
 244                     	switch	.text
 245  0032               _dc1:
 249                     ; 67 	GPIO_WriteHigh(LCD5110_DC_GPIO,LCD5110_DC_PIN);
 251  0032 4b02          	push	#2
 252  0034 ae5000        	ldw	x,#20480
 253  0037 cd0000        	call	_GPIO_WriteHigh
 255  003a 84            	pop	a
 256                     ; 68 }
 259  003b 81            	ret
 283                     ; 70 private void sdin0(void)
 283                     ; 71 {
 284                     	switch	.text
 285  003c               _sdin0:
 289                     ; 72 	GPIO_WriteLow(LCD5110_DA_GPIO,LCD5110_DA_PIN);
 291  003c 4b40          	push	#64
 292  003e ae500f        	ldw	x,#20495
 293  0041 cd0000        	call	_GPIO_WriteLow
 295  0044 84            	pop	a
 296                     ; 73 }
 299  0045 81            	ret
 323                     ; 75 private void sdin1(void)
 323                     ; 76 {
 324                     	switch	.text
 325  0046               _sdin1:
 329                     ; 77 	GPIO_WriteHigh(LCD5110_DA_GPIO,LCD5110_DA_PIN);
 331  0046 4b40          	push	#64
 332  0048 ae500f        	ldw	x,#20495
 333  004b cd0000        	call	_GPIO_WriteHigh
 335  004e 84            	pop	a
 336                     ; 78 }
 339  004f 81            	ret
 363                     ; 80 private void sclk0(void)
 363                     ; 81 {
 364                     	switch	.text
 365  0050               _sclk0:
 369                     ; 82 	GPIO_WriteLow(LCD5110_CLK_GPIO,LCD5110_CLK_PIN);
 371  0050 4b20          	push	#32
 372  0052 ae500f        	ldw	x,#20495
 373  0055 cd0000        	call	_GPIO_WriteLow
 375  0058 84            	pop	a
 376                     ; 83 }
 379  0059 81            	ret
 403                     ; 85 private void sclk1(void)
 403                     ; 86 {
 404                     	switch	.text
 405  005a               _sclk1:
 409                     ; 87 	GPIO_WriteHigh(LCD5110_CLK_GPIO,LCD5110_CLK_PIN);
 411  005a 4b20          	push	#32
 412  005c ae500f        	ldw	x,#20495
 413  005f cd0000        	call	_GPIO_WriteHigh
 415  0062 84            	pop	a
 416                     ; 88 }
 419  0063 81            	ret
 443                     ; 90 private void backled0(void)
 443                     ; 91 {
 444                     	switch	.text
 445  0064               _backled0:
 449                     ; 92 	GPIO_WriteLow(LCD5110_LED_GPIO,LCD5110_LED_PIN);
 451  0064 4b04          	push	#4
 452  0066 ae500a        	ldw	x,#20490
 453  0069 cd0000        	call	_GPIO_WriteLow
 455  006c 84            	pop	a
 456                     ; 93 }
 459  006d 81            	ret
 483                     ; 95 private void backled1(void)
 483                     ; 96 {
 484                     	switch	.text
 485  006e               _backled1:
 489                     ; 97 	GPIO_WriteHigh(LCD5110_LED_GPIO,LCD5110_LED_PIN);
 491  006e 4b04          	push	#4
 492  0070 ae500a        	ldw	x,#20490
 493  0073 cd0000        	call	_GPIO_WriteHigh
 495  0076 84            	pop	a
 496                     ; 98 }
 499  0077 81            	ret
 528                     ; 111 void lcd5110Init(void)
 528                     ; 112 {
 529                     	switch	.text
 530  0078               _lcd5110Init:
 534                     ; 113 	GPIO_Init(LCD5110_LED_GPIO,LCD5110_LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 536  0078 4be0          	push	#224
 537  007a 4b04          	push	#4
 538  007c ae500a        	ldw	x,#20490
 539  007f cd0000        	call	_GPIO_Init
 541  0082 85            	popw	x
 542                     ; 114 	GPIO_Init(LCD5110_CLK_GPIO,LCD5110_CLK_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 544  0083 4be0          	push	#224
 545  0085 4b20          	push	#32
 546  0087 ae500f        	ldw	x,#20495
 547  008a cd0000        	call	_GPIO_Init
 549  008d 85            	popw	x
 550                     ; 115 	GPIO_Init(LCD5110_DA_GPIO,LCD5110_DA_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 552  008e 4be0          	push	#224
 553  0090 4b40          	push	#64
 554  0092 ae500f        	ldw	x,#20495
 555  0095 cd0000        	call	_GPIO_Init
 557  0098 85            	popw	x
 558                     ; 116 	GPIO_Init(LCD5110_DC_GPIO,LCD5110_DC_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 560  0099 4be0          	push	#224
 561  009b 4b02          	push	#2
 562  009d ae5000        	ldw	x,#20480
 563  00a0 cd0000        	call	_GPIO_Init
 565  00a3 85            	popw	x
 566                     ; 117 	GPIO_Init(LCD5110_SCE_GPIO,LCD5110_SCE_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 568  00a4 4be0          	push	#224
 569  00a6 4b04          	push	#4
 570  00a8 ae5000        	ldw	x,#20480
 571  00ab cd0000        	call	_GPIO_Init
 573  00ae 85            	popw	x
 574                     ; 118 	GPIO_Init(LCD5110_RESET_GPIO,LCD5110_RESET_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 576  00af 4be0          	push	#224
 577  00b1 4b10          	push	#16
 578  00b3 ae500f        	ldw	x,#20495
 579  00b6 cd0000        	call	_GPIO_Init
 581  00b9 85            	popw	x
 582                     ; 120 	sce1();
 584  00ba cd000a        	call	_sce1
 586                     ; 121 	res1();
 588  00bd cd001e        	call	_res1
 590                     ; 122 	res0();
 592  00c0 cd0014        	call	_res0
 594                     ; 123 	res1();
 596  00c3 cd001e        	call	_res1
 598                     ; 124 	lcd5110WriteByte(0x21,0);
 600  00c6 ae2100        	ldw	x,#8448
 601  00c9 ad15          	call	_lcd5110WriteByte
 603                     ; 125 	lcd5110WriteByte(0xc0,0);
 605  00cb aec000        	ldw	x,#49152
 606  00ce ad10          	call	_lcd5110WriteByte
 608                     ; 127 	lcd5110WriteByte(0x20,0);
 610  00d0 ae2000        	ldw	x,#8192
 611  00d3 ad0b          	call	_lcd5110WriteByte
 613                     ; 128 	lcd5110WriteByte(0x0C,0);
 615  00d5 ae0c00        	ldw	x,#3072
 616  00d8 ad06          	call	_lcd5110WriteByte
 618                     ; 129 	sce1();
 620  00da cd000a        	call	_sce1
 622                     ; 130 	backled1();
 624  00dd ad8f          	call	_backled1
 626                     ; 132 }
 629  00df 81            	ret
 683                     ; 145 void lcd5110WriteByte(unsigned char dt,unsigned char command)
 683                     ; 146 {
 684                     	switch	.text
 685  00e0               _lcd5110WriteByte:
 687  00e0 89            	pushw	x
 688  00e1 88            	push	a
 689       00000001      OFST:	set	1
 692                     ; 148    sce0(); 	
 694  00e2 cd0000        	call	_sce0
 696                     ; 149 	if(command)
 698  00e5 0d03          	tnz	(OFST+2,sp)
 699  00e7 2705          	jreq	L102
 700                     ; 150 		dc1();
 702  00e9 cd0032        	call	_dc1
 705  00ec 2003          	jra	L302
 706  00ee               L102:
 707                     ; 152 		dc0();		
 709  00ee cd0028        	call	_dc0
 711  00f1               L302:
 712                     ; 153 	for(i=0;i<8;i++)
 714  00f1 0f01          	clr	(OFST+0,sp)
 716  00f3               L502:
 717                     ; 155 		if(dt&0x80)
 719  00f3 7b02          	ld	a,(OFST+1,sp)
 720  00f5 a580          	bcp	a,#128
 721  00f7 2705          	jreq	L312
 722                     ; 156 			sdin1();
 724  00f9 cd0046        	call	_sdin1
 727  00fc 2003          	jra	L512
 728  00fe               L312:
 729                     ; 158 			sdin0();
 731  00fe cd003c        	call	_sdin0
 733  0101               L512:
 734                     ; 159 		dt=dt<<1;	
 736  0101 0802          	sll	(OFST+1,sp)
 737                     ; 160 		sclk0(); 			
 739  0103 cd0050        	call	_sclk0
 741                     ; 161 		sclk1(); 		  
 743  0106 cd005a        	call	_sclk1
 745                     ; 162 		sclk0();		
 747  0109 cd0050        	call	_sclk0
 749                     ; 153 	for(i=0;i<8;i++)
 751  010c 0c01          	inc	(OFST+0,sp)
 755  010e 7b01          	ld	a,(OFST+0,sp)
 756  0110 a108          	cp	a,#8
 757  0112 25df          	jrult	L502
 758                     ; 164 	sce1();
 760  0114 cd000a        	call	_sce1
 762                     ; 165 }
 765  0117 5b03          	addw	sp,#3
 766  0119 81            	ret
 817                     ; 178 void lcd5110Update( uint8_t * data ){
 818                     	switch	.text
 819  011a               _lcd5110Update:
 821  011a 89            	pushw	x
 822  011b 89            	pushw	x
 823       00000002      OFST:	set	2
 826                     ; 180 	lcd5110SetXy(0,0);
 828  011c 5f            	clrw	x
 829  011d ad34          	call	_lcd5110SetXy
 831                     ; 181 	for(y = 0; y < LCD_Y_RES/8; y++){
 833  011f 0f01          	clr	(OFST-1,sp)
 835  0121               L142:
 836                     ; 182 		lcd5110SetXy(0,y);
 838  0121 7b01          	ld	a,(OFST-1,sp)
 839  0123 5f            	clrw	x
 840  0124 97            	ld	xl,a
 841  0125 ad2c          	call	_lcd5110SetXy
 843                     ; 183 		for(x = 0; x < LCD_X_RES ; x++){
 845  0127 0f02          	clr	(OFST+0,sp)
 847  0129               L742:
 848                     ; 185 			lcd5110WriteByte(data[x*(LCD_Y_RES/8)+y], 1);
 850  0129 7b02          	ld	a,(OFST+0,sp)
 851  012b 97            	ld	xl,a
 852  012c a606          	ld	a,#6
 853  012e 42            	mul	x,a
 854  012f 01            	rrwa	x,a
 855  0130 1b01          	add	a,(OFST-1,sp)
 856  0132 2401          	jrnc	L24
 857  0134 5c            	incw	x
 858  0135               L24:
 859  0135 02            	rlwa	x,a
 860  0136 72fb03        	addw	x,(OFST+1,sp)
 861  0139 f6            	ld	a,(x)
 862  013a ae0001        	ldw	x,#1
 863  013d 95            	ld	xh,a
 864  013e ada0          	call	_lcd5110WriteByte
 866                     ; 183 		for(x = 0; x < LCD_X_RES ; x++){
 868  0140 0c02          	inc	(OFST+0,sp)
 872  0142 7b02          	ld	a,(OFST+0,sp)
 873  0144 a154          	cp	a,#84
 874  0146 25e1          	jrult	L742
 875                     ; 181 	for(y = 0; y < LCD_Y_RES/8; y++){
 877  0148 0c01          	inc	(OFST-1,sp)
 881  014a 7b01          	ld	a,(OFST-1,sp)
 882  014c a106          	cp	a,#6
 883  014e 25d1          	jrult	L142
 884                     ; 188 }
 887  0150 5b04          	addw	sp,#4
 888  0152 81            	ret
 928                     ; 201 void lcd5110SetXy(unsigned char X,unsigned char Y)
 928                     ; 202 {
 929                     	switch	.text
 930  0153               _lcd5110SetXy:
 932  0153 89            	pushw	x
 933       00000000      OFST:	set	0
 936                     ; 203 	lcd5110WriteByte(0x40 | Y, 0);// column
 938  0154 9f            	ld	a,xl
 939  0155 aa40          	or	a,#64
 940  0157 5f            	clrw	x
 941  0158 95            	ld	xh,a
 942  0159 ad85          	call	_lcd5110WriteByte
 944                     ; 204 	lcd5110WriteByte(0x80 | X, 0);// row
 946  015b 7b01          	ld	a,(OFST+1,sp)
 947  015d aa80          	or	a,#128
 948  015f 5f            	clrw	x
 949  0160 95            	ld	xh,a
 950  0161 cd00e0        	call	_lcd5110WriteByte
 952                     ; 206 }
 955  0164 85            	popw	x
 956  0165 81            	ret
 969                     	xdef	_lcd5110Update
 970                     	xdef	_backled1
 971                     	xdef	_backled0
 972                     	xdef	_sclk1
 973                     	xdef	_sclk0
 974                     	xdef	_sdin1
 975                     	xdef	_sdin0
 976                     	xdef	_dc1
 977                     	xdef	_dc0
 978                     	xdef	_res1
 979                     	xdef	_res0
 980                     	xdef	_sce1
 981                     	xdef	_sce0
 982                     	xdef	_lcd5110SetXy
 983                     	xdef	_lcd5110WriteByte
 984                     	xdef	_lcd5110Init
 985                     	xref	_GPIO_WriteLow
 986                     	xref	_GPIO_WriteHigh
 987                     	xref	_GPIO_Init
1006                     	end
