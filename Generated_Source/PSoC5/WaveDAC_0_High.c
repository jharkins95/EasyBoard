/*******************************************************************************
* File Name: WaveDAC_0_High.c
* Version 2.10
*
* Description:
*  This file provides the source code for the 8-bit Waveform DAC 
*  (WaveDAC8) Component.
*
********************************************************************************
* Copyright 2013, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "WaveDAC_0_High.h"

uint8  WaveDAC_0_High_initVar = 0u;

const uint8 CYCODE WaveDAC_0_High_wave1[WaveDAC_0_High_WAVE1_LENGTH] = { 2u,30u,58u,86u,114u,141u,169u,197u,225u,252u };
const uint8 CYCODE WaveDAC_0_High_wave2[WaveDAC_0_High_WAVE2_LENGTH] = { 128u,132u,138u,142u,148u,152u,158u,162u,168u,172u,178u,182u,188u,192u,198u,202u,208u,212u,218u,222u,228u,232u,238u,242u,248u,252u,248u,242u,238u,232u,228u,222u,218u,212u,208u,202u,198u,192u,188u,182u,178u,172u,168u,162u,158u,152u,148u,142u,138u,132u,128u,122u,118u,112u,107u,102u,97u,93u,88u,83u,78u,72u,68u,62u,58u,52u,47u,42u,37u,33u,28u,23u,18u,12u,8u,2u,8u,13u,18u,23u,28u,33u,37u,42u,47u,52u,58u,62u,68u,72u,78u,83u,88u,93u,97u,102u,107u,112u,117u,122u };

static uint8  WaveDAC_0_High_Wave1Chan;
static uint8  WaveDAC_0_High_Wave2Chan;
static uint8  WaveDAC_0_High_Wave1TD;
static uint8  WaveDAC_0_High_Wave2TD;


/*******************************************************************************
* Function Name: WaveDAC_0_High_Init
********************************************************************************
*
* Summary:
*  Initializes component with parameters set in the customizer.
*
* Parameters:  
*  None
*
* Return: 
*  None
*
*******************************************************************************/
void WaveDAC_0_High_Init(void) 
{
	WaveDAC_0_High_IDAC8_Init();
	WaveDAC_0_High_IDAC8_SetSpeed(WaveDAC_0_High_HIGHSPEED);
	WaveDAC_0_High_IDAC8_SetRange(WaveDAC_0_High_DAC_RANGE);

	#if(WaveDAC_0_High_DAC_MODE == WaveDAC_0_High_CURRENT_MODE)
		WaveDAC_0_High_IDAC8_SetPolarity(WaveDAC_0_High_DAC_POL);
	#endif /* WaveDAC_0_High_DAC_MODE == WaveDAC_0_High_CURRENT_MODE */

	#if(WaveDAC_0_High_OUT_MODE == WaveDAC_0_High_BUFFER_MODE)
	   WaveDAC_0_High_BuffAmp_Init();
	#endif /* WaveDAC_0_High_OUT_MODE == WaveDAC_0_High_BUFFER_MODE */

	/* Get the TD Number for the DMA channel 1 and 2   */
	WaveDAC_0_High_Wave1TD = CyDmaTdAllocate();
	WaveDAC_0_High_Wave2TD = CyDmaTdAllocate();
	
	/* Initialize waveform pointers  */
	WaveDAC_0_High_Wave1Setup(WaveDAC_0_High_wave1, WaveDAC_0_High_WAVE1_LENGTH) ;
	WaveDAC_0_High_Wave2Setup(WaveDAC_0_High_wave2, WaveDAC_0_High_WAVE2_LENGTH) ;
	
	/* Initialize the internal clock if one present  */
	#if defined(WaveDAC_0_High_DacClk_PHASE)
	   WaveDAC_0_High_DacClk_SetPhase(WaveDAC_0_High_CLK_PHASE_0nS);
	#endif /* defined(WaveDAC_0_High_DacClk_PHASE) */
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_Enable
********************************************************************************
*  
* Summary: 
*  Enables the DAC block and DMA operation.
*
* Parameters:  
*  None
*
* Return: 
*  None
*
*******************************************************************************/
void WaveDAC_0_High_Enable(void) 
{
	WaveDAC_0_High_IDAC8_Enable();

	#if(WaveDAC_0_High_OUT_MODE == WaveDAC_0_High_BUFFER_MODE)
	   WaveDAC_0_High_BuffAmp_Enable();
	#endif /* WaveDAC_0_High_OUT_MODE == WaveDAC_0_High_BUFFER_MODE */

	/* 
	* Enable the channel. It is configured to remember the TD value so that
	* it can be restored from the place where it has been stopped.
	*/
	(void)CyDmaChEnable(WaveDAC_0_High_Wave1Chan, 1u);
	(void)CyDmaChEnable(WaveDAC_0_High_Wave2Chan, 1u);
	
	/* set the initial value */
	WaveDAC_0_High_SetValue(0u);
	
	#if(WaveDAC_0_High_CLOCK_SRC == WaveDAC_0_High_CLOCK_INT)  	
	   WaveDAC_0_High_DacClk_Start();
	#endif /* WaveDAC_0_High_CLOCK_SRC == WaveDAC_0_High_CLOCK_INT */
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_Start
********************************************************************************
*
* Summary:
*  The start function initializes the voltage DAC with the default values, 
*  and sets the power to the given level.  A power level of 0, is the same as 
*  executing the stop function.
*
* Parameters:  
*  None
*
* Return: 
*  None
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_0_High_Start(void) 
{
	/* If not Initialized then initialize all required hardware and software */
	if(WaveDAC_0_High_initVar == 0u)
	{
		WaveDAC_0_High_Init();
		WaveDAC_0_High_initVar = 1u;
	}
	
	WaveDAC_0_High_Enable();
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_StartEx
********************************************************************************
*
* Summary:
*  The StartEx function sets pointers and sizes for both waveforms
*  and then starts the component.
*
* Parameters:  
*   uint8 * wavePtr1:     Pointer to the waveform 1 array.
*   uint16  sampleSize1:  The amount of samples in the waveform 1.
*   uint8 * wavePtr2:     Pointer to the waveform 2 array.
*   uint16  sampleSize2:  The amount of samples in the waveform 2.
*
* Return: 
*  None
*
* Reentrant:
*  No
*
*******************************************************************************/
void WaveDAC_0_High_StartEx(const uint8 * wavePtr1, uint16 sampleSize1, const uint8 * wavePtr2, uint16 sampleSize2)

{
	WaveDAC_0_High_Wave1Setup(wavePtr1, sampleSize1);
	WaveDAC_0_High_Wave2Setup(wavePtr2, sampleSize2);
	WaveDAC_0_High_Start();
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_Stop
********************************************************************************
*
* Summary:
*  Stops the clock (if internal), disables the DMA channels
*  and powers down the DAC.
*
* Parameters:  
*  None  
*
* Return: 
*  None
*
*******************************************************************************/
void WaveDAC_0_High_Stop(void) 
{
	/* Turn off internal clock, if one present */
	#if(WaveDAC_0_High_CLOCK_SRC == WaveDAC_0_High_CLOCK_INT)  	
	   WaveDAC_0_High_DacClk_Stop();
	#endif /* WaveDAC_0_High_CLOCK_SRC == WaveDAC_0_High_CLOCK_INT */
	
	/* Disble DMA channels */
	(void)CyDmaChDisable(WaveDAC_0_High_Wave1Chan);
	(void)CyDmaChDisable(WaveDAC_0_High_Wave2Chan);

	/* Disable power to DAC */
	WaveDAC_0_High_IDAC8_Stop();
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_Wave1Setup
********************************************************************************
*
* Summary:
*  Sets pointer and size for waveform 1.                                    
*
* Parameters:  
*  uint8 * WavePtr:     Pointer to the waveform array.
*  uint16  SampleSize:  The amount of samples in the waveform.
*
* Return: 
*  None 
*
*******************************************************************************/
void WaveDAC_0_High_Wave1Setup(const uint8 * wavePtr, uint16 sampleSize)

{
	#if (CY_PSOC3)
		uint16 memoryType; /* determining the source memory type */
		memoryType = (WaveDAC_0_High_HI16FLASHPTR == HI16(wavePtr)) ? HI16(CYDEV_FLS_BASE) : HI16(CYDEV_SRAM_BASE);
		
		WaveDAC_0_High_Wave1Chan = WaveDAC_0_High_Wave1_DMA_DmaInitialize(
		WaveDAC_0_High_Wave1_DMA_BYTES_PER_BURST, WaveDAC_0_High_Wave1_DMA_REQUEST_PER_BURST,
		memoryType, HI16(CYDEV_PERIPH_BASE));
	#else /* PSoC 5 */
		WaveDAC_0_High_Wave1Chan = WaveDAC_0_High_Wave1_DMA_DmaInitialize(
		WaveDAC_0_High_Wave1_DMA_BYTES_PER_BURST, WaveDAC_0_High_Wave1_DMA_REQUEST_PER_BURST,
		HI16(wavePtr), HI16(WaveDAC_0_High_DAC8__D));
	#endif /* CY_PSOC3 */
	
	/*
	* TD is looping on itself. 
    * Increment the source address, but not the destination address. 
	*/
	(void)CyDmaTdSetConfiguration(WaveDAC_0_High_Wave1TD, sampleSize, WaveDAC_0_High_Wave1TD, 
                                    (uint8)CY_DMA_TD_INC_SRC_ADR | (uint8)WaveDAC_0_High_Wave1_DMA__TD_TERMOUT_EN); 
	
	/* Set the TD source and destination address */
	(void)CyDmaTdSetAddress(WaveDAC_0_High_Wave1TD, LO16((uint32)wavePtr), LO16(WaveDAC_0_High_DAC8__D));
	
	/* Associate the TD with the channel */
	(void)CyDmaChSetInitialTd(WaveDAC_0_High_Wave1Chan, WaveDAC_0_High_Wave1TD);
}


/*******************************************************************************
* Function Name: WaveDAC_0_High_Wave2Setup
********************************************************************************
*
* Summary:
*  Sets pointer and size for waveform 2.                                    
*
* Parameters:  
*  uint8 * WavePtr:     Pointer to the waveform array.
*  uint16  SampleSize:  The amount of samples in the waveform.
*
* Return: 
*  None
*
*******************************************************************************/
void WaveDAC_0_High_Wave2Setup(const uint8 * wavePtr, uint16 sampleSize)
 
{
	#if (CY_PSOC3)
		uint16 memoryType; /* determining the source memory type */
		memoryType = (WaveDAC_0_High_HI16FLASHPTR == HI16(wavePtr)) ? HI16(CYDEV_FLS_BASE) : HI16(CYDEV_SRAM_BASE);
			
		WaveDAC_0_High_Wave2Chan = WaveDAC_0_High_Wave2_DMA_DmaInitialize(
		WaveDAC_0_High_Wave2_DMA_BYTES_PER_BURST, WaveDAC_0_High_Wave2_DMA_REQUEST_PER_BURST,
		memoryType, HI16(CYDEV_PERIPH_BASE));
	#else /* PSoC 5 */
		WaveDAC_0_High_Wave2Chan = WaveDAC_0_High_Wave2_DMA_DmaInitialize(
		WaveDAC_0_High_Wave2_DMA_BYTES_PER_BURST, WaveDAC_0_High_Wave2_DMA_REQUEST_PER_BURST,
		HI16(wavePtr), HI16(WaveDAC_0_High_DAC8__D));
	#endif /* CY_PSOC3 */
	
	/*
	* TD is looping on itself. 
	* Increment the source address, but not the destination address. 
	*/
	(void)CyDmaTdSetConfiguration(WaveDAC_0_High_Wave2TD, sampleSize, WaveDAC_0_High_Wave2TD, 
                                    (uint8)CY_DMA_TD_INC_SRC_ADR | (uint8)WaveDAC_0_High_Wave2_DMA__TD_TERMOUT_EN); 
	
	/* Set the TD source and destination address */
	(void)CyDmaTdSetAddress(WaveDAC_0_High_Wave2TD, LO16((uint32)wavePtr), LO16(WaveDAC_0_High_DAC8__D));
	
	/* Associate the TD with the channel */
	(void)CyDmaChSetInitialTd(WaveDAC_0_High_Wave2Chan, WaveDAC_0_High_Wave2TD);
}


/* [] END OF FILE */
