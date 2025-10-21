/*******************************************************************************
  TCC Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_tcc0.c

  Summary
    TCC0 peripheral library source file.

  Description
    This file implements the interface to the TCC peripheral library.  This
    library provides access to and control of the associated peripheral
    instance.

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

/*  This section lists the other files that are included in this file.
*/
#include "interrupts.h"
#include "plib_tcc0.h"


/* Object to hold callback function and context */
volatile static TCC_CALLBACK_OBJECT TCC0_CallbackObj;

/* Initialize TCC module */
//void TCC0_PWMInitialize(void)
//{
//    /* Reset TCC */
//    TCC0_REGS->TCC_CTRLA = TCC_CTRLA_SWRST_Msk;
//    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_SWRST_Msk) != 0U)
//    {
//        /* Wait for sync */
//    }
//    /* Clock prescaler */
//    TCC0_REGS->TCC_CTRLA = TCC_CTRLA_PRESCALER_DIV1 
//                            | TCC_CTRLA_PRESCSYNC_PRESC ;
//    TCC0_REGS->TCC_WEXCTRL = TCC_WEXCTRL_OTMX(0UL);
//    /* Dead time configurations */
//    TCC0_REGS->TCC_WEXCTRL |= TCC_WEXCTRL_DTIEN0_Msk | TCC_WEXCTRL_DTIEN1_Msk | TCC_WEXCTRL_DTIEN2_Msk | TCC_WEXCTRL_DTIEN3_Msk
// 	 	 | TCC_WEXCTRL_DTLS(64UL) | TCC_WEXCTRL_DTHS(64UL);
//
//    TCC0_REGS->TCC_WAVE = TCC_WAVE_WAVEGEN_DSTOP;
//
//
//    /* Configure duty cycle values */
//    TCC0_REGS->TCC_CC[0] = 0U;
//    TCC0_REGS->TCC_CC[1] = 0U;
//    TCC0_REGS->TCC_CC[2] = 0U;
//    TCC0_REGS->TCC_CC[3] = 0U;
//    TCC0_REGS->TCC_PER = 2400U;
//
//
//    TCC0_REGS->TCC_INTENSET = TCC_INTENSET_OVF_Msk;
//
//    while (TCC0_REGS->TCC_SYNCBUSY != 0U)
//    {
//        /* Wait for sync */
//    }
//}


void TCC0_PWMInitialize(void) {
    // Reset the TCC0 module (or disable first before reconfiguring)
    TCC0_REGS->TCC_CTRLA = (uint32_t)0x1UL;
    
    // Wait for reset
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x1UL) != 0) {}
    
    // Set the PWM frequency to be 5000Hz = 5kHz
    
    // Setting waveform to be triangular waveform
    // With interrupt at beginning of cycle (timer=0)
    TCC0_REGS->TCC_WAVE = (uint32_t)0x5U;
    
    // Enabling dead-time
    TCC0_REGS->TCC_WEXCTRL |= (uint32_t)0xf00UL;
    
    // Setting the dead-time
    // Datasheets of the power device - Toff (1.5-2)
    uint32_t dt_val = 250U;
    uint32_t dtls_reg = dt_val << 16;
    uint32_t dths_reg = dt_val << 24;
    
    TCC0_REGS->TCC_WEXCTRL |= (dtls_reg | dths_reg);
    
    // uint32_t raw_dt_value = (uint32_t)0xfafa0000UL;
    // TCC0_REGS->TCC_WEXCTRL |= raw_dt_value;
    
    
    // Inverting upper output pins - WO[4] - WO[7]
    // TCC0_REGS->TCC_DRVCTRL = (uint32_t)0xf00000UL;
    
    // Wait for WAVE sync
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x40U) != 0 ) {}
    
    // Setup interrupt for OVF (timer=0)
    TCC0_REGS->TCC_INTENSET = (uint32_t)0x1UL;
    
    // Setting period
    TCC0_REGS->TCC_PER = 4800U;
    // Wait for write
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x80U) != 0 ) {}
    
    // Setting initial values for CC registers
    TCC0_REGS->TCC_CC[0] = 600U;
    // Wait for write
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x100U) != 0 ) {}
    TCC0_REGS->TCC_CC[1] = 1200U;
    // Wait for write
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x200U) != 0 ) {}
    TCC0_REGS->TCC_CC[2] = 2000U;
    // Wait for write
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x400U) != 0 ) {}
    TCC0_REGS->TCC_CC[3] = 3000U;
    // Wait for write
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x800U) != 0 ) {}
    
}


/* Start the PWM generation */
//void TCC0_PWMStart(void)
//{
//    TCC0_REGS->TCC_CTRLA |= TCC_CTRLA_ENABLE_Msk;
//    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_ENABLE_Msk) != 0U)
//    {
//        /* Wait for sync */
//    }
//}

void TCC0_PWMStart(void) {
    // Enable TCC0
    TCC0_REGS->TCC_CTRLA |= (uint32_t)0x2UL;
    
    // Wait for sync
    while ( (TCC0_REGS->TCC_SYNCBUSY & (uint32_t)0x2U) != 0 ) {}
}

/* Stop the PWM generation */
void TCC0_PWMStop (void)
{
    TCC0_REGS->TCC_CTRLA &= ~TCC_CTRLA_ENABLE_Msk;
    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_ENABLE_Msk) != 0U)
    {
        /* Wait for sync */
    }
}

/* Configure PWM period */
bool TCC0_PWM24bitPeriodSet (uint32_t period)
{
    bool status = false;
    if ((TCC0_REGS->TCC_STATUS & (TCC_STATUS_PERBUFV_Msk)) == 0U)
    {
        TCC0_REGS->TCC_PERBUF = period & 0xFFFFFFU;
        status = true;
    }    
    return status;
}


/* Read TCC period */
uint32_t TCC0_PWM24bitPeriodGet (void)
{
    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_PER_Msk) != 0U)
    {
        /* Wait for sync */
    }
    return (TCC0_REGS->TCC_PER & 0xFFFFFFU);
}

/* Configure dead time */
void TCC0_PWMDeadTimeSet (uint8_t deadtime_high, uint8_t deadtime_low)
{
    TCC0_REGS->TCC_WEXCTRL &= ~(TCC_WEXCTRL_DTHS_Msk | TCC_WEXCTRL_DTLS_Msk);
    TCC0_REGS->TCC_WEXCTRL |= TCC_WEXCTRL_DTHS((uint32_t)deadtime_high) | TCC_WEXCTRL_DTLS((uint32_t)deadtime_low);
}

bool TCC0_PWMPatternSet(uint8_t pattern_enable, uint8_t pattern_output)
{
    bool status = false;
    if ((TCC0_REGS->TCC_STATUS & (TCC_STATUS_PATTBUFV_Msk)) == 0U)
    {
        TCC0_REGS->TCC_PATTBUF = (uint16_t)(pattern_enable | ((uint32_t)pattern_output << 8U));
        status = true;
    }   
    return status; 
}



/* Get the current counter value */
uint32_t TCC0_PWM24bitCounterGet( void )
{
    /* Write command to force COUNT register read synchronization */
    TCC0_REGS->TCC_CTRLBSET |= (uint8_t)TCC_CTRLBSET_CMD_READSYNC;

    while((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_CTRLB_Msk) == TCC_SYNCBUSY_CTRLB_Msk)
    {
        /* Wait for Write Synchronization */
    }

    while((TCC0_REGS->TCC_CTRLBSET & TCC_CTRLBSET_CMD_Msk) != 0U)
    {
        /* Wait for CMD to become zero */
    }

    /* Read current count value */
    return TCC0_REGS->TCC_COUNT;
}

/* Set the counter*/
void TCC0_PWM24bitCounterSet (uint32_t countVal)
{
    TCC0_REGS->TCC_COUNT = countVal & 0xFFFFFFU;
    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_COUNT_Msk) != 0U)
    {
        /* Wait for sync */
    }
}

/* Enable forced synchronous update */
void TCC0_PWMForceUpdate(void)
{
    TCC0_REGS->TCC_CTRLBSET |= (uint8_t)TCC_CTRLBCLR_CMD_UPDATE;
    while ((TCC0_REGS->TCC_SYNCBUSY & TCC_SYNCBUSY_CTRLB_Msk) != 0U)
    {
        /* Wait for sync */
    }
}

/* Enable the period interrupt - overflow or underflow interrupt */
void TCC0_PWMPeriodInterruptEnable(void)
{
    TCC0_REGS->TCC_INTENSET = TCC_INTENSET_OVF_Msk;
}

/* Disable the period interrupt - overflow or underflow interrupt */
void TCC0_PWMPeriodInterruptDisable(void)
{
    TCC0_REGS->TCC_INTENCLR = TCC_INTENCLR_OVF_Msk;
}

 /* Register callback function */
void TCC0_PWMCallbackRegister(TCC_CALLBACK callback, uintptr_t context)
{
    TCC0_CallbackObj.callback_fn = callback;
    TCC0_CallbackObj.context = context;
}

  
/* Interrupt Handler */
//void __attribute__((used)) TCC0_InterruptHandler(void)
//{
//    uint32_t status;
//    /* Additional local variable to prevent MISRA C violations (Rule 13.x) */
//    uintptr_t context;
//    context = TCC0_CallbackObj.context;        
//    status = TCC0_REGS->TCC_INTFLAG;
//    /* Clear interrupt flags */
//    TCC0_REGS->TCC_INTFLAG = TCC_INTFLAG_Msk;
//    (void)TCC0_REGS->TCC_INTFLAG;
//    if (TCC0_CallbackObj.callback_fn != NULL)
//    {
//        TCC0_CallbackObj.callback_fn(status, context);
//    }
//
//}

void __attribute__((used)) TCC0_InterruptHandler(void) {
    // Clearing overflow flag in INTFLAG
    TCC0_REGS->TCC_INTFLAG = (uint32_t)0x1UL;
    uint32_t status = 0;
    uintptr_t context;
    context = TCC0_CallbackObj.context;
    TCC0_CallbackObj.callback_fn(status, context);
}



/**
 End of File
*/
