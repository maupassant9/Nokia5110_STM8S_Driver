/*
* xg.c
* Author: Dong Xia
* Comman functions used for xgui
*
* Change Records:
*      >> (13/05/2021): 
*
*/

/********************************************
* Include 
********************************************/
#include <stm8s.h>



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
* XG_GetStringSz
* Check the string length:
* Count until the '\0' is encountered. 
* If the string passed to this function doesn't has
* '\0', the function will return -1; the largest 
* length permitted is 128.
* Paras:
*  >> char * : sting 
*  >> : 
* Return: 
*  >> int8_t: the length of the string
* Change Records: 
*  >> (13/05/2021): Create the function 
*----------------------------------------------*/
int8_t XG_GetStringSz(char *str){
    uint8_t cnt = 0;
    while(*str++){
        cnt++;
        if(cnt > 0x7f) return -1;
    }
    return cnt;
}


/*------------------------------------------------ 
* XG_GetStandardFont
* Get the starndard font defined by XGGUI 
* Paras:
*  >> : 
*  >> : 
* Return: 
*  >> font_t * : font 
* Change Records: 
*  >> (13/05/2021): Create the function 
*----------------------------------------------*/
font_t * XG_GetStandardFont(){

}