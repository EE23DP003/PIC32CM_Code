/*******************************************************************************
  Timer/Counter(TC4) PLIB

  Company
    Microchip Technology Inc.

  File Name
    plib_tc4.c

  Summary
    TC4 PLIB Implementation File.

  Description
    This file defines the interface to the TC peripheral library. This
    library provides access to and control of the associated peripheral
    instance.

  Remarks:
    None.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/* This section lists the other files that are included in this file.
*/

#include "interrupts.h"
#include "plib_tc4.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************

volatile static TC_TIMER_CALLBACK_OBJ TC4_CallbackObject;

// *****************************************************************************
// *****************************************************************************
// Section: TC4 Implementation
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Initialize the TC module in Timer mode */
//void TC4_TimerInitialize( void )
//{
//    /* Reset TC */
//    TC4_REGS->COUNT16.TC_CTRLA = TC_CTRLA_SWRST_Msk;
//
//    while((TC4_REGS->COUNT16.TC_SYNCBUSY & TC_SYNCBUSY_SWRST_Msk) == TC_SYNCBUSY_SWRST_Msk)
//    {
//        /* Wait for Write Synchronization */
//    }
//
//    /* Configure counter mode & prescaler */
//    TC4_REGS->COUNT16.TC_CTRLA = TC_CTRLA_MODE_COUNT16 | TC_CTRLA_PRESCALER_DIV1024 | TC_CTRLA_PRESCSYNC_PRESC ;
//
//    /* Configure in Match Frequency Mode */
//    TC4_REGS->COUNT16.TC_WAVE = (uint8_t)TC_WAVE_WAVEGEN_MPWM;
//
//    /* Configure timer period */
//    TC4_REGS->COUNT16.TC_CC[0U] = 46874U;
//
//    /* Clear all interrupt flags */
//    TC4_REGS->COUNT16.TC_INTFLAG = (uint8_t)TC_INTFLAG_Msk;
//
//    TC4_CallbackObject.callback = NULL;
//    /* Enable interrupt*/
//    TC4_REGS->COUNT16.TC_INTENSET = (uint8_t)(TC_INTENSET_OVF_Msk);
//
//
//    while((TC4_REGS->COUNT16.TC_SYNCBUSY) != 0U)
//    {
//        /* Wait for Write Synchronization */
//    }
//}

void TC4_TimerInitialize( void ) {
    // Reset our TC module
    TC4_REGS->COUNT16.TC_CTRLA = (uint32_t) 0x1UL;
    
    // Wait for reset to sync
    while ( (TC4_REGS->COUNT16.TC_SYNCBUSY & (uint32_t) 0x1U) != 0 ) {}
    
    // Set 16bit mode
    uint32_t set_mode_16bit = (uint32_t) 0x0UL;
    
    // Set pre-sync to prescale clock
    uint32_t set_presync = (uint32_t) 0x10UL;
    
    // TC3 should count 0.001s
    uint32_t prescale = (uint32_t) 0x0UL;
    
    TC4_REGS->COUNT16.TC_CTRLA = (set_mode_16bit | set_presync | prescale);
    
    // Waveform to be Match Frequency
    TC4_REGS->COUNT16.TC_WAVE = (uint8_t) 0x1U;
    
    // Setting the period to be 0.001s
    TC4_REGS->COUNT16.TC_CC[0] = 47999UL;
    
    // Wait for CC0 sync
    while ( (TC4_REGS->COUNT16.TC_SYNCBUSY & (uint32_t) 0x40U) != 0 ) {}
    
    // Set interrupt on overflow (end of cycle)
    TC4_REGS->COUNT16.TC_INTENSET = (uint8_t) 0x1U;
}

/* Enable the TC counter */
//void TC4_TimerStart( void )
//{
//    TC4_REGS->COUNT16.TC_CTRLA |= TC_CTRLA_ENABLE_Msk;
//    while((TC4_REGS->COUNT16.TC_SYNCBUSY & TC_SYNCBUSY_ENABLE_Msk) == TC_SYNCBUSY_ENABLE_Msk)
//    {
//        /* Wait for Write Synchronization */
//    }
//}

void TC4_TimerStart( void ) {
    TC4_REGS->COUNT16.TC_CTRLA |=  (uint32_t)0x2UL;
    while ( (TC4_REGS->COUNT16.TC_SYNCBUSY & (uint32_t)0x2U) != 0) {}
}

/* Register callback function */
void TC4_TimerCallbackRegister( TC_TIMER_CALLBACK callback, uintptr_t context )
{
    TC4_CallbackObject.callback = callback;

    TC4_CallbackObject.context = context;
}

/* Timer Interrupt handler */
//void __attribute__((used)) TC4_TimerInterruptHandler( void )
//{
//    if (TC4_REGS->COUNT16.TC_INTENSET != 0U)
//    {
//        TC_TIMER_STATUS status;
//        status = (TC_TIMER_STATUS) TC4_REGS->COUNT16.TC_INTFLAG;
//        /* Clear interrupt flags */
//        TC4_REGS->COUNT16.TC_INTFLAG = (uint8_t)TC_INTFLAG_Msk;
//        if((TC4_CallbackObject.callback != NULL) && (status != TC_TIMER_STATUS_NONE))
//        {
//            uintptr_t context = TC4_CallbackObject.context;
//            TC4_CallbackObject.callback(status, context);
//        }
//    }
//}

void __attribute__((used)) TC4_TimerInterruptHandler( void )
{
    TC4_REGS->COUNT16.TC_INTFLAG = (uint8_t)TC_INTFLAG_Msk;
    TC4_REGS->COUNT16.TC_INTFLAG = (uint8_t)0x1U;
    TC_TIMER_STATUS status = 0;
    uintptr_t context = TC4_CallbackObject.context;
    TC4_CallbackObject.callback(status, context);
}

