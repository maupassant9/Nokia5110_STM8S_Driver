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


/*------------------------------------------------ 
* XG_CtrAddChild
* Add a child
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
void XG_CtrAddChild(XG_Control_t * p, XG_Control_t * c){
    if(p->child == NULL){
        p->child = c;
    } else {
        XG_CtrGetLastBrother(p->child)->brother = c;
    }
}

/*------------------------------------------------ 
* XG_CtrGetLastBrother
* Get the last brother of the control, brother control
* is the control of the same level in the tree.
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
static XG_Control_t * 
XG_CtrGetLastBrother(XG_Control_t *c) {
    
    XG_Control_t *nxt;

    nxt = c;
    while(nxt->brother != NULL){
        nxt = nxt->brother;
    }
    return nxt;
}