/*******************************************************************************
* File Name: WaveDAC_1_High_PM.c  
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

#include "WaveDAC_1_High.h"

static WaveDAC_1_High_BACKUP_STRUCT  WaveDAC_1_High_backup;


/*******************************************************************************
* Function Name: WaveDAC_1_High_Sleep
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
*  WaveDAC_1_High_backup:  The structure field 'enableState' is modified 
*  depending on the enable state of the block before entering to sleep mode.
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_1_High_Sleep(void) 
{
	/* Save DAC8's enable state */

	WaveDAC_1_High_backup.enableState = (WaveDAC_1_High_IDAC8_ACT_PWR_EN == 
		(WaveDAC_1_High_IDAC8_PWRMGR_REG & WaveDAC_1_High_IDAC8_ACT_PWR_EN)) ? 1u : 0u ;
	
	WaveDAC_1_High_Stop();
	WaveDAC_1_High_SaveConfig();
}


/*******************************************************************************
* Function Name: WaveDAC_1_High_Wakeup
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
*  WaveDAC_1_High_backup:  The structure field 'enableState' is used to 
*  restore the enable state of block after wakeup from sleep mode.
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_1_High_Wakeup(void) 
{
	WaveDAC_1_High_RestoreConfig();

	if(WaveDAC_1_High_backup.enableState == 1u)
	{
		WaveDAC_1_High_Enable();
	}
}


/* [] END OF FILE */
