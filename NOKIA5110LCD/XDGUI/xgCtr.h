
/* 
* xgCtr.h
* Author: Dong Xia 
* Gerneral functions and parameters for 
* all the controller used in xgGUI
* 
* Change Records: 
*      >> (13/05/2021): Creation of file 
* 
*/

#ifndef  _XG_CTR_H_
#define _XG_CTR_H_
/********************************************
* Include 
********************************************/
#include <stm8s.h>
#include "xg.h"
/********************************************
* Macro 
********************************************/

/********************************************
* Type definition 
********************************************/
enum XG_CtrType_t{
    CTR_TYPE_CONTAINER = 0,
    CTR_TYPE_WIDGET
};

enum XG_WidgetState_t {
    WIDGET_NOT_ON_SCREEN = 0,
    WIDGET_ON_FRONTGROUND,
    WIDGET_ON_BACKGROUND,
    WIDGET_HIDE
};

enum XG_ContainerState_t{
    CONTAINER_NOT_ADD_ON_SCREEN = 0,
    CONTAINER_ADD_ON_SCREEN,
};

enum XG_WidgetType_t {
    XG_WIDGET_LABEL = 0,
    XG_WIDGET_BUTTON,
    XG_WIDGET_ICON    
};

enum XG_ContainerType_t {
    XG_CONTAINER_HBOX = 0,
    XG_CONTAINER_VBOX,
}

typedef struct XG_StructCtr_t{
    enum XG_CtrType_t type;
    //starting point on screen (x,y)
    XG_Pos_t pos;
    XG_Sz_t size;
    //parent control
    struct XG_StructCtr_t * parent;
    struct XG_StructCtr_t * child;
}XG_Control_t;

typedef struct {
    XG_Control_t ctr;
    enum XG_ContainerType_t type;
    enum XG_ContainerState_t state;
    XG_Sz_t occupiedSz;    
}XG_Container_t;

typedef struct {
    XG_Control_t ctr;
    enum XG_WidgetType_t type;
     //current state of the control
    enum XG_WidgetState_t state;
    //show widget function
    void (*show)(void);

}XG_Widget_t;



/********************************************
* Function prototype 
********************************************/

#endif

