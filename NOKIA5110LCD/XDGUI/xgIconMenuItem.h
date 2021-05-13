/* 
* xgIconMenuItem.h
* Author: Dong Xia 
* Icon type menu item
* 
* Change Records: 
*      >> (11/05/2021): Creation of file 
* 
*/

#ifndef  _XG_ICON_NEMU_ITEM_H_
#define _XG_ICON_NEMU_ITEM_H_
/********************************************
* Include 
********************************************/
#include "lcd5110.h"

/********************************************
* Macro 
********************************************/
#define ICON_WIDTH 18
#define ICON_HEIGHT 10

#if ICON_WIDTH > LCD_X_RES
#error ERROR DEFINED!! ICON_WDITH CAN NOT BE LARGER THAN LCD_X_RES VALUE!
#endif
#if ICON_HEIGHT > LCD_Y_RES
#error ERROR DEFINED!! ICON_HEIGHT CAN NOT BE LARGER THAN LCD_Y_RES VALUE!
#endif

/********************************************
* Type definition 
********************************************/


/********************************************
* Function prototype 
********************************************/

#endif

