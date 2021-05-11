   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
  76                     ; 48 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  76                     ; 49 {
  78                     	switch	.text
  79  0000               _IWDG_WriteAccessCmd:
  83                     ; 51   assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  85                     ; 53   IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
  87  0000 c750e0        	ld	20704,a
  88                     ; 54 }
  91  0003 81            	ret
 181                     ; 63 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 181                     ; 64 {
 182                     	switch	.text
 183  0004               _IWDG_SetPrescaler:
 187                     ; 66   assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 189                     ; 68   IWDG->PR = (uint8_t)IWDG_Prescaler;
 191  0004 c750e1        	ld	20705,a
 192                     ; 69 }
 195  0007 81            	ret
 227                     ; 78 void IWDG_SetReload(uint8_t IWDG_Reload)
 227                     ; 79 {
 228                     	switch	.text
 229  0008               _IWDG_SetReload:
 233                     ; 80   IWDG->RLR = IWDG_Reload;
 235  0008 c750e2        	ld	20706,a
 236                     ; 81 }
 239  000b 81            	ret
 262                     ; 89 void IWDG_ReloadCounter(void)
 262                     ; 90 {
 263                     	switch	.text
 264  000c               _IWDG_ReloadCounter:
 268                     ; 91   IWDG->KR = IWDG_KEY_REFRESH;
 270  000c 35aa50e0      	mov	20704,#170
 271                     ; 92 }
 274  0010 81            	ret
 297                     ; 99 void IWDG_Enable(void)
 297                     ; 100 {
 298                     	switch	.text
 299  0011               _IWDG_Enable:
 303                     ; 101   IWDG->KR = IWDG_KEY_ENABLE;
 305  0011 35cc50e0      	mov	20704,#204
 306                     ; 102 }
 309  0015 81            	ret
 322                     	xdef	_IWDG_Enable
 323                     	xdef	_IWDG_ReloadCounter
 324                     	xdef	_IWDG_SetReload
 325                     	xdef	_IWDG_SetPrescaler
 326                     	xdef	_IWDG_WriteAccessCmd
 345                     	end
