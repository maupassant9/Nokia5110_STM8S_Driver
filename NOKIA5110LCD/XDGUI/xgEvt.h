
/* 
* FileName: 
* Author: Dong Xia 
* This is head file of 
* 
* Change Records: 
*      >> (14/05/2021): Creation of file 
* 
*/

#ifndef  _XG_EVT_H_
#define _XG_EVT_H_
/********************************************
* Include 
********************************************/
#include "xg.h"

/********************************************
* Macro 
********************************************/
#define MAX_EVENT_NO 4


/********************************************
* Type definition 
********************************************/
//the event id start from 0 to other positive 
//number, do not use any negative number here
enum XG_EvtId_t {
    XG_EVT_NULL = -1,
    XG_EVT_BUTTON1_PRESSED = 0,
    XG_EVT_BUTTON2_PRESSED,
};

//Event types influence the behavior of an event:
// Global event: Broadcasting to all the widgets of an 
// active window, always non maskable.
// Local Maskable event: The event will only passes to
// the active widget, the user can choose to mask or 
// not this event temperorily for that widget
// Local non-maskable event: The same as local maskable
// event, only that the user can not mask this event
enum XG_EvtType_t{
    XG_EVT_TYPE_GLOBAL = 0,
    XG_EVT_TYPE_LOCAL_MASKABLE,
    XG_EVT_TYPE_LOCAL_NONMASKABLE
};

typedef struct {
    enum XG_EvtId_t id;
    //event flag: if the event is 
    //not processed, then 
    enum XG_EvtType_t type;
} XG_Evt_t;


typedef void(*handle)(XG_Evt_t * evt) XG_EvtHandleFunc_t;
typedef bool XG_EvtMask_t;

typedef struct{
    
    XG_EvtHandleFunc_t handleArray[MAX_EVENT_NO];
    XG_EvtMask_t maskArray[MAX_EVENT_NO];
}XG_EvtHandles_t;

/********************************************
* Function prototype 
********************************************/

#endif

