/* 
* lcd_draw.h 
* Author: Dong Xia 
* LCD Basic Draw functions
* 
* Change Records: 
*      >> (29/08/2020): Creation of file 
* 
*/

#ifndef  _LCD_DRAW_H_
#define  _LCD_DRAW_H_
/********************************************
* Include 
********************************************/


/********************************************
* Macro 
********************************************/

/********************************************
* Type definition 
********************************************/
typedef enum{
	LCD_DRAW_MODE_SET = 0,
	LCD_DRAW_MODE_CLR,
	LCD_DRAW_MODE_XOR	
}lcd_draw_mode_t;

/********************************************
* Function prototype 
********************************************/
void LcdClear(void);
void LcdDrawPixel(unsigned char x, unsigned char y, lcd_draw_mode_t mode);
void LcdDrawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, lcd_draw_mode_t mode);
void LcdDrawCircle(uint8_t x, uint8_t y, uint8_t radius, lcd_draw_mode_t mode);
void LcdDrawVLine(uint8_t x, uint8_t y,uint8_t l, lcd_draw_mode_t mode);
void LcdDrawHLine(uint8_t x, uint8_t y, 
									uint8_t len, lcd_draw_mode_t mode);
void LcdDrawRect(uint8_t x1,uint8_t y1, 
								 uint8_t x2, uint8_t y2,
								 lcd_draw_mode_t mode);
void LcdDrawRoundRect(uint8_t x1, uint8_t y1,
											uint8_t x2, uint8_t y2,	
											uint8_t r, lcd_draw_mode_t mode);
void LcdDrawBitmap(uint8_t x, uint8_t y, 
										uint8_t * bitmap, 
									 uint8_t sx,uint8_t sy,
									  lcd_draw_mode_t mode);
void LcdPutOneNumber(uint8_t x, uint8_t y, 
											uint8_t num, lcd_draw_mode_t mode);
void LcdPutInteger(uint8_t x, uint8_t y, 
						uint32_t num, lcd_draw_mode_t mode);
void LcdPutChar(uint8_t x, uint8_t y, uint8_t c, lcd_draw_mode_t mode);
void LcdPutString(uint8_t x,uint8_t y,char *s, lcd_draw_mode_t mode);

void LcdFillRect(uint8_t x1, uint8_t y1, 
								 uint8_t x2, uint8_t y2,
								 lcd_draw_mode_t mode);
void LcdDrawCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
				uint8_t corners, lcd_draw_mode_t mode);
void LcdFillCircle(uint8_t x0, uint8_t y0, uint8_t r,
                              lcd_draw_mode_t mode);
void LcdFillCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
                                    uint8_t corners, uint8_t delta,
                                    lcd_draw_mode_t mode);
void LcdDrawTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
                                uint8_t x2, uint8_t y2, lcd_draw_mode_t mode);
void LcdFillTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
                                uint8_t x2, uint8_t y2, lcd_draw_mode_t mode);
void LcdFillRoundRect(uint8_t x1, uint8_t y1,
					uint8_t x2, uint8_t y2,
					uint8_t r, lcd_draw_mode_t mode);
#endif

