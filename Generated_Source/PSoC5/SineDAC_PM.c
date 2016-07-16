/*******************************************************************************
* File Name: SineDAC_PM.c  
* Version 1.90
*
* Description:
*  This file provides the power management source code to API for the
*  VDAC8.  
*
* Note:
*  None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "SineDAC.h"

static SineDAC_backupStruct SineDAC_backup;


/*******************************************************************************
* Function Name: SineDAC_SaveConfig
********************************************************************************
* Summary:
*  Save the current user configuration
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
*******************************************************************************/
void SineDAC_SaveConfig(void) 
{
    if (!((SineDAC_CR1 & SineDAC_SRC_MASK) == SineDAC_SRC_UDB))
    {
        SineDAC_backup.data_value = SineDAC_Data;
    }
}


/*******************************************************************************
* Function Name: SineDAC_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:  
*  void
*
* Return: 
*  void
*
*******************************************************************************/
void SineDAC_RestoreConfig(void) 
{
    if (!((SineDAC_CR1 & SineDAC_SRC_MASK) == SineDAC_SRC_UDB))
    {
        if((SineDAC_Strobe & SineDAC_STRB_MASK) == SineDAC_STRB_EN)
        {
            SineDAC_Strobe &= (uint8)(~SineDAC_STRB_MASK);
            SineDAC_Data = SineDAC_backup.data_value;
            SineDAC_Strobe |= SineDAC_STRB_EN;
        }
        else
        {
            SineDAC_Data = SineDAC_backup.data_value;
        }
    }
}


/*******************************************************************************
* Function Name: SineDAC_Sleep
********************************************************************************
* Summary:
*  Stop and Save the user configuration
*
* Parameters:  
*  void:  
*
* Return: 
*  void
*
* Global variables:
*  SineDAC_backup.enableState:  Is modified depending on the enable 
*  state  of the block before entering sleep mode.
*
*******************************************************************************/
void SineDAC_Sleep(void) 
{
    /* Save VDAC8's enable state */    
    if(SineDAC_ACT_PWR_EN == (SineDAC_PWRMGR & SineDAC_ACT_PWR_EN))
    {
        /* VDAC8 is enabled */
        SineDAC_backup.enableState = 1u;
    }
    else
    {
        /* VDAC8 is disabled */
        SineDAC_backup.enableState = 0u;
    }
    
    SineDAC_Stop();
    SineDAC_SaveConfig();
}


/*******************************************************************************
* Function Name: SineDAC_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*  
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  SineDAC_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void SineDAC_Wakeup(void) 
{
    SineDAC_RestoreConfig();
    
    if(SineDAC_backup.enableState == 1u)
    {
        /* Enable VDAC8's operation */
        SineDAC_Enable();

        /* Restore the data register */
        SineDAC_SetValue(SineDAC_Data);
    } /* Do nothing if VDAC8 was disabled before */    
}


/* [] END OF FILE */
