
/* 
* FileName: 
* Author: Dong Xia 
* This is head file of 
* 
* Change Records: 
*      >> (13/05/2021): Creation of file 
* 
*/

#ifndef  _XG_H_
#define _XG_H_
/********************************************
* Include 
********************************************/
#include <stm8s.h>
#include "lcd5110.h"
/********************************************
* Macro 
********************************************/


/********************************************
* Type definition 
********************************************/

typedef struct {
    uint16_t x;
    uint16_t y;
}XG_Pos_t;

typedef XG_Pos_t XG_Sz_t;

typedef struct{
    unsigned char * font;
    XG_Sz_t fontSz;
} XG_Font_t;

/********************************************
* Function prototype 
********************************************/

#endif

