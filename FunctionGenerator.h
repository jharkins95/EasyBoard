/* ========================================
 *
 * Copyright 2016 John Harkins and Li He
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include "Generated_Source/PSoC5/cytypes.h"
#include "Generated_Source/PSoC5/cyfitter.h"

// Waveform types
typedef enum {
    SQUARE,
    SINE,
    TRIANGLE,
    SAWTOOTH,
    DC,
} FngShape;

// Waveform data
#define MAX_NUM_SAMPLES 4000

// WaveDAC to select
#define WAVEDAC_LOW_0 0
#define WAVEDAC_HIGH_0 1
#define WAVEDAC_LOW_1 2
#define WAVEDAC_HIGH_1 3

// WaveDAC clocks
#define LOW_DIVIDER_REGISTER 119
#define HIGH_DIVIDER_REGISTER 5
#define WAVEDAC_CLOCK_LOW_FREQ 200000
#define WAVEDAC_CLOCK_HIGH_FREQ 4000000

#define FREQ_LOWER_LIMIT 50
#define FREQ_UPPER_LIMIT 100000

#define PI 3.14159265

// Function prototypes
void StopWaveDac(int fnGenerator);
void StartWaveDac(int numSamples, int fnGenerator, uint8 *waveform);
void SetSquare(int numSamples, uint8 voltage, uint8 *currentWaveform);
void SetSine(int numSamples, uint8 voltage, uint8 *currentWaveform);
void SetTriangle(int numSamples, uint8 voltage, uint8 *currentWaveform);
void SetSawtooth(int numSamples, uint8 voltage, uint8 *currentWaveform);
void SetDC(int numSamples, uint8 voltage, uint8 *currentWaveform);
void SetWaveform(int numSamples, int mode, uint8 voltage, uint8 *currentWaveform);
uint8 *GetCurrentWaveform(int fnGenerator);
int ChangeFrequency(int freq, int mode, uint8 voltage, int waveDacId);

/* [] END OF FILE */
