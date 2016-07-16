/*******************************************************************************
* File Name: ADV_VPOT_PM.c
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

#include "ADV_VPOT.h"


/***************************************
* Local data allocation
***************************************/

static ADV_VPOT_BACKUP_STRUCT  ADV_VPOT_backup =
{
    ADV_VPOT_DISABLED
};


/*******************************************************************************
* Function Name: ADV_VPOT_SaveConfig
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
void ADV_VPOT_SaveConfig(void)
{
    /* All configuration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: ADV_VPOT_RestoreConfig
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
void ADV_VPOT_RestoreConfig(void)
{
    /* All congiguration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: ADV_VPOT_Sleep
********************************************************************************
*
* Summary:
*  This is the preferred routine to prepare the component for sleep.
*  The ADV_VPOT_Sleep() routine saves the current component state,
*  then it calls the ADC_Stop() function.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  ADV_VPOT_backup - The structure field 'enableState' is modified
*  depending on the enable state of the block before entering to sleep mode.
*
*******************************************************************************/
void ADV_VPOT_Sleep(void)
{
    if((ADV_VPOT_PWRMGR_SAR_REG  & ADV_VPOT_ACT_PWR_SAR_EN) != 0u)
    {
        if((ADV_VPOT_SAR_CSR0_REG & ADV_VPOT_SAR_SOF_START_CONV) != 0u)
        {
            ADV_VPOT_backup.enableState = ADV_VPOT_ENABLED | ADV_VPOT_STARTED;
        }
        else
        {
            ADV_VPOT_backup.enableState = ADV_VPOT_ENABLED;
        }
        ADV_VPOT_Stop();
    }
    else
    {
        ADV_VPOT_backup.enableState = ADV_VPOT_DISABLED;
    }
}


/*******************************************************************************
* Function Name: ADV_VPOT_Wakeup
********************************************************************************
*
* Summary:
*  This is the preferred routine to restore the component to the state when
*  ADV_VPOT_Sleep() was called. If the component was enabled before the
*  ADV_VPOT_Sleep() function was called, the
*  ADV_VPOT_Wakeup() function also re-enables the component.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  ADV_VPOT_backup - The structure field 'enableState' is used to
*  restore the enable state of block after wakeup from sleep mode.
*
*******************************************************************************/
void ADV_VPOT_Wakeup(void)
{
    if(ADV_VPOT_backup.enableState != ADV_VPOT_DISABLED)
    {
        ADV_VPOT_Enable();
        #if(ADV_VPOT_DEFAULT_CONV_MODE != ADV_VPOT__HARDWARE_TRIGGER)
            if((ADV_VPOT_backup.enableState & ADV_VPOT_STARTED) != 0u)
            {
                ADV_VPOT_StartConvert();
            }
        #endif /* End ADV_VPOT_DEFAULT_CONV_MODE != ADV_VPOT__HARDWARE_TRIGGER */
    }
}


/* [] END OF FILE */
