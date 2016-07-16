/*******************************************************************************
* File Name: Wave_Timer_PM.c
* Version 2.70
*
*  Description:
*     This file provides the power management source code to API for the
*     Timer.
*
*   Note:
*     None
*
*******************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
********************************************************************************/

#include "Wave_Timer.h"

static Wave_Timer_backupStruct Wave_Timer_backup;


/*******************************************************************************
* Function Name: Wave_Timer_SaveConfig
********************************************************************************
*
* Summary:
*     Save the current user configuration
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Wave_Timer_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void Wave_Timer_SaveConfig(void) 
{
    #if (!Wave_Timer_UsingFixedFunction)
        Wave_Timer_backup.TimerUdb = Wave_Timer_ReadCounter();
        Wave_Timer_backup.InterruptMaskValue = Wave_Timer_STATUS_MASK;
        #if (Wave_Timer_UsingHWCaptureCounter)
            Wave_Timer_backup.TimerCaptureCounter = Wave_Timer_ReadCaptureCount();
        #endif /* Back Up capture counter register  */

        #if(!Wave_Timer_UDB_CONTROL_REG_REMOVED)
            Wave_Timer_backup.TimerControlRegister = Wave_Timer_ReadControlRegister();
        #endif /* Backup the enable state of the Timer component */
    #endif /* Backup non retention registers in UDB implementation. All fixed function registers are retention */
}


/*******************************************************************************
* Function Name: Wave_Timer_RestoreConfig
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
* Global variables:
*  Wave_Timer_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Wave_Timer_RestoreConfig(void) 
{   
    #if (!Wave_Timer_UsingFixedFunction)

        Wave_Timer_WriteCounter(Wave_Timer_backup.TimerUdb);
        Wave_Timer_STATUS_MASK =Wave_Timer_backup.InterruptMaskValue;
        #if (Wave_Timer_UsingHWCaptureCounter)
            Wave_Timer_SetCaptureCount(Wave_Timer_backup.TimerCaptureCounter);
        #endif /* Restore Capture counter register*/

        #if(!Wave_Timer_UDB_CONTROL_REG_REMOVED)
            Wave_Timer_WriteControlRegister(Wave_Timer_backup.TimerControlRegister);
        #endif /* Restore the enable state of the Timer component */
    #endif /* Restore non retention registers in the UDB implementation only */
}


/*******************************************************************************
* Function Name: Wave_Timer_Sleep
********************************************************************************
*
* Summary:
*     Stop and Save the user configuration
*
* Parameters:
*  void
*
* Return:
*  void
*
* Global variables:
*  Wave_Timer_backup.TimerEnableState:  Is modified depending on the
*  enable state of the block before entering sleep mode.
*
*******************************************************************************/
void Wave_Timer_Sleep(void) 
{
    #if(!Wave_Timer_UDB_CONTROL_REG_REMOVED)
        /* Save Counter's enable state */
        if(Wave_Timer_CTRL_ENABLE == (Wave_Timer_CONTROL & Wave_Timer_CTRL_ENABLE))
        {
            /* Timer is enabled */
            Wave_Timer_backup.TimerEnableState = 1u;
        }
        else
        {
            /* Timer is disabled */
            Wave_Timer_backup.TimerEnableState = 0u;
        }
    #endif /* Back up enable state from the Timer control register */
    Wave_Timer_Stop();
    Wave_Timer_SaveConfig();
}


/*******************************************************************************
* Function Name: Wave_Timer_Wakeup
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
*  Wave_Timer_backup.enableState:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Wave_Timer_Wakeup(void) 
{
    Wave_Timer_RestoreConfig();
    #if(!Wave_Timer_UDB_CONTROL_REG_REMOVED)
        if(Wave_Timer_backup.TimerEnableState == 1u)
        {     /* Enable Timer's operation */
                Wave_Timer_Enable();
        } /* Do nothing if Timer was disabled before */
    #endif /* Remove this code section if Control register is removed */
}


/* [] END OF FILE */
