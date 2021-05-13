
/* 
* FileName: 
* Author: Dong Xia 
* This is head file of 
* 
* Change Records: 
*      >> (13/05/2021): Creation of file 
* 
*/

#ifndef  _XG_WIDGET_LABEL_H_
#define _XG_WIDGET_LABEL_H_
/********************************************
* Include 
********************************************/
#include <stm8s.h>
#include "xg.h"
#include "xgCtr.h"

/********************************************
* Macro 
********************************************/


/********************************************
* Type definition 
********************************************/
enum XG_LabelStyle_t{
    LABEL_STYLE_1 = 0,
    LABEL_STYLE_2 = 1,
    LABEL_STYLE_3 = 2,
    LABEL_STYLE_4 = 3,
    LABEL_STYLE_5 = 4
};

typedef struct {
    XG_Widget_t widget;
    enum XG_LabelStyle_t style;
    XG_Font_t font;
    char * str;
    uint16_t strSz;
}XG_WidgetLabel_t;

/********************************************
* Function prototype 
********************************************/

#endif

