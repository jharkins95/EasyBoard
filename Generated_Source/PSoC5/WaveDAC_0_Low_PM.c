/*******************************************************************************
* File Name: WaveDAC_0_Low_PM.c  
* Version 2.10
*
* Description:
*  This file provides the power manager source code to the API for 
*  the WaveDAC8 component.
*
********************************************************************************
* Copyright 2013, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "WaveDAC_0_Low.h"

static WaveDAC_0_Low_BACKUP_STRUCT  WaveDAC_0_Low_backup;


/*******************************************************************************
* Function Name: WaveDAC_0_Low_Sleep
********************************************************************************
*
* Summary:
*  Stops the component and saves its configuration. Should be called 
*  just prior to entering sleep.
*  
* Parameters:  
*  None
*
* Return: 
*  None
*
* Global variables:
*  WaveDAC_0_Low_backup:  The structure field 'enableState' is modified 
*  depending on the enable state of the block before entering to sleep mode.
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_0_Low_Sleep(void) 
{
	/* Save DAC8's enable state */

	WaveDAC_0_Low_backup.enableState = (WaveDAC_0_Low_IDAC8_ACT_PWR_EN == 
		(WaveDAC_0_Low_IDAC8_PWRMGR_REG & WaveDAC_0_Low_IDAC8_ACT_PWR_EN)) ? 1u : 0u ;
	
	WaveDAC_0_Low_Stop();
	WaveDAC_0_Low_SaveConfig();
}


/*******************************************************************************
* Function Name: WaveDAC_0_Low_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component configuration. Should be called
*  just after awaking from sleep.
*  
* Parameters:  
*  None
*
* Return: 
*  void
*
* Global variables:
*  WaveDAC_0_Low_backup:  The structure field 'enableState' is used to 
*  restore the enable state of block after wakeup from sleep mode.
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_0_Low_Wakeup(void) 
{
	WaveDAC_0_Low_RestoreConfig();

	if(WaveDAC_0_Low_backup.enableState == 1u)
	{
		WaveDAC_0_Low_Enable();
	}
}


/* [] END OF FILE */
