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
#include "lcd_draw.h"

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
/*------------------------------------------------ 
* XG_WidgetLabelInit 
* Initialize the XGUI Widget Label 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (13/05/2021): Create the function 
*----------------------------------------------*/
void XG_WidgetLabelInit(XG_WidgetLabel_t* label,
    char * text, XG_LabelStyle_t style, XG_Font_t * font){
    XG_WidgetInit(&(label->widget),
                XG_WidgetLabelShow,
                XG_WidgetLabelOnEvent);

    label->strSz = XG_GetStringSz(text);
    label->str = text;
    label->font = font;
    label->style = style;
}


/*------------------------------------------------ 
* XG_WidgetLabelShow
* Show the label widget
* Widget call the lcd driver and using parameters 
* in widget to show on screen.
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (13/05/2021): Create the function 
*----------------------------------------------*/
static void XG_WidgetLabelShow(XG_WidgetLabel_t * label){
    //check style
    //draw the string according to the style used
    LcdPutString(
        label->widget.ctr.pos.x,
        label->widget.ctr.pos.y,
        label->str,
        label->style);
    
}


static void XG_WidgetLabelOnEvent(XG_Evt_t * evt){
    
    }
}


