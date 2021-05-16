/*
* xgWindow.c
* Author: Dong Xia
* This is source file of 
*
* Change Records:
*      >> (15/05/2021): 
*
*/

/********************************************
* Include 
********************************************/
#include "xgWindow.h"


/********************************************
* Internal Function Declaration 
********************************************/



/********************************************
* Internal Types and Variables 
********************************************/
static XG_Window_t * activeWindow;
static XG_Window_t windows[XG_WINDOWS_NO];
/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
********************************************/
/*------------------------------------------------ 
* XG_WindowInit
* Intialize the windows structures
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowInit(){
    int i;
    activeWindow = NULL;
    for(i = 0; i < XG_WINDOWS_NO; i++){
        windows[i] = NULL;
    }
}



void XG_WindowCtrInit(XG_Window_t * window){
    XG_CtrInit(&(window->ctr));

}

/*------------------------------------------------ 
* XG_WindowAddWidget
* Add a control on window. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowAddCtr(XG_Control_t *ctr){
    
}


//static function
XG_Window_t * XG_WindowGetActiveWindow(){

}


XG_Widget_t * XG_WindowGetActiveWidget(){

}