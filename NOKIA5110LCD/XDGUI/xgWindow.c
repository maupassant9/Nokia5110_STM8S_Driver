/*
* xgWindow.c
* Author: Dong Xia
* Window is defined as the root container for 
* all the other containers and widgets.
* Only 1 windows per time can be showed on screen
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
    XG_CtrInit(&(window->ctr),
        CTR_TYPE_WINDOW,
        XG_WindowShow,
        XG_WindowOnEvt);
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
int8_t XG_WindowSetActive(XG_Window_t * win){
    int i;
    //check if this window exits in registerd window
    for(i = 0; i < XG_WINDOWS_NO; i++){
        if(windows[i] == win){
            activeWindow = win;
            return 0;
        }
    }
    return -1;
}


/*------------------------------------------------ 
* XG_WindowAddWidget
* Add a control on window, the control type can only 
* be a container in this case, the widget can not be 
* add to the window.
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (15/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_WindowAddCtr(XG_Window_t * win,
    XG_Control_t *ctr,
    XG_Pos_t *pos){
    if(ctr->type != XG_CTR_TYPE_CONTAINER) return -1;
    if(((pos->x + ctr->size.x) > XG_WINDOW_MAX_WIDTH)&&
        ((pos->y + ctr->size.y) > XG_WINDOW_MAX_HEIGHT)){
        return -1;
    }
    memcopy(pos, &(ctr->pos)); 
    XG_CtrAddChild(&(win->ctr), ctr);
    return 0;
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



/*------------------------------------------------ 
* FuncName(); 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (16/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowOnEvt(void){

}


/*------------------------------------------------ 
* XG_WindowShow 
* Scan all the possible container and widgets, and 
* call corresonding show function of the container
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (16/05/2021): Create the function 
*----------------------------------------------*/
void XG_WindowShow(XG_Window_t *win){
    XG_Control_t *nxt = win->ctr.child;

    //get all the container and call the 
    //show of container 
    while(nxt != NULL){
        *(nxt->show)(nxt);
    }
}