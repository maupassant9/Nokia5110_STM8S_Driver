/*
* xgIconMenuItem.c
* Author: Dong Xia
* Icon type Menu Item source code
*
* Change Records:
*      >> (11/05/2021): created
*
*/

/********************************************
* Include 
********************************************/
#include "stm8s.h"
#include  "xgIconMenuItem.h"
#include "lcd_draw.h"

/********************************************
* Internal Function Declaration 
********************************************/

/********************************************
* Internal Types and Variables 
********************************************/
typedef struct {
	void (*func)(void *);
	void * para;
	uint8_t para_sz;	
}func_t;

enum evt_id_t {
	EVT_EXIT = -1,
	EVT_CONFIRM = 0,
	EVT_LEFT,
	EVT_RIGHT,
	EVT_UP,
	EVT_DOWN	
};


typedef struct{
	uint8_t * icon;
	//sz[0] = width and sz[1] = height
	uint16_t sz[2];
	//when evt confirm happened
	func_t callback;
	//display function: (x,y) is the start point
	void (*show)(uint16_t x, uint16_t y);
	evt_t event;
} XG_IconMenuItem_t;
/********************************************
* External Variables 
********************************************/
/********************************************
* Functions 
********************************************/
void XG_IconMenuItemInit(
			XG_IconMenuItem_t * pitem,
			uint8_t *pic,
			void (*hook)(void),
			void * parameters,
			uint8_t parameter_sz,
			{
	//check the pic
	if(pic == NULL) return;
	
	pitem->icon = pic;
	pitem->sz[0] = ICON_WIDTH;
	pitem->sz[1] = ICON_HEIGHT;
	pitem->callback.func = hook;
	pitem->callback.para = parameters;
	pitem->callback.para_sz = parameter_sz;
}


