#define SWITCHES (volatile char *) 0x00011020
#define LEDS (volatile char *) 0x00011030

void main()
{
  // Event loop never exits.
  while (1)
	  *(LEDS) = *(SWITCHES);
}
