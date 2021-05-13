/*
* xgLabel.c
* Author: Dong Xia
* Label Widget
*
* Change Records:
*      >> (13/05/2021): 
*
*/

/********************************************
* Include 
********************************************/
#include "xgLabel.h"


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
********************************************/
void XG_WidgetLabelInit(XG_WidgetLabel_t* label,
    char * text){
    XG_WidgetInit(&(label->widget));

    label->strSz = XG_GetStringSz();
    label->str = text;
    label->font = XG_GetStandardFont();
    label->style = LABEL_STYLE_1;
}


