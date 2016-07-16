/*******************************************************************************
* File Name: Scope0_Comp_Vref.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_Scope0_Comp_Vref_H) /* Pins Scope0_Comp_Vref_H */
#define CY_PINS_Scope0_Comp_Vref_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Scope0_Comp_Vref_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Scope0_Comp_Vref__PORT == 15 && ((Scope0_Comp_Vref__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Scope0_Comp_Vref_Write(uint8 value);
void    Scope0_Comp_Vref_SetDriveMode(uint8 mode);
uint8   Scope0_Comp_Vref_ReadDataReg(void);
uint8   Scope0_Comp_Vref_Read(void);
void    Scope0_Comp_Vref_SetInterruptMode(uint16 position, uint16 mode);
uint8   Scope0_Comp_Vref_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Scope0_Comp_Vref_SetDriveMode() function.
     *  @{
     */
        #define Scope0_Comp_Vref_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Scope0_Comp_Vref_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Scope0_Comp_Vref_DM_RES_UP          PIN_DM_RES_UP
        #define Scope0_Comp_Vref_DM_RES_DWN         PIN_DM_RES_DWN
        #define Scope0_Comp_Vref_DM_OD_LO           PIN_DM_OD_LO
        #define Scope0_Comp_Vref_DM_OD_HI           PIN_DM_OD_HI
        #define Scope0_Comp_Vref_DM_STRONG          PIN_DM_STRONG
        #define Scope0_Comp_Vref_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Scope0_Comp_Vref_MASK               Scope0_Comp_Vref__MASK
#define Scope0_Comp_Vref_SHIFT              Scope0_Comp_Vref__SHIFT
#define Scope0_Comp_Vref_WIDTH              1u

/* Interrupt constants */
#if defined(Scope0_Comp_Vref__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Scope0_Comp_Vref_SetInterruptMode() function.
     *  @{
     */
        #define Scope0_Comp_Vref_INTR_NONE      (uint16)(0x0000u)
        #define Scope0_Comp_Vref_INTR_RISING    (uint16)(0x0001u)
        #define Scope0_Comp_Vref_INTR_FALLING   (uint16)(0x0002u)
        #define Scope0_Comp_Vref_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Scope0_Comp_Vref_INTR_MASK      (0x01u) 
#endif /* (Scope0_Comp_Vref__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Scope0_Comp_Vref_PS                     (* (reg8 *) Scope0_Comp_Vref__PS)
/* Data Register */
#define Scope0_Comp_Vref_DR                     (* (reg8 *) Scope0_Comp_Vref__DR)
/* Port Number */
#define Scope0_Comp_Vref_PRT_NUM                (* (reg8 *) Scope0_Comp_Vref__PRT) 
/* Connect to Analog Globals */                                                  
#define Scope0_Comp_Vref_AG                     (* (reg8 *) Scope0_Comp_Vref__AG)                       
/* Analog MUX bux enable */
#define Scope0_Comp_Vref_AMUX                   (* (reg8 *) Scope0_Comp_Vref__AMUX) 
/* Bidirectional Enable */                                                        
#define Scope0_Comp_Vref_BIE                    (* (reg8 *) Scope0_Comp_Vref__BIE)
/* Bit-mask for Aliased Register Access */
#define Scope0_Comp_Vref_BIT_MASK               (* (reg8 *) Scope0_Comp_Vref__BIT_MASK)
/* Bypass Enable */
#define Scope0_Comp_Vref_BYP                    (* (reg8 *) Scope0_Comp_Vref__BYP)
/* Port wide control signals */                                                   
#define Scope0_Comp_Vref_CTL                    (* (reg8 *) Scope0_Comp_Vref__CTL)
/* Drive Modes */
#define Scope0_Comp_Vref_DM0                    (* (reg8 *) Scope0_Comp_Vref__DM0) 
#define Scope0_Comp_Vref_DM1                    (* (reg8 *) Scope0_Comp_Vref__DM1)
#define Scope0_Comp_Vref_DM2                    (* (reg8 *) Scope0_Comp_Vref__DM2) 
/* Input Buffer Disable Override */
#define Scope0_Comp_Vref_INP_DIS                (* (reg8 *) Scope0_Comp_Vref__INP_DIS)
/* LCD Common or Segment Drive */
#define Scope0_Comp_Vref_LCD_COM_SEG            (* (reg8 *) Scope0_Comp_Vref__LCD_COM_SEG)
/* Enable Segment LCD */
#define Scope0_Comp_Vref_LCD_EN                 (* (reg8 *) Scope0_Comp_Vref__LCD_EN)
/* Slew Rate Control */
#define Scope0_Comp_Vref_SLW                    (* (reg8 *) Scope0_Comp_Vref__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Scope0_Comp_Vref_PRTDSI__CAPS_SEL       (* (reg8 *) Scope0_Comp_Vref__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Scope0_Comp_Vref_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Scope0_Comp_Vref__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Scope0_Comp_Vref_PRTDSI__OE_SEL0        (* (reg8 *) Scope0_Comp_Vref__PRTDSI__OE_SEL0) 
#define Scope0_Comp_Vref_PRTDSI__OE_SEL1        (* (reg8 *) Scope0_Comp_Vref__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Scope0_Comp_Vref_PRTDSI__OUT_SEL0       (* (reg8 *) Scope0_Comp_Vref__PRTDSI__OUT_SEL0) 
#define Scope0_Comp_Vref_PRTDSI__OUT_SEL1       (* (reg8 *) Scope0_Comp_Vref__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Scope0_Comp_Vref_PRTDSI__SYNC_OUT       (* (reg8 *) Scope0_Comp_Vref__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Scope0_Comp_Vref__SIO_CFG)
    #define Scope0_Comp_Vref_SIO_HYST_EN        (* (reg8 *) Scope0_Comp_Vref__SIO_HYST_EN)
    #define Scope0_Comp_Vref_SIO_REG_HIFREQ     (* (reg8 *) Scope0_Comp_Vref__SIO_REG_HIFREQ)
    #define Scope0_Comp_Vref_SIO_CFG            (* (reg8 *) Scope0_Comp_Vref__SIO_CFG)
    #define Scope0_Comp_Vref_SIO_DIFF           (* (reg8 *) Scope0_Comp_Vref__SIO_DIFF)
#endif /* (Scope0_Comp_Vref__SIO_CFG) */

/* Interrupt Registers */
#if defined(Scope0_Comp_Vref__INTSTAT)
    #define Scope0_Comp_Vref_INTSTAT            (* (reg8 *) Scope0_Comp_Vref__INTSTAT)
    #define Scope0_Comp_Vref_SNAP               (* (reg8 *) Scope0_Comp_Vref__SNAP)
    
	#define Scope0_Comp_Vref_0_INTTYPE_REG 		(* (reg8 *) Scope0_Comp_Vref__0__INTTYPE)
#endif /* (Scope0_Comp_Vref__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Scope0_Comp_Vref_H */


/* [] END OF FILE */
