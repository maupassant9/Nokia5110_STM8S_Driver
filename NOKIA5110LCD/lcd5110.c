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


/********************************************
* Internal Function Declaration 
********************************************/



/********************************************
* Internal Types and Variables 
********************************************/

/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
*********************************************/
///////////////////////
//   Pin Fuctions    //
///////////////////////
private void sce0(void)
{
	GPIO_WriteLow(LCD5110_SCE_GPIO,LCD5110_SCE_PIN);
}

private void sce1(void)
{
	GPIO_WriteHigh(LCD5110_SCE_GPIO,LCD5110_SCE_PIN);
}

private void res0(void)
{
	GPIO_WriteLow(LCD5110_RESET_GPIO,LCD5110_RESET_PIN);
}

private void res1(void)
{
	GPIO_WriteHigh(LCD5110_RESET_GPIO,LCD5110_RESET_PIN);
}

private void dc0(void)
{
	GPIO_WriteLow(LCD5110_DC_GPIO,LCD5110_DC_PIN);
}

private void dc1(void)
{
	GPIO_WriteHigh(LCD5110_DC_GPIO,LCD5110_DC_PIN);
}

private void sdin0(void)
{
	GPIO_WriteLow(LCD5110_DA_GPIO,LCD5110_DA_PIN);
}

private void sdin1(void)
{
	GPIO_WriteHigh(LCD5110_DA_GPIO,LCD5110_DA_PIN);
}

private void sclk0(void)
{
	GPIO_WriteLow(LCD5110_CLK_GPIO,LCD5110_CLK_PIN);
}

private void sclk1(void)
{
	GPIO_WriteHigh(LCD5110_CLK_GPIO,LCD5110_CLK_PIN);
}

private void backled0(void)
{
	GPIO_WriteLow(LCD5110_LED_GPIO,LCD5110_LED_PIN);
}

private void backled1(void)
{
	GPIO_WriteHigh(LCD5110_LED_GPIO,LCD5110_LED_PIN);
}

/*------------------------------------------------ 
* lcd5110Init 
* Init the 5110 LCD
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void lcd5110Init(void)
{
	GPIO_Init(LCD5110_LED_GPIO,LCD5110_LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(LCD5110_CLK_GPIO,LCD5110_CLK_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(LCD5110_DA_GPIO,LCD5110_DA_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(LCD5110_DC_GPIO,LCD5110_DC_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(LCD5110_SCE_GPIO,LCD5110_SCE_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(LCD5110_RESET_GPIO,LCD5110_RESET_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	
	sce1();
	res1();
	res0();
	res1();
	lcd5110WriteByte(0x21,0);
	lcd5110WriteByte(0xc0,0);
	
	lcd5110WriteByte(0x20,0);
	lcd5110WriteByte(0x0C,0);
	sce1();
	backled1();

}

/*------------------------------------------------ 
* lcd5110WriteByte
* Write a byte into lcd, command or data. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void lcd5110WriteByte(unsigned char dt,unsigned char command)
{
	unsigned char i;  	
   sce0(); 	
	if(command)
		dc1();
	else
		dc0();		
	for(i=0;i<8;i++)
	{ 
		if(dt&0x80)
			sdin1();
		else
			sdin0();
		dt=dt<<1;	
		sclk0(); 			
		sclk1(); 		  
		sclk0();		
	}
	sce1();
}

/*------------------------------------------------ 
* lcd5110Update
* Update the lcd 5110 screen. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void lcd5110Update( uint8_t * data ){
	uint8_t x, y;
	lcd5110SetXy(0,0);
	for(y = 0; y < LCD_Y_RES/8; y++){
		lcd5110SetXy(0,y);
		for(x = 0; x < LCD_X_RES ; x++){
			//lcd5110SetXy(x,y);
			lcd5110WriteByte(data[x*(LCD_Y_RES/8)+y], 1);
		}
	}
}

/*------------------------------------------------ 
* Lcd5110SetXy 
* Set the origin of lcd. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/08/2020): Create the function 
*----------------------------------------------*/
void lcd5110SetXy(unsigned char X,unsigned char Y)
{
	lcd5110WriteByte(0x40 | Y, 0);// column
	lcd5110WriteByte(0x80 | X, 0);// row
	//sce1();
}

