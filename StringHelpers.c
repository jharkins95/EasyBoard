/* ========================================
 *
 * Copyright 2016 John Harkins and Li He
 * All Rights Reserved
 *
 * ========================================
*/

#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "StringHelpers.h"


/*******************************************************************************
* Function Name: TrimString
********************************************************************************
*
* Summary
*  Removes leading and trailing whitespace from a string str
*
* Parameters:
*  str - the string to be trimmed
*
* Return:
*  None.
*
*******************************************************************************/
void TrimString(char *str)
{
    int i;
    
    // trim leading whitespace
    for (i = 0; str[i] != '\0'; i++) {
        if (!isspace(str[i])) {
            break;
        }
    }
    
    // copy string w/o leading whitespace
    // (don't read beyond the end of the input buffer)
    memmove(str, str + i, strlen(str) + 1 - i);
    
    // trim trailing whitespace
    i = strlen(str) - 1; // index of last character
    
    // Edge case: string is empty
    if (i == -1) {
        str[0] = '\0';
        return;
    }
    
    do {
        if (!isspace(str[i])) {
            break;
        }
        i--;
    } while (i >= 0);
    
    str[i + 1] = '\0';
}

/* [] END OF FILE */
