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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_mc00_curiosity_pro/initialization.c ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/676635429/plib_clock.o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ${OBJECTDIR}/_ext/160764554/plib_port.o ${OBJECTDIR}/_ext/420831403/plib_tcc0.o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ${OBJECTDIR}/_ext/1997885285/initialization.o ${OBJECTDIR}/_ext/1997885285/interrupts.o ${OBJECTDIR}/_ext/1997885285/exceptions.o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/676635429/plib_clock.o.d ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/160764554/plib_port.o.d ${OBJECTDIR}/_ext/420831403/plib_tcc0.o.d ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d ${OBJECTDIR}/_ext/1997885285/initialization.o.d ${OBJECTDIR}/_ext/1997885285/interrupts.o.d ${OBJECTDIR}/_ext/1997885285/exceptions.o.d ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/676635429/plib_clock.o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ${OBJECTDIR}/_ext/160764554/plib_port.o ${OBJECTDIR}/_ext/420831403/plib_tcc0.o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ${OBJECTDIR}/_ext/1997885285/initialization.o ${OBJECTDIR}/_ext/1997885285/interrupts.o ${OBJECTDIR}/_ext/1997885285/exceptions.o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_mc00_curiosity_pro/initialization.c ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c ../src/main.c

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
${OBJECTDIR}/_ext/676635429/plib_clock.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/b05002d3a702f5ac09d2a10b51cc6cc3959c769a .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/676635429" 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/676635429/plib_clock.o.d" -o ${OBJECTDIR}/_ext/676635429/plib_clock.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/678784915/plib_evsys.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/ce97d89abd8d263876aab80910587f3f25d1ade7 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678784915" 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/678784915/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160711403/plib_nvic.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/26a52475b88a9ab94dfd085b75cfe48df5b97d94 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160711403" 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160711403/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/117d4f8098398f422d664bb0c68cd71aeca7325c .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1131319065" 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160764554/plib_port.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/54ee4849b965af219f5207d546db7ccf7090b3df .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160764554" 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160764554/plib_port.o.d" -o ${OBJECTDIR}/_ext/160764554/plib_port.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/420831403/plib_tcc0.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/f4b76ed898d47fe42bd8ca3be24a0fb6643cd903 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/420831403" 
	@${RM} ${OBJECTDIR}/_ext/420831403/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/420831403/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/420831403/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/420831403/plib_tcc0.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1429341023/xc32_monitor.o: ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/a911517a1ad7029d2e6b6a6756bcfb93726d8816 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1429341023" 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/initialization.o: ../src/config/pic32cm_mc00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/24af52d429c8a583b7044b38be3cda9f896c9c55 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/initialization.o.d" -o ${OBJECTDIR}/_ext/1997885285/initialization.o ../src/config/pic32cm_mc00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/interrupts.o: ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/7bd6899c8435e7897b2fcbd046c85578e1f35fe1 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/interrupts.o.d" -o ${OBJECTDIR}/_ext/1997885285/interrupts.o ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/exceptions.o: ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/4d36057d805c52d52cf801a6e9c77026e0bcd11 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/exceptions.o.d" -o ${OBJECTDIR}/_ext/1997885285/exceptions.o ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/startup_xc32.o: ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/ceeb72590feb945d11f9b190b8d7c017ed3ab576 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/libc_syscalls.o: ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/3584bf0d3ce0552ee41e68b5e920007034e7e684 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/4930ff3b8c202c3e3c91b34f39255607b2ab0251 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/676635429/plib_clock.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/9bb2f4e72b55ad3aa1a0b23220fae993322edf23 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/676635429" 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/676635429/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/676635429/plib_clock.o.d" -o ${OBJECTDIR}/_ext/676635429/plib_clock.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/678784915/plib_evsys.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/431690fc93506375af26a35e4f09290da999c646 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678784915" 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/678784915/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/678784915/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/678784915/plib_evsys.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160711403/plib_nvic.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/acee68e0ae59446991fc4def5684bed88bc37314 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160711403" 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/160711403/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160711403/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/160711403/plib_nvic.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/41b4d086950c82e0138318ded1ab14aa7f2d466c .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1131319065" 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1131319065/plib_nvmctrl.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/160764554/plib_port.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/b4507208896b17ec907b8189d0d73dbd07193f74 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/160764554" 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160764554/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/160764554/plib_port.o.d" -o ${OBJECTDIR}/_ext/160764554/plib_port.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/420831403/plib_tcc0.o: ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/81eb2323016f8dc56b63ce961bc96beb206e2581 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/420831403" 
	@${RM} ${OBJECTDIR}/_ext/420831403/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/420831403/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/420831403/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/420831403/plib_tcc0.o ../src/config/pic32cm_mc00_curiosity_pro/peripheral/tcc/plib_tcc0.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1429341023/xc32_monitor.o: ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/e9292b2500274b39dfe9f3d323a764f73285ed8f .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1429341023" 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1429341023/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1429341023/xc32_monitor.o ../src/config/pic32cm_mc00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/initialization.o: ../src/config/pic32cm_mc00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/b14081b13fe36a67501a92fa8168d9050c8f8b20 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/initialization.o.d" -o ${OBJECTDIR}/_ext/1997885285/initialization.o ../src/config/pic32cm_mc00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/interrupts.o: ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/ed135eda70c806ae3ceb92d8ed81dab558c6d91a .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/interrupts.o.d" -o ${OBJECTDIR}/_ext/1997885285/interrupts.o ../src/config/pic32cm_mc00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/exceptions.o: ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/967f285bfcb8182c8c02a40d66c60b6dd0f67a14 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/exceptions.o.d" -o ${OBJECTDIR}/_ext/1997885285/exceptions.o ../src/config/pic32cm_mc00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/startup_xc32.o: ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/db96709091b83c54c83bac84f2fcb10b5d52c332 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1997885285/startup_xc32.o ../src/config/pic32cm_mc00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1997885285/libc_syscalls.o: ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/9647ca473379111d5ae2d616afc95494ae0d3c04 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1997885285" 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_mc00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM1216MC00048_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1997885285/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1997885285/libc_syscalls.o ../src/config/pic32cm_mc00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_mc00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}/PIC32CM1216MC00048" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_mc00_curiosity_pro/3f5201895884377df5114539044b159758907487 .generated_files/flags/pic32cm_mc00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
