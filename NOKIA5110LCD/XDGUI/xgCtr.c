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
#include "xgWidget.h"


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
void XG_CtrInit(XG_Control_t * ctr, enum XG_CtrType_t type){
    ctr->type = type;
    ctr->pos.x = 0; ctr->pos.y = 0;
    ctr->parent = NULL;
    ctr->child = NULL;
    ctr->brother = NULL;
    ctr->size.x = 0; ctr->size.y = 0;
}
