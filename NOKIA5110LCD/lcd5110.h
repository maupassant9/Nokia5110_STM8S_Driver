#ifndef _LCD5110_H
#define _LCD5110_H


#define private

#define LCD_Y_RES 48
#define LCD_X_RES 84

#define LCD5110_LED_GPIO GPIOC
#define LCD5110_LED_PIN GPIO_PIN_3

#define LCD5110_CLK_GPIO GPIOC
#define LCD5110_CLK_PIN GPIO_PIN_5

#define LCD5110_DA_GPIO GPIOC
#define LCD5110_DA_PIN GPIO_PIN_6

#define LCD5110_DC_GPIO GPIOD
#define LCD5110_DC_PIN GPIO_PIN_2

#define LCD5110_SCE_GPIO GPIOB
#define LCD5110_SCE_PIN GPIO_PIN_4

#define LCD5110_RESET_GPIO GPIOD
#define LCD5110_RESET_PIN GPIO_PIN_3



//////////////////////////////////////////
//   ---------------        
//  |  ....         |    Pixel: (X,Y)
//  |  ....         |       Convert to offset in
//  |               |       LCD cache memeory offset
//  |               |       (offsetX, offsetY)
//  |               |
//   ---------------
//////////////////////////////////////////

void lcd5110Init(void);
void lcd5110WriteByte(unsigned char dt,unsigned char command);
void lcd5110SetXy(unsigned char x,unsigned char y);
void lcd5110Clear(void);



#endif  //lcd5110