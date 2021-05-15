
/* 
* FileName: 
* Author: Dong Xia 
* This is head file of 
* 
* Change Records: 
*      >> (14/05/2021): Creation of file 
* 
*/

#ifndef  _XG_CONTAINER_H_
#define _XG_CONTAINER_H_
/********************************************
* Include 
********************************************/
#include "xgCtr.h"

/********************************************
* Macro 
********************************************/


/********************************************
* Type definition 
********************************************/

enum XG_ContainerState_t{
    CONTAINER_NOT_ADD_ON_SCREEN = 0,
    CONTAINER_ADD_ON_SCREEN,
};

enum XG_ContainerType_t {
    XG_CONTAINER_HBOX = 0,
    XG_CONTAINER_VBOX,
}

typedef struct {
    XG_Control_t ctr;
    enum XG_ContainerType_t type;
    enum XG_ContainerState_t state;
    XG_Sz_t occupiedSz;

    //functions
    //clear all the children 
    void (*clear)();

}XG_Container_t;

/********************************************
* Function prototype 
********************************************/

#endif

