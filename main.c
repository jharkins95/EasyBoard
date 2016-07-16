/*******************************************************************************
* File Name: main.c
* Hardware Dependency:
*  CY8C55 Family Processor
*
********************************************************************************
* Copyright 2012, Cypress Semiconductor Corporation. All rights reserved.
* This software is owned by Cypress Semiconductor Corporation and is protected
* by and subject to worldwide patent and copyright laws and treaties.
* Therefore, you may use this software only as provided in the license agreement
* accompanying the software package from which you obtained this software.
* CYPRESS AND ITS SUPPLIERS MAKE NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
* WITH REGARD TO THIS SOFTWARE, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT,
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
*******************************************************************************/

#include <device.h>
#include <stdio.h>
#include <stdlib.h>
#include "FunctionGenerator.h"
#include "Serial.h"
#include "StringHelpers.h"

#if defined (__GNUC__)
    /* Add an explicit reference to the floating point printf library */
    /* to allow the usage of floating point conversion specifiers. */
    /* This is not linked in by default with the newlib-nano library. */
    asm (".global _printf_float");
#endif

/*
void MCP41010_Write(uint8 value, uint8 fnGenerator) 
{
    if (fnGenerator == 0) {
        SPI_FNG0_WriteTxData(0b00010001); // This tells the chip to set the pot
        SPI_FNG0_WriteTxData(value);      // This tells it the pot position
    } else if (fnGenerator == 1) {
        SPI_FNG1_WriteTxData(0b00010001);
        SPI_FNG1_WriteTxData(value);
    }
}
*/


volatile int scope0State; // reading/writing state for Scope 0

float find_freq(char *array, int numSamples)
{
    int i = 0;
    int max1 = 0;
    int max2 = 0;
    int max1_index = 0;
    int max2_index = 0;
    int min1 = 0;
    int min2 = 0;
    int min1_index = 0;
    int min2_index = 0;
    int foundperiod = 0;
    int samples = 0;

    while(foundperiod == 0)
    {
        uint16_t current_element = array[i];
        uint16_t next = array[i+1];
        if (current_element < next && min1 == 0)
        {
            min1 = 1;
            min1_index = i;
            }
        if (current_element > next && max1 == 0)
        {
            max1 = 1;
            max1_index = i;
        }
        if (current_element < next && min1 == 1)
        {
            min2 = 1;
            min2_index = i;

        }
        if (current_element > next && max1 == 1)
        {
            max1 = 1;
            max1_index = i;
        }
        i++;
        if ((max1 == max2 && max2 == min1 && min1 == 1) ||
            (min1 == max1 && max1 == min2 && min2 == 1))
        {
            foundperiod = 1;
        }
    }
    if (max1 == max2 == min1 == 1)
    {
        samples = max2_index - max1_index;

    }
    else if (min1 == max1 == min2 == 1)
    {
        samples = min2_index - min1_index;
    }

    //Irrelevant part
    uint16_t n = 55000;
    int cycles = 1;
    float frequency = 1 / (samples*(n/cycles));
    return frequency;
}


/*******************************************************************************
* Function Name: Get_And_Handle_Command
********************************************************************************
*
* Summary
*  Processes commands sent by UART (including those from a PuTTy connection).
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
/*
void Get_And_Handle_Command()
{
    char usbRx[USBUART_BUFFER_SIZE], usbTx[USBUART_BUFFER_SIZE];   
    int numArgs;
    int desiredFreq, newFreq, fnGenerator;
    char mode[USBUART_BUFFER_SIZE] = {0};
    
    Serial_GetString(usbRx);
    TrimString(usbRx);
    numArgs = sscanf(usbRx, "%d %s %d", &fnGenerator, mode, &desiredFreq);
    if (numArgs == 3) {
        if (!strcmp(mode, "square")) { 
            newFreq = ChangeFrequency(desiredFreq, SQUARE, fnGenerator);
            sprintf(usbTx, "fn = %d, mode = %s, newFreq = %d\r\n", fnGenerator, mode, newFreq);
        } else if (!strcmp(mode, "sine")) { 
            newFreq = ChangeFrequency(desiredFreq, SINE, fnGenerator);
            sprintf(usbTx, "fn = %d, mode = %s, newFreq = %d\r\n", fnGenerator, mode, newFreq);
        } else if (!strcmp(mode, "triangle")) { 
            newFreq = ChangeFrequency(desiredFreq, TRIANGLE, fnGenerator);
            sprintf(usbTx, "fn = %d, mode = %s, newFreq = %d\r\n", fnGenerator, mode, newFreq);
        } else if (!strcmp(mode, "sawtooth")) { 
            newFreq = ChangeFrequency(desiredFreq, SAWTOOTH, fnGenerator);
            sprintf(usbTx, "fn = %d, mode = %s, newFreq = %d\r\n", fnGenerator, mode, newFreq);
        } else if (!strcmp(mode, "dc")) { 
            newFreq = ChangeFrequency(desiredFreq, DC, fnGenerator);
            sprintf(usbTx, "fn = %d, mode = %s, newFreq = %d\r\n", fnGenerator, mode, newFreq);
        } else {
            sprintf(usbTx, "Invalid mode: %s\r\n", mode);
        }
 
        
    } else if (numArgs == 2) {
        if (!strcmp(mode, "off")) {
            if (fnGenerator == 0) {
                StopWaveDac(WAVEDAC_LOW_0);
            } else if (fnGenerator == 1) {
                StopWaveDac(WAVEDAC_LOW_1);   
            }
            sprintf(usbTx, "Stopped WaveDAC %d\r\n", fnGenerator);
        } else {
            sprintf(usbTx, "Invalid mode: %s\r\n", mode);
        }
    } else {
        sprintf(usbTx, "Invalid command: %s\r\n", usbRx);
    }
    Serial_PutString(usbTx);
}

*/

/*******************************************************************************
* Function Name: PSOC5_Init
********************************************************************************
*
* Summary
*  Initializes all the components used in the PSOC5 (WaveDACs, character LCD, 
*  ADCs, and SPI interfaces).
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/

void PSOC5_Init()
{
    LCD_Start();
    
    WaveDAC_0_Clock_Start();
    WaveDAC_1_Clock_Start();
    
    // Needed for WaveDACs to operate concurrently
    // I think this might be a bug with PSoC
    WaveDAC_0_Start();
    WaveDAC_1_Start(); 
    WaveDAC_0_Stop();
    WaveDAC_1_Stop();
    
    WaveDAC_0_Mux_Start();
    WaveDAC_1_Mux_Start();

    USBUART_Start(USBFS_DEVICE, USBUART_5V_OPERATION);
    USBUART_CDC_Init();
    
    SPIS_Start();
    
    CyGlobalIntEnable;   
}

typedef enum {
    ALERT,             // A, off(0)/on(1), device ID, function
    FNG_SHAPE,         // set FNG shape
    FNG_VOLTAGE,       // set FNG voltage
    FNG_FREQUENCY,     // set FNG frequency
    FNG_PIN,           // set new FNG pin
    OSC_PIN,
    COMMIT_CHANGES,
    WAIT_FINISH,        // wait for command to complete (0xF000);
    INVALID_COMMAND,
} SlaveCommand;

typedef struct {
    uint8 id;
    uint8 running;
    uint8 valueChanged;
    
    uint16 freq;
    uint8 voltage;
    FngShape shape;
    uint8 channel;
} FunctionGenerator;

typedef struct {
    uint8 id;
    uint8 running;
    uint8 channel;
    uint8 valueChanged;
} Oscilloscope;

typedef struct {
    FunctionGenerator fng0;
    FunctionGenerator fng1;
    Oscilloscope osc0;
    Oscilloscope osc1;
} SlaveState;

void SetDigitalPot(uint8 value, uint8 fngId) {
    //MCP41010_Write(value, fngId);
}


void setInvalidCommand(SlaveState *state) {
    state->fng0.valueChanged = 0;
    state->fng1.valueChanged = 0;
    state->osc0.valueChanged = 0;
    state->osc1.valueChanged = 0;
}

void initializeFng(int id, FunctionGenerator *fng) {
    fng->id = id;
    fng->running = 0;
    fng->valueChanged = 0;
    
    fng->freq = 1000;
    fng->voltage = 100;
    fng->shape = SQUARE;
    fng->channel = 0;
}

void initializeScope(int id, Oscilloscope *scope) {
    scope->id = id;
    scope->running = 0;
    scope->channel = 0;
    scope->valueChanged = 0;
}

void initializeState(SlaveState *state) {
    initializeFng(0, &state->fng0);
    initializeFng(1, &state->fng1);
    initializeScope(0, &state->osc0);
    initializeScope(1, &state->osc1);
}

SlaveCommand getFngCommand(uint16 dataFromMaster) {
    uint8 command = dataFromMaster & 0x000F;
    switch (command) {
        case 0x000A: // pin
            return FNG_PIN;
        case 0x000B: // voltage
            return FNG_VOLTAGE;
        case 0x000C: // frequency
            return FNG_FREQUENCY;
        case 0x000D: // shape
            return FNG_SHAPE;
        default: // invalid command
            return INVALID_COMMAND;
    }
}

FunctionGenerator *getFng(uint8 id, SlaveState *state) {
    switch (id) {
        case 0: return &state->fng0;
        case 1: return &state->fng1;
        default: return NULL;
    }
}

Oscilloscope *getOsc(uint8 id, SlaveState *state) {
    switch (id) {
        case 2: return &state->osc0;
        case 3: return &state->osc1;
        default: return NULL;
    }
}

void disableFng(FunctionGenerator *fng) {
    if (fng == NULL) return;
    fng->running = 0;
    StopWaveDac(fng->id);
}

void setFngFreq(int newFreq, FunctionGenerator *fng) {
    if (fng == NULL) return;
    fng->freq = newFreq;
    ChangeFrequency(newFreq, fng->shape, fng->voltage, fng->id);
}

void setFngShape(FngShape newShape, FunctionGenerator *fng) {
    if (fng == NULL) return;
    fng->shape = newShape;
    ChangeFrequency(fng->freq, newShape, fng->voltage, fng->id);
}

void setFngVoltage(uint8 newVoltage, FunctionGenerator *fng) {
    if (fng == NULL) return;
    if (newVoltage > 100) return;
    fng->voltage = newVoltage;
    ChangeFrequency(fng->freq, fng->shape, newVoltage, fng->id);
}

void setFngChannel(uint8 newChannel, FunctionGenerator *fng) {
    if (fng == NULL) return;
    if (newChannel >= 32) return;
    fng->channel = newChannel;
    if (fng->id == 0) {
        WaveDAC_0_Mux_FastSelect(newChannel);
    } else if (fng->id == 1) {
        WaveDAC_1_Mux_FastSelect(newChannel);
    }
    
}

/*******************************************************************************
* Function Name: main
********************************************************************************
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
int main()
{
    SlaveState state;
    SlaveCommand currentCommand;
    
    uint16 newFreq, newVoltage, newShape, newPin, newFngOrScopeId, 
      newFngOrScopeOn, newFngCommand, newOscCommand;
    uint16 dataFromMaster;
    uint8 wasDataReceived;
    
    char scope0RawBuffer[1200] = {0};
    char scope0SerialBuffer[1200] = {0};
    int scope0RawBufferPtr = 0, scope0RawBufferStartPtr = 0;
    PSOC5_Init();
    
    FunctionGenerator *currentFng;
    Oscilloscope *currentOsc;
    
    initializeState(&state);
    newFreq = 0;
    newVoltage = 0;
    newShape = SQUARE;
    newPin = 0;
    newFngOrScopeId = 0;
    newFngOrScopeOn = 0;
    newFngCommand = 0;
    newOscCommand = 0;
    
    uint8 freqChanged = 0;
    uint8 shapeChanged = 0;
    uint8 voltageChanged = 0;
    uint8 pinChanged = 0;
    
    currentFng = NULL;
    currentOsc = NULL;
    
    currentCommand = ALERT;
    wasDataReceived = 0;
    
    uint8 channel = 0;
    uint8 channelInc = 0;
    
    
    /*
    setFngFreq(853, &state.fng0);
    setFngFreq(960, &state.fng1);
    
    setFngShape(SINE, &state.fng0);
    setFngShape(SINE, &state.fng1);
    
    setFngVoltage(100, &state.fng0);
    setFngVoltage(100, &state.fng1);
    */
    
    setFngChannel(0, &state.fng0);
    setFngChannel(1, &state.fng1);
    
    disableFng(&state.fng0);
    disableFng(&state.fng1);
    

    while (1) {        
        if (SPIS_ReadRxStatus()) {
            uint16 newData = SPIS_ReadRxData();
            if (newData != dataFromMaster) {
                dataFromMaster = newData;
                wasDataReceived = 1;
            } else {
                wasDataReceived = 0;   
            }
            SPIS_ClearRxBuffer();
        }
        
        LED_0_Write(wasDataReceived);
        
        LCD_Position(0, 0);
        LCD_PrintString("Mode: ");
        LCD_Position(1, 0);
        LCD_PrintString("Ampl: ");
        
        switch (currentCommand) {
            case ALERT:
                if (wasDataReceived && (dataFromMaster >> 12) == 0x000A) { 
                    newFngOrScopeId = (dataFromMaster & 0x00F0) >> 4;
                    newFngOrScopeOn = (dataFromMaster & 0x0F00) >> 8;
                    
                    if (newFngOrScopeId == 0 || newFngOrScopeId == 1) {
                        currentFng = getFng(newFngOrScopeId, &state);
                    } else if (newFngOrScopeId == 2 || newFngOrScopeId == 3) {
                        // TODO: implement oscope control
                        currentCommand = INVALID_COMMAND;
                        break;
                    } else { // invalid fng/scope ID
                        currentCommand = INVALID_COMMAND;
                        break;
                    }
                    
                    if (!newFngOrScopeOn) {
                        disableFng(currentFng);
                        currentCommand = WAIT_FINISH;
                    } else {
                        currentCommand = getFngCommand(dataFromMaster);
                    }
                }
                break;
            case FNG_PIN:
                if (wasDataReceived) {
                    newPin = (dataFromMaster & 0x00FF);
                    if (newPin >= 32) {
                        currentCommand = INVALID_COMMAND;
                    } else {
                        currentCommand = WAIT_FINISH;
                        pinChanged = 1;
                    }
                }
                break;
            case FNG_SHAPE:
                if (wasDataReceived) {
                    newShape = (dataFromMaster & 0x000F);
                    if (newShape >= 5) {
                        currentCommand = INVALID_COMMAND;
                    } else {
                        
                        currentCommand = WAIT_FINISH;  
                        shapeChanged = 1;
                    }
                }
                break;
            case FNG_VOLTAGE:
                if (wasDataReceived) {
                    newVoltage = (dataFromMaster & 0x00FF);
                    if (newVoltage > 100) {
                        currentCommand = INVALID_COMMAND;   
                    } else {
                        currentCommand = WAIT_FINISH;
                        voltageChanged = 1;
                    }
                }
                break;
            case FNG_FREQUENCY:
                if (wasDataReceived) {
                    newFreq = dataFromMaster;
                    if (newFreq > 50000 || newFreq < 50) {
                        currentCommand = INVALID_COMMAND;
                    } else {
                        currentCommand = WAIT_FINISH;   
                        freqChanged = 1;
                    }
                }
                break;
            case OSC_PIN:
                // TODO: implement oscilloscope pin selection
                currentCommand = INVALID_COMMAND;
                break;
            case WAIT_FINISH:
                if (wasDataReceived) {
                    if (dataFromMaster == 0xF000) {
                        currentCommand = COMMIT_CHANGES;
                    } else {
                        currentCommand = INVALID_COMMAND;   
                    }
                }
                break;
            case COMMIT_CHANGES:
                
                LCD_ClearDisplay();
                LCD_Position(0, 0);
                LCD_PrintString("Mode: ");
                LCD_Position(1, 0);
                LCD_PrintString("Ampl: ");
                
                if (freqChanged) setFngFreq(newFreq, currentFng);
                if (shapeChanged) 
                {
                    char lcdBuffer[16];
                    setFngShape(newShape, currentFng);
                    LCD_Position(0, 6);
                    switch (newShape) {
                    case SQUARE:
                        sprintf(lcdBuffer, "%s, %d", "Square", currentFng->id);
                        break;
                    case SINE:
                        sprintf(lcdBuffer, "%s, %d", "Sine", currentFng->id);
                        break;
                    case TRIANGLE:
                        sprintf(lcdBuffer, "%s, %d", "Triangle", currentFng->id);
                        break;
                    case SAWTOOTH:
                        sprintf(lcdBuffer, "%s, %d", "Sawtooth", currentFng->id);
                        break;
                    case DC:
                        sprintf(lcdBuffer, "%s, %d", "DC", currentFng->id);
                        break;
                    }
                    
                    LCD_PrintString(lcdBuffer);
                }
                if (voltageChanged) {
                    char lcdBuffer[16];
                    setFngVoltage(newVoltage, currentFng);
                    
                    sprintf(lcdBuffer, "%d", newVoltage);
                    LCD_PrintString(lcdBuffer);
                    
                }
                if (pinChanged) setFngChannel(newPin, currentFng);
                currentCommand = ALERT;
                
                freqChanged = 0;
                shapeChanged = 0;
                voltageChanged = 0;
                pinChanged = 0;

                break;
            case INVALID_COMMAND:
                newFreq = 0;
                newVoltage = 0;
                newShape = SQUARE;
                newPin = 0;
                newFngOrScopeId = 0;
                newFngOrScopeOn = 0;
                newFngCommand = 0;
                newOscCommand = 0;
                
                currentFng = NULL;
                currentOsc = NULL;
                
                LED_1_Write(!LED_1_Read());
                currentCommand = ALERT;
                break;
        }
        
        wasDataReceived = 0;
        
        
        
        /*
        // SCOPE DATA
        // COMMENT THIS OUT


        LCD_Position(0, 0);
        LCD_PrintString("scope0State: ");
        LCD_Position(0, 13);
        LCD_PrintNumber(scope0State);
        
        LCD_Position(1, 0);
        LCD_PrintString("Vwiper: ");
        LCD_Position(1, 8);
        //LCD_PrintNumber(scope0State);
        
         
        switch (scope0State) {
        case 0: break;
        case 1:
            scope0RawBufferStartPtr = scope0RawBufferPtr++;
            scope0State = 2;
            break;
        case 2:
            // start over again if we're going to overflow the buffer
            if (scope0RawBufferPtr == scope0RawBufferStartPtr) {
                scope0State = 0;
            } else {
                if (Scope0_ADC_IsEndConversion(Scope0_ADC_RETURN_STATUS)) {
                    scope0RawBuffer[scope0RawBufferPtr] = Scope0_ADC_GetResult8();
                    scope0RawBufferPtr++;
                    if (scope0RawBufferPtr == 1200) {
                        scope0RawBufferPtr = 0;   
                    }
                }
            }
            break;
        case 3: {
            ISR_Scope0_Comp_Disable();
            int i;
            int bufSize;
            if (scope0RawBufferPtr < scope0RawBufferStartPtr) {
                bufSize = 1200 - (scope0RawBufferStartPtr -
                                    scope0RawBufferPtr);
            } else {
                bufSize = scope0RawBufferPtr - scope0RawBufferStartPtr;   
            }
            
            scope0RawBufferPtr = scope0RawBufferStartPtr;
            for (i = 0; i < bufSize; i++) {
                scope0SerialBuffer[i] = scope0RawBuffer[scope0RawBufferPtr];
                scope0RawBufferPtr++;
                if (scope0RawBufferPtr == 1200) {
                    scope0RawBufferPtr = 0;   
                }
            }
            
            scope0SerialBuffer[bufSize] = '\0';
            if (USBUART_GetConfiguration()) {
                if (USBUART_CDCIsReady()) {
                    char txBuf[50];
                    sprintf(txBuf, "%d\r\n", bufSize);
                    Serial_PutString(txBuf);
                    
                    Serial_PutString("Sending some ADC data...\r\n");
                    USBUART_PutData((uint8*)scope0SerialBuffer, bufSize);
                    Serial_PutString("Finished sending ADC data.\r\n\r\n");
                    
                }
            }
            scope0State = 0;
            ISR_Scope0_Comp_Enable();
        }
        }   
        
        */
        
    }
        
    
    return 0;
}
/* [] END OF FILE */
