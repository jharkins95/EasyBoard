/*******************************************************************************
* File Name: VPOT_ADC_PM.c
* Version 3.0
*
* Description:
*  This file provides Sleep/WakeUp APIs functionality.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "VPOT_ADC.h"


/***************************************
* Local data allocation
***************************************/

static VPOT_ADC_BACKUP_STRUCT  VPOT_ADC_backup =
{
    VPOT_ADC_DISABLED
};


/*******************************************************************************
* Function Name: VPOT_ADC_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the current user configuration.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void VPOT_ADC_SaveConfig(void)
{
    /* All configuration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: VPOT_ADC_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void VPOT_ADC_RestoreConfig(void)
{
    /* All congiguration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: VPOT_ADC_Sleep
********************************************************************************
*
* Summary:
*  This is the preferred routine to prepare the component for sleep.
*  The VPOT_ADC_Sleep() routine saves the current component state,
*  then it calls the ADC_Stop() function.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  VPOT_ADC_backup - The structure field 'enableState' is modified
*  depending on the enable state of the block before entering to sleep mode.
*
*******************************************************************************/
void VPOT_ADC_Sleep(void)
{
    if((VPOT_ADC_PWRMGR_SAR_REG  & VPOT_ADC_ACT_PWR_SAR_EN) != 0u)
    {
        if((VPOT_ADC_SAR_CSR0_REG & VPOT_ADC_SAR_SOF_START_CONV) != 0u)
        {
            VPOT_ADC_backup.enableState = VPOT_ADC_ENABLED | VPOT_ADC_STARTED;
        }
        else
        {
            VPOT_ADC_backup.enableState = VPOT_ADC_ENABLED;
        }
        VPOT_ADC_Stop();
    }
    else
    {
        VPOT_ADC_backup.enableState = VPOT_ADC_DISABLED;
    }
}


/*******************************************************************************
* Function Name: VPOT_ADC_Wakeup
********************************************************************************
*
* Summary:
*  This is the preferred routine to restore the component to the state when
*  VPOT_ADC_Sleep() was called. If the component was enabled before the
*  VPOT_ADC_Sleep() function was called, the
*  VPOT_ADC_Wakeup() function also re-enables the component.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  VPOT_ADC_backup - The structure field 'enableState' is used to
*  restore the enable state of block after wakeup from sleep mode.
*
*******************************************************************************/
void VPOT_ADC_Wakeup(void)
{
    if(VPOT_ADC_backup.enableState != VPOT_ADC_DISABLED)
    {
        VPOT_ADC_Enable();
        #if(VPOT_ADC_DEFAULT_CONV_MODE != VPOT_ADC__HARDWARE_TRIGGER)
            if((VPOT_ADC_backup.enableState & VPOT_ADC_STARTED) != 0u)
            {
                VPOT_ADC_StartConvert();
            }
        #endif /* End VPOT_ADC_DEFAULT_CONV_MODE != VPOT_ADC__HARDWARE_TRIGGER */
    }
}


/* [] END OF FILE */
