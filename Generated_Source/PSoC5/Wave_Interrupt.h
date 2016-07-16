/*******************************************************************************
* File Name: Wave_Interrupt.h
* Version 1.70
*
*  Description:
*   Provides the function definitions for the Interrupt Controller.
*
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/
#if !defined(CY_ISR_Wave_Interrupt_H)
#define CY_ISR_Wave_Interrupt_H


#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void Wave_Interrupt_Start(void);
void Wave_Interrupt_StartEx(cyisraddress address);
void Wave_Interrupt_Stop(void);

CY_ISR_PROTO(Wave_Interrupt_Interrupt);

void Wave_Interrupt_SetVector(cyisraddress address);
cyisraddress Wave_Interrupt_GetVector(void);

void Wave_Interrupt_SetPriority(uint8 priority);
uint8 Wave_Interrupt_GetPriority(void);

void Wave_Interrupt_Enable(void);
uint8 Wave_Interrupt_GetState(void);
void Wave_Interrupt_Disable(void);

void Wave_Interrupt_SetPending(void);
void Wave_Interrupt_ClearPending(void);


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the Wave_Interrupt ISR. */
#define Wave_Interrupt_INTC_VECTOR            ((reg32 *) Wave_Interrupt__INTC_VECT)

/* Address of the Wave_Interrupt ISR priority. */
#define Wave_Interrupt_INTC_PRIOR             ((reg8 *) Wave_Interrupt__INTC_PRIOR_REG)

/* Priority of the Wave_Interrupt interrupt. */
#define Wave_Interrupt_INTC_PRIOR_NUMBER      Wave_Interrupt__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable Wave_Interrupt interrupt. */
#define Wave_Interrupt_INTC_SET_EN            ((reg32 *) Wave_Interrupt__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the Wave_Interrupt interrupt. */
#define Wave_Interrupt_INTC_CLR_EN            ((reg32 *) Wave_Interrupt__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the Wave_Interrupt interrupt state to pending. */
#define Wave_Interrupt_INTC_SET_PD            ((reg32 *) Wave_Interrupt__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the Wave_Interrupt interrupt. */
#define Wave_Interrupt_INTC_CLR_PD            ((reg32 *) Wave_Interrupt__INTC_CLR_PD_REG)


#endif /* CY_ISR_Wave_Interrupt_H */


/* [] END OF FILE */
