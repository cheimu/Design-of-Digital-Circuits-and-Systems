/* 
 * "Small Hello World" example. 
 * 
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example 
 * designs. It requires a STDOUT  device in your system's hardware. 
 *
 * The purpose of this example is to demonstrate the smallest possible Hello 
 * World application, using the Nios II HAL library.  The memory footprint
 * of this hosted application is ~332 bytes by default using the standard 
 * reference design.  For a more fully featured Hello World application
 * example, see the example titled "Hello World".
 *
 * The memory footprint of this example has been reduced by making the
 * following changes to the normal "Hello World" example.
 * Check in the Nios II Software Developers Manual for a more complete 
 * description.
 * 
 * In the SW Application project (small_hello_world):
 *
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 * In System Library project (small_hello_world_syslib):
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 *    - Define the preprocessor option ALT_NO_INSTRUCTION_EMULATION 
 *      This removes software exception handling, which means that you cannot 
 *      run code compiled for Nios II cpu with a hardware multiplier on a core 
 *      without a the multiply unit. Check the Nios II Software Developers 
 *      Manual for more details.
 *
 *  - In the System Library page:
 *    - Set Periodic system timer and Timestamp timer to none
 *      This prevents the automatic inclusion of the timer driver.
 *
 *    - Set Max file descriptors to 4
 *      This reduces the size of the file handle pool.
 *
 *    - Check Main function does not exit
 *    - Uncheck Clean exit (flush buffers)
 *      This removes the unneeded call to exit when main returns, since it
 *      won't.
 *
 *    - Check Don't use C++
 *      This builds without the C++ support code.
 *
 *    - Check Small C library
 *      This uses a reduced functionality C library, which lacks  
 *      support for buffering, file IO, floating point and getch(), etc. 
 *      Check the Nios II Software Developers Manual for a complete list.
 *
 *    - Check Reduced device drivers
 *      This uses reduced functionality drivers if they're available. For the
 *      standard design this means you get polled UART and JTAG UART drivers,
 *      no support for the LCD driver and you lose the ability to program 
 *      CFI compliant flash devices.
 *
 *    - Check Access device drivers directly
 *      This bypasses the device file system to access device drivers directly.
 *      This eliminates the space required for the device file system services.
 *      It also provides a HAL version of libc services that access the drivers
 *      directly, further reducing space. Only a limited number of libc
 *      functions are available in this configuration.
 *
 *    - Use ALT versions of stdio routines:
 *
 *           Function                  Description
 *        ===============  =====================================
 *        alt_printf       Only supports %s, %x, and %c ( < 1 Kbyte)
 *        alt_putstr       Smaller overhead than puts with direct drivers
 *                         Note this function doesn't add a newline.
 *        alt_putchar      Smaller overhead than putchar with direct drivers
 *        alt_getchar      Smaller overhead than getchar with direct drivers
 *
 */

#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"

//OTHER INPUTS
#define SWITCHES 0x00011090

//OTHER OUTPUTS
#define LEDS 0x000110a0

//SERIAL INPUTS
#define CHAR_RECEIVED 0x00011040
#define CHAR_SENT 0x00011030
#define PARALLEL_IN 0x00011070

//SERIAL OUTPUTS
#define TRANSMIT_ENABLE 0x00011050
#define PARALLEL_LOAD 0x00011060
#define PARALLEL_OUT 0x00011080
#define PERIPHERAL_RESET 0x00011020

	//writing IOWR_ALTERA_AVALON_PIO_DATA(targetAddress, aValue);
	//reading: aValue = IORD_ALTERA_AVALON_PIO_DATA(sourceAddress);


void send_char(char c) {
	 //write a character to the parallel port
	 	IOWR_ALTERA_AVALON_PIO_DATA(PARALLEL_OUT, c);

	 	//load buffer
	 	IOWR_ALTERA_AVALON_PIO_DATA(PARALLEL_LOAD, 1);

	 	//transmit data
	 	IOWR_ALTERA_AVALON_PIO_DATA(TRANSMIT_ENABLE, 1);

	 	//wait till character sent, turn off transmit
	 	while(!IORD_ALTERA_AVALON_PIO_DATA(CHAR_SENT));
	 	IOWR_ALTERA_AVALON_PIO_DATA(TRANSMIT_ENABLE, 0);
	 	IOWR_ALTERA_AVALON_PIO_DATA(PARALLEL_LOAD, 0);
}

int main()
{ 
	alt_putstr("Welcome to Bluetooth Chat!\n");

	int last_received = 0;
	int curr_received = 0;
	alt_putstr("Wait for incoming messages.\n\n");
	alt_putstr(">");

	while(1) {
		curr_received = IORD_ALTERA_AVALON_PIO_DATA(CHAR_RECEIVED);
		if(!last_received && curr_received) {
			char b = IORD_ALTERA_AVALON_PIO_DATA(PARALLEL_IN) >> 1;
			alt_printf("%c",b);
		}
		last_received = curr_received;
	}




	return 0;
}
