/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'first_nios2_system'
 * SOPC Builder design path: ../../first_nios2_system.sopcinfo
 *
 * Generated: Wed Jun 07 19:35:08 PDT 2017
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00010820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "small"
#define ALT_CPU_DATA_ADDR_WIDTH 0x11
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00008020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 2048
#define ALT_CPU_INST_ADDR_WIDTH 0x11
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_RESET_ADDR 0x00008000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00010820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "small"
#define NIOS2_DATA_ADDR_WIDTH 0x11
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00008020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 2048
#define NIOS2_INST_ADDR_WIDTH 0x11
#define NIOS2_RESET_ADDR 0x00008000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x110b8
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x110b8
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x110b8
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "first_nios2_system"


/*
 * char_received configuration
 *
 */

#define ALT_MODULE_CLASS_char_received altera_avalon_pio
#define CHAR_RECEIVED_BASE 0x11040
#define CHAR_RECEIVED_BIT_CLEARING_EDGE_REGISTER 0
#define CHAR_RECEIVED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CHAR_RECEIVED_CAPTURE 0
#define CHAR_RECEIVED_DATA_WIDTH 1
#define CHAR_RECEIVED_DO_TEST_BENCH_WIRING 0
#define CHAR_RECEIVED_DRIVEN_SIM_VALUE 0
#define CHAR_RECEIVED_EDGE_TYPE "NONE"
#define CHAR_RECEIVED_FREQ 50000000
#define CHAR_RECEIVED_HAS_IN 1
#define CHAR_RECEIVED_HAS_OUT 0
#define CHAR_RECEIVED_HAS_TRI 0
#define CHAR_RECEIVED_IRQ -1
#define CHAR_RECEIVED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CHAR_RECEIVED_IRQ_TYPE "NONE"
#define CHAR_RECEIVED_NAME "/dev/char_received"
#define CHAR_RECEIVED_RESET_VALUE 0
#define CHAR_RECEIVED_SPAN 16
#define CHAR_RECEIVED_TYPE "altera_avalon_pio"


/*
 * char_sent configuration
 *
 */

#define ALT_MODULE_CLASS_char_sent altera_avalon_pio
#define CHAR_SENT_BASE 0x11030
#define CHAR_SENT_BIT_CLEARING_EDGE_REGISTER 0
#define CHAR_SENT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CHAR_SENT_CAPTURE 0
#define CHAR_SENT_DATA_WIDTH 1
#define CHAR_SENT_DO_TEST_BENCH_WIRING 0
#define CHAR_SENT_DRIVEN_SIM_VALUE 0
#define CHAR_SENT_EDGE_TYPE "NONE"
#define CHAR_SENT_FREQ 50000000
#define CHAR_SENT_HAS_IN 1
#define CHAR_SENT_HAS_OUT 0
#define CHAR_SENT_HAS_TRI 0
#define CHAR_SENT_IRQ -1
#define CHAR_SENT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CHAR_SENT_IRQ_TYPE "NONE"
#define CHAR_SENT_NAME "/dev/char_sent"
#define CHAR_SENT_RESET_VALUE 0
#define CHAR_SENT_SPAN 16
#define CHAR_SENT_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x110b8
#define JTAG_UART_IRQ 16
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * led_pio configuration
 *
 */

#define ALT_MODULE_CLASS_led_pio altera_avalon_pio
#define LED_PIO_BASE 0x110a0
#define LED_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_PIO_CAPTURE 0
#define LED_PIO_DATA_WIDTH 8
#define LED_PIO_DO_TEST_BENCH_WIRING 0
#define LED_PIO_DRIVEN_SIM_VALUE 0
#define LED_PIO_EDGE_TYPE "NONE"
#define LED_PIO_FREQ 50000000
#define LED_PIO_HAS_IN 0
#define LED_PIO_HAS_OUT 1
#define LED_PIO_HAS_TRI 0
#define LED_PIO_IRQ -1
#define LED_PIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_PIO_IRQ_TYPE "NONE"
#define LED_PIO_NAME "/dev/led_pio"
#define LED_PIO_RESET_VALUE 0
#define LED_PIO_SPAN 16
#define LED_PIO_TYPE "altera_avalon_pio"


/*
 * onchip_mem configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_mem altera_avalon_onchip_memory2
#define ONCHIP_MEM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEM_BASE 0x8000
#define ONCHIP_MEM_CONTENTS_INFO ""
#define ONCHIP_MEM_DUAL_PORT 0
#define ONCHIP_MEM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEM_INIT_CONTENTS_FILE "first_nios2_system_onchip_mem"
#define ONCHIP_MEM_INIT_MEM_CONTENT 1
#define ONCHIP_MEM_INSTANCE_ID "NONE"
#define ONCHIP_MEM_IRQ -1
#define ONCHIP_MEM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEM_NAME "/dev/onchip_mem"
#define ONCHIP_MEM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEM_SINGLE_CLOCK_OP 0
#define ONCHIP_MEM_SIZE_MULTIPLE 1
#define ONCHIP_MEM_SIZE_VALUE 20480
#define ONCHIP_MEM_SPAN 20480
#define ONCHIP_MEM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEM_WRITABLE 1


/*
 * parallel_in configuration
 *
 */

#define ALT_MODULE_CLASS_parallel_in altera_avalon_pio
#define PARALLEL_IN_BASE 0x11070
#define PARALLEL_IN_BIT_CLEARING_EDGE_REGISTER 0
#define PARALLEL_IN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PARALLEL_IN_CAPTURE 0
#define PARALLEL_IN_DATA_WIDTH 8
#define PARALLEL_IN_DO_TEST_BENCH_WIRING 0
#define PARALLEL_IN_DRIVEN_SIM_VALUE 0
#define PARALLEL_IN_EDGE_TYPE "NONE"
#define PARALLEL_IN_FREQ 50000000
#define PARALLEL_IN_HAS_IN 1
#define PARALLEL_IN_HAS_OUT 0
#define PARALLEL_IN_HAS_TRI 0
#define PARALLEL_IN_IRQ -1
#define PARALLEL_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PARALLEL_IN_IRQ_TYPE "NONE"
#define PARALLEL_IN_NAME "/dev/parallel_in"
#define PARALLEL_IN_RESET_VALUE 0
#define PARALLEL_IN_SPAN 16
#define PARALLEL_IN_TYPE "altera_avalon_pio"


/*
 * parallel_load configuration
 *
 */

#define ALT_MODULE_CLASS_parallel_load altera_avalon_pio
#define PARALLEL_LOAD_BASE 0x11060
#define PARALLEL_LOAD_BIT_CLEARING_EDGE_REGISTER 0
#define PARALLEL_LOAD_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PARALLEL_LOAD_CAPTURE 0
#define PARALLEL_LOAD_DATA_WIDTH 1
#define PARALLEL_LOAD_DO_TEST_BENCH_WIRING 0
#define PARALLEL_LOAD_DRIVEN_SIM_VALUE 0
#define PARALLEL_LOAD_EDGE_TYPE "NONE"
#define PARALLEL_LOAD_FREQ 50000000
#define PARALLEL_LOAD_HAS_IN 0
#define PARALLEL_LOAD_HAS_OUT 1
#define PARALLEL_LOAD_HAS_TRI 0
#define PARALLEL_LOAD_IRQ -1
#define PARALLEL_LOAD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PARALLEL_LOAD_IRQ_TYPE "NONE"
#define PARALLEL_LOAD_NAME "/dev/parallel_load"
#define PARALLEL_LOAD_RESET_VALUE 0
#define PARALLEL_LOAD_SPAN 16
#define PARALLEL_LOAD_TYPE "altera_avalon_pio"


/*
 * parallel_out configuration
 *
 */

#define ALT_MODULE_CLASS_parallel_out altera_avalon_pio
#define PARALLEL_OUT_BASE 0x11080
#define PARALLEL_OUT_BIT_CLEARING_EDGE_REGISTER 0
#define PARALLEL_OUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PARALLEL_OUT_CAPTURE 0
#define PARALLEL_OUT_DATA_WIDTH 8
#define PARALLEL_OUT_DO_TEST_BENCH_WIRING 0
#define PARALLEL_OUT_DRIVEN_SIM_VALUE 0
#define PARALLEL_OUT_EDGE_TYPE "NONE"
#define PARALLEL_OUT_FREQ 50000000
#define PARALLEL_OUT_HAS_IN 0
#define PARALLEL_OUT_HAS_OUT 1
#define PARALLEL_OUT_HAS_TRI 0
#define PARALLEL_OUT_IRQ -1
#define PARALLEL_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PARALLEL_OUT_IRQ_TYPE "NONE"
#define PARALLEL_OUT_NAME "/dev/parallel_out"
#define PARALLEL_OUT_RESET_VALUE 0
#define PARALLEL_OUT_SPAN 16
#define PARALLEL_OUT_TYPE "altera_avalon_pio"


/*
 * peripheral_reset configuration
 *
 */

#define ALT_MODULE_CLASS_peripheral_reset altera_avalon_pio
#define PERIPHERAL_RESET_BASE 0x11020
#define PERIPHERAL_RESET_BIT_CLEARING_EDGE_REGISTER 0
#define PERIPHERAL_RESET_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PERIPHERAL_RESET_CAPTURE 0
#define PERIPHERAL_RESET_DATA_WIDTH 1
#define PERIPHERAL_RESET_DO_TEST_BENCH_WIRING 0
#define PERIPHERAL_RESET_DRIVEN_SIM_VALUE 0
#define PERIPHERAL_RESET_EDGE_TYPE "NONE"
#define PERIPHERAL_RESET_FREQ 50000000
#define PERIPHERAL_RESET_HAS_IN 0
#define PERIPHERAL_RESET_HAS_OUT 1
#define PERIPHERAL_RESET_HAS_TRI 0
#define PERIPHERAL_RESET_IRQ -1
#define PERIPHERAL_RESET_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PERIPHERAL_RESET_IRQ_TYPE "NONE"
#define PERIPHERAL_RESET_NAME "/dev/peripheral_reset"
#define PERIPHERAL_RESET_RESET_VALUE 0
#define PERIPHERAL_RESET_SPAN 16
#define PERIPHERAL_RESET_TYPE "altera_avalon_pio"


/*
 * switches configuration
 *
 */

#define ALT_MODULE_CLASS_switches altera_avalon_pio
#define SWITCHES_BASE 0x11090
#define SWITCHES_BIT_CLEARING_EDGE_REGISTER 0
#define SWITCHES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SWITCHES_CAPTURE 0
#define SWITCHES_DATA_WIDTH 8
#define SWITCHES_DO_TEST_BENCH_WIRING 0
#define SWITCHES_DRIVEN_SIM_VALUE 0
#define SWITCHES_EDGE_TYPE "NONE"
#define SWITCHES_FREQ 50000000
#define SWITCHES_HAS_IN 1
#define SWITCHES_HAS_OUT 0
#define SWITCHES_HAS_TRI 0
#define SWITCHES_IRQ -1
#define SWITCHES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SWITCHES_IRQ_TYPE "NONE"
#define SWITCHES_NAME "/dev/switches"
#define SWITCHES_RESET_VALUE 0
#define SWITCHES_SPAN 16
#define SWITCHES_TYPE "altera_avalon_pio"


/*
 * sys_clk_timer configuration
 *
 */

#define ALT_MODULE_CLASS_sys_clk_timer altera_avalon_timer
#define SYS_CLK_TIMER_ALWAYS_RUN 0
#define SYS_CLK_TIMER_BASE 0x11000
#define SYS_CLK_TIMER_COUNTER_SIZE 32
#define SYS_CLK_TIMER_FIXED_PERIOD 0
#define SYS_CLK_TIMER_FREQ 50000000
#define SYS_CLK_TIMER_IRQ 1
#define SYS_CLK_TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SYS_CLK_TIMER_LOAD_VALUE 49999
#define SYS_CLK_TIMER_MULT 0.001
#define SYS_CLK_TIMER_NAME "/dev/sys_clk_timer"
#define SYS_CLK_TIMER_PERIOD 1
#define SYS_CLK_TIMER_PERIOD_UNITS "ms"
#define SYS_CLK_TIMER_RESET_OUTPUT 0
#define SYS_CLK_TIMER_SNAPSHOT 1
#define SYS_CLK_TIMER_SPAN 32
#define SYS_CLK_TIMER_TICKS_PER_SEC 1000
#define SYS_CLK_TIMER_TIMEOUT_PULSE_OUTPUT 0
#define SYS_CLK_TIMER_TYPE "altera_avalon_timer"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x110b0
#define SYSID_ID 0
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1496882533
#define SYSID_TYPE "altera_avalon_sysid_qsys"


/*
 * transmit_enable configuration
 *
 */

#define ALT_MODULE_CLASS_transmit_enable altera_avalon_pio
#define TRANSMIT_ENABLE_BASE 0x11050
#define TRANSMIT_ENABLE_BIT_CLEARING_EDGE_REGISTER 0
#define TRANSMIT_ENABLE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define TRANSMIT_ENABLE_CAPTURE 0
#define TRANSMIT_ENABLE_DATA_WIDTH 1
#define TRANSMIT_ENABLE_DO_TEST_BENCH_WIRING 0
#define TRANSMIT_ENABLE_DRIVEN_SIM_VALUE 0
#define TRANSMIT_ENABLE_EDGE_TYPE "NONE"
#define TRANSMIT_ENABLE_FREQ 50000000
#define TRANSMIT_ENABLE_HAS_IN 0
#define TRANSMIT_ENABLE_HAS_OUT 1
#define TRANSMIT_ENABLE_HAS_TRI 0
#define TRANSMIT_ENABLE_IRQ -1
#define TRANSMIT_ENABLE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TRANSMIT_ENABLE_IRQ_TYPE "NONE"
#define TRANSMIT_ENABLE_NAME "/dev/transmit_enable"
#define TRANSMIT_ENABLE_RESET_VALUE 0
#define TRANSMIT_ENABLE_SPAN 16
#define TRANSMIT_ENABLE_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
