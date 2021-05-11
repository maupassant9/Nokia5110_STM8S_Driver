   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  13                     .const:	section	.text
  14  0000               _EstaticSensitive:
  15  0000 00            	dc.b	0
  16  0001 00            	dc.b	0
  17  0002 00            	dc.b	0
  18  0003 00            	dc.b	0
  19  0004 00            	dc.b	0
  20  0005 00            	dc.b	0
  21  0006 00            	dc.b	0
  22  0007 00            	dc.b	0
  23  0008 00            	dc.b	0
  24  0009 00            	dc.b	0
  25  000a 00            	dc.b	0
  26  000b 00            	dc.b	0
  27  000c 00            	dc.b	0
  28  000d 00            	dc.b	0
  29  000e 00            	dc.b	0
  30  000f 00            	dc.b	0
  31  0010 00            	dc.b	0
  32  0011 c0            	dc.b	192
  33  0012 f8            	dc.b	248
  34  0013 fc            	dc.b	252
  35  0014 ff            	dc.b	255
  36  0015 fe            	dc.b	254
  37  0016 f8            	dc.b	248
  38  0017 e0            	dc.b	224
  39  0018 80            	dc.b	128
  40  0019 00            	dc.b	0
  41  001a 00            	dc.b	0
  42  001b 00            	dc.b	0
  43  001c 00            	dc.b	0
  44  001d 00            	dc.b	0
  45  001e 00            	dc.b	0
  46  001f 00            	dc.b	0
  47  0020 00            	dc.b	0
  48  0021 00            	dc.b	0
  49  0022 00            	dc.b	0
  50  0023 00            	dc.b	0
  51  0024 00            	dc.b	0
  52  0025 00            	dc.b	0
  53  0026 00            	dc.b	0
  54  0027 00            	dc.b	0
  55  0028 00            	dc.b	0
  56  0029 00            	dc.b	0
  57  002a 00            	dc.b	0
  58  002b 00            	dc.b	0
  59  002c 00            	dc.b	0
  60  002d 00            	dc.b	0
  61  002e 00            	dc.b	0
  62  002f 00            	dc.b	0
  63  0030 00            	dc.b	0
  64  0031 00            	dc.b	0
  65  0032 00            	dc.b	0
  66  0033 00            	dc.b	0
  67  0034 80            	dc.b	128
  68  0035 e0            	dc.b	224
  69  0036 f8            	dc.b	248
  70  0037 fc            	dc.b	252
  71  0038 ff            	dc.b	255
  72  0039 ff            	dc.b	255
  73  003a ff            	dc.b	255
  74  003b ff            	dc.b	255
  75  003c ff            	dc.b	255
  76  003d ff            	dc.b	255
  77  003e ff            	dc.b	255
  78  003f ff            	dc.b	255
  79  0040 ff            	dc.b	255
  80  0041 fe            	dc.b	254
  81  0042 f8            	dc.b	248
  82  0043 e0            	dc.b	224
  83  0044 80            	dc.b	128
  84  0045 00            	dc.b	0
  85  0046 00            	dc.b	0
  86  0047 00            	dc.b	0
  87  0048 00            	dc.b	0
  88  0049 00            	dc.b	0
  89  004a 00            	dc.b	0
  90  004b 00            	dc.b	0
  91  004c 00            	dc.b	0
  92  004d 00            	dc.b	0
  93  004e 00            	dc.b	0
  94  004f 00            	dc.b	0
  95  0050 00            	dc.b	0
  96  0051 00            	dc.b	0
  97  0052 00            	dc.b	0
  98  0053 00            	dc.b	0
  99  0054 00            	dc.b	0
 100  0055 00            	dc.b	0
 101  0056 00            	dc.b	0
 102  0057 00            	dc.b	0
 103  0058 80            	dc.b	128
 104  0059 e0            	dc.b	224
 105  005a 78            	dc.b	120
 106  005b 7c            	dc.b	124
 107  005c ff            	dc.b	255
 108  005d df            	dc.b	223
 109  005e 8f            	dc.b	143
 110  005f 87            	dc.b	135
 111  0060 c3            	dc.b	195
 112  0061 e3            	dc.b	227
 113  0062 e3            	dc.b	227
 114  0063 c3            	dc.b	195
 115  0064 83            	dc.b	131
 116  0065 01            	dc.b	1
 117  0066 01            	dc.b	1
 118  0067 01            	dc.b	1
 119  0068 00            	dc.b	0
 120  0069 00            	dc.b	0
 121  006a 00            	dc.b	0
 122  006b 01            	dc.b	1
 123  006c 07            	dc.b	7
 124  006d 1e            	dc.b	30
 125  006e f8            	dc.b	248
 126  006f e0            	dc.b	224
 127  0070 80            	dc.b	128
 128  0071 00            	dc.b	0
 129  0072 00            	dc.b	0
 130  0073 00            	dc.b	0
 131  0074 00            	dc.b	0
 132  0075 00            	dc.b	0
 133  0076 00            	dc.b	0
 134  0077 00            	dc.b	0
 135  0078 00            	dc.b	0
 136  0079 00            	dc.b	0
 137  007a 00            	dc.b	0
 138  007b 00            	dc.b	0
 139  007c 80            	dc.b	128
 140  007d e0            	dc.b	224
 141  007e f0            	dc.b	240
 142  007f fe            	dc.b	254
 143  0080 ff            	dc.b	255
 144  0081 ff            	dc.b	255
 145  0082 ff            	dc.b	255
 146  0083 03            	dc.b	3
 147  0084 0e            	dc.b	14
 148  0085 fe            	dc.b	254
 149  0086 fc            	dc.b	252
 150  0087 c9            	dc.b	201
 151  0088 fb            	dc.b	251
 152  0089 fb            	dc.b	251
 153  008a 77            	dc.b	119
 154  008b 27            	dc.b	39
 155  008c 6f            	dc.b	111
 156  008d 4f            	dc.b	79
 157  008e d8            	dc.b	216
 158  008f 90            	dc.b	144
 159  0090 b0            	dc.b	176
 160  0091 30            	dc.b	48
 161  0092 78            	dc.b	120
 162  0093 7c            	dc.b	124
 163  0094 ff            	dc.b	255
 164  0095 ff            	dc.b	255
 165  0096 ff            	dc.b	255
 166  0097 ff            	dc.b	255
 167  0098 ff            	dc.b	255
 168  0099 fe            	dc.b	254
 169  009a f8            	dc.b	248
 170  009b e0            	dc.b	224
 171  009c 80            	dc.b	128
 172  009d 00            	dc.b	0
 173  009e 00            	dc.b	0
 174  009f 00            	dc.b	0
 175  00a0 80            	dc.b	128
 176  00a1 c0            	dc.b	192
 177  00a2 f8            	dc.b	248
 178  00a3 fe            	dc.b	254
 179  00a4 ff            	dc.b	255
 180  00a5 ff            	dc.b	255
 181  00a6 ff            	dc.b	255
 182  00a7 ff            	dc.b	255
 183  00a8 ff            	dc.b	255
 184  00a9 ff            	dc.b	255
 185  00aa ff            	dc.b	255
 186  00ab ff            	dc.b	255
 187  00ac fe            	dc.b	254
 188  00ad ff            	dc.b	255
 189  00ae ff            	dc.b	255
 190  00af ff            	dc.b	255
 191  00b0 ff            	dc.b	255
 192  00b1 ff            	dc.b	255
 193  00b2 fb            	dc.b	251
 194  00b3 fc            	dc.b	252
 195  00b4 ff            	dc.b	255
 196  00b5 ff            	dc.b	255
 197  00b6 ff            	dc.b	255
 198  00b7 ff            	dc.b	255
 199  00b8 ff            	dc.b	255
 200  00b9 ff            	dc.b	255
 201  00ba ff            	dc.b	255
 202  00bb fe            	dc.b	254
 203  00bc fe            	dc.b	254
 204  00bd fd            	dc.b	253
 205  00be fd            	dc.b	253
 206  00bf f9            	dc.b	249
 207  00c0 fb            	dc.b	251
 208  00c1 f7            	dc.b	247
 209  00c2 e7            	dc.b	231
 210  00c3 ef            	dc.b	239
 211  00c4 cf            	dc.b	207
 212  00c5 de            	dc.b	222
 213  00c6 f8            	dc.b	248
 214  00c7 e0            	dc.b	224
 243                     ; 29 void clkInit( void )
 243                     ; 30 {
 245                     	switch	.text
 246  0000               _clkInit:
 250                     ; 32   CLK->CKDIVR = 0;//(CLK_PRESCALER_HSIDIV1|CLK_PRESCALER_CPUDIV1);
 252  0000 725f50c6      	clr	20678
 253                     ; 42 }
 256  0004 81            	ret
 259                     	xref	_LcdUpdate
 288                     ; 44 main()
 288                     ; 45 {
 289                     	switch	.text
 290  0005               _main:
 294                     ; 46 	clkInit();
 296  0005 adf9          	call	_clkInit
 298                     ; 48 	lcd5110Init(); 
 300  0007 cd0000        	call	_lcd5110Init
 302                     ; 49 	LcdClear();	
 304  000a cd0000        	call	_LcdClear
 306                     ; 50 	LcdDrawBitmap(0,0,EstaticSensitive,40,40, LCD_DRAW_MODE_SET);
 308  000d 4b00          	push	#0
 309  000f 4b28          	push	#40
 310  0011 4b28          	push	#40
 311  0013 ae0000        	ldw	x,#_EstaticSensitive
 312  0016 89            	pushw	x
 313  0017 5f            	clrw	x
 314  0018 cd0000        	call	_LcdDrawBitmap
 316  001b 5b05          	addw	sp,#5
 317                     ; 51 	LcdUpdate();
 319  001d cd0000        	call	_LcdUpdate
 321                     ; 52 	LcdDrawBitmap(40,0,EstaticSensitive,40,40, LCD_DRAW_MODE_XOR);
 323  0020 4b02          	push	#2
 324  0022 4b28          	push	#40
 325  0024 4b28          	push	#40
 326  0026 ae0000        	ldw	x,#_EstaticSensitive
 327  0029 89            	pushw	x
 328  002a ae2800        	ldw	x,#10240
 329  002d cd0000        	call	_LcdDrawBitmap
 331  0030 5b05          	addw	sp,#5
 332                     ; 53 	LcdUpdate();
 334  0032 cd0000        	call	_LcdUpdate
 336                     ; 54 	LcdClear();
 338  0035 cd0000        	call	_LcdClear
 340                     ; 55 	LcdDrawBitmap(40,0,EstaticSensitive,40,40, LCD_DRAW_MODE_CLR);
 342  0038 4b01          	push	#1
 343  003a 4b28          	push	#40
 344  003c 4b28          	push	#40
 345  003e ae0000        	ldw	x,#_EstaticSensitive
 346  0041 89            	pushw	x
 347  0042 ae2800        	ldw	x,#10240
 348  0045 cd0000        	call	_LcdDrawBitmap
 350  0048 5b05          	addw	sp,#5
 351                     ; 56 	LcdUpdate();
 353  004a cd0000        	call	_LcdUpdate
 355                     ; 57 	LcdClear();
 357  004d cd0000        	call	_LcdClear
 359                     ; 58 	LcdFillRoundRect(8,9,60,20, 10, LCD_DRAW_MODE_SET);
 361  0050 4b00          	push	#0
 362  0052 4b0a          	push	#10
 363  0054 4b14          	push	#20
 364  0056 4b3c          	push	#60
 365  0058 ae0809        	ldw	x,#2057
 366  005b cd0000        	call	_LcdFillRoundRect
 368  005e 5b04          	addw	sp,#4
 369                     ; 59 	LcdUpdate();
 371  0060 cd0000        	call	_LcdUpdate
 373                     ; 60 	LcdPutString(20,12,"eat",LCD_DRAW_MODE_CLR);
 375  0063 4b01          	push	#1
 376  0065 ae00c8        	ldw	x,#L13
 377  0068 89            	pushw	x
 378  0069 ae140c        	ldw	x,#5132
 379  006c cd0000        	call	_LcdPutString
 381  006f 5b03          	addw	sp,#3
 382                     ; 61 	LcdUpdate();
 384  0071 cd0000        	call	_LcdUpdate
 386  0074               L33:
 387                     ; 62 	while (1);
 389  0074 20fe          	jra	L33
 414                     	xdef	_main
 415                     	xdef	_clkInit
 416                     	xdef	_EstaticSensitive
 417                     	xref	_LcdFillRoundRect
 418                     	xref	_LcdPutString
 419                     	xref	_LcdDrawBitmap
 420                     	xref	_LcdClear
 421                     	xref	_lcd5110Init
 422                     	switch	.const
 423  00c8               L13:
 424  00c8 65617400      	dc.b	"eat",0
 444                     	end
