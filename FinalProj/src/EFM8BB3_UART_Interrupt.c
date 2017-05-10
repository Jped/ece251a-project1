//-----------------------------------------------------------------------------
// EFM8BB3_UART0_Interrupt.c
//-----------------------------------------------------------------------------
// Copyright 2014 Silicon Laboratories, Inc.
// http://developer.silabs.com/legal/version/v11/Silicon_Labs_Software_License_Agreement.txt
//
// Program Description:
//
// This program demonstrates how to configure the EFM8BB3 to write to and
// read from the UART0 interface. The program reads a word using the UART0
// interrupt and outputs that word to the screen, with all characters in
// uppercase.
//
// Resources:
//   SYSCLK - 24.5 MHz HFOSC0 / 1
//   UART0  - 115200 baud, 8-N-1
//   Timer1 - UART0 clock source
//   P0.4   - UART0 TX
//   P0.5   - UART0 RX
//   P2.2   - Board Controller enable
//   P3.4   - Display enable
//
//-----------------------------------------------------------------------------
// How To Test: EFM8BB3 STK
//-----------------------------------------------------------------------------
// 1) Place the switch in "AEM" mode.
// 2) Connect the EFM8BB3 STK board to a PC using a mini USB cable.
// 3) Compile and download code to the EFM8BB3 STK board.
//    In Simplicity Studio IDE, select Run -> Debug from the menu bar,
//    click the Debug button in the quick menu, or press F11.
// 4) On the PC, open HyperTerminal (or any other terminal program) and connect
//    to the JLink CDC UART Port at 115200 baud rate and 8-N-1.
// 5) Run the code.
//    In Simplicity Studio IDE, select Run -> Resume from the menu bar,
//    click the Resume button in the quick menu, or press F8.
// 6) Using a terminal program on the PC, input any number of lower-case
//    characters, up to UART_BUFFERSIZE (default 64), followed by either
//    a carriage return ('\r'), a newline character ('\n'), or a tilda ('~').
//    The program will change the input characters to upper-case and output
//    them over UART.
//
// Target:         EFM8BB3
// Tool chain:     Generic
//
// Release 0.1 (ST)
//    - Initial Revision
//    - 20 MAY 2015
//

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <SI_EFM8BB3_Register_Enums.h>
#include "retargetserial.h"
#include "InitDevice.h"
#include "draw.h"
#include "tick.h"
#include "bsp.h"
#include "joystick.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//-----------------------------------------------------------------------------
// Pin Definitions
//-----------------------------------------------------------------------------
SI_SBIT (DISP_EN, SFR_P3, 4);          // Display Enable
#define DISP_BC_DRIVEN   0             // 0 = Board Controller drives display
#define DISP_EFM8_DRIVEN 1             // 1 = EFM8 drives display

SI_SBIT (BC_EN, SFR_P2, 2);            // Board Controller Enable
#define BC_DISCONNECTED 0              // 0 = Board Controller disconnected
                                       //     to EFM8 UART pins
#define BC_CONNECTED    1              // 1 = Board Controller connected
                                       //     to EFM8 UART pins

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
// Variables in Interrupts.c
//extern uint8_t UART_Buffer_Size;
//extern uint8_t TX_Ready;
//extern uint8_t Byte;

#define UART_BUFFERSIZE        64

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
uint8_t UART_Buffer[UART_BUFFERSIZE];
uint8_t UART_Buffer_Size = 0;
uint8_t UART_Input_First = 0;
uint8_t UART_Output_First = 0;
uint8_t TX_Ready =1;
uint8_t Byte = 0;
int writeIt=0;
char weBuff[30][17];
int x=0;
int y=0;
int i=0;
int j=0;
int z=0;
int d=0;
int write2=0;
char stri[10];
char stri2[16];
int hex=0;
//FILE * fp;
//-----------------------------------------------------------------------------
// UART0_ISR
//-----------------------------------------------------------------------------
//
// UART0 ISR Content goes here. Remember to clear flag bits:
// SCON0::RI (Receive Interrupt Flag)
// SCON0::TI (Transmit Interrupt Flag)
//
// This routine is invoked whenever a character is entered or displayed on the
// Hyperterminal.
//
//-----------------------------------------------------------------------------
SI_INTERRUPT (UART0_ISR, UART0_IRQn)
{
	//P1_B4=!P1_B4;

	   if (SCON0_RI == 1)
	   {
	      if( UART_Buffer_Size == 0)  {    // If new word is entered
	         UART_Input_First = 0;    }


	      Byte = SBUF0;
	                          // Read a character from UART
	      weBuff[y][x]= Byte;
	      writeIt=1;
	      SCON0_RI = 0;                          // Clear interrupt flag
	   }


}







void InputPlayer()
{
    uint32_t mv;
    uint8_t dir;

    ADC0CN0_ADBUSY = 1;
    while (!ADC0CN0_ADINT);
    ADC0CN0_ADINT = 0;

    mv = ((uint32_t)ADC0) * 3300 / 1024;

    dir = JOYSTICK_convert_mv_to_direction(mv);
    // Move player left
    if (dir == JOYSTICK_N)
    {
    	//DISP_Init();
       write2=1;

    }
    if (dir == JOYSTICK_W)
    {
    	//DISP_Init();
       hex=!hex;

    }
}





















//-----------------------------------------------------------------------------
// Main Routine
//-----------------------------------------------------------------------------
void main (void)
{
	for (i=0;i<=17;i++){
		for (j=0;j<30;j++){
			weBuff[j][i]='\0';
		}
	}
	enter_DefaultMode_from_RESET();

   DISP_EN = DISP_BC_DRIVEN;           // EFM8 does not drive display

   BC_EN = BC_DISCONNECTED;               // Board controller connected to EFM8
                                       // UART pins

   IE_EA = 1;


   DISP_Init();
   //fp = fopen("test.txt", "w");
   while(1)
   {
	   InputPlayer();
	   if (writeIt && !hex){
		   d=y;
		   DrawScreenText(weBuff[y], z*10);
		   x++;
		   writeIt=0;
		   if (x>=16){
		   	  x=0;
		   	  y++;
		   	  z++;
			   if (z==12){
				   DISP_ClearAll();
				   z=0;
			   }
		   }

	   }
	   else if (writeIt && hex){
		   d=y;

		   sprintf(stri,"0x%04x",weBuff[y][x]);
		   DrawScreenText(stri, z*10);
		   z++;
		   x++;
		   writeIt=0;
		   if (x>=16){
		   	  x=0;
		   	  y++;
		   	  //z++;
		   }
		   if (z==12){
		   				   DISP_ClearAll();
		   				   z=0;
		   			   }

	   }
	   if (write2){
		   write2=0;
		   z=0;
		   DISP_ClearAll();
		   i=0;
		   //DrawScreenText("hellow world!! ", 0);
		   DrawScreenText(weBuff[0], 0);
		   DrawScreenText(weBuff[1], 10);
		   DrawScreenText(weBuff[2], 20);
		   DrawScreenText(weBuff[3], 30);
		   DrawScreenText(weBuff[4], 40);
		   DrawScreenText(weBuff[5], 50);
		   DrawScreenText(weBuff[7], 60);
		   DrawScreenText(weBuff[8], 80);
		   DrawScreenText(weBuff[9], 90);
		   DrawScreenText(weBuff[10], 100);
		   DrawScreenText(weBuff[11], 110);
		   DrawScreenText(weBuff[12], 120);


	   }

      // If the complete word has been entered via the terminal followed by
      // carriage return or newline

//      if((TX_Ready == 1) && (UART_Buffer_Size != 0) && ((Byte == '\r') || (Byte == '\n') || (Byte == '~')))
//      {
//         TX_Ready = 0;                 // Set the flag to zero
//         SCON0_TI = 1;                 // Set transmit flag to 1
//      }
      TMR3CN0 &= ~TMR3CN0_TR3__BMASK;
      while (BSP_DISP_CS == SPI_CS_ASSERT_LVL);
      TMR3CN0 |= TMR3CN0_TR3__BMASK;
   }
   //fclose(fp);
}



