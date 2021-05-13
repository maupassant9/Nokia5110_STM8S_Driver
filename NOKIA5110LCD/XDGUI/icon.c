/*
* icon.c
* Author: Dong Xia
* Icon control source file
*
* Change Records:
*      >> (13/05/2021): created
*
*/

/********************************************
* Include 
********************************************/
#include <stm8s.h>
#include "icon.h"


/********************************************
* Internal Types and Variables 
********************************************/
typedef struct{
    XG_Control_t ctr;
    uint8_t * icon;
    uint16_t width;
    uint16_t length;
}XG_Icon_t;

/********************************************
* Internal Function Declaration 
********************************************/


/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
********************************************/
void XG_IconInit(XG_Icon_t * icon,
                uint16_t sizeX,
                uint16_t sizeY,
                uint8_t * data){
    XG_CtrInit(&icon->ctr);
    icon->icon = data;
    icon->width = sizeX;
    icon->length = sizeY;
}


void XG_IconInit
