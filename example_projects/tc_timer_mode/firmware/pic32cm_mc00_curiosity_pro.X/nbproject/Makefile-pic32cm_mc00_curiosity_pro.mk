#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32cm_mc00_curiosity_pro.mk)" "nbproject/Makefile-local-pic32cm_mc00_curiosity_pro.mk"
include nbproject/Makefile-local-pic32cm_mc00_curiosity_pro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32cm_mc00_curiosity_pro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_mc00_curiosity_pro/initialization.c ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/676635429/plib_clock.o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ${OBJECTDIR}/_ext/160764554/plib_port.o ${OBJECTDIR}/_ext/706311864/plib_tc0.o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ${OBJECTDIR}/_ext/1997885285/initialization.o ${OBJECTDIR}/_ext/1997885285/interrupts.o ${OBJECTDIR}/_ext/1997885285/exceptions.o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/676635429/plib_clock.o.d ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/160764554/plib_port.o.d ${OBJECTDIR}/_ext/706311864/plib_tc0.o.d ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d ${OBJECTDIR}/_ext/1997885285/initialization.o.d ${OBJECTDIR}/_ext/1997885285/interrupts.o.d ${OBJECTDIR}/_ext/1997885285/exceptions.o.d ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/676635429/plib_clock.o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ${OBJECTDIR}/_ext/160764554/plib_port.o ${OBJECTDIR}/_ext/706311864/plib_tc0.o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ${OBJECTDIR}/_ext/1997885285/initialization.o ${OBJECTDIR}/_ext/1997885285/interrupts.o ${OBJECTDIR}/_ext/1997885285/exceptions.o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_mc00_curiosity_pro/initialization.c ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32cm_mc00_curiosity_pro.mk ${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CM1216MC00048
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32cm_mc00_curiosity_pro\PIC32CM1216MC00048.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/676635429/plib_clock.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/ac273c69af2813de9c274f015711202e5a6bd68a .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/676635429" 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/676635429/plib_clock.o.d" -o ${OBJECTDIR}/_ext/676635429/plib_clock.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/678784915/plib_evsys.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/bf6ff4dbc11c22af0d375479242bd93cd43422c1 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678784915" 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/678784915/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160711403/plib_nvic.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/116a1913d614d7269092f94309a16bf3e7ee1467 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160711403" 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160711403/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/bcb6e623bd10c394bc78e3e5dcd52865d131294d .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1131319065" 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160764554/plib_port.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/4bd0550b3a44d2a430764f18c65f6945edbd8b0e .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160764554" 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160764554/plib_port.o.d" -o ${OBJECTDIR}/_ext/160764554/plib_port.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/706311864/plib_tc0.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/fbef892063610ff30cb947332e98c12bb70492e1 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/706311864" 
	@${RM} ${OBJECTDIR}/_ext/706311864/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/706311864/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/706311864/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/706311864/plib_tc0.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1429341023/xc32_monitor.o: ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/68d23d50f69e5ed1598d7430be62a3d0a02d010d .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1429341023" 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/initialization.o: ../src/config/pic32cm_mc00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/c3cc19ea74fda58df305502ef5339d04e36101e0 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/initialization.o.d" -o ${OBJECTDIR}/_ext/1997885285/initialization.o ../src/config/pic32cm_mc00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/interrupts.o: ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/401696251abe9304e5da5d29c6f185fcfcd5f98f .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/interrupts.o.d" -o ${OBJECTDIR}/_ext/1997885285/interrupts.o ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/exceptions.o: ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/b40bdb4f036eecad38378807cb8ff9693ddada0b .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/exceptions.o.d" -o ${OBJECTDIR}/_ext/1997885285/exceptions.o ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/startup_xc32.o: ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/8d7c66a2121ca99a2d2ccd74145523e2be820dce .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/libc_syscalls.o: ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/3c1108b1a719f09e76d9dbdf3e57ec3bb3a26096 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/2f36aecd520cdf1bb8c6a9dac8f9793adc10ed28 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/676635429/plib_clock.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/7bff73641cc87b494421834fd73cf920d9cc5060 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/676635429" 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/676635429/plib_clock.o.d" -o ${OBJECTDIR}/_ext/676635429/plib_clock.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/678784915/plib_evsys.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/6081c170a424b2f055ab8eb5dccd86d324f078ac .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678784915" 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/678784915/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160711403/plib_nvic.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/f23dcb741751c2ee58fd3e490e01a8959fe70705 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160711403" 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160711403/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/c589c1d734eb1f4f7bc3d187727b01b66648fc11 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1131319065" 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160764554/plib_port.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/21fbdcf3d2bc087d529358a36c6517eba1cefd18 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160764554" 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160764554/plib_port.o.d" -o ${OBJECTDIR}/_ext/160764554/plib_port.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/706311864/plib_tc0.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/20c494965291add6f44fceb499675b8373cd3b09 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/706311864" 
	@${RM} ${OBJECTDIR}/_ext/706311864/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/706311864/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/706311864/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/706311864/plib_tc0.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tc/plib_tc0.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1429341023/xc32_monitor.o: ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/c26449eac01395163c16ae51a435322acff9d40f .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1429341023" 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/initialization.o: ../src/config/pic32cm_mc00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/a3faae974ea4e1e7bff3c0de9b4cba57b5486bf6 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/initialization.o.d" -o ${OBJECTDIR}/_ext/1997885285/initialization.o ../src/config/pic32cm_mc00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/interrupts.o: ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/66fa59daa8ef03df10ef562f27f8543b32ebc7a4 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/interrupts.o.d" -o ${OBJECTDIR}/_ext/1997885285/interrupts.o ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/exceptions.o: ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/c19777f9a0be4701439aef2ed5ceba7412884572 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/exceptions.o.d" -o ${OBJECTDIR}/_ext/1997885285/exceptions.o ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/startup_xc32.o: ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/9f80f3f58e95cd4a37545d05522767c129735a84 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/libc_syscalls.o: ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/b78b08d17ce1da2d28166d006436767e9f09c215 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/13bdeb24d5cea5164d06a7eeb130bb01850ab4df .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32cm_mc00_curiosity_pro/PIC32CM1216MC00048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CM1216MC00048"
	
else
${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cm_mc00_curiosity_pro/PIC32CM1216MC00048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/PIC32CM1216MC00048"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32cm_mc00_curiosity_pro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
