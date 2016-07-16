/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#ifndef Serial_H
#define Serial_H

#define USBUART_BUFFER_SIZE 64
#define USBFS_DEVICE    (0u)

void Serial_PutString(char *str);
void Serial_GetString(char *str);

#endif /* Serial_H */

/* [] END OF FILE */
