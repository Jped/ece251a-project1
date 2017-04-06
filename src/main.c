
#include "bsp.h"
#include "pwr.h"

#include "draw.h"
#include "tick.h"
#include "InitDevice.h"
#include <SI_EFM8BB3_Register_Enums.h>
SI_SBIT (LED1, SFR_P1, 3);
int x = 10;
SI_INTERRUPT (TIMER0_ISR, TIMER0_IRQn)
{
	LED1 = !LED1;
	writeALot("hello");
	//DISP_Init();
	//DrawScreenText("Pens MAN7", 30);
	TCON_TR0 = 0;                       // Stop Timer 0
	TH0 = 00111000;           // Reset Timer0 High register
    TL0 = 10011110;            // Reset Timer0 Low register
    TCON_TR0 = 1;
    //DISP_Init();
    //DrawScreenText("Pens MAN", 30);
	x = x + 10;
}
void writeALot(char * z){
	//LED1 = !LED1;
	DISP_Init();
//	DrawScreenText("Two Deviations Tech", 0);
//	DrawScreenText(z,10);
}

void main(void)
{
  // Initialize the device
  enter_DefaultMode_from_RESET();

  // Safety trap. Press either push button while resetting the device to
  // stall the application here.

  IE_EA = 1;
  //DISP_Init();
  //DrawScreenText("Two Deviations Tech", 0);
  //DrawScreenText("Pens MAN", 10);
  // Mainloop
  //writeALot("hey");
  while (true)
  {
	//DrawScreenText("Pens MAN", x);
	//x+=10;
    // Halt the display tick and wait for display updates to finish
    TMR3CN0 &= ~TMR3CN0_TR3__BMASK;
    while (BSP_DISP_CS == SPI_CS_ASSERT_LVL);
    TMR3CN0 |= TMR3CN0_TR3__BMASK;
  }
}


