/*
* xgWidget.c 
* Author: Dong Xia
* This is source file of widget.
*
* Change Records:
*      >> (14/05/2021): 
*
*/

/********************************************
* Include 
********************************************/
#include "xgWidget.h"


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
void XG_WidgetInit(XG_Widget_t * widget, 
                void (*show)(XG_Widget_t * widget),
                void (*OnEvent)(XG_Evt_t * e)){
    XG_ContainerInit(widget->ctr, CTR_TYPE_WIDGET);
    widget->state = WIDGET_NOT_ON_SCREEN;
    widget->show = show;
    widget->OnEvent = OnEvent;
}



/*------------------------------------------------ 
* XG_WindowGetActiveWidget
* Get the current Active Widget
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
XG_Widget_t * XG_WindowGetActiveWidget(){
    
}



