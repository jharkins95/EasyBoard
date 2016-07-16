/* ========================================
 *
 * Copyright 2016 John Harkins and Li He
 * All Rights Reserved
 *
 * ========================================
*/

#include "serial.h"

extern int USBUART_GetChar();
extern void USBUART_PutString(char *str);
extern int USBUART_DataIsReady();
extern int USBUART_CDCIsReady();
extern int USBUART_GetConfiguration();


/*******************************************************************************
* Function Name: Serial_PutString
********************************************************************************
*
* Summary
*  Sends data from str via USB UART to the host.
*
* Parameters:
*  str - a string to be sent
*
* Return:
*  None.
*
*******************************************************************************/
void Serial_PutString(char *str)
{
    while (!USBUART_CDCIsReady());
    USBUART_PutString(str);
}


/*******************************************************************************
* Function Name: Serial_GetString
********************************************************************************
*
* Summary
*  Reads data from USB UART into str
*
* Parameters:
*  str - the buffer to be read into
*
* Return:
*  None.
*
*******************************************************************************/
void Serial_GetString(char *str)
{
    int count = 0;
    while (1) {
        while (!USBUART_DataIsReady());
        char c = USBUART_GetChar();
        str[count] = c;
        
        if (c == '\r') { // hit newline
            str[count + 1] = '\0'; // add null terminator
            return;
        }
        count++;
    }
}

/* [] END OF FILE */
