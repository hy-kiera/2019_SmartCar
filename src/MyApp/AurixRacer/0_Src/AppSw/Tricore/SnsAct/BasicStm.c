/**
 * \file BasicStm.c
 * \brief BasicStm
 *
 * \version InfineonRacer 1_0_0
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>

#include "Configuration.h"
#include "BasicStm.h"
#include "AppTaskFu.h"

#include "VadcAutoScanDemo.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
	Ifx_STM             *stmSfr;            /**< \brief Pointer to Stm register base */
	IfxStm_CompareConfig stmConfig;         /**< \brief Stm Configuration structure */
	volatile uint8       LedBlink;          /**< \brief LED state variable */
	volatile uint32      counter;           /**< \brief interrupt counter */
} Basic_Stm;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

Basic_Stm g_Stm; /**< \brief Stm global data */
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
static void BlinkLed_run(void);
static void BlinkLed_init(void);
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_Stm_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for SystemTimer(STM) driver.
 * \{ */
IFX_INTERRUPT(STM_Int0Handler, 0, ISR_PRIORITY_STM_INT0);
/** \} */

/** \} */
/** \brief Handle SystemTimer(STM) interrupt
 *
 * \isrProvider \ref ISR_PROVIDER_SystemTimer(STM)
 * \isrPriority \ref ISR_PRIORITY_SystemTimer(STM)
 *
 */
void STM_Int0Handler(void)
{
	IfxStm_clearCompareFlag(g_Stm.stmSfr, g_Stm.stmConfig.comparator);
#ifdef SIMULATION
	IfxStm_increaseCompare(g_Stm.stmSfr, g_Stm.stmConfig.comparator, 1000);
#else
	IfxStm_increaseCompare(g_Stm.stmSfr, g_Stm.stmConfig.comparator, TimeConst_1ms);
#endif
	IfxCpu_enableInterrupts();

	g_Stm.counter++;
	if(g_Stm.counter == 1000){
		g_Stm.counter = 0;
	}

	task_flag_1m = TRUE;

	if(g_Stm.counter % 10 == 0){
		task_flag_10m = TRUE;
	}
	if(g_Stm.counter % 100 == 0){
		task_flag_100m = TRUE;
		BlinkLed_run();
	}
	if(g_Stm.counter % 1000 == 0){
		task_flag_1000m = TRUE;
	}

	appIsrCb_1ms();

}


/** \brief LED Blinking
 *
 * This function blinks the LED connected to P 33.6 and counts the number
 *	of times the interrupt occurs.
 */
static void BlinkLed_run(void)
{
	g_Stm.LedBlink ^= 1;
	if (g_Stm.LedBlink == TRUE)
	{
		IfxPort_setPinState(LED_TICK.port, LED_TICK.pinIndex, IfxPort_State_high);
	}
	else
	{
		IfxPort_setPinState(LED_TICK.port, LED_TICK.pinIndex, IfxPort_State_low);
	}

}


/** \brief LED Initialization
 *
 * This function initializes the LED connected to P13.0
 */
static void BlinkLed_init(void)
{
	IfxPort_setPinMode(LED_TICK.port, LED_TICK.pinIndex, IfxPort_Mode_outputPushPullGeneral);
}


/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void BasicStm_init(void)
{
	printf("BasicStm_init() called\n");

	/* disable interrupts */
	boolean interruptState = IfxCpu_disableInterrupts();

	g_Stm.LedBlink = 0;
	g_Stm.counter  = 0;

	initTime();

	// suspend by debugger enabled
	IfxStm_enableOcdsSuspend (&MODULE_STM0);

	g_Stm.stmSfr = &MODULE_STM0;
	IfxStm_initCompareConfig(&g_Stm.stmConfig);

	g_Stm.stmConfig.triggerPriority = ISR_PRIORITY_STM_INT0;
	g_Stm.stmConfig.typeOfService   = IfxSrc_Tos_cpu0;
#ifdef SIMULATION
	g_SrcSwInt.stmConfig.ticks      = 1000;
#else
	g_Stm.stmConfig.ticks           = TimeConst_1ms;
#endif
	IfxStm_initCompare(g_Stm.stmSfr, &g_Stm.stmConfig);

	BlinkLed_init();

	appTaskfu_init();

	//VadcAutoScanDemo_init();

	IR_setSrvAngle(0.0f);

	IfxPort_setPinMode(IfxPort_P11_11.port, IfxPort_P11_11.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	//ÇÉ ¸ðµå ¾Æ¿ôÇ² ¼³Á¤
	/* enable interrupts again */
	IfxCpu_restoreInterrupts(interruptState);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
//Æ½
volatile int ledState = 1;
volatile int status = 0;
volatile int vadcCount = 0;
volatile int sstatus = 0;
void BasicStm_run(void)
{
	//    printf("BasicStm_run() called\n");
	if(task_flag_1m == TRUE){
		appTaskfu_1ms();
		task_flag_1m = FALSE;
	}

	if(task_flag_10m == TRUE){
		appTaskfu_10ms();
		task_flag_10m = FALSE;
	}

	if(task_flag_100m == TRUE){
		appTaskfu_100ms();

		task_flag_100m = FALSE;

		IR_setMotor0Vol(1.0f);

		vadcCount+=1;
		if(vadcCount >= 10) {
			if(sstatus >= 20) {
				if(IR_getSrvAngle() != 0.3f)
					IR_setSrvAngle(0.3f);
			}
			else {
				sstatus += 1;
				if(status == 0) {
					IR_setSrvAngle(0.6f);
					status = 1;
				}
				else if(status == 1) {
					IR_setSrvAngle(0.0f);
					status = 0;
				}
			}
			vadcCount = 0;
		}

		if(ledState == 1)
			IfxPort_setPinState(IfxPort_P11_11.port, IfxPort_P11_11.pinIndex, IfxPort_State_high);
		if(ledState == -1)
			IfxPort_setPinState(IfxPort_P11_11.port, IfxPort_P11_11.pinIndex, IfxPort_State_low);
		ledState = -ledState;
	}

	if(task_flag_1000m == TRUE){
		appTaskfu_1000ms();

		task_flag_1000m = FALSE;
	}

	appTaskfu_idle();
}
