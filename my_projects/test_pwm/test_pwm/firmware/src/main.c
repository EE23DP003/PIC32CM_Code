/*
 * Project is to demonstrate the TCC0 module
 * Generate PWM pulses on different GPIO pins (WO)
 * Insert a dead-time between pins that are intended for a converter leg
 * Pins are PA8, PA9, PA10, PA11, PA14, PA15, PA16, PA17
*/

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// TCC0 ISR - overflow interrupt
void TCC0_ISR(uint32_t status, uintptr_t context) {
    // control algorithm - start ADC
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    // Register ISR
    TCC0_PWMCallbackRegister(TCC0_ISR, (uintptr_t)NULL);
    
    // Enable TCC0 module
    TCC0_PWMStart();
    
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

