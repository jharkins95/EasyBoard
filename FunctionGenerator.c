/* ========================================
 *
 * Copyright 2016 John Harkins and Li He
 * All Rights Reserved
 *
 * ========================================
*/

#include <math.h>
#include "FunctionGenerator.h"

extern void WaveDAC_0_Clock_SetDividerRegister(uint16 clkDivider, uint8 restart);
extern void WaveDAC_1_Clock_SetDividerRegister(uint16 clkDivider, uint8 restart);
extern void WaveDAC_0_Stop();
extern void WaveDAC_1_Stop();
extern void WaveDAC_0_StartEx(const uint8 * wavePtr1, uint16 sampleSize1, 
                                   const uint8 * wavePtr2, uint16 sampleSize2);
extern void WaveDAC_1_StartEx(const uint8 * wavePtr1, uint16 sampleSize1, 
                                   const uint8 * wavePtr2, uint16 sampleSize2);

uint8 waveform0[MAX_NUM_SAMPLES];
uint8 waveform1[MAX_NUM_SAMPLES];


/*******************************************************************************
* Function Name: StopWaveDac
********************************************************************************
*
* Summary
*  Turns off the waveform for the specified function generator
*
* Parameters:
*  fnGenerator - the index of the function generator to be stopped
*
* Return:
*  None.
*
*******************************************************************************/
void StopWaveDac(int fnGenerator)
{
    if (fnGenerator == 0) {
        WaveDAC_0_Stop();
    } else if (fnGenerator == 1) {
        WaveDAC_1_Stop();
    }   
}


/*******************************************************************************
* Function Name: StartWaveDac
********************************************************************************
*
* Summary
*  Starts waveform generation on a specified WaveDAC
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  fnGenerator - the index of the function generator to be started
*  waveform - the raw array of waveform samples
*
* Return:
*  None.
*
*******************************************************************************/
void StartWaveDac(int numSamples, int fnGenerator, uint8 *waveform)
{    
    switch (fnGenerator) {
        case WAVEDAC_LOW_0:
            WaveDAC_0_Clock_SetDividerRegister(LOW_DIVIDER_REGISTER, 1);
            WaveDAC_0_StartEx(waveform, numSamples, NULL, 0);
            break;
        case WAVEDAC_HIGH_0:
            WaveDAC_0_Clock_SetDividerRegister(HIGH_DIVIDER_REGISTER, 1);
            WaveDAC_0_StartEx(waveform, numSamples, NULL, 0);
            break;
        case WAVEDAC_LOW_1:
            WaveDAC_1_Clock_SetDividerRegister(LOW_DIVIDER_REGISTER, 1);
            WaveDAC_1_StartEx(waveform, numSamples, NULL, 0);
            break;
        case WAVEDAC_HIGH_1:
            WaveDAC_1_Clock_SetDividerRegister(HIGH_DIVIDER_REGISTER, 1);
            WaveDAC_1_StartEx(waveform, numSamples, NULL, 0);
            break;
    }    
}


/*******************************************************************************
* Function Name: SetSquare
********************************************************************************
*
* Summary
*  Sets currentWaveform as a square wave with 50% duty cycle
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetSquare(int numSamples, uint8 voltage, uint8 *currentWaveform)
{
    int i;
    for (i = 0; i < numSamples; i++) {
        if (i < numSamples / 2) {
            currentWaveform[i] = voltage;
        }
        else {
            currentWaveform[i] = 0;   
        }
    }
}


/*******************************************************************************
* Function Name: SetSine
********************************************************************************
*
* Summary
*  Sets currentWaveform as a sine wave
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetSine(int numSamples, uint8 voltage, uint8 *currentWaveform)
{
    int i;
    for (i = 0; i < numSamples; i++) {
        currentWaveform[i] = voltage / 2 + (voltage / 2 - 1) * 
            sin((2 * PI * i) / numSamples);   
    }
}

/*******************************************************************************
* Function Name: SetTriangle
********************************************************************************
*
* Summary
*  Sets currentWaveform as a triangle wave
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetTriangle(int numSamples, uint8 voltage, uint8 *currentWaveform)
{
    int i;
    for (i = 0; i < numSamples; i++) {
        if (i < numSamples / 2) {
            currentWaveform[i] = voltage * (1.0 * i / (numSamples / 2.0));
        } else {
            currentWaveform[i] = voltage * (1.0 * (numSamples - i) / (numSamples / 2.0));
        }
    }
}

/*******************************************************************************
* Function Name: SetSawtooth
********************************************************************************
*
* Summary
*  Sets currentWaveform as a sawtooth wave
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetSawtooth(int numSamples, uint8 voltage, uint8 *currentWaveform)
{
    int i;
    for (i = 0; i < numSamples; i++) {
        currentWaveform[i] = voltage * (1.0 * i / numSamples);   
    }
}

/*******************************************************************************
* Function Name: SetSine
********************************************************************************
*
* Summary
*  Sets currentWaveform as a DC signal (no variation)
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetDC(int numSamples, uint8 voltage, uint8 *currentWaveform)
{
    int i;
    for (i = 0; i < numSamples; i++) {
        currentWaveform[i] = voltage;
    }    
}

/*******************************************************************************
* Function Name: SetWaveform
********************************************************************************
*
* Summary
*  Sets currentWaveform as a wave with the specified shape (mode)
*
* Parameters:
*  numSamples - the number of samples (number of elements in waveform)
*  mode - the waveform type (square, sine, triangle, sawtooth, or DC)
*  currentWaveform - the raw array of waveform samples to be filled
*
* Return:
*  None.
*
*******************************************************************************/
void SetWaveform(int numSamples, int mode, uint8 voltage, uint8 *currentWaveform) 
{
    switch (mode) {
        case SQUARE:
            SetSquare(numSamples, voltage, currentWaveform);
            break;
        case SINE:
            SetSine(numSamples, voltage, currentWaveform);
            break;
        case TRIANGLE:
            SetTriangle(numSamples, voltage, currentWaveform);
            break;
        case SAWTOOTH:
            SetSawtooth(numSamples, voltage, currentWaveform);
            break;
        case DC:
            SetDC(numSamples, voltage, currentWaveform);
            break;
    }
}

/*******************************************************************************
* Function Name: GetCurrentWaveform
********************************************************************************
*
* Summary
*  Retrieves the waveform currently loaded into fnGenerator
*
* Parameters:
*  fnGenerator - the function generator to be queried
*
* Return:
*  an array of uint8 containing the raw samples
*
*******************************************************************************/
uint8 *GetCurrentWaveform(int fnGenerator)
{
    switch (fnGenerator) {
        case WAVEDAC_LOW_0:
        case WAVEDAC_HIGH_0:
            return waveform0;
        case WAVEDAC_LOW_1:
        case WAVEDAC_HIGH_1:
            return waveform1;
        default:
            return NULL;
    }
}

/*******************************************************************************
* Function Name: ChangeFrequency
********************************************************************************
*
* Summary
*  Stops the selected WaveDAC, modifies its array of samples according to the
*  desired frequency, and starts the DAC again.
*
* Parameters:
*  freq - the desired frequency
*
* Return:
*  The new frequency, or -1 if the desired frequency was invalid
*
*******************************************************************************/
int ChangeFrequency(int freq, int mode, uint8 voltage, int waveDacId)
{
    int fnGenerator, numSamples;
    uint8 *currentWaveform;
    uint8 voltage255;
    
    if (freq < FREQ_LOWER_LIMIT) {
        freq = FREQ_LOWER_LIMIT;
    } else if (freq > FREQ_UPPER_LIMIT) {
        freq = FREQ_UPPER_LIMIT;
    }
    
    if (freq < 2000) {
        if (waveDacId == 0) {
            fnGenerator = WAVEDAC_LOW_0;
        } else if (waveDacId == 1) {
            fnGenerator = WAVEDAC_LOW_1;
        }
        numSamples = WAVEDAC_CLOCK_LOW_FREQ / freq;
    } else {
        if (waveDacId == 0) {
            fnGenerator = WAVEDAC_HIGH_0;
        } else if (waveDacId == 1) {
            fnGenerator = WAVEDAC_HIGH_1;
        }
        numSamples = WAVEDAC_CLOCK_HIGH_FREQ / freq;
    }
    
    voltage255 = voltage * (255.0 / 100.0);
    currentWaveform = GetCurrentWaveform(fnGenerator);
    if (currentWaveform != NULL) {
        StopWaveDac(waveDacId);
        SetWaveform(numSamples, mode, voltage255, currentWaveform);
        StartWaveDac(numSamples, fnGenerator, currentWaveform);
        return freq;
    }
    
    return -1;
}

/* [] END OF FILE */
