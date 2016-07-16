/*******************************************************************************
* File Name: FNG_OUT_22.h  
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

#if !defined(CY_PINS_FNG_OUT_22_H) /* Pins FNG_OUT_22_H */
#define CY_PINS_FNG_OUT_22_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "FNG_OUT_22_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 FNG_OUT_22__PORT == 15 && ((FNG_OUT_22__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    FNG_OUT_22_Write(uint8 value);
void    FNG_OUT_22_SetDriveMode(uint8 mode);
uint8   FNG_OUT_22_ReadDataReg(void);
uint8   FNG_OUT_22_Read(void);
void    FNG_OUT_22_SetInterruptMode(uint16 position, uint16 mode);
uint8   FNG_OUT_22_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the FNG_OUT_22_SetDriveMode() function.
     *  @{
     */
        #define FNG_OUT_22_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define FNG_OUT_22_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define FNG_OUT_22_DM_RES_UP          PIN_DM_RES_UP
        #define FNG_OUT_22_DM_RES_DWN         PIN_DM_RES_DWN
        #define FNG_OUT_22_DM_OD_LO           PIN_DM_OD_LO
        #define FNG_OUT_22_DM_OD_HI           PIN_DM_OD_HI
        #define FNG_OUT_22_DM_STRONG          PIN_DM_STRONG
        #define FNG_OUT_22_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define FNG_OUT_22_MASK               FNG_OUT_22__MASK
#define FNG_OUT_22_SHIFT              FNG_OUT_22__SHIFT
#define FNG_OUT_22_WIDTH              1u

/* Interrupt constants */
#if defined(FNG_OUT_22__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in FNG_OUT_22_SetInterruptMode() function.
     *  @{
     */
        #define FNG_OUT_22_INTR_NONE      (uint16)(0x0000u)
        #define FNG_OUT_22_INTR_RISING    (uint16)(0x0001u)
        #define FNG_OUT_22_INTR_FALLING   (uint16)(0x0002u)
        #define FNG_OUT_22_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define FNG_OUT_22_INTR_MASK      (0x01u) 
#endif /* (FNG_OUT_22__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define FNG_OUT_22_PS                     (* (reg8 *) FNG_OUT_22__PS)
/* Data Register */
#define FNG_OUT_22_DR                     (* (reg8 *) FNG_OUT_22__DR)
/* Port Number */
#define FNG_OUT_22_PRT_NUM                (* (reg8 *) FNG_OUT_22__PRT) 
/* Connect to Analog Globals */                                                  
#define FNG_OUT_22_AG                     (* (reg8 *) FNG_OUT_22__AG)                       
/* Analog MUX bux enable */
#define FNG_OUT_22_AMUX                   (* (reg8 *) FNG_OUT_22__AMUX) 
/* Bidirectional Enable */                                                        
#define FNG_OUT_22_BIE                    (* (reg8 *) FNG_OUT_22__BIE)
/* Bit-mask for Aliased Register Access */
#define FNG_OUT_22_BIT_MASK               (* (reg8 *) FNG_OUT_22__BIT_MASK)
/* Bypass Enable */
#define FNG_OUT_22_BYP                    (* (reg8 *) FNG_OUT_22__BYP)
/* Port wide control signals */                                                   
#define FNG_OUT_22_CTL                    (* (reg8 *) FNG_OUT_22__CTL)
/* Drive Modes */
#define FNG_OUT_22_DM0                    (* (reg8 *) FNG_OUT_22__DM0) 
#define FNG_OUT_22_DM1                    (* (reg8 *) FNG_OUT_22__DM1)
#define FNG_OUT_22_DM2                    (* (reg8 *) FNG_OUT_22__DM2) 
/* Input Buffer Disable Override */
#define FNG_OUT_22_INP_DIS                (* (reg8 *) FNG_OUT_22__INP_DIS)
/* LCD Common or Segment Drive */
#define FNG_OUT_22_LCD_COM_SEG            (* (reg8 *) FNG_OUT_22__LCD_COM_SEG)
/* Enable Segment LCD */
#define FNG_OUT_22_LCD_EN                 (* (reg8 *) FNG_OUT_22__LCD_EN)
/* Slew Rate Control */
#define FNG_OUT_22_SLW                    (* (reg8 *) FNG_OUT_22__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define FNG_OUT_22_PRTDSI__CAPS_SEL       (* (reg8 *) FNG_OUT_22__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define FNG_OUT_22_PRTDSI__DBL_SYNC_IN    (* (reg8 *) FNG_OUT_22__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define FNG_OUT_22_PRTDSI__OE_SEL0        (* (reg8 *) FNG_OUT_22__PRTDSI__OE_SEL0) 
#define FNG_OUT_22_PRTDSI__OE_SEL1        (* (reg8 *) FNG_OUT_22__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define FNG_OUT_22_PRTDSI__OUT_SEL0       (* (reg8 *) FNG_OUT_22__PRTDSI__OUT_SEL0) 
#define FNG_OUT_22_PRTDSI__OUT_SEL1       (* (reg8 *) FNG_OUT_22__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define FNG_OUT_22_PRTDSI__SYNC_OUT       (* (reg8 *) FNG_OUT_22__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(FNG_OUT_22__SIO_CFG)
    #define FNG_OUT_22_SIO_HYST_EN        (* (reg8 *) FNG_OUT_22__SIO_HYST_EN)
    #define FNG_OUT_22_SIO_REG_HIFREQ     (* (reg8 *) FNG_OUT_22__SIO_REG_HIFREQ)
    #define FNG_OUT_22_SIO_CFG            (* (reg8 *) FNG_OUT_22__SIO_CFG)
    #define FNG_OUT_22_SIO_DIFF           (* (reg8 *) FNG_OUT_22__SIO_DIFF)
#endif /* (FNG_OUT_22__SIO_CFG) */

/* Interrupt Registers */
#if defined(FNG_OUT_22__INTSTAT)
    #define FNG_OUT_22_INTSTAT            (* (reg8 *) FNG_OUT_22__INTSTAT)
    #define FNG_OUT_22_SNAP               (* (reg8 *) FNG_OUT_22__SNAP)
    
	#define FNG_OUT_22_0_INTTYPE_REG 		(* (reg8 *) FNG_OUT_22__0__INTTYPE)
#endif /* (FNG_OUT_22__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_FNG_OUT_22_H */


/* [] END OF FILE */
