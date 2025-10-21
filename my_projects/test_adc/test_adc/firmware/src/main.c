/*
 * Project is to demonstrate the TCC0-ADC module
 * Generate PWM pulses on different GPIO pins (WO)
 * Insert a dead-time between pins that are intended for a converter leg
 * Pins are PA8, PA9, PA10, PA11, PA14, PA15, PA16, PA17
 * Accept two analog inputs on two analog input pins
 * Sample these analog inputs once every PWM cycle
 * Potentially launch a dummy control code after collecting all signals
 * Pins for analog inputs - PA2 (AIN[0]) and PA3 (AIN[1])
 * 
 * Generate two analog signals
 * Two GPIO pins as output pins - 50Hz waveform
 * PA24 and PA25 will be output pins
*/

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


uint16_t conv_values[2];
double control_values[2];
int seq_counter = 0;

// TCC0 ISR - overflow interrupt
void TCC0_ISR(uint32_t status, uintptr_t context) {
    // control algorithm - start ADC
    ADC0_REGS->ADC_SWTRIG = (uint8_t)0x2U;
    
    while ( (ADC0_REGS->ADC_SYNCBUSY & (uint16_t)0x400U) != 0) {}
}

void TC0_ISR(TC_TIMER_STATUS status, uintptr_t context) {
    // Toggle GPIO PA24 and PA25
    PORT_REGS->GROUP[0].PORT_OUTTGL = (uint32_t)0x3000000UL;
}

void ADC0_ISR(ADC_STATUS status, uintptr_t context) {
    // Read the result values
    // After the result values - execute control
    
    // ADC SOC - Pick every channel from bits in the SEQCTRL register
    // Sample and hold
    // Convert - store the result in the result register
    // Trigger interrupt
    conv_values[seq_counter] = ADC0_REGS->ADC_RESULT & (uint16_t)0xfff;
    seq_counter++;
    if (seq_counter > 1) {
        // Collected all our samples (2)
        seq_counter = 0;
        // Done with measurements and we can start control
        
        // Converted values have to be scaled to signal values
        // ADC has a range of 0 to 3.3V - 12-bit resolutions
        // 3.3V - result will be 4095
        control_values[0] = 3.3 * conv_values[0] / 4095.0;
        control_values[1] = 3.3 * conv_values[1] / 4095.0;
        
        // Current measurement - hall-effect sensor - gain factor
        
        // If control_values[0] (AIN[0]) > 1.5 - set a GPIO pin else reset the GPIO pin
        if (control_values[0] > 2) {
            PORT_REGS->GROUP[0].PORT_OUTSET = (uint32_t)0x10UL;
        } else {
            PORT_REGS->GROUP[0].PORT_OUTCLR = (uint32_t)0x10UL;
        }
        
        if (control_values[1] > 1.5) {
            PORT_REGS->GROUP[0].PORT_OUTSET = (uint32_t)0x20UL;
        } else {
            PORT_REGS->GROUP[0].PORT_OUTCLR = (uint32_t)0x20UL;
        }
    }
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    // Register ISR
    TCC0_PWMCallbackRegister(TCC0_ISR, (uintptr_t)NULL);
    TC0_TimerCallbackRegister(TC0_ISR, (uintptr_t)NULL);
    ADC0_CallbackRegister(ADC0_ISR, (uintptr_t)NULL);
    
    // Enable TCC0 module
    TCC0_PWMStart();
    // Enable TC0 module
    TC0_TimerStart();
    // Enable ADC0 module
    ADC0_Enable();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
    }

    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

