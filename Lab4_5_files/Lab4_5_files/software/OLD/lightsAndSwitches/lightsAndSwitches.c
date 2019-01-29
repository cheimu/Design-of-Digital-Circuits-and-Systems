//#include "sys/alt_stdio.h"
#define SWITCHES (volatile char *) 0x00011020
#define LEDS (volatile char *) 0x00011030

int main()
{ 
  // Event loop never exits.
  while (1)
	  *(LEDS) = *(SWITCHES);

  return 0;
}
