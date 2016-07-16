/*******************************************************************************
* File Name: SPIS_CLK.h
* Version 2.20
*
*  Description:
*   Provides the function and constant definitions for the clock component.
*
*  Note:
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_CLOCK_SPIS_CLK_H)
#define CY_CLOCK_SPIS_CLK_H

#include <cytypes.h>
#include <cyfitter.h>


/***************************************
* Conditional Compilation Parameters
***************************************/

/* Check to see if required defines such as CY_PSOC5LP are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5LP)
    #error Component cy_clock_v2_20 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5LP) */


/***************************************
*        Function Prototypes
***************************************/

void SPIS_CLK_Start(void) ;
void SPIS_CLK_Stop(void) ;

#if(CY_PSOC3 || CY_PSOC5LP)
void SPIS_CLK_StopBlock(void) ;
#endif /* (CY_PSOC3 || CY_PSOC5LP) */

void SPIS_CLK_StandbyPower(uint8 state) ;
void SPIS_CLK_SetDividerRegister(uint16 clkDivider, uint8 restart) 
                                ;
uint16 SPIS_CLK_GetDividerRegister(void) ;
void SPIS_CLK_SetModeRegister(uint8 modeBitMask) ;
void SPIS_CLK_ClearModeRegister(uint8 modeBitMask) ;
uint8 SPIS_CLK_GetModeRegister(void) ;
void SPIS_CLK_SetSourceRegister(uint8 clkSource) ;
uint8 SPIS_CLK_GetSourceRegister(void) ;
#if defined(SPIS_CLK__CFG3)
void SPIS_CLK_SetPhaseRegister(uint8 clkPhase) ;
uint8 SPIS_CLK_GetPhaseRegister(void) ;
#endif /* defined(SPIS_CLK__CFG3) */

#define SPIS_CLK_Enable()                       SPIS_CLK_Start()
#define SPIS_CLK_Disable()                      SPIS_CLK_Stop()
#define SPIS_CLK_SetDivider(clkDivider)         SPIS_CLK_SetDividerRegister(clkDivider, 1u)
#define SPIS_CLK_SetDividerValue(clkDivider)    SPIS_CLK_SetDividerRegister((clkDivider) - 1u, 1u)
#define SPIS_CLK_SetMode(clkMode)               SPIS_CLK_SetModeRegister(clkMode)
#define SPIS_CLK_SetSource(clkSource)           SPIS_CLK_SetSourceRegister(clkSource)
#if defined(SPIS_CLK__CFG3)
#define SPIS_CLK_SetPhase(clkPhase)             SPIS_CLK_SetPhaseRegister(clkPhase)
#define SPIS_CLK_SetPhaseValue(clkPhase)        SPIS_CLK_SetPhaseRegister((clkPhase) + 1u)
#endif /* defined(SPIS_CLK__CFG3) */


/***************************************
*             Registers
***************************************/

/* Register to enable or disable the clock */
#define SPIS_CLK_CLKEN              (* (reg8 *) SPIS_CLK__PM_ACT_CFG)
#define SPIS_CLK_CLKEN_PTR          ((reg8 *) SPIS_CLK__PM_ACT_CFG)

/* Register to enable or disable the clock */
#define SPIS_CLK_CLKSTBY            (* (reg8 *) SPIS_CLK__PM_STBY_CFG)
#define SPIS_CLK_CLKSTBY_PTR        ((reg8 *) SPIS_CLK__PM_STBY_CFG)

/* Clock LSB divider configuration register. */
#define SPIS_CLK_DIV_LSB            (* (reg8 *) SPIS_CLK__CFG0)
#define SPIS_CLK_DIV_LSB_PTR        ((reg8 *) SPIS_CLK__CFG0)
#define SPIS_CLK_DIV_PTR            ((reg16 *) SPIS_CLK__CFG0)

/* Clock MSB divider configuration register. */
#define SPIS_CLK_DIV_MSB            (* (reg8 *) SPIS_CLK__CFG1)
#define SPIS_CLK_DIV_MSB_PTR        ((reg8 *) SPIS_CLK__CFG1)

/* Mode and source configuration register */
#define SPIS_CLK_MOD_SRC            (* (reg8 *) SPIS_CLK__CFG2)
#define SPIS_CLK_MOD_SRC_PTR        ((reg8 *) SPIS_CLK__CFG2)

#if defined(SPIS_CLK__CFG3)
/* Analog clock phase configuration register */
#define SPIS_CLK_PHASE              (* (reg8 *) SPIS_CLK__CFG3)
#define SPIS_CLK_PHASE_PTR          ((reg8 *) SPIS_CLK__CFG3)
#endif /* defined(SPIS_CLK__CFG3) */


/**************************************
*       Register Constants
**************************************/

/* Power manager register masks */
#define SPIS_CLK_CLKEN_MASK         SPIS_CLK__PM_ACT_MSK
#define SPIS_CLK_CLKSTBY_MASK       SPIS_CLK__PM_STBY_MSK

/* CFG2 field masks */
#define SPIS_CLK_SRC_SEL_MSK        SPIS_CLK__CFG2_SRC_SEL_MASK
#define SPIS_CLK_MODE_MASK          (~(SPIS_CLK_SRC_SEL_MSK))

#if defined(SPIS_CLK__CFG3)
/* CFG3 phase mask */
#define SPIS_CLK_PHASE_MASK         SPIS_CLK__CFG3_PHASE_DLY_MASK
#endif /* defined(SPIS_CLK__CFG3) */

#endif /* CY_CLOCK_SPIS_CLK_H */


/* [] END OF FILE */
