/*******************************************************************************
* File Name: Wave_DAC.c  
* Version 1.90
*
* Description:
*  This file provides the source code to the API for the 8-bit Voltage DAC 
*  (VDAC8) User Module.
*
* Note:
*  Any unusual or non-standard behavior should be noted here. Other-
*  wise, this section should remain blank.
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "cytypes.h"
#include "Wave_DAC.h"

#if (CY_PSOC5A)
#include <CyLib.h>
#endif /* CY_PSOC5A */

uint8 Wave_DAC_initVar = 0u;

#if (CY_PSOC5A)
    static uint8 Wave_DAC_restoreVal = 0u;
#endif /* CY_PSOC5A */

#if (CY_PSOC5A)
    static Wave_DAC_backupStruct Wave_DAC_backup;
#endif /* CY_PSOC5A */


/*******************************************************************************
* Function Name: Wave_DAC_Init
********************************************************************************
* Summary:
*  Initialize to the schematic state.
* 
* Parameters:
*  void:
*
* Return:
*  void
*
* Theory:
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_Init(void) 
{
    Wave_DAC_CR0 = (Wave_DAC_MODE_V );

    /* Set default data source */
    #if(Wave_DAC_DEFAULT_DATA_SRC != 0 )
        Wave_DAC_CR1 = (Wave_DAC_DEFAULT_CNTL | Wave_DAC_DACBUS_ENABLE) ;
    #else
        Wave_DAC_CR1 = (Wave_DAC_DEFAULT_CNTL | Wave_DAC_DACBUS_DISABLE) ;
    #endif /* (Wave_DAC_DEFAULT_DATA_SRC != 0 ) */

    /* Set default strobe mode */
    #if(Wave_DAC_DEFAULT_STRB != 0)
        Wave_DAC_Strobe |= Wave_DAC_STRB_EN ;
    #endif/* (Wave_DAC_DEFAULT_STRB != 0) */

    /* Set default range */
    Wave_DAC_SetRange(Wave_DAC_DEFAULT_RANGE); 

    /* Set default speed */
    Wave_DAC_SetSpeed(Wave_DAC_DEFAULT_SPEED);
}


/*******************************************************************************
* Function Name: Wave_DAC_Enable
********************************************************************************
* Summary:
*  Enable the VDAC8
* 
* Parameters:
*  void
*
* Return:
*  void
*
* Theory:
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_Enable(void) 
{
    Wave_DAC_PWRMGR |= Wave_DAC_ACT_PWR_EN;
    Wave_DAC_STBY_PWRMGR |= Wave_DAC_STBY_PWR_EN;

    /*This is to restore the value of register CR0 ,
    which is modified  in Stop API , this prevents misbehaviour of VDAC */
    #if (CY_PSOC5A)
        if(Wave_DAC_restoreVal == 1u) 
        {
             Wave_DAC_CR0 = Wave_DAC_backup.data_value;
             Wave_DAC_restoreVal = 0u;
        }
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: Wave_DAC_Start
********************************************************************************
*
* Summary:
*  The start function initializes the voltage DAC with the default values, 
*  and sets the power to the given level.  A power level of 0, is the same as
*  executing the stop function.
*
* Parameters:
*  Power: Sets power level between off (0) and (3) high power
*
* Return:
*  void 
*
* Global variables:
*  Wave_DAC_initVar: Is modified when this function is called for the 
*  first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void Wave_DAC_Start(void)  
{
    /* Hardware initiazation only needs to occure the first time */
    if(Wave_DAC_initVar == 0u)
    { 
        Wave_DAC_Init();
        Wave_DAC_initVar = 1u;
    }

    /* Enable power to DAC */
    Wave_DAC_Enable();

    /* Set default value */
    Wave_DAC_SetValue(Wave_DAC_DEFAULT_DATA); 
}


/*******************************************************************************
* Function Name: Wave_DAC_Stop
********************************************************************************
*
* Summary:
*  Powers down DAC to lowest power state.
*
* Parameters:
*  void
*
* Return:
*  void
*
* Theory:
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_Stop(void) 
{
    /* Disble power to DAC */
    Wave_DAC_PWRMGR &= (uint8)(~Wave_DAC_ACT_PWR_EN);
    Wave_DAC_STBY_PWRMGR &= (uint8)(~Wave_DAC_STBY_PWR_EN);

    /* This is a work around for PSoC5A  ,
    this sets VDAC to current mode with output off */
    #if (CY_PSOC5A)
        Wave_DAC_backup.data_value = Wave_DAC_CR0;
        Wave_DAC_CR0 = Wave_DAC_CUR_MODE_OUT_OFF;
        Wave_DAC_restoreVal = 1u;
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: Wave_DAC_SetSpeed
********************************************************************************
*
* Summary:
*  Set DAC speed
*
* Parameters:
*  power: Sets speed value
*
* Return:
*  void
*
* Theory:
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_SetSpeed(uint8 speed) 
{
    /* Clear power mask then write in new value */
    Wave_DAC_CR0 &= (uint8)(~Wave_DAC_HS_MASK);
    Wave_DAC_CR0 |=  (speed & Wave_DAC_HS_MASK);
}


/*******************************************************************************
* Function Name: Wave_DAC_SetRange
********************************************************************************
*
* Summary:
*  Set one of three current ranges.
*
* Parameters:
*  Range: Sets one of Three valid ranges.
*
* Return:
*  void 
*
* Theory:
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_SetRange(uint8 range) 
{
    Wave_DAC_CR0 &= (uint8)(~Wave_DAC_RANGE_MASK);      /* Clear existing mode */
    Wave_DAC_CR0 |= (range & Wave_DAC_RANGE_MASK);      /*  Set Range  */
    Wave_DAC_DacTrim();
}


/*******************************************************************************
* Function Name: Wave_DAC_SetValue
********************************************************************************
*
* Summary:
*  Set 8-bit DAC value
*
* Parameters:  
*  value:  Sets DAC value between 0 and 255.
*
* Return: 
*  void 
*
* Theory: 
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_SetValue(uint8 value) 
{
    #if (CY_PSOC5A)
        uint8 Wave_DAC_intrStatus = CyEnterCriticalSection();
    #endif /* CY_PSOC5A */

    Wave_DAC_Data = value;                /*  Set Value  */

    /* PSOC5A requires a double write */
    /* Exit Critical Section */
    #if (CY_PSOC5A)
        Wave_DAC_Data = value;
        CyExitCriticalSection(Wave_DAC_intrStatus);
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: Wave_DAC_DacTrim
********************************************************************************
*
* Summary:
*  Set the trim value for the given range.
*
* Parameters:
*  range:  1V or 4V range.  See constants.
*
* Return:
*  void
*
* Theory: 
*
* Side Effects:
*
*******************************************************************************/
void Wave_DAC_DacTrim(void) 
{
    uint8 mode;

    mode = (uint8)((Wave_DAC_CR0 & Wave_DAC_RANGE_MASK) >> 2) + Wave_DAC_TRIM_M7_1V_RNG_OFFSET;
    Wave_DAC_TR = CY_GET_XTND_REG8((uint8 *)(Wave_DAC_DAC_TRIM_BASE + mode));
}


/* [] END OF FILE */
