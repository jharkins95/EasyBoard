/*******************************************************************************
* File Name: SPI_FNG1_PM.c
* Version 2.50
*
* Description:
*  This file contains the setup, control and status commands to support
*  component operations in low power mode.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "SPI_FNG1_PVT.h"

static SPI_FNG1_BACKUP_STRUCT SPI_FNG1_backup =
{
    SPI_FNG1_DISABLED,
    SPI_FNG1_BITCTR_INIT,
};


/*******************************************************************************
* Function Name: SPI_FNG1_SaveConfig
********************************************************************************
*
* Summary:
*  Empty function. Included for consistency with other components.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void SPI_FNG1_SaveConfig(void) 
{

}


/*******************************************************************************
* Function Name: SPI_FNG1_RestoreConfig
********************************************************************************
*
* Summary:
*  Empty function. Included for consistency with other components.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void SPI_FNG1_RestoreConfig(void) 
{

}


/*******************************************************************************
* Function Name: SPI_FNG1_Sleep
********************************************************************************
*
* Summary:
*  Prepare SPIM Component goes to sleep.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  SPI_FNG1_backup - modified when non-retention registers are saved.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void SPI_FNG1_Sleep(void) 
{
    /* Save components enable state */
    SPI_FNG1_backup.enableState = ((uint8) SPI_FNG1_IS_ENABLED);

    SPI_FNG1_Stop();
}


/*******************************************************************************
* Function Name: SPI_FNG1_Wakeup
********************************************************************************
*
* Summary:
*  Prepare SPIM Component to wake up.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  SPI_FNG1_backup - used when non-retention registers are restored.
*  SPI_FNG1_txBufferWrite - modified every function call - resets to
*  zero.
*  SPI_FNG1_txBufferRead - modified every function call - resets to
*  zero.
*  SPI_FNG1_rxBufferWrite - modified every function call - resets to
*  zero.
*  SPI_FNG1_rxBufferRead - modified every function call - resets to
*  zero.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void SPI_FNG1_Wakeup(void) 
{
    #if(SPI_FNG1_RX_SOFTWARE_BUF_ENABLED)
        SPI_FNG1_rxBufferFull  = 0u;
        SPI_FNG1_rxBufferRead  = 0u;
        SPI_FNG1_rxBufferWrite = 0u;
    #endif /* (SPI_FNG1_RX_SOFTWARE_BUF_ENABLED) */

    #if(SPI_FNG1_TX_SOFTWARE_BUF_ENABLED)
        SPI_FNG1_txBufferFull  = 0u;
        SPI_FNG1_txBufferRead  = 0u;
        SPI_FNG1_txBufferWrite = 0u;
    #endif /* (SPI_FNG1_TX_SOFTWARE_BUF_ENABLED) */

    /* Clear any data from the RX and TX FIFO */
    SPI_FNG1_ClearFIFO();

    /* Restore components block enable state */
    if(0u != SPI_FNG1_backup.enableState)
    {
        SPI_FNG1_Enable();
    }
}


/* [] END OF FILE */