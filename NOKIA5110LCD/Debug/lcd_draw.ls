   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  13                     .const:	section	.text
  14  0000               _font6x8:
  15  0000 00            	dc.b	0
  16  0001 00            	dc.b	0
  17  0002 00            	dc.b	0
  18  0003 00            	dc.b	0
  19  0004 00            	dc.b	0
  20  0005 00            	dc.b	0
  21  0006 00            	dc.b	0
  22  0007 00            	dc.b	0
  23  0008 00            	dc.b	0
  24  0009 2f            	dc.b	47
  25  000a 00            	dc.b	0
  26  000b 00            	dc.b	0
  27  000c 00            	dc.b	0
  28  000d 00            	dc.b	0
  29  000e 07            	dc.b	7
  30  000f 00            	dc.b	0
  31  0010 07            	dc.b	7
  32  0011 00            	dc.b	0
  33  0012 00            	dc.b	0
  34  0013 14            	dc.b	20
  35  0014 7f            	dc.b	127
  36  0015 14            	dc.b	20
  37  0016 7f            	dc.b	127
  38  0017 14            	dc.b	20
  39  0018 00            	dc.b	0
  40  0019 24            	dc.b	36
  41  001a 2a            	dc.b	42
  42  001b 7f            	dc.b	127
  43  001c 2a            	dc.b	42
  44  001d 12            	dc.b	18
  45  001e 00            	dc.b	0
  46  001f 62            	dc.b	98
  47  0020 64            	dc.b	100
  48  0021 08            	dc.b	8
  49  0022 13            	dc.b	19
  50  0023 23            	dc.b	35
  51  0024 00            	dc.b	0
  52  0025 36            	dc.b	54
  53  0026 49            	dc.b	73
  54  0027 55            	dc.b	85
  55  0028 22            	dc.b	34
  56  0029 50            	dc.b	80
  57  002a 00            	dc.b	0
  58  002b 00            	dc.b	0
  59  002c 05            	dc.b	5
  60  002d 03            	dc.b	3
  61  002e 00            	dc.b	0
  62  002f 00            	dc.b	0
  63  0030 00            	dc.b	0
  64  0031 00            	dc.b	0
  65  0032 1c            	dc.b	28
  66  0033 22            	dc.b	34
  67  0034 41            	dc.b	65
  68  0035 00            	dc.b	0
  69  0036 00            	dc.b	0
  70  0037 00            	dc.b	0
  71  0038 41            	dc.b	65
  72  0039 22            	dc.b	34
  73  003a 1c            	dc.b	28
  74  003b 00            	dc.b	0
  75  003c 00            	dc.b	0
  76  003d 14            	dc.b	20
  77  003e 08            	dc.b	8
  78  003f 3e            	dc.b	62
  79  0040 08            	dc.b	8
  80  0041 14            	dc.b	20
  81  0042 00            	dc.b	0
  82  0043 08            	dc.b	8
  83  0044 08            	dc.b	8
  84  0045 3e            	dc.b	62
  85  0046 08            	dc.b	8
  86  0047 08            	dc.b	8
  87  0048 00            	dc.b	0
  88  0049 00            	dc.b	0
  89  004a 00            	dc.b	0
  90  004b a0            	dc.b	160
  91  004c 60            	dc.b	96
  92  004d 00            	dc.b	0
  93  004e 00            	dc.b	0
  94  004f 08            	dc.b	8
  95  0050 08            	dc.b	8
  96  0051 08            	dc.b	8
  97  0052 08            	dc.b	8
  98  0053 08            	dc.b	8
  99  0054 00            	dc.b	0
 100  0055 00            	dc.b	0
 101  0056 60            	dc.b	96
 102  0057 60            	dc.b	96
 103  0058 00            	dc.b	0
 104  0059 00            	dc.b	0
 105  005a 00            	dc.b	0
 106  005b 20            	dc.b	32
 107  005c 10            	dc.b	16
 108  005d 08            	dc.b	8
 109  005e 04            	dc.b	4
 110  005f 02            	dc.b	2
 111  0060 00            	dc.b	0
 112  0061 3e            	dc.b	62
 113  0062 51            	dc.b	81
 114  0063 49            	dc.b	73
 115  0064 45            	dc.b	69
 116  0065 3e            	dc.b	62
 117  0066 00            	dc.b	0
 118  0067 00            	dc.b	0
 119  0068 42            	dc.b	66
 120  0069 7f            	dc.b	127
 121  006a 40            	dc.b	64
 122  006b 00            	dc.b	0
 123  006c 00            	dc.b	0
 124  006d 42            	dc.b	66
 125  006e 61            	dc.b	97
 126  006f 51            	dc.b	81
 127  0070 49            	dc.b	73
 128  0071 46            	dc.b	70
 129  0072 00            	dc.b	0
 130  0073 21            	dc.b	33
 131  0074 41            	dc.b	65
 132  0075 45            	dc.b	69
 133  0076 4b            	dc.b	75
 134  0077 31            	dc.b	49
 135  0078 00            	dc.b	0
 136  0079 18            	dc.b	24
 137  007a 14            	dc.b	20
 138  007b 12            	dc.b	18
 139  007c 7f            	dc.b	127
 140  007d 10            	dc.b	16
 141  007e 00            	dc.b	0
 142  007f 27            	dc.b	39
 143  0080 45            	dc.b	69
 144  0081 45            	dc.b	69
 145  0082 45            	dc.b	69
 146  0083 39            	dc.b	57
 147  0084 00            	dc.b	0
 148  0085 3c            	dc.b	60
 149  0086 4a            	dc.b	74
 150  0087 49            	dc.b	73
 151  0088 49            	dc.b	73
 152  0089 30            	dc.b	48
 153  008a 00            	dc.b	0
 154  008b 01            	dc.b	1
 155  008c 71            	dc.b	113
 156  008d 09            	dc.b	9
 157  008e 05            	dc.b	5
 158  008f 03            	dc.b	3
 159  0090 00            	dc.b	0
 160  0091 36            	dc.b	54
 161  0092 49            	dc.b	73
 162  0093 49            	dc.b	73
 163  0094 49            	dc.b	73
 164  0095 36            	dc.b	54
 165  0096 00            	dc.b	0
 166  0097 06            	dc.b	6
 167  0098 49            	dc.b	73
 168  0099 49            	dc.b	73
 169  009a 29            	dc.b	41
 170  009b 1e            	dc.b	30
 171  009c 00            	dc.b	0
 172  009d 00            	dc.b	0
 173  009e 36            	dc.b	54
 174  009f 36            	dc.b	54
 175  00a0 00            	dc.b	0
 176  00a1 00            	dc.b	0
 177  00a2 00            	dc.b	0
 178  00a3 00            	dc.b	0
 179  00a4 56            	dc.b	86
 180  00a5 36            	dc.b	54
 181  00a6 00            	dc.b	0
 182  00a7 00            	dc.b	0
 183  00a8 00            	dc.b	0
 184  00a9 08            	dc.b	8
 185  00aa 14            	dc.b	20
 186  00ab 22            	dc.b	34
 187  00ac 41            	dc.b	65
 188  00ad 00            	dc.b	0
 189  00ae 00            	dc.b	0
 190  00af 14            	dc.b	20
 191  00b0 14            	dc.b	20
 192  00b1 14            	dc.b	20
 193  00b2 14            	dc.b	20
 194  00b3 14            	dc.b	20
 195  00b4 00            	dc.b	0
 196  00b5 00            	dc.b	0
 197  00b6 41            	dc.b	65
 198  00b7 22            	dc.b	34
 199  00b8 14            	dc.b	20
 200  00b9 08            	dc.b	8
 201  00ba 00            	dc.b	0
 202  00bb 02            	dc.b	2
 203  00bc 01            	dc.b	1
 204  00bd 51            	dc.b	81
 205  00be 09            	dc.b	9
 206  00bf 06            	dc.b	6
 207  00c0 00            	dc.b	0
 208  00c1 32            	dc.b	50
 209  00c2 49            	dc.b	73
 210  00c3 59            	dc.b	89
 211  00c4 51            	dc.b	81
 212  00c5 3e            	dc.b	62
 213  00c6 00            	dc.b	0
 214  00c7 7c            	dc.b	124
 215  00c8 12            	dc.b	18
 216  00c9 11            	dc.b	17
 217  00ca 12            	dc.b	18
 218  00cb 7c            	dc.b	124
 219  00cc 00            	dc.b	0
 220  00cd 7f            	dc.b	127
 221  00ce 49            	dc.b	73
 222  00cf 49            	dc.b	73
 223  00d0 49            	dc.b	73
 224  00d1 36            	dc.b	54
 225  00d2 00            	dc.b	0
 226  00d3 3e            	dc.b	62
 227  00d4 41            	dc.b	65
 228  00d5 41            	dc.b	65
 229  00d6 41            	dc.b	65
 230  00d7 22            	dc.b	34
 231  00d8 00            	dc.b	0
 232  00d9 7f            	dc.b	127
 233  00da 41            	dc.b	65
 234  00db 41            	dc.b	65
 235  00dc 22            	dc.b	34
 236  00dd 1c            	dc.b	28
 237  00de 00            	dc.b	0
 238  00df 7f            	dc.b	127
 239  00e0 49            	dc.b	73
 240  00e1 49            	dc.b	73
 241  00e2 49            	dc.b	73
 242  00e3 41            	dc.b	65
 243  00e4 00            	dc.b	0
 244  00e5 7f            	dc.b	127
 245  00e6 09            	dc.b	9
 246  00e7 09            	dc.b	9
 247  00e8 09            	dc.b	9
 248  00e9 01            	dc.b	1
 249  00ea 00            	dc.b	0
 250  00eb 3e            	dc.b	62
 251  00ec 41            	dc.b	65
 252  00ed 49            	dc.b	73
 253  00ee 49            	dc.b	73
 254  00ef 7a            	dc.b	122
 255  00f0 00            	dc.b	0
 256  00f1 7f            	dc.b	127
 257  00f2 08            	dc.b	8
 258  00f3 08            	dc.b	8
 259  00f4 08            	dc.b	8
 260  00f5 7f            	dc.b	127
 261  00f6 00            	dc.b	0
 262  00f7 00            	dc.b	0
 263  00f8 41            	dc.b	65
 264  00f9 7f            	dc.b	127
 265  00fa 41            	dc.b	65
 266  00fb 00            	dc.b	0
 267  00fc 00            	dc.b	0
 268  00fd 20            	dc.b	32
 269  00fe 40            	dc.b	64
 270  00ff 41            	dc.b	65
 271  0100 3f            	dc.b	63
 272  0101 01            	dc.b	1
 273  0102 00            	dc.b	0
 274  0103 7f            	dc.b	127
 275  0104 08            	dc.b	8
 276  0105 14            	dc.b	20
 277  0106 22            	dc.b	34
 278  0107 41            	dc.b	65
 279  0108 00            	dc.b	0
 280  0109 7f            	dc.b	127
 281  010a 40            	dc.b	64
 282  010b 40            	dc.b	64
 283  010c 40            	dc.b	64
 284  010d 40            	dc.b	64
 285  010e 00            	dc.b	0
 286  010f 7f            	dc.b	127
 287  0110 02            	dc.b	2
 288  0111 0c            	dc.b	12
 289  0112 02            	dc.b	2
 290  0113 7f            	dc.b	127
 291  0114 00            	dc.b	0
 292  0115 7f            	dc.b	127
 293  0116 04            	dc.b	4
 294  0117 08            	dc.b	8
 295  0118 10            	dc.b	16
 296  0119 7f            	dc.b	127
 297  011a 00            	dc.b	0
 298  011b 3e            	dc.b	62
 299  011c 41            	dc.b	65
 300  011d 41            	dc.b	65
 301  011e 41            	dc.b	65
 302  011f 3e            	dc.b	62
 303  0120 00            	dc.b	0
 304  0121 7f            	dc.b	127
 305  0122 09            	dc.b	9
 306  0123 09            	dc.b	9
 307  0124 09            	dc.b	9
 308  0125 06            	dc.b	6
 309  0126 00            	dc.b	0
 310  0127 3e            	dc.b	62
 311  0128 41            	dc.b	65
 312  0129 51            	dc.b	81
 313  012a 21            	dc.b	33
 314  012b 5e            	dc.b	94
 315  012c 00            	dc.b	0
 316  012d 7f            	dc.b	127
 317  012e 09            	dc.b	9
 318  012f 19            	dc.b	25
 319  0130 29            	dc.b	41
 320  0131 46            	dc.b	70
 321  0132 00            	dc.b	0
 322  0133 46            	dc.b	70
 323  0134 49            	dc.b	73
 324  0135 49            	dc.b	73
 325  0136 49            	dc.b	73
 326  0137 31            	dc.b	49
 327  0138 00            	dc.b	0
 328  0139 01            	dc.b	1
 329  013a 01            	dc.b	1
 330  013b 7f            	dc.b	127
 331  013c 01            	dc.b	1
 332  013d 01            	dc.b	1
 333  013e 00            	dc.b	0
 334  013f 3f            	dc.b	63
 335  0140 40            	dc.b	64
 336  0141 40            	dc.b	64
 337  0142 40            	dc.b	64
 338  0143 3f            	dc.b	63
 339  0144 00            	dc.b	0
 340  0145 1f            	dc.b	31
 341  0146 20            	dc.b	32
 342  0147 40            	dc.b	64
 343  0148 20            	dc.b	32
 344  0149 1f            	dc.b	31
 345  014a 00            	dc.b	0
 346  014b 3f            	dc.b	63
 347  014c 40            	dc.b	64
 348  014d 38            	dc.b	56
 349  014e 40            	dc.b	64
 350  014f 3f            	dc.b	63
 351  0150 00            	dc.b	0
 352  0151 63            	dc.b	99
 353  0152 14            	dc.b	20
 354  0153 08            	dc.b	8
 355  0154 14            	dc.b	20
 356  0155 63            	dc.b	99
 357  0156 00            	dc.b	0
 358  0157 07            	dc.b	7
 359  0158 08            	dc.b	8
 360  0159 70            	dc.b	112
 361  015a 08            	dc.b	8
 362  015b 07            	dc.b	7
 363  015c 00            	dc.b	0
 364  015d 61            	dc.b	97
 365  015e 51            	dc.b	81
 366  015f 49            	dc.b	73
 367  0160 45            	dc.b	69
 368  0161 43            	dc.b	67
 369  0162 00            	dc.b	0
 370  0163 00            	dc.b	0
 371  0164 7f            	dc.b	127
 372  0165 41            	dc.b	65
 373  0166 41            	dc.b	65
 374  0167 00            	dc.b	0
 375  0168 00            	dc.b	0
 376  0169 55            	dc.b	85
 377  016a 2a            	dc.b	42
 378  016b 55            	dc.b	85
 379  016c 2a            	dc.b	42
 380  016d 55            	dc.b	85
 381  016e 00            	dc.b	0
 382  016f 00            	dc.b	0
 383  0170 41            	dc.b	65
 384  0171 41            	dc.b	65
 385  0172 7f            	dc.b	127
 386  0173 00            	dc.b	0
 387  0174 00            	dc.b	0
 388  0175 04            	dc.b	4
 389  0176 02            	dc.b	2
 390  0177 01            	dc.b	1
 391  0178 02            	dc.b	2
 392  0179 04            	dc.b	4
 393  017a 00            	dc.b	0
 394  017b 40            	dc.b	64
 395  017c 40            	dc.b	64
 396  017d 40            	dc.b	64
 397  017e 40            	dc.b	64
 398  017f 40            	dc.b	64
 399  0180 00            	dc.b	0
 400  0181 00            	dc.b	0
 401  0182 01            	dc.b	1
 402  0183 02            	dc.b	2
 403  0184 04            	dc.b	4
 404  0185 00            	dc.b	0
 405  0186 00            	dc.b	0
 406  0187 20            	dc.b	32
 407  0188 54            	dc.b	84
 408  0189 54            	dc.b	84
 409  018a 54            	dc.b	84
 410  018b 78            	dc.b	120
 411  018c 00            	dc.b	0
 412  018d 7f            	dc.b	127
 413  018e 48            	dc.b	72
 414  018f 44            	dc.b	68
 415  0190 44            	dc.b	68
 416  0191 38            	dc.b	56
 417  0192 00            	dc.b	0
 418  0193 38            	dc.b	56
 419  0194 44            	dc.b	68
 420  0195 44            	dc.b	68
 421  0196 44            	dc.b	68
 422  0197 20            	dc.b	32
 423  0198 00            	dc.b	0
 424  0199 38            	dc.b	56
 425  019a 44            	dc.b	68
 426  019b 44            	dc.b	68
 427  019c 48            	dc.b	72
 428  019d 7f            	dc.b	127
 429  019e 00            	dc.b	0
 430  019f 38            	dc.b	56
 431  01a0 54            	dc.b	84
 432  01a1 54            	dc.b	84
 433  01a2 54            	dc.b	84
 434  01a3 18            	dc.b	24
 435  01a4 00            	dc.b	0
 436  01a5 08            	dc.b	8
 437  01a6 7e            	dc.b	126
 438  01a7 09            	dc.b	9
 439  01a8 01            	dc.b	1
 440  01a9 02            	dc.b	2
 441  01aa 00            	dc.b	0
 442  01ab 18            	dc.b	24
 443  01ac a4            	dc.b	164
 444  01ad a4            	dc.b	164
 445  01ae a4            	dc.b	164
 446  01af 7c            	dc.b	124
 447  01b0 00            	dc.b	0
 448  01b1 7f            	dc.b	127
 449  01b2 08            	dc.b	8
 450  01b3 04            	dc.b	4
 451  01b4 04            	dc.b	4
 452  01b5 78            	dc.b	120
 453  01b6 00            	dc.b	0
 454  01b7 00            	dc.b	0
 455  01b8 44            	dc.b	68
 456  01b9 7d            	dc.b	125
 457  01ba 40            	dc.b	64
 458  01bb 00            	dc.b	0
 459  01bc 00            	dc.b	0
 460  01bd 40            	dc.b	64
 461  01be 80            	dc.b	128
 462  01bf 84            	dc.b	132
 463  01c0 7d            	dc.b	125
 464  01c1 00            	dc.b	0
 465  01c2 00            	dc.b	0
 466  01c3 7f            	dc.b	127
 467  01c4 10            	dc.b	16
 468  01c5 28            	dc.b	40
 469  01c6 44            	dc.b	68
 470  01c7 00            	dc.b	0
 471  01c8 00            	dc.b	0
 472  01c9 00            	dc.b	0
 473  01ca 41            	dc.b	65
 474  01cb 7f            	dc.b	127
 475  01cc 40            	dc.b	64
 476  01cd 00            	dc.b	0
 477  01ce 00            	dc.b	0
 478  01cf 7c            	dc.b	124
 479  01d0 04            	dc.b	4
 480  01d1 18            	dc.b	24
 481  01d2 04            	dc.b	4
 482  01d3 78            	dc.b	120
 483  01d4 00            	dc.b	0
 484  01d5 7c            	dc.b	124
 485  01d6 08            	dc.b	8
 486  01d7 04            	dc.b	4
 487  01d8 04            	dc.b	4
 488  01d9 78            	dc.b	120
 489  01da 00            	dc.b	0
 490  01db 38            	dc.b	56
 491  01dc 44            	dc.b	68
 492  01dd 44            	dc.b	68
 493  01de 44            	dc.b	68
 494  01df 38            	dc.b	56
 495  01e0 00            	dc.b	0
 496  01e1 fc            	dc.b	252
 497  01e2 24            	dc.b	36
 498  01e3 24            	dc.b	36
 499  01e4 24            	dc.b	36
 500  01e5 18            	dc.b	24
 501  01e6 00            	dc.b	0
 502  01e7 18            	dc.b	24
 503  01e8 24            	dc.b	36
 504  01e9 24            	dc.b	36
 505  01ea 18            	dc.b	24
 506  01eb fc            	dc.b	252
 507  01ec 00            	dc.b	0
 508  01ed 7c            	dc.b	124
 509  01ee 08            	dc.b	8
 510  01ef 04            	dc.b	4
 511  01f0 04            	dc.b	4
 512  01f1 08            	dc.b	8
 513  01f2 00            	dc.b	0
 514  01f3 48            	dc.b	72
 515  01f4 54            	dc.b	84
 516  01f5 54            	dc.b	84
 517  01f6 54            	dc.b	84
 518  01f7 20            	dc.b	32
 519  01f8 00            	dc.b	0
 520  01f9 04            	dc.b	4
 521  01fa 3f            	dc.b	63
 522  01fb 44            	dc.b	68
 523  01fc 40            	dc.b	64
 524  01fd 20            	dc.b	32
 525  01fe 00            	dc.b	0
 526  01ff 3c            	dc.b	60
 527  0200 40            	dc.b	64
 528  0201 40            	dc.b	64
 529  0202 20            	dc.b	32
 530  0203 7c            	dc.b	124
 531  0204 00            	dc.b	0
 532  0205 1c            	dc.b	28
 533  0206 20            	dc.b	32
 534  0207 40            	dc.b	64
 535  0208 20            	dc.b	32
 536  0209 1c            	dc.b	28
 537  020a 00            	dc.b	0
 538  020b 3c            	dc.b	60
 539  020c 40            	dc.b	64
 540  020d 30            	dc.b	48
 541  020e 40            	dc.b	64
 542  020f 3c            	dc.b	60
 543  0210 00            	dc.b	0
 544  0211 44            	dc.b	68
 545  0212 28            	dc.b	40
 546  0213 10            	dc.b	16
 547  0214 28            	dc.b	40
 548  0215 44            	dc.b	68
 549  0216 00            	dc.b	0
 550  0217 1c            	dc.b	28
 551  0218 a0            	dc.b	160
 552  0219 a0            	dc.b	160
 553  021a a0            	dc.b	160
 554  021b 7c            	dc.b	124
 555  021c 00            	dc.b	0
 556  021d 44            	dc.b	68
 557  021e 64            	dc.b	100
 558  021f 54            	dc.b	84
 559  0220 4c            	dc.b	76
 560  0221 44            	dc.b	68
 561  0222 14            	dc.b	20
 562  0223 14            	dc.b	20
 563  0224 14            	dc.b	20
 564  0225 14            	dc.b	20
 565  0226 14            	dc.b	20
 566  0227 14            	dc.b	20
 567                     	switch	.data
 568  0000               L3_font:
 569  0000 0000          	dc.w	_font6x8
 570  0002               L5_lcdCache:
 571  0002 00            	dc.b	0
 572  0003 000000000000  	ds.b	503
 663                     ; 154 void LcdPutChar(uint8_t x, uint8_t y, uint8_t c, lcd_draw_mode_t mode)
 663                     ; 155 {
 665                     	switch	.text
 666  0000               _LcdPutChar:
 668  0000 89            	pushw	x
 669       00000000      OFST:	set	0
 672                     ; 157 	c-=32;
 674  0001 7b05          	ld	a,(OFST+5,sp)
 675  0003 a020          	sub	a,#32
 676  0005 6b05          	ld	(OFST+5,sp),a
 677                     ; 158 	LcdDrawBitmap(x,y,&font[c*FONT_WIDTH], FONT_WIDTH,FONT_HEIGHT,mode);
 679  0007 7b06          	ld	a,(OFST+6,sp)
 680  0009 88            	push	a
 681  000a 4b08          	push	#8
 682  000c 4b06          	push	#6
 683  000e 7b08          	ld	a,(OFST+8,sp)
 684  0010 97            	ld	xl,a
 685  0011 a606          	ld	a,#6
 686  0013 42            	mul	x,a
 687  0014 72bb0000      	addw	x,L3_font
 688  0018 89            	pushw	x
 689  0019 7b07          	ld	a,(OFST+7,sp)
 690  001b 97            	ld	xl,a
 691  001c 7b06          	ld	a,(OFST+6,sp)
 692  001e 95            	ld	xh,a
 693  001f cd071f        	call	_LcdDrawBitmap
 695  0022 5b05          	addw	sp,#5
 696                     ; 159 }
 699  0024 85            	popw	x
 700  0025 81            	ret
 760                     ; 171 void LcdPutString(uint8_t x,uint8_t y,char *s, lcd_draw_mode_t mode)
 760                     ; 172 {
 761                     	switch	.text
 762  0026               _LcdPutString:
 764  0026 89            	pushw	x
 765       00000000      OFST:	set	0
 768  0027 201d          	jra	L701
 769  0029               L501:
 770                     ; 175 		LcdPutChar(x,y,*s,mode);
 772  0029 7b07          	ld	a,(OFST+7,sp)
 773  002b 88            	push	a
 774  002c 1e06          	ldw	x,(OFST+6,sp)
 775  002e f6            	ld	a,(x)
 776  002f 88            	push	a
 777  0030 7b04          	ld	a,(OFST+4,sp)
 778  0032 97            	ld	xl,a
 779  0033 7b03          	ld	a,(OFST+3,sp)
 780  0035 95            	ld	xh,a
 781  0036 adc8          	call	_LcdPutChar
 783  0038 85            	popw	x
 784                     ; 176 		s++;
 786  0039 1e05          	ldw	x,(OFST+5,sp)
 787  003b 1c0001        	addw	x,#1
 788  003e 1f05          	ldw	(OFST+5,sp),x
 789                     ; 177 		x += FONT_WIDTH;
 791  0040 7b01          	ld	a,(OFST+1,sp)
 792  0042 ab06          	add	a,#6
 793  0044 6b01          	ld	(OFST+1,sp),a
 794  0046               L701:
 795                     ; 173 	while (*s) 
 797  0046 1e05          	ldw	x,(OFST+5,sp)
 798  0048 7d            	tnz	(x)
 799  0049 26de          	jrne	L501
 800                     ; 180 }
 803  004b 85            	popw	x
 804  004c 81            	ret
 862                     ; 193 void LcdPutOneNumber(uint8_t x, uint8_t y, 
 862                     ; 194 									uint8_t num, lcd_draw_mode_t mode)
 862                     ; 195 {
 863                     	switch	.text
 864  004d               _LcdPutOneNumber:
 866  004d 89            	pushw	x
 867       00000000      OFST:	set	0
 870                     ; 196 	if(num >= 10) return;
 872  004e 7b05          	ld	a,(OFST+5,sp)
 873  0050 a10a          	cp	a,#10
 874  0052 2420          	jruge	L21
 877                     ; 197 	LcdDrawBitmap(x,y,&font[(FONT_NUM_OFFSET+num)*FONT_WIDTH], FONT_WIDTH,FONT_HEIGHT,mode);
 879  0054 7b06          	ld	a,(OFST+6,sp)
 880  0056 88            	push	a
 881  0057 4b08          	push	#8
 882  0059 4b06          	push	#6
 883  005b 7b08          	ld	a,(OFST+8,sp)
 884  005d 97            	ld	xl,a
 885  005e a606          	ld	a,#6
 886  0060 42            	mul	x,a
 887  0061 72bb0000      	addw	x,L3_font
 888  0065 1c0060        	addw	x,#96
 889  0068 89            	pushw	x
 890  0069 7b07          	ld	a,(OFST+7,sp)
 891  006b 97            	ld	xl,a
 892  006c 7b06          	ld	a,(OFST+6,sp)
 893  006e 95            	ld	xh,a
 894  006f cd071f        	call	_LcdDrawBitmap
 896  0072 5b05          	addw	sp,#5
 897                     ; 198 }
 898  0074               L21:
 901  0074 85            	popw	x
 902  0075 81            	ret
 905                     	switch	.const
 906  0228               L141_num2wr:
 907  0228 00            	dc.b	0
 908  0229 000000000000  	ds.b	14
 998                     ; 211 void LcdPutInteger(uint8_t x, uint8_t y, 
 998                     ; 212 									uint32_t num, lcd_draw_mode_t mode)
 998                     ; 213 {
 999                     	switch	.text
1000  0076               _LcdPutInteger:
1002  0076 89            	pushw	x
1003  0077 5215          	subw	sp,#21
1004       00000015      OFST:	set	21
1007                     ; 216 	uint8_t num2wr[15] = {0};
1009  0079 96            	ldw	x,sp
1010  007a 1c0003        	addw	x,#OFST-18
1011  007d 90ae0228      	ldw	y,#L141_num2wr
1012  0081 a60f          	ld	a,#15
1013  0083 cd0000        	call	c_xymvx
1015                     ; 218 	cnt = LcdGetNumbers2Wr(num, num2wr);
1017  0086 96            	ldw	x,sp
1018  0087 1c0003        	addw	x,#OFST-18
1019  008a 89            	pushw	x
1020  008b 1e1e          	ldw	x,(OFST+9,sp)
1021  008d 89            	pushw	x
1022  008e 1e1e          	ldw	x,(OFST+9,sp)
1023  0090 89            	pushw	x
1024  0091 ad45          	call	L7_LcdGetNumbers2Wr
1026  0093 5b06          	addw	sp,#6
1027  0095 6b14          	ld	(OFST-1,sp),a
1029                     ; 219 	pval = &num2wr[cnt-1];
1031  0097 96            	ldw	x,sp
1032  0098 1c0003        	addw	x,#OFST-18
1033  009b 1f01          	ldw	(OFST-20,sp),x
1035  009d 7b14          	ld	a,(OFST-1,sp)
1036  009f 5f            	clrw	x
1037  00a0 97            	ld	xl,a
1038  00a1 5a            	decw	x
1039  00a2 72fb01        	addw	x,(OFST-20,sp)
1040  00a5 1f12          	ldw	(OFST-3,sp),x
1042                     ; 222 	for(dx = 0;dx < cnt; dx++){
1044  00a7 0f15          	clr	(OFST+0,sp)
1047  00a9 2024          	jra	L702
1048  00ab               L302:
1049                     ; 223 		LcdPutOneNumber(x + (dx * FONT_WIDTH),y,*pval--,mode);
1051  00ab 7b1e          	ld	a,(OFST+9,sp)
1052  00ad 88            	push	a
1053  00ae 1e13          	ldw	x,(OFST-2,sp)
1054  00b0 1d0001        	subw	x,#1
1055  00b3 1f13          	ldw	(OFST-2,sp),x
1056  00b5 1c0001        	addw	x,#1
1058  00b8 f6            	ld	a,(x)
1059  00b9 88            	push	a
1060  00ba 7b19          	ld	a,(OFST+4,sp)
1061  00bc 97            	ld	xl,a
1062  00bd 7b17          	ld	a,(OFST+2,sp)
1063  00bf 90ae0006      	ldw	y,#6
1064  00c3 9042          	mul	y,a
1065  00c5 909f          	ld	a,yl
1066  00c7 1b18          	add	a,(OFST+3,sp)
1067  00c9 95            	ld	xh,a
1068  00ca ad81          	call	_LcdPutOneNumber
1070  00cc 85            	popw	x
1071                     ; 222 	for(dx = 0;dx < cnt; dx++){
1073  00cd 0c15          	inc	(OFST+0,sp)
1075  00cf               L702:
1078  00cf 7b15          	ld	a,(OFST+0,sp)
1079  00d1 1114          	cp	a,(OFST-1,sp)
1080  00d3 25d6          	jrult	L302
1081                     ; 225 }
1084  00d5 5b17          	addw	sp,#23
1085  00d7 81            	ret
1155                     ; 241 static uint8_t LcdGetNumbers2Wr(uint32_t num, uint8_t * numArray){
1156                     	switch	.text
1157  00d8               L7_LcdGetNumbers2Wr:
1159  00d8 520a          	subw	sp,#10
1160       0000000a      OFST:	set	10
1163                     ; 242 	uint32_t divider = 10;
1165  00da ae000a        	ldw	x,#10
1166  00dd 1f04          	ldw	(OFST-6,sp),x
1167  00df ae0000        	ldw	x,#0
1168  00e2 1f02          	ldw	(OFST-8,sp),x
1170                     ; 243 	uint8_t residual = 0;
1172                     ; 244 	uint32_t quotient = 0;
1174                     ; 245 	uint8_t cnt = 0;
1176  00e4 0f01          	clr	(OFST-9,sp)
1178  00e6               L342:
1179                     ; 248 		quotient = num/divider;
1181  00e6 96            	ldw	x,sp
1182  00e7 1c000d        	addw	x,#OFST+3
1183  00ea cd0000        	call	c_ltor
1185  00ed 96            	ldw	x,sp
1186  00ee 1c0002        	addw	x,#OFST-8
1187  00f1 cd0000        	call	c_ludv
1189  00f4 96            	ldw	x,sp
1190  00f5 1c0007        	addw	x,#OFST-3
1191  00f8 cd0000        	call	c_rtol
1194                     ; 249 		residual = (uint8_t)(num - quotient * divider);
1196  00fb 7b0a          	ld	a,(OFST+0,sp)
1197  00fd 97            	ld	xl,a
1198  00fe 7b05          	ld	a,(OFST-5,sp)
1199  0100 42            	mul	x,a
1200  0101 9f            	ld	a,xl
1201  0102 1010          	sub	a,(OFST+6,sp)
1202  0104 40            	neg	a
1203  0105 6b06          	ld	(OFST-4,sp),a
1205                     ; 251 		*numArray++ = residual;
1207  0107 7b06          	ld	a,(OFST-4,sp)
1208  0109 1e11          	ldw	x,(OFST+7,sp)
1209  010b 1c0001        	addw	x,#1
1210  010e 1f11          	ldw	(OFST+7,sp),x
1211  0110 1d0001        	subw	x,#1
1212  0113 f7            	ld	(x),a
1213                     ; 252 		cnt++;
1215  0114 0c01          	inc	(OFST-9,sp)
1217                     ; 253 		if(0 == quotient) break;
1219  0116 96            	ldw	x,sp
1220  0117 1c0007        	addw	x,#OFST-3
1221  011a cd0000        	call	c_lzmp
1223  011d 2605          	jrne	L742
1225                     ; 256 	return cnt;
1227  011f 7b01          	ld	a,(OFST-9,sp)
1230  0121 5b0a          	addw	sp,#10
1231  0123 81            	ret
1232  0124               L742:
1233                     ; 254 		num = quotient;
1235  0124 1e09          	ldw	x,(OFST-1,sp)
1236  0126 1f0f          	ldw	(OFST+5,sp),x
1237  0128 1e07          	ldw	x,(OFST-3,sp)
1238  012a 1f0d          	ldw	(OFST+3,sp),x
1240  012c 20b8          	jra	L342
1243                     	xref	_LcdUpdate
1282                     ; 271 void LcdClear(void)
1282                     ; 272 {
1283                     	switch	.text
1284  012e               _LcdClear:
1286  012e 89            	pushw	x
1287       00000002      OFST:	set	2
1290                     ; 276 	for(t=0;t<6;t++)
1292  012f 0f01          	clr	(OFST-1,sp)
1294  0131               L762:
1295                     ; 278 		for(k=0;k<84;k++)
1297  0131 0f02          	clr	(OFST+0,sp)
1299  0133               L572:
1300                     ; 280 			lcdCache[k][t] = 0;
1302  0133 7b02          	ld	a,(OFST+0,sp)
1303  0135 97            	ld	xl,a
1304  0136 a606          	ld	a,#6
1305  0138 42            	mul	x,a
1306  0139 01            	rrwa	x,a
1307  013a 1b01          	add	a,(OFST-1,sp)
1308  013c 2401          	jrnc	L22
1309  013e 5c            	incw	x
1310  013f               L22:
1311  013f 02            	rlwa	x,a
1312  0140 724f0002      	clr	(L5_lcdCache,x)
1313                     ; 278 		for(k=0;k<84;k++)
1315  0144 0c02          	inc	(OFST+0,sp)
1319  0146 7b02          	ld	a,(OFST+0,sp)
1320  0148 a154          	cp	a,#84
1321  014a 25e7          	jrult	L572
1322                     ; 276 	for(t=0;t<6;t++)
1324  014c 0c01          	inc	(OFST-1,sp)
1328  014e 7b01          	ld	a,(OFST-1,sp)
1329  0150 a106          	cp	a,#6
1330  0152 25dd          	jrult	L762
1331                     ; 284 	LcdUpdate(lcdCache);
1333  0154 ae0002        	ldw	x,#L5_lcdCache
1334  0157 cd0202        	call	_LcdUpdate
1336                     ; 285 }
1339  015a 85            	popw	x
1340  015b 81            	ret
1411                     ; 298 void LcdDrawPixel(uint8_t x, 
1411                     ; 299 									uint8_t y,
1411                     ; 300 									lcd_draw_mode_t mode)
1411                     ; 301 {
1412                     	switch	.text
1413  015c               _LcdDrawPixel:
1415  015c 89            	pushw	x
1416  015d 5203          	subw	sp,#3
1417       00000003      OFST:	set	3
1420                     ; 302 	unsigned char row = x;
1422  015f 9e            	ld	a,xh
1423  0160 6b01          	ld	(OFST-2,sp),a
1425                     ; 303 	unsigned char page = y/8;
1427  0162 9f            	ld	a,xl
1428  0163 5f            	clrw	x
1429  0164 97            	ld	xl,a
1430  0165 57            	sraw	x
1431  0166 57            	sraw	x
1432  0167 57            	sraw	x
1433  0168 01            	rrwa	x,a
1434  0169 6b03          	ld	(OFST+0,sp),a
1435  016b 02            	rlwa	x,a
1437                     ; 304 	unsigned char residual = y - page*8;
1439  016c 7b03          	ld	a,(OFST+0,sp)
1440  016e 48            	sll	a
1441  016f 48            	sll	a
1442  0170 48            	sll	a
1443  0171 1005          	sub	a,(OFST+2,sp)
1444  0173 40            	neg	a
1445  0174 6b02          	ld	(OFST-1,sp),a
1447                     ; 306 	if((x >= LCD_X_RES) || (y >= LCD_Y_RES))
1449  0176 7b04          	ld	a,(OFST+1,sp)
1450  0178 a154          	cp	a,#84
1451  017a 2406          	jruge	L533
1453  017c 7b05          	ld	a,(OFST+2,sp)
1454  017e a130          	cp	a,#48
1455  0180 2502          	jrult	L333
1456  0182               L533:
1457                     ; 307 		return;
1459  0182 207b          	jra	L05
1460  0184               L333:
1461                     ; 309 	if(LCD_DRAW_MODE_SET == mode)
1463  0184 0d08          	tnz	(OFST+5,sp)
1464  0186 2626          	jrne	L733
1465                     ; 310 		lcdCache[row][page] |= (0x01<<residual);
1467  0188 7b01          	ld	a,(OFST-2,sp)
1468  018a 97            	ld	xl,a
1469  018b a606          	ld	a,#6
1470  018d 42            	mul	x,a
1471  018e 01            	rrwa	x,a
1472  018f 1b03          	add	a,(OFST+0,sp)
1473  0191 2401          	jrnc	L62
1474  0193 5c            	incw	x
1475  0194               L62:
1476  0194 02            	rlwa	x,a
1477  0195 7b02          	ld	a,(OFST-1,sp)
1478  0197 905f          	clrw	y
1479  0199 9097          	ld	yl,a
1480  019b a601          	ld	a,#1
1481  019d 905d          	tnzw	y
1482  019f 2705          	jreq	L03
1483  01a1               L23:
1484  01a1 48            	sll	a
1485  01a2 905a          	decw	y
1486  01a4 26fb          	jrne	L23
1487  01a6               L03:
1488  01a6 da0002        	or	a,(L5_lcdCache,x)
1489  01a9 d70002        	ld	(L5_lcdCache,x),a
1491  01ac 2051          	jra	L143
1492  01ae               L733:
1493                     ; 311 	else if (LCD_DRAW_MODE_CLR == mode)
1495  01ae 7b08          	ld	a,(OFST+5,sp)
1496  01b0 a101          	cp	a,#1
1497  01b2 2627          	jrne	L343
1498                     ; 312 		lcdCache[row][page] &= ~(0x01<<residual);
1500  01b4 7b01          	ld	a,(OFST-2,sp)
1501  01b6 97            	ld	xl,a
1502  01b7 a606          	ld	a,#6
1503  01b9 42            	mul	x,a
1504  01ba 01            	rrwa	x,a
1505  01bb 1b03          	add	a,(OFST+0,sp)
1506  01bd 2401          	jrnc	L43
1507  01bf 5c            	incw	x
1508  01c0               L43:
1509  01c0 02            	rlwa	x,a
1510  01c1 7b02          	ld	a,(OFST-1,sp)
1511  01c3 905f          	clrw	y
1512  01c5 9097          	ld	yl,a
1513  01c7 a601          	ld	a,#1
1514  01c9 905d          	tnzw	y
1515  01cb 2705          	jreq	L63
1516  01cd               L04:
1517  01cd 48            	sll	a
1518  01ce 905a          	decw	y
1519  01d0 26fb          	jrne	L04
1520  01d2               L63:
1521  01d2 43            	cpl	a
1522  01d3 d40002        	and	a,(L5_lcdCache,x)
1523  01d6 d70002        	ld	(L5_lcdCache,x),a
1525  01d9 2024          	jra	L143
1526  01db               L343:
1527                     ; 314 		lcdCache[row][page] ^= (0x01<<residual);
1529  01db 7b01          	ld	a,(OFST-2,sp)
1530  01dd 97            	ld	xl,a
1531  01de a606          	ld	a,#6
1532  01e0 42            	mul	x,a
1533  01e1 01            	rrwa	x,a
1534  01e2 1b03          	add	a,(OFST+0,sp)
1535  01e4 2401          	jrnc	L24
1536  01e6 5c            	incw	x
1537  01e7               L24:
1538  01e7 02            	rlwa	x,a
1539  01e8 7b02          	ld	a,(OFST-1,sp)
1540  01ea 905f          	clrw	y
1541  01ec 9097          	ld	yl,a
1542  01ee a601          	ld	a,#1
1543  01f0 905d          	tnzw	y
1544  01f2 2705          	jreq	L44
1545  01f4               L64:
1546  01f4 48            	sll	a
1547  01f5 905a          	decw	y
1548  01f7 26fb          	jrne	L64
1549  01f9               L44:
1550  01f9 d80002        	xor	a,(L5_lcdCache,x)
1551  01fc d70002        	ld	(L5_lcdCache,x),a
1552  01ff               L143:
1553                     ; 315 }
1554  01ff               L05:
1557  01ff 5b05          	addw	sp,#5
1558  0201 81            	ret
1561                     	xref	_lcd5110Update
1584                     ; 328 void LcdUpdate( void ){
1585                     	switch	.text
1586  0202               _LcdUpdate:
1590                     ; 329 	lcd5110Update(lcdCache);
1592  0202 ae0002        	ldw	x,#L5_lcdCache
1593  0205 cd0000        	call	_lcd5110Update
1595                     ; 330 }
1598  0208 81            	ret
1697                     ; 342 void LcdDrawLine(uint8_t x1, uint8_t y1, 
1697                     ; 343 								 uint8_t x2, uint8_t y2,
1697                     ; 344 								 lcd_draw_mode_t mode)
1697                     ; 345 {
1698                     	switch	.text
1699  0209               _LcdDrawLine:
1701  0209 89            	pushw	x
1702  020a 520c          	subw	sp,#12
1703       0000000c      OFST:	set	12
1706                     ; 352     dy = y2 - y1;
1708  020c 7b12          	ld	a,(OFST+6,sp)
1709  020e 5f            	clrw	x
1710  020f 100e          	sub	a,(OFST+2,sp)
1711  0211 2401          	jrnc	L65
1712  0213 5a            	decw	x
1713  0214               L65:
1714  0214 02            	rlwa	x,a
1715  0215 1f09          	ldw	(OFST-3,sp),x
1716  0217 01            	rrwa	x,a
1718                     ; 353     dx = x2 - x1;
1720  0218 7b11          	ld	a,(OFST+5,sp)
1721  021a 5f            	clrw	x
1722  021b 100d          	sub	a,(OFST+1,sp)
1723  021d 2401          	jrnc	L06
1724  021f 5a            	decw	x
1725  0220               L06:
1726  0220 02            	rlwa	x,a
1727  0221 1f07          	ldw	(OFST-5,sp),x
1728  0223 01            	rrwa	x,a
1730                     ; 355     if (dy < 0)
1732  0224 9c            	rvf
1733  0225 1e09          	ldw	x,(OFST-3,sp)
1734  0227 2e0c          	jrsge	L714
1735                     ; 357         dy    = -dy;
1737  0229 1e09          	ldw	x,(OFST-3,sp)
1738  022b 50            	negw	x
1739  022c 1f09          	ldw	(OFST-3,sp),x
1741                     ; 358         stepy = -1;
1743  022e aeffff        	ldw	x,#65535
1744  0231 1f05          	ldw	(OFST-7,sp),x
1747  0233 2005          	jra	L124
1748  0235               L714:
1749                     ; 362         stepy = 1;
1751  0235 ae0001        	ldw	x,#1
1752  0238 1f05          	ldw	(OFST-7,sp),x
1754  023a               L124:
1755                     ; 365     if (dx < 0)
1757  023a 9c            	rvf
1758  023b 1e07          	ldw	x,(OFST-5,sp)
1759  023d 2e0c          	jrsge	L324
1760                     ; 367         dx    = -dx;
1762  023f 1e07          	ldw	x,(OFST-5,sp)
1763  0241 50            	negw	x
1764  0242 1f07          	ldw	(OFST-5,sp),x
1766                     ; 368         stepx = -1;
1768  0244 aeffff        	ldw	x,#65535
1769  0247 1f03          	ldw	(OFST-9,sp),x
1772  0249 2005          	jra	L524
1773  024b               L324:
1774                     ; 372         stepx = 1;
1776  024b ae0001        	ldw	x,#1
1777  024e 1f03          	ldw	(OFST-9,sp),x
1779  0250               L524:
1780                     ; 375     dx <<= 1;
1782  0250 0808          	sll	(OFST-4,sp)
1783  0252 0907          	rlc	(OFST-5,sp)
1785                     ; 376     dy <<= 1;
1787  0254 080a          	sll	(OFST-2,sp)
1788  0256 0909          	rlc	(OFST-3,sp)
1790                     ; 379     LcdDrawPixel(x1, y1, mode);
1792  0258 7b13          	ld	a,(OFST+7,sp)
1793  025a 88            	push	a
1794  025b 7b0f          	ld	a,(OFST+3,sp)
1795  025d 97            	ld	xl,a
1796  025e 7b0e          	ld	a,(OFST+2,sp)
1797  0260 95            	ld	xh,a
1798  0261 cd015c        	call	_LcdDrawPixel
1800  0264 84            	pop	a
1801                     ; 382     if (dx > dy)
1803  0265 9c            	rvf
1804  0266 1e07          	ldw	x,(OFST-5,sp)
1805  0268 1309          	cpw	x,(OFST-3,sp)
1806  026a 2d43          	jrsle	L724
1807                     ; 384         fraction = dy - ( dx >> 1);
1809  026c 1e07          	ldw	x,(OFST-5,sp)
1810  026e 57            	sraw	x
1811  026f 1f01          	ldw	(OFST-11,sp),x
1813  0271 1e09          	ldw	x,(OFST-3,sp)
1814  0273 72f001        	subw	x,(OFST-11,sp)
1815  0276 1f0b          	ldw	(OFST-1,sp),x
1818  0278 202c          	jra	L534
1819  027a               L134:
1820                     ; 387             if (fraction >= 0)
1822  027a 9c            	rvf
1823  027b 1e0b          	ldw	x,(OFST-1,sp)
1824  027d 2f0d          	jrslt	L144
1825                     ; 389                 y1 += stepy;
1827  027f 7b0e          	ld	a,(OFST+2,sp)
1828  0281 1b06          	add	a,(OFST-6,sp)
1829  0283 6b0e          	ld	(OFST+2,sp),a
1830                     ; 390                 fraction -= dx;
1832  0285 1e0b          	ldw	x,(OFST-1,sp)
1833  0287 72f007        	subw	x,(OFST-5,sp)
1834  028a 1f0b          	ldw	(OFST-1,sp),x
1836  028c               L144:
1837                     ; 392             x1 += stepx;
1839  028c 7b0d          	ld	a,(OFST+1,sp)
1840  028e 1b04          	add	a,(OFST-8,sp)
1841  0290 6b0d          	ld	(OFST+1,sp),a
1842                     ; 393             fraction += dy;
1844  0292 1e0b          	ldw	x,(OFST-1,sp)
1845  0294 72fb09        	addw	x,(OFST-3,sp)
1846  0297 1f0b          	ldw	(OFST-1,sp),x
1848                     ; 395             LcdDrawPixel(x1, y1, mode);
1850  0299 7b13          	ld	a,(OFST+7,sp)
1851  029b 88            	push	a
1852  029c 7b0f          	ld	a,(OFST+3,sp)
1853  029e 97            	ld	xl,a
1854  029f 7b0e          	ld	a,(OFST+2,sp)
1855  02a1 95            	ld	xh,a
1856  02a2 cd015c        	call	_LcdDrawPixel
1858  02a5 84            	pop	a
1859  02a6               L534:
1860                     ; 385         while (x1 != x2)
1862  02a6 7b0d          	ld	a,(OFST+1,sp)
1863  02a8 1111          	cp	a,(OFST+5,sp)
1864  02aa 26ce          	jrne	L134
1866  02ac               L344:
1867                     ; 414 }
1870  02ac 5b0e          	addw	sp,#14
1871  02ae 81            	ret
1872  02af               L724:
1873                     ; 400         fraction = dx - ( dy >> 1);
1875  02af 1e09          	ldw	x,(OFST-3,sp)
1876  02b1 57            	sraw	x
1877  02b2 1f01          	ldw	(OFST-11,sp),x
1879  02b4 1e07          	ldw	x,(OFST-5,sp)
1880  02b6 72f001        	subw	x,(OFST-11,sp)
1881  02b9 1f0b          	ldw	(OFST-1,sp),x
1884  02bb 202c          	jra	L154
1885  02bd               L544:
1886                     ; 403             if (fraction >= 0)
1888  02bd 9c            	rvf
1889  02be 1e0b          	ldw	x,(OFST-1,sp)
1890  02c0 2f0d          	jrslt	L554
1891                     ; 405                 x1 += stepx;
1893  02c2 7b0d          	ld	a,(OFST+1,sp)
1894  02c4 1b04          	add	a,(OFST-8,sp)
1895  02c6 6b0d          	ld	(OFST+1,sp),a
1896                     ; 406                 fraction -= dy;
1898  02c8 1e0b          	ldw	x,(OFST-1,sp)
1899  02ca 72f009        	subw	x,(OFST-3,sp)
1900  02cd 1f0b          	ldw	(OFST-1,sp),x
1902  02cf               L554:
1903                     ; 408             y1 += stepy;
1905  02cf 7b0e          	ld	a,(OFST+2,sp)
1906  02d1 1b06          	add	a,(OFST-6,sp)
1907  02d3 6b0e          	ld	(OFST+2,sp),a
1908                     ; 409             fraction += dx;
1910  02d5 1e0b          	ldw	x,(OFST-1,sp)
1911  02d7 72fb07        	addw	x,(OFST-5,sp)
1912  02da 1f0b          	ldw	(OFST-1,sp),x
1914                     ; 411             LcdDrawPixel(x1, y1, mode);
1916  02dc 7b13          	ld	a,(OFST+7,sp)
1917  02de 88            	push	a
1918  02df 7b0f          	ld	a,(OFST+3,sp)
1919  02e1 97            	ld	xl,a
1920  02e2 7b0e          	ld	a,(OFST+2,sp)
1921  02e4 95            	ld	xh,a
1922  02e5 cd015c        	call	_LcdDrawPixel
1924  02e8 84            	pop	a
1925  02e9               L154:
1926                     ; 401         while (y1 != y2)
1928  02e9 7b0e          	ld	a,(OFST+2,sp)
1929  02eb 1112          	cp	a,(OFST+6,sp)
1930  02ed 26ce          	jrne	L544
1931  02ef 20bb          	jra	L344
2009                     ; 427 void LcdDrawHLine(uint8_t x, uint8_t y, 
2009                     ; 428 									uint8_t len, lcd_draw_mode_t mode)
2009                     ; 429 {
2010                     	switch	.text
2011  02f1               _LcdDrawHLine:
2013  02f1 89            	pushw	x
2014  02f2 5203          	subw	sp,#3
2015       00000003      OFST:	set	3
2018                     ; 433 	val = (1 << (y % 8));
2020  02f4 9f            	ld	a,xl
2021  02f5 a407          	and	a,#7
2022  02f7 5f            	clrw	x
2023  02f8 97            	ld	xl,a
2024  02f9 a601          	ld	a,#1
2025  02fb 5d            	tnzw	x
2026  02fc 2704          	jreq	L46
2027  02fe               L66:
2028  02fe 48            	sll	a
2029  02ff 5a            	decw	x
2030  0300 26fc          	jrne	L66
2031  0302               L46:
2032  0302 6b02          	ld	(OFST-1,sp),a
2034                     ; 434 	by = y/8;
2036  0304 7b05          	ld	a,(OFST+2,sp)
2037  0306 5f            	clrw	x
2038  0307 97            	ld	xl,a
2039  0308 57            	sraw	x
2040  0309 57            	sraw	x
2041  030a 57            	sraw	x
2042  030b 01            	rrwa	x,a
2043  030c 6b01          	ld	(OFST-2,sp),a
2044  030e 02            	rlwa	x,a
2046                     ; 436 	if ((x>=0) && (x < LCD_X_RES) && (y>=0) && (y < LCD_Y_RES))
2048  030f 7b04          	ld	a,(OFST+1,sp)
2049  0311 a154          	cp	a,#84
2050  0313 2478          	jruge	L115
2052  0315 7b05          	ld	a,(OFST+2,sp)
2053  0317 a130          	cp	a,#48
2054  0319 2472          	jruge	L115
2055                     ; 438 		for (cx=0; cx<len; cx++)
2057  031b 0f03          	clr	(OFST+0,sp)
2060  031d 2068          	jra	L715
2061  031f               L315:
2062                     ; 440 			if(LCD_DRAW_MODE_SET == mode) 
2064  031f 0d09          	tnz	(OFST+6,sp)
2065  0321 261f          	jrne	L325
2066                     ; 441 				lcdCache[x+cx][by] |= val;
2068  0323 7b04          	ld	a,(OFST+1,sp)
2069  0325 5f            	clrw	x
2070  0326 1b03          	add	a,(OFST+0,sp)
2071  0328 2401          	jrnc	L07
2072  032a 5c            	incw	x
2073  032b               L07:
2074  032b 02            	rlwa	x,a
2075  032c a606          	ld	a,#6
2076  032e cd0000        	call	c_bmulx
2078  0331 01            	rrwa	x,a
2079  0332 1b01          	add	a,(OFST-2,sp)
2080  0334 2401          	jrnc	L27
2081  0336 5c            	incw	x
2082  0337               L27:
2083  0337 02            	rlwa	x,a
2084  0338 d60002        	ld	a,(L5_lcdCache,x)
2085  033b 1a02          	or	a,(OFST-1,sp)
2086  033d d70002        	ld	(L5_lcdCache,x),a
2088  0340 2043          	jra	L525
2089  0342               L325:
2090                     ; 442 			else if(LCD_DRAW_MODE_CLR == mode)
2092  0342 7b09          	ld	a,(OFST+6,sp)
2093  0344 a101          	cp	a,#1
2094  0346 2620          	jrne	L725
2095                     ; 443 				lcdCache[x+cx][by] &= ~val;
2097  0348 7b04          	ld	a,(OFST+1,sp)
2098  034a 5f            	clrw	x
2099  034b 1b03          	add	a,(OFST+0,sp)
2100  034d 2401          	jrnc	L47
2101  034f 5c            	incw	x
2102  0350               L47:
2103  0350 02            	rlwa	x,a
2104  0351 a606          	ld	a,#6
2105  0353 cd0000        	call	c_bmulx
2107  0356 01            	rrwa	x,a
2108  0357 1b01          	add	a,(OFST-2,sp)
2109  0359 2401          	jrnc	L67
2110  035b 5c            	incw	x
2111  035c               L67:
2112  035c 02            	rlwa	x,a
2113  035d 7b02          	ld	a,(OFST-1,sp)
2114  035f 43            	cpl	a
2115  0360 d40002        	and	a,(L5_lcdCache,x)
2116  0363 d70002        	ld	(L5_lcdCache,x),a
2118  0366 201d          	jra	L525
2119  0368               L725:
2120                     ; 445 				lcdCache[x+cx][by] ^= val;
2122  0368 7b04          	ld	a,(OFST+1,sp)
2123  036a 5f            	clrw	x
2124  036b 1b03          	add	a,(OFST+0,sp)
2125  036d 2401          	jrnc	L001
2126  036f 5c            	incw	x
2127  0370               L001:
2128  0370 02            	rlwa	x,a
2129  0371 a606          	ld	a,#6
2130  0373 cd0000        	call	c_bmulx
2132  0376 01            	rrwa	x,a
2133  0377 1b01          	add	a,(OFST-2,sp)
2134  0379 2401          	jrnc	L201
2135  037b 5c            	incw	x
2136  037c               L201:
2137  037c 02            	rlwa	x,a
2138  037d d60002        	ld	a,(L5_lcdCache,x)
2139  0380 1802          	xor	a,(OFST-1,sp)
2140  0382 d70002        	ld	(L5_lcdCache,x),a
2141  0385               L525:
2142                     ; 438 		for (cx=0; cx<len; cx++)
2144  0385 0c03          	inc	(OFST+0,sp)
2146  0387               L715:
2149  0387 7b03          	ld	a,(OFST+0,sp)
2150  0389 1108          	cp	a,(OFST+5,sp)
2151  038b 2592          	jrult	L315
2152  038d               L115:
2153                     ; 448 }
2156  038d 5b05          	addw	sp,#5
2157  038f 81            	ret
2221                     ; 461 void LcdDrawVLine(uint8_t x, uint8_t y, uint8_t l, lcd_draw_mode_t mode)
2221                     ; 462 {
2222                     	switch	.text
2223  0390               _LcdDrawVLine:
2225  0390 89            	pushw	x
2226  0391 88            	push	a
2227       00000001      OFST:	set	1
2230                     ; 465 	if ((x>=0) && (x < LCD_X_RES)&& (y>=0) && (y < LCD_Y_RES))
2232  0392 9e            	ld	a,xh
2233  0393 a154          	cp	a,#84
2234  0395 2420          	jruge	L165
2236  0397 9f            	ld	a,xl
2237  0398 a130          	cp	a,#48
2238  039a 241b          	jruge	L165
2239                     ; 467 		for (cy=0; cy<l; cy++)
2241  039c 0f01          	clr	(OFST+0,sp)
2244  039e 2011          	jra	L765
2245  03a0               L365:
2246                     ; 469 			LcdDrawPixel(x, y+cy, mode);
2248  03a0 7b07          	ld	a,(OFST+6,sp)
2249  03a2 88            	push	a
2250  03a3 7b04          	ld	a,(OFST+3,sp)
2251  03a5 1b02          	add	a,(OFST+1,sp)
2252  03a7 97            	ld	xl,a
2253  03a8 7b03          	ld	a,(OFST+2,sp)
2254  03aa 95            	ld	xh,a
2255  03ab cd015c        	call	_LcdDrawPixel
2257  03ae 84            	pop	a
2258                     ; 467 		for (cy=0; cy<l; cy++)
2260  03af 0c01          	inc	(OFST+0,sp)
2262  03b1               L765:
2265  03b1 7b01          	ld	a,(OFST+0,sp)
2266  03b3 1106          	cp	a,(OFST+5,sp)
2267  03b5 25e9          	jrult	L365
2268  03b7               L165:
2269                     ; 472 }
2272  03b7 5b03          	addw	sp,#3
2273  03b9 81            	ret
2365                     ; 486 void LcdDrawCircle(uint8_t x, 
2365                     ; 487 									 uint8_t y,
2365                     ; 488 									 uint8_t radius,
2365                     ; 489 									 lcd_draw_mode_t mode)
2365                     ; 490 {
2366                     	switch	.text
2367  03ba               _LcdDrawCircle:
2369  03ba 89            	pushw	x
2370  03bb 520a          	subw	sp,#10
2371       0000000a      OFST:	set	10
2374                     ; 491 	int f = 1 - radius;
2376  03bd a600          	ld	a,#0
2377  03bf 97            	ld	xl,a
2378  03c0 a601          	ld	a,#1
2379  03c2 100f          	sub	a,(OFST+5,sp)
2380  03c4 2401          	jrnc	L011
2381  03c6 5a            	decw	x
2382  03c7               L011:
2383  03c7 02            	rlwa	x,a
2384  03c8 1f05          	ldw	(OFST-5,sp),x
2385  03ca 01            	rrwa	x,a
2387                     ; 492 	int ddF_x = 1;
2389  03cb ae0001        	ldw	x,#1
2390  03ce 1f01          	ldw	(OFST-9,sp),x
2392                     ; 493 	int ddF_y = -2 * radius;
2394  03d0 7b0f          	ld	a,(OFST+5,sp)
2395  03d2 5f            	clrw	x
2396  03d3 97            	ld	xl,a
2397  03d4 90aefffe      	ldw	y,#65534
2398  03d8 cd0000        	call	c_imul
2400  03db 1f03          	ldw	(OFST-7,sp),x
2402                     ; 494 	int x1 = 0;
2404  03dd 5f            	clrw	x
2405  03de 1f07          	ldw	(OFST-3,sp),x
2407                     ; 495 	int y1 = radius;
2409  03e0 7b0f          	ld	a,(OFST+5,sp)
2410  03e2 5f            	clrw	x
2411  03e3 97            	ld	xl,a
2412  03e4 1f09          	ldw	(OFST-1,sp),x
2414                     ; 498 	LcdDrawPixel(x, y + radius, mode);
2416  03e6 7b10          	ld	a,(OFST+6,sp)
2417  03e8 88            	push	a
2418  03e9 7b0d          	ld	a,(OFST+3,sp)
2419  03eb 1b10          	add	a,(OFST+6,sp)
2420  03ed 97            	ld	xl,a
2421  03ee 7b0c          	ld	a,(OFST+2,sp)
2422  03f0 95            	ld	xh,a
2423  03f1 cd015c        	call	_LcdDrawPixel
2425  03f4 84            	pop	a
2426                     ; 499 	LcdDrawPixel(x, y - radius, mode);
2428  03f5 7b10          	ld	a,(OFST+6,sp)
2429  03f7 88            	push	a
2430  03f8 7b0d          	ld	a,(OFST+3,sp)
2431  03fa 1010          	sub	a,(OFST+6,sp)
2432  03fc 97            	ld	xl,a
2433  03fd 7b0c          	ld	a,(OFST+2,sp)
2434  03ff 95            	ld	xh,a
2435  0400 cd015c        	call	_LcdDrawPixel
2437  0403 84            	pop	a
2438                     ; 500 	LcdDrawPixel(x + radius, y, mode);
2440  0404 7b10          	ld	a,(OFST+6,sp)
2441  0406 88            	push	a
2442  0407 7b0d          	ld	a,(OFST+3,sp)
2443  0409 97            	ld	xl,a
2444  040a 7b0c          	ld	a,(OFST+2,sp)
2445  040c 1b10          	add	a,(OFST+6,sp)
2446  040e 95            	ld	xh,a
2447  040f cd015c        	call	_LcdDrawPixel
2449  0412 84            	pop	a
2450                     ; 501 	LcdDrawPixel(x - radius, y, mode);
2452  0413 7b10          	ld	a,(OFST+6,sp)
2453  0415 88            	push	a
2454  0416 7b0d          	ld	a,(OFST+3,sp)
2455  0418 97            	ld	xl,a
2456  0419 7b0c          	ld	a,(OFST+2,sp)
2457  041b 1010          	sub	a,(OFST+6,sp)
2458  041d 95            	ld	xh,a
2459  041e cd015c        	call	_LcdDrawPixel
2461  0421 84            	pop	a
2463  0422 acdd04dd      	jpf	L336
2464  0426               L136:
2465                     ; 505 		if(f >= 0) 
2467  0426 9c            	rvf
2468  0427 1e05          	ldw	x,(OFST-5,sp)
2469  0429 2f15          	jrslt	L736
2470                     ; 507 			y1--;
2472  042b 1e09          	ldw	x,(OFST-1,sp)
2473  042d 1d0001        	subw	x,#1
2474  0430 1f09          	ldw	(OFST-1,sp),x
2476                     ; 508 			ddF_y += 2;
2478  0432 1e03          	ldw	x,(OFST-7,sp)
2479  0434 1c0002        	addw	x,#2
2480  0437 1f03          	ldw	(OFST-7,sp),x
2482                     ; 509 			f += ddF_y;
2484  0439 1e05          	ldw	x,(OFST-5,sp)
2485  043b 72fb03        	addw	x,(OFST-7,sp)
2486  043e 1f05          	ldw	(OFST-5,sp),x
2488  0440               L736:
2489                     ; 511 		x1++;
2491  0440 1e07          	ldw	x,(OFST-3,sp)
2492  0442 1c0001        	addw	x,#1
2493  0445 1f07          	ldw	(OFST-3,sp),x
2495                     ; 512 		ddF_x += 2;
2497  0447 1e01          	ldw	x,(OFST-9,sp)
2498  0449 1c0002        	addw	x,#2
2499  044c 1f01          	ldw	(OFST-9,sp),x
2501                     ; 513 		f += ddF_x;    
2503  044e 1e05          	ldw	x,(OFST-5,sp)
2504  0450 72fb01        	addw	x,(OFST-9,sp)
2505  0453 1f05          	ldw	(OFST-5,sp),x
2507                     ; 514 		LcdDrawPixel(x + x1, y + y1, mode);
2509  0455 7b10          	ld	a,(OFST+6,sp)
2510  0457 88            	push	a
2511  0458 7b0b          	ld	a,(OFST+1,sp)
2512  045a 1b0d          	add	a,(OFST+3,sp)
2513  045c 97            	ld	xl,a
2514  045d 7b09          	ld	a,(OFST-1,sp)
2515  045f 1b0c          	add	a,(OFST+2,sp)
2516  0461 95            	ld	xh,a
2517  0462 cd015c        	call	_LcdDrawPixel
2519  0465 84            	pop	a
2520                     ; 515 		LcdDrawPixel(x - x1, y + y1, mode);
2522  0466 7b10          	ld	a,(OFST+6,sp)
2523  0468 88            	push	a
2524  0469 7b0b          	ld	a,(OFST+1,sp)
2525  046b 1b0d          	add	a,(OFST+3,sp)
2526  046d 97            	ld	xl,a
2527  046e 7b0c          	ld	a,(OFST+2,sp)
2528  0470 1009          	sub	a,(OFST-1,sp)
2529  0472 95            	ld	xh,a
2530  0473 cd015c        	call	_LcdDrawPixel
2532  0476 84            	pop	a
2533                     ; 516 		LcdDrawPixel(x + x1, y - y1, mode);
2535  0477 7b10          	ld	a,(OFST+6,sp)
2536  0479 88            	push	a
2537  047a 7b0d          	ld	a,(OFST+3,sp)
2538  047c 100b          	sub	a,(OFST+1,sp)
2539  047e 97            	ld	xl,a
2540  047f 7b09          	ld	a,(OFST-1,sp)
2541  0481 1b0c          	add	a,(OFST+2,sp)
2542  0483 95            	ld	xh,a
2543  0484 cd015c        	call	_LcdDrawPixel
2545  0487 84            	pop	a
2546                     ; 517 		LcdDrawPixel(x - x1, y - y1, mode);
2548  0488 7b10          	ld	a,(OFST+6,sp)
2549  048a 88            	push	a
2550  048b 7b0d          	ld	a,(OFST+3,sp)
2551  048d 100b          	sub	a,(OFST+1,sp)
2552  048f 97            	ld	xl,a
2553  0490 7b0c          	ld	a,(OFST+2,sp)
2554  0492 1009          	sub	a,(OFST-1,sp)
2555  0494 95            	ld	xh,a
2556  0495 cd015c        	call	_LcdDrawPixel
2558  0498 84            	pop	a
2559                     ; 518 		LcdDrawPixel(x + y1, y + x1, mode);
2561  0499 7b10          	ld	a,(OFST+6,sp)
2562  049b 88            	push	a
2563  049c 7b09          	ld	a,(OFST-1,sp)
2564  049e 1b0d          	add	a,(OFST+3,sp)
2565  04a0 97            	ld	xl,a
2566  04a1 7b0b          	ld	a,(OFST+1,sp)
2567  04a3 1b0c          	add	a,(OFST+2,sp)
2568  04a5 95            	ld	xh,a
2569  04a6 cd015c        	call	_LcdDrawPixel
2571  04a9 84            	pop	a
2572                     ; 519 		LcdDrawPixel(x - y1, y + x1, mode);
2574  04aa 7b10          	ld	a,(OFST+6,sp)
2575  04ac 88            	push	a
2576  04ad 7b09          	ld	a,(OFST-1,sp)
2577  04af 1b0d          	add	a,(OFST+3,sp)
2578  04b1 97            	ld	xl,a
2579  04b2 7b0c          	ld	a,(OFST+2,sp)
2580  04b4 100b          	sub	a,(OFST+1,sp)
2581  04b6 95            	ld	xh,a
2582  04b7 cd015c        	call	_LcdDrawPixel
2584  04ba 84            	pop	a
2585                     ; 520 		LcdDrawPixel(x + y1, y - x1, mode);
2587  04bb 7b10          	ld	a,(OFST+6,sp)
2588  04bd 88            	push	a
2589  04be 7b0d          	ld	a,(OFST+3,sp)
2590  04c0 1009          	sub	a,(OFST-1,sp)
2591  04c2 97            	ld	xl,a
2592  04c3 7b0b          	ld	a,(OFST+1,sp)
2593  04c5 1b0c          	add	a,(OFST+2,sp)
2594  04c7 95            	ld	xh,a
2595  04c8 cd015c        	call	_LcdDrawPixel
2597  04cb 84            	pop	a
2598                     ; 521 		LcdDrawPixel(x - y1, y - x1, mode);
2600  04cc 7b10          	ld	a,(OFST+6,sp)
2601  04ce 88            	push	a
2602  04cf 7b0d          	ld	a,(OFST+3,sp)
2603  04d1 1009          	sub	a,(OFST-1,sp)
2604  04d3 97            	ld	xl,a
2605  04d4 7b0c          	ld	a,(OFST+2,sp)
2606  04d6 100b          	sub	a,(OFST+1,sp)
2607  04d8 95            	ld	xh,a
2608  04d9 cd015c        	call	_LcdDrawPixel
2610  04dc 84            	pop	a
2611  04dd               L336:
2612                     ; 503 	while(x1 < y1)
2614  04dd 9c            	rvf
2615  04de 1e07          	ldw	x,(OFST-3,sp)
2616  04e0 1309          	cpw	x,(OFST-1,sp)
2617  04e2 2e03          	jrsge	L211
2618  04e4 cc0426        	jp	L136
2619  04e7               L211:
2620                     ; 523 }
2623  04e7 5b0c          	addw	sp,#12
2624  04e9 81            	ret
2690                     ; 536 void LcdDrawRect(uint8_t x1,uint8_t y1, 
2690                     ; 537 								 uint8_t x2, uint8_t y2,
2690                     ; 538 								 lcd_draw_mode_t mode)
2690                     ; 539 {
2691                     	switch	.text
2692  04ea               _LcdDrawRect:
2694  04ea 89            	pushw	x
2695       00000000      OFST:	set	0
2698                     ; 542 	if(x1 > x2)	_LcdSwapUInt8(&x1,&x2);
2700  04eb 9e            	ld	a,xh
2701  04ec 1105          	cp	a,(OFST+5,sp)
2702  04ee 230d          	jrule	L766
2705  04f0 96            	ldw	x,sp
2706  04f1 1c0005        	addw	x,#OFST+5
2707  04f4 89            	pushw	x
2708  04f5 96            	ldw	x,sp
2709  04f6 1c0003        	addw	x,#OFST+3
2710  04f9 cd0d5f        	call	L11__LcdSwapUInt8
2712  04fc 85            	popw	x
2713  04fd               L766:
2714                     ; 543 	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
2716  04fd 7b02          	ld	a,(OFST+2,sp)
2717  04ff 1106          	cp	a,(OFST+6,sp)
2718  0501 230d          	jrule	L176
2721  0503 96            	ldw	x,sp
2722  0504 1c0006        	addw	x,#OFST+6
2723  0507 89            	pushw	x
2724  0508 96            	ldw	x,sp
2725  0509 1c0004        	addw	x,#OFST+4
2726  050c cd0d5f        	call	L11__LcdSwapUInt8
2728  050f 85            	popw	x
2729  0510               L176:
2730                     ; 545 	LcdDrawHLine(x1, y1, x2-x1, mode);
2732  0510 7b07          	ld	a,(OFST+7,sp)
2733  0512 88            	push	a
2734  0513 7b06          	ld	a,(OFST+6,sp)
2735  0515 1002          	sub	a,(OFST+2,sp)
2736  0517 88            	push	a
2737  0518 7b04          	ld	a,(OFST+4,sp)
2738  051a 97            	ld	xl,a
2739  051b 7b03          	ld	a,(OFST+3,sp)
2740  051d 95            	ld	xh,a
2741  051e cd02f1        	call	_LcdDrawHLine
2743  0521 85            	popw	x
2744                     ; 546 	LcdDrawHLine(x1, y2, x2-x1, mode);
2746  0522 7b07          	ld	a,(OFST+7,sp)
2747  0524 88            	push	a
2748  0525 7b06          	ld	a,(OFST+6,sp)
2749  0527 1002          	sub	a,(OFST+2,sp)
2750  0529 88            	push	a
2751  052a 7b08          	ld	a,(OFST+8,sp)
2752  052c 97            	ld	xl,a
2753  052d 7b03          	ld	a,(OFST+3,sp)
2754  052f 95            	ld	xh,a
2755  0530 cd02f1        	call	_LcdDrawHLine
2757  0533 85            	popw	x
2758                     ; 547 	LcdDrawVLine(x1, y1, y2-y1, mode);
2760  0534 7b07          	ld	a,(OFST+7,sp)
2761  0536 88            	push	a
2762  0537 7b07          	ld	a,(OFST+7,sp)
2763  0539 1003          	sub	a,(OFST+3,sp)
2764  053b 88            	push	a
2765  053c 7b04          	ld	a,(OFST+4,sp)
2766  053e 97            	ld	xl,a
2767  053f 7b03          	ld	a,(OFST+3,sp)
2768  0541 95            	ld	xh,a
2769  0542 cd0390        	call	_LcdDrawVLine
2771  0545 85            	popw	x
2772                     ; 548 	LcdDrawVLine(x2, y1, y2-y1+1, mode);
2774  0546 7b07          	ld	a,(OFST+7,sp)
2775  0548 88            	push	a
2776  0549 7b07          	ld	a,(OFST+7,sp)
2777  054b 1003          	sub	a,(OFST+3,sp)
2778  054d 4c            	inc	a
2779  054e 88            	push	a
2780  054f 7b04          	ld	a,(OFST+4,sp)
2781  0551 97            	ld	xl,a
2782  0552 7b07          	ld	a,(OFST+7,sp)
2783  0554 95            	ld	xh,a
2784  0555 cd0390        	call	_LcdDrawVLine
2786  0558 85            	popw	x
2787                     ; 549 }
2790  0559 85            	popw	x
2791  055a 81            	ret
2886                     ; 586 void LcdDrawRoundRect(uint8_t x1, uint8_t y1,
2886                     ; 587 											uint8_t x2, uint8_t y2,	
2886                     ; 588 											uint8_t r, lcd_draw_mode_t mode) {
2887                     	switch	.text
2888  055b               _LcdDrawRoundRect:
2890  055b 89            	pushw	x
2891  055c 5203          	subw	sp,#3
2892       00000003      OFST:	set	3
2895                     ; 592 	if(x1 > x2) _LcdSwapUInt8(&x1,&x2);
2897  055e 9e            	ld	a,xh
2898  055f 1108          	cp	a,(OFST+5,sp)
2899  0561 230d          	jrule	L137
2902  0563 96            	ldw	x,sp
2903  0564 1c0008        	addw	x,#OFST+5
2904  0567 89            	pushw	x
2905  0568 96            	ldw	x,sp
2906  0569 1c0006        	addw	x,#OFST+3
2907  056c cd0d5f        	call	L11__LcdSwapUInt8
2909  056f 85            	popw	x
2910  0570               L137:
2911                     ; 593 	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
2913  0570 7b05          	ld	a,(OFST+2,sp)
2914  0572 1109          	cp	a,(OFST+6,sp)
2915  0574 230d          	jrule	L337
2918  0576 96            	ldw	x,sp
2919  0577 1c0009        	addw	x,#OFST+6
2920  057a 89            	pushw	x
2921  057b 96            	ldw	x,sp
2922  057c 1c0007        	addw	x,#OFST+4
2923  057f cd0d5f        	call	L11__LcdSwapUInt8
2925  0582 85            	popw	x
2926  0583               L337:
2927                     ; 595 	w = x2 - x1;
2929  0583 7b08          	ld	a,(OFST+5,sp)
2930  0585 1004          	sub	a,(OFST+1,sp)
2931  0587 6b02          	ld	(OFST-1,sp),a
2933                     ; 596 	h = y2 - y1;
2935  0589 7b09          	ld	a,(OFST+6,sp)
2936  058b 1005          	sub	a,(OFST+2,sp)
2937  058d 6b03          	ld	(OFST+0,sp),a
2939                     ; 598   max_radius = ((w < h) ? w : h) / 2; // 1/2 minor axis
2941  058f 7b02          	ld	a,(OFST-1,sp)
2942  0591 1103          	cp	a,(OFST+0,sp)
2943  0593 2406          	jruge	L021
2944  0595 7b02          	ld	a,(OFST-1,sp)
2945  0597 5f            	clrw	x
2946  0598 97            	ld	xl,a
2947  0599 2004          	jra	L221
2948  059b               L021:
2949  059b 7b03          	ld	a,(OFST+0,sp)
2950  059d 5f            	clrw	x
2951  059e 97            	ld	xl,a
2952  059f               L221:
2953  059f a602          	ld	a,#2
2954  05a1 cd0000        	call	c_sdivx
2956  05a4 01            	rrwa	x,a
2957  05a5 6b01          	ld	(OFST-2,sp),a
2958  05a7 02            	rlwa	x,a
2960                     ; 599   if (r > max_radius)
2962  05a8 7b0a          	ld	a,(OFST+7,sp)
2963  05aa 1101          	cp	a,(OFST-2,sp)
2964  05ac 2304          	jrule	L537
2965                     ; 600     r = max_radius;
2967  05ae 7b01          	ld	a,(OFST-2,sp)
2968  05b0 6b0a          	ld	(OFST+7,sp),a
2969  05b2               L537:
2970                     ; 602   LcdDrawHLine(x1 + r, y1, w - 2 * r, mode);         // Top
2972  05b2 7b0b          	ld	a,(OFST+8,sp)
2973  05b4 88            	push	a
2974  05b5 7b0b          	ld	a,(OFST+8,sp)
2975  05b7 48            	sll	a
2976  05b8 1003          	sub	a,(OFST+0,sp)
2977  05ba 40            	neg	a
2978  05bb 88            	push	a
2979  05bc 7b07          	ld	a,(OFST+4,sp)
2980  05be 97            	ld	xl,a
2981  05bf 7b06          	ld	a,(OFST+3,sp)
2982  05c1 1b0c          	add	a,(OFST+9,sp)
2983  05c3 95            	ld	xh,a
2984  05c4 cd02f1        	call	_LcdDrawHLine
2986  05c7 85            	popw	x
2987                     ; 603   LcdDrawHLine(x1 + r, y2 - 1, w - 2 * r, mode); // Bottom
2989  05c8 7b0b          	ld	a,(OFST+8,sp)
2990  05ca 88            	push	a
2991  05cb 7b0b          	ld	a,(OFST+8,sp)
2992  05cd 48            	sll	a
2993  05ce 1003          	sub	a,(OFST+0,sp)
2994  05d0 40            	neg	a
2995  05d1 88            	push	a
2996  05d2 7b0b          	ld	a,(OFST+8,sp)
2997  05d4 4a            	dec	a
2998  05d5 97            	ld	xl,a
2999  05d6 7b06          	ld	a,(OFST+3,sp)
3000  05d8 1b0c          	add	a,(OFST+9,sp)
3001  05da 95            	ld	xh,a
3002  05db cd02f1        	call	_LcdDrawHLine
3004  05de 85            	popw	x
3005                     ; 604   LcdDrawVLine(x1, y1 + r, h - 2 * r, mode);         // Left
3007  05df 7b0b          	ld	a,(OFST+8,sp)
3008  05e1 88            	push	a
3009  05e2 7b0b          	ld	a,(OFST+8,sp)
3010  05e4 48            	sll	a
3011  05e5 1004          	sub	a,(OFST+1,sp)
3012  05e7 40            	neg	a
3013  05e8 88            	push	a
3014  05e9 7b07          	ld	a,(OFST+4,sp)
3015  05eb 1b0c          	add	a,(OFST+9,sp)
3016  05ed 97            	ld	xl,a
3017  05ee 7b06          	ld	a,(OFST+3,sp)
3018  05f0 95            	ld	xh,a
3019  05f1 cd0390        	call	_LcdDrawVLine
3021  05f4 85            	popw	x
3022                     ; 605   LcdDrawVLine(x2 - 1, y1 + r, h - 2 * r, mode); // Right
3024  05f5 7b0b          	ld	a,(OFST+8,sp)
3025  05f7 88            	push	a
3026  05f8 7b0b          	ld	a,(OFST+8,sp)
3027  05fa 48            	sll	a
3028  05fb 1004          	sub	a,(OFST+1,sp)
3029  05fd 40            	neg	a
3030  05fe 88            	push	a
3031  05ff 7b07          	ld	a,(OFST+4,sp)
3032  0601 1b0c          	add	a,(OFST+9,sp)
3033  0603 97            	ld	xl,a
3034  0604 7b0a          	ld	a,(OFST+7,sp)
3035  0606 4a            	dec	a
3036  0607 95            	ld	xh,a
3037  0608 cd0390        	call	_LcdDrawVLine
3039  060b 85            	popw	x
3040                     ; 607   LcdDrawCircleHelper(x1 + r, y1 + r, r, 1, mode);
3042  060c 7b0b          	ld	a,(OFST+8,sp)
3043  060e 88            	push	a
3044  060f 4b01          	push	#1
3045  0611 7b0c          	ld	a,(OFST+9,sp)
3046  0613 88            	push	a
3047  0614 7b08          	ld	a,(OFST+5,sp)
3048  0616 1b0d          	add	a,(OFST+10,sp)
3049  0618 97            	ld	xl,a
3050  0619 7b07          	ld	a,(OFST+4,sp)
3051  061b 1b0d          	add	a,(OFST+10,sp)
3052  061d 95            	ld	xh,a
3053  061e cd0853        	call	_LcdDrawCircleHelper
3055  0621 5b03          	addw	sp,#3
3056                     ; 608   LcdDrawCircleHelper(x2 - r - 1, y1 + r, r, 2, mode);
3058  0623 7b0b          	ld	a,(OFST+8,sp)
3059  0625 88            	push	a
3060  0626 4b02          	push	#2
3061  0628 7b0c          	ld	a,(OFST+9,sp)
3062  062a 88            	push	a
3063  062b 7b08          	ld	a,(OFST+5,sp)
3064  062d 1b0d          	add	a,(OFST+10,sp)
3065  062f 97            	ld	xl,a
3066  0630 7b0b          	ld	a,(OFST+8,sp)
3067  0632 100d          	sub	a,(OFST+10,sp)
3068  0634 4a            	dec	a
3069  0635 95            	ld	xh,a
3070  0636 cd0853        	call	_LcdDrawCircleHelper
3072  0639 5b03          	addw	sp,#3
3073                     ; 609   LcdDrawCircleHelper(x2 - r - 1, y2 - r - 1, r, 4, mode);
3075  063b 7b0b          	ld	a,(OFST+8,sp)
3076  063d 88            	push	a
3077  063e 4b04          	push	#4
3078  0640 7b0c          	ld	a,(OFST+9,sp)
3079  0642 88            	push	a
3080  0643 7b0c          	ld	a,(OFST+9,sp)
3081  0645 100d          	sub	a,(OFST+10,sp)
3082  0647 4a            	dec	a
3083  0648 97            	ld	xl,a
3084  0649 7b0b          	ld	a,(OFST+8,sp)
3085  064b 100d          	sub	a,(OFST+10,sp)
3086  064d 4a            	dec	a
3087  064e 95            	ld	xh,a
3088  064f cd0853        	call	_LcdDrawCircleHelper
3090  0652 5b03          	addw	sp,#3
3091                     ; 610   LcdDrawCircleHelper(x1 + r, y2 - r - 1, r, 8, mode);
3093  0654 7b0b          	ld	a,(OFST+8,sp)
3094  0656 88            	push	a
3095  0657 4b08          	push	#8
3096  0659 7b0c          	ld	a,(OFST+9,sp)
3097  065b 88            	push	a
3098  065c 7b0c          	ld	a,(OFST+9,sp)
3099  065e 100d          	sub	a,(OFST+10,sp)
3100  0660 4a            	dec	a
3101  0661 97            	ld	xl,a
3102  0662 7b07          	ld	a,(OFST+4,sp)
3103  0664 1b0d          	add	a,(OFST+10,sp)
3104  0666 95            	ld	xh,a
3105  0667 cd0853        	call	_LcdDrawCircleHelper
3107  066a 5b03          	addw	sp,#3
3108                     ; 611 }
3111  066c 5b05          	addw	sp,#5
3112  066e 81            	ret
3206                     ; 624 void LcdFillRoundRect(uint8_t x1, uint8_t y1,
3206                     ; 625 											uint8_t x2, uint8_t y2,
3206                     ; 626 											uint8_t r, lcd_draw_mode_t mode) {
3207                     	switch	.text
3208  066f               _LcdFillRoundRect:
3210  066f 89            	pushw	x
3211  0670 89            	pushw	x
3212       00000002      OFST:	set	2
3215                     ; 629 	if(x1 > x2) _LcdSwapUInt8(&x1,&x2);
3217  0671 9e            	ld	a,xh
3218  0672 1107          	cp	a,(OFST+5,sp)
3219  0674 230d          	jrule	L577
3222  0676 96            	ldw	x,sp
3223  0677 1c0007        	addw	x,#OFST+5
3224  067a 89            	pushw	x
3225  067b 96            	ldw	x,sp
3226  067c 1c0005        	addw	x,#OFST+3
3227  067f cd0d5f        	call	L11__LcdSwapUInt8
3229  0682 85            	popw	x
3230  0683               L577:
3231                     ; 630 	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
3233  0683 7b04          	ld	a,(OFST+2,sp)
3234  0685 1108          	cp	a,(OFST+6,sp)
3235  0687 230d          	jrule	L777
3238  0689 96            	ldw	x,sp
3239  068a 1c0008        	addw	x,#OFST+6
3240  068d 89            	pushw	x
3241  068e 96            	ldw	x,sp
3242  068f 1c0006        	addw	x,#OFST+4
3243  0692 cd0d5f        	call	L11__LcdSwapUInt8
3245  0695 85            	popw	x
3246  0696               L777:
3247                     ; 632 	w = x2 - x1;
3249  0696 7b07          	ld	a,(OFST+5,sp)
3250  0698 1003          	sub	a,(OFST+1,sp)
3251  069a 6b02          	ld	(OFST+0,sp),a
3253                     ; 633 	h = y2 - y1;
3255  069c 7b08          	ld	a,(OFST+6,sp)
3256  069e 1004          	sub	a,(OFST+2,sp)
3257  06a0 6b01          	ld	(OFST-1,sp),a
3259                     ; 635 	max_radius = ((w < h) ? w : h) / 2; // 1/2 minor axis
3261  06a2 7b02          	ld	a,(OFST+0,sp)
3262  06a4 1101          	cp	a,(OFST-1,sp)
3263  06a6 2406          	jruge	L621
3264  06a8 7b02          	ld	a,(OFST+0,sp)
3265  06aa 5f            	clrw	x
3266  06ab 97            	ld	xl,a
3267  06ac 2004          	jra	L031
3268  06ae               L621:
3269  06ae 7b01          	ld	a,(OFST-1,sp)
3270  06b0 5f            	clrw	x
3271  06b1 97            	ld	xl,a
3272  06b2               L031:
3273  06b2 a602          	ld	a,#2
3274  06b4 cd0000        	call	c_sdivx
3276  06b7 01            	rrwa	x,a
3277  06b8 6b02          	ld	(OFST+0,sp),a
3278  06ba 02            	rlwa	x,a
3280                     ; 636   if (r > max_radius)
3282  06bb 7b09          	ld	a,(OFST+7,sp)
3283  06bd 1102          	cp	a,(OFST+0,sp)
3284  06bf 2304          	jrule	L1001
3285                     ; 637     r = max_radius;
3287  06c1 7b02          	ld	a,(OFST+0,sp)
3288  06c3 6b09          	ld	(OFST+7,sp),a
3289  06c5               L1001:
3290                     ; 639   LcdFillRect(x1 + r, y1, x2 - r, y2, mode);
3292  06c5 7b0a          	ld	a,(OFST+8,sp)
3293  06c7 88            	push	a
3294  06c8 7b09          	ld	a,(OFST+7,sp)
3295  06ca 88            	push	a
3296  06cb 7b09          	ld	a,(OFST+7,sp)
3297  06cd 100b          	sub	a,(OFST+9,sp)
3298  06cf 88            	push	a
3299  06d0 7b07          	ld	a,(OFST+5,sp)
3300  06d2 97            	ld	xl,a
3301  06d3 7b06          	ld	a,(OFST+4,sp)
3302  06d5 1b0c          	add	a,(OFST+10,sp)
3303  06d7 95            	ld	xh,a
3304  06d8 cd0809        	call	_LcdFillRect
3306  06db 5b03          	addw	sp,#3
3307                     ; 641   LcdFillCircleHelper(x2 - r - 1, y1 + r, r, 1, h - 2 * r - 1, mode);
3309  06dd 7b0a          	ld	a,(OFST+8,sp)
3310  06df 88            	push	a
3311  06e0 7b0a          	ld	a,(OFST+8,sp)
3312  06e2 48            	sll	a
3313  06e3 1002          	sub	a,(OFST+0,sp)
3314  06e5 40            	neg	a
3315  06e6 4a            	dec	a
3316  06e7 88            	push	a
3317  06e8 4b01          	push	#1
3318  06ea 7b0c          	ld	a,(OFST+10,sp)
3319  06ec 88            	push	a
3320  06ed 7b08          	ld	a,(OFST+6,sp)
3321  06ef 1b0d          	add	a,(OFST+11,sp)
3322  06f1 97            	ld	xl,a
3323  06f2 7b0b          	ld	a,(OFST+9,sp)
3324  06f4 100d          	sub	a,(OFST+11,sp)
3325  06f6 4a            	dec	a
3326  06f7 95            	ld	xh,a
3327  06f8 cd0969        	call	_LcdFillCircleHelper
3329  06fb 5b04          	addw	sp,#4
3330                     ; 642   LcdFillCircleHelper(x1 + r, y1 + r, r, 2, h - 2 * r - 1, mode);
3332  06fd 7b0a          	ld	a,(OFST+8,sp)
3333  06ff 88            	push	a
3334  0700 7b0a          	ld	a,(OFST+8,sp)
3335  0702 48            	sll	a
3336  0703 1002          	sub	a,(OFST+0,sp)
3337  0705 40            	neg	a
3338  0706 4a            	dec	a
3339  0707 88            	push	a
3340  0708 4b02          	push	#2
3341  070a 7b0c          	ld	a,(OFST+10,sp)
3342  070c 88            	push	a
3343  070d 7b08          	ld	a,(OFST+6,sp)
3344  070f 1b0d          	add	a,(OFST+11,sp)
3345  0711 97            	ld	xl,a
3346  0712 7b07          	ld	a,(OFST+5,sp)
3347  0714 1b0d          	add	a,(OFST+11,sp)
3348  0716 95            	ld	xh,a
3349  0717 cd0969        	call	_LcdFillCircleHelper
3351  071a 5b04          	addw	sp,#4
3352                     ; 643 }
3355  071c 5b04          	addw	sp,#4
3356  071e 81            	ret
3459                     ; 656 void LcdDrawBitmap(uint8_t x, uint8_t y, 
3459                     ; 657 									 uint8_t * bitmap, 
3459                     ; 658 									 uint8_t sx, uint8_t sy,
3459                     ; 659 									 lcd_draw_mode_t mode)
3459                     ; 660 {
3460                     	switch	.text
3461  071f               _LcdDrawBitmap:
3463  071f 89            	pushw	x
3464  0720 5206          	subw	sp,#6
3465       00000006      OFST:	set	6
3468                     ; 665 	for (cy=0; cy<sy; cy++)
3470  0722 0f05          	clr	(OFST-1,sp)
3473  0724 acfd07fd      	jpf	L1501
3474  0728               L5401:
3475                     ; 667 		bit= cy % 8;
3477  0728 7b05          	ld	a,(OFST-1,sp)
3478  072a a407          	and	a,#7
3479  072c 6b03          	ld	(OFST-3,sp),a
3481                     ; 668 		for(cx=0; cx<sx; cx++)
3483  072e 0f06          	clr	(OFST+0,sp)
3486  0730 acf207f2      	jpf	L1601
3487  0734               L5501:
3488                     ; 670 			if(mode == LCD_DRAW_MODE_CLR)
3490  0734 7b0f          	ld	a,(OFST+9,sp)
3491  0736 a101          	cp	a,#1
3492  0738 261c          	jrne	L5601
3493                     ; 671 				data = ~bitmap[cx+((cy/8)*sx)];
3495  073a 7b05          	ld	a,(OFST-1,sp)
3496  073c 5f            	clrw	x
3497  073d 97            	ld	xl,a
3498  073e 57            	sraw	x
3499  073f 57            	sraw	x
3500  0740 57            	sraw	x
3501  0741 7b0d          	ld	a,(OFST+7,sp)
3502  0743 cd0000        	call	c_bmulx
3504  0746 01            	rrwa	x,a
3505  0747 1b06          	add	a,(OFST+0,sp)
3506  0749 2401          	jrnc	L431
3507  074b 5c            	incw	x
3508  074c               L431:
3509  074c 02            	rlwa	x,a
3510  074d 72fb0b        	addw	x,(OFST+5,sp)
3511  0750 f6            	ld	a,(x)
3512  0751 43            	cpl	a
3513  0752 6b04          	ld	(OFST-2,sp),a
3516  0754 2059          	jra	L7601
3517  0756               L5601:
3518                     ; 672 			else if(mode == LCD_DRAW_MODE_SET)
3520  0756 0d0f          	tnz	(OFST+9,sp)
3521  0758 261b          	jrne	L1701
3522                     ; 673 				data = bitmap[cx+((cy/8)*sx)];
3524  075a 7b05          	ld	a,(OFST-1,sp)
3525  075c 5f            	clrw	x
3526  075d 97            	ld	xl,a
3527  075e 57            	sraw	x
3528  075f 57            	sraw	x
3529  0760 57            	sraw	x
3530  0761 7b0d          	ld	a,(OFST+7,sp)
3531  0763 cd0000        	call	c_bmulx
3533  0766 01            	rrwa	x,a
3534  0767 1b06          	add	a,(OFST+0,sp)
3535  0769 2401          	jrnc	L631
3536  076b 5c            	incw	x
3537  076c               L631:
3538  076c 02            	rlwa	x,a
3539  076d 72fb0b        	addw	x,(OFST+5,sp)
3540  0770 f6            	ld	a,(x)
3541  0771 6b04          	ld	(OFST-2,sp),a
3544  0773 203a          	jra	L7601
3545  0775               L1701:
3546                     ; 675 				data = bitmap[cx+((cy/8)*sx)]^lcdCache[x+cx][y+cy];
3548  0775 7b05          	ld	a,(OFST-1,sp)
3549  0777 5f            	clrw	x
3550  0778 97            	ld	xl,a
3551  0779 57            	sraw	x
3552  077a 57            	sraw	x
3553  077b 57            	sraw	x
3554  077c 7b0d          	ld	a,(OFST+7,sp)
3555  077e cd0000        	call	c_bmulx
3557  0781 01            	rrwa	x,a
3558  0782 1b06          	add	a,(OFST+0,sp)
3559  0784 2401          	jrnc	L041
3560  0786 5c            	incw	x
3561  0787               L041:
3562  0787 02            	rlwa	x,a
3563  0788 72fb0b        	addw	x,(OFST+5,sp)
3564  078b f6            	ld	a,(x)
3565  078c 6b02          	ld	(OFST-4,sp),a
3567  078e 7b07          	ld	a,(OFST+1,sp)
3568  0790 5f            	clrw	x
3569  0791 1b06          	add	a,(OFST+0,sp)
3570  0793 2401          	jrnc	L241
3571  0795 5c            	incw	x
3572  0796               L241:
3573  0796 02            	rlwa	x,a
3574  0797 a606          	ld	a,#6
3575  0799 cd0000        	call	c_bmulx
3577  079c 01            	rrwa	x,a
3578  079d 1b05          	add	a,(OFST-1,sp)
3579  079f 2401          	jrnc	L441
3580  07a1 5c            	incw	x
3581  07a2               L441:
3582  07a2 1b08          	add	a,(OFST+2,sp)
3583  07a4 2401          	jrnc	L641
3584  07a6 5c            	incw	x
3585  07a7               L641:
3586  07a7 02            	rlwa	x,a
3587  07a8 d60002        	ld	a,(L5_lcdCache,x)
3588  07ab 1802          	xor	a,(OFST-4,sp)
3589  07ad 6b04          	ld	(OFST-2,sp),a
3591  07af               L7601:
3592                     ; 676 			if ((data & (1<<bit))>0)
3594  07af 9c            	rvf
3595  07b0 7b04          	ld	a,(OFST-2,sp)
3596  07b2 5f            	clrw	x
3597  07b3 97            	ld	xl,a
3598  07b4 1f01          	ldw	(OFST-5,sp),x
3600  07b6 ae0001        	ldw	x,#1
3601  07b9 7b03          	ld	a,(OFST-3,sp)
3602  07bb 4d            	tnz	a
3603  07bc 2704          	jreq	L051
3604  07be               L251:
3605  07be 58            	sllw	x
3606  07bf 4a            	dec	a
3607  07c0 26fc          	jrne	L251
3608  07c2               L051:
3609  07c2 01            	rrwa	x,a
3610  07c3 1402          	and	a,(OFST-4,sp)
3611  07c5 01            	rrwa	x,a
3612  07c6 1401          	and	a,(OFST-5,sp)
3613  07c8 01            	rrwa	x,a
3614  07c9 a30000        	cpw	x,#0
3615  07cc 2d12          	jrsle	L5701
3616                     ; 677 				LcdDrawPixel(x+cx, y+cy,LCD_DRAW_MODE_SET);
3618  07ce 4b00          	push	#0
3619  07d0 7b09          	ld	a,(OFST+3,sp)
3620  07d2 1b06          	add	a,(OFST+0,sp)
3621  07d4 97            	ld	xl,a
3622  07d5 7b08          	ld	a,(OFST+2,sp)
3623  07d7 1b07          	add	a,(OFST+1,sp)
3624  07d9 95            	ld	xh,a
3625  07da cd015c        	call	_LcdDrawPixel
3627  07dd 84            	pop	a
3629  07de 2010          	jra	L7701
3630  07e0               L5701:
3631                     ; 679 				LcdDrawPixel(x+cx, y+cy,LCD_DRAW_MODE_CLR);
3633  07e0 4b01          	push	#1
3634  07e2 7b09          	ld	a,(OFST+3,sp)
3635  07e4 1b06          	add	a,(OFST+0,sp)
3636  07e6 97            	ld	xl,a
3637  07e7 7b08          	ld	a,(OFST+2,sp)
3638  07e9 1b07          	add	a,(OFST+1,sp)
3639  07eb 95            	ld	xh,a
3640  07ec cd015c        	call	_LcdDrawPixel
3642  07ef 84            	pop	a
3643  07f0               L7701:
3644                     ; 668 		for(cx=0; cx<sx; cx++)
3646  07f0 0c06          	inc	(OFST+0,sp)
3648  07f2               L1601:
3651  07f2 7b06          	ld	a,(OFST+0,sp)
3652  07f4 110d          	cp	a,(OFST+7,sp)
3653  07f6 2403          	jruge	L451
3654  07f8 cc0734        	jp	L5501
3655  07fb               L451:
3656                     ; 665 	for (cy=0; cy<sy; cy++)
3658  07fb 0c05          	inc	(OFST-1,sp)
3660  07fd               L1501:
3663  07fd 7b05          	ld	a,(OFST-1,sp)
3664  07ff 110e          	cp	a,(OFST+8,sp)
3665  0801 2403          	jruge	L651
3666  0803 cc0728        	jp	L5401
3667  0806               L651:
3668                     ; 682 }
3671  0806 5b08          	addw	sp,#8
3672  0808 81            	ret
3744                     ; 695 void LcdFillRect(uint8_t x1, uint8_t y1, 
3744                     ; 696 								 uint8_t x2, uint8_t y2,
3744                     ; 697 								 lcd_draw_mode_t mode) {
3745                     	switch	.text
3746  0809               _LcdFillRect:
3748  0809 89            	pushw	x
3749  080a 88            	push	a
3750       00000001      OFST:	set	1
3753                     ; 701 	if(x1 > x2)	_LcdSwapUInt8(&x1,&x2);
3755  080b 9e            	ld	a,xh
3756  080c 1106          	cp	a,(OFST+5,sp)
3757  080e 230d          	jrule	L1311
3760  0810 96            	ldw	x,sp
3761  0811 1c0006        	addw	x,#OFST+5
3762  0814 89            	pushw	x
3763  0815 96            	ldw	x,sp
3764  0816 1c0004        	addw	x,#OFST+3
3765  0819 cd0d5f        	call	L11__LcdSwapUInt8
3767  081c 85            	popw	x
3768  081d               L1311:
3769                     ; 702 	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
3771  081d 7b03          	ld	a,(OFST+2,sp)
3772  081f 1107          	cp	a,(OFST+6,sp)
3773  0821 230d          	jrule	L3311
3776  0823 96            	ldw	x,sp
3777  0824 1c0007        	addw	x,#OFST+6
3778  0827 89            	pushw	x
3779  0828 96            	ldw	x,sp
3780  0829 1c0005        	addw	x,#OFST+4
3781  082c cd0d5f        	call	L11__LcdSwapUInt8
3783  082f 85            	popw	x
3784  0830               L3311:
3785                     ; 704 	for (i = y1; i <= y2; i++) {
3787  0830 7b03          	ld	a,(OFST+2,sp)
3788  0832 6b01          	ld	(OFST+0,sp),a
3791  0834 2014          	jra	L1411
3792  0836               L5311:
3793                     ; 705     LcdDrawHLine(x1, i, x2-x1, mode);
3795  0836 7b08          	ld	a,(OFST+7,sp)
3796  0838 88            	push	a
3797  0839 7b07          	ld	a,(OFST+6,sp)
3798  083b 1003          	sub	a,(OFST+2,sp)
3799  083d 88            	push	a
3800  083e 7b03          	ld	a,(OFST+2,sp)
3801  0840 97            	ld	xl,a
3802  0841 7b04          	ld	a,(OFST+3,sp)
3803  0843 95            	ld	xh,a
3804  0844 cd02f1        	call	_LcdDrawHLine
3806  0847 85            	popw	x
3807                     ; 704 	for (i = y1; i <= y2; i++) {
3809  0848 0c01          	inc	(OFST+0,sp)
3811  084a               L1411:
3814  084a 7b01          	ld	a,(OFST+0,sp)
3815  084c 1107          	cp	a,(OFST+6,sp)
3816  084e 23e6          	jrule	L5311
3817                     ; 707 }
3820  0850 5b03          	addw	sp,#3
3821  0852 81            	ret
3921                     ; 721 void LcdDrawCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
3921                     ; 722 													uint8_t cornername, lcd_draw_mode_t mode) {
3922                     	switch	.text
3923  0853               _LcdDrawCircleHelper:
3925  0853 89            	pushw	x
3926  0854 5205          	subw	sp,#5
3927       00000005      OFST:	set	5
3930                     ; 725   int8_t f = 1 - r;
3932  0856 a601          	ld	a,#1
3933  0858 100a          	sub	a,(OFST+5,sp)
3934  085a 6b03          	ld	(OFST-2,sp),a
3936                     ; 726   int8_t ddF_x = 1;
3938  085c a601          	ld	a,#1
3939  085e 6b01          	ld	(OFST-4,sp),a
3941                     ; 727   int8_t ddF_y = -2 * r;
3943  0860 7b0a          	ld	a,(OFST+5,sp)
3944  0862 97            	ld	xl,a
3945  0863 a6fe          	ld	a,#254
3946  0865 42            	mul	x,a
3947  0866 9f            	ld	a,xl
3948  0867 6b02          	ld	(OFST-3,sp),a
3950                     ; 728   int8_t x = 0;
3952  0869 0f04          	clr	(OFST-1,sp)
3954                     ; 729   int8_t y = r;
3956  086b 7b0a          	ld	a,(OFST+5,sp)
3957  086d 6b05          	ld	(OFST+0,sp),a
3960  086f ac320932      	jpf	L1121
3961  0873               L5021:
3962                     ; 732     if (f >= 0) {
3964  0873 9c            	rvf
3965  0874 7b03          	ld	a,(OFST-2,sp)
3966  0876 a100          	cp	a,#0
3967  0878 2f0c          	jrslt	L5121
3968                     ; 733       y--;
3970  087a 0a05          	dec	(OFST+0,sp)
3972                     ; 734       ddF_y += 2;
3974  087c 0c02          	inc	(OFST-3,sp)
3975  087e 0c02          	inc	(OFST-3,sp)
3977                     ; 735       f += ddF_y;
3979  0880 7b03          	ld	a,(OFST-2,sp)
3980  0882 1b02          	add	a,(OFST-3,sp)
3981  0884 6b03          	ld	(OFST-2,sp),a
3983  0886               L5121:
3984                     ; 737     x++;
3986  0886 0c04          	inc	(OFST-1,sp)
3988                     ; 738     ddF_x += 2;
3990  0888 0c01          	inc	(OFST-4,sp)
3991  088a 0c01          	inc	(OFST-4,sp)
3993                     ; 739     f += ddF_x;
3995  088c 7b03          	ld	a,(OFST-2,sp)
3996  088e 1b01          	add	a,(OFST-4,sp)
3997  0890 6b03          	ld	(OFST-2,sp),a
3999                     ; 740     if (cornername & 0x4) {
4001  0892 7b0b          	ld	a,(OFST+6,sp)
4002  0894 a504          	bcp	a,#4
4003  0896 2722          	jreq	L7121
4004                     ; 741       LcdDrawPixel(x0 + x, y0 + y, mode);
4006  0898 7b0c          	ld	a,(OFST+7,sp)
4007  089a 88            	push	a
4008  089b 7b06          	ld	a,(OFST+1,sp)
4009  089d 1b08          	add	a,(OFST+3,sp)
4010  089f 97            	ld	xl,a
4011  08a0 7b05          	ld	a,(OFST+0,sp)
4012  08a2 1b07          	add	a,(OFST+2,sp)
4013  08a4 95            	ld	xh,a
4014  08a5 cd015c        	call	_LcdDrawPixel
4016  08a8 84            	pop	a
4017                     ; 742       LcdDrawPixel(x0 + y, y0 + x, mode);
4019  08a9 7b0c          	ld	a,(OFST+7,sp)
4020  08ab 88            	push	a
4021  08ac 7b05          	ld	a,(OFST+0,sp)
4022  08ae 1b08          	add	a,(OFST+3,sp)
4023  08b0 97            	ld	xl,a
4024  08b1 7b06          	ld	a,(OFST+1,sp)
4025  08b3 1b07          	add	a,(OFST+2,sp)
4026  08b5 95            	ld	xh,a
4027  08b6 cd015c        	call	_LcdDrawPixel
4029  08b9 84            	pop	a
4030  08ba               L7121:
4031                     ; 744     if (cornername & 0x2) {
4033  08ba 7b0b          	ld	a,(OFST+6,sp)
4034  08bc a502          	bcp	a,#2
4035  08be 2722          	jreq	L1221
4036                     ; 745       LcdDrawPixel(x0 + x, y0 - y, mode);
4038  08c0 7b0c          	ld	a,(OFST+7,sp)
4039  08c2 88            	push	a
4040  08c3 7b08          	ld	a,(OFST+3,sp)
4041  08c5 1006          	sub	a,(OFST+1,sp)
4042  08c7 97            	ld	xl,a
4043  08c8 7b05          	ld	a,(OFST+0,sp)
4044  08ca 1b07          	add	a,(OFST+2,sp)
4045  08cc 95            	ld	xh,a
4046  08cd cd015c        	call	_LcdDrawPixel
4048  08d0 84            	pop	a
4049                     ; 746       LcdDrawPixel(x0 + y, y0 - x, mode);
4051  08d1 7b0c          	ld	a,(OFST+7,sp)
4052  08d3 88            	push	a
4053  08d4 7b08          	ld	a,(OFST+3,sp)
4054  08d6 1005          	sub	a,(OFST+0,sp)
4055  08d8 97            	ld	xl,a
4056  08d9 7b06          	ld	a,(OFST+1,sp)
4057  08db 1b07          	add	a,(OFST+2,sp)
4058  08dd 95            	ld	xh,a
4059  08de cd015c        	call	_LcdDrawPixel
4061  08e1 84            	pop	a
4062  08e2               L1221:
4063                     ; 748     if (cornername & 0x8) {
4065  08e2 7b0b          	ld	a,(OFST+6,sp)
4066  08e4 a508          	bcp	a,#8
4067  08e6 2722          	jreq	L3221
4068                     ; 749       LcdDrawPixel(x0 - y, y0 + x, mode);
4070  08e8 7b0c          	ld	a,(OFST+7,sp)
4071  08ea 88            	push	a
4072  08eb 7b05          	ld	a,(OFST+0,sp)
4073  08ed 1b08          	add	a,(OFST+3,sp)
4074  08ef 97            	ld	xl,a
4075  08f0 7b07          	ld	a,(OFST+2,sp)
4076  08f2 1006          	sub	a,(OFST+1,sp)
4077  08f4 95            	ld	xh,a
4078  08f5 cd015c        	call	_LcdDrawPixel
4080  08f8 84            	pop	a
4081                     ; 750       LcdDrawPixel(x0 - x, y0 + y, mode);
4083  08f9 7b0c          	ld	a,(OFST+7,sp)
4084  08fb 88            	push	a
4085  08fc 7b06          	ld	a,(OFST+1,sp)
4086  08fe 1b08          	add	a,(OFST+3,sp)
4087  0900 97            	ld	xl,a
4088  0901 7b07          	ld	a,(OFST+2,sp)
4089  0903 1005          	sub	a,(OFST+0,sp)
4090  0905 95            	ld	xh,a
4091  0906 cd015c        	call	_LcdDrawPixel
4093  0909 84            	pop	a
4094  090a               L3221:
4095                     ; 752     if (cornername & 0x1) {
4097  090a 7b0b          	ld	a,(OFST+6,sp)
4098  090c a501          	bcp	a,#1
4099  090e 2722          	jreq	L1121
4100                     ; 753       LcdDrawPixel(x0 - y, y0 - x, mode);
4102  0910 7b0c          	ld	a,(OFST+7,sp)
4103  0912 88            	push	a
4104  0913 7b08          	ld	a,(OFST+3,sp)
4105  0915 1005          	sub	a,(OFST+0,sp)
4106  0917 97            	ld	xl,a
4107  0918 7b07          	ld	a,(OFST+2,sp)
4108  091a 1006          	sub	a,(OFST+1,sp)
4109  091c 95            	ld	xh,a
4110  091d cd015c        	call	_LcdDrawPixel
4112  0920 84            	pop	a
4113                     ; 754       LcdDrawPixel(x0 - x, y0 - y, mode);
4115  0921 7b0c          	ld	a,(OFST+7,sp)
4116  0923 88            	push	a
4117  0924 7b08          	ld	a,(OFST+3,sp)
4118  0926 1006          	sub	a,(OFST+1,sp)
4119  0928 97            	ld	xl,a
4120  0929 7b07          	ld	a,(OFST+2,sp)
4121  092b 1005          	sub	a,(OFST+0,sp)
4122  092d 95            	ld	xh,a
4123  092e cd015c        	call	_LcdDrawPixel
4125  0931 84            	pop	a
4126  0932               L1121:
4127                     ; 731   while (x < y) {
4129  0932 9c            	rvf
4130  0933 7b04          	ld	a,(OFST-1,sp)
4131  0935 1105          	cp	a,(OFST+0,sp)
4132  0937 2e03          	jrsge	L461
4133  0939 cc0873        	jp	L5021
4134  093c               L461:
4135                     ; 757 }
4138  093c 5b07          	addw	sp,#7
4139  093e 81            	ret
4197                     ; 770 void LcdFillCircle(uint8_t x0, uint8_t y0, uint8_t r,
4197                     ; 771                               lcd_draw_mode_t mode) {
4198                     	switch	.text
4199  093f               _LcdFillCircle:
4201  093f 89            	pushw	x
4202       00000000      OFST:	set	0
4205                     ; 772   LcdDrawVLine(x0, y0 - r, 2 * r + 1, mode);
4207  0940 7b06          	ld	a,(OFST+6,sp)
4208  0942 88            	push	a
4209  0943 7b06          	ld	a,(OFST+6,sp)
4210  0945 48            	sll	a
4211  0946 4c            	inc	a
4212  0947 88            	push	a
4213  0948 9f            	ld	a,xl
4214  0949 1007          	sub	a,(OFST+7,sp)
4215  094b 97            	ld	xl,a
4216  094c 7b03          	ld	a,(OFST+3,sp)
4217  094e 95            	ld	xh,a
4218  094f cd0390        	call	_LcdDrawVLine
4220  0952 85            	popw	x
4221                     ; 773   LcdFillCircleHelper(x0, y0, r, 3, 0, mode);
4223  0953 7b06          	ld	a,(OFST+6,sp)
4224  0955 88            	push	a
4225  0956 4b00          	push	#0
4226  0958 4b03          	push	#3
4227  095a 7b08          	ld	a,(OFST+8,sp)
4228  095c 88            	push	a
4229  095d 7b06          	ld	a,(OFST+6,sp)
4230  095f 97            	ld	xl,a
4231  0960 7b05          	ld	a,(OFST+5,sp)
4232  0962 95            	ld	xh,a
4233  0963 ad04          	call	_LcdFillCircleHelper
4235  0965 5b04          	addw	sp,#4
4236                     ; 774 }
4239  0967 85            	popw	x
4240  0968 81            	ret
4361                     ; 788 void LcdFillCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
4361                     ; 789                                     uint8_t corners, uint8_t delta,
4361                     ; 790                                     lcd_draw_mode_t mode) {
4362                     	switch	.text
4363  0969               _LcdFillCircleHelper:
4365  0969 89            	pushw	x
4366  096a 5207          	subw	sp,#7
4367       00000007      OFST:	set	7
4370                     ; 792   int8_t f = 1 - r;
4372  096c a601          	ld	a,#1
4373  096e 100c          	sub	a,(OFST+5,sp)
4374  0970 6b03          	ld	(OFST-4,sp),a
4376                     ; 793   int8_t ddF_x = 1;
4378  0972 a601          	ld	a,#1
4379  0974 6b01          	ld	(OFST-6,sp),a
4381                     ; 794   int8_t ddF_y = -2 * r;
4383  0976 7b0c          	ld	a,(OFST+5,sp)
4384  0978 97            	ld	xl,a
4385  0979 a6fe          	ld	a,#254
4386  097b 42            	mul	x,a
4387  097c 9f            	ld	a,xl
4388  097d 6b02          	ld	(OFST-5,sp),a
4390                     ; 795   int8_t x = 0;
4392  097f 0f06          	clr	(OFST-1,sp)
4394                     ; 796   int8_t y = r;
4396  0981 7b0c          	ld	a,(OFST+5,sp)
4397  0983 6b07          	ld	(OFST+0,sp),a
4399                     ; 797   int8_t px = x;
4401  0985 0f05          	clr	(OFST-2,sp)
4403                     ; 798   int8_t py = y;
4405  0987 7b07          	ld	a,(OFST+0,sp)
4406  0989 6b04          	ld	(OFST-3,sp),a
4408                     ; 800   delta++; // Avoid some +1's in the loop
4410  098b 0c0e          	inc	(OFST+7,sp)
4412  098d ac4e0a4e      	jpf	L3231
4413  0991               L1231:
4414                     ; 803     if (f >= 0) {
4416  0991 9c            	rvf
4417  0992 7b03          	ld	a,(OFST-4,sp)
4418  0994 a100          	cp	a,#0
4419  0996 2f0c          	jrslt	L7231
4420                     ; 804       y--;
4422  0998 0a07          	dec	(OFST+0,sp)
4424                     ; 805       ddF_y += 2;
4426  099a 0c02          	inc	(OFST-5,sp)
4427  099c 0c02          	inc	(OFST-5,sp)
4429                     ; 806       f += ddF_y;
4431  099e 7b03          	ld	a,(OFST-4,sp)
4432  09a0 1b02          	add	a,(OFST-5,sp)
4433  09a2 6b03          	ld	(OFST-4,sp),a
4435  09a4               L7231:
4436                     ; 808     x++;
4438  09a4 0c06          	inc	(OFST-1,sp)
4440                     ; 809     ddF_x += 2;
4442  09a6 0c01          	inc	(OFST-6,sp)
4443  09a8 0c01          	inc	(OFST-6,sp)
4445                     ; 810     f += ddF_x;
4447  09aa 7b03          	ld	a,(OFST-4,sp)
4448  09ac 1b01          	add	a,(OFST-6,sp)
4449  09ae 6b03          	ld	(OFST-4,sp),a
4451                     ; 813     if (x < (y + 1)) {
4453  09b0 9c            	rvf
4454  09b1 7b07          	ld	a,(OFST+0,sp)
4455  09b3 5f            	clrw	x
4456  09b4 4d            	tnz	a
4457  09b5 2a01          	jrpl	L271
4458  09b7 53            	cplw	x
4459  09b8               L271:
4460  09b8 97            	ld	xl,a
4461  09b9 5c            	incw	x
4462  09ba 7b06          	ld	a,(OFST-1,sp)
4463  09bc 905f          	clrw	y
4464  09be 4d            	tnz	a
4465  09bf 2a02          	jrpl	L471
4466  09c1 9053          	cplw	y
4467  09c3               L471:
4468  09c3 9097          	ld	yl,a
4469  09c5 90bf00        	ldw	c_y,y
4470  09c8 b300          	cpw	x,c_y
4471  09ca 2d3a          	jrsle	L1331
4472                     ; 814       if (corners & 1)
4474  09cc 7b0d          	ld	a,(OFST+6,sp)
4475  09ce a501          	bcp	a,#1
4476  09d0 2717          	jreq	L3331
4477                     ; 815         LcdDrawVLine(x0 + x, y0 - y, 2 * y + delta, mode);
4479  09d2 7b0f          	ld	a,(OFST+8,sp)
4480  09d4 88            	push	a
4481  09d5 7b08          	ld	a,(OFST+1,sp)
4482  09d7 48            	sll	a
4483  09d8 1b0f          	add	a,(OFST+8,sp)
4484  09da 88            	push	a
4485  09db 7b0b          	ld	a,(OFST+4,sp)
4486  09dd 1009          	sub	a,(OFST+2,sp)
4487  09df 97            	ld	xl,a
4488  09e0 7b08          	ld	a,(OFST+1,sp)
4489  09e2 1b0a          	add	a,(OFST+3,sp)
4490  09e4 95            	ld	xh,a
4491  09e5 cd0390        	call	_LcdDrawVLine
4493  09e8 85            	popw	x
4494  09e9               L3331:
4495                     ; 816       if (corners & 2)
4497  09e9 7b0d          	ld	a,(OFST+6,sp)
4498  09eb a502          	bcp	a,#2
4499  09ed 2717          	jreq	L1331
4500                     ; 817         LcdDrawVLine(x0 - x, y0 - y, 2 * y + delta, mode);
4502  09ef 7b0f          	ld	a,(OFST+8,sp)
4503  09f1 88            	push	a
4504  09f2 7b08          	ld	a,(OFST+1,sp)
4505  09f4 48            	sll	a
4506  09f5 1b0f          	add	a,(OFST+8,sp)
4507  09f7 88            	push	a
4508  09f8 7b0b          	ld	a,(OFST+4,sp)
4509  09fa 1009          	sub	a,(OFST+2,sp)
4510  09fc 97            	ld	xl,a
4511  09fd 7b0a          	ld	a,(OFST+3,sp)
4512  09ff 1008          	sub	a,(OFST+1,sp)
4513  0a01 95            	ld	xh,a
4514  0a02 cd0390        	call	_LcdDrawVLine
4516  0a05 85            	popw	x
4517  0a06               L1331:
4518                     ; 819     if (y != py) {
4520  0a06 7b07          	ld	a,(OFST+0,sp)
4521  0a08 1104          	cp	a,(OFST-3,sp)
4522  0a0a 273e          	jreq	L7331
4523                     ; 820       if (corners & 1)
4525  0a0c 7b0d          	ld	a,(OFST+6,sp)
4526  0a0e a501          	bcp	a,#1
4527  0a10 2717          	jreq	L1431
4528                     ; 821         LcdDrawVLine(x0 + py, y0 - px, 2 * px + delta, mode);
4530  0a12 7b0f          	ld	a,(OFST+8,sp)
4531  0a14 88            	push	a
4532  0a15 7b06          	ld	a,(OFST-1,sp)
4533  0a17 48            	sll	a
4534  0a18 1b0f          	add	a,(OFST+8,sp)
4535  0a1a 88            	push	a
4536  0a1b 7b0b          	ld	a,(OFST+4,sp)
4537  0a1d 1007          	sub	a,(OFST+0,sp)
4538  0a1f 97            	ld	xl,a
4539  0a20 7b06          	ld	a,(OFST-1,sp)
4540  0a22 1b0a          	add	a,(OFST+3,sp)
4541  0a24 95            	ld	xh,a
4542  0a25 cd0390        	call	_LcdDrawVLine
4544  0a28 85            	popw	x
4545  0a29               L1431:
4546                     ; 822       if (corners & 2)
4548  0a29 7b0d          	ld	a,(OFST+6,sp)
4549  0a2b a502          	bcp	a,#2
4550  0a2d 2717          	jreq	L3431
4551                     ; 823         LcdDrawVLine(x0 - py, y0 - px, 2 * px + delta, mode);
4553  0a2f 7b0f          	ld	a,(OFST+8,sp)
4554  0a31 88            	push	a
4555  0a32 7b06          	ld	a,(OFST-1,sp)
4556  0a34 48            	sll	a
4557  0a35 1b0f          	add	a,(OFST+8,sp)
4558  0a37 88            	push	a
4559  0a38 7b0b          	ld	a,(OFST+4,sp)
4560  0a3a 1007          	sub	a,(OFST+0,sp)
4561  0a3c 97            	ld	xl,a
4562  0a3d 7b0a          	ld	a,(OFST+3,sp)
4563  0a3f 1006          	sub	a,(OFST-1,sp)
4564  0a41 95            	ld	xh,a
4565  0a42 cd0390        	call	_LcdDrawVLine
4567  0a45 85            	popw	x
4568  0a46               L3431:
4569                     ; 824       py = y;
4571  0a46 7b07          	ld	a,(OFST+0,sp)
4572  0a48 6b04          	ld	(OFST-3,sp),a
4574  0a4a               L7331:
4575                     ; 826     px = x;
4577  0a4a 7b06          	ld	a,(OFST-1,sp)
4578  0a4c 6b05          	ld	(OFST-2,sp),a
4580  0a4e               L3231:
4581                     ; 802   while (x < y) {
4583  0a4e 9c            	rvf
4584  0a4f 7b06          	ld	a,(OFST-1,sp)
4585  0a51 1107          	cp	a,(OFST+0,sp)
4586  0a53 2e03          	jrsge	L671
4587  0a55 cc0991        	jp	L1231
4588  0a58               L671:
4589                     ; 828 }
4592  0a58 5b09          	addw	sp,#9
4593  0a5a 81            	ret
4671                     ; 843 void LcdDrawTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
4671                     ; 844                                 uint8_t x2, uint8_t y2, lcd_draw_mode_t mode) {
4672                     	switch	.text
4673  0a5b               _LcdDrawTriangle:
4675  0a5b 89            	pushw	x
4676       00000000      OFST:	set	0
4679                     ; 845   LcdDrawLine(x0, y0, x1, y1, mode);
4681  0a5c 7b09          	ld	a,(OFST+9,sp)
4682  0a5e 88            	push	a
4683  0a5f 7b07          	ld	a,(OFST+7,sp)
4684  0a61 88            	push	a
4685  0a62 7b07          	ld	a,(OFST+7,sp)
4686  0a64 88            	push	a
4687  0a65 9f            	ld	a,xl
4688  0a66 97            	ld	xl,a
4689  0a67 7b04          	ld	a,(OFST+4,sp)
4690  0a69 95            	ld	xh,a
4691  0a6a cd0209        	call	_LcdDrawLine
4693  0a6d 5b03          	addw	sp,#3
4694                     ; 846   LcdDrawLine(x1, y1, x2, y2, mode);
4696  0a6f 7b09          	ld	a,(OFST+9,sp)
4697  0a71 88            	push	a
4698  0a72 7b09          	ld	a,(OFST+9,sp)
4699  0a74 88            	push	a
4700  0a75 7b09          	ld	a,(OFST+9,sp)
4701  0a77 88            	push	a
4702  0a78 7b09          	ld	a,(OFST+9,sp)
4703  0a7a 97            	ld	xl,a
4704  0a7b 7b08          	ld	a,(OFST+8,sp)
4705  0a7d 95            	ld	xh,a
4706  0a7e cd0209        	call	_LcdDrawLine
4708  0a81 5b03          	addw	sp,#3
4709                     ; 847   LcdDrawLine(x2, y2, x0, y0, mode);
4711  0a83 7b09          	ld	a,(OFST+9,sp)
4712  0a85 88            	push	a
4713  0a86 7b03          	ld	a,(OFST+3,sp)
4714  0a88 88            	push	a
4715  0a89 7b03          	ld	a,(OFST+3,sp)
4716  0a8b 88            	push	a
4717  0a8c 7b0b          	ld	a,(OFST+11,sp)
4718  0a8e 97            	ld	xl,a
4719  0a8f 7b0a          	ld	a,(OFST+10,sp)
4720  0a91 95            	ld	xh,a
4721  0a92 cd0209        	call	_LcdDrawLine
4723  0a95 5b03          	addw	sp,#3
4724                     ; 848 }
4727  0a97 85            	popw	x
4728  0a98 81            	ret
4891                     ; 861 void LcdFillTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
4891                     ; 862                                 uint8_t x2, uint8_t y2, lcd_draw_mode_t mode) {
4892                     	switch	.text
4893  0a99               _LcdFillTriangle:
4895  0a99 89            	pushw	x
4896  0a9a 5216          	subw	sp,#22
4897       00000016      OFST:	set	22
4900                     ; 867 	int32_t sa = 0, sb = 0;
4902  0a9c ae0000        	ldw	x,#0
4903  0a9f 1f0e          	ldw	(OFST-8,sp),x
4904  0aa1 ae0000        	ldw	x,#0
4905  0aa4 1f0c          	ldw	(OFST-10,sp),x
4909  0aa6 ae0000        	ldw	x,#0
4910  0aa9 1f12          	ldw	(OFST-4,sp),x
4911  0aab ae0000        	ldw	x,#0
4912  0aae 1f10          	ldw	(OFST-6,sp),x
4914                     ; 870   if (y0 > y1) {
4916  0ab0 7b18          	ld	a,(OFST+2,sp)
4917  0ab2 111c          	cp	a,(OFST+6,sp)
4918  0ab4 231a          	jrule	L1641
4919                     ; 871     	_LcdSwapUInt8(&y0, &y1);
4921  0ab6 96            	ldw	x,sp
4922  0ab7 1c001c        	addw	x,#OFST+6
4923  0aba 89            	pushw	x
4924  0abb 96            	ldw	x,sp
4925  0abc 1c001a        	addw	x,#OFST+4
4926  0abf cd0d5f        	call	L11__LcdSwapUInt8
4928  0ac2 85            	popw	x
4929                     ; 872     	_LcdSwapUInt8(&x0, &x1);
4931  0ac3 96            	ldw	x,sp
4932  0ac4 1c001b        	addw	x,#OFST+5
4933  0ac7 89            	pushw	x
4934  0ac8 96            	ldw	x,sp
4935  0ac9 1c0019        	addw	x,#OFST+3
4936  0acc cd0d5f        	call	L11__LcdSwapUInt8
4938  0acf 85            	popw	x
4939  0ad0               L1641:
4940                     ; 874   if (y1 > y2) {
4942  0ad0 7b1c          	ld	a,(OFST+6,sp)
4943  0ad2 111e          	cp	a,(OFST+8,sp)
4944  0ad4 231a          	jrule	L3641
4945                     ; 875     	_LcdSwapUInt8(&y2, &y1);
4947  0ad6 96            	ldw	x,sp
4948  0ad7 1c001c        	addw	x,#OFST+6
4949  0ada 89            	pushw	x
4950  0adb 96            	ldw	x,sp
4951  0adc 1c0020        	addw	x,#OFST+10
4952  0adf cd0d5f        	call	L11__LcdSwapUInt8
4954  0ae2 85            	popw	x
4955                     ; 876     	_LcdSwapUInt8(&x2, &x1);
4957  0ae3 96            	ldw	x,sp
4958  0ae4 1c001b        	addw	x,#OFST+5
4959  0ae7 89            	pushw	x
4960  0ae8 96            	ldw	x,sp
4961  0ae9 1c001f        	addw	x,#OFST+9
4962  0aec cd0d5f        	call	L11__LcdSwapUInt8
4964  0aef 85            	popw	x
4965  0af0               L3641:
4966                     ; 878   if (y0 > y1) {
4968  0af0 7b18          	ld	a,(OFST+2,sp)
4969  0af2 111c          	cp	a,(OFST+6,sp)
4970  0af4 231a          	jrule	L5641
4971                     ; 879     	_LcdSwapUInt8(&y0, &y1);
4973  0af6 96            	ldw	x,sp
4974  0af7 1c001c        	addw	x,#OFST+6
4975  0afa 89            	pushw	x
4976  0afb 96            	ldw	x,sp
4977  0afc 1c001a        	addw	x,#OFST+4
4978  0aff cd0d5f        	call	L11__LcdSwapUInt8
4980  0b02 85            	popw	x
4981                     ; 880     	_LcdSwapUInt8(&x0, &x1);
4983  0b03 96            	ldw	x,sp
4984  0b04 1c001b        	addw	x,#OFST+5
4985  0b07 89            	pushw	x
4986  0b08 96            	ldw	x,sp
4987  0b09 1c0019        	addw	x,#OFST+3
4988  0b0c cd0d5f        	call	L11__LcdSwapUInt8
4990  0b0f 85            	popw	x
4991  0b10               L5641:
4992                     ; 883   if (y0 == y2) { // Handle awkward all-on-same-line case as its own thing
4994  0b10 7b18          	ld	a,(OFST+2,sp)
4995  0b12 111e          	cp	a,(OFST+8,sp)
4996  0b14 264b          	jrne	L7641
4997                     ; 884     a = b = x0;
4999  0b16 7b17          	ld	a,(OFST+1,sp)
5000  0b18 6b15          	ld	(OFST-1,sp),a
5002  0b1a 7b15          	ld	a,(OFST-1,sp)
5003  0b1c 6b16          	ld	(OFST+0,sp),a
5005                     ; 885     if (x1 < a)
5007  0b1e 7b1b          	ld	a,(OFST+5,sp)
5008  0b20 1116          	cp	a,(OFST+0,sp)
5009  0b22 2406          	jruge	L1741
5010                     ; 886       a = x1;
5012  0b24 7b1b          	ld	a,(OFST+5,sp)
5013  0b26 6b16          	ld	(OFST+0,sp),a
5016  0b28 200a          	jra	L3741
5017  0b2a               L1741:
5018                     ; 887     else if (x1 > b)
5020  0b2a 7b1b          	ld	a,(OFST+5,sp)
5021  0b2c 1115          	cp	a,(OFST-1,sp)
5022  0b2e 2304          	jrule	L3741
5023                     ; 888       b = x1;
5025  0b30 7b1b          	ld	a,(OFST+5,sp)
5026  0b32 6b15          	ld	(OFST-1,sp),a
5028  0b34               L3741:
5029                     ; 889     if (x2 < a)
5031  0b34 7b1d          	ld	a,(OFST+7,sp)
5032  0b36 1116          	cp	a,(OFST+0,sp)
5033  0b38 2406          	jruge	L7741
5034                     ; 890       a = x2;
5036  0b3a 7b1d          	ld	a,(OFST+7,sp)
5037  0b3c 6b16          	ld	(OFST+0,sp),a
5040  0b3e 200a          	jra	L1051
5041  0b40               L7741:
5042                     ; 891     else if (x2 > b)
5044  0b40 7b1d          	ld	a,(OFST+7,sp)
5045  0b42 1115          	cp	a,(OFST-1,sp)
5046  0b44 2304          	jrule	L1051
5047                     ; 892       b = x2;
5049  0b46 7b1d          	ld	a,(OFST+7,sp)
5050  0b48 6b15          	ld	(OFST-1,sp),a
5052  0b4a               L1051:
5053                     ; 893     LcdDrawHLine(a, y0, b - a + 1, mode);
5055  0b4a 7b1f          	ld	a,(OFST+9,sp)
5056  0b4c 88            	push	a
5057  0b4d 7b16          	ld	a,(OFST+0,sp)
5058  0b4f 1017          	sub	a,(OFST+1,sp)
5059  0b51 4c            	inc	a
5060  0b52 88            	push	a
5061  0b53 7b1a          	ld	a,(OFST+4,sp)
5062  0b55 97            	ld	xl,a
5063  0b56 7b18          	ld	a,(OFST+2,sp)
5064  0b58 95            	ld	xh,a
5065  0b59 cd02f1        	call	_LcdDrawHLine
5067  0b5c 85            	popw	x
5068                     ; 894     return;
5070  0b5d ac5c0d5c      	jpf	L222
5071  0b61               L7641:
5072                     ; 897   dx01 = x1 - x0; dy01 = y1 - y0; dx02 = x2 - x0; dy02 = y2 - y0;
5074  0b61 7b1b          	ld	a,(OFST+5,sp)
5075  0b63 1017          	sub	a,(OFST+1,sp)
5076  0b65 6b05          	ld	(OFST-17,sp),a
5080  0b67 7b1c          	ld	a,(OFST+6,sp)
5081  0b69 1018          	sub	a,(OFST+2,sp)
5082  0b6b 6b06          	ld	(OFST-16,sp),a
5086  0b6d 7b1d          	ld	a,(OFST+7,sp)
5087  0b6f 1017          	sub	a,(OFST+1,sp)
5088  0b71 6b0b          	ld	(OFST-11,sp),a
5092  0b73 7b1e          	ld	a,(OFST+8,sp)
5093  0b75 1018          	sub	a,(OFST+2,sp)
5094  0b77 6b0a          	ld	(OFST-12,sp),a
5096                     ; 898 	dx12 = x2 - x1; dy12 = y2 - y1;
5098  0b79 7b1d          	ld	a,(OFST+7,sp)
5099  0b7b 101b          	sub	a,(OFST+5,sp)
5100  0b7d 6b09          	ld	(OFST-13,sp),a
5104  0b7f 7b1e          	ld	a,(OFST+8,sp)
5105  0b81 101c          	sub	a,(OFST+6,sp)
5106  0b83 6b07          	ld	(OFST-15,sp),a
5108                     ; 907   if (y1 == y2)
5110  0b85 7b1c          	ld	a,(OFST+6,sp)
5111  0b87 111e          	cp	a,(OFST+8,sp)
5112  0b89 2606          	jrne	L5051
5113                     ; 908     last = y1; // Include y1 scanline
5115  0b8b 7b1c          	ld	a,(OFST+6,sp)
5116  0b8d 6b08          	ld	(OFST-14,sp),a
5119  0b8f 2005          	jra	L7051
5120  0b91               L5051:
5121                     ; 910     last = y1 - 1; // Skip it
5123  0b91 7b1c          	ld	a,(OFST+6,sp)
5124  0b93 4a            	dec	a
5125  0b94 6b08          	ld	(OFST-14,sp),a
5127  0b96               L7051:
5128                     ; 912   for (y = y0; y <= last; y++) {
5130  0b96 7b18          	ld	a,(OFST+2,sp)
5131  0b98 6b14          	ld	(OFST-2,sp),a
5134  0b9a ac480c48      	jpf	L5151
5135  0b9e               L1151:
5136                     ; 913     a = x0 + sa / dy01;
5138  0b9e 7b06          	ld	a,(OFST-16,sp)
5139  0ba0 b703          	ld	c_lreg+3,a
5140  0ba2 48            	sll	a
5141  0ba3 4f            	clr	a
5142  0ba4 a200          	sbc	a,#0
5143  0ba6 b702          	ld	c_lreg+2,a
5144  0ba8 b701          	ld	c_lreg+1,a
5145  0baa b700          	ld	c_lreg,a
5146  0bac 96            	ldw	x,sp
5147  0bad 1c0001        	addw	x,#OFST-21
5148  0bb0 cd0000        	call	c_rtol
5151  0bb3 96            	ldw	x,sp
5152  0bb4 1c000c        	addw	x,#OFST-10
5153  0bb7 cd0000        	call	c_ltor
5155  0bba 96            	ldw	x,sp
5156  0bbb 1c0001        	addw	x,#OFST-21
5157  0bbe cd0000        	call	c_ldiv
5159  0bc1 7b17          	ld	a,(OFST+1,sp)
5160  0bc3 cd0000        	call	c_ladc
5162  0bc6 b603          	ld	a,c_lreg+3
5163  0bc8 6b16          	ld	(OFST+0,sp),a
5165                     ; 914     b = x0 + sb / dy02;
5167  0bca 7b0a          	ld	a,(OFST-12,sp)
5168  0bcc b703          	ld	c_lreg+3,a
5169  0bce 48            	sll	a
5170  0bcf 4f            	clr	a
5171  0bd0 a200          	sbc	a,#0
5172  0bd2 b702          	ld	c_lreg+2,a
5173  0bd4 b701          	ld	c_lreg+1,a
5174  0bd6 b700          	ld	c_lreg,a
5175  0bd8 96            	ldw	x,sp
5176  0bd9 1c0001        	addw	x,#OFST-21
5177  0bdc cd0000        	call	c_rtol
5180  0bdf 96            	ldw	x,sp
5181  0be0 1c0010        	addw	x,#OFST-6
5182  0be3 cd0000        	call	c_ltor
5184  0be6 96            	ldw	x,sp
5185  0be7 1c0001        	addw	x,#OFST-21
5186  0bea cd0000        	call	c_ldiv
5188  0bed 7b17          	ld	a,(OFST+1,sp)
5189  0bef cd0000        	call	c_ladc
5191  0bf2 b603          	ld	a,c_lreg+3
5192  0bf4 6b15          	ld	(OFST-1,sp),a
5194                     ; 915     sa += dx01;
5196  0bf6 7b05          	ld	a,(OFST-17,sp)
5197  0bf8 b703          	ld	c_lreg+3,a
5198  0bfa 48            	sll	a
5199  0bfb 4f            	clr	a
5200  0bfc a200          	sbc	a,#0
5201  0bfe b702          	ld	c_lreg+2,a
5202  0c00 b701          	ld	c_lreg+1,a
5203  0c02 b700          	ld	c_lreg,a
5204  0c04 96            	ldw	x,sp
5205  0c05 1c000c        	addw	x,#OFST-10
5206  0c08 cd0000        	call	c_lgadd
5209                     ; 916     sb += dx02;
5211  0c0b 7b0b          	ld	a,(OFST-11,sp)
5212  0c0d b703          	ld	c_lreg+3,a
5213  0c0f 48            	sll	a
5214  0c10 4f            	clr	a
5215  0c11 a200          	sbc	a,#0
5216  0c13 b702          	ld	c_lreg+2,a
5217  0c15 b701          	ld	c_lreg+1,a
5218  0c17 b700          	ld	c_lreg,a
5219  0c19 96            	ldw	x,sp
5220  0c1a 1c0010        	addw	x,#OFST-6
5221  0c1d cd0000        	call	c_lgadd
5224                     ; 921     if (a > b) _LcdSwapUInt8(&a, &b);
5226  0c20 7b16          	ld	a,(OFST+0,sp)
5227  0c22 1115          	cp	a,(OFST-1,sp)
5228  0c24 230d          	jrule	L1251
5231  0c26 96            	ldw	x,sp
5232  0c27 1c0015        	addw	x,#OFST-1
5233  0c2a 89            	pushw	x
5234  0c2b 96            	ldw	x,sp
5235  0c2c 1c0018        	addw	x,#OFST+2
5236  0c2f cd0d5f        	call	L11__LcdSwapUInt8
5238  0c32 85            	popw	x
5239  0c33               L1251:
5240                     ; 922     LcdDrawHLine(a, y, b - a + 1, mode);
5242  0c33 7b1f          	ld	a,(OFST+9,sp)
5243  0c35 88            	push	a
5244  0c36 7b16          	ld	a,(OFST+0,sp)
5245  0c38 1017          	sub	a,(OFST+1,sp)
5246  0c3a 4c            	inc	a
5247  0c3b 88            	push	a
5248  0c3c 7b16          	ld	a,(OFST+0,sp)
5249  0c3e 97            	ld	xl,a
5250  0c3f 7b18          	ld	a,(OFST+2,sp)
5251  0c41 95            	ld	xh,a
5252  0c42 cd02f1        	call	_LcdDrawHLine
5254  0c45 85            	popw	x
5255                     ; 912   for (y = y0; y <= last; y++) {
5257  0c46 0c14          	inc	(OFST-2,sp)
5259  0c48               L5151:
5262  0c48 9c            	rvf
5263  0c49 7b14          	ld	a,(OFST-2,sp)
5264  0c4b 1108          	cp	a,(OFST-14,sp)
5265  0c4d 2c03          	jrsgt	L422
5266  0c4f cc0b9e        	jp	L1151
5267  0c52               L422:
5268                     ; 927   sa = (int32_t)dx12 * (y - y1);
5270  0c52 7b14          	ld	a,(OFST-2,sp)
5271  0c54 5f            	clrw	x
5272  0c55 4d            	tnz	a
5273  0c56 2a01          	jrpl	L402
5274  0c58 53            	cplw	x
5275  0c59               L402:
5276  0c59 101c          	sub	a,(OFST+6,sp)
5277  0c5b 2401          	jrnc	L602
5278  0c5d 5a            	decw	x
5279  0c5e               L602:
5280  0c5e 02            	rlwa	x,a
5281  0c5f 7b09          	ld	a,(OFST-13,sp)
5282  0c61 905f          	clrw	y
5283  0c63 4d            	tnz	a
5284  0c64 2a02          	jrpl	L012
5285  0c66 9053          	cplw	y
5286  0c68               L012:
5287  0c68 9097          	ld	yl,a
5288  0c6a cd0000        	call	c_vmul
5290  0c6d 96            	ldw	x,sp
5291  0c6e 1c000c        	addw	x,#OFST-10
5292  0c71 cd0000        	call	c_rtol
5295                     ; 928   sb = (int32_t)dx02 * (y - y0);
5297  0c74 7b14          	ld	a,(OFST-2,sp)
5298  0c76 5f            	clrw	x
5299  0c77 4d            	tnz	a
5300  0c78 2a01          	jrpl	L212
5301  0c7a 53            	cplw	x
5302  0c7b               L212:
5303  0c7b 1018          	sub	a,(OFST+2,sp)
5304  0c7d 2401          	jrnc	L412
5305  0c7f 5a            	decw	x
5306  0c80               L412:
5307  0c80 02            	rlwa	x,a
5308  0c81 7b0b          	ld	a,(OFST-11,sp)
5309  0c83 905f          	clrw	y
5310  0c85 4d            	tnz	a
5311  0c86 2a02          	jrpl	L612
5312  0c88 9053          	cplw	y
5313  0c8a               L612:
5314  0c8a 9097          	ld	yl,a
5315  0c8c cd0000        	call	c_vmul
5317  0c8f 96            	ldw	x,sp
5318  0c90 1c0010        	addw	x,#OFST-6
5319  0c93 cd0000        	call	c_rtol
5323  0c96 ac430d43      	jpf	L7251
5324  0c9a               L3251:
5325                     ; 930     a = x1 + sa / dy12;
5327  0c9a 7b07          	ld	a,(OFST-15,sp)
5328  0c9c b703          	ld	c_lreg+3,a
5329  0c9e 48            	sll	a
5330  0c9f 4f            	clr	a
5331  0ca0 a200          	sbc	a,#0
5332  0ca2 b702          	ld	c_lreg+2,a
5333  0ca4 b701          	ld	c_lreg+1,a
5334  0ca6 b700          	ld	c_lreg,a
5335  0ca8 96            	ldw	x,sp
5336  0ca9 1c0001        	addw	x,#OFST-21
5337  0cac cd0000        	call	c_rtol
5340  0caf 96            	ldw	x,sp
5341  0cb0 1c000c        	addw	x,#OFST-10
5342  0cb3 cd0000        	call	c_ltor
5344  0cb6 96            	ldw	x,sp
5345  0cb7 1c0001        	addw	x,#OFST-21
5346  0cba cd0000        	call	c_ldiv
5348  0cbd 7b1b          	ld	a,(OFST+5,sp)
5349  0cbf cd0000        	call	c_ladc
5351  0cc2 b603          	ld	a,c_lreg+3
5352  0cc4 6b16          	ld	(OFST+0,sp),a
5354                     ; 931     b = x0 + sb / dy02;
5356  0cc6 7b0a          	ld	a,(OFST-12,sp)
5357  0cc8 b703          	ld	c_lreg+3,a
5358  0cca 48            	sll	a
5359  0ccb 4f            	clr	a
5360  0ccc a200          	sbc	a,#0
5361  0cce b702          	ld	c_lreg+2,a
5362  0cd0 b701          	ld	c_lreg+1,a
5363  0cd2 b700          	ld	c_lreg,a
5364  0cd4 96            	ldw	x,sp
5365  0cd5 1c0001        	addw	x,#OFST-21
5366  0cd8 cd0000        	call	c_rtol
5369  0cdb 96            	ldw	x,sp
5370  0cdc 1c0010        	addw	x,#OFST-6
5371  0cdf cd0000        	call	c_ltor
5373  0ce2 96            	ldw	x,sp
5374  0ce3 1c0001        	addw	x,#OFST-21
5375  0ce6 cd0000        	call	c_ldiv
5377  0ce9 7b17          	ld	a,(OFST+1,sp)
5378  0ceb cd0000        	call	c_ladc
5380  0cee b603          	ld	a,c_lreg+3
5381  0cf0 6b15          	ld	(OFST-1,sp),a
5383                     ; 932     sa += dx12;
5385  0cf2 7b09          	ld	a,(OFST-13,sp)
5386  0cf4 b703          	ld	c_lreg+3,a
5387  0cf6 48            	sll	a
5388  0cf7 4f            	clr	a
5389  0cf8 a200          	sbc	a,#0
5390  0cfa b702          	ld	c_lreg+2,a
5391  0cfc b701          	ld	c_lreg+1,a
5392  0cfe b700          	ld	c_lreg,a
5393  0d00 96            	ldw	x,sp
5394  0d01 1c000c        	addw	x,#OFST-10
5395  0d04 cd0000        	call	c_lgadd
5398                     ; 933     sb += dx02;
5400  0d07 7b0b          	ld	a,(OFST-11,sp)
5401  0d09 b703          	ld	c_lreg+3,a
5402  0d0b 48            	sll	a
5403  0d0c 4f            	clr	a
5404  0d0d a200          	sbc	a,#0
5405  0d0f b702          	ld	c_lreg+2,a
5406  0d11 b701          	ld	c_lreg+1,a
5407  0d13 b700          	ld	c_lreg,a
5408  0d15 96            	ldw	x,sp
5409  0d16 1c0010        	addw	x,#OFST-6
5410  0d19 cd0000        	call	c_lgadd
5413                     ; 938     if (a > b)
5415  0d1c 7b16          	ld	a,(OFST+0,sp)
5416  0d1e 1115          	cp	a,(OFST-1,sp)
5417  0d20 230c          	jrule	L3351
5418                     ; 939       	_LcdSwapUInt8(&a, &b);
5420  0d22 96            	ldw	x,sp
5421  0d23 1c0015        	addw	x,#OFST-1
5422  0d26 89            	pushw	x
5423  0d27 96            	ldw	x,sp
5424  0d28 1c0018        	addw	x,#OFST+2
5425  0d2b ad32          	call	L11__LcdSwapUInt8
5427  0d2d 85            	popw	x
5428  0d2e               L3351:
5429                     ; 940     LcdDrawHLine(a, y, b - a + 1, mode);
5431  0d2e 7b1f          	ld	a,(OFST+9,sp)
5432  0d30 88            	push	a
5433  0d31 7b16          	ld	a,(OFST+0,sp)
5434  0d33 1017          	sub	a,(OFST+1,sp)
5435  0d35 4c            	inc	a
5436  0d36 88            	push	a
5437  0d37 7b16          	ld	a,(OFST+0,sp)
5438  0d39 97            	ld	xl,a
5439  0d3a 7b18          	ld	a,(OFST+2,sp)
5440  0d3c 95            	ld	xh,a
5441  0d3d cd02f1        	call	_LcdDrawHLine
5443  0d40 85            	popw	x
5444                     ; 929   for (; y <= y2; y++) {
5446  0d41 0c14          	inc	(OFST-2,sp)
5448  0d43               L7251:
5451  0d43 9c            	rvf
5452  0d44 7b14          	ld	a,(OFST-2,sp)
5453  0d46 5f            	clrw	x
5454  0d47 4d            	tnz	a
5455  0d48 2a01          	jrpl	L022
5456  0d4a 53            	cplw	x
5457  0d4b               L022:
5458  0d4b 97            	ld	xl,a
5459  0d4c 7b1e          	ld	a,(OFST+8,sp)
5460  0d4e 905f          	clrw	y
5461  0d50 9097          	ld	yl,a
5462  0d52 90bf00        	ldw	c_y,y
5463  0d55 b300          	cpw	x,c_y
5464  0d57 2c03          	jrsgt	L622
5465  0d59 cc0c9a        	jp	L3251
5466  0d5c               L622:
5467                     ; 942 }
5468  0d5c               L222:
5471  0d5c 5b18          	addw	sp,#24
5472  0d5e 81            	ret
5524                     ; 955 static void _LcdSwapUInt8(uint8_t * x1,uint8_t * x2){
5525                     	switch	.text
5526  0d5f               L11__LcdSwapUInt8:
5528  0d5f 89            	pushw	x
5529  0d60 88            	push	a
5530       00000001      OFST:	set	1
5533                     ; 958 	tmp = *x1;
5535  0d61 f6            	ld	a,(x)
5536  0d62 6b01          	ld	(OFST+0,sp),a
5538                     ; 959 	*x1 = *x2;
5540  0d64 1e06          	ldw	x,(OFST+5,sp)
5541  0d66 f6            	ld	a,(x)
5542  0d67 1e02          	ldw	x,(OFST+1,sp)
5543  0d69 f7            	ld	(x),a
5544                     ; 960 	*x2 = tmp;
5546  0d6a 7b01          	ld	a,(OFST+0,sp)
5547  0d6c 1e06          	ldw	x,(OFST+5,sp)
5548  0d6e f7            	ld	(x),a
5549                     ; 961 }
5552  0d6f 5b03          	addw	sp,#3
5553  0d71 81            	ret
5599                     	xdef	_LcdUpdate
5600                     	xdef	_font6x8
5601                     	xdef	_LcdFillRoundRect
5602                     	xdef	_LcdFillTriangle
5603                     	xdef	_LcdDrawTriangle
5604                     	xdef	_LcdFillCircleHelper
5605                     	xdef	_LcdFillCircle
5606                     	xdef	_LcdDrawCircleHelper
5607                     	xdef	_LcdFillRect
5608                     	xdef	_LcdPutString
5609                     	xdef	_LcdPutChar
5610                     	xdef	_LcdPutInteger
5611                     	xdef	_LcdPutOneNumber
5612                     	xdef	_LcdDrawBitmap
5613                     	xdef	_LcdDrawRoundRect
5614                     	xdef	_LcdDrawRect
5615                     	xdef	_LcdDrawHLine
5616                     	xdef	_LcdDrawVLine
5617                     	xdef	_LcdDrawCircle
5618                     	xdef	_LcdDrawLine
5619                     	xdef	_LcdDrawPixel
5620                     	xdef	_LcdClear
5621                     	xref.b	c_lreg
5622                     	xref.b	c_x
5623                     	xref.b	c_y
5642                     	xref	c_vmul
5643                     	xref	c_lgadd
5644                     	xref	c_ladc
5645                     	xref	c_ldiv
5646                     	xref	c_sdivx
5647                     	xref	c_imul
5648                     	xref	c_bmulx
5649                     	xref	c_lzmp
5650                     	xref	c_rtol
5651                     	xref	c_ludv
5652                     	xref	c_ltor
5653                     	xref	c_xymvx
5654                     	end
