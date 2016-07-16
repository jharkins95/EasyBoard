/*******************************************************************************
* File Name: SineDAC.c  
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
#include "SineDAC.h"

#if (CY_PSOC5A)
#include <CyLib.h>
#endif /* CY_PSOC5A */

uint8 SineDAC_initVar = 0u;

#if (CY_PSOC5A)
    static uint8 SineDAC_restoreVal = 0u;
#endif /* CY_PSOC5A */

#if (CY_PSOC5A)
    static SineDAC_backupStruct SineDAC_backup;
#endif /* CY_PSOC5A */


/*******************************************************************************
* Function Name: SineDAC_Init
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
void SineDAC_Init(void) 
{
    SineDAC_CR0 = (SineDAC_MODE_V );

    /* Set default data source */
    #if(SineDAC_DEFAULT_DATA_SRC != 0 )
        SineDAC_CR1 = (SineDAC_DEFAULT_CNTL | SineDAC_DACBUS_ENABLE) ;
    #else
        SineDAC_CR1 = (SineDAC_DEFAULT_CNTL | SineDAC_DACBUS_DISABLE) ;
    #endif /* (SineDAC_DEFAULT_DATA_SRC != 0 ) */

    /* Set default strobe mode */
    #if(SineDAC_DEFAULT_STRB != 0)
        SineDAC_Strobe |= SineDAC_STRB_EN ;
    #endif/* (SineDAC_DEFAULT_STRB != 0) */

    /* Set default range */
    SineDAC_SetRange(SineDAC_DEFAULT_RANGE); 

    /* Set default speed */
    SineDAC_SetSpeed(SineDAC_DEFAULT_SPEED);
}


/*******************************************************************************
* Function Name: SineDAC_Enable
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
void SineDAC_Enable(void) 
{
    SineDAC_PWRMGR |= SineDAC_ACT_PWR_EN;
    SineDAC_STBY_PWRMGR |= SineDAC_STBY_PWR_EN;

    /*This is to restore the value of register CR0 ,
    which is modified  in Stop API , this prevents misbehaviour of VDAC */
    #if (CY_PSOC5A)
        if(SineDAC_restoreVal == 1u) 
        {
             SineDAC_CR0 = SineDAC_backup.data_value;
             SineDAC_restoreVal = 0u;
        }
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: SineDAC_Start
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
*  SineDAC_initVar: Is modified when this function is called for the 
*  first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void SineDAC_Start(void)  
{
    /* Hardware initiazation only needs to occure the first time */
    if(SineDAC_initVar == 0u)
    { 
        SineDAC_Init();
        SineDAC_initVar = 1u;
    }

    /* Enable power to DAC */
    SineDAC_Enable();

    /* Set default value */
    SineDAC_SetValue(SineDAC_DEFAULT_DATA); 
}


/*******************************************************************************
* Function Name: SineDAC_Stop
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
void SineDAC_Stop(void) 
{
    /* Disble power to DAC */
    SineDAC_PWRMGR &= (uint8)(~SineDAC_ACT_PWR_EN);
    SineDAC_STBY_PWRMGR &= (uint8)(~SineDAC_STBY_PWR_EN);

    /* This is a work around for PSoC5A  ,
    this sets VDAC to current mode with output off */
    #if (CY_PSOC5A)
        SineDAC_backup.data_value = SineDAC_CR0;
        SineDAC_CR0 = SineDAC_CUR_MODE_OUT_OFF;
        SineDAC_restoreVal = 1u;
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: SineDAC_SetSpeed
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
void SineDAC_SetSpeed(uint8 speed) 
{
    /* Clear power mask then write in new value */
    SineDAC_CR0 &= (uint8)(~SineDAC_HS_MASK);
    SineDAC_CR0 |=  (speed & SineDAC_HS_MASK);
}


/*******************************************************************************
* Function Name: SineDAC_SetRange
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
void SineDAC_SetRange(uint8 range) 
{
    SineDAC_CR0 &= (uint8)(~SineDAC_RANGE_MASK);      /* Clear existing mode */
    SineDAC_CR0 |= (range & SineDAC_RANGE_MASK);      /*  Set Range  */
    SineDAC_DacTrim();
}


/*******************************************************************************
* Function Name: SineDAC_SetValue
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
void SineDAC_SetValue(uint8 value) 
{
    #if (CY_PSOC5A)
        uint8 SineDAC_intrStatus = CyEnterCriticalSection();
    #endif /* CY_PSOC5A */

    SineDAC_Data = value;                /*  Set Value  */

    /* PSOC5A requires a double write */
    /* Exit Critical Section */
    #if (CY_PSOC5A)
        SineDAC_Data = value;
        CyExitCriticalSection(SineDAC_intrStatus);
    #endif /* CY_PSOC5A */
}


/*******************************************************************************
* Function Name: SineDAC_DacTrim
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
void SineDAC_DacTrim(void) 
{
    uint8 mode;

    mode = (uint8)((SineDAC_CR0 & SineDAC_RANGE_MASK) >> 2) + SineDAC_TRIM_M7_1V_RNG_OFFSET;
    SineDAC_TR = CY_GET_XTND_REG8((uint8 *)(SineDAC_DAC_TRIM_BASE + mode));
}


/* [] END OF FILE */
