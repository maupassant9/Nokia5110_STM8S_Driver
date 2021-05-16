
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
    CTR_TYPE_WIDGET,
    CTR_TYPE_WINDOW
};

typedef struct XG_StructCtr_t{
    enum XG_CtrType_t type;
    //starting point on screen (x,y)
    XG_Pos_t pos;
    XG_Sz_t size;
    //parent control
    struct XG_StructCtr_t * parent;
    struct XG_StructCtr_t * child;
    struct XG_StructCtr_t * brother;
}XG_Control_t;




/********************************************
* Function prototype 
********************************************/

#endif

