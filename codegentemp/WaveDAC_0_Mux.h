/*******************************************************************************
* File Name: WaveDAC_0_Mux.h
* Version 1.80
*
*  Description:
*    This file contains the constants and function prototypes for the Analog
*    Multiplexer User Module AMux.
*
*   Note:
*
********************************************************************************
* Copyright 2008-2010, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/

#if !defined(CY_AMUX_WaveDAC_0_Mux_H)
#define CY_AMUX_WaveDAC_0_Mux_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cyfitter_cfg.h"


/***************************************
*        Function Prototypes
***************************************/

void WaveDAC_0_Mux_Start(void) ;
#define WaveDAC_0_Mux_Init() WaveDAC_0_Mux_Start()
void WaveDAC_0_Mux_FastSelect(uint8 channel) ;
/* The Stop, Select, Connect, Disconnect and DisconnectAll functions are declared elsewhere */
/* void WaveDAC_0_Mux_Stop(void); */
/* void WaveDAC_0_Mux_Select(uint8 channel); */
/* void WaveDAC_0_Mux_Connect(uint8 channel); */
/* void WaveDAC_0_Mux_Disconnect(uint8 channel); */
/* void WaveDAC_0_Mux_DisconnectAll(void) */


/***************************************
*         Parameter Constants
***************************************/

#define WaveDAC_0_Mux_CHANNELS  32u
#define WaveDAC_0_Mux_MUXTYPE   1
#define WaveDAC_0_Mux_ATMOSTONE 0

/***************************************
*             API Constants
***************************************/

#define WaveDAC_0_Mux_NULL_CHANNEL 0xFFu
#define WaveDAC_0_Mux_MUX_SINGLE   1
#define WaveDAC_0_Mux_MUX_DIFF     2


/***************************************
*        Conditional Functions
***************************************/

#if WaveDAC_0_Mux_MUXTYPE == WaveDAC_0_Mux_MUX_SINGLE
# if !WaveDAC_0_Mux_ATMOSTONE
#  define WaveDAC_0_Mux_Connect(channel) WaveDAC_0_Mux_Set(channel)
# endif
# define WaveDAC_0_Mux_Disconnect(channel) WaveDAC_0_Mux_Unset(channel)
#else
# if !WaveDAC_0_Mux_ATMOSTONE
void WaveDAC_0_Mux_Connect(uint8 channel) ;
# endif
void WaveDAC_0_Mux_Disconnect(uint8 channel) ;
#endif

#if WaveDAC_0_Mux_ATMOSTONE
# define WaveDAC_0_Mux_Stop() WaveDAC_0_Mux_DisconnectAll()
# define WaveDAC_0_Mux_Select(channel) WaveDAC_0_Mux_FastSelect(channel)
void WaveDAC_0_Mux_DisconnectAll(void) ;
#else
# define WaveDAC_0_Mux_Stop() WaveDAC_0_Mux_Start()
void WaveDAC_0_Mux_Select(uint8 channel) ;
# define WaveDAC_0_Mux_DisconnectAll() WaveDAC_0_Mux_Start()
#endif

#endif /* CY_AMUX_WaveDAC_0_Mux_H */


/* [] END OF FILE */
