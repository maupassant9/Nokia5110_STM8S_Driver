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
#include "xgEvt.h"


/********************************************
* Internal Function Declaration 
********************************************/



/********************************************
* Internal Types and Variables 
********************************************/
static XG_Evt_t evtArray[MAX_EVENT_NO];
/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
********************************************/
/*------------------------------------------------ 
* XG_EvtInit
* Init the event manger 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
void XG_EvtInit(){
    uint8_t i;
    for(i = 0; i < MAX_EVENT_NO; i++){
        evtArray[i] = NULL;
    }
}

/*------------------------------------------------ 
* XG_EvtRegister
* Register an event in the event manger
* Paras:
*  >> XG_Evt_t *evt : an event
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
void XG_EvtRegister(XG_Evt_t *evt){
    int16_t id = evt->id;

    //if it is a valid event
    if((id > 0)&&(id < MAX_EVENT_NO)){
        //if already registered the event
        if(evtArray[id] != NULL) return -1;
        memcopy(&evtArray[id],evt,sizeof(XG_Evt_t));
    } 
}

/*------------------------------------------------ 
* XG_EvtDeRegister
* Deregister an event in the event manger
* Paras:
*  >> XG_Evt_t *evt : an event
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
int8_t XG_EvtDeRegister(XG_Evt_t *evt){
    int16_t id = evt->id;

    //if it is a valid event
    if((id > 0)&&(id < MAX_EVENT_NO)){
        //if already registered the event
        if(evtArray[id] == NULL) return -1;
        evtArray[id] = XG_EVT_NULL;
    } 
}


/*------------------------------------------------ 
* XG_EvtHandlesInit
* Initialize the event handles used for each widget 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
void XG_EvtHandlesInit(XG_EvtHandles_t *handles){
    uint8_t i;
    for(i = 0; i < MAX_EVENT_NO; i++){
        handles->handleArray[i] = NULL;
        handles->maskArray[i] = TRUE;
    }
    
}

/*------------------------------------------------ 
* XG_EvtAddCallBack 
* Add a callback function for a event handles. 
* Paras:
*  >> XG_Evt_t *: corresponding event for the callback
*                 function
*  >> XG_EvtHandleFunc_t: callback function
*  >> XG_EvtHandles *: handles that the callback added to
*
* Return: 
*  >> int8_t : 0 - OK, negative - error
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
int8_t XG_EvtAddCallback(XG_Evt_t *evt, 
    XG_EvtHandleFunc_t func,
    XG_EvtHandles_t * handles){
    int16_t id = evt->id;

    //if it is a valid event
    if((id > 0)&&(id < MAX_EVENT_NO)){
        if(handle->handleArray[id] != NULL) return -1;
        handles->handleArray[id] = func;
        handles->maskArray[id] = FALSE;
        return 0;
    }
    return -1;    
}


/*------------------------------------------------ 
* XG_EvtRmvCallBack 
* Remove a callback function for a event handles. 
* Paras:
*  >> XG_Evt_t *: corresponding event
*  >> XG_EvtHandles *: handles that the callback should remove
*
* Return: 
*  >> int8_t : 0 - OK, negative - error
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
int8_t XG_EvtRmvCallback(XG_Evt_t *evt, 
    XG_EvtHandles_t * handles){
    int16_t id = evt->id;

    //if it is a valid event
    if((id > 0)&&(id < MAX_EVENT_NO)){
        handles->handleArray[id] = NULL;
        handles->maskArray[id] = TRUE;
        return 0;
    }
    return -1;    
}


/*------------------------------------------------ 
* XG_EvtSetMask 
* Set a mask state of the event for event handles
* Paras:
*  >> XG_Evt_t *: corresponding event
*  >> XG_EvtHandles_t *: handles that the callback should remove
*  >> XG_EvtMask_t: mask state
*
* Return: 
*  >> int8_t : 0 - OK, negative - error
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
int8_t XG_EvtSetMask(XG_Evt_t *evt, 
    XG_EvtHandles_t * handles,
    XG_EvtMask_t mask){
    int16_t id = evt->id;

    //if it is a valid event
    if((id > 0)&&(id < MAX_EVENT_NO)){
        if(handles->handleArray[id] == NULL) return -1;
        handles->maskArray[id] = mask;
        return 0;
    }
    return -1;    
}



/*------------------------------------------------ 
* XG_EvtOnEvent
* When an event happens, this function should be 
* called always. 
* Depending on the type of event:
* - if the event is a global event
*   all the widget event handler function in this 
*   active window will be called
* - if the event is local event, and the mask of the 
*   active widget is not masked, then the event handler
*   of this active widget will be called
*
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (29/Dec/2017): Create the function 
*----------------------------------------------*/
void XG_EvtOnEvent(XG_Evt_t *evt){
    XG_Window_t * win = XG_WindowGetActiveWindow();
    XG_Widget_t * wid;
    
    if(evt->type == XG_EVT_TYPE_GLOBAL){

    } else{  //local event
        wid = win->GetActiveWidget();
        if()
    }
}