/*******************************************************************************
* File Name: SPIS_INT.c
* Version 2.70
*
* Description:
*  This file provides all Interrupt Service Routine (ISR) for the SPI Slave
*  component.
*
* Note:
*  None.
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "SPIS_PVT.h"
#include "cyapicallbacks.h"

/* User code required at start of ISR */
/* `#START SPIS_ISR_START_DEF` */

/* `#END` */


/*******************************************************************************
* Function Name: SPIS_TX_ISR
*
* Summary:
*  Interrupt Service Routine for TX portion of the SPI Slave.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global variables:
*  SPIS_txBufferWrite - used for the account of the bytes which
*  have been written down in the TX software buffer.
*  SPIS_txBufferRead - used for the account of the bytes which
*  have been read from the TX software buffer, modified when exist data to
*  sending and FIFO Not Full.
*  SPIS_txBuffer[SPIS_TX_BUFFER_SIZE] - used to store
*  data to sending.
*  All described above Global variables are used when Software Buffer is used.
*
*******************************************************************************/
CY_ISR(SPIS_TX_ISR)
{

    #if(SPIS_TX_SOFTWARE_BUF_ENABLED)
        uint8 tmpStatus;
    #endif /* (SPIS_TX_SOFTWARE_BUF_ENABLED) */

    #ifdef SPIS_TX_ISR_ENTRY_CALLBACK
        SPIS_TX_ISR_EntryCallback();
    #endif /* SPIS_TX_ISR_ENTRY_CALLBACK */

    /* User code required at start of ISR */
    /* `#START SPIS_ISR_TX_START` */

    /* `#END` */

    #if(SPIS_TX_SOFTWARE_BUF_ENABLED)
        /* Component interrupt service code */

        /* See if TX data buffer is not empty and there is space in TX FIFO */
        while(SPIS_txBufferRead != SPIS_txBufferWrite)
        {
            tmpStatus = SPIS_GET_STATUS_TX(SPIS_swStatusTx);
            SPIS_swStatusTx = tmpStatus;

            if ((SPIS_swStatusTx & SPIS_STS_TX_FIFO_NOT_FULL) != 0u)
            {
                if(SPIS_txBufferFull == 0u)
                {
                   SPIS_txBufferRead++;

                    if(SPIS_txBufferRead >= SPIS_TX_BUFFER_SIZE)
                    {
                        SPIS_txBufferRead = 0u;
                    }
                }
                else
                {
                    SPIS_txBufferFull = 0u;
                }

                /* Put data element into the TX FIFO */
                CY_SET_REG16(SPIS_TXDATA_PTR, 
                                             SPIS_txBuffer[SPIS_txBufferRead]);
            }
            else
            {
                break;
            }
        }

        /* If Buffer is empty then disable TX FIFO status interrupt until there is data in the buffer */
        if(SPIS_txBufferRead == SPIS_txBufferWrite)
        {
            SPIS_TX_STATUS_MASK_REG &= ((uint8)~SPIS_STS_TX_FIFO_NOT_FULL);
        }

    #endif /* SPIS_TX_SOFTWARE_BUF_ENABLED */

    /* User code required at end of ISR (Optional) */
    /* `#START SPIS_ISR_TX_END` */

    /* `#END` */
    
    #ifdef SPIS_TX_ISR_EXIT_CALLBACK
        SPIS_TX_ISR_ExitCallback();
    #endif /* SPIS_TX_ISR_EXIT_CALLBACK */
   }


/*******************************************************************************
* Function Name: SPIS_RX_ISR
*
* Summary:
*  Interrupt Service Routine for RX portion of the SPI Slave.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global variables:
*  SPIS_rxBufferWrite - used for the account of the bytes which
*  have been written down in the RX software buffer modified when FIFO contains
*  new data.
*  SPIS_rxBufferRead - used for the account of the bytes which
*  have been read from the RX software buffer, modified when overflow occurred.
*  SPIS_rxBuffer[SPIS_RX_BUFFER_SIZE] - used to store
*  received data, modified when FIFO contains new data.
*  All described above Global variables are used when Software Buffer is used.
*
*******************************************************************************/
CY_ISR(SPIS_RX_ISR)
{
    #if(SPIS_RX_SOFTWARE_BUF_ENABLED)
        uint8 tmpStatus;
        uint16 rxData;
    #endif /* (SPIS_TX_SOFTWARE_BUF_ENABLED) */

    #ifdef SPIS_RX_ISR_ENTRY_CALLBACK
        SPIS_RX_ISR_EntryCallback();
    #endif /* SPIS_RX_ISR_ENTRY_CALLBACK */

    /* User code required at start of ISR */
    /* `#START SPIS_RX_ISR_START` */

    /* `#END` */
    
    #if(SPIS_RX_SOFTWARE_BUF_ENABLED)
        tmpStatus = SPIS_GET_STATUS_RX(SPIS_swStatusRx);
        SPIS_swStatusRx = tmpStatus;
        /* See if RX data FIFO has some data and if it can be moved to the RX Buffer */
        while((SPIS_swStatusRx & SPIS_STS_RX_FIFO_NOT_EMPTY) != 0u)
        {
            rxData = CY_GET_REG16(SPIS_RXDATA_PTR);

            /* Set next pointer. */
            SPIS_rxBufferWrite++;
            if(SPIS_rxBufferWrite >= SPIS_RX_BUFFER_SIZE)
            {
                SPIS_rxBufferWrite = 0u;
            }

            if(SPIS_rxBufferWrite == SPIS_rxBufferRead)
            {
                SPIS_rxBufferRead++;
                if(SPIS_rxBufferRead >= SPIS_RX_BUFFER_SIZE)
                {
                    SPIS_rxBufferRead = 0u;
                }
                SPIS_rxBufferFull = 1u;
            }

            /* Move data from the FIFO to the Buffer */
            SPIS_rxBuffer[SPIS_rxBufferWrite] = rxData;

            tmpStatus = SPIS_GET_STATUS_RX(SPIS_swStatusRx);
            SPIS_swStatusRx = tmpStatus;
        }
    #endif /* SPIS_RX_SOFTWARE_BUF_ENABLED */

    /* User code required at end of ISR (Optional) */
    /* `#START SPIS_RX_ISR_END` */

    /* `#END` */

    #ifdef SPIS_RX_ISR_EXIT_CALLBACK
        SPIS_RX_ISR_ExitCallback();
    #endif /* SPIS_RX_ISR_EXIT_CALLBACK */
}

/* [] END OF FILE */
