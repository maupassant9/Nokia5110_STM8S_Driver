
/* 
* FileName: 
* Author: Dong Xia 
* This is head file of 
* 
* Change Records: 
*      >> (14/05/2021): Creation of file 
* 
*/

#ifndef  _XG_WIDGET_H_
#define _XG_WIDGET_H_
/********************************************
* Include 
********************************************/
#include "xg.h"
#include "xgCtr.h"


/********************************************
* Macro 
********************************************/


/********************************************
* Type definition 
********************************************/


/********************************************
* Function prototype 
********************************************/
enum XG_WidgetState_t {
    WIDGET_NOT_ON_SCREEN = 0,
    WIDGET_ON_FRONTGROUND,
    WIDGET_ON_BACKGROUND,
    WIDGET_HIDE
};


enum XG_WidgetType_t {
    XG_WIDGET_LABEL = 0,
    XG_WIDGET_BUTTON,
    XG_WIDGET_ICON
};

typedef struct {
    XG_Control_t ctr;
    enum XG_WidgetType_t type;
     //current state of the control
    enum XG_WidgetState_t state;
    //Event arrays
    
    //show widget function
    void (*show)(XG_Widget_t * w);
    void (*OnEvent)(XG_Evt_t * e);
    
}XG_Widget_t;


#endif

