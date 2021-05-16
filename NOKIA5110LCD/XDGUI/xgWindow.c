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



/*------------------------------------------------ 
* XG_WindowStrInit
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
void XG_WindowStrInit(XG_Window_t * window, 
            bool_t backgroundFill){
    XG_CtrInit(&(window->ctr),CTR_TYPE_WINDOW);
    window->filled = backgroundFill;
}

/*------------------------------------------------ 
* XG_WindowRegisterWindow
* Register a window
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_WindowRegisterWindow(XG_Window_t * win){
    uint8_t i;
    for(i = 0; i < XG_WINDOWS_NO; i++){
        if(windows[i] == NULL) {
            windows[i] = win;
            return 0;
        }
    }
    return -1;    
}


/*------------------------------------------------ 
* XG_WindowSetActive
* Add a control on window
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowSetActive(XG_Window_t * win){
    XG_CtrAddChild(&(win->ctr), ctr);
}


/*------------------------------------------------ 
* XG_WindowAddWidget
* Add a control on window
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowAddCtr(XG_Window_t * win,XG_Control_t *ctr){
    XG_CtrAddChild(&(win->ctr), ctr);
}



//static function
/*------------------------------------------------ 
* XG_WindowGetActiveWindow
* 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
XG_Window_t * XG_WindowGetActiveWindow(){
    return activeWindow;
}

