/*******************************************************************************
* File Name: FNG_OUT_23.h  
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

#if !defined(CY_PINS_FNG_OUT_23_H) /* Pins FNG_OUT_23_H */
#define CY_PINS_FNG_OUT_23_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "FNG_OUT_23_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 FNG_OUT_23__PORT == 15 && ((FNG_OUT_23__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    FNG_OUT_23_Write(uint8 value);
void    FNG_OUT_23_SetDriveMode(uint8 mode);
uint8   FNG_OUT_23_ReadDataReg(void);
uint8   FNG_OUT_23_Read(void);
void    FNG_OUT_23_SetInterruptMode(uint16 position, uint16 mode);
uint8   FNG_OUT_23_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the FNG_OUT_23_SetDriveMode() function.
     *  @{
     */
        #define FNG_OUT_23_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define FNG_OUT_23_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define FNG_OUT_23_DM_RES_UP          PIN_DM_RES_UP
        #define FNG_OUT_23_DM_RES_DWN         PIN_DM_RES_DWN
        #define FNG_OUT_23_DM_OD_LO           PIN_DM_OD_LO
        #define FNG_OUT_23_DM_OD_HI           PIN_DM_OD_HI
        #define FNG_OUT_23_DM_STRONG          PIN_DM_STRONG
        #define FNG_OUT_23_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define FNG_OUT_23_MASK               FNG_OUT_23__MASK
#define FNG_OUT_23_SHIFT              FNG_OUT_23__SHIFT
#define FNG_OUT_23_WIDTH              1u

/* Interrupt constants */
#if defined(FNG_OUT_23__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in FNG_OUT_23_SetInterruptMode() function.
     *  @{
     */
        #define FNG_OUT_23_INTR_NONE      (uint16)(0x0000u)
        #define FNG_OUT_23_INTR_RISING    (uint16)(0x0001u)
        #define FNG_OUT_23_INTR_FALLING   (uint16)(0x0002u)
        #define FNG_OUT_23_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define FNG_OUT_23_INTR_MASK      (0x01u) 
#endif /* (FNG_OUT_23__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define FNG_OUT_23_PS                     (* (reg8 *) FNG_OUT_23__PS)
/* Data Register */
#define FNG_OUT_23_DR                     (* (reg8 *) FNG_OUT_23__DR)
/* Port Number */
#define FNG_OUT_23_PRT_NUM                (* (reg8 *) FNG_OUT_23__PRT) 
/* Connect to Analog Globals */                                                  
#define FNG_OUT_23_AG                     (* (reg8 *) FNG_OUT_23__AG)                       
/* Analog MUX bux enable */
#define FNG_OUT_23_AMUX                   (* (reg8 *) FNG_OUT_23__AMUX) 
/* Bidirectional Enable */                                                        
#define FNG_OUT_23_BIE                    (* (reg8 *) FNG_OUT_23__BIE)
/* Bit-mask for Aliased Register Access */
#define FNG_OUT_23_BIT_MASK               (* (reg8 *) FNG_OUT_23__BIT_MASK)
/* Bypass Enable */
#define FNG_OUT_23_BYP                    (* (reg8 *) FNG_OUT_23__BYP)
/* Port wide control signals */                                                   
#define FNG_OUT_23_CTL                    (* (reg8 *) FNG_OUT_23__CTL)
/* Drive Modes */
#define FNG_OUT_23_DM0                    (* (reg8 *) FNG_OUT_23__DM0) 
#define FNG_OUT_23_DM1                    (* (reg8 *) FNG_OUT_23__DM1)
#define FNG_OUT_23_DM2                    (* (reg8 *) FNG_OUT_23__DM2) 
/* Input Buffer Disable Override */
#define FNG_OUT_23_INP_DIS                (* (reg8 *) FNG_OUT_23__INP_DIS)
/* LCD Common or Segment Drive */
#define FNG_OUT_23_LCD_COM_SEG            (* (reg8 *) FNG_OUT_23__LCD_COM_SEG)
/* Enable Segment LCD */
#define FNG_OUT_23_LCD_EN                 (* (reg8 *) FNG_OUT_23__LCD_EN)
/* Slew Rate Control */
#define FNG_OUT_23_SLW                    (* (reg8 *) FNG_OUT_23__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define FNG_OUT_23_PRTDSI__CAPS_SEL       (* (reg8 *) FNG_OUT_23__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define FNG_OUT_23_PRTDSI__DBL_SYNC_IN    (* (reg8 *) FNG_OUT_23__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define FNG_OUT_23_PRTDSI__OE_SEL0        (* (reg8 *) FNG_OUT_23__PRTDSI__OE_SEL0) 
#define FNG_OUT_23_PRTDSI__OE_SEL1        (* (reg8 *) FNG_OUT_23__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define FNG_OUT_23_PRTDSI__OUT_SEL0       (* (reg8 *) FNG_OUT_23__PRTDSI__OUT_SEL0) 
#define FNG_OUT_23_PRTDSI__OUT_SEL1       (* (reg8 *) FNG_OUT_23__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define FNG_OUT_23_PRTDSI__SYNC_OUT       (* (reg8 *) FNG_OUT_23__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(FNG_OUT_23__SIO_CFG)
    #define FNG_OUT_23_SIO_HYST_EN        (* (reg8 *) FNG_OUT_23__SIO_HYST_EN)
    #define FNG_OUT_23_SIO_REG_HIFREQ     (* (reg8 *) FNG_OUT_23__SIO_REG_HIFREQ)
    #define FNG_OUT_23_SIO_CFG            (* (reg8 *) FNG_OUT_23__SIO_CFG)
    #define FNG_OUT_23_SIO_DIFF           (* (reg8 *) FNG_OUT_23__SIO_DIFF)
#endif /* (FNG_OUT_23__SIO_CFG) */

/* Interrupt Registers */
#if defined(FNG_OUT_23__INTSTAT)
    #define FNG_OUT_23_INTSTAT            (* (reg8 *) FNG_OUT_23__INTSTAT)
    #define FNG_OUT_23_SNAP               (* (reg8 *) FNG_OUT_23__SNAP)
    
	#define FNG_OUT_23_0_INTTYPE_REG 		(* (reg8 *) FNG_OUT_23__0__INTTYPE)
#endif /* (FNG_OUT_23__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_FNG_OUT_23_H */


/* [] END OF FILE */
