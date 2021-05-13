/*
* xgCtr.c
* Author: Dong Xia
* Gerneral functions and parameters for 
* all the controller used in xgGUI
*
* Change Records:
*      >> (13/05/2021): created
*
*/

/********************************************
* Include 
********************************************/
#include <stm8s.h>
#include "xgCtr.h"


/********************************************
* Internal Function Declaration 
********************************************/
#define MIN(x,y) (x>y)?y:x;


/********************************************
* Internal Types and Variables 
********************************************/
static void XG_CtrInit(XG_Control_t * ctr, enum XG_CtrType_t type);
/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
********************************************/
/*------------------------------------------------ 
* XG_CtrInit 
* Initialize the control structure 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (13/05/2021): Create the function 
*----------------------------------------------*/
void XG_WidgetInit(XG_Control_t * ctr){
    XG_ContainerInit(ctr, CTR_TYPE_WIDGET);
    ctr->widget.state = WIDGET_NOT_ON_SCREEN;
}

int8_t XG_WidgetShow(XG_Control_t * ctr){
    XG_Sz_t drawSz;
    //check the type of controller
    if(ctr->type != CTR_TYPE_WIDGET) return -1;
    if(ctr->parent == NULL) return -1;
    if(ctr->parent->type != CTR_TYPE_CONTAINER) retrun -1;

    //call widget show function
    *(ctr->widget.show)();
    
}

void XG_ContainerInit(XG_Control_t * ctr){
    XG_ContainerInit(ctr, CTR_TYPE_CONTAINER);

    //containner init
    ctr->container.occupiedSz = {0,0};
    ctr->container.state = CONTAINER_NOT_ADD_ON_SCREEN;
}




static void XG_CtrInit(XG_Control_t * ctr, enum XG_CtrType_t type){
    ctr->type = type;
    ctr->pos.x = 0; ctr->pos.y = 0;
    ctr->parent = NULL;
    ctr->child = NULL;
    ctr->size.x = 0; ctr->size.y = 0;
}


