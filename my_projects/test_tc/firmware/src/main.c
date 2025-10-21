/*
 * Project to make LEDs/GPIO flash that are connected to GPIO pins
 * Pins are PA8, PA9, PA10 and PA11
 * TCO -> 30s, 32KHz, 32 bit mode
 * TC1 -> client to TC0 since TC0 is in 32 bit mode
 * TC2 -> 0.5s, 48MHz, 1024 pre-scaler, 16 bit mode
 * TC3 -> 1s, 48MHz, 1024 pre-scaler, 16 bit mode
 * TC4 -> 0.001s, 48MHZ, 16 bit mode
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

void drive_PA8_toggle(void) {
    PORT_REGS->GROUP[0].PORT_OUTTGL = (uint32_t) 0x100U;
}

void drive_PA9_toggle(void) {
    PORT_REGS->GROUP[0].PORT_OUTTGL = (uint32_t) 0x200U;
}

void drive_PA10_toggle(void) {
    PORT_REGS->GROUP[0].PORT_OUTTGL = (uint32_t) 0x400U;
}

void drive_PA11_toggle(void) {
    PORT_REGS->GROUP[0].PORT_OUTTGL = (uint32_t) 0x800U;
}

void TC0_ISR(TC_TIMER_STATUS status, uintptr_t context) {
    drive_PA8_toggle();
}

void TC2_ISR(TC_TIMER_STATUS status, uintptr_t context) {
    drive_PA9_toggle();
}

void TC3_ISR(TC_TIMER_STATUS status, uintptr_t context) {
    drive_PA10_toggle();
}

void TC4_ISR(TC_TIMER_STATUS status, uintptr_t context) {
    drive_PA11_toggle();
}


int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    TC0_TimerCallbackRegister(TC0_ISR, (uintptr_t)NULL);
    TC2_TimerCallbackRegister(TC2_ISR, (uintptr_t)NULL);
    TC3_TimerCallbackRegister(TC3_ISR, (uintptr_t)NULL);
    TC4_TimerCallbackRegister(TC4_ISR, (uintptr_t)NULL);
    
    TC0_TimerStart();
    TC2_TimerStart();
    TC3_TimerStart();
    TC4_TimerStart();
    
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

