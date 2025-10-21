/*******************************************************************************
 CLOCK PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_clock.c

  Summary:
    CLOCK PLIB Implementation File.

  Description:
    None

*******************************************************************************/

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

#include "plib_clock.h"
#include "device.h"
#include "interrupts.h"


//static void OSCCTRL_Initialize(void)
//{
//    uint32_t calibValue = (uint32_t)(((*(uint64_t*)0x00806020UL) >> 19 ) & 0x3fffffUL);
//    OSCCTRL_REGS->OSCCTRL_CAL48M = calibValue;
//
//
//    /* Selection of the Division Value */
//    OSCCTRL_REGS->OSCCTRL_OSC48MDIV = (uint8_t)OSCCTRL_OSC48MDIV_DIV(0UL);
//
//    while((OSCCTRL_REGS->OSCCTRL_OSC48MSYNCBUSY & OSCCTRL_OSC48MSYNCBUSY_OSC48MDIV_Msk) == OSCCTRL_OSC48MSYNCBUSY_OSC48MDIV_Msk)
//    {
//        /* Waiting for the synchronization */
//    }
//
//    while((OSCCTRL_REGS->OSCCTRL_STATUS & OSCCTRL_STATUS_OSC48MRDY_Msk) != OSCCTRL_STATUS_OSC48MRDY_Msk)
//    {
//        /* Waiting for the OSC48M Ready state */
//    }
//    OSCCTRL_REGS->OSCCTRL_OSC48MCTRL |= OSCCTRL_OSC48MCTRL_ONDEMAND_Msk;
//     
//}


static void OSCCTRL_Initialize(void) {
    
    // Copy calibration value from special memory location into CAL48M
    uint32_t calib_value = (uint32_t) (((*(uint64_t*) 0x00806020UL) >> 19) & (0x3fffffUL));
    OSCCTRL_REGS->OSCCTRL_CAL48M = calib_value;
    // Update DIV
    OSCCTRL_REGS->OSCCTRL_OSC48MDIV = (uint8_t) 0x0;
    // Wait for synchronization
    while (OSCCTRL_REGS->OSCCTRL_OSC48MSYNCBUSY != 0) {}
    // Wait for oscillator to be ready
    while ( ( OSCCTRL_REGS->OSCCTRL_STATUS & ((uint32_t) 0x01U) ) != 0) {}
    
}

//static void OSC32KCTRL_Initialize(void)
//{
//    OSC32KCTRL_REGS->OSC32KCTRL_OSC32K = 0x0UL;
//
//    OSC32KCTRL_REGS->OSC32KCTRL_RTCCTRL = OSC32KCTRL_RTCCTRL_RTCSEL(0UL);
//}


static void OSC32KCTRL_Initialize(void) {
    // Copy calibration value from special memory location into CAL48M
    uint32_t calib_value_from_memory = (uint32_t) (((*(uint64_t*) 0x00806020UL) >> 12) & (0x7fUL));
    uint32_t calib_value = (uint32_t) ( calib_value_from_memory << 16 );
    
    // Enable the 32k oscillator and the module
    uint32_t enable_bits = (uint32_t) 0x6U;
    
    // Config value
    uint32_t config_value = (uint32_t) (calib_value | enable_bits);
    
    OSC32KCTRL_REGS->OSC32KCTRL_OSC32K = config_value;
    
    // Wait for the 32.768kHz oscillator to be ready
    while ( ( OSC32KCTRL_REGS->OSC32KCTRL_STATUS & (uint32_t) (0x2U) ) == 0 ) {}
    
}



//static void GCLK0_Initialize(void)
//{
//
//    GCLK_REGS->GCLK_GENCTRL[0] = GCLK_GENCTRL_DIV(1UL) | GCLK_GENCTRL_SRC(6UL) | GCLK_GENCTRL_GENEN_Msk;
//
//    while((GCLK_REGS->GCLK_SYNCBUSY & GCLK_SYNCBUSY_GENCTRL0_Msk) == GCLK_SYNCBUSY_GENCTRL0_Msk)
//    {
//        /* wait for the Generator 0 synchronization */
//    }
//}


static void GCLK0_Initialize(void) {
    // Select source to be 48MHz
    uint32_t src_selection = (uint32_t) 0x6U;
    
    // Enable GCLK Generator 0
    uint32_t en_gen0 = (uint32_t) 0x100U;
    
    // Division factor to be 1
    uint32_t div_factor = (uint32_t) 0x0U;
    
    GCLK_REGS->GCLK_GENCTRL[0] = (src_selection | en_gen0 | div_factor);
    
    // Wait for sync
    while ( (GCLK_REGS->GCLK_SYNCBUSY & (uint32_t) 0x4U ) != 0)  {}
}


static void GCLK1_Initialize(void) {
    // Select source to be 32kHz
    uint32_t src_selection = (uint32_t) 0x4U;
    
    // Enable GCLK Generator 0
    uint32_t en_gen0 = (uint32_t) 0x100U;
    
    // Division factor to be 1
    uint32_t div_factor = (uint32_t) 0x0U;
    
    GCLK_REGS->GCLK_GENCTRL[1] = (src_selection | en_gen0 | div_factor);
    
    // Wait for sync
    while ( (GCLK_REGS->GCLK_SYNCBUSY & (uint32_t) 0x8U ) != 0)  {}    
}


static void enable_peripheral_channels(void) {
    // Enable TC0 to TC4 through GCLK Generators
    
    // TC0-TC1 use GCLK Generator 1 - 32kHz
    GCLK_REGS->GCLK_PCHCTRL[25] = (uint32_t) 0x41U;
    
    // TC2 & TC3 use GCLK Generator 0 - 48 MHz
    GCLK_REGS->GCLK_PCHCTRL[26] = (uint32_t) 0x40U;
    
    // TC4 uses GCLK Generator 0 - 48MHz
    GCLK_REGS->GCLK_PCHCTRL[27] = (uint32_t) 0x40U;
}

static void enable_apbc_clocks(void) {
    // Enable TC0 to TC4 in APBCMASK
    MCLK_REGS->MCLK_APBCMASK = (uint32_t) 0x1f000U;
}


//void CLOCK_Initialize (void)
//{
//    /* Function to Initialize the Oscillators */
//    OSCCTRL_Initialize();
//
//    /* Function to Initialize the 32KHz Oscillators */
//    OSC32KCTRL_Initialize();
//
//    GCLK0_Initialize();
//
//
//    /* Selection of the Generator and write Lock for EIC */
//    GCLK_REGS->GCLK_PCHCTRL[2] = GCLK_PCHCTRL_GEN(0x0UL)  | GCLK_PCHCTRL_CHEN_Msk;
//
//    while ((GCLK_REGS->GCLK_PCHCTRL[2] & GCLK_PCHCTRL_CHEN_Msk) != GCLK_PCHCTRL_CHEN_Msk)
//    {
//        /* Wait for synchronization */
//    }
//    /* Selection of the Generator and write Lock for SERCOM1_CORE */
//    GCLK_REGS->GCLK_PCHCTRL[20] = GCLK_PCHCTRL_GEN(0x0UL)  | GCLK_PCHCTRL_CHEN_Msk;
//
//    while ((GCLK_REGS->GCLK_PCHCTRL[20] & GCLK_PCHCTRL_CHEN_Msk) != GCLK_PCHCTRL_CHEN_Msk)
//    {
//        /* Wait for synchronization */
//    }
//
//
//
//    /* Configure the APBC Bridge Clocks */
//    MCLK_REGS->MCLK_APBCMASK = 0x4U;
//
//
//}


void CLOCK_Initialize (void)
{
    // Setup 48MHz oscillator and 32.768kHz oscillator
    OSCCTRL_Initialize();
    OSC32KCTRL_Initialize();
    
    // Setup GCLK Generator 0 and GCLK Generator 1
    // Feed 48 MHz clock to GCLK Generator 0 and 32kHz to GCLK Generator 1
    GCLK0_Initialize();
    GCLK1_Initialize();
    
    // Configure PCHCTRL such that TC0 to TC4
    enable_peripheral_channels();
    
    // Enable TC0 to TC4 on APBCMASK in Main Clock Controller
    enable_apbc_clocks();
}



