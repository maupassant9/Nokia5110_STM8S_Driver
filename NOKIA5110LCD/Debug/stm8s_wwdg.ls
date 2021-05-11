   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  57                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  57                     ; 54 {
  59                     	switch	.text
  60  0000               _WWDG_Init:
  62  0000 89            	pushw	x
  63       00000000      OFST:	set	0
  66                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  68                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  70  0001 357f50d2      	mov	20690,#127
  71                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  73  0005 9e            	ld	a,xh
  74  0006 aac0          	or	a,#192
  75  0008 c750d1        	ld	20689,a
  76                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  78  000b 7b02          	ld	a,(OFST+2,sp)
  79  000d aa40          	or	a,#64
  80  000f a47f          	and	a,#127
  81  0011 c750d2        	ld	20690,a
  82                     ; 61 }
  85  0014 85            	popw	x
  86  0015 81            	ret
 118                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 118                     ; 70 {
 119                     	switch	.text
 120  0016               _WWDG_SetCounter:
 124                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 126                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 128  0016 a47f          	and	a,#127
 129  0018 c750d1        	ld	20689,a
 130                     ; 77 }
 133  001b 81            	ret
 156                     ; 86 uint8_t WWDG_GetCounter(void)
 156                     ; 87 {
 157                     	switch	.text
 158  001c               _WWDG_GetCounter:
 162                     ; 88   return(WWDG->CR);
 164  001c c650d1        	ld	a,20689
 167  001f 81            	ret
 190                     ; 96 void WWDG_SWReset(void)
 190                     ; 97 {
 191                     	switch	.text
 192  0020               _WWDG_SWReset:
 196                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 198  0020 358050d1      	mov	20689,#128
 199                     ; 99 }
 202  0024 81            	ret
 235                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 235                     ; 109 {
 236                     	switch	.text
 237  0025               _WWDG_SetWindowValue:
 241                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 243                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 245  0025 aa40          	or	a,#64
 246  0027 a47f          	and	a,#127
 247  0029 c750d2        	ld	20690,a
 248                     ; 114 }
 251  002c 81            	ret
 264                     	xdef	_WWDG_SetWindowValue
 265                     	xdef	_WWDG_SWReset
 266                     	xdef	_WWDG_GetCounter
 267                     	xdef	_WWDG_SetCounter
 268                     	xdef	_WWDG_Init
 287                     	end
