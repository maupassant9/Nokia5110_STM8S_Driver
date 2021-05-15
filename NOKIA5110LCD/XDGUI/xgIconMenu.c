/*
* XG_IconMenu.c 
* Author: Dong Xia
* Icon typed menu for lcd
*
* Change Records:
*      >> (11/05/2021): created
*
*/

/********************************************
* Include 
********************************************/
#include "stm8s.h"
#include "xgiconmenu.h"



/********************************************
* Internal Function Declaration 
********************************************/
typedef enum{
	EVT_1,
	EVT_2

}evt_t;

typedef struct{
	XG_IconMenuItem_t * icon_items;
	uint8_t itemSz;
	//place to save the events
	evt_t evt_reg[MENU_EVT_REG_SZ];
	uint8_t rsvdEventSz;

	//accepted events and corresponging reaction function
	evt_t registered_evts[MENU_EVT_NO];
	void (* evt_func[MENU_EVT_NO])(evt_t event);
	uint8_t eventSz;
	
	//current item showed on panel
	uint8_t currItemId;
	
}XG_IconMenu_t;


/********************************************
* Internal Types and Variables 
********************************************/
 
/********************************************
* External Variables 
********************************************/


/********************************************
* Functions 
********************************************/
int8_t XG_IconMenuInit(void){
	
	
}

/*------------------------------------------------ 
* XG_IconMenuAddItem; 
* Add an menu item into a menu
* Paras:
*  >> XG_IconMenu_t *: Icon typed menu 
*  >> XG_IconMenuItem_t * : a icon typed menu item 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_IconMenuAddItem(
		XG_IconMenu_t * menu
		XG_IconMenuItem_t * item){
		
	static uint8_t id = 0;
	if(id >= menu->itemSz) return -1;
	
	memcopy(menu->icon_items, item, sizeof(XG_IconMenuItem_t));
	
}

/*------------------------------------------------ 
* XG_IconMenuNextItem
* Move to the next item. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_IconMenuNextItem(
		XG_IconMenu_t * menu){
	
	//move currentItemId to next item
	menu->currentItemId++;
	if(menu->currentItemId >= menu->itemSz){
		menu->currentItemId = 0;
	}
	//show the itme
	menu->icon_items[menu->currentItemId]->show(0,0);
}


/*------------------------------------------------ 
* XG_IconMenuPrevItem 
* Move to previous menu item
* Paras:
*  >> XG_IconMenu_t *: Icon Menu 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_IconMenuPrevItem(
		XG_IconMenu_t * menu){
	
	//move currentItemId to previous item
	if(menu->currentItemId == 0){
		menu->currentItemId = menu->currentItemId - 1;
	} else 
		menu->currentItemId--;

	//show the itme
	menu->icon_items[menu->currentItemId]->show(0,0);
}


/*------------------------------------------------ 
* XG_IconMenuAttachEvent 
* Attach an event to menu
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_IconMenuAttachEvent(
	XG_IconMenu_t * menu,
	evt_t evt,
	void (*action)(void))
{

	menu->eventSz++;
	if(menu->eventSz > MENU_EVT_NO){
		menu->eventSz = MENU_EVT_NO;
		return -1;
	}

	menu->registered_evts[menu->eventSz - 1] = evt;
	menu->evt_func[menu->eventSz - 1] = action;
}


/*------------------------------------------------ 
* XG_IconMenuRun
* Run the icon menu
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
void XG_IconMenuRun(XG_IconMenu_t * menu){
	uint8_t i; evt_t evt;
	//clear all the event received before the 
	//icon menu actually executed
	menu->rsvdEventSz = 0;
	//show the first menu item
	menu->icon_items[menu->currItemId].show();

	while(1){
		//wait for some event
		if(menu->rsvdEventSz != 0){
			while(menu->rsvdEventSz--){
				(*XG_IconMenuGetEventAction(menu->evt_reg[menu->rsvdEventSz]))();
			}
		}
	}

	//check if should be stoped
}


/*------------------------------------------------ 
* XG_IconMenuGetEventAction 
* Descriptions here. 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> 
* Change Records: 
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
(void (*action)(void)) XG_IconMenuGetEventAction(
	XG_IconMenu_t * menu, 
	evt_t evt){
	uint8_t i;
	//search for event
	for (i = 0; i < MENU_EVT_NO; i++){
		if(menu->registered_evts[i] == evt) break;
	}

	if(i == MENU_EVT_NO) return NULL;
	return menu->evt_func[i];
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
*  >> (11/05/2021): Create the function 
*----------------------------------------------*/
void XG_IconMenuExit(XG_IconMenu_t * menu){

}
