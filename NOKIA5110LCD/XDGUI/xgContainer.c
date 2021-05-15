/*
* FileName: 
* Author: Dong Xia
* This is source file of 
*
* Change Records:
*      >> (14/05/2021): 
*
*/

/********************************************
* Include 
********************************************/
#include "xgCtr.h"


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
* XG_ContainerInit 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (14/05/2021): Create the function 
*----------------------------------------------*/
void XG_ContainerInit(XG_Control_t * ctr){
    XG_ContainerInit(ctr, CTR_TYPE_CONTAINER);

    //containner init
    ctr->container.occupiedSz = {0,0};
    ctr->container.state = CONTAINER_NOT_ADD_ON_SCREEN;
}
