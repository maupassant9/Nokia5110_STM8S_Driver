/* 
* xgWindows.h
* Author: Dong Xia 
* window is the place where all the activities 
* on screen happens.
* 
* Change Records: 
*      >> (15/05/2021): Creation of file 
* 
*/

#ifndef  _XG_WINDOW_H_
#define _XG_WINDOW_H_
/********************************************
* Include 
********************************************/
#include "xg.h"
#include "xgCtr.h"

/********************************************
* Macro 
********************************************/
#define XG_WINDOW_MAX_WIDTH LCD_X_RES
#define XG_WINDOW_MAX_HEIGHT LCD_Y_RES

#define XG_WINDOWS_NO 1

/********************************************
* Type definition 
********************************************/
typedef struct{
    XG_Control_t ctr;

    
}XG_Window_t;

/********************************************
* Function prototype 
********************************************/

#endif

