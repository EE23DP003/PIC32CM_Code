/*
 * Project to make LEDs glow that are connected to GPIO pins
 * Pins are PA8, PA9 and PA10
*/

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// Functions to drive PA8, PA9 and PA10 high
void drive_PA8_high(void) {
    PORT_REGS->GROUP[0].PORT_OUTSET = (uint32_t) 0x100U;
}

void drive_PA9_high(void) {
    PORT_REGS->GROUP[0].PORT_OUTSET = (uint32_t) 0x200U;
}

void drive_PA10_high(void) {
    PORT_REGS->GROUP[0].PORT_OUTSET = (uint32_t) 0x400U;
}

// Functions to drive PA8, PA9 and PA10 low
void drive_PA8_low(void) {
    PORT_REGS->GROUP[0].PORT_OUTCLR = (uint32_t) 0x100U;
}

void drive_PA9_low(void) {
    PORT_REGS->GROUP[0].PORT_OUTCLR = (uint32_t) 0x200U;
}

void drive_PA10_low(void) {
    PORT_REGS->GROUP[0].PORT_OUTCLR = (uint32_t) 0x400U;
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    drive_PA8_high();
    drive_PA9_low();
    drive_PA10_high();
    
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

