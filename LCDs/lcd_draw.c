/*
* lcd_draw.c: 
* Author: Dong Xia
* Basic draw function for mono-lcd.
*
* Change Records:
*      >> (29/08/2020): file created
*
*/

/********************************************
* Include 
********************************************/
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "lcd5110.h"
#include "lcd_draw.h"


/********************************************
* Internal Types and Variables 
********************************************/
#define FONT_WIDTH 6
#define FONT_HEIGHT 8

#define FONT_SPACE 0
#define FONT_NUM_OFFSET 16

const unsigned char  font6x8[] =
{
 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,// sp
 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00,// !
 0x00, 0x00, 0x07, 0x00, 0x07, 0x00,// "
 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14,// #
 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12,// $
 0x00, 0x62, 0x64, 0x08, 0x13, 0x23,// %
 0x00, 0x36, 0x49, 0x55, 0x22, 0x50,// &
 0x00, 0x00, 0x05, 0x03, 0x00, 0x00,// '
 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00,// (
 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00,// )
 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14,// *
 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08,// +
 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00,// ,
 0x00, 0x08, 0x08, 0x08, 0x08, 0x08,// -
 0x00, 0x00, 0x60, 0x60, 0x00, 0x00,// .
 0x00, 0x20, 0x10, 0x08, 0x04, 0x02,// /
 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E,// 0
 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00,// 1
 0x00, 0x42, 0x61, 0x51, 0x49, 0x46,// 2
 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31,// 3
 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10,// 4
 0x00, 0x27, 0x45, 0x45, 0x45, 0x39,// 5
 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30,// 6
 0x00, 0x01, 0x71, 0x09, 0x05, 0x03,// 7
 0x00, 0x36, 0x49, 0x49, 0x49, 0x36,// 8
 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E,// 9
 0x00, 0x00, 0x36, 0x36, 0x00, 0x00,// :
 0x00, 0x00, 0x56, 0x36, 0x00, 0x00,// ;
 0x00, 0x08, 0x14, 0x22, 0x41, 0x00,// <
 0x00, 0x14, 0x14, 0x14, 0x14, 0x14,// =
 0x00, 0x00, 0x41, 0x22, 0x14, 0x08,// >
 0x00, 0x02, 0x01, 0x51, 0x09, 0x06,// ?
 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E,// @
 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C,// A
 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36,// B
 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22,// C
 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C,// D
 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41,// E
 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01,// F
 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A,// G
 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F,// H
 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00,// I
 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01,// J
 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41,// K
 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40,// L
 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F,// M
 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F,// N
 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E,// O
 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06,// P
 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E,// Q
 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46,// R
 0x00, 0x46, 0x49, 0x49, 0x49, 0x31,// S
 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01,// T
 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F,// U
 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F,// V
 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F,// W
 0x00, 0x63, 0x14, 0x08, 0x14, 0x63,// X
 0x00, 0x07, 0x08, 0x70, 0x08, 0x07,// Y
 0x00, 0x61, 0x51, 0x49, 0x45, 0x43,// Z
 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00,// [
 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55,// 55
 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00,// ]
 0x00, 0x04, 0x02, 0x01, 0x02, 0x04,// ^
 0x00, 0x40, 0x40, 0x40, 0x40, 0x40,// _
 0x00, 0x00, 0x01, 0x02, 0x04, 0x00,// '
 0x00, 0x20, 0x54, 0x54, 0x54, 0x78,// a
 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38,// b
 0x00, 0x38, 0x44, 0x44, 0x44, 0x20,// c
 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F,// d
 0x00, 0x38, 0x54, 0x54, 0x54, 0x18,// e
 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02,// f
 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C,// g
 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78,// h
 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00,// i
 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00,// j
 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00,// k
 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00,// l
 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78,// m
 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78,// n
 0x00, 0x38, 0x44, 0x44, 0x44, 0x38,// o
 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18,// p
 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC,// q
 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08,// r
 0x00, 0x48, 0x54, 0x54, 0x54, 0x20,// s
 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20,// t
 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C,// u
 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C,// v
 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C,// w
 0x00, 0x44, 0x28, 0x10, 0x28, 0x44,// x
 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C,// y
 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44,// z
 0x14, 0x14, 0x14, 0x14, 0x14, 0x14// horiz lines
};

		
static unsigned char * font = (unsigned char *)(&font6x8[0]);
// video memory
static uint8_t lcdCache[LCD_X_RES][LCD_Y_RES/8] = {0};
/********************************************
* External Variables 
********************************************/

/********************************************
* Internal Function Declaration 
********************************************/
static uint8_t LcdGetNumbers2Wr(uint32_t num, uint8_t * numArray);
static void _LcdSwapUInt8(uint8_t * x1,uint8_t * x2);


/********************************************
* Functions 
********************************************/
/*------------------------------------------------ 
* LcdWriteChar
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdPutChar(uint8_t x, uint8_t y, uint8_t c, lcd_draw_mode_t mode)
{
	unsigned char line;
	c-=32;
	LcdDrawBitmap(x,y,&font[c*FONT_WIDTH], FONT_WIDTH,FONT_HEIGHT,mode);
}
/*------------------------------------------------ 
* LcdPutString
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdPutString(uint8_t x,uint8_t y,char *s, lcd_draw_mode_t mode)
{
	while (*s) 
	{
		LcdPutChar(x,y,*s,mode);
		s++;
		x += FONT_WIDTH;
	}

}

/*------------------------------------------------ 
* LcdPutNumber
* Put a number on lcd. 
* Paras:
*  >> (x,y) : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdPutOneNumber(uint8_t x, uint8_t y, 
									uint8_t num, lcd_draw_mode_t mode)
{
	if(num >= 10) return;
	LcdDrawBitmap(x,y,&font[(FONT_NUM_OFFSET+num)*FONT_WIDTH], FONT_WIDTH,FONT_HEIGHT,mode);
}

/*------------------------------------------------ 
* LcdPutInteger
* Put a number on lcd. 
* Paras:
*  >> (x,y) : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdPutInteger(uint8_t x, uint8_t y, 
									uint32_t num, lcd_draw_mode_t mode)
{
	uint8_t * pval;
	uint8_t cnt, dx;
	uint8_t num2wr[15] = {0};
	//get the number to be wr
	cnt = LcdGetNumbers2Wr(num, num2wr);
	pval = &num2wr[cnt-1];
	
	//x += (FONT_WIDTH*cnt);
	for(dx = 0;dx < cnt; dx++){
		LcdPutOneNumber(x + (dx * FONT_WIDTH),y,*pval--,mode);
	}
}




/*------------------------------------------------ 
* LcdGetNumbers2Wr
* Get the numbers that should be write 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> uint8_t: number of element numbers
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
static uint8_t LcdGetNumbers2Wr(uint32_t num, uint8_t * numArray){
	uint32_t divider = 10;
	uint8_t residual = 0;
	uint32_t quotient = 0;
	uint8_t cnt = 0;
	
	while(1){
		quotient = num/divider;
		residual = (uint8_t)(num - quotient * divider);
		
		*numArray++ = residual;
		cnt++;
		if(0 == quotient) break;
		num = quotient;
	}
	return cnt;
}


/*------------------------------------------------ 
* LcdClear
* Clear the screen. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdClear(void)
{
	unsigned char t;
	unsigned char k;

	for(t=0;t<6;t++)
	{ 
		for(k=0;k<84;k++)
		{ 
			lcdCache[k][t] = 0;
		} 
	}
	
	LcdUpdate(lcdCache);
}

/*------------------------------------------------ 
* LcdDrawPixel
* Draw a pixel on screen.
* Paras:
*  >> (x,y) : position to drwa on screen 
*  >> mode : draw mode 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawPixel(uint8_t x, 
									uint8_t y,
									lcd_draw_mode_t mode)
{
	unsigned char row = x;
	unsigned char page = y/8;
	unsigned char residual = y - page*8;
	
	if((x >= LCD_X_RES) || (y >= LCD_Y_RES))
		return;
	
	if(LCD_DRAW_MODE_SET == mode)
		lcdCache[row][page] |= (0x01<<residual);
	else if (LCD_DRAW_MODE_CLR == mode)
		lcdCache[row][page] &= ~(0x01<<residual);
	else
		lcdCache[row][page] ^= (0x01<<residual);
}

/*------------------------------------------------ 
* LcdUpdate 
* Update the Lcd, call the raw functon
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdUpdate( void ){
	lcd5110Update(lcdCache);
}
/*------------------------------------------------ 
* LcdDrawLine 
* Draw any line, slow function 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawLine(uint8_t x1, uint8_t y1, 
								 uint8_t x2, uint8_t y2,
								 lcd_draw_mode_t mode)
{
    int16_t dx, dy, stepx, stepy, fraction;

		// dy   y2 - y1
    // -- = -------
    // dx   x2 - x1
		
    dy = y2 - y1;
    dx = x2 - x1;

    if (dy < 0)
    {
        dy    = -dy;
        stepy = -1;
    }
    else
    {
        stepy = 1;
    }

    if (dx < 0)
    {
        dx    = -dx;
        stepx = -1;
    }
    else
    {
        stepx = 1;
    }

    dx <<= 1;
    dy <<= 1;

    // Draw start point
    LcdDrawPixel(x1, y1, mode);

    // Draw next points
    if (dx > dy)
    {
        fraction = dy - ( dx >> 1);
        while (x1 != x2)
        {
            if (fraction >= 0)
            {
                y1 += stepy;
                fraction -= dx;
            }
            x1 += stepx;
            fraction += dy;

            LcdDrawPixel(x1, y1, mode);
        }
    }
    else
    {
        fraction = dx - ( dy >> 1);
        while (y1 != y2)
        {
            if (fraction >= 0)
            {
                x1 += stepx;
                fraction -= dy;
            }
            y1 += stepy;
            fraction += dx;

            LcdDrawPixel(x1, y1, mode);
        }
    }
}

/*------------------------------------------------ 
* LcdDrawHLine 
* Draw a horizontal line 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawHLine(uint8_t x, uint8_t y, 
									uint8_t len, lcd_draw_mode_t mode)
{
	uint8_t by, cx;
	uint8_t val;
	
	val = (1 << (y % 8));
	by = y/8;

	if ((x>=0) && (x < LCD_X_RES) && (y>=0) && (y < LCD_Y_RES))
	{
		for (cx=0; cx<len; cx++)
		{
			if(LCD_DRAW_MODE_SET == mode) 
				lcdCache[x+cx][by] |= val;
			else if(LCD_DRAW_MODE_CLR == mode)
				lcdCache[x+cx][by] &= ~val;
			else 
				lcdCache[x+cx][by] ^= val;
		}
	}
}

/*------------------------------------------------ 
* LcdDrawVLine
* Draw a verticle line. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawVLine(uint8_t x, uint8_t y, uint8_t l, lcd_draw_mode_t mode)
{
	uint8_t by, bi, cy;

	if ((x>=0) && (x < LCD_X_RES)&& (y>=0) && (y < LCD_Y_RES))
	{
		for (cy=0; cy<l; cy++)
		{
			LcdDrawPixel(x, y+cy, mode);
		}
	}
}


/*------------------------------------------------ 
* LcdDrawCircle
* Draw a circle
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawCircle(uint8_t x, 
									 uint8_t y,
									 uint8_t radius,
									 lcd_draw_mode_t mode)
{
	int f = 1 - radius;
	int ddF_x = 1;
	int ddF_y = -2 * radius;
	int x1 = 0;
	int y1 = radius;
	char ch, cl;
	
	LcdDrawPixel(x, y + radius, mode);
	LcdDrawPixel(x, y - radius, mode);
	LcdDrawPixel(x + radius, y, mode);
	LcdDrawPixel(x - radius, y, mode);
 
	while(x1 < y1)
	{
		if(f >= 0) 
		{
			y1--;
			ddF_y += 2;
			f += ddF_y;
		}
		x1++;
		ddF_x += 2;
		f += ddF_x;    
		LcdDrawPixel(x + x1, y + y1, mode);
		LcdDrawPixel(x - x1, y + y1, mode);
		LcdDrawPixel(x + x1, y - y1, mode);
		LcdDrawPixel(x - x1, y - y1, mode);
		LcdDrawPixel(x + y1, y + x1, mode);
		LcdDrawPixel(x - y1, y + x1, mode);
		LcdDrawPixel(x + y1, y - x1, mode);
		LcdDrawPixel(x - y1, y - x1, mode);
	}
}

/*------------------------------------------------ 
* FuncName(); 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawRect(uint8_t x1,uint8_t y1, 
								 uint8_t x2, uint8_t y2,
								 lcd_draw_mode_t mode)
{
	uint8_t tmp;

	if(x1 > x2)	_LcdSwapUInt8(&x1,&x2);
	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);

	LcdDrawHLine(x1, y1, x2-x1, mode);
	LcdDrawHLine(x1, y2, x2-x1, mode);
	LcdDrawVLine(x1, y1, y2-y1, mode);
	LcdDrawVLine(x2, y1, y2-y1+1, mode);
}



/*------------------------------------------------ 
* LcdDrawRoundRect
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
/*void LcdDrawRoundRect(uint8_t x1, uint8_t y1,
											uint8_t x2,uint8_t y2,
											lcd_draw_mode_t mode)
{
	uint8_t tmp;

	if(x1 > x2)	_LcdSwapUInt8(&x1,&x2);
	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
	
	if ((x2-x1)>4 && (y2-y1)>4)
	{
		LcdDrawPixel(x1+1,y1+1,mode);
		LcdDrawPixel(x2-1,y1+1, mode);
		LcdDrawPixel(x1+1,y2-1, mode);
		LcdDrawPixel(x2-1,y2-1, mode);
		LcdDrawHLine(x1+2, y1, x2-x1-3, mode);
		LcdDrawHLine(x1+2, y2, x2-x1-3, mode);
		LcdDrawVLine(x1, y1+2, y2-y1-3, mode);
		LcdDrawVLine(x2, y1+2, y2-y1-3, mode);
	}
}*/

void LcdDrawRoundRect(uint8_t x1, uint8_t y1,
											uint8_t x2, uint8_t y2,	
											uint8_t r, lcd_draw_mode_t mode) {
																	 
	uint8_t w, h, max_radius;
	
	if(x1 > x2) _LcdSwapUInt8(&x1,&x2);
	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
	
	w = x2 - x1;
	h = y2 - y1;
	
  max_radius = ((w < h) ? w : h) / 2; // 1/2 minor axis
  if (r > max_radius)
    r = max_radius;
  // smarter version
  LcdDrawHLine(x1 + r, y1, w - 2 * r, mode);         // Top
  LcdDrawHLine(x1 + r, y2 - 1, w - 2 * r, mode); // Bottom
  LcdDrawVLine(x1, y1 + r, h - 2 * r, mode);         // Left
  LcdDrawVLine(x2 - 1, y1 + r, h - 2 * r, mode); // Right
  // draw four corners
  LcdDrawCircleHelper(x1 + r, y1 + r, r, 1, mode);
  LcdDrawCircleHelper(x2 - r - 1, y1 + r, r, 2, mode);
  LcdDrawCircleHelper(x2 - r - 1, y2 - r - 1, r, 4, mode);
  LcdDrawCircleHelper(x1 + r, y2 - r - 1, r, 8, mode);
}

/*------------------------------------------------ 
* LcdFillRoundRect 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdFillRoundRect(uint8_t x1, uint8_t y1,
											uint8_t x2, uint8_t y2,
											uint8_t r, lcd_draw_mode_t mode) {
  uint8_t w, h, max_radius;
	
	if(x1 > x2) _LcdSwapUInt8(&x1,&x2);
	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
	
	w = x2 - x1;
	h = y2 - y1;

	max_radius = ((w < h) ? w : h) / 2; // 1/2 minor axis
  if (r > max_radius)
    r = max_radius;
  // smarter version
  LcdFillRect(x1 + r, y1, x2 - r, y2, mode);
  // draw four corners
  LcdFillCircleHelper(x2 - r - 1, y1 + r, r, 1, h - 2 * r - 1, mode);
  LcdFillCircleHelper(x1 + r, y1 + r, r, 2, h - 2 * r - 1, mode);
}

/*------------------------------------------------ 
* LcdDrawBitmap 
* Draw a bit map 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawBitmap(uint8_t x, uint8_t y, 
									 uint8_t * bitmap, 
									 uint8_t sx, uint8_t sy,
									 lcd_draw_mode_t mode)
{
	uint8_t bit, cy, cx;
	uint8_t data;
	

	for (cy=0; cy<sy; cy++)
	{
		bit= cy % 8;
		for(cx=0; cx<sx; cx++)
		{
			if(mode == LCD_DRAW_MODE_CLR)
				data = ~bitmap[cx+((cy/8)*sx)];
			else if(mode == LCD_DRAW_MODE_SET)
				data = bitmap[cx+((cy/8)*sx)];
			else 
				data = bitmap[cx+((cy/8)*sx)]^lcdCache[x+cx][y+cy];
			if ((data & (1<<bit))>0)
				LcdDrawPixel(x+cx, y+cy,LCD_DRAW_MODE_SET);
			else
				LcdDrawPixel(x+cx, y+cy,LCD_DRAW_MODE_CLR);
		}
	} 
}

/*------------------------------------------------ 
* LcdFillRect
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdFillRect(uint8_t x1, uint8_t y1, 
								 uint8_t x2, uint8_t y2,
								 lcd_draw_mode_t mode) {
  uint8_t i;
	uint8_t tmp;

	if(x1 > x2)	_LcdSwapUInt8(&x1,&x2);
	if(y1 > y2) _LcdSwapUInt8(&y1,&y2);
	
	for (i = y1; i <= y2; i++) {
    LcdDrawHLine(x1, i, x2-x1, mode);
  }
}


/*------------------------------------------------ 
* LcdDrawCircleHelper
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
													uint8_t cornername, lcd_draw_mode_t mode) {


  int8_t f = 1 - r;
  int8_t ddF_x = 1;
  int8_t ddF_y = -2 * r;
  int8_t x = 0;
  int8_t y = r;

  while (x < y) {
    if (f >= 0) {
      y--;
      ddF_y += 2;
      f += ddF_y;
    }
    x++;
    ddF_x += 2;
    f += ddF_x;
    if (cornername & 0x4) {
      LcdDrawPixel(x0 + x, y0 + y, mode);
      LcdDrawPixel(x0 + y, y0 + x, mode);
    }
    if (cornername & 0x2) {
      LcdDrawPixel(x0 + x, y0 - y, mode);
      LcdDrawPixel(x0 + y, y0 - x, mode);
    }
    if (cornername & 0x8) {
      LcdDrawPixel(x0 - y, y0 + x, mode);
      LcdDrawPixel(x0 - x, y0 + y, mode);
    }
    if (cornername & 0x1) {
      LcdDrawPixel(x0 - y, y0 - x, mode);
      LcdDrawPixel(x0 - x, y0 - y, mode);
    }
  }
}

/*------------------------------------------------ 
* LcdFillCircle
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdFillCircle(uint8_t x0, uint8_t y0, uint8_t r,
                              lcd_draw_mode_t mode) {
  LcdDrawVLine(x0, y0 - r, 2 * r + 1, mode);
  LcdFillCircleHelper(x0, y0, r, 3, 0, mode);
}


/*------------------------------------------------ 
* LcdFillCircleHelper 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdFillCircleHelper(uint8_t x0, uint8_t y0, uint8_t r,
                                    uint8_t corners, uint8_t delta,
                                    lcd_draw_mode_t mode) {

  int8_t f = 1 - r;
  int8_t ddF_x = 1;
  int8_t ddF_y = -2 * r;
  int8_t x = 0;
  int8_t y = r;
  int8_t px = x;
  int8_t py = y;

  delta++; // Avoid some +1's in the loop

  while (x < y) {
    if (f >= 0) {
      y--;
      ddF_y += 2;
      f += ddF_y;
    }
    x++;
    ddF_x += 2;
    f += ddF_x;
    // These checks avoid double-drawing certain lines, important
    // for the SSD1306 library which has an INVERT drawing mode.
    if (x < (y + 1)) {
      if (corners & 1)
        LcdDrawVLine(x0 + x, y0 - y, 2 * y + delta, mode);
      if (corners & 2)
        LcdDrawVLine(x0 - x, y0 - y, 2 * y + delta, mode);
    }
    if (y != py) {
      if (corners & 1)
        LcdDrawVLine(x0 + py, y0 - px, 2 * px + delta, mode);
      if (corners & 2)
        LcdDrawVLine(x0 - py, y0 - px, 2 * px + delta, mode);
      py = y;
    }
    px = x;
  }
}



/*------------------------------------------------ 
* LcdDrawTriangle 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdDrawTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
                                uint8_t x2, uint8_t y2, lcd_draw_mode_t mode) {
  LcdDrawLine(x0, y0, x1, y1, mode);
  LcdDrawLine(x1, y1, x2, y2, mode);
  LcdDrawLine(x2, y2, x0, y0, mode);
}

/*------------------------------------------------ 
* FuncName(); 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void LcdFillTriangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1,
                                uint8_t x2, uint8_t y2, lcd_draw_mode_t mode) {

  uint8_t a, b;
	int8_t y, last;
	int8_t dx01, dy01, dx02, dy02, dx12, dy12;
	int32_t sa = 0, sb = 0;

  // Sort coordinates by Y order (y2 >= y1 >= y0)
  if (y0 > y1) {
    	_LcdSwapUInt8(&y0, &y1);
    	_LcdSwapUInt8(&x0, &x1);
  }
  if (y1 > y2) {
    	_LcdSwapUInt8(&y2, &y1);
    	_LcdSwapUInt8(&x2, &x1);
  }
  if (y0 > y1) {
    	_LcdSwapUInt8(&y0, &y1);
    	_LcdSwapUInt8(&x0, &x1);
  }

  if (y0 == y2) { // Handle awkward all-on-same-line case as its own thing
    a = b = x0;
    if (x1 < a)
      a = x1;
    else if (x1 > b)
      b = x1;
    if (x2 < a)
      a = x2;
    else if (x2 > b)
      b = x2;
    LcdDrawHLine(a, y0, b - a + 1, mode);
    return;
  }

  dx01 = x1 - x0; dy01 = y1 - y0; dx02 = x2 - x0; dy02 = y2 - y0;
	dx12 = x2 - x1; dy12 = y2 - y1;
  

  // For upper part of triangle, find scanline crossings for segments
  // 0-1 and 0-2.  If y1=y2 (flat-bottomed triangle), the scanline y1
  // is included here (and second loop will be skipped, avoiding a /0
  // error there), otherwise scanline y1 is skipped here and handled
  // in the second loop...which also avoids a /0 error here if y0=y1
  // (flat-topped triangle).
  if (y1 == y2)
    last = y1; // Include y1 scanline
  else
    last = y1 - 1; // Skip it

  for (y = y0; y <= last; y++) {
    a = x0 + sa / dy01;
    b = x0 + sb / dy02;
    sa += dx01;
    sb += dx02;
    /* longhand:
    a = x0 + (x1 - x0) * (y - y0) / (y1 - y0);
    b = x0 + (x2 - x0) * (y - y0) / (y2 - y0);
    */
    if (a > b) _LcdSwapUInt8(&a, &b);
    LcdDrawHLine(a, y, b - a + 1, mode);
  }

  // For lower part of triangle, find scanline crossings for segments
  // 0-2 and 1-2.  This loop is skipped if y1=y2.
  sa = (int32_t)dx12 * (y - y1);
  sb = (int32_t)dx02 * (y - y0);
  for (; y <= y2; y++) {
    a = x1 + sa / dy12;
    b = x0 + sb / dy02;
    sa += dx12;
    sb += dx02;
    /* longhand:
    a = x1 + (x2 - x1) * (y - y1) / (y2 - y1);
    b = x0 + (x2 - x0) * (y - y0) / (y2 - y0);
    */
    if (a > b)
      	_LcdSwapUInt8(&a, &b);
    LcdDrawHLine(a, y, b - a + 1, mode);
  }
}

/*------------------------------------------------ 
* _LcdSwapUInt8 
* Swap the uint8_t variables 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
static void _LcdSwapUInt8(uint8_t * x1,uint8_t * x2){
	uint8_t tmp;

	tmp = *x1;
	*x1 = *x2;
	*x2 = tmp;
}