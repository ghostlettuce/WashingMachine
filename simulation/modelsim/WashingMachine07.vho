-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/19/2022 22:07:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	WashingMachine07 IS
    PORT (
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK50 : IN std_logic;
	LEDG : BUFFER std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END WashingMachine07;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WashingMachine07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \fsm|Selector24~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm|Selector40~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK50~input_o\ : std_logic;
SIGNAL \CLOCK50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \d_reset|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_reset|s_dirtyIn~q\ : std_logic;
SIGNAL \d_reset|s_previousIn~q\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[2]~0_combout\ : std_logic;
SIGNAL \d_reset|Add0~9\ : std_logic;
SIGNAL \d_reset|Add0~10_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_reset|Add0~11\ : std_logic;
SIGNAL \d_reset|Add0~12_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_reset|Add0~13\ : std_logic;
SIGNAL \d_reset|Add0~14_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_reset|Add0~15\ : std_logic;
SIGNAL \d_reset|Add0~16_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_reset|Add0~17\ : std_logic;
SIGNAL \d_reset|Add0~18_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_reset|Add0~19\ : std_logic;
SIGNAL \d_reset|Add0~20_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_reset|Add0~21\ : std_logic;
SIGNAL \d_reset|Add0~22_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_reset|Add0~23\ : std_logic;
SIGNAL \d_reset|Add0~24_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_reset|Add0~25\ : std_logic;
SIGNAL \d_reset|Add0~26_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \d_reset|Add0~27\ : std_logic;
SIGNAL \d_reset|Add0~28_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \d_reset|Add0~29\ : std_logic;
SIGNAL \d_reset|Add0~30_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_reset|Add0~31\ : std_logic;
SIGNAL \d_reset|Add0~32_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_reset|Add0~33\ : std_logic;
SIGNAL \d_reset|Add0~34_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_reset|Add0~35\ : std_logic;
SIGNAL \d_reset|Add0~36_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[2]~2_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \d_reset|Add0~37\ : std_logic;
SIGNAL \d_reset|Add0~38_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \d_reset|Add0~39\ : std_logic;
SIGNAL \d_reset|Add0~40_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \d_reset|Add0~41\ : std_logic;
SIGNAL \d_reset|Add0~42_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~4_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~5_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~6_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~0_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~1_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~2_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~3_combout\ : std_logic;
SIGNAL \d_reset|LessThan0~7_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_reset|Add0~43\ : std_logic;
SIGNAL \d_reset|Add0~44_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt[2]~4_combout\ : std_logic;
SIGNAL \d_reset|Add0~0_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \d_reset|Add0~1\ : std_logic;
SIGNAL \d_reset|Add0~2_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_reset|Add0~3\ : std_logic;
SIGNAL \d_reset|Add0~4_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_reset|Add0~5\ : std_logic;
SIGNAL \d_reset|Add0~6_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_reset|Add0~7\ : std_logic;
SIGNAL \d_reset|Add0~8_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_reset|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \d_startStop|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_startStop|s_dirtyIn~q\ : std_logic;
SIGNAL \d_startStop|s_previousIn~q\ : std_logic;
SIGNAL \d_startStop|Add0~7\ : std_logic;
SIGNAL \d_startStop|Add0~8_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_startStop|Add0~9\ : std_logic;
SIGNAL \d_startStop|Add0~10_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_startStop|Add0~11\ : std_logic;
SIGNAL \d_startStop|Add0~12_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_startStop|Add0~13\ : std_logic;
SIGNAL \d_startStop|Add0~14_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \d_startStop|Add0~15\ : std_logic;
SIGNAL \d_startStop|Add0~16_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_startStop|Add0~17\ : std_logic;
SIGNAL \d_startStop|Add0~18_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_startStop|Add0~19\ : std_logic;
SIGNAL \d_startStop|Add0~20_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_startStop|Add0~21\ : std_logic;
SIGNAL \d_startStop|Add0~22_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_startStop|Add0~23\ : std_logic;
SIGNAL \d_startStop|Add0~24_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_startStop|Add0~25\ : std_logic;
SIGNAL \d_startStop|Add0~26_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_startStop|Add0~27\ : std_logic;
SIGNAL \d_startStop|Add0~28_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_startStop|Add0~29\ : std_logic;
SIGNAL \d_startStop|Add0~30_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \d_startStop|Add0~31\ : std_logic;
SIGNAL \d_startStop|Add0~32_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_startStop|Add0~33\ : std_logic;
SIGNAL \d_startStop|Add0~34_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_startStop|Add0~35\ : std_logic;
SIGNAL \d_startStop|Add0~36_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \d_startStop|Add0~37\ : std_logic;
SIGNAL \d_startStop|Add0~38_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~4_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~5_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~1_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~2_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~3_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~6_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~7_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_startStop|Add0~39\ : std_logic;
SIGNAL \d_startStop|Add0~40_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[19]~2_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_startStop|Add0~41\ : std_logic;
SIGNAL \d_startStop|Add0~43\ : std_logic;
SIGNAL \d_startStop|Add0~44_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[19]~3_combout\ : std_logic;
SIGNAL \d_startStop|Add0~42_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \d_startStop|LessThan0~0_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt[19]~0_combout\ : std_logic;
SIGNAL \d_startStop|Add0~0_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_startStop|Add0~1\ : std_logic;
SIGNAL \d_startStop|Add0~2_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \d_startStop|Add0~3\ : std_logic;
SIGNAL \d_startStop|Add0~4_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_startStop|Add0~5\ : std_logic;
SIGNAL \d_startStop|Add0~6_combout\ : std_logic;
SIGNAL \d_startStop|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_startStop|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|startStop_1q~q\ : std_logic;
SIGNAL \fsm|startStop_rE~0_combout\ : std_logic;
SIGNAL \fsm|startStop_rE~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \d_p1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_p1|s_dirtyIn~q\ : std_logic;
SIGNAL \d_p1|s_previousIn~q\ : std_logic;
SIGNAL \d_p1|Add0~0_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \d_p1|Add0~1\ : std_logic;
SIGNAL \d_p1|Add0~2_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_p1|Add0~3\ : std_logic;
SIGNAL \d_p1|Add0~4_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_p1|Add0~5\ : std_logic;
SIGNAL \d_p1|Add0~6_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_p1|Add0~7\ : std_logic;
SIGNAL \d_p1|Add0~8_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_p1|Add0~9\ : std_logic;
SIGNAL \d_p1|Add0~11\ : std_logic;
SIGNAL \d_p1|Add0~12_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_p1|Add0~13\ : std_logic;
SIGNAL \d_p1|Add0~14_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_p1|Add0~15\ : std_logic;
SIGNAL \d_p1|Add0~16_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_p1|Add0~17\ : std_logic;
SIGNAL \d_p1|Add0~18_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_p1|Add0~19\ : std_logic;
SIGNAL \d_p1|Add0~20_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_p1|Add0~21\ : std_logic;
SIGNAL \d_p1|Add0~22_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_p1|Add0~23\ : std_logic;
SIGNAL \d_p1|Add0~24_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_p1|Add0~25\ : std_logic;
SIGNAL \d_p1|Add0~26_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \d_p1|Add0~27\ : std_logic;
SIGNAL \d_p1|Add0~28_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \d_p1|Add0~29\ : std_logic;
SIGNAL \d_p1|Add0~30_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_p1|Add0~31\ : std_logic;
SIGNAL \d_p1|Add0~32_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_p1|Add0~33\ : std_logic;
SIGNAL \d_p1|Add0~34_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_p1|Add0~35\ : std_logic;
SIGNAL \d_p1|Add0~36_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \d_p1|Add0~37\ : std_logic;
SIGNAL \d_p1|Add0~38_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \d_p1|Add0~39\ : std_logic;
SIGNAL \d_p1|Add0~41\ : std_logic;
SIGNAL \d_p1|Add0~42_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~3_combout\ : std_logic;
SIGNAL \d_p1|Add0~40_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~4_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~5_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~6_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~0_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~1_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~2_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~3_combout\ : std_logic;
SIGNAL \d_p1|LessThan0~7_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_p1|Add0~43\ : std_logic;
SIGNAL \d_p1|Add0~44_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt[22]~4_combout\ : std_logic;
SIGNAL \d_p1|Add0~10_combout\ : std_logic;
SIGNAL \d_p1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_p1|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \d_p3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_p3|s_dirtyIn~q\ : std_logic;
SIGNAL \d_p3|s_previousIn~q\ : std_logic;
SIGNAL \d_p3|Add0~0_combout\ : std_logic;
SIGNAL \d_p3|Add0~7\ : std_logic;
SIGNAL \d_p3|Add0~8_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[7]~3_combout\ : std_logic;
SIGNAL \d_p3|Add0~9\ : std_logic;
SIGNAL \d_p3|Add0~10_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_p3|Add0~11\ : std_logic;
SIGNAL \d_p3|Add0~12_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_p3|Add0~13\ : std_logic;
SIGNAL \d_p3|Add0~14_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \d_p3|Add0~15\ : std_logic;
SIGNAL \d_p3|Add0~16_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_p3|Add0~17\ : std_logic;
SIGNAL \d_p3|Add0~18_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_p3|Add0~19\ : std_logic;
SIGNAL \d_p3|Add0~20_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_p3|Add0~21\ : std_logic;
SIGNAL \d_p3|Add0~22_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_p3|Add0~23\ : std_logic;
SIGNAL \d_p3|Add0~24_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_p3|Add0~25\ : std_logic;
SIGNAL \d_p3|Add0~26_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_p3|Add0~27\ : std_logic;
SIGNAL \d_p3|Add0~28_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_p3|Add0~29\ : std_logic;
SIGNAL \d_p3|Add0~30_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \d_p3|Add0~31\ : std_logic;
SIGNAL \d_p3|Add0~32_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_p3|Add0~33\ : std_logic;
SIGNAL \d_p3|Add0~34_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_p3|Add0~35\ : std_logic;
SIGNAL \d_p3|Add0~36_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \d_p3|Add0~37\ : std_logic;
SIGNAL \d_p3|Add0~38_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \d_p3|Add0~39\ : std_logic;
SIGNAL \d_p3|Add0~40_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \d_p3|Add0~41\ : std_logic;
SIGNAL \d_p3|Add0~42_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[7]~2_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~0_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~6_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~1_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~2_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~3_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~4_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~5_combout\ : std_logic;
SIGNAL \d_p3|LessThan0~7_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_p3|Add0~43\ : std_logic;
SIGNAL \d_p3|Add0~44_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt[7]~0_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_p3|Add0~1\ : std_logic;
SIGNAL \d_p3|Add0~2_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \d_p3|Add0~3\ : std_logic;
SIGNAL \d_p3|Add0~4_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_p3|Add0~5\ : std_logic;
SIGNAL \d_p3|Add0~6_combout\ : std_logic;
SIGNAL \d_p3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_p3|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \d_p2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_p2|s_dirtyIn~q\ : std_logic;
SIGNAL \d_p2|s_previousIn~q\ : std_logic;
SIGNAL \d_p2|Add0~0_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \d_p2|Add0~1\ : std_logic;
SIGNAL \d_p2|Add0~2_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_p2|Add0~3\ : std_logic;
SIGNAL \d_p2|Add0~4_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_p2|Add0~5\ : std_logic;
SIGNAL \d_p2|Add0~6_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_p2|Add0~7\ : std_logic;
SIGNAL \d_p2|Add0~8_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_p2|Add0~9\ : std_logic;
SIGNAL \d_p2|Add0~10_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[2]~0_combout\ : std_logic;
SIGNAL \d_p2|Add0~11\ : std_logic;
SIGNAL \d_p2|Add0~12_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_p2|Add0~13\ : std_logic;
SIGNAL \d_p2|Add0~14_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_p2|Add0~15\ : std_logic;
SIGNAL \d_p2|Add0~16_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_p2|Add0~17\ : std_logic;
SIGNAL \d_p2|Add0~18_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_p2|Add0~19\ : std_logic;
SIGNAL \d_p2|Add0~20_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_p2|Add0~21\ : std_logic;
SIGNAL \d_p2|Add0~22_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_p2|Add0~23\ : std_logic;
SIGNAL \d_p2|Add0~24_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_p2|Add0~25\ : std_logic;
SIGNAL \d_p2|Add0~26_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_p2|Add0~27\ : std_logic;
SIGNAL \d_p2|Add0~28_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \d_p2|Add0~29\ : std_logic;
SIGNAL \d_p2|Add0~30_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_p2|Add0~31\ : std_logic;
SIGNAL \d_p2|Add0~32_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_p2|Add0~33\ : std_logic;
SIGNAL \d_p2|Add0~34_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_p2|Add0~35\ : std_logic;
SIGNAL \d_p2|Add0~36_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \d_p2|Add0~37\ : std_logic;
SIGNAL \d_p2|Add0~38_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[2]~2_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \d_p2|Add0~39\ : std_logic;
SIGNAL \d_p2|Add0~40_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~4_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~5_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~6_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~0_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~1_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~2_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~3_combout\ : std_logic;
SIGNAL \d_p2|LessThan0~7_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[2]~4_combout\ : std_logic;
SIGNAL \d_p2|Add0~41\ : std_logic;
SIGNAL \d_p2|Add0~42_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \d_p2|Add0~43\ : std_logic;
SIGNAL \d_p2|Add0~44_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_p2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_p2|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|s_nState~0_combout\ : std_logic;
SIGNAL \fsm|Selector13~2_combout\ : std_logic;
SIGNAL \fsm|s_bStop.RA3_631~combout\ : std_logic;
SIGNAL \fsm|Selector13~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \d_porta|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \d_porta|s_dirtyIn~q\ : std_logic;
SIGNAL \d_porta|s_previousIn~q\ : std_logic;
SIGNAL \d_porta|Add0~0_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \d_porta|Add0~1\ : std_logic;
SIGNAL \d_porta|Add0~2_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \d_porta|Add0~3\ : std_logic;
SIGNAL \d_porta|Add0~4_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \d_porta|Add0~5\ : std_logic;
SIGNAL \d_porta|Add0~6_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \d_porta|Add0~7\ : std_logic;
SIGNAL \d_porta|Add0~8_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \d_porta|Add0~9\ : std_logic;
SIGNAL \d_porta|Add0~11\ : std_logic;
SIGNAL \d_porta|Add0~12_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \d_porta|Add0~13\ : std_logic;
SIGNAL \d_porta|Add0~14_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \d_porta|Add0~15\ : std_logic;
SIGNAL \d_porta|Add0~16_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \d_porta|Add0~17\ : std_logic;
SIGNAL \d_porta|Add0~18_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \d_porta|Add0~19\ : std_logic;
SIGNAL \d_porta|Add0~20_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \d_porta|Add0~21\ : std_logic;
SIGNAL \d_porta|Add0~22_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \d_porta|Add0~23\ : std_logic;
SIGNAL \d_porta|Add0~24_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \d_porta|Add0~25\ : std_logic;
SIGNAL \d_porta|Add0~26_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \d_porta|Add0~27\ : std_logic;
SIGNAL \d_porta|Add0~28_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \d_porta|Add0~29\ : std_logic;
SIGNAL \d_porta|Add0~30_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \d_porta|Add0~31\ : std_logic;
SIGNAL \d_porta|Add0~32_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \d_porta|Add0~33\ : std_logic;
SIGNAL \d_porta|Add0~34_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \d_porta|Add0~35\ : std_logic;
SIGNAL \d_porta|Add0~36_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \d_porta|Add0~37\ : std_logic;
SIGNAL \d_porta|Add0~38_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \d_porta|Add0~39\ : std_logic;
SIGNAL \d_porta|Add0~41\ : std_logic;
SIGNAL \d_porta|Add0~42_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[17]~3_combout\ : std_logic;
SIGNAL \d_porta|Add0~40_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~1_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~0_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~2_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~3_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~4_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~5_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~6_combout\ : std_logic;
SIGNAL \d_porta|LessThan0~7_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[17]~0_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \d_porta|Add0~43\ : std_logic;
SIGNAL \d_porta|Add0~44_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \d_porta|Add0~10_combout\ : std_logic;
SIGNAL \d_porta|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \d_porta|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|Selector40~0_combout\ : std_logic;
SIGNAL \fsm|Selector40~0clkctrl_outclk\ : std_logic;
SIGNAL \fsm|s_nState.RA3_1010~combout\ : std_logic;
SIGNAL \fsm|s_pState~18_combout\ : std_logic;
SIGNAL \fsm|s_pState.RA3~q\ : std_logic;
SIGNAL \fsm|Selector11~3_combout\ : std_logic;
SIGNAL \fsm|s_bStop.W2s_587~combout\ : std_logic;
SIGNAL \fsm|Selector11~4_combout\ : std_logic;
SIGNAL \fsm|s_nState.W2s_1001~combout\ : std_logic;
SIGNAL \fsm|s_pState~23_combout\ : std_logic;
SIGNAL \fsm|s_pState.W2s~q\ : std_logic;
SIGNAL \fsm|Selector39~0_combout\ : std_logic;
SIGNAL \fsm|s_nState.S0_1082~combout\ : std_logic;
SIGNAL \fsm|s_pState~21_combout\ : std_logic;
SIGNAL \fsm|s_pState.S0~feeder_combout\ : std_logic;
SIGNAL \fsm|s_pState.S0~q\ : std_logic;
SIGNAL \fsm|Selector24~0_combout\ : std_logic;
SIGNAL \fsm|Selector24~0clkctrl_outclk\ : std_logic;
SIGNAL \fsm|s_bStop.S3_675~combout\ : std_logic;
SIGNAL \fsm|s_bStop.Ra2_719~combout\ : std_logic;
SIGNAL \fsm|Selector29~2_combout\ : std_logic;
SIGNAL \fsm|s_bStop.E2_763~combout\ : std_logic;
SIGNAL \fsm|Selector29~3_combout\ : std_logic;
SIGNAL \fsm|s_nState.E2_1037~combout\ : std_logic;
SIGNAL \fsm|s_pState~20_combout\ : std_logic;
SIGNAL \fsm|s_pState.E2~q\ : std_logic;
SIGNAL \fsm|Selector27~2_combout\ : std_logic;
SIGNAL \fsm|Selector27~3_combout\ : std_logic;
SIGNAL \fsm|s_nState.Ra2_1028~combout\ : std_logic;
SIGNAL \fsm|s_pState~17_combout\ : std_logic;
SIGNAL \fsm|s_pState.Ra2~q\ : std_logic;
SIGNAL \fsm|Selector25~1_combout\ : std_logic;
SIGNAL \fsm|Selector11~2_combout\ : std_logic;
SIGNAL \fsm|Selector25~0_combout\ : std_logic;
SIGNAL \fsm|Selector25~2_combout\ : std_logic;
SIGNAL \fsm|s_nState.S3_1019~combout\ : std_logic;
SIGNAL \fsm|s_pState~15_combout\ : std_logic;
SIGNAL \fsm|s_pState.S3~q\ : std_logic;
SIGNAL \fsm|Selector37~1_combout\ : std_logic;
SIGNAL \fsm|s_bStop.MA1_939~combout\ : std_logic;
SIGNAL \fsm|Selector37~0_combout\ : std_logic;
SIGNAL \fsm|Selector37~2_combout\ : std_logic;
SIGNAL \fsm|s_nState.MA1_1073~combout\ : std_logic;
SIGNAL \fsm|s_pState~13_combout\ : std_logic;
SIGNAL \fsm|s_pState.MA1~q\ : std_logic;
SIGNAL \fsm|Selector35~2_combout\ : std_logic;
SIGNAL \fsm|s_bStop.E1_895~combout\ : std_logic;
SIGNAL \fsm|Selector35~3_combout\ : std_logic;
SIGNAL \fsm|s_nState.E1_1064~combout\ : std_logic;
SIGNAL \fsm|s_pState~19_combout\ : std_logic;
SIGNAL \fsm|s_pState.E1~q\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \fsm|s_bStop.RA1_851~combout\ : std_logic;
SIGNAL \fsm|Selector33~2_combout\ : std_logic;
SIGNAL \fsm|Selector33~3_combout\ : std_logic;
SIGNAL \fsm|s_nState.RA1_1055~combout\ : std_logic;
SIGNAL \fsm|s_pState~16_combout\ : std_logic;
SIGNAL \fsm|s_pState.RA1~q\ : std_logic;
SIGNAL \fsm|Selector9~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~2_combout\ : std_logic;
SIGNAL \fsm|Selector9~3_combout\ : std_logic;
SIGNAL \fsm|s_nState.W_992~combout\ : std_logic;
SIGNAL \fsm|s_pState~22_combout\ : std_logic;
SIGNAL \fsm|s_pState.W~feeder_combout\ : std_logic;
SIGNAL \fsm|s_pState.W~q\ : std_logic;
SIGNAL \fsm|WideOr0~3_combout\ : std_logic;
SIGNAL \fsm|WideOr0~0_combout\ : std_logic;
SIGNAL \fsm|WideOr0~1_combout\ : std_logic;
SIGNAL \fsm|WideOr0~2_combout\ : std_logic;
SIGNAL \fsm|WideOr0~4_combout\ : std_logic;
SIGNAL \fsm|WideOr0~5_combout\ : std_logic;
SIGNAL \fsm|WideOr0~6_combout\ : std_logic;
SIGNAL \fsm|s_stateChanged~0_combout\ : std_logic;
SIGNAL \fsm|s_stateChanged~q\ : std_logic;
SIGNAL \timer|s_cntZero~0_combout\ : std_logic;
SIGNAL \fsm|newTime~combout\ : std_logic;
SIGNAL \fsm|washLED~0_combout\ : std_logic;
SIGNAL \fsm|WideOr9~4_combout\ : std_logic;
SIGNAL \fsm|WideOr7~4_combout\ : std_logic;
SIGNAL \fsm|timeVal[3]~0_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][29]~combout\ : std_logic;
SIGNAL \timer|Add0~62_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][18]~combout\ : std_logic;
SIGNAL \timer|Add0~53_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][17]~4_combout\ : std_logic;
SIGNAL \timer|Add0~50_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][22]~combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][21]~combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][20]~combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][19]~combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][22]~2_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][13]~combout\ : std_logic;
SIGNAL \timer|Add0~1_cout\ : std_logic;
SIGNAL \timer|Add0~3\ : std_logic;
SIGNAL \timer|Add0~6\ : std_logic;
SIGNAL \timer|Add0~9\ : std_logic;
SIGNAL \timer|Add0~12\ : std_logic;
SIGNAL \timer|Add0~15\ : std_logic;
SIGNAL \timer|Add0~18\ : std_logic;
SIGNAL \timer|Add0~21\ : std_logic;
SIGNAL \timer|Add0~24\ : std_logic;
SIGNAL \timer|Add0~27\ : std_logic;
SIGNAL \timer|Add0~30\ : std_logic;
SIGNAL \timer|Add0~33\ : std_logic;
SIGNAL \timer|Add0~36\ : std_logic;
SIGNAL \timer|Add0~39\ : std_logic;
SIGNAL \timer|Add0~42\ : std_logic;
SIGNAL \timer|Add0~44_combout\ : std_logic;
SIGNAL \timer|Add0~17_combout\ : std_logic;
SIGNAL \timer|Add1~0_combout\ : std_logic;
SIGNAL \timer|s_counter~0_combout\ : std_logic;
SIGNAL \timer|s_counter[3]~1_combout\ : std_logic;
SIGNAL \timer|Add1~1\ : std_logic;
SIGNAL \timer|Add1~2_combout\ : std_logic;
SIGNAL \timer|s_counter~2_combout\ : std_logic;
SIGNAL \timer|Add1~3\ : std_logic;
SIGNAL \timer|Add1~4_combout\ : std_logic;
SIGNAL \timer|s_counter~3_combout\ : std_logic;
SIGNAL \timer|Add1~5\ : std_logic;
SIGNAL \timer|Add1~6_combout\ : std_logic;
SIGNAL \timer|s_counter~4_combout\ : std_logic;
SIGNAL \timer|Add1~7\ : std_logic;
SIGNAL \timer|Add1~8_combout\ : std_logic;
SIGNAL \timer|s_counter~5_combout\ : std_logic;
SIGNAL \timer|Add1~9\ : std_logic;
SIGNAL \timer|Add1~10_combout\ : std_logic;
SIGNAL \timer|s_counter~6_combout\ : std_logic;
SIGNAL \timer|Add1~11\ : std_logic;
SIGNAL \timer|Add1~12_combout\ : std_logic;
SIGNAL \timer|s_counter~7_combout\ : std_logic;
SIGNAL \timer|Add1~13\ : std_logic;
SIGNAL \timer|Add1~14_combout\ : std_logic;
SIGNAL \timer|s_counter~8_combout\ : std_logic;
SIGNAL \timer|Add1~15\ : std_logic;
SIGNAL \timer|Add1~16_combout\ : std_logic;
SIGNAL \timer|Add0~2_combout\ : std_logic;
SIGNAL \timer|Add0~4_combout\ : std_logic;
SIGNAL \timer|Add1~17\ : std_logic;
SIGNAL \timer|Add1~18_combout\ : std_logic;
SIGNAL \timer|Add0~5_combout\ : std_logic;
SIGNAL \timer|Add0~7_combout\ : std_logic;
SIGNAL \timer|Add1~19\ : std_logic;
SIGNAL \timer|Add1~20_combout\ : std_logic;
SIGNAL \timer|Add0~8_combout\ : std_logic;
SIGNAL \timer|Add0~10_combout\ : std_logic;
SIGNAL \timer|Add1~21\ : std_logic;
SIGNAL \timer|Add1~22_combout\ : std_logic;
SIGNAL \timer|s_counter~9_combout\ : std_logic;
SIGNAL \timer|Add1~23\ : std_logic;
SIGNAL \timer|Add1~24_combout\ : std_logic;
SIGNAL \timer|Add0~11_combout\ : std_logic;
SIGNAL \timer|Add0~13_combout\ : std_logic;
SIGNAL \timer|Add1~25\ : std_logic;
SIGNAL \timer|Add1~26_combout\ : std_logic;
SIGNAL \timer|Add0~14_combout\ : std_logic;
SIGNAL \timer|Add0~16_combout\ : std_logic;
SIGNAL \timer|Add1~27\ : std_logic;
SIGNAL \timer|Add1~28_combout\ : std_logic;
SIGNAL \timer|Add0~19_combout\ : std_logic;
SIGNAL \timer|Add1~29\ : std_logic;
SIGNAL \timer|Add1~30_combout\ : std_logic;
SIGNAL \timer|Add0~20_combout\ : std_logic;
SIGNAL \timer|Add0~22_combout\ : std_logic;
SIGNAL \timer|Add1~31\ : std_logic;
SIGNAL \timer|Add1~32_combout\ : std_logic;
SIGNAL \timer|Add0~23_combout\ : std_logic;
SIGNAL \timer|Add0~25_combout\ : std_logic;
SIGNAL \timer|Add1~33\ : std_logic;
SIGNAL \timer|Add1~34_combout\ : std_logic;
SIGNAL \timer|Add0~26_combout\ : std_logic;
SIGNAL \timer|Add0~28_combout\ : std_logic;
SIGNAL \timer|Add1~35\ : std_logic;
SIGNAL \timer|Add1~36_combout\ : std_logic;
SIGNAL \timer|Add0~29_combout\ : std_logic;
SIGNAL \timer|Add0~31_combout\ : std_logic;
SIGNAL \timer|Add1~37\ : std_logic;
SIGNAL \timer|Add1~38_combout\ : std_logic;
SIGNAL \timer|Add0~32_combout\ : std_logic;
SIGNAL \timer|Add0~34_combout\ : std_logic;
SIGNAL \timer|Add1~39\ : std_logic;
SIGNAL \timer|Add1~40_combout\ : std_logic;
SIGNAL \timer|Add0~35_combout\ : std_logic;
SIGNAL \timer|Add0~37_combout\ : std_logic;
SIGNAL \timer|Add1~41\ : std_logic;
SIGNAL \timer|Add1~42_combout\ : std_logic;
SIGNAL \timer|Add0~38_combout\ : std_logic;
SIGNAL \timer|Add0~40_combout\ : std_logic;
SIGNAL \timer|Add1~43\ : std_logic;
SIGNAL \timer|Add1~44_combout\ : std_logic;
SIGNAL \timer|Add0~41_combout\ : std_logic;
SIGNAL \timer|Add0~43_combout\ : std_logic;
SIGNAL \timer|Add1~45\ : std_logic;
SIGNAL \timer|Add1~46_combout\ : std_logic;
SIGNAL \timer|Add0~46_combout\ : std_logic;
SIGNAL \timer|Add1~47\ : std_logic;
SIGNAL \timer|Add1~48_combout\ : std_logic;
SIGNAL \timer|Add0~47_combout\ : std_logic;
SIGNAL \timer|Add0~49_combout\ : std_logic;
SIGNAL \timer|Add1~49\ : std_logic;
SIGNAL \timer|Add1~50_combout\ : std_logic;
SIGNAL \timer|Add0~52_combout\ : std_logic;
SIGNAL \timer|Add1~51\ : std_logic;
SIGNAL \timer|Add1~52_combout\ : std_logic;
SIGNAL \timer|Add0~55_combout\ : std_logic;
SIGNAL \timer|Add1~53\ : std_logic;
SIGNAL \timer|Add1~54_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][27]~combout\ : std_logic;
SIGNAL \timer|Add0~56_combout\ : std_logic;
SIGNAL \timer|Add0~58_combout\ : std_logic;
SIGNAL \timer|Add1~55\ : std_logic;
SIGNAL \timer|Add1~56_combout\ : std_logic;
SIGNAL \timer|Mult0|mult_core|romout[0][28]~3_combout\ : std_logic;
SIGNAL \timer|Add0~59_combout\ : std_logic;
SIGNAL \timer|Add0~61_combout\ : std_logic;
SIGNAL \timer|Add1~57\ : std_logic;
SIGNAL \timer|Add1~58_combout\ : std_logic;
SIGNAL \timer|Add0~64_combout\ : std_logic;
SIGNAL \timer|Add1~59\ : std_logic;
SIGNAL \timer|Add1~60_combout\ : std_logic;
SIGNAL \timer|s_counter~10_combout\ : std_logic;
SIGNAL \timer|Add1~61\ : std_logic;
SIGNAL \timer|Add1~62_combout\ : std_logic;
SIGNAL \timer|s_counter~11_combout\ : std_logic;
SIGNAL \timer|Add1~63\ : std_logic;
SIGNAL \timer|Add1~64_combout\ : std_logic;
SIGNAL \timer|s_counter~12_combout\ : std_logic;
SIGNAL \timer|Add1~65\ : std_logic;
SIGNAL \timer|Add1~66_combout\ : std_logic;
SIGNAL \timer|s_counter~13_combout\ : std_logic;
SIGNAL \timer|Add1~67\ : std_logic;
SIGNAL \timer|Add1~68_combout\ : std_logic;
SIGNAL \timer|s_counter~14_combout\ : std_logic;
SIGNAL \timer|Add1~69\ : std_logic;
SIGNAL \timer|Add1~70_combout\ : std_logic;
SIGNAL \timer|s_counter~15_combout\ : std_logic;
SIGNAL \timer|Equal0~10_combout\ : std_logic;
SIGNAL \timer|Add1~71\ : std_logic;
SIGNAL \timer|Add1~72_combout\ : std_logic;
SIGNAL \timer|s_counter~16_combout\ : std_logic;
SIGNAL \timer|Add1~73\ : std_logic;
SIGNAL \timer|Add1~74_combout\ : std_logic;
SIGNAL \timer|s_counter~17_combout\ : std_logic;
SIGNAL \timer|Add1~75\ : std_logic;
SIGNAL \timer|Add1~76_combout\ : std_logic;
SIGNAL \timer|s_counter~18_combout\ : std_logic;
SIGNAL \timer|Add1~77\ : std_logic;
SIGNAL \timer|Add1~78_combout\ : std_logic;
SIGNAL \timer|s_counter~19_combout\ : std_logic;
SIGNAL \timer|Equal0~11_combout\ : std_logic;
SIGNAL \timer|Equal0~0_combout\ : std_logic;
SIGNAL \timer|Equal0~1_combout\ : std_logic;
SIGNAL \timer|Equal0~2_combout\ : std_logic;
SIGNAL \timer|Equal0~3_combout\ : std_logic;
SIGNAL \timer|Equal0~4_combout\ : std_logic;
SIGNAL \timer|Equal0~8_combout\ : std_logic;
SIGNAL \timer|Equal0~5_combout\ : std_logic;
SIGNAL \timer|Equal0~7_combout\ : std_logic;
SIGNAL \timer|Equal0~6_combout\ : std_logic;
SIGNAL \timer|Equal0~9_combout\ : std_logic;
SIGNAL \timer|Equal0~12_combout\ : std_logic;
SIGNAL \timer|s_cntZero~1_combout\ : std_logic;
SIGNAL \timer|s_cntZero~q\ : std_logic;
SIGNAL \fsm|Selector31~1_combout\ : std_logic;
SIGNAL \fsm|s_bStop.Ma2_807~combout\ : std_logic;
SIGNAL \fsm|Selector31~0_combout\ : std_logic;
SIGNAL \fsm|Selector31~2_combout\ : std_logic;
SIGNAL \fsm|s_nState.Ma2_1046~combout\ : std_logic;
SIGNAL \fsm|s_pState~14_combout\ : std_logic;
SIGNAL \fsm|s_pState.Ma2~q\ : std_logic;
SIGNAL \fsm|waterValve~0_combout\ : std_logic;
SIGNAL \fsm|WideOr1~combout\ : std_logic;
SIGNAL \fsm|WideOr2~0_combout\ : std_logic;
SIGNAL \d_reset|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \d_startStop|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \d_p1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \timer|s_counter\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \d_porta|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \d_p2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \d_p3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \fsm|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fsm|ALT_INV_waterValve~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK50 <= CLOCK50;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fsm|Selector24~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|Selector24~0_combout\);

\fsm|Selector40~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|Selector40~0_combout\);

\CLOCK50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK50~input_o\);
\fsm|ALT_INV_WideOr2~0_combout\ <= NOT \fsm|WideOr2~0_combout\;
\fsm|ALT_INV_waterValve~0_combout\ <= NOT \fsm|waterValve~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N16
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_waterValve~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|WideOr1~combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|s_pState.S3~q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|washLED~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK50,
	o => \CLOCK50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK50~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y73_N22
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X18_Y69_N4
\d_reset|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_dirtyIn~0_combout\ = !\SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \d_reset|s_dirtyIn~0_combout\);

-- Location: FF_X18_Y69_N5
\d_reset|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_dirtyIn~q\);

-- Location: FF_X20_Y66_N31
\d_reset|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_reset|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_previousIn~q\);

-- Location: LCCOMB_X20_Y65_N2
\d_reset|s_debounceCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[2]~0_combout\ = (\d_reset|s_dirtyIn~q\ & ((!\d_reset|LessThan0~7_combout\) # (!\d_reset|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(22),
	datac => \d_reset|s_dirtyIn~q\,
	datad => \d_reset|LessThan0~7_combout\,
	combout => \d_reset|s_debounceCnt[2]~0_combout\);

-- Location: LCCOMB_X21_Y66_N18
\d_reset|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~8_combout\ = (\d_reset|s_debounceCnt\(4) & ((GND) # (!\d_reset|Add0~7\))) # (!\d_reset|s_debounceCnt\(4) & (\d_reset|Add0~7\ $ (GND)))
-- \d_reset|Add0~9\ = CARRY((\d_reset|s_debounceCnt\(4)) # (!\d_reset|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_reset|Add0~7\,
	combout => \d_reset|Add0~8_combout\,
	cout => \d_reset|Add0~9\);

-- Location: LCCOMB_X21_Y66_N20
\d_reset|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~10_combout\ = (\d_reset|s_debounceCnt\(5) & (\d_reset|Add0~9\ & VCC)) # (!\d_reset|s_debounceCnt\(5) & (!\d_reset|Add0~9\))
-- \d_reset|Add0~11\ = CARRY((!\d_reset|s_debounceCnt\(5) & !\d_reset|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_reset|Add0~9\,
	combout => \d_reset|Add0~10_combout\,
	cout => \d_reset|Add0~11\);

-- Location: LCCOMB_X20_Y66_N14
\d_reset|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~27_combout\ = (\d_reset|Add0~10_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~10_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~27_combout\);

-- Location: FF_X20_Y66_N15
\d_reset|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~27_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(5));

-- Location: LCCOMB_X21_Y66_N22
\d_reset|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~12_combout\ = (\d_reset|s_debounceCnt\(6) & ((GND) # (!\d_reset|Add0~11\))) # (!\d_reset|s_debounceCnt\(6) & (\d_reset|Add0~11\ $ (GND)))
-- \d_reset|Add0~13\ = CARRY((\d_reset|s_debounceCnt\(6)) # (!\d_reset|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_reset|Add0~11\,
	combout => \d_reset|Add0~12_combout\,
	cout => \d_reset|Add0~13\);

-- Location: LCCOMB_X20_Y65_N4
\d_reset|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~1_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~12_combout\) # (!\d_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~12_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt~1_combout\);

-- Location: FF_X20_Y65_N5
\d_reset|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~1_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(6));

-- Location: LCCOMB_X21_Y66_N24
\d_reset|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~14_combout\ = (\d_reset|s_debounceCnt\(7) & (\d_reset|Add0~13\ & VCC)) # (!\d_reset|s_debounceCnt\(7) & (!\d_reset|Add0~13\))
-- \d_reset|Add0~15\ = CARRY((!\d_reset|s_debounceCnt\(7) & !\d_reset|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_reset|Add0~13\,
	combout => \d_reset|Add0~14_combout\,
	cout => \d_reset|Add0~15\);

-- Location: LCCOMB_X20_Y66_N0
\d_reset|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~12_combout\ = (\d_reset|s_debounceCnt[2]~4_combout\ & \d_reset|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	datad => \d_reset|Add0~14_combout\,
	combout => \d_reset|s_debounceCnt~12_combout\);

-- Location: FF_X20_Y66_N1
\d_reset|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~12_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(7));

-- Location: LCCOMB_X21_Y66_N26
\d_reset|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~16_combout\ = (\d_reset|s_debounceCnt\(8) & ((GND) # (!\d_reset|Add0~15\))) # (!\d_reset|s_debounceCnt\(8) & (\d_reset|Add0~15\ $ (GND)))
-- \d_reset|Add0~17\ = CARRY((\d_reset|s_debounceCnt\(8)) # (!\d_reset|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_reset|Add0~15\,
	combout => \d_reset|Add0~16_combout\,
	cout => \d_reset|Add0~17\);

-- Location: LCCOMB_X20_Y66_N22
\d_reset|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~13_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~16_combout\) # (!\d_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~16_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt~13_combout\);

-- Location: FF_X20_Y66_N23
\d_reset|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~13_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(8));

-- Location: LCCOMB_X21_Y66_N28
\d_reset|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~18_combout\ = (\d_reset|s_debounceCnt\(9) & (\d_reset|Add0~17\ & VCC)) # (!\d_reset|s_debounceCnt\(9) & (!\d_reset|Add0~17\))
-- \d_reset|Add0~19\ = CARRY((!\d_reset|s_debounceCnt\(9) & !\d_reset|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_reset|Add0~17\,
	combout => \d_reset|Add0~18_combout\,
	cout => \d_reset|Add0~19\);

-- Location: LCCOMB_X20_Y66_N20
\d_reset|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~14_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~18_combout\) # (!\d_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~18_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt~14_combout\);

-- Location: FF_X20_Y66_N21
\d_reset|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~14_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(9));

-- Location: LCCOMB_X21_Y66_N30
\d_reset|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~20_combout\ = (\d_reset|s_debounceCnt\(10) & ((GND) # (!\d_reset|Add0~19\))) # (!\d_reset|s_debounceCnt\(10) & (\d_reset|Add0~19\ $ (GND)))
-- \d_reset|Add0~21\ = CARRY((\d_reset|s_debounceCnt\(10)) # (!\d_reset|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_reset|Add0~19\,
	combout => \d_reset|Add0~20_combout\,
	cout => \d_reset|Add0~21\);

-- Location: LCCOMB_X20_Y66_N26
\d_reset|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~15_combout\ = (\d_reset|Add0~20_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~20_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~15_combout\);

-- Location: FF_X20_Y66_N27
\d_reset|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~15_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(10));

-- Location: LCCOMB_X21_Y65_N0
\d_reset|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~22_combout\ = (\d_reset|s_debounceCnt\(11) & (\d_reset|Add0~21\ & VCC)) # (!\d_reset|s_debounceCnt\(11) & (!\d_reset|Add0~21\))
-- \d_reset|Add0~23\ = CARRY((!\d_reset|s_debounceCnt\(11) & !\d_reset|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_reset|Add0~21\,
	combout => \d_reset|Add0~22_combout\,
	cout => \d_reset|Add0~23\);

-- Location: LCCOMB_X20_Y65_N6
\d_reset|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~16_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~22_combout\) # (!\d_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_previousIn~q\,
	datac => \d_reset|Add0~22_combout\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt~16_combout\);

-- Location: FF_X20_Y65_N7
\d_reset|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~16_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(11));

-- Location: LCCOMB_X21_Y65_N2
\d_reset|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~24_combout\ = (\d_reset|s_debounceCnt\(12) & ((GND) # (!\d_reset|Add0~23\))) # (!\d_reset|s_debounceCnt\(12) & (\d_reset|Add0~23\ $ (GND)))
-- \d_reset|Add0~25\ = CARRY((\d_reset|s_debounceCnt\(12)) # (!\d_reset|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_reset|Add0~23\,
	combout => \d_reset|Add0~24_combout\,
	cout => \d_reset|Add0~25\);

-- Location: LCCOMB_X20_Y66_N18
\d_reset|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~8_combout\ = (\d_reset|s_debounceCnt[2]~4_combout\ & \d_reset|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	datad => \d_reset|Add0~24_combout\,
	combout => \d_reset|s_debounceCnt~8_combout\);

-- Location: FF_X20_Y66_N19
\d_reset|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~8_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(12));

-- Location: LCCOMB_X21_Y65_N4
\d_reset|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~26_combout\ = (\d_reset|s_debounceCnt\(13) & (\d_reset|Add0~25\ & VCC)) # (!\d_reset|s_debounceCnt\(13) & (!\d_reset|Add0~25\))
-- \d_reset|Add0~27\ = CARRY((!\d_reset|s_debounceCnt\(13) & !\d_reset|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_reset|Add0~25\,
	combout => \d_reset|Add0~26_combout\,
	cout => \d_reset|Add0~27\);

-- Location: LCCOMB_X20_Y66_N8
\d_reset|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~9_combout\ = (\d_reset|s_debounceCnt[2]~4_combout\ & \d_reset|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	datad => \d_reset|Add0~26_combout\,
	combout => \d_reset|s_debounceCnt~9_combout\);

-- Location: FF_X20_Y66_N9
\d_reset|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~9_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(13));

-- Location: LCCOMB_X21_Y65_N6
\d_reset|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~28_combout\ = (\d_reset|s_debounceCnt\(14) & ((GND) # (!\d_reset|Add0~27\))) # (!\d_reset|s_debounceCnt\(14) & (\d_reset|Add0~27\ $ (GND)))
-- \d_reset|Add0~29\ = CARRY((\d_reset|s_debounceCnt\(14)) # (!\d_reset|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_reset|Add0~27\,
	combout => \d_reset|Add0~28_combout\,
	cout => \d_reset|Add0~29\);

-- Location: LCCOMB_X20_Y65_N16
\d_reset|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~17_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~28_combout\) # (!\d_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~28_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt~17_combout\);

-- Location: FF_X20_Y65_N17
\d_reset|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~17_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(14));

-- Location: LCCOMB_X21_Y65_N8
\d_reset|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~30_combout\ = (\d_reset|s_debounceCnt\(15) & (\d_reset|Add0~29\ & VCC)) # (!\d_reset|s_debounceCnt\(15) & (!\d_reset|Add0~29\))
-- \d_reset|Add0~31\ = CARRY((!\d_reset|s_debounceCnt\(15) & !\d_reset|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_reset|Add0~29\,
	combout => \d_reset|Add0~30_combout\,
	cout => \d_reset|Add0~31\);

-- Location: LCCOMB_X21_Y65_N24
\d_reset|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~5_combout\ = (\d_reset|Add0~30_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|Add0~30_combout\,
	datad => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~5_combout\);

-- Location: FF_X21_Y65_N25
\d_reset|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~5_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(15));

-- Location: LCCOMB_X21_Y65_N10
\d_reset|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~32_combout\ = (\d_reset|s_debounceCnt\(16) & ((GND) # (!\d_reset|Add0~31\))) # (!\d_reset|s_debounceCnt\(16) & (\d_reset|Add0~31\ $ (GND)))
-- \d_reset|Add0~33\ = CARRY((\d_reset|s_debounceCnt\(16)) # (!\d_reset|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_reset|Add0~31\,
	combout => \d_reset|Add0~32_combout\,
	cout => \d_reset|Add0~33\);

-- Location: LCCOMB_X20_Y65_N26
\d_reset|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~6_combout\ = (\d_reset|Add0~32_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~32_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~6_combout\);

-- Location: FF_X20_Y65_N27
\d_reset|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~6_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(16));

-- Location: LCCOMB_X21_Y65_N12
\d_reset|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~34_combout\ = (\d_reset|s_debounceCnt\(17) & (\d_reset|Add0~33\ & VCC)) # (!\d_reset|s_debounceCnt\(17) & (!\d_reset|Add0~33\))
-- \d_reset|Add0~35\ = CARRY((!\d_reset|s_debounceCnt\(17) & !\d_reset|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_reset|Add0~33\,
	combout => \d_reset|Add0~34_combout\,
	cout => \d_reset|Add0~35\);

-- Location: LCCOMB_X21_Y65_N26
\d_reset|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~7_combout\ = (\d_reset|s_debounceCnt[2]~4_combout\ & \d_reset|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt[2]~4_combout\,
	datad => \d_reset|Add0~34_combout\,
	combout => \d_reset|s_debounceCnt~7_combout\);

-- Location: FF_X21_Y65_N27
\d_reset|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~7_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(17));

-- Location: LCCOMB_X21_Y65_N14
\d_reset|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~36_combout\ = (\d_reset|s_debounceCnt\(18) & ((GND) # (!\d_reset|Add0~35\))) # (!\d_reset|s_debounceCnt\(18) & (\d_reset|Add0~35\ $ (GND)))
-- \d_reset|Add0~37\ = CARRY((\d_reset|s_debounceCnt\(18)) # (!\d_reset|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_reset|Add0~35\,
	combout => \d_reset|Add0~36_combout\,
	cout => \d_reset|Add0~37\);

-- Location: LCCOMB_X20_Y65_N18
\d_reset|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[18]~18_combout\ = (\d_reset|s_debounceCnt[2]~3_combout\ & (\d_reset|s_debounceCnt[2]~0_combout\ & ((\d_reset|Add0~36_combout\) # (!\d_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt[2]~3_combout\,
	datab => \d_reset|Add0~36_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~0_combout\,
	combout => \d_reset|s_debounceCnt[18]~18_combout\);

-- Location: FF_X20_Y65_N19
\d_reset|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(18));

-- Location: LCCOMB_X19_Y65_N0
\d_reset|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~3_combout\ = (!\d_reset|s_debounceCnt\(11) & (!\d_reset|s_debounceCnt\(18) & (!\d_reset|s_debounceCnt\(19) & !\d_reset|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(11),
	datab => \d_reset|s_debounceCnt\(18),
	datac => \d_reset|s_debounceCnt\(19),
	datad => \d_reset|s_debounceCnt\(14),
	combout => \d_reset|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X20_Y65_N0
\d_reset|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~0_combout\ = (!\d_reset|s_debounceCnt\(17) & (!\d_reset|s_debounceCnt\(6) & (!\d_reset|s_debounceCnt\(16) & !\d_reset|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(17),
	datab => \d_reset|s_debounceCnt\(6),
	datac => \d_reset|s_debounceCnt\(16),
	datad => \d_reset|s_debounceCnt\(15),
	combout => \d_reset|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X20_Y66_N4
\d_reset|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~2_combout\ = (!\d_reset|s_debounceCnt\(10) & (!\d_reset|s_debounceCnt\(9) & (!\d_reset|s_debounceCnt\(8) & !\d_reset|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(10),
	datab => \d_reset|s_debounceCnt\(9),
	datac => \d_reset|s_debounceCnt\(8),
	datad => \d_reset|s_debounceCnt\(7),
	combout => \d_reset|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X20_Y66_N6
\d_reset|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~1_combout\ = (!\d_reset|s_debounceCnt\(21) & (!\d_reset|s_debounceCnt\(13) & (!\d_reset|s_debounceCnt\(20) & !\d_reset|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(21),
	datab => \d_reset|s_debounceCnt\(13),
	datac => \d_reset|s_debounceCnt\(20),
	datad => \d_reset|s_debounceCnt\(12),
	combout => \d_reset|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X20_Y66_N10
\d_reset|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~4_combout\ = (\d_reset|s_pulsedOut~3_combout\ & (\d_reset|s_pulsedOut~0_combout\ & (\d_reset|s_pulsedOut~2_combout\ & \d_reset|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~3_combout\,
	datab => \d_reset|s_pulsedOut~0_combout\,
	datac => \d_reset|s_pulsedOut~2_combout\,
	datad => \d_reset|s_pulsedOut~1_combout\,
	combout => \d_reset|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X20_Y66_N2
\d_reset|s_debounceCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[2]~2_combout\ = ((\d_reset|s_debounceCnt\(0)) # ((\d_reset|s_debounceCnt\(5)) # (!\d_reset|s_pulsedOut~4_combout\))) # (!\d_reset|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~5_combout\,
	datab => \d_reset|s_debounceCnt\(0),
	datac => \d_reset|s_debounceCnt\(5),
	datad => \d_reset|s_pulsedOut~4_combout\,
	combout => \d_reset|s_debounceCnt[2]~2_combout\);

-- Location: LCCOMB_X20_Y66_N30
\d_reset|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[2]~3_combout\ = (\d_reset|s_debounceCnt\(22)) # (((\d_reset|s_debounceCnt[2]~2_combout\) # (!\d_reset|s_previousIn~q\)) # (!\d_reset|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(22),
	datab => \d_reset|s_dirtyIn~q\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt[2]~2_combout\,
	combout => \d_reset|s_debounceCnt[2]~3_combout\);

-- Location: LCCOMB_X21_Y65_N16
\d_reset|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~38_combout\ = (\d_reset|s_debounceCnt\(19) & (\d_reset|Add0~37\ & VCC)) # (!\d_reset|s_debounceCnt\(19) & (!\d_reset|Add0~37\))
-- \d_reset|Add0~39\ = CARRY((!\d_reset|s_debounceCnt\(19) & !\d_reset|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_reset|Add0~37\,
	combout => \d_reset|Add0~38_combout\,
	cout => \d_reset|Add0~39\);

-- Location: LCCOMB_X20_Y65_N12
\d_reset|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[19]~19_combout\ = (\d_reset|s_debounceCnt[2]~0_combout\ & (\d_reset|s_debounceCnt[2]~3_combout\ & ((\d_reset|Add0~38_combout\) # (!\d_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_previousIn~q\,
	datab => \d_reset|s_debounceCnt[2]~0_combout\,
	datac => \d_reset|s_debounceCnt[2]~3_combout\,
	datad => \d_reset|Add0~38_combout\,
	combout => \d_reset|s_debounceCnt[19]~19_combout\);

-- Location: FF_X20_Y65_N13
\d_reset|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(19));

-- Location: LCCOMB_X21_Y65_N18
\d_reset|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~40_combout\ = (\d_reset|s_debounceCnt\(20) & ((GND) # (!\d_reset|Add0~39\))) # (!\d_reset|s_debounceCnt\(20) & (\d_reset|Add0~39\ $ (GND)))
-- \d_reset|Add0~41\ = CARRY((\d_reset|s_debounceCnt\(20)) # (!\d_reset|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_reset|Add0~39\,
	combout => \d_reset|Add0~40_combout\,
	cout => \d_reset|Add0~41\);

-- Location: LCCOMB_X21_Y65_N28
\d_reset|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[20]~10_combout\ = (\d_reset|Add0~40_combout\ & (\d_reset|s_debounceCnt[2]~3_combout\ & \d_reset|s_debounceCnt[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~40_combout\,
	datac => \d_reset|s_debounceCnt[2]~3_combout\,
	datad => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt[20]~10_combout\);

-- Location: FF_X21_Y65_N29
\d_reset|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(20));

-- Location: LCCOMB_X21_Y65_N20
\d_reset|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~42_combout\ = (\d_reset|s_debounceCnt\(21) & (\d_reset|Add0~41\ & VCC)) # (!\d_reset|s_debounceCnt\(21) & (!\d_reset|Add0~41\))
-- \d_reset|Add0~43\ = CARRY((!\d_reset|s_debounceCnt\(21) & !\d_reset|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_reset|Add0~41\,
	combout => \d_reset|Add0~42_combout\,
	cout => \d_reset|Add0~43\);

-- Location: LCCOMB_X21_Y65_N30
\d_reset|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[21]~11_combout\ = (\d_reset|Add0~42_combout\ & (\d_reset|s_debounceCnt[2]~3_combout\ & \d_reset|s_debounceCnt[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~42_combout\,
	datac => \d_reset|s_debounceCnt[2]~3_combout\,
	datad => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt[21]~11_combout\);

-- Location: FF_X21_Y65_N31
\d_reset|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(21));

-- Location: LCCOMB_X20_Y65_N30
\d_reset|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~4_combout\ = (\d_reset|s_debounceCnt\(13)) # ((\d_reset|s_debounceCnt\(12)) # ((\d_reset|s_debounceCnt\(10) & \d_reset|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(10),
	datab => \d_reset|s_debounceCnt\(13),
	datac => \d_reset|s_debounceCnt\(12),
	datad => \d_reset|s_debounceCnt\(11),
	combout => \d_reset|LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y65_N24
\d_reset|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~5_combout\ = (\d_reset|s_debounceCnt\(16)) # ((\d_reset|s_debounceCnt\(15)) # ((\d_reset|LessThan0~4_combout\ & \d_reset|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|LessThan0~4_combout\,
	datab => \d_reset|s_debounceCnt\(14),
	datac => \d_reset|s_debounceCnt\(16),
	datad => \d_reset|s_debounceCnt\(15),
	combout => \d_reset|LessThan0~5_combout\);

-- Location: LCCOMB_X20_Y65_N22
\d_reset|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~6_combout\ = (\d_reset|s_debounceCnt\(19) & (\d_reset|s_debounceCnt\(18) & ((\d_reset|s_debounceCnt\(17)) # (\d_reset|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(19),
	datab => \d_reset|s_debounceCnt\(18),
	datac => \d_reset|s_debounceCnt\(17),
	datad => \d_reset|LessThan0~5_combout\,
	combout => \d_reset|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y65_N14
\d_reset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~0_combout\ = (\d_reset|s_debounceCnt\(8) & (\d_reset|s_debounceCnt\(14) & (\d_reset|s_debounceCnt\(19) & \d_reset|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(8),
	datab => \d_reset|s_debounceCnt\(14),
	datac => \d_reset|s_debounceCnt\(19),
	datad => \d_reset|s_debounceCnt\(18),
	combout => \d_reset|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y65_N16
\d_reset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~1_combout\ = (\d_reset|s_debounceCnt\(11) & \d_reset|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(11),
	datad => \d_reset|s_debounceCnt\(9),
	combout => \d_reset|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y66_N16
\d_reset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~2_combout\ = (\d_reset|s_debounceCnt\(6) & ((\d_reset|s_debounceCnt\(0)) # ((\d_reset|s_debounceCnt\(5)) # (!\d_reset|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(6),
	datab => \d_reset|s_debounceCnt\(0),
	datac => \d_reset|s_debounceCnt\(5),
	datad => \d_reset|s_pulsedOut~5_combout\,
	combout => \d_reset|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y65_N28
\d_reset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~3_combout\ = (\d_reset|LessThan0~0_combout\ & (\d_reset|LessThan0~1_combout\ & ((\d_reset|s_debounceCnt\(7)) # (\d_reset|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|LessThan0~0_combout\,
	datab => \d_reset|s_debounceCnt\(7),
	datac => \d_reset|LessThan0~1_combout\,
	datad => \d_reset|LessThan0~2_combout\,
	combout => \d_reset|LessThan0~3_combout\);

-- Location: LCCOMB_X20_Y65_N20
\d_reset|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|LessThan0~7_combout\ = (\d_reset|s_debounceCnt\(21)) # ((\d_reset|s_debounceCnt\(20)) # ((\d_reset|LessThan0~6_combout\) # (\d_reset|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(21),
	datab => \d_reset|s_debounceCnt\(20),
	datac => \d_reset|LessThan0~6_combout\,
	datad => \d_reset|LessThan0~3_combout\,
	combout => \d_reset|LessThan0~7_combout\);

-- Location: LCCOMB_X20_Y65_N10
\d_reset|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[22]~25_combout\ = (\d_reset|s_dirtyIn~q\ & ((\d_reset|s_debounceCnt\(22) & (!\d_reset|LessThan0~7_combout\)) # (!\d_reset|s_debounceCnt\(22) & ((\d_reset|s_debounceCnt[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(22),
	datab => \d_reset|LessThan0~7_combout\,
	datac => \d_reset|s_dirtyIn~q\,
	datad => \d_reset|s_debounceCnt[2]~2_combout\,
	combout => \d_reset|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X21_Y65_N22
\d_reset|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~44_combout\ = \d_reset|Add0~43\ $ (\d_reset|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d_reset|s_debounceCnt\(22),
	cin => \d_reset|Add0~43\,
	combout => \d_reset|Add0~44_combout\);

-- Location: LCCOMB_X20_Y65_N14
\d_reset|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[22]~26_combout\ = (\d_reset|s_previousIn~q\ & (\d_reset|s_debounceCnt[22]~25_combout\ & ((\d_reset|Add0~44_combout\)))) # (!\d_reset|s_previousIn~q\ & (((\d_reset|s_debounceCnt[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt[22]~25_combout\,
	datab => \d_reset|s_debounceCnt[2]~0_combout\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|Add0~44_combout\,
	combout => \d_reset|s_debounceCnt[22]~26_combout\);

-- Location: FF_X20_Y65_N15
\d_reset|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(22));

-- Location: LCCOMB_X20_Y65_N8
\d_reset|s_debounceCnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt[2]~4_combout\ = (\d_reset|s_previousIn~q\ & (\d_reset|s_dirtyIn~q\ & ((!\d_reset|LessThan0~7_combout\) # (!\d_reset|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_previousIn~q\,
	datab => \d_reset|s_dirtyIn~q\,
	datac => \d_reset|s_debounceCnt\(22),
	datad => \d_reset|LessThan0~7_combout\,
	combout => \d_reset|s_debounceCnt[2]~4_combout\);

-- Location: LCCOMB_X21_Y66_N10
\d_reset|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~0_combout\ = \d_reset|s_debounceCnt\(0) $ (VCC)
-- \d_reset|Add0~1\ = CARRY(\d_reset|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_reset|Add0~0_combout\,
	cout => \d_reset|Add0~1\);

-- Location: LCCOMB_X20_Y66_N24
\d_reset|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~24_combout\ = (\d_reset|s_debounceCnt[2]~4_combout\ & \d_reset|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	datad => \d_reset|Add0~0_combout\,
	combout => \d_reset|s_debounceCnt~24_combout\);

-- Location: FF_X20_Y66_N25
\d_reset|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~24_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(0));

-- Location: LCCOMB_X21_Y66_N12
\d_reset|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~2_combout\ = (\d_reset|s_debounceCnt\(1) & (\d_reset|Add0~1\ & VCC)) # (!\d_reset|s_debounceCnt\(1) & (!\d_reset|Add0~1\))
-- \d_reset|Add0~3\ = CARRY((!\d_reset|s_debounceCnt\(1) & !\d_reset|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_reset|Add0~1\,
	combout => \d_reset|Add0~2_combout\,
	cout => \d_reset|Add0~3\);

-- Location: LCCOMB_X21_Y66_N0
\d_reset|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~20_combout\ = (\d_reset|Add0~2_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|Add0~2_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~20_combout\);

-- Location: FF_X21_Y66_N1
\d_reset|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~20_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(1));

-- Location: LCCOMB_X21_Y66_N14
\d_reset|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~4_combout\ = (\d_reset|s_debounceCnt\(2) & ((GND) # (!\d_reset|Add0~3\))) # (!\d_reset|s_debounceCnt\(2) & (\d_reset|Add0~3\ $ (GND)))
-- \d_reset|Add0~5\ = CARRY((\d_reset|s_debounceCnt\(2)) # (!\d_reset|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_reset|Add0~3\,
	combout => \d_reset|Add0~4_combout\,
	cout => \d_reset|Add0~5\);

-- Location: LCCOMB_X21_Y66_N2
\d_reset|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~21_combout\ = (\d_reset|Add0~4_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~4_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~21_combout\);

-- Location: FF_X21_Y66_N3
\d_reset|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~21_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(2));

-- Location: LCCOMB_X21_Y66_N16
\d_reset|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|Add0~6_combout\ = (\d_reset|s_debounceCnt\(3) & (\d_reset|Add0~5\ & VCC)) # (!\d_reset|s_debounceCnt\(3) & (!\d_reset|Add0~5\))
-- \d_reset|Add0~7\ = CARRY((!\d_reset|s_debounceCnt\(3) & !\d_reset|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_reset|Add0~5\,
	combout => \d_reset|Add0~6_combout\,
	cout => \d_reset|Add0~7\);

-- Location: LCCOMB_X21_Y66_N8
\d_reset|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~22_combout\ = (\d_reset|Add0~6_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~6_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~22_combout\);

-- Location: FF_X21_Y66_N9
\d_reset|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~22_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(3));

-- Location: LCCOMB_X21_Y66_N6
\d_reset|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_debounceCnt~23_combout\ = (\d_reset|Add0~8_combout\ & \d_reset|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|Add0~8_combout\,
	datac => \d_reset|s_debounceCnt[2]~4_combout\,
	combout => \d_reset|s_debounceCnt~23_combout\);

-- Location: FF_X21_Y66_N7
\d_reset|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_debounceCnt~23_combout\,
	ena => \d_reset|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_debounceCnt\(4));

-- Location: LCCOMB_X21_Y66_N4
\d_reset|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~5_combout\ = (!\d_reset|s_debounceCnt\(4) & (!\d_reset|s_debounceCnt\(2) & (!\d_reset|s_debounceCnt\(3) & !\d_reset|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(4),
	datab => \d_reset|s_debounceCnt\(2),
	datac => \d_reset|s_debounceCnt\(3),
	datad => \d_reset|s_debounceCnt\(1),
	combout => \d_reset|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X20_Y66_N28
\d_reset|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~6_combout\ = (!\d_reset|s_debounceCnt\(22) & (\d_reset|s_dirtyIn~q\ & (\d_reset|s_previousIn~q\ & \d_reset|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_debounceCnt\(22),
	datab => \d_reset|s_dirtyIn~q\,
	datac => \d_reset|s_previousIn~q\,
	datad => \d_reset|s_debounceCnt\(0),
	combout => \d_reset|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X20_Y66_N12
\d_reset|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_reset|s_pulsedOut~7_combout\ = (\d_reset|s_pulsedOut~5_combout\ & (\d_reset|s_pulsedOut~6_combout\ & (!\d_reset|s_debounceCnt\(5) & \d_reset|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~5_combout\,
	datab => \d_reset|s_pulsedOut~6_combout\,
	datac => \d_reset|s_debounceCnt\(5),
	datad => \d_reset|s_pulsedOut~4_combout\,
	combout => \d_reset|s_pulsedOut~7_combout\);

-- Location: FF_X20_Y66_N13
\d_reset|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_reset|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_reset|s_pulsedOut~q\);

-- Location: IOIBUF_X23_Y73_N22
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X23_Y69_N22
\d_startStop|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \d_startStop|s_dirtyIn~0_combout\);

-- Location: FF_X23_Y69_N23
\d_startStop|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_dirtyIn~q\);

-- Location: FF_X21_Y69_N25
\d_startStop|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_startStop|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_previousIn~q\);

-- Location: LCCOMB_X20_Y70_N16
\d_startStop|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~6_combout\ = (\d_startStop|s_debounceCnt\(3) & (\d_startStop|Add0~5\ & VCC)) # (!\d_startStop|s_debounceCnt\(3) & (!\d_startStop|Add0~5\))
-- \d_startStop|Add0~7\ = CARRY((!\d_startStop|s_debounceCnt\(3) & !\d_startStop|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_startStop|Add0~5\,
	combout => \d_startStop|Add0~6_combout\,
	cout => \d_startStop|Add0~7\);

-- Location: LCCOMB_X20_Y70_N18
\d_startStop|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~8_combout\ = (\d_startStop|s_debounceCnt\(4) & ((GND) # (!\d_startStop|Add0~7\))) # (!\d_startStop|s_debounceCnt\(4) & (\d_startStop|Add0~7\ $ (GND)))
-- \d_startStop|Add0~9\ = CARRY((\d_startStop|s_debounceCnt\(4)) # (!\d_startStop|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_startStop|Add0~7\,
	combout => \d_startStop|Add0~8_combout\,
	cout => \d_startStop|Add0~9\);

-- Location: LCCOMB_X21_Y69_N28
\d_startStop|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~22_combout\ = (\d_startStop|Add0~8_combout\ & (\d_startStop|s_previousIn~q\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|Add0~8_combout\,
	datab => \d_startStop|s_previousIn~q\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~22_combout\);

-- Location: FF_X21_Y69_N29
\d_startStop|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~22_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(4));

-- Location: LCCOMB_X20_Y70_N20
\d_startStop|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~10_combout\ = (\d_startStop|s_debounceCnt\(5) & (\d_startStop|Add0~9\ & VCC)) # (!\d_startStop|s_debounceCnt\(5) & (!\d_startStop|Add0~9\))
-- \d_startStop|Add0~11\ = CARRY((!\d_startStop|s_debounceCnt\(5) & !\d_startStop|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_startStop|Add0~9\,
	combout => \d_startStop|Add0~10_combout\,
	cout => \d_startStop|Add0~11\);

-- Location: LCCOMB_X20_Y70_N8
\d_startStop|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~27_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|Add0~10_combout\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~10_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~27_combout\);

-- Location: FF_X20_Y70_N9
\d_startStop|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~27_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(5));

-- Location: LCCOMB_X20_Y70_N22
\d_startStop|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~12_combout\ = (\d_startStop|s_debounceCnt\(6) & ((GND) # (!\d_startStop|Add0~11\))) # (!\d_startStop|s_debounceCnt\(6) & (\d_startStop|Add0~11\ $ (GND)))
-- \d_startStop|Add0~13\ = CARRY((\d_startStop|s_debounceCnt\(6)) # (!\d_startStop|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_startStop|Add0~11\,
	combout => \d_startStop|Add0~12_combout\,
	cout => \d_startStop|Add0~13\);

-- Location: LCCOMB_X20_Y70_N0
\d_startStop|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~1_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~12_combout\) # (!\d_startStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~12_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~1_combout\);

-- Location: FF_X20_Y70_N1
\d_startStop|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~1_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(6));

-- Location: LCCOMB_X20_Y70_N24
\d_startStop|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~14_combout\ = (\d_startStop|s_debounceCnt\(7) & (\d_startStop|Add0~13\ & VCC)) # (!\d_startStop|s_debounceCnt\(7) & (!\d_startStop|Add0~13\))
-- \d_startStop|Add0~15\ = CARRY((!\d_startStop|s_debounceCnt\(7) & !\d_startStop|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_startStop|Add0~13\,
	combout => \d_startStop|Add0~14_combout\,
	cout => \d_startStop|Add0~15\);

-- Location: LCCOMB_X21_Y69_N16
\d_startStop|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~11_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|Add0~14_combout\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~14_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~11_combout\);

-- Location: FF_X21_Y69_N17
\d_startStop|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~11_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(7));

-- Location: LCCOMB_X20_Y70_N26
\d_startStop|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~16_combout\ = (\d_startStop|s_debounceCnt\(8) & ((GND) # (!\d_startStop|Add0~15\))) # (!\d_startStop|s_debounceCnt\(8) & (\d_startStop|Add0~15\ $ (GND)))
-- \d_startStop|Add0~17\ = CARRY((\d_startStop|s_debounceCnt\(8)) # (!\d_startStop|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_startStop|Add0~15\,
	combout => \d_startStop|Add0~16_combout\,
	cout => \d_startStop|Add0~17\);

-- Location: LCCOMB_X21_Y69_N30
\d_startStop|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~12_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~16_combout\) # (!\d_startStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~16_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~12_combout\);

-- Location: FF_X21_Y69_N31
\d_startStop|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~12_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(8));

-- Location: LCCOMB_X20_Y70_N28
\d_startStop|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~18_combout\ = (\d_startStop|s_debounceCnt\(9) & (\d_startStop|Add0~17\ & VCC)) # (!\d_startStop|s_debounceCnt\(9) & (!\d_startStop|Add0~17\))
-- \d_startStop|Add0~19\ = CARRY((!\d_startStop|s_debounceCnt\(9) & !\d_startStop|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_startStop|Add0~17\,
	combout => \d_startStop|Add0~18_combout\,
	cout => \d_startStop|Add0~19\);

-- Location: LCCOMB_X20_Y70_N2
\d_startStop|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~13_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~18_combout\) # (!\d_startStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~18_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~13_combout\);

-- Location: FF_X20_Y70_N3
\d_startStop|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~13_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(9));

-- Location: LCCOMB_X20_Y70_N30
\d_startStop|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~20_combout\ = (\d_startStop|s_debounceCnt\(10) & ((GND) # (!\d_startStop|Add0~19\))) # (!\d_startStop|s_debounceCnt\(10) & (\d_startStop|Add0~19\ $ (GND)))
-- \d_startStop|Add0~21\ = CARRY((\d_startStop|s_debounceCnt\(10)) # (!\d_startStop|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_startStop|Add0~19\,
	combout => \d_startStop|Add0~20_combout\,
	cout => \d_startStop|Add0~21\);

-- Location: LCCOMB_X19_Y69_N10
\d_startStop|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~14_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~20_combout\,
	combout => \d_startStop|s_debounceCnt~14_combout\);

-- Location: FF_X19_Y69_N11
\d_startStop|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~14_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(10));

-- Location: LCCOMB_X20_Y69_N0
\d_startStop|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~22_combout\ = (\d_startStop|s_debounceCnt\(11) & (\d_startStop|Add0~21\ & VCC)) # (!\d_startStop|s_debounceCnt\(11) & (!\d_startStop|Add0~21\))
-- \d_startStop|Add0~23\ = CARRY((!\d_startStop|s_debounceCnt\(11) & !\d_startStop|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_startStop|Add0~21\,
	combout => \d_startStop|Add0~22_combout\,
	cout => \d_startStop|Add0~23\);

-- Location: LCCOMB_X21_Y69_N14
\d_startStop|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~15_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~22_combout\) # (!\d_startStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~22_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~15_combout\);

-- Location: FF_X21_Y69_N15
\d_startStop|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~15_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(11));

-- Location: LCCOMB_X20_Y69_N2
\d_startStop|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~24_combout\ = (\d_startStop|s_debounceCnt\(12) & ((GND) # (!\d_startStop|Add0~23\))) # (!\d_startStop|s_debounceCnt\(12) & (\d_startStop|Add0~23\ $ (GND)))
-- \d_startStop|Add0~25\ = CARRY((\d_startStop|s_debounceCnt\(12)) # (!\d_startStop|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_startStop|Add0~23\,
	combout => \d_startStop|Add0~24_combout\,
	cout => \d_startStop|Add0~25\);

-- Location: LCCOMB_X19_Y69_N28
\d_startStop|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~7_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~24_combout\,
	combout => \d_startStop|s_debounceCnt~7_combout\);

-- Location: FF_X19_Y69_N29
\d_startStop|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~7_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(12));

-- Location: LCCOMB_X20_Y69_N4
\d_startStop|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~26_combout\ = (\d_startStop|s_debounceCnt\(13) & (\d_startStop|Add0~25\ & VCC)) # (!\d_startStop|s_debounceCnt\(13) & (!\d_startStop|Add0~25\))
-- \d_startStop|Add0~27\ = CARRY((!\d_startStop|s_debounceCnt\(13) & !\d_startStop|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_startStop|Add0~25\,
	combout => \d_startStop|Add0~26_combout\,
	cout => \d_startStop|Add0~27\);

-- Location: LCCOMB_X20_Y69_N28
\d_startStop|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~8_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|Add0~26_combout\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~26_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~8_combout\);

-- Location: FF_X20_Y69_N29
\d_startStop|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~8_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(13));

-- Location: LCCOMB_X20_Y69_N6
\d_startStop|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~28_combout\ = (\d_startStop|s_debounceCnt\(14) & ((GND) # (!\d_startStop|Add0~27\))) # (!\d_startStop|s_debounceCnt\(14) & (\d_startStop|Add0~27\ $ (GND)))
-- \d_startStop|Add0~29\ = CARRY((\d_startStop|s_debounceCnt\(14)) # (!\d_startStop|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_startStop|Add0~27\,
	combout => \d_startStop|Add0~28_combout\,
	cout => \d_startStop|Add0~29\);

-- Location: LCCOMB_X21_Y69_N20
\d_startStop|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~16_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~28_combout\) # (!\d_startStop|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~28_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~16_combout\);

-- Location: FF_X21_Y69_N21
\d_startStop|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~16_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(14));

-- Location: LCCOMB_X20_Y69_N8
\d_startStop|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~30_combout\ = (\d_startStop|s_debounceCnt\(15) & (\d_startStop|Add0~29\ & VCC)) # (!\d_startStop|s_debounceCnt\(15) & (!\d_startStop|Add0~29\))
-- \d_startStop|Add0~31\ = CARRY((!\d_startStop|s_debounceCnt\(15) & !\d_startStop|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_startStop|Add0~29\,
	combout => \d_startStop|Add0~30_combout\,
	cout => \d_startStop|Add0~31\);

-- Location: LCCOMB_X21_Y69_N0
\d_startStop|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~4_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~30_combout\,
	combout => \d_startStop|s_debounceCnt~4_combout\);

-- Location: FF_X21_Y69_N1
\d_startStop|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~4_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(15));

-- Location: LCCOMB_X20_Y69_N10
\d_startStop|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~32_combout\ = (\d_startStop|s_debounceCnt\(16) & ((GND) # (!\d_startStop|Add0~31\))) # (!\d_startStop|s_debounceCnt\(16) & (\d_startStop|Add0~31\ $ (GND)))
-- \d_startStop|Add0~33\ = CARRY((\d_startStop|s_debounceCnt\(16)) # (!\d_startStop|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_startStop|Add0~31\,
	combout => \d_startStop|Add0~32_combout\,
	cout => \d_startStop|Add0~33\);

-- Location: LCCOMB_X21_Y69_N18
\d_startStop|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~5_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~32_combout\,
	combout => \d_startStop|s_debounceCnt~5_combout\);

-- Location: FF_X21_Y69_N19
\d_startStop|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~5_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(16));

-- Location: LCCOMB_X20_Y69_N12
\d_startStop|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~34_combout\ = (\d_startStop|s_debounceCnt\(17) & (\d_startStop|Add0~33\ & VCC)) # (!\d_startStop|s_debounceCnt\(17) & (!\d_startStop|Add0~33\))
-- \d_startStop|Add0~35\ = CARRY((!\d_startStop|s_debounceCnt\(17) & !\d_startStop|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_startStop|Add0~33\,
	combout => \d_startStop|Add0~34_combout\,
	cout => \d_startStop|Add0~35\);

-- Location: LCCOMB_X21_Y69_N8
\d_startStop|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~6_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~34_combout\,
	combout => \d_startStop|s_debounceCnt~6_combout\);

-- Location: FF_X21_Y69_N9
\d_startStop|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~6_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(17));

-- Location: LCCOMB_X20_Y69_N14
\d_startStop|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~36_combout\ = (\d_startStop|s_debounceCnt\(18) & ((GND) # (!\d_startStop|Add0~35\))) # (!\d_startStop|s_debounceCnt\(18) & (\d_startStop|Add0~35\ $ (GND)))
-- \d_startStop|Add0~37\ = CARRY((\d_startStop|s_debounceCnt\(18)) # (!\d_startStop|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_startStop|Add0~35\,
	combout => \d_startStop|Add0~36_combout\,
	cout => \d_startStop|Add0~37\);

-- Location: LCCOMB_X19_Y69_N24
\d_startStop|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[18]~17_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & (\d_startStop|s_debounceCnt[19]~3_combout\ & ((\d_startStop|Add0~36_combout\) # (!\d_startStop|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt[19]~0_combout\,
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~36_combout\,
	datad => \d_startStop|s_debounceCnt[19]~3_combout\,
	combout => \d_startStop|s_debounceCnt[18]~17_combout\);

-- Location: FF_X19_Y69_N25
\d_startStop|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(18));

-- Location: LCCOMB_X20_Y69_N16
\d_startStop|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~38_combout\ = (\d_startStop|s_debounceCnt\(19) & (\d_startStop|Add0~37\ & VCC)) # (!\d_startStop|s_debounceCnt\(19) & (!\d_startStop|Add0~37\))
-- \d_startStop|Add0~39\ = CARRY((!\d_startStop|s_debounceCnt\(19) & !\d_startStop|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_startStop|Add0~37\,
	combout => \d_startStop|Add0~38_combout\,
	cout => \d_startStop|Add0~39\);

-- Location: LCCOMB_X19_Y69_N6
\d_startStop|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[19]~18_combout\ = (\d_startStop|s_debounceCnt[19]~3_combout\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & ((\d_startStop|Add0~38_combout\) # (!\d_startStop|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datab => \d_startStop|s_debounceCnt[19]~3_combout\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~38_combout\,
	combout => \d_startStop|s_debounceCnt[19]~18_combout\);

-- Location: FF_X19_Y69_N7
\d_startStop|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(19));

-- Location: LCCOMB_X19_Y69_N14
\d_startStop|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~4_combout\ = (\d_startStop|s_debounceCnt\(19) & (\d_startStop|s_debounceCnt\(18) & (\d_startStop|s_debounceCnt\(14) & \d_startStop|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(19),
	datab => \d_startStop|s_debounceCnt\(18),
	datac => \d_startStop|s_debounceCnt\(14),
	datad => \d_startStop|s_debounceCnt\(8),
	combout => \d_startStop|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y69_N4
\d_startStop|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~5_combout\ = (\d_startStop|s_debounceCnt\(9) & (\d_startStop|LessThan0~4_combout\ & \d_startStop|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(9),
	datac => \d_startStop|LessThan0~4_combout\,
	datad => \d_startStop|s_debounceCnt\(11),
	combout => \d_startStop|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y69_N20
\d_startStop|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~1_combout\ = (\d_startStop|s_debounceCnt\(12)) # ((\d_startStop|s_debounceCnt\(13)) # ((\d_startStop|s_debounceCnt\(10) & \d_startStop|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(10),
	datab => \d_startStop|s_debounceCnt\(12),
	datac => \d_startStop|s_debounceCnt\(11),
	datad => \d_startStop|s_debounceCnt\(13),
	combout => \d_startStop|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y69_N18
\d_startStop|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~2_combout\ = (\d_startStop|s_debounceCnt\(16)) # ((\d_startStop|s_debounceCnt\(15)) # ((\d_startStop|s_debounceCnt\(14) & \d_startStop|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(16),
	datab => \d_startStop|s_debounceCnt\(15),
	datac => \d_startStop|s_debounceCnt\(14),
	datad => \d_startStop|LessThan0~1_combout\,
	combout => \d_startStop|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y69_N8
\d_startStop|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~3_combout\ = (\d_startStop|s_debounceCnt\(19) & (\d_startStop|s_debounceCnt\(18) & ((\d_startStop|s_debounceCnt\(17)) # (\d_startStop|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(19),
	datab => \d_startStop|s_debounceCnt\(18),
	datac => \d_startStop|s_debounceCnt\(17),
	datad => \d_startStop|LessThan0~2_combout\,
	combout => \d_startStop|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y69_N2
\d_startStop|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~6_combout\ = (\d_startStop|s_debounceCnt\(6) & ((\d_startStop|s_debounceCnt\(0)) # ((\d_startStop|s_debounceCnt\(5)) # (!\d_startStop|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(6),
	datab => \d_startStop|s_debounceCnt\(0),
	datac => \d_startStop|s_debounceCnt\(5),
	datad => \d_startStop|s_pulsedOut~5_combout\,
	combout => \d_startStop|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y69_N12
\d_startStop|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~7_combout\ = (\d_startStop|LessThan0~3_combout\) # ((\d_startStop|LessThan0~5_combout\ & ((\d_startStop|s_debounceCnt\(7)) # (\d_startStop|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(7),
	datab => \d_startStop|LessThan0~5_combout\,
	datac => \d_startStop|LessThan0~3_combout\,
	datad => \d_startStop|LessThan0~6_combout\,
	combout => \d_startStop|LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y69_N6
\d_startStop|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~0_combout\ = (!\d_startStop|s_debounceCnt\(16) & (!\d_startStop|s_debounceCnt\(15) & (!\d_startStop|s_debounceCnt\(17) & !\d_startStop|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(16),
	datab => \d_startStop|s_debounceCnt\(15),
	datac => \d_startStop|s_debounceCnt\(17),
	datad => \d_startStop|s_debounceCnt\(6),
	combout => \d_startStop|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X21_Y69_N22
\d_startStop|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~3_combout\ = (!\d_startStop|s_debounceCnt\(18) & (!\d_startStop|s_debounceCnt\(14) & (!\d_startStop|s_debounceCnt\(11) & !\d_startStop|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(18),
	datab => \d_startStop|s_debounceCnt\(14),
	datac => \d_startStop|s_debounceCnt\(11),
	datad => \d_startStop|s_debounceCnt\(19),
	combout => \d_startStop|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X21_Y69_N4
\d_startStop|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~2_combout\ = (!\d_startStop|s_debounceCnt\(8) & (!\d_startStop|s_debounceCnt\(7) & (!\d_startStop|s_debounceCnt\(10) & !\d_startStop|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(8),
	datab => \d_startStop|s_debounceCnt\(7),
	datac => \d_startStop|s_debounceCnt\(10),
	datad => \d_startStop|s_debounceCnt\(9),
	combout => \d_startStop|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X20_Y69_N18
\d_startStop|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~40_combout\ = (\d_startStop|s_debounceCnt\(20) & ((GND) # (!\d_startStop|Add0~39\))) # (!\d_startStop|s_debounceCnt\(20) & (\d_startStop|Add0~39\ $ (GND)))
-- \d_startStop|Add0~41\ = CARRY((\d_startStop|s_debounceCnt\(20)) # (!\d_startStop|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_startStop|Add0~39\,
	combout => \d_startStop|Add0~40_combout\,
	cout => \d_startStop|Add0~41\);

-- Location: LCCOMB_X20_Y69_N26
\d_startStop|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[20]~9_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & (\d_startStop|s_debounceCnt[19]~3_combout\ & (\d_startStop|s_previousIn~q\ & \d_startStop|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt[19]~0_combout\,
	datab => \d_startStop|s_debounceCnt[19]~3_combout\,
	datac => \d_startStop|s_previousIn~q\,
	datad => \d_startStop|Add0~40_combout\,
	combout => \d_startStop|s_debounceCnt[20]~9_combout\);

-- Location: FF_X20_Y69_N27
\d_startStop|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(20));

-- Location: LCCOMB_X20_Y69_N30
\d_startStop|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~1_combout\ = (!\d_startStop|s_debounceCnt\(20) & (!\d_startStop|s_debounceCnt\(21) & (!\d_startStop|s_debounceCnt\(12) & !\d_startStop|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(20),
	datab => \d_startStop|s_debounceCnt\(21),
	datac => \d_startStop|s_debounceCnt\(12),
	datad => \d_startStop|s_debounceCnt\(13),
	combout => \d_startStop|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X21_Y69_N12
\d_startStop|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~4_combout\ = (\d_startStop|s_pulsedOut~0_combout\ & (\d_startStop|s_pulsedOut~3_combout\ & (\d_startStop|s_pulsedOut~2_combout\ & \d_startStop|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_pulsedOut~0_combout\,
	datab => \d_startStop|s_pulsedOut~3_combout\,
	datac => \d_startStop|s_pulsedOut~2_combout\,
	datad => \d_startStop|s_pulsedOut~1_combout\,
	combout => \d_startStop|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X21_Y69_N10
\d_startStop|s_debounceCnt[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[19]~2_combout\ = (\d_startStop|s_debounceCnt\(0)) # ((\d_startStop|s_debounceCnt\(5)) # ((!\d_startStop|s_pulsedOut~4_combout\) # (!\d_startStop|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(0),
	datab => \d_startStop|s_debounceCnt\(5),
	datac => \d_startStop|s_pulsedOut~5_combout\,
	datad => \d_startStop|s_pulsedOut~4_combout\,
	combout => \d_startStop|s_debounceCnt[19]~2_combout\);

-- Location: LCCOMB_X19_Y69_N16
\d_startStop|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[22]~24_combout\ = (\d_startStop|s_debounceCnt\(22) & (!\d_startStop|LessThan0~7_combout\ & (\d_startStop|LessThan0~0_combout\))) # (!\d_startStop|s_debounceCnt\(22) & (((\d_startStop|s_debounceCnt[19]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|LessThan0~7_combout\,
	datab => \d_startStop|s_debounceCnt\(22),
	datac => \d_startStop|LessThan0~0_combout\,
	datad => \d_startStop|s_debounceCnt[19]~2_combout\,
	combout => \d_startStop|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X19_Y69_N30
\d_startStop|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[22]~25_combout\ = (\d_startStop|s_dirtyIn~q\ & \d_startStop|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_dirtyIn~q\,
	datad => \d_startStop|s_debounceCnt[22]~24_combout\,
	combout => \d_startStop|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X20_Y69_N20
\d_startStop|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~42_combout\ = (\d_startStop|s_debounceCnt\(21) & (\d_startStop|Add0~41\ & VCC)) # (!\d_startStop|s_debounceCnt\(21) & (!\d_startStop|Add0~41\))
-- \d_startStop|Add0~43\ = CARRY((!\d_startStop|s_debounceCnt\(21) & !\d_startStop|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_startStop|Add0~41\,
	combout => \d_startStop|Add0~42_combout\,
	cout => \d_startStop|Add0~43\);

-- Location: LCCOMB_X20_Y69_N22
\d_startStop|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~44_combout\ = \d_startStop|Add0~43\ $ (\d_startStop|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d_startStop|s_debounceCnt\(22),
	cin => \d_startStop|Add0~43\,
	combout => \d_startStop|Add0~44_combout\);

-- Location: LCCOMB_X19_Y69_N22
\d_startStop|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[22]~26_combout\ = (\d_startStop|s_previousIn~q\ & (((\d_startStop|s_debounceCnt[22]~25_combout\ & \d_startStop|Add0~44_combout\)))) # (!\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt[19]~0_combout\,
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[22]~25_combout\,
	datad => \d_startStop|Add0~44_combout\,
	combout => \d_startStop|s_debounceCnt[22]~26_combout\);

-- Location: FF_X19_Y69_N23
\d_startStop|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(22));

-- Location: LCCOMB_X21_Y69_N24
\d_startStop|s_debounceCnt[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[19]~3_combout\ = ((\d_startStop|s_debounceCnt\(22)) # ((\d_startStop|s_debounceCnt[19]~2_combout\) # (!\d_startStop|s_previousIn~q\))) # (!\d_startStop|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_dirtyIn~q\,
	datab => \d_startStop|s_debounceCnt\(22),
	datac => \d_startStop|s_previousIn~q\,
	datad => \d_startStop|s_debounceCnt[19]~2_combout\,
	combout => \d_startStop|s_debounceCnt[19]~3_combout\);

-- Location: LCCOMB_X20_Y69_N24
\d_startStop|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[21]~10_combout\ = (\d_startStop|s_debounceCnt[19]~0_combout\ & (\d_startStop|s_debounceCnt[19]~3_combout\ & (\d_startStop|s_previousIn~q\ & \d_startStop|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt[19]~0_combout\,
	datab => \d_startStop|s_debounceCnt[19]~3_combout\,
	datac => \d_startStop|s_previousIn~q\,
	datad => \d_startStop|Add0~42_combout\,
	combout => \d_startStop|s_debounceCnt[21]~10_combout\);

-- Location: FF_X20_Y69_N25
\d_startStop|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(21));

-- Location: LCCOMB_X18_Y69_N26
\d_startStop|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|LessThan0~0_combout\ = (!\d_startStop|s_debounceCnt\(21) & !\d_startStop|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_startStop|s_debounceCnt\(21),
	datad => \d_startStop|s_debounceCnt\(20),
	combout => \d_startStop|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y69_N26
\d_startStop|s_debounceCnt[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt[19]~0_combout\ = (\d_startStop|s_dirtyIn~q\ & (((\d_startStop|LessThan0~0_combout\ & !\d_startStop|LessThan0~7_combout\)) # (!\d_startStop|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|LessThan0~0_combout\,
	datab => \d_startStop|s_dirtyIn~q\,
	datac => \d_startStop|s_debounceCnt\(22),
	datad => \d_startStop|LessThan0~7_combout\,
	combout => \d_startStop|s_debounceCnt[19]~0_combout\);

-- Location: LCCOMB_X20_Y70_N10
\d_startStop|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~0_combout\ = \d_startStop|s_debounceCnt\(0) $ (VCC)
-- \d_startStop|Add0~1\ = CARRY(\d_startStop|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_startStop|Add0~0_combout\,
	cout => \d_startStop|Add0~1\);

-- Location: LCCOMB_X19_Y69_N0
\d_startStop|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~23_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt[19]~0_combout\ & \d_startStop|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|s_debounceCnt[19]~0_combout\,
	datad => \d_startStop|Add0~0_combout\,
	combout => \d_startStop|s_debounceCnt~23_combout\);

-- Location: FF_X19_Y69_N1
\d_startStop|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~23_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(0));

-- Location: LCCOMB_X20_Y70_N12
\d_startStop|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~2_combout\ = (\d_startStop|s_debounceCnt\(1) & (\d_startStop|Add0~1\ & VCC)) # (!\d_startStop|s_debounceCnt\(1) & (!\d_startStop|Add0~1\))
-- \d_startStop|Add0~3\ = CARRY((!\d_startStop|s_debounceCnt\(1) & !\d_startStop|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_startStop|Add0~1\,
	combout => \d_startStop|Add0~2_combout\,
	cout => \d_startStop|Add0~3\);

-- Location: LCCOMB_X20_Y70_N4
\d_startStop|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~19_combout\ = (\d_startStop|Add0~2_combout\ & (\d_startStop|s_previousIn~q\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|Add0~2_combout\,
	datac => \d_startStop|s_previousIn~q\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~19_combout\);

-- Location: FF_X20_Y70_N5
\d_startStop|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~19_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(1));

-- Location: LCCOMB_X20_Y70_N14
\d_startStop|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|Add0~4_combout\ = (\d_startStop|s_debounceCnt\(2) & ((GND) # (!\d_startStop|Add0~3\))) # (!\d_startStop|s_debounceCnt\(2) & (\d_startStop|Add0~3\ $ (GND)))
-- \d_startStop|Add0~5\ = CARRY((\d_startStop|s_debounceCnt\(2)) # (!\d_startStop|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_startStop|Add0~3\,
	combout => \d_startStop|Add0~4_combout\,
	cout => \d_startStop|Add0~5\);

-- Location: LCCOMB_X20_Y70_N6
\d_startStop|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~20_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|Add0~4_combout\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~4_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~20_combout\);

-- Location: FF_X20_Y70_N7
\d_startStop|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~20_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(2));

-- Location: LCCOMB_X21_Y69_N2
\d_startStop|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_debounceCnt~21_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|Add0~6_combout\ & \d_startStop|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_startStop|s_previousIn~q\,
	datac => \d_startStop|Add0~6_combout\,
	datad => \d_startStop|s_debounceCnt[19]~0_combout\,
	combout => \d_startStop|s_debounceCnt~21_combout\);

-- Location: FF_X21_Y69_N3
\d_startStop|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_debounceCnt~21_combout\,
	ena => \d_startStop|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_debounceCnt\(3));

-- Location: LCCOMB_X21_Y69_N26
\d_startStop|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~5_combout\ = (!\d_startStop|s_debounceCnt\(3) & (!\d_startStop|s_debounceCnt\(4) & (!\d_startStop|s_debounceCnt\(2) & !\d_startStop|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_debounceCnt\(3),
	datab => \d_startStop|s_debounceCnt\(4),
	datac => \d_startStop|s_debounceCnt\(2),
	datad => \d_startStop|s_debounceCnt\(1),
	combout => \d_startStop|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X23_Y69_N28
\d_startStop|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~6_combout\ = (\d_startStop|s_previousIn~q\ & (\d_startStop|s_debounceCnt\(0) & (\d_startStop|s_dirtyIn~q\ & !\d_startStop|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_previousIn~q\,
	datab => \d_startStop|s_debounceCnt\(0),
	datac => \d_startStop|s_dirtyIn~q\,
	datad => \d_startStop|s_debounceCnt\(22),
	combout => \d_startStop|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X23_Y69_N24
\d_startStop|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_startStop|s_pulsedOut~7_combout\ = (\d_startStop|s_pulsedOut~5_combout\ & (!\d_startStop|s_debounceCnt\(5) & (\d_startStop|s_pulsedOut~4_combout\ & \d_startStop|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_startStop|s_pulsedOut~5_combout\,
	datab => \d_startStop|s_debounceCnt\(5),
	datac => \d_startStop|s_pulsedOut~4_combout\,
	datad => \d_startStop|s_pulsedOut~6_combout\,
	combout => \d_startStop|s_pulsedOut~7_combout\);

-- Location: FF_X23_Y69_N25
\d_startStop|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_startStop|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_startStop|s_pulsedOut~q\);

-- Location: FF_X24_Y55_N13
\fsm|startStop_1q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_startStop|s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|startStop_1q~q\);

-- Location: LCCOMB_X24_Y55_N24
\fsm|startStop_rE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|startStop_rE~0_combout\ = (\d_startStop|s_pulsedOut~q\ & !\fsm|startStop_1q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_startStop|s_pulsedOut~q\,
	datad => \fsm|startStop_1q~q\,
	combout => \fsm|startStop_rE~0_combout\);

-- Location: FF_X24_Y55_N25
\fsm|startStop_rE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~input_o\,
	d => \fsm|startStop_rE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|startStop_rE~q\);

-- Location: IOIBUF_X0_Y55_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X12_Y56_N20
\d_p1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \d_p1|s_dirtyIn~0_combout\);

-- Location: FF_X17_Y56_N5
\d_p1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_p1|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_dirtyIn~q\);

-- Location: FF_X16_Y56_N1
\d_p1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_p1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_previousIn~q\);

-- Location: LCCOMB_X17_Y57_N10
\d_p1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~0_combout\ = \d_p1|s_debounceCnt\(0) $ (VCC)
-- \d_p1|Add0~1\ = CARRY(\d_p1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_p1|Add0~0_combout\,
	cout => \d_p1|Add0~1\);

-- Location: LCCOMB_X18_Y57_N4
\d_p1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~24_combout\ = (\d_p1|Add0~0_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|Add0~0_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~24_combout\);

-- Location: FF_X18_Y57_N5
\d_p1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~24_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(0));

-- Location: LCCOMB_X17_Y57_N12
\d_p1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~2_combout\ = (\d_p1|s_debounceCnt\(1) & (\d_p1|Add0~1\ & VCC)) # (!\d_p1|s_debounceCnt\(1) & (!\d_p1|Add0~1\))
-- \d_p1|Add0~3\ = CARRY((!\d_p1|s_debounceCnt\(1) & !\d_p1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_p1|Add0~1\,
	combout => \d_p1|Add0~2_combout\,
	cout => \d_p1|Add0~3\);

-- Location: LCCOMB_X17_Y57_N0
\d_p1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~20_combout\ = (\d_p1|Add0~2_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|Add0~2_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~20_combout\);

-- Location: FF_X17_Y57_N1
\d_p1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~20_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(1));

-- Location: LCCOMB_X17_Y57_N14
\d_p1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~4_combout\ = (\d_p1|s_debounceCnt\(2) & ((GND) # (!\d_p1|Add0~3\))) # (!\d_p1|s_debounceCnt\(2) & (\d_p1|Add0~3\ $ (GND)))
-- \d_p1|Add0~5\ = CARRY((\d_p1|s_debounceCnt\(2)) # (!\d_p1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_p1|Add0~3\,
	combout => \d_p1|Add0~4_combout\,
	cout => \d_p1|Add0~5\);

-- Location: LCCOMB_X17_Y57_N6
\d_p1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~21_combout\ = (\d_p1|Add0~4_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|Add0~4_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~21_combout\);

-- Location: FF_X17_Y57_N7
\d_p1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~21_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(2));

-- Location: LCCOMB_X17_Y57_N16
\d_p1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~6_combout\ = (\d_p1|s_debounceCnt\(3) & (\d_p1|Add0~5\ & VCC)) # (!\d_p1|s_debounceCnt\(3) & (!\d_p1|Add0~5\))
-- \d_p1|Add0~7\ = CARRY((!\d_p1|s_debounceCnt\(3) & !\d_p1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_p1|Add0~5\,
	combout => \d_p1|Add0~6_combout\,
	cout => \d_p1|Add0~7\);

-- Location: LCCOMB_X17_Y57_N8
\d_p1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~22_combout\ = (\d_p1|Add0~6_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|Add0~6_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~22_combout\);

-- Location: FF_X17_Y57_N9
\d_p1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~22_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(3));

-- Location: LCCOMB_X17_Y57_N18
\d_p1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~8_combout\ = (\d_p1|s_debounceCnt\(4) & ((GND) # (!\d_p1|Add0~7\))) # (!\d_p1|s_debounceCnt\(4) & (\d_p1|Add0~7\ $ (GND)))
-- \d_p1|Add0~9\ = CARRY((\d_p1|s_debounceCnt\(4)) # (!\d_p1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_p1|Add0~7\,
	combout => \d_p1|Add0~8_combout\,
	cout => \d_p1|Add0~9\);

-- Location: LCCOMB_X17_Y57_N2
\d_p1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~23_combout\ = (\d_p1|Add0~8_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|Add0~8_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~23_combout\);

-- Location: FF_X17_Y57_N3
\d_p1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~23_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(4));

-- Location: LCCOMB_X17_Y57_N4
\d_p1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~5_combout\ = (!\d_p1|s_debounceCnt\(2) & (!\d_p1|s_debounceCnt\(1) & (!\d_p1|s_debounceCnt\(3) & !\d_p1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(2),
	datab => \d_p1|s_debounceCnt\(1),
	datac => \d_p1|s_debounceCnt\(3),
	datad => \d_p1|s_debounceCnt\(4),
	combout => \d_p1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X17_Y57_N20
\d_p1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~10_combout\ = (\d_p1|s_debounceCnt\(5) & (\d_p1|Add0~9\ & VCC)) # (!\d_p1|s_debounceCnt\(5) & (!\d_p1|Add0~9\))
-- \d_p1|Add0~11\ = CARRY((!\d_p1|s_debounceCnt\(5) & !\d_p1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_p1|Add0~9\,
	combout => \d_p1|Add0~10_combout\,
	cout => \d_p1|Add0~11\);

-- Location: LCCOMB_X17_Y57_N22
\d_p1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~12_combout\ = (\d_p1|s_debounceCnt\(6) & ((GND) # (!\d_p1|Add0~11\))) # (!\d_p1|s_debounceCnt\(6) & (\d_p1|Add0~11\ $ (GND)))
-- \d_p1|Add0~13\ = CARRY((\d_p1|s_debounceCnt\(6)) # (!\d_p1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_p1|Add0~11\,
	combout => \d_p1|Add0~12_combout\,
	cout => \d_p1|Add0~13\);

-- Location: LCCOMB_X16_Y56_N4
\d_p1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~1_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & ((\d_p1|Add0~12_combout\) # (!\d_p1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|Add0~12_combout\,
	datac => \d_p1|s_previousIn~q\,
	datad => \d_p1|s_debounceCnt[22]~0_combout\,
	combout => \d_p1|s_debounceCnt~1_combout\);

-- Location: FF_X16_Y56_N5
\d_p1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~1_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(6));

-- Location: LCCOMB_X17_Y57_N24
\d_p1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~14_combout\ = (\d_p1|s_debounceCnt\(7) & (\d_p1|Add0~13\ & VCC)) # (!\d_p1|s_debounceCnt\(7) & (!\d_p1|Add0~13\))
-- \d_p1|Add0~15\ = CARRY((!\d_p1|s_debounceCnt\(7) & !\d_p1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_p1|Add0~13\,
	combout => \d_p1|Add0~14_combout\,
	cout => \d_p1|Add0~15\);

-- Location: LCCOMB_X16_Y56_N14
\d_p1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~12_combout\ = (\d_p1|Add0~14_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|Add0~14_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~12_combout\);

-- Location: FF_X16_Y56_N15
\d_p1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~12_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(7));

-- Location: LCCOMB_X17_Y57_N26
\d_p1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~16_combout\ = (\d_p1|s_debounceCnt\(8) & ((GND) # (!\d_p1|Add0~15\))) # (!\d_p1|s_debounceCnt\(8) & (\d_p1|Add0~15\ $ (GND)))
-- \d_p1|Add0~17\ = CARRY((\d_p1|s_debounceCnt\(8)) # (!\d_p1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_p1|Add0~15\,
	combout => \d_p1|Add0~16_combout\,
	cout => \d_p1|Add0~17\);

-- Location: LCCOMB_X16_Y56_N8
\d_p1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~13_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & ((\d_p1|Add0~16_combout\) # (!\d_p1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|Add0~16_combout\,
	datac => \d_p1|s_previousIn~q\,
	datad => \d_p1|s_debounceCnt[22]~0_combout\,
	combout => \d_p1|s_debounceCnt~13_combout\);

-- Location: FF_X16_Y56_N9
\d_p1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~13_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(8));

-- Location: LCCOMB_X17_Y57_N28
\d_p1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~18_combout\ = (\d_p1|s_debounceCnt\(9) & (\d_p1|Add0~17\ & VCC)) # (!\d_p1|s_debounceCnt\(9) & (!\d_p1|Add0~17\))
-- \d_p1|Add0~19\ = CARRY((!\d_p1|s_debounceCnt\(9) & !\d_p1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_p1|Add0~17\,
	combout => \d_p1|Add0~18_combout\,
	cout => \d_p1|Add0~19\);

-- Location: LCCOMB_X16_Y56_N18
\d_p1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~14_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & ((\d_p1|Add0~18_combout\) # (!\d_p1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_previousIn~q\,
	datac => \d_p1|Add0~18_combout\,
	datad => \d_p1|s_debounceCnt[22]~0_combout\,
	combout => \d_p1|s_debounceCnt~14_combout\);

-- Location: FF_X16_Y56_N19
\d_p1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~14_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(9));

-- Location: LCCOMB_X17_Y57_N30
\d_p1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~20_combout\ = (\d_p1|s_debounceCnt\(10) & ((GND) # (!\d_p1|Add0~19\))) # (!\d_p1|s_debounceCnt\(10) & (\d_p1|Add0~19\ $ (GND)))
-- \d_p1|Add0~21\ = CARRY((\d_p1|s_debounceCnt\(10)) # (!\d_p1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_p1|Add0~19\,
	combout => \d_p1|Add0~20_combout\,
	cout => \d_p1|Add0~21\);

-- Location: LCCOMB_X16_Y56_N12
\d_p1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~15_combout\ = (\d_p1|Add0~20_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|Add0~20_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~15_combout\);

-- Location: FF_X16_Y56_N13
\d_p1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~15_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(10));

-- Location: LCCOMB_X16_Y56_N30
\d_p1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~2_combout\ = (!\d_p1|s_debounceCnt\(10) & (!\d_p1|s_debounceCnt\(8) & (!\d_p1|s_debounceCnt\(7) & !\d_p1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(10),
	datab => \d_p1|s_debounceCnt\(8),
	datac => \d_p1|s_debounceCnt\(7),
	datad => \d_p1|s_debounceCnt\(9),
	combout => \d_p1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X17_Y56_N0
\d_p1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~22_combout\ = (\d_p1|s_debounceCnt\(11) & (\d_p1|Add0~21\ & VCC)) # (!\d_p1|s_debounceCnt\(11) & (!\d_p1|Add0~21\))
-- \d_p1|Add0~23\ = CARRY((!\d_p1|s_debounceCnt\(11) & !\d_p1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_p1|Add0~21\,
	combout => \d_p1|Add0~22_combout\,
	cout => \d_p1|Add0~23\);

-- Location: LCCOMB_X16_Y56_N28
\d_p1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~16_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & ((\d_p1|Add0~22_combout\) # (!\d_p1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_previousIn~q\,
	datac => \d_p1|Add0~22_combout\,
	datad => \d_p1|s_debounceCnt[22]~0_combout\,
	combout => \d_p1|s_debounceCnt~16_combout\);

-- Location: FF_X16_Y56_N29
\d_p1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~16_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(11));

-- Location: LCCOMB_X17_Y56_N2
\d_p1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~24_combout\ = (\d_p1|s_debounceCnt\(12) & ((GND) # (!\d_p1|Add0~23\))) # (!\d_p1|s_debounceCnt\(12) & (\d_p1|Add0~23\ $ (GND)))
-- \d_p1|Add0~25\ = CARRY((\d_p1|s_debounceCnt\(12)) # (!\d_p1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_p1|Add0~23\,
	combout => \d_p1|Add0~24_combout\,
	cout => \d_p1|Add0~25\);

-- Location: LCCOMB_X17_Y56_N24
\d_p1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~8_combout\ = (\d_p1|s_debounceCnt[22]~4_combout\ & \d_p1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|s_debounceCnt[22]~4_combout\,
	datad => \d_p1|Add0~24_combout\,
	combout => \d_p1|s_debounceCnt~8_combout\);

-- Location: FF_X17_Y56_N25
\d_p1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~8_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(12));

-- Location: LCCOMB_X17_Y56_N4
\d_p1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~26_combout\ = (\d_p1|s_debounceCnt\(13) & (\d_p1|Add0~25\ & VCC)) # (!\d_p1|s_debounceCnt\(13) & (!\d_p1|Add0~25\))
-- \d_p1|Add0~27\ = CARRY((!\d_p1|s_debounceCnt\(13) & !\d_p1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_p1|Add0~25\,
	combout => \d_p1|Add0~26_combout\,
	cout => \d_p1|Add0~27\);

-- Location: LCCOMB_X16_Y56_N20
\d_p1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~9_combout\ = (\d_p1|Add0~26_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|Add0~26_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~9_combout\);

-- Location: FF_X16_Y56_N21
\d_p1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~9_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(13));

-- Location: LCCOMB_X17_Y56_N6
\d_p1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~28_combout\ = (\d_p1|s_debounceCnt\(14) & ((GND) # (!\d_p1|Add0~27\))) # (!\d_p1|s_debounceCnt\(14) & (\d_p1|Add0~27\ $ (GND)))
-- \d_p1|Add0~29\ = CARRY((\d_p1|s_debounceCnt\(14)) # (!\d_p1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_p1|Add0~27\,
	combout => \d_p1|Add0~28_combout\,
	cout => \d_p1|Add0~29\);

-- Location: LCCOMB_X16_Y56_N10
\d_p1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~17_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & ((\d_p1|Add0~28_combout\) # (!\d_p1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|Add0~28_combout\,
	datac => \d_p1|s_previousIn~q\,
	datad => \d_p1|s_debounceCnt[22]~0_combout\,
	combout => \d_p1|s_debounceCnt~17_combout\);

-- Location: FF_X16_Y56_N11
\d_p1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~17_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(14));

-- Location: LCCOMB_X17_Y56_N8
\d_p1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~30_combout\ = (\d_p1|s_debounceCnt\(15) & (\d_p1|Add0~29\ & VCC)) # (!\d_p1|s_debounceCnt\(15) & (!\d_p1|Add0~29\))
-- \d_p1|Add0~31\ = CARRY((!\d_p1|s_debounceCnt\(15) & !\d_p1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_p1|Add0~29\,
	combout => \d_p1|Add0~30_combout\,
	cout => \d_p1|Add0~31\);

-- Location: LCCOMB_X18_Y56_N12
\d_p1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~5_combout\ = (\d_p1|s_debounceCnt[22]~4_combout\ & \d_p1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt[22]~4_combout\,
	datad => \d_p1|Add0~30_combout\,
	combout => \d_p1|s_debounceCnt~5_combout\);

-- Location: FF_X18_Y56_N13
\d_p1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~5_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(15));

-- Location: LCCOMB_X17_Y56_N10
\d_p1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~32_combout\ = (\d_p1|s_debounceCnt\(16) & ((GND) # (!\d_p1|Add0~31\))) # (!\d_p1|s_debounceCnt\(16) & (\d_p1|Add0~31\ $ (GND)))
-- \d_p1|Add0~33\ = CARRY((\d_p1|s_debounceCnt\(16)) # (!\d_p1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_p1|Add0~31\,
	combout => \d_p1|Add0~32_combout\,
	cout => \d_p1|Add0~33\);

-- Location: LCCOMB_X16_Y56_N26
\d_p1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~6_combout\ = (\d_p1|Add0~32_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|Add0~32_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~6_combout\);

-- Location: FF_X16_Y56_N27
\d_p1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~6_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(16));

-- Location: LCCOMB_X17_Y56_N12
\d_p1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~34_combout\ = (\d_p1|s_debounceCnt\(17) & (\d_p1|Add0~33\ & VCC)) # (!\d_p1|s_debounceCnt\(17) & (!\d_p1|Add0~33\))
-- \d_p1|Add0~35\ = CARRY((!\d_p1|s_debounceCnt\(17) & !\d_p1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_p1|Add0~33\,
	combout => \d_p1|Add0~34_combout\,
	cout => \d_p1|Add0~35\);

-- Location: LCCOMB_X16_Y56_N16
\d_p1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~7_combout\ = (\d_p1|Add0~34_combout\ & \d_p1|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|Add0~34_combout\,
	datad => \d_p1|s_debounceCnt[22]~4_combout\,
	combout => \d_p1|s_debounceCnt~7_combout\);

-- Location: FF_X16_Y56_N17
\d_p1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~7_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(17));

-- Location: LCCOMB_X17_Y56_N14
\d_p1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~36_combout\ = (\d_p1|s_debounceCnt\(18) & ((GND) # (!\d_p1|Add0~35\))) # (!\d_p1|s_debounceCnt\(18) & (\d_p1|Add0~35\ $ (GND)))
-- \d_p1|Add0~37\ = CARRY((\d_p1|s_debounceCnt\(18)) # (!\d_p1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_p1|Add0~35\,
	combout => \d_p1|Add0~36_combout\,
	cout => \d_p1|Add0~37\);

-- Location: LCCOMB_X18_Y56_N30
\d_p1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[18]~18_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & (\d_p1|s_debounceCnt[22]~3_combout\ & ((\d_p1|Add0~36_combout\) # (!\d_p1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_previousIn~q\,
	datab => \d_p1|s_debounceCnt[22]~0_combout\,
	datac => \d_p1|s_debounceCnt[22]~3_combout\,
	datad => \d_p1|Add0~36_combout\,
	combout => \d_p1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X18_Y56_N31
\d_p1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(18));

-- Location: LCCOMB_X17_Y56_N16
\d_p1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~38_combout\ = (\d_p1|s_debounceCnt\(19) & (\d_p1|Add0~37\ & VCC)) # (!\d_p1|s_debounceCnt\(19) & (!\d_p1|Add0~37\))
-- \d_p1|Add0~39\ = CARRY((!\d_p1|s_debounceCnt\(19) & !\d_p1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_p1|Add0~37\,
	combout => \d_p1|Add0~38_combout\,
	cout => \d_p1|Add0~39\);

-- Location: LCCOMB_X18_Y56_N24
\d_p1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[19]~19_combout\ = (\d_p1|s_debounceCnt[22]~0_combout\ & (\d_p1|s_debounceCnt[22]~3_combout\ & ((\d_p1|Add0~38_combout\) # (!\d_p1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_previousIn~q\,
	datab => \d_p1|s_debounceCnt[22]~0_combout\,
	datac => \d_p1|Add0~38_combout\,
	datad => \d_p1|s_debounceCnt[22]~3_combout\,
	combout => \d_p1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X18_Y56_N25
\d_p1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(19));

-- Location: LCCOMB_X17_Y56_N18
\d_p1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~40_combout\ = (\d_p1|s_debounceCnt\(20) & ((GND) # (!\d_p1|Add0~39\))) # (!\d_p1|s_debounceCnt\(20) & (\d_p1|Add0~39\ $ (GND)))
-- \d_p1|Add0~41\ = CARRY((\d_p1|s_debounceCnt\(20)) # (!\d_p1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_p1|Add0~39\,
	combout => \d_p1|Add0~40_combout\,
	cout => \d_p1|Add0~41\);

-- Location: LCCOMB_X17_Y56_N20
\d_p1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~42_combout\ = (\d_p1|s_debounceCnt\(21) & (\d_p1|Add0~41\ & VCC)) # (!\d_p1|s_debounceCnt\(21) & (!\d_p1|Add0~41\))
-- \d_p1|Add0~43\ = CARRY((!\d_p1|s_debounceCnt\(21) & !\d_p1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_p1|Add0~41\,
	combout => \d_p1|Add0~42_combout\,
	cout => \d_p1|Add0~43\);

-- Location: LCCOMB_X17_Y56_N28
\d_p1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[21]~11_combout\ = (\d_p1|s_debounceCnt[22]~3_combout\ & (\d_p1|s_debounceCnt[22]~4_combout\ & \d_p1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt[22]~3_combout\,
	datac => \d_p1|s_debounceCnt[22]~4_combout\,
	datad => \d_p1|Add0~42_combout\,
	combout => \d_p1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X17_Y56_N29
\d_p1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(21));

-- Location: LCCOMB_X17_Y56_N26
\d_p1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~1_combout\ = (!\d_p1|s_debounceCnt\(21) & (!\d_p1|s_debounceCnt\(13) & (!\d_p1|s_debounceCnt\(20) & !\d_p1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(21),
	datab => \d_p1|s_debounceCnt\(13),
	datac => \d_p1|s_debounceCnt\(20),
	datad => \d_p1|s_debounceCnt\(12),
	combout => \d_p1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X16_Y56_N22
\d_p1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~0_combout\ = (!\d_p1|s_debounceCnt\(16) & (!\d_p1|s_debounceCnt\(17) & (!\d_p1|s_debounceCnt\(6) & !\d_p1|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(16),
	datab => \d_p1|s_debounceCnt\(17),
	datac => \d_p1|s_debounceCnt\(6),
	datad => \d_p1|s_debounceCnt\(15),
	combout => \d_p1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X16_Y56_N24
\d_p1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~3_combout\ = (!\d_p1|s_debounceCnt\(14) & (!\d_p1|s_debounceCnt\(11) & (!\d_p1|s_debounceCnt\(18) & !\d_p1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(14),
	datab => \d_p1|s_debounceCnt\(11),
	datac => \d_p1|s_debounceCnt\(18),
	datad => \d_p1|s_debounceCnt\(19),
	combout => \d_p1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X16_Y56_N2
\d_p1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~4_combout\ = (\d_p1|s_pulsedOut~2_combout\ & (\d_p1|s_pulsedOut~1_combout\ & (\d_p1|s_pulsedOut~0_combout\ & \d_p1|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_pulsedOut~2_combout\,
	datab => \d_p1|s_pulsedOut~1_combout\,
	datac => \d_p1|s_pulsedOut~0_combout\,
	datad => \d_p1|s_pulsedOut~3_combout\,
	combout => \d_p1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X16_Y56_N6
\d_p1|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~2_combout\ = (\d_p1|s_debounceCnt\(0)) # ((\d_p1|s_debounceCnt\(5)) # ((!\d_p1|s_pulsedOut~4_combout\) # (!\d_p1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(0),
	datab => \d_p1|s_debounceCnt\(5),
	datac => \d_p1|s_pulsedOut~5_combout\,
	datad => \d_p1|s_pulsedOut~4_combout\,
	combout => \d_p1|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X16_Y56_N0
\d_p1|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~3_combout\ = (\d_p1|s_debounceCnt\(22)) # (((\d_p1|s_debounceCnt[22]~2_combout\) # (!\d_p1|s_previousIn~q\)) # (!\d_p1|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(22),
	datab => \d_p1|s_dirtyIn~q\,
	datac => \d_p1|s_previousIn~q\,
	datad => \d_p1|s_debounceCnt[22]~2_combout\,
	combout => \d_p1|s_debounceCnt[22]~3_combout\);

-- Location: LCCOMB_X17_Y56_N30
\d_p1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[20]~10_combout\ = (\d_p1|s_debounceCnt[22]~3_combout\ & (\d_p1|s_debounceCnt[22]~4_combout\ & \d_p1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt[22]~3_combout\,
	datac => \d_p1|s_debounceCnt[22]~4_combout\,
	datad => \d_p1|Add0~40_combout\,
	combout => \d_p1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X17_Y56_N31
\d_p1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(20));

-- Location: LCCOMB_X18_Y56_N2
\d_p1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~4_combout\ = (\d_p1|s_debounceCnt\(13)) # ((\d_p1|s_debounceCnt\(12)) # ((\d_p1|s_debounceCnt\(10) & \d_p1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(13),
	datab => \d_p1|s_debounceCnt\(12),
	datac => \d_p1|s_debounceCnt\(10),
	datad => \d_p1|s_debounceCnt\(11),
	combout => \d_p1|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y56_N16
\d_p1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~5_combout\ = (\d_p1|s_debounceCnt\(15)) # ((\d_p1|s_debounceCnt\(16)) # ((\d_p1|s_debounceCnt\(14) & \d_p1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(15),
	datab => \d_p1|s_debounceCnt\(14),
	datac => \d_p1|s_debounceCnt\(16),
	datad => \d_p1|LessThan0~4_combout\,
	combout => \d_p1|LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y56_N26
\d_p1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~6_combout\ = (\d_p1|s_debounceCnt\(18) & (\d_p1|s_debounceCnt\(19) & ((\d_p1|s_debounceCnt\(17)) # (\d_p1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(18),
	datab => \d_p1|s_debounceCnt\(19),
	datac => \d_p1|s_debounceCnt\(17),
	datad => \d_p1|LessThan0~5_combout\,
	combout => \d_p1|LessThan0~6_combout\);

-- Location: LCCOMB_X18_Y56_N6
\d_p1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~0_combout\ = (\d_p1|s_debounceCnt\(18) & (\d_p1|s_debounceCnt\(19) & (\d_p1|s_debounceCnt\(14) & \d_p1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(18),
	datab => \d_p1|s_debounceCnt\(19),
	datac => \d_p1|s_debounceCnt\(14),
	datad => \d_p1|s_debounceCnt\(8),
	combout => \d_p1|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y56_N4
\d_p1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~1_combout\ = (\d_p1|s_debounceCnt\(9) & \d_p1|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p1|s_debounceCnt\(9),
	datad => \d_p1|s_debounceCnt\(11),
	combout => \d_p1|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y56_N10
\d_p1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~2_combout\ = (\d_p1|s_debounceCnt\(6) & ((\d_p1|s_debounceCnt\(0)) # ((\d_p1|s_debounceCnt\(5)) # (!\d_p1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(0),
	datab => \d_p1|s_debounceCnt\(5),
	datac => \d_p1|s_debounceCnt\(6),
	datad => \d_p1|s_pulsedOut~5_combout\,
	combout => \d_p1|LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y56_N28
\d_p1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~3_combout\ = (\d_p1|LessThan0~0_combout\ & (\d_p1|LessThan0~1_combout\ & ((\d_p1|s_debounceCnt\(7)) # (\d_p1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|LessThan0~0_combout\,
	datab => \d_p1|LessThan0~1_combout\,
	datac => \d_p1|s_debounceCnt\(7),
	datad => \d_p1|LessThan0~2_combout\,
	combout => \d_p1|LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y56_N20
\d_p1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|LessThan0~7_combout\ = (\d_p1|s_debounceCnt\(20)) # ((\d_p1|s_debounceCnt\(21)) # ((\d_p1|LessThan0~6_combout\) # (\d_p1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(20),
	datab => \d_p1|s_debounceCnt\(21),
	datac => \d_p1|LessThan0~6_combout\,
	datad => \d_p1|LessThan0~3_combout\,
	combout => \d_p1|LessThan0~7_combout\);

-- Location: LCCOMB_X18_Y56_N18
\d_p1|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~0_combout\ = (\d_p1|s_dirtyIn~q\ & ((!\d_p1|LessThan0~7_combout\) # (!\d_p1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt\(22),
	datac => \d_p1|s_dirtyIn~q\,
	datad => \d_p1|LessThan0~7_combout\,
	combout => \d_p1|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X18_Y56_N22
\d_p1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~25_combout\ = (\d_p1|s_dirtyIn~q\ & ((\d_p1|s_debounceCnt\(22) & (!\d_p1|LessThan0~7_combout\)) # (!\d_p1|s_debounceCnt\(22) & ((\d_p1|s_debounceCnt[22]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(22),
	datab => \d_p1|LessThan0~7_combout\,
	datac => \d_p1|s_dirtyIn~q\,
	datad => \d_p1|s_debounceCnt[22]~2_combout\,
	combout => \d_p1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X17_Y56_N22
\d_p1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|Add0~44_combout\ = \d_p1|Add0~43\ $ (\d_p1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d_p1|s_debounceCnt\(22),
	cin => \d_p1|Add0~43\,
	combout => \d_p1|Add0~44_combout\);

-- Location: LCCOMB_X18_Y56_N14
\d_p1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~26_combout\ = (\d_p1|s_previousIn~q\ & (((\d_p1|s_debounceCnt[22]~25_combout\ & \d_p1|Add0~44_combout\)))) # (!\d_p1|s_previousIn~q\ & (\d_p1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_previousIn~q\,
	datab => \d_p1|s_debounceCnt[22]~0_combout\,
	datac => \d_p1|s_debounceCnt[22]~25_combout\,
	datad => \d_p1|Add0~44_combout\,
	combout => \d_p1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X18_Y56_N15
\d_p1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(22));

-- Location: LCCOMB_X18_Y56_N0
\d_p1|s_debounceCnt[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt[22]~4_combout\ = (\d_p1|s_previousIn~q\ & (\d_p1|s_dirtyIn~q\ & ((!\d_p1|LessThan0~7_combout\) # (!\d_p1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_previousIn~q\,
	datab => \d_p1|s_dirtyIn~q\,
	datac => \d_p1|s_debounceCnt\(22),
	datad => \d_p1|LessThan0~7_combout\,
	combout => \d_p1|s_debounceCnt[22]~4_combout\);

-- Location: LCCOMB_X18_Y56_N8
\d_p1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_debounceCnt~27_combout\ = (\d_p1|s_debounceCnt[22]~4_combout\ & \d_p1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_debounceCnt[22]~4_combout\,
	datad => \d_p1|Add0~10_combout\,
	combout => \d_p1|s_debounceCnt~27_combout\);

-- Location: FF_X18_Y56_N9
\d_p1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_debounceCnt~27_combout\,
	ena => \d_p1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_debounceCnt\(5));

-- Location: LCCOMB_X19_Y56_N4
\d_p1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~6_combout\ = (\d_p1|s_debounceCnt\(0) & (\d_p1|s_dirtyIn~q\ & (\d_p1|s_previousIn~q\ & !\d_p1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(0),
	datab => \d_p1|s_dirtyIn~q\,
	datac => \d_p1|s_previousIn~q\,
	datad => \d_p1|s_debounceCnt\(22),
	combout => \d_p1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X23_Y55_N30
\d_p1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p1|s_pulsedOut~7_combout\ = (!\d_p1|s_debounceCnt\(5) & (\d_p1|s_pulsedOut~6_combout\ & (\d_p1|s_pulsedOut~5_combout\ & \d_p1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_debounceCnt\(5),
	datab => \d_p1|s_pulsedOut~6_combout\,
	datac => \d_p1|s_pulsedOut~5_combout\,
	datad => \d_p1|s_pulsedOut~4_combout\,
	combout => \d_p1|s_pulsedOut~7_combout\);

-- Location: FF_X23_Y55_N31
\d_p1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p1|s_pulsedOut~q\);

-- Location: IOIBUF_X25_Y73_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X25_Y68_N8
\d_p3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_dirtyIn~0_combout\ = !\SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	combout => \d_p3|s_dirtyIn~0_combout\);

-- Location: FF_X26_Y64_N23
\d_p3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_p3|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_dirtyIn~q\);

-- Location: FF_X26_Y64_N3
\d_p3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_p3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_previousIn~q\);

-- Location: LCCOMB_X25_Y65_N10
\d_p3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~0_combout\ = \d_p3|s_debounceCnt\(0) $ (VCC)
-- \d_p3|Add0~1\ = CARRY(\d_p3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_p3|Add0~0_combout\,
	cout => \d_p3|Add0~1\);

-- Location: LCCOMB_X25_Y65_N16
\d_p3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~6_combout\ = (\d_p3|s_debounceCnt\(3) & (\d_p3|Add0~5\ & VCC)) # (!\d_p3|s_debounceCnt\(3) & (!\d_p3|Add0~5\))
-- \d_p3|Add0~7\ = CARRY((!\d_p3|s_debounceCnt\(3) & !\d_p3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_p3|Add0~5\,
	combout => \d_p3|Add0~6_combout\,
	cout => \d_p3|Add0~7\);

-- Location: LCCOMB_X25_Y65_N18
\d_p3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~8_combout\ = (\d_p3|s_debounceCnt\(4) & ((GND) # (!\d_p3|Add0~7\))) # (!\d_p3|s_debounceCnt\(4) & (\d_p3|Add0~7\ $ (GND)))
-- \d_p3|Add0~9\ = CARRY((\d_p3|s_debounceCnt\(4)) # (!\d_p3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_p3|Add0~7\,
	combout => \d_p3|Add0~8_combout\,
	cout => \d_p3|Add0~9\);

-- Location: LCCOMB_X26_Y64_N0
\d_p3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~22_combout\ = (\d_p3|Add0~8_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|Add0~8_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~22_combout\);

-- Location: LCCOMB_X26_Y64_N2
\d_p3|s_debounceCnt[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[7]~3_combout\ = (\d_p3|s_debounceCnt\(22)) # (((\d_p3|s_debounceCnt[7]~2_combout\) # (!\d_p3|s_previousIn~q\)) # (!\d_p3|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(22),
	datab => \d_p3|s_dirtyIn~q\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~2_combout\,
	combout => \d_p3|s_debounceCnt[7]~3_combout\);

-- Location: FF_X26_Y64_N1
\d_p3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~22_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(4));

-- Location: LCCOMB_X25_Y65_N20
\d_p3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~10_combout\ = (\d_p3|s_debounceCnt\(5) & (\d_p3|Add0~9\ & VCC)) # (!\d_p3|s_debounceCnt\(5) & (!\d_p3|Add0~9\))
-- \d_p3|Add0~11\ = CARRY((!\d_p3|s_debounceCnt\(5) & !\d_p3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_p3|Add0~9\,
	combout => \d_p3|Add0~10_combout\,
	cout => \d_p3|Add0~11\);

-- Location: LCCOMB_X25_Y65_N4
\d_p3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~27_combout\ = (\d_p3|Add0~10_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|Add0~10_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~27_combout\);

-- Location: FF_X25_Y65_N5
\d_p3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~27_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(5));

-- Location: LCCOMB_X25_Y65_N22
\d_p3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~12_combout\ = (\d_p3|s_debounceCnt\(6) & ((GND) # (!\d_p3|Add0~11\))) # (!\d_p3|s_debounceCnt\(6) & (\d_p3|Add0~11\ $ (GND)))
-- \d_p3|Add0~13\ = CARRY((\d_p3|s_debounceCnt\(6)) # (!\d_p3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_p3|Add0~11\,
	combout => \d_p3|Add0~12_combout\,
	cout => \d_p3|Add0~13\);

-- Location: LCCOMB_X27_Y64_N0
\d_p3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~1_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~12_combout\) # (!\d_p3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~12_combout\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~1_combout\);

-- Location: FF_X27_Y64_N1
\d_p3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~1_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(6));

-- Location: LCCOMB_X25_Y65_N24
\d_p3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~14_combout\ = (\d_p3|s_debounceCnt\(7) & (\d_p3|Add0~13\ & VCC)) # (!\d_p3|s_debounceCnt\(7) & (!\d_p3|Add0~13\))
-- \d_p3|Add0~15\ = CARRY((!\d_p3|s_debounceCnt\(7) & !\d_p3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_p3|Add0~13\,
	combout => \d_p3|Add0~14_combout\,
	cout => \d_p3|Add0~15\);

-- Location: LCCOMB_X26_Y64_N10
\d_p3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~11_combout\ = (\d_p3|Add0~14_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~14_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~11_combout\);

-- Location: FF_X26_Y64_N11
\d_p3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~11_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(7));

-- Location: LCCOMB_X25_Y65_N26
\d_p3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~16_combout\ = (\d_p3|s_debounceCnt\(8) & ((GND) # (!\d_p3|Add0~15\))) # (!\d_p3|s_debounceCnt\(8) & (\d_p3|Add0~15\ $ (GND)))
-- \d_p3|Add0~17\ = CARRY((\d_p3|s_debounceCnt\(8)) # (!\d_p3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_p3|Add0~15\,
	combout => \d_p3|Add0~16_combout\,
	cout => \d_p3|Add0~17\);

-- Location: LCCOMB_X27_Y64_N14
\d_p3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~12_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~16_combout\) # (!\d_p3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~16_combout\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~12_combout\);

-- Location: FF_X27_Y64_N15
\d_p3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~12_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(8));

-- Location: LCCOMB_X25_Y65_N28
\d_p3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~18_combout\ = (\d_p3|s_debounceCnt\(9) & (\d_p3|Add0~17\ & VCC)) # (!\d_p3|s_debounceCnt\(9) & (!\d_p3|Add0~17\))
-- \d_p3|Add0~19\ = CARRY((!\d_p3|s_debounceCnt\(9) & !\d_p3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_p3|Add0~17\,
	combout => \d_p3|Add0~18_combout\,
	cout => \d_p3|Add0~19\);

-- Location: LCCOMB_X27_Y64_N16
\d_p3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~13_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~18_combout\) # (!\d_p3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~18_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~13_combout\);

-- Location: FF_X27_Y64_N17
\d_p3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~13_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(9));

-- Location: LCCOMB_X25_Y65_N30
\d_p3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~20_combout\ = (\d_p3|s_debounceCnt\(10) & ((GND) # (!\d_p3|Add0~19\))) # (!\d_p3|s_debounceCnt\(10) & (\d_p3|Add0~19\ $ (GND)))
-- \d_p3|Add0~21\ = CARRY((\d_p3|s_debounceCnt\(10)) # (!\d_p3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_p3|Add0~19\,
	combout => \d_p3|Add0~20_combout\,
	cout => \d_p3|Add0~21\);

-- Location: LCCOMB_X27_Y64_N6
\d_p3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~14_combout\ = (\d_p3|Add0~20_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~20_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~14_combout\);

-- Location: FF_X27_Y64_N7
\d_p3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~14_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(10));

-- Location: LCCOMB_X25_Y64_N0
\d_p3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~22_combout\ = (\d_p3|s_debounceCnt\(11) & (\d_p3|Add0~21\ & VCC)) # (!\d_p3|s_debounceCnt\(11) & (!\d_p3|Add0~21\))
-- \d_p3|Add0~23\ = CARRY((!\d_p3|s_debounceCnt\(11) & !\d_p3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_p3|Add0~21\,
	combout => \d_p3|Add0~22_combout\,
	cout => \d_p3|Add0~23\);

-- Location: LCCOMB_X27_Y64_N26
\d_p3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~15_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~22_combout\) # (!\d_p3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~22_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~15_combout\);

-- Location: FF_X27_Y64_N27
\d_p3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~15_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(11));

-- Location: LCCOMB_X25_Y64_N2
\d_p3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~24_combout\ = (\d_p3|s_debounceCnt\(12) & ((GND) # (!\d_p3|Add0~23\))) # (!\d_p3|s_debounceCnt\(12) & (\d_p3|Add0~23\ $ (GND)))
-- \d_p3|Add0~25\ = CARRY((\d_p3|s_debounceCnt\(12)) # (!\d_p3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_p3|Add0~23\,
	combout => \d_p3|Add0~24_combout\,
	cout => \d_p3|Add0~25\);

-- Location: LCCOMB_X27_Y64_N20
\d_p3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~7_combout\ = (\d_p3|s_previousIn~q\ & (\d_p3|Add0~24_combout\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~24_combout\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~7_combout\);

-- Location: FF_X27_Y64_N21
\d_p3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~7_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(12));

-- Location: LCCOMB_X25_Y64_N4
\d_p3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~26_combout\ = (\d_p3|s_debounceCnt\(13) & (\d_p3|Add0~25\ & VCC)) # (!\d_p3|s_debounceCnt\(13) & (!\d_p3|Add0~25\))
-- \d_p3|Add0~27\ = CARRY((!\d_p3|s_debounceCnt\(13) & !\d_p3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_p3|Add0~25\,
	combout => \d_p3|Add0~26_combout\,
	cout => \d_p3|Add0~27\);

-- Location: LCCOMB_X27_Y64_N2
\d_p3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~8_combout\ = (\d_p3|Add0~26_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~26_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~8_combout\);

-- Location: FF_X27_Y64_N3
\d_p3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~8_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(13));

-- Location: LCCOMB_X25_Y64_N6
\d_p3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~28_combout\ = (\d_p3|s_debounceCnt\(14) & ((GND) # (!\d_p3|Add0~27\))) # (!\d_p3|s_debounceCnt\(14) & (\d_p3|Add0~27\ $ (GND)))
-- \d_p3|Add0~29\ = CARRY((\d_p3|s_debounceCnt\(14)) # (!\d_p3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_p3|Add0~27\,
	combout => \d_p3|Add0~28_combout\,
	cout => \d_p3|Add0~29\);

-- Location: LCCOMB_X26_Y64_N6
\d_p3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~16_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~28_combout\) # (!\d_p3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~28_combout\,
	datab => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~16_combout\);

-- Location: FF_X26_Y64_N7
\d_p3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~16_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(14));

-- Location: LCCOMB_X25_Y64_N8
\d_p3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~30_combout\ = (\d_p3|s_debounceCnt\(15) & (\d_p3|Add0~29\ & VCC)) # (!\d_p3|s_debounceCnt\(15) & (!\d_p3|Add0~29\))
-- \d_p3|Add0~31\ = CARRY((!\d_p3|s_debounceCnt\(15) & !\d_p3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_p3|Add0~29\,
	combout => \d_p3|Add0~30_combout\,
	cout => \d_p3|Add0~31\);

-- Location: LCCOMB_X26_Y64_N16
\d_p3|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~4_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt[7]~0_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|Add0~30_combout\,
	combout => \d_p3|s_debounceCnt~4_combout\);

-- Location: FF_X26_Y64_N17
\d_p3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~4_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(15));

-- Location: LCCOMB_X25_Y64_N10
\d_p3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~32_combout\ = (\d_p3|s_debounceCnt\(16) & ((GND) # (!\d_p3|Add0~31\))) # (!\d_p3|s_debounceCnt\(16) & (\d_p3|Add0~31\ $ (GND)))
-- \d_p3|Add0~33\ = CARRY((\d_p3|s_debounceCnt\(16)) # (!\d_p3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_p3|Add0~31\,
	combout => \d_p3|Add0~32_combout\,
	cout => \d_p3|Add0~33\);

-- Location: LCCOMB_X25_Y64_N24
\d_p3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~5_combout\ = (\d_p3|s_previousIn~q\ & (\d_p3|s_debounceCnt[7]~0_combout\ & \d_p3|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|s_debounceCnt[7]~0_combout\,
	datad => \d_p3|Add0~32_combout\,
	combout => \d_p3|s_debounceCnt~5_combout\);

-- Location: FF_X25_Y64_N25
\d_p3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~5_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(16));

-- Location: LCCOMB_X25_Y64_N12
\d_p3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~34_combout\ = (\d_p3|s_debounceCnt\(17) & (\d_p3|Add0~33\ & VCC)) # (!\d_p3|s_debounceCnt\(17) & (!\d_p3|Add0~33\))
-- \d_p3|Add0~35\ = CARRY((!\d_p3|s_debounceCnt\(17) & !\d_p3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_p3|Add0~33\,
	combout => \d_p3|Add0~34_combout\,
	cout => \d_p3|Add0~35\);

-- Location: LCCOMB_X26_Y64_N12
\d_p3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~6_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt[7]~0_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|Add0~34_combout\,
	combout => \d_p3|s_debounceCnt~6_combout\);

-- Location: FF_X26_Y64_N13
\d_p3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~6_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(17));

-- Location: LCCOMB_X27_Y64_N30
\d_p3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~0_combout\ = (!\d_p3|s_debounceCnt\(15) & (!\d_p3|s_debounceCnt\(6) & (!\d_p3|s_debounceCnt\(16) & !\d_p3|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(15),
	datab => \d_p3|s_debounceCnt\(6),
	datac => \d_p3|s_debounceCnt\(16),
	datad => \d_p3|s_debounceCnt\(17),
	combout => \d_p3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X27_Y64_N12
\d_p3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~2_combout\ = (!\d_p3|s_debounceCnt\(10) & (!\d_p3|s_debounceCnt\(9) & (!\d_p3|s_debounceCnt\(8) & !\d_p3|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(10),
	datab => \d_p3|s_debounceCnt\(9),
	datac => \d_p3|s_debounceCnt\(8),
	datad => \d_p3|s_debounceCnt\(7),
	combout => \d_p3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X25_Y64_N14
\d_p3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~36_combout\ = (\d_p3|s_debounceCnt\(18) & ((GND) # (!\d_p3|Add0~35\))) # (!\d_p3|s_debounceCnt\(18) & (\d_p3|Add0~35\ $ (GND)))
-- \d_p3|Add0~37\ = CARRY((\d_p3|s_debounceCnt\(18)) # (!\d_p3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_p3|Add0~35\,
	combout => \d_p3|Add0~36_combout\,
	cout => \d_p3|Add0~37\);

-- Location: LCCOMB_X25_Y64_N30
\d_p3|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[18]~17_combout\ = (\d_p3|s_debounceCnt[7]~0_combout\ & (\d_p3|s_debounceCnt[7]~3_combout\ & ((\d_p3|Add0~36_combout\) # (!\d_p3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt[7]~0_combout\,
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~36_combout\,
	datad => \d_p3|s_debounceCnt[7]~3_combout\,
	combout => \d_p3|s_debounceCnt[18]~17_combout\);

-- Location: FF_X25_Y64_N31
\d_p3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(18));

-- Location: LCCOMB_X25_Y64_N16
\d_p3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~38_combout\ = (\d_p3|s_debounceCnt\(19) & (\d_p3|Add0~37\ & VCC)) # (!\d_p3|s_debounceCnt\(19) & (!\d_p3|Add0~37\))
-- \d_p3|Add0~39\ = CARRY((!\d_p3|s_debounceCnt\(19) & !\d_p3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_p3|Add0~37\,
	combout => \d_p3|Add0~38_combout\,
	cout => \d_p3|Add0~39\);

-- Location: LCCOMB_X27_Y64_N24
\d_p3|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[19]~18_combout\ = (\d_p3|s_debounceCnt[7]~3_combout\ & (\d_p3|s_debounceCnt[7]~0_combout\ & ((\d_p3|Add0~38_combout\) # (!\d_p3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~38_combout\,
	datab => \d_p3|s_debounceCnt[7]~3_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt[19]~18_combout\);

-- Location: FF_X27_Y64_N25
\d_p3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(19));

-- Location: LCCOMB_X25_Y64_N18
\d_p3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~40_combout\ = (\d_p3|s_debounceCnt\(20) & ((GND) # (!\d_p3|Add0~39\))) # (!\d_p3|s_debounceCnt\(20) & (\d_p3|Add0~39\ $ (GND)))
-- \d_p3|Add0~41\ = CARRY((\d_p3|s_debounceCnt\(20)) # (!\d_p3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_p3|Add0~39\,
	combout => \d_p3|Add0~40_combout\,
	cout => \d_p3|Add0~41\);

-- Location: LCCOMB_X25_Y64_N26
\d_p3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[20]~9_combout\ = (\d_p3|s_debounceCnt[7]~3_combout\ & (\d_p3|s_previousIn~q\ & (\d_p3|s_debounceCnt[7]~0_combout\ & \d_p3|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt[7]~3_combout\,
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|s_debounceCnt[7]~0_combout\,
	datad => \d_p3|Add0~40_combout\,
	combout => \d_p3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X25_Y64_N27
\d_p3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(20));

-- Location: LCCOMB_X25_Y64_N20
\d_p3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~42_combout\ = (\d_p3|s_debounceCnt\(21) & (\d_p3|Add0~41\ & VCC)) # (!\d_p3|s_debounceCnt\(21) & (!\d_p3|Add0~41\))
-- \d_p3|Add0~43\ = CARRY((!\d_p3|s_debounceCnt\(21) & !\d_p3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_p3|Add0~41\,
	combout => \d_p3|Add0~42_combout\,
	cout => \d_p3|Add0~43\);

-- Location: LCCOMB_X25_Y64_N28
\d_p3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[21]~10_combout\ = (\d_p3|s_debounceCnt[7]~3_combout\ & (\d_p3|s_previousIn~q\ & (\d_p3|s_debounceCnt[7]~0_combout\ & \d_p3|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt[7]~3_combout\,
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|s_debounceCnt[7]~0_combout\,
	datad => \d_p3|Add0~42_combout\,
	combout => \d_p3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X25_Y64_N29
\d_p3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(21));

-- Location: LCCOMB_X27_Y64_N8
\d_p3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~1_combout\ = (!\d_p3|s_debounceCnt\(13) & (!\d_p3|s_debounceCnt\(12) & (!\d_p3|s_debounceCnt\(21) & !\d_p3|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(13),
	datab => \d_p3|s_debounceCnt\(12),
	datac => \d_p3|s_debounceCnt\(21),
	datad => \d_p3|s_debounceCnt\(20),
	combout => \d_p3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X27_Y64_N10
\d_p3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~3_combout\ = (!\d_p3|s_debounceCnt\(11) & (!\d_p3|s_debounceCnt\(19) & (!\d_p3|s_debounceCnt\(14) & !\d_p3|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(11),
	datab => \d_p3|s_debounceCnt\(19),
	datac => \d_p3|s_debounceCnt\(14),
	datad => \d_p3|s_debounceCnt\(18),
	combout => \d_p3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X27_Y64_N4
\d_p3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~4_combout\ = (\d_p3|s_pulsedOut~0_combout\ & (\d_p3|s_pulsedOut~2_combout\ & (\d_p3|s_pulsedOut~1_combout\ & \d_p3|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_pulsedOut~0_combout\,
	datab => \d_p3|s_pulsedOut~2_combout\,
	datac => \d_p3|s_pulsedOut~1_combout\,
	datad => \d_p3|s_pulsedOut~3_combout\,
	combout => \d_p3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X26_Y64_N18
\d_p3|s_debounceCnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[7]~2_combout\ = (\d_p3|s_debounceCnt\(5)) # ((\d_p3|s_debounceCnt\(0)) # ((!\d_p3|s_pulsedOut~4_combout\) # (!\d_p3|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(5),
	datab => \d_p3|s_debounceCnt\(0),
	datac => \d_p3|s_pulsedOut~5_combout\,
	datad => \d_p3|s_pulsedOut~4_combout\,
	combout => \d_p3|s_debounceCnt[7]~2_combout\);

-- Location: LCCOMB_X28_Y64_N16
\d_p3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~0_combout\ = (!\d_p3|s_debounceCnt\(20) & !\d_p3|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(20),
	datad => \d_p3|s_debounceCnt\(21),
	combout => \d_p3|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y64_N4
\d_p3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~6_combout\ = (\d_p3|s_debounceCnt\(6) & ((\d_p3|s_debounceCnt\(5)) # ((\d_p3|s_debounceCnt\(0)) # (!\d_p3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(5),
	datab => \d_p3|s_debounceCnt\(6),
	datac => \d_p3|s_pulsedOut~5_combout\,
	datad => \d_p3|s_debounceCnt\(0),
	combout => \d_p3|LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y64_N18
\d_p3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~1_combout\ = (\d_p3|s_debounceCnt\(12)) # ((\d_p3|s_debounceCnt\(13)) # ((\d_p3|s_debounceCnt\(10) & \d_p3|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(10),
	datab => \d_p3|s_debounceCnt\(12),
	datac => \d_p3|s_debounceCnt\(11),
	datad => \d_p3|s_debounceCnt\(13),
	combout => \d_p3|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y64_N26
\d_p3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~2_combout\ = (\d_p3|s_debounceCnt\(16)) # ((\d_p3|s_debounceCnt\(15)) # ((\d_p3|LessThan0~1_combout\ & \d_p3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(16),
	datab => \d_p3|s_debounceCnt\(15),
	datac => \d_p3|LessThan0~1_combout\,
	datad => \d_p3|s_debounceCnt\(14),
	combout => \d_p3|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y64_N8
\d_p3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~3_combout\ = (\d_p3|s_debounceCnt\(18) & (\d_p3|s_debounceCnt\(19) & ((\d_p3|s_debounceCnt\(17)) # (\d_p3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(17),
	datab => \d_p3|s_debounceCnt\(18),
	datac => \d_p3|LessThan0~2_combout\,
	datad => \d_p3|s_debounceCnt\(19),
	combout => \d_p3|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y64_N28
\d_p3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~4_combout\ = (\d_p3|s_debounceCnt\(14) & (\d_p3|s_debounceCnt\(19) & (\d_p3|s_debounceCnt\(8) & \d_p3|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(14),
	datab => \d_p3|s_debounceCnt\(19),
	datac => \d_p3|s_debounceCnt\(8),
	datad => \d_p3|s_debounceCnt\(18),
	combout => \d_p3|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y64_N22
\d_p3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~5_combout\ = (\d_p3|s_debounceCnt\(9) & (\d_p3|s_debounceCnt\(11) & \d_p3|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(9),
	datac => \d_p3|s_debounceCnt\(11),
	datad => \d_p3|LessThan0~4_combout\,
	combout => \d_p3|LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y64_N24
\d_p3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|LessThan0~7_combout\ = (\d_p3|LessThan0~3_combout\) # ((\d_p3|LessThan0~5_combout\ & ((\d_p3|s_debounceCnt\(7)) # (\d_p3|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(7),
	datab => \d_p3|LessThan0~6_combout\,
	datac => \d_p3|LessThan0~3_combout\,
	datad => \d_p3|LessThan0~5_combout\,
	combout => \d_p3|LessThan0~7_combout\);

-- Location: LCCOMB_X26_Y64_N28
\d_p3|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[22]~24_combout\ = (\d_p3|s_debounceCnt\(22) & (((\d_p3|LessThan0~0_combout\ & !\d_p3|LessThan0~7_combout\)))) # (!\d_p3|s_debounceCnt\(22) & (\d_p3|s_debounceCnt[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(22),
	datab => \d_p3|s_debounceCnt[7]~2_combout\,
	datac => \d_p3|LessThan0~0_combout\,
	datad => \d_p3|LessThan0~7_combout\,
	combout => \d_p3|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X26_Y64_N22
\d_p3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[22]~25_combout\ = (\d_p3|s_dirtyIn~q\ & \d_p3|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p3|s_dirtyIn~q\,
	datad => \d_p3|s_debounceCnt[22]~24_combout\,
	combout => \d_p3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X25_Y64_N22
\d_p3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~44_combout\ = \d_p3|s_debounceCnt\(22) $ (\d_p3|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(22),
	cin => \d_p3|Add0~43\,
	combout => \d_p3|Add0~44_combout\);

-- Location: LCCOMB_X26_Y64_N30
\d_p3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[22]~26_combout\ = (\d_p3|s_previousIn~q\ & (((\d_p3|s_debounceCnt[22]~25_combout\ & \d_p3|Add0~44_combout\)))) # (!\d_p3|s_previousIn~q\ & (\d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_previousIn~q\,
	datab => \d_p3|s_debounceCnt[7]~0_combout\,
	datac => \d_p3|s_debounceCnt[22]~25_combout\,
	datad => \d_p3|Add0~44_combout\,
	combout => \d_p3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X26_Y64_N31
\d_p3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(22));

-- Location: LCCOMB_X26_Y64_N20
\d_p3|s_debounceCnt[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt[7]~0_combout\ = (\d_p3|s_dirtyIn~q\ & (((\d_p3|LessThan0~0_combout\ & !\d_p3|LessThan0~7_combout\)) # (!\d_p3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_dirtyIn~q\,
	datab => \d_p3|s_debounceCnt\(22),
	datac => \d_p3|LessThan0~0_combout\,
	datad => \d_p3|LessThan0~7_combout\,
	combout => \d_p3|s_debounceCnt[7]~0_combout\);

-- Location: LCCOMB_X25_Y65_N6
\d_p3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~23_combout\ = (\d_p3|s_previousIn~q\ & (\d_p3|Add0~0_combout\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~0_combout\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~23_combout\);

-- Location: FF_X25_Y65_N7
\d_p3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~23_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(0));

-- Location: LCCOMB_X25_Y65_N12
\d_p3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~2_combout\ = (\d_p3|s_debounceCnt\(1) & (\d_p3|Add0~1\ & VCC)) # (!\d_p3|s_debounceCnt\(1) & (!\d_p3|Add0~1\))
-- \d_p3|Add0~3\ = CARRY((!\d_p3|s_debounceCnt\(1) & !\d_p3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_p3|Add0~1\,
	combout => \d_p3|Add0~2_combout\,
	cout => \d_p3|Add0~3\);

-- Location: LCCOMB_X25_Y65_N0
\d_p3|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~19_combout\ = (\d_p3|Add0~2_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|Add0~2_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~19_combout\);

-- Location: FF_X25_Y65_N1
\d_p3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~19_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(1));

-- Location: LCCOMB_X25_Y65_N14
\d_p3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|Add0~4_combout\ = (\d_p3|s_debounceCnt\(2) & ((GND) # (!\d_p3|Add0~3\))) # (!\d_p3|s_debounceCnt\(2) & (\d_p3|Add0~3\ $ (GND)))
-- \d_p3|Add0~5\ = CARRY((\d_p3|s_debounceCnt\(2)) # (!\d_p3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_p3|Add0~3\,
	combout => \d_p3|Add0~4_combout\,
	cout => \d_p3|Add0~5\);

-- Location: LCCOMB_X25_Y65_N2
\d_p3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~20_combout\ = (\d_p3|s_previousIn~q\ & (\d_p3|Add0~4_combout\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|Add0~4_combout\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~20_combout\);

-- Location: FF_X25_Y65_N3
\d_p3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~20_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(2));

-- Location: LCCOMB_X25_Y65_N8
\d_p3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_debounceCnt~21_combout\ = (\d_p3|Add0~6_combout\ & (\d_p3|s_previousIn~q\ & \d_p3|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p3|Add0~6_combout\,
	datac => \d_p3|s_previousIn~q\,
	datad => \d_p3|s_debounceCnt[7]~0_combout\,
	combout => \d_p3|s_debounceCnt~21_combout\);

-- Location: FF_X25_Y65_N9
\d_p3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_debounceCnt~21_combout\,
	ena => \d_p3|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_debounceCnt\(3));

-- Location: LCCOMB_X26_Y64_N14
\d_p3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~5_combout\ = (!\d_p3|s_debounceCnt\(3) & (!\d_p3|s_debounceCnt\(4) & (!\d_p3|s_debounceCnt\(2) & !\d_p3|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(3),
	datab => \d_p3|s_debounceCnt\(4),
	datac => \d_p3|s_debounceCnt\(2),
	datad => \d_p3|s_debounceCnt\(1),
	combout => \d_p3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X26_Y63_N12
\d_p3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~6_combout\ = (!\d_p3|s_debounceCnt\(22) & (\d_p3|s_previousIn~q\ & (\d_p3|s_dirtyIn~q\ & \d_p3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_debounceCnt\(22),
	datab => \d_p3|s_previousIn~q\,
	datac => \d_p3|s_dirtyIn~q\,
	datad => \d_p3|s_debounceCnt\(0),
	combout => \d_p3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X23_Y55_N2
\d_p3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p3|s_pulsedOut~7_combout\ = (\d_p3|s_pulsedOut~5_combout\ & (!\d_p3|s_debounceCnt\(5) & (\d_p3|s_pulsedOut~6_combout\ & \d_p3|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p3|s_pulsedOut~5_combout\,
	datab => \d_p3|s_debounceCnt\(5),
	datac => \d_p3|s_pulsedOut~6_combout\,
	datad => \d_p3|s_pulsedOut~4_combout\,
	combout => \d_p3|s_pulsedOut~7_combout\);

-- Location: FF_X23_Y55_N3
\d_p3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p3|s_pulsedOut~q\);

-- Location: IOIBUF_X45_Y73_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X45_Y50_N18
\d_p2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_dirtyIn~0_combout\ = !\SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \d_p2|s_dirtyIn~0_combout\);

-- Location: FF_X45_Y50_N19
\d_p2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_dirtyIn~q\);

-- Location: FF_X47_Y50_N3
\d_p2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_p2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_previousIn~q\);

-- Location: LCCOMB_X48_Y51_N10
\d_p2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~0_combout\ = \d_p2|s_debounceCnt\(0) $ (VCC)
-- \d_p2|Add0~1\ = CARRY(\d_p2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_p2|Add0~0_combout\,
	cout => \d_p2|Add0~1\);

-- Location: LCCOMB_X48_Y51_N4
\d_p2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~24_combout\ = (\d_p2|Add0~0_combout\ & \d_p2|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|Add0~0_combout\,
	datad => \d_p2|s_debounceCnt[2]~4_combout\,
	combout => \d_p2|s_debounceCnt~24_combout\);

-- Location: FF_X48_Y51_N5
\d_p2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~24_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(0));

-- Location: LCCOMB_X48_Y51_N12
\d_p2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~2_combout\ = (\d_p2|s_debounceCnt\(1) & (\d_p2|Add0~1\ & VCC)) # (!\d_p2|s_debounceCnt\(1) & (!\d_p2|Add0~1\))
-- \d_p2|Add0~3\ = CARRY((!\d_p2|s_debounceCnt\(1) & !\d_p2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_p2|Add0~1\,
	combout => \d_p2|Add0~2_combout\,
	cout => \d_p2|Add0~3\);

-- Location: LCCOMB_X48_Y51_N8
\d_p2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~20_combout\ = (\d_p2|Add0~2_combout\ & \d_p2|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|Add0~2_combout\,
	datad => \d_p2|s_debounceCnt[2]~4_combout\,
	combout => \d_p2|s_debounceCnt~20_combout\);

-- Location: FF_X48_Y51_N9
\d_p2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~20_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(1));

-- Location: LCCOMB_X48_Y51_N14
\d_p2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~4_combout\ = (\d_p2|s_debounceCnt\(2) & ((GND) # (!\d_p2|Add0~3\))) # (!\d_p2|s_debounceCnt\(2) & (\d_p2|Add0~3\ $ (GND)))
-- \d_p2|Add0~5\ = CARRY((\d_p2|s_debounceCnt\(2)) # (!\d_p2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_p2|Add0~3\,
	combout => \d_p2|Add0~4_combout\,
	cout => \d_p2|Add0~5\);

-- Location: LCCOMB_X47_Y50_N0
\d_p2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~21_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~4_combout\,
	combout => \d_p2|s_debounceCnt~21_combout\);

-- Location: FF_X47_Y50_N1
\d_p2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~21_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(2));

-- Location: LCCOMB_X48_Y51_N16
\d_p2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~6_combout\ = (\d_p2|s_debounceCnt\(3) & (\d_p2|Add0~5\ & VCC)) # (!\d_p2|s_debounceCnt\(3) & (!\d_p2|Add0~5\))
-- \d_p2|Add0~7\ = CARRY((!\d_p2|s_debounceCnt\(3) & !\d_p2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_p2|Add0~5\,
	combout => \d_p2|Add0~6_combout\,
	cout => \d_p2|Add0~7\);

-- Location: LCCOMB_X48_Y51_N6
\d_p2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~22_combout\ = (\d_p2|Add0~6_combout\ & \d_p2|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|Add0~6_combout\,
	datad => \d_p2|s_debounceCnt[2]~4_combout\,
	combout => \d_p2|s_debounceCnt~22_combout\);

-- Location: FF_X48_Y51_N7
\d_p2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~22_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(3));

-- Location: LCCOMB_X48_Y51_N18
\d_p2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~8_combout\ = (\d_p2|s_debounceCnt\(4) & ((GND) # (!\d_p2|Add0~7\))) # (!\d_p2|s_debounceCnt\(4) & (\d_p2|Add0~7\ $ (GND)))
-- \d_p2|Add0~9\ = CARRY((\d_p2|s_debounceCnt\(4)) # (!\d_p2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_p2|Add0~7\,
	combout => \d_p2|Add0~8_combout\,
	cout => \d_p2|Add0~9\);

-- Location: LCCOMB_X47_Y50_N30
\d_p2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~23_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~8_combout\,
	combout => \d_p2|s_debounceCnt~23_combout\);

-- Location: FF_X47_Y50_N31
\d_p2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~23_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(4));

-- Location: LCCOMB_X47_Y50_N20
\d_p2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~5_combout\ = (!\d_p2|s_debounceCnt\(4) & (!\d_p2|s_debounceCnt\(2) & (!\d_p2|s_debounceCnt\(3) & !\d_p2|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(4),
	datab => \d_p2|s_debounceCnt\(2),
	datac => \d_p2|s_debounceCnt\(3),
	datad => \d_p2|s_debounceCnt\(1),
	combout => \d_p2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X48_Y51_N20
\d_p2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~10_combout\ = (\d_p2|s_debounceCnt\(5) & (\d_p2|Add0~9\ & VCC)) # (!\d_p2|s_debounceCnt\(5) & (!\d_p2|Add0~9\))
-- \d_p2|Add0~11\ = CARRY((!\d_p2|s_debounceCnt\(5) & !\d_p2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_p2|Add0~9\,
	combout => \d_p2|Add0~10_combout\,
	cout => \d_p2|Add0~11\);

-- Location: LCCOMB_X48_Y51_N2
\d_p2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~27_combout\ = (\d_p2|Add0~10_combout\ & \d_p2|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|Add0~10_combout\,
	datad => \d_p2|s_debounceCnt[2]~4_combout\,
	combout => \d_p2|s_debounceCnt~27_combout\);

-- Location: FF_X48_Y51_N3
\d_p2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~27_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(5));

-- Location: LCCOMB_X46_Y50_N14
\d_p2|s_debounceCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[2]~0_combout\ = (\d_p2|s_dirtyIn~q\ & ((!\d_p2|LessThan0~7_combout\) # (!\d_p2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_dirtyIn~q\,
	datac => \d_p2|s_debounceCnt\(22),
	datad => \d_p2|LessThan0~7_combout\,
	combout => \d_p2|s_debounceCnt[2]~0_combout\);

-- Location: LCCOMB_X48_Y51_N22
\d_p2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~12_combout\ = (\d_p2|s_debounceCnt\(6) & ((GND) # (!\d_p2|Add0~11\))) # (!\d_p2|s_debounceCnt\(6) & (\d_p2|Add0~11\ $ (GND)))
-- \d_p2|Add0~13\ = CARRY((\d_p2|s_debounceCnt\(6)) # (!\d_p2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_p2|Add0~11\,
	combout => \d_p2|Add0~12_combout\,
	cout => \d_p2|Add0~13\);

-- Location: LCCOMB_X47_Y50_N24
\d_p2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~1_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~12_combout\) # (!\d_p2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_previousIn~q\,
	datac => \d_p2|Add0~12_combout\,
	datad => \d_p2|s_debounceCnt[2]~0_combout\,
	combout => \d_p2|s_debounceCnt~1_combout\);

-- Location: FF_X47_Y50_N25
\d_p2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~1_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(6));

-- Location: LCCOMB_X48_Y51_N24
\d_p2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~14_combout\ = (\d_p2|s_debounceCnt\(7) & (\d_p2|Add0~13\ & VCC)) # (!\d_p2|s_debounceCnt\(7) & (!\d_p2|Add0~13\))
-- \d_p2|Add0~15\ = CARRY((!\d_p2|s_debounceCnt\(7) & !\d_p2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_p2|Add0~13\,
	combout => \d_p2|Add0~14_combout\,
	cout => \d_p2|Add0~15\);

-- Location: LCCOMB_X47_Y51_N28
\d_p2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~12_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~14_combout\,
	combout => \d_p2|s_debounceCnt~12_combout\);

-- Location: FF_X47_Y51_N29
\d_p2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~12_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(7));

-- Location: LCCOMB_X48_Y51_N26
\d_p2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~16_combout\ = (\d_p2|s_debounceCnt\(8) & ((GND) # (!\d_p2|Add0~15\))) # (!\d_p2|s_debounceCnt\(8) & (\d_p2|Add0~15\ $ (GND)))
-- \d_p2|Add0~17\ = CARRY((\d_p2|s_debounceCnt\(8)) # (!\d_p2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_p2|Add0~15\,
	combout => \d_p2|Add0~16_combout\,
	cout => \d_p2|Add0~17\);

-- Location: LCCOMB_X46_Y50_N22
\d_p2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~13_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~16_combout\) # (!\d_p2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_previousIn~q\,
	datac => \d_p2|s_debounceCnt[2]~0_combout\,
	datad => \d_p2|Add0~16_combout\,
	combout => \d_p2|s_debounceCnt~13_combout\);

-- Location: FF_X46_Y50_N23
\d_p2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~13_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(8));

-- Location: LCCOMB_X48_Y51_N28
\d_p2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~18_combout\ = (\d_p2|s_debounceCnt\(9) & (\d_p2|Add0~17\ & VCC)) # (!\d_p2|s_debounceCnt\(9) & (!\d_p2|Add0~17\))
-- \d_p2|Add0~19\ = CARRY((!\d_p2|s_debounceCnt\(9) & !\d_p2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_p2|Add0~17\,
	combout => \d_p2|Add0~18_combout\,
	cout => \d_p2|Add0~19\);

-- Location: LCCOMB_X46_Y50_N28
\d_p2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~14_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~18_combout\) # (!\d_p2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_previousIn~q\,
	datac => \d_p2|s_debounceCnt[2]~0_combout\,
	datad => \d_p2|Add0~18_combout\,
	combout => \d_p2|s_debounceCnt~14_combout\);

-- Location: FF_X46_Y50_N29
\d_p2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~14_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(9));

-- Location: LCCOMB_X48_Y51_N30
\d_p2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~20_combout\ = (\d_p2|s_debounceCnt\(10) & ((GND) # (!\d_p2|Add0~19\))) # (!\d_p2|s_debounceCnt\(10) & (\d_p2|Add0~19\ $ (GND)))
-- \d_p2|Add0~21\ = CARRY((\d_p2|s_debounceCnt\(10)) # (!\d_p2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_p2|Add0~19\,
	combout => \d_p2|Add0~20_combout\,
	cout => \d_p2|Add0~21\);

-- Location: LCCOMB_X46_Y50_N6
\d_p2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~15_combout\ = (\d_p2|Add0~20_combout\ & \d_p2|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|Add0~20_combout\,
	datad => \d_p2|s_debounceCnt[2]~4_combout\,
	combout => \d_p2|s_debounceCnt~15_combout\);

-- Location: FF_X46_Y50_N7
\d_p2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~15_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(10));

-- Location: LCCOMB_X46_Y50_N8
\d_p2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~2_combout\ = (!\d_p2|s_debounceCnt\(10) & (!\d_p2|s_debounceCnt\(9) & (!\d_p2|s_debounceCnt\(8) & !\d_p2|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(10),
	datab => \d_p2|s_debounceCnt\(9),
	datac => \d_p2|s_debounceCnt\(8),
	datad => \d_p2|s_debounceCnt\(7),
	combout => \d_p2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X48_Y50_N0
\d_p2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~22_combout\ = (\d_p2|s_debounceCnt\(11) & (\d_p2|Add0~21\ & VCC)) # (!\d_p2|s_debounceCnt\(11) & (!\d_p2|Add0~21\))
-- \d_p2|Add0~23\ = CARRY((!\d_p2|s_debounceCnt\(11) & !\d_p2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_p2|Add0~21\,
	combout => \d_p2|Add0~22_combout\,
	cout => \d_p2|Add0~23\);

-- Location: LCCOMB_X47_Y50_N12
\d_p2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~16_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~22_combout\) # (!\d_p2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_previousIn~q\,
	datac => \d_p2|Add0~22_combout\,
	datad => \d_p2|s_debounceCnt[2]~0_combout\,
	combout => \d_p2|s_debounceCnt~16_combout\);

-- Location: FF_X47_Y50_N13
\d_p2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~16_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(11));

-- Location: LCCOMB_X48_Y50_N2
\d_p2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~24_combout\ = (\d_p2|s_debounceCnt\(12) & ((GND) # (!\d_p2|Add0~23\))) # (!\d_p2|s_debounceCnt\(12) & (\d_p2|Add0~23\ $ (GND)))
-- \d_p2|Add0~25\ = CARRY((\d_p2|s_debounceCnt\(12)) # (!\d_p2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_p2|Add0~23\,
	combout => \d_p2|Add0~24_combout\,
	cout => \d_p2|Add0~25\);

-- Location: LCCOMB_X47_Y50_N26
\d_p2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~8_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~24_combout\,
	combout => \d_p2|s_debounceCnt~8_combout\);

-- Location: FF_X47_Y50_N27
\d_p2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~8_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(12));

-- Location: LCCOMB_X48_Y50_N4
\d_p2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~26_combout\ = (\d_p2|s_debounceCnt\(13) & (\d_p2|Add0~25\ & VCC)) # (!\d_p2|s_debounceCnt\(13) & (!\d_p2|Add0~25\))
-- \d_p2|Add0~27\ = CARRY((!\d_p2|s_debounceCnt\(13) & !\d_p2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_p2|Add0~25\,
	combout => \d_p2|Add0~26_combout\,
	cout => \d_p2|Add0~27\);

-- Location: LCCOMB_X47_Y50_N8
\d_p2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~9_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~26_combout\,
	combout => \d_p2|s_debounceCnt~9_combout\);

-- Location: FF_X47_Y50_N9
\d_p2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~9_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(13));

-- Location: LCCOMB_X47_Y50_N6
\d_p2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~1_combout\ = (!\d_p2|s_debounceCnt\(12) & (!\d_p2|s_debounceCnt\(13) & (!\d_p2|s_debounceCnt\(20) & !\d_p2|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(12),
	datab => \d_p2|s_debounceCnt\(13),
	datac => \d_p2|s_debounceCnt\(20),
	datad => \d_p2|s_debounceCnt\(21),
	combout => \d_p2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X48_Y50_N6
\d_p2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~28_combout\ = (\d_p2|s_debounceCnt\(14) & ((GND) # (!\d_p2|Add0~27\))) # (!\d_p2|s_debounceCnt\(14) & (\d_p2|Add0~27\ $ (GND)))
-- \d_p2|Add0~29\ = CARRY((\d_p2|s_debounceCnt\(14)) # (!\d_p2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_p2|Add0~27\,
	combout => \d_p2|Add0~28_combout\,
	cout => \d_p2|Add0~29\);

-- Location: LCCOMB_X47_Y50_N14
\d_p2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~17_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~28_combout\) # (!\d_p2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|Add0~28_combout\,
	datac => \d_p2|s_previousIn~q\,
	datad => \d_p2|s_debounceCnt[2]~0_combout\,
	combout => \d_p2|s_debounceCnt~17_combout\);

-- Location: FF_X47_Y50_N15
\d_p2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~17_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(14));

-- Location: LCCOMB_X48_Y50_N8
\d_p2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~30_combout\ = (\d_p2|s_debounceCnt\(15) & (\d_p2|Add0~29\ & VCC)) # (!\d_p2|s_debounceCnt\(15) & (!\d_p2|Add0~29\))
-- \d_p2|Add0~31\ = CARRY((!\d_p2|s_debounceCnt\(15) & !\d_p2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_p2|Add0~29\,
	combout => \d_p2|Add0~30_combout\,
	cout => \d_p2|Add0~31\);

-- Location: LCCOMB_X47_Y50_N22
\d_p2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~5_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~30_combout\,
	combout => \d_p2|s_debounceCnt~5_combout\);

-- Location: FF_X47_Y50_N23
\d_p2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~5_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(15));

-- Location: LCCOMB_X48_Y50_N10
\d_p2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~32_combout\ = (\d_p2|s_debounceCnt\(16) & ((GND) # (!\d_p2|Add0~31\))) # (!\d_p2|s_debounceCnt\(16) & (\d_p2|Add0~31\ $ (GND)))
-- \d_p2|Add0~33\ = CARRY((\d_p2|s_debounceCnt\(16)) # (!\d_p2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_p2|Add0~31\,
	combout => \d_p2|Add0~32_combout\,
	cout => \d_p2|Add0~33\);

-- Location: LCCOMB_X48_Y50_N24
\d_p2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~6_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~32_combout\,
	combout => \d_p2|s_debounceCnt~6_combout\);

-- Location: FF_X48_Y50_N25
\d_p2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~6_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(16));

-- Location: LCCOMB_X48_Y50_N12
\d_p2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~34_combout\ = (\d_p2|s_debounceCnt\(17) & (\d_p2|Add0~33\ & VCC)) # (!\d_p2|s_debounceCnt\(17) & (!\d_p2|Add0~33\))
-- \d_p2|Add0~35\ = CARRY((!\d_p2|s_debounceCnt\(17) & !\d_p2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_p2|Add0~33\,
	combout => \d_p2|Add0~34_combout\,
	cout => \d_p2|Add0~35\);

-- Location: LCCOMB_X48_Y50_N26
\d_p2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt~7_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~34_combout\,
	combout => \d_p2|s_debounceCnt~7_combout\);

-- Location: FF_X48_Y50_N27
\d_p2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt~7_combout\,
	ena => \d_p2|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(17));

-- Location: LCCOMB_X48_Y50_N14
\d_p2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~36_combout\ = (\d_p2|s_debounceCnt\(18) & ((GND) # (!\d_p2|Add0~35\))) # (!\d_p2|s_debounceCnt\(18) & (\d_p2|Add0~35\ $ (GND)))
-- \d_p2|Add0~37\ = CARRY((\d_p2|s_debounceCnt\(18)) # (!\d_p2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_p2|Add0~35\,
	combout => \d_p2|Add0~36_combout\,
	cout => \d_p2|Add0~37\);

-- Location: LCCOMB_X45_Y50_N28
\d_p2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[18]~18_combout\ = (\d_p2|s_debounceCnt[2]~3_combout\ & (\d_p2|s_debounceCnt[2]~0_combout\ & ((\d_p2|Add0~36_combout\) # (!\d_p2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_previousIn~q\,
	datab => \d_p2|s_debounceCnt[2]~3_combout\,
	datac => \d_p2|s_debounceCnt[2]~0_combout\,
	datad => \d_p2|Add0~36_combout\,
	combout => \d_p2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X45_Y50_N29
\d_p2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(18));

-- Location: LCCOMB_X48_Y50_N16
\d_p2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~38_combout\ = (\d_p2|s_debounceCnt\(19) & (\d_p2|Add0~37\ & VCC)) # (!\d_p2|s_debounceCnt\(19) & (!\d_p2|Add0~37\))
-- \d_p2|Add0~39\ = CARRY((!\d_p2|s_debounceCnt\(19) & !\d_p2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_p2|Add0~37\,
	combout => \d_p2|Add0~38_combout\,
	cout => \d_p2|Add0~39\);

-- Location: LCCOMB_X46_Y50_N18
\d_p2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[19]~19_combout\ = (\d_p2|s_debounceCnt[2]~0_combout\ & (\d_p2|s_debounceCnt[2]~3_combout\ & ((\d_p2|Add0~38_combout\) # (!\d_p2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_previousIn~q\,
	datab => \d_p2|s_debounceCnt[2]~0_combout\,
	datac => \d_p2|s_debounceCnt[2]~3_combout\,
	datad => \d_p2|Add0~38_combout\,
	combout => \d_p2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X46_Y50_N19
\d_p2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(19));

-- Location: LCCOMB_X47_Y50_N4
\d_p2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~3_combout\ = (!\d_p2|s_debounceCnt\(11) & (!\d_p2|s_debounceCnt\(19) & (!\d_p2|s_debounceCnt\(14) & !\d_p2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(11),
	datab => \d_p2|s_debounceCnt\(19),
	datac => \d_p2|s_debounceCnt\(14),
	datad => \d_p2|s_debounceCnt\(18),
	combout => \d_p2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X47_Y50_N16
\d_p2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~0_combout\ = (!\d_p2|s_debounceCnt\(15) & (!\d_p2|s_debounceCnt\(6) & (!\d_p2|s_debounceCnt\(17) & !\d_p2|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(15),
	datab => \d_p2|s_debounceCnt\(6),
	datac => \d_p2|s_debounceCnt\(17),
	datad => \d_p2|s_debounceCnt\(16),
	combout => \d_p2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X47_Y50_N10
\d_p2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~4_combout\ = (\d_p2|s_pulsedOut~2_combout\ & (\d_p2|s_pulsedOut~1_combout\ & (\d_p2|s_pulsedOut~3_combout\ & \d_p2|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_pulsedOut~2_combout\,
	datab => \d_p2|s_pulsedOut~1_combout\,
	datac => \d_p2|s_pulsedOut~3_combout\,
	datad => \d_p2|s_pulsedOut~0_combout\,
	combout => \d_p2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X47_Y50_N18
\d_p2|s_debounceCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[2]~2_combout\ = (\d_p2|s_debounceCnt\(0)) # (((\d_p2|s_debounceCnt\(5)) # (!\d_p2|s_pulsedOut~4_combout\)) # (!\d_p2|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(0),
	datab => \d_p2|s_pulsedOut~5_combout\,
	datac => \d_p2|s_debounceCnt\(5),
	datad => \d_p2|s_pulsedOut~4_combout\,
	combout => \d_p2|s_debounceCnt[2]~2_combout\);

-- Location: LCCOMB_X47_Y50_N2
\d_p2|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[2]~3_combout\ = (\d_p2|s_debounceCnt\(22)) # (((\d_p2|s_debounceCnt[2]~2_combout\) # (!\d_p2|s_previousIn~q\)) # (!\d_p2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(22),
	datab => \d_p2|s_dirtyIn~q\,
	datac => \d_p2|s_previousIn~q\,
	datad => \d_p2|s_debounceCnt[2]~2_combout\,
	combout => \d_p2|s_debounceCnt[2]~3_combout\);

-- Location: LCCOMB_X48_Y50_N18
\d_p2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~40_combout\ = (\d_p2|s_debounceCnt\(20) & ((GND) # (!\d_p2|Add0~39\))) # (!\d_p2|s_debounceCnt\(20) & (\d_p2|Add0~39\ $ (GND)))
-- \d_p2|Add0~41\ = CARRY((\d_p2|s_debounceCnt\(20)) # (!\d_p2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_p2|Add0~39\,
	combout => \d_p2|Add0~40_combout\,
	cout => \d_p2|Add0~41\);

-- Location: LCCOMB_X48_Y50_N28
\d_p2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[20]~10_combout\ = (\d_p2|s_debounceCnt[2]~3_combout\ & (\d_p2|s_debounceCnt[2]~4_combout\ & \d_p2|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt[2]~3_combout\,
	datac => \d_p2|s_debounceCnt[2]~4_combout\,
	datad => \d_p2|Add0~40_combout\,
	combout => \d_p2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X48_Y50_N29
\d_p2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(20));

-- Location: LCCOMB_X46_Y50_N2
\d_p2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~4_combout\ = (\d_p2|s_debounceCnt\(13)) # ((\d_p2|s_debounceCnt\(12)) # ((\d_p2|s_debounceCnt\(10) & \d_p2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(10),
	datab => \d_p2|s_debounceCnt\(11),
	datac => \d_p2|s_debounceCnt\(13),
	datad => \d_p2|s_debounceCnt\(12),
	combout => \d_p2|LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y50_N12
\d_p2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~5_combout\ = (\d_p2|s_debounceCnt\(15)) # ((\d_p2|s_debounceCnt\(16)) # ((\d_p2|s_debounceCnt\(14) & \d_p2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(15),
	datab => \d_p2|s_debounceCnt\(16),
	datac => \d_p2|s_debounceCnt\(14),
	datad => \d_p2|LessThan0~4_combout\,
	combout => \d_p2|LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y50_N26
\d_p2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~6_combout\ = (\d_p2|s_debounceCnt\(19) & (\d_p2|s_debounceCnt\(18) & ((\d_p2|s_debounceCnt\(17)) # (\d_p2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(19),
	datab => \d_p2|s_debounceCnt\(17),
	datac => \d_p2|s_debounceCnt\(18),
	datad => \d_p2|LessThan0~5_combout\,
	combout => \d_p2|LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y50_N4
\d_p2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~0_combout\ = (\d_p2|s_debounceCnt\(8) & (\d_p2|s_debounceCnt\(18) & (\d_p2|s_debounceCnt\(14) & \d_p2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(8),
	datab => \d_p2|s_debounceCnt\(18),
	datac => \d_p2|s_debounceCnt\(14),
	datad => \d_p2|s_debounceCnt\(19),
	combout => \d_p2|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y50_N30
\d_p2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~1_combout\ = (\d_p2|s_debounceCnt\(11) & \d_p2|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_p2|s_debounceCnt\(11),
	datad => \d_p2|s_debounceCnt\(9),
	combout => \d_p2|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y50_N28
\d_p2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~2_combout\ = (\d_p2|s_debounceCnt\(6) & ((\d_p2|s_debounceCnt\(5)) # ((\d_p2|s_debounceCnt\(0)) # (!\d_p2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(6),
	datab => \d_p2|s_debounceCnt\(5),
	datac => \d_p2|s_debounceCnt\(0),
	datad => \d_p2|s_pulsedOut~5_combout\,
	combout => \d_p2|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y50_N16
\d_p2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~3_combout\ = (\d_p2|LessThan0~0_combout\ & (\d_p2|LessThan0~1_combout\ & ((\d_p2|s_debounceCnt\(7)) # (\d_p2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(7),
	datab => \d_p2|LessThan0~0_combout\,
	datac => \d_p2|LessThan0~1_combout\,
	datad => \d_p2|LessThan0~2_combout\,
	combout => \d_p2|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y50_N20
\d_p2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|LessThan0~7_combout\ = (\d_p2|s_debounceCnt\(20)) # ((\d_p2|s_debounceCnt\(21)) # ((\d_p2|LessThan0~6_combout\) # (\d_p2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(20),
	datab => \d_p2|s_debounceCnt\(21),
	datac => \d_p2|LessThan0~6_combout\,
	datad => \d_p2|LessThan0~3_combout\,
	combout => \d_p2|LessThan0~7_combout\);

-- Location: LCCOMB_X46_Y50_N0
\d_p2|s_debounceCnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[2]~4_combout\ = (\d_p2|s_previousIn~q\ & (\d_p2|s_dirtyIn~q\ & ((!\d_p2|LessThan0~7_combout\) # (!\d_p2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_previousIn~q\,
	datab => \d_p2|s_dirtyIn~q\,
	datac => \d_p2|s_debounceCnt\(22),
	datad => \d_p2|LessThan0~7_combout\,
	combout => \d_p2|s_debounceCnt[2]~4_combout\);

-- Location: LCCOMB_X48_Y50_N20
\d_p2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~42_combout\ = (\d_p2|s_debounceCnt\(21) & (\d_p2|Add0~41\ & VCC)) # (!\d_p2|s_debounceCnt\(21) & (!\d_p2|Add0~41\))
-- \d_p2|Add0~43\ = CARRY((!\d_p2|s_debounceCnt\(21) & !\d_p2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_p2|Add0~41\,
	combout => \d_p2|Add0~42_combout\,
	cout => \d_p2|Add0~43\);

-- Location: LCCOMB_X46_Y50_N24
\d_p2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[21]~11_combout\ = (\d_p2|s_debounceCnt[2]~4_combout\ & (\d_p2|s_debounceCnt[2]~3_combout\ & \d_p2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p2|s_debounceCnt[2]~4_combout\,
	datac => \d_p2|s_debounceCnt[2]~3_combout\,
	datad => \d_p2|Add0~42_combout\,
	combout => \d_p2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X46_Y50_N25
\d_p2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(21));

-- Location: LCCOMB_X48_Y50_N22
\d_p2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|Add0~44_combout\ = \d_p2|s_debounceCnt\(22) $ (\d_p2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(22),
	cin => \d_p2|Add0~43\,
	combout => \d_p2|Add0~44_combout\);

-- Location: LCCOMB_X46_Y50_N10
\d_p2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[22]~25_combout\ = (\d_p2|s_dirtyIn~q\ & ((\d_p2|s_debounceCnt\(22) & ((!\d_p2|LessThan0~7_combout\))) # (!\d_p2|s_debounceCnt\(22) & (\d_p2|s_debounceCnt[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(22),
	datab => \d_p2|s_debounceCnt[2]~2_combout\,
	datac => \d_p2|s_dirtyIn~q\,
	datad => \d_p2|LessThan0~7_combout\,
	combout => \d_p2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X48_Y50_N30
\d_p2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_debounceCnt[22]~26_combout\ = (\d_p2|s_previousIn~q\ & (\d_p2|Add0~44_combout\ & (\d_p2|s_debounceCnt[22]~25_combout\))) # (!\d_p2|s_previousIn~q\ & (((\d_p2|s_debounceCnt[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|Add0~44_combout\,
	datab => \d_p2|s_previousIn~q\,
	datac => \d_p2|s_debounceCnt[22]~25_combout\,
	datad => \d_p2|s_debounceCnt[2]~0_combout\,
	combout => \d_p2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X48_Y50_N31
\d_p2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_debounceCnt\(22));

-- Location: LCCOMB_X45_Y50_N0
\d_p2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~6_combout\ = (!\d_p2|s_debounceCnt\(22) & (\d_p2|s_dirtyIn~q\ & (\d_p2|s_previousIn~q\ & \d_p2|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_debounceCnt\(22),
	datab => \d_p2|s_dirtyIn~q\,
	datac => \d_p2|s_previousIn~q\,
	datad => \d_p2|s_debounceCnt\(0),
	combout => \d_p2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X23_Y55_N0
\d_p2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_p2|s_pulsedOut~7_combout\ = (\d_p2|s_pulsedOut~6_combout\ & (!\d_p2|s_debounceCnt\(5) & (\d_p2|s_pulsedOut~5_combout\ & \d_p2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p2|s_pulsedOut~6_combout\,
	datab => \d_p2|s_debounceCnt\(5),
	datac => \d_p2|s_pulsedOut~5_combout\,
	datad => \d_p2|s_pulsedOut~4_combout\,
	combout => \d_p2|s_pulsedOut~7_combout\);

-- Location: FF_X23_Y55_N1
\d_p2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_p2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_p2|s_pulsedOut~q\);

-- Location: LCCOMB_X23_Y55_N14
\fsm|s_nState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState~0_combout\ = (!\d_p1|s_pulsedOut~q\ & (!\d_p3|s_pulsedOut~q\ & (!\fsm|s_pState.S0~q\ & !\d_p2|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_pulsedOut~q\,
	datab => \d_p3|s_pulsedOut~q\,
	datac => \fsm|s_pState.S0~q\,
	datad => \d_p2|s_pulsedOut~q\,
	combout => \fsm|s_nState~0_combout\);

-- Location: LCCOMB_X23_Y57_N20
\fsm|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector13~2_combout\ = (\timer|s_cntZero~q\ & (((\fsm|s_pState.S3~q\)))) # (!\timer|s_cntZero~q\ & (\fsm|s_pState.RA3~q\ & ((!\fsm|startStop_rE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_cntZero~q\,
	datab => \fsm|s_pState.RA3~q\,
	datac => \fsm|s_pState.S3~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector13~2_combout\);

-- Location: LCCOMB_X23_Y57_N6
\fsm|s_bStop.RA3_631\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.RA3_631~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.RA3~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.RA3_631~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.RA3_631~combout\,
	datac => \fsm|s_pState.RA3~q\,
	datad => \fsm|Selector24~0clkctrl_outclk\,
	combout => \fsm|s_bStop.RA3_631~combout\);

-- Location: LCCOMB_X23_Y57_N12
\fsm|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector13~3_combout\ = (\fsm|Selector13~2_combout\) # ((\fsm|startStop_rE~q\ & (\fsm|s_pState.W~q\ & \fsm|s_bStop.RA3_631~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector13~2_combout\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_pState.W~q\,
	datad => \fsm|s_bStop.RA3_631~combout\,
	combout => \fsm|Selector13~3_combout\);

-- Location: IOIBUF_X31_Y73_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X30_Y57_N30
\d_porta|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_dirtyIn~0_combout\ = !\SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	combout => \d_porta|s_dirtyIn~0_combout\);

-- Location: FF_X30_Y57_N31
\d_porta|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_dirtyIn~q\);

-- Location: FF_X29_Y57_N17
\d_porta|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \d_porta|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_previousIn~q\);

-- Location: LCCOMB_X28_Y58_N10
\d_porta|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~0_combout\ = \d_porta|s_debounceCnt\(0) $ (VCC)
-- \d_porta|Add0~1\ = CARRY(\d_porta|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(0),
	datad => VCC,
	combout => \d_porta|Add0~0_combout\,
	cout => \d_porta|Add0~1\);

-- Location: LCCOMB_X27_Y57_N0
\d_porta|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~24_combout\ = (\d_porta|Add0~0_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|Add0~0_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~24_combout\);

-- Location: FF_X27_Y57_N1
\d_porta|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~24_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(0));

-- Location: LCCOMB_X28_Y58_N12
\d_porta|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~2_combout\ = (\d_porta|s_debounceCnt\(1) & (\d_porta|Add0~1\ & VCC)) # (!\d_porta|s_debounceCnt\(1) & (!\d_porta|Add0~1\))
-- \d_porta|Add0~3\ = CARRY((!\d_porta|s_debounceCnt\(1) & !\d_porta|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(1),
	datad => VCC,
	cin => \d_porta|Add0~1\,
	combout => \d_porta|Add0~2_combout\,
	cout => \d_porta|Add0~3\);

-- Location: LCCOMB_X28_Y58_N0
\d_porta|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~20_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~2_combout\,
	combout => \d_porta|s_debounceCnt~20_combout\);

-- Location: FF_X28_Y58_N1
\d_porta|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~20_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(1));

-- Location: LCCOMB_X28_Y58_N14
\d_porta|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~4_combout\ = (\d_porta|s_debounceCnt\(2) & ((GND) # (!\d_porta|Add0~3\))) # (!\d_porta|s_debounceCnt\(2) & (\d_porta|Add0~3\ $ (GND)))
-- \d_porta|Add0~5\ = CARRY((\d_porta|s_debounceCnt\(2)) # (!\d_porta|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(2),
	datad => VCC,
	cin => \d_porta|Add0~3\,
	combout => \d_porta|Add0~4_combout\,
	cout => \d_porta|Add0~5\);

-- Location: LCCOMB_X28_Y58_N2
\d_porta|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~21_combout\ = (\d_porta|Add0~4_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|Add0~4_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~21_combout\);

-- Location: FF_X28_Y58_N3
\d_porta|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~21_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(2));

-- Location: LCCOMB_X28_Y58_N16
\d_porta|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~6_combout\ = (\d_porta|s_debounceCnt\(3) & (\d_porta|Add0~5\ & VCC)) # (!\d_porta|s_debounceCnt\(3) & (!\d_porta|Add0~5\))
-- \d_porta|Add0~7\ = CARRY((!\d_porta|s_debounceCnt\(3) & !\d_porta|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(3),
	datad => VCC,
	cin => \d_porta|Add0~5\,
	combout => \d_porta|Add0~6_combout\,
	cout => \d_porta|Add0~7\);

-- Location: LCCOMB_X28_Y58_N4
\d_porta|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~22_combout\ = (\d_porta|Add0~6_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|Add0~6_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~22_combout\);

-- Location: FF_X28_Y58_N5
\d_porta|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~22_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(3));

-- Location: LCCOMB_X28_Y58_N18
\d_porta|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~8_combout\ = (\d_porta|s_debounceCnt\(4) & ((GND) # (!\d_porta|Add0~7\))) # (!\d_porta|s_debounceCnt\(4) & (\d_porta|Add0~7\ $ (GND)))
-- \d_porta|Add0~9\ = CARRY((\d_porta|s_debounceCnt\(4)) # (!\d_porta|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(4),
	datad => VCC,
	cin => \d_porta|Add0~7\,
	combout => \d_porta|Add0~8_combout\,
	cout => \d_porta|Add0~9\);

-- Location: LCCOMB_X28_Y58_N6
\d_porta|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~23_combout\ = (\d_porta|Add0~8_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|Add0~8_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~23_combout\);

-- Location: FF_X28_Y58_N7
\d_porta|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~23_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(4));

-- Location: LCCOMB_X28_Y58_N8
\d_porta|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~5_combout\ = (!\d_porta|s_debounceCnt\(4) & (!\d_porta|s_debounceCnt\(2) & (!\d_porta|s_debounceCnt\(3) & !\d_porta|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(4),
	datab => \d_porta|s_debounceCnt\(2),
	datac => \d_porta|s_debounceCnt\(3),
	datad => \d_porta|s_debounceCnt\(1),
	combout => \d_porta|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X28_Y58_N20
\d_porta|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~10_combout\ = (\d_porta|s_debounceCnt\(5) & (\d_porta|Add0~9\ & VCC)) # (!\d_porta|s_debounceCnt\(5) & (!\d_porta|Add0~9\))
-- \d_porta|Add0~11\ = CARRY((!\d_porta|s_debounceCnt\(5) & !\d_porta|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(5),
	datad => VCC,
	cin => \d_porta|Add0~9\,
	combout => \d_porta|Add0~10_combout\,
	cout => \d_porta|Add0~11\);

-- Location: LCCOMB_X28_Y58_N22
\d_porta|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~12_combout\ = (\d_porta|s_debounceCnt\(6) & ((GND) # (!\d_porta|Add0~11\))) # (!\d_porta|s_debounceCnt\(6) & (\d_porta|Add0~11\ $ (GND)))
-- \d_porta|Add0~13\ = CARRY((\d_porta|s_debounceCnt\(6)) # (!\d_porta|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(6),
	datad => VCC,
	cin => \d_porta|Add0~11\,
	combout => \d_porta|Add0~12_combout\,
	cout => \d_porta|Add0~13\);

-- Location: LCCOMB_X29_Y57_N12
\d_porta|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~1_combout\ = (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~12_combout\) # (!\d_porta|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_previousIn~q\,
	datac => \d_porta|Add0~12_combout\,
	datad => \d_porta|s_debounceCnt[17]~0_combout\,
	combout => \d_porta|s_debounceCnt~1_combout\);

-- Location: FF_X29_Y57_N13
\d_porta|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~1_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(6));

-- Location: LCCOMB_X28_Y58_N24
\d_porta|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~14_combout\ = (\d_porta|s_debounceCnt\(7) & (\d_porta|Add0~13\ & VCC)) # (!\d_porta|s_debounceCnt\(7) & (!\d_porta|Add0~13\))
-- \d_porta|Add0~15\ = CARRY((!\d_porta|s_debounceCnt\(7) & !\d_porta|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(7),
	datad => VCC,
	cin => \d_porta|Add0~13\,
	combout => \d_porta|Add0~14_combout\,
	cout => \d_porta|Add0~15\);

-- Location: LCCOMB_X29_Y57_N22
\d_porta|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~12_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~14_combout\,
	combout => \d_porta|s_debounceCnt~12_combout\);

-- Location: FF_X29_Y57_N23
\d_porta|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~12_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(7));

-- Location: LCCOMB_X28_Y58_N26
\d_porta|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~16_combout\ = (\d_porta|s_debounceCnt\(8) & ((GND) # (!\d_porta|Add0~15\))) # (!\d_porta|s_debounceCnt\(8) & (\d_porta|Add0~15\ $ (GND)))
-- \d_porta|Add0~17\ = CARRY((\d_porta|s_debounceCnt\(8)) # (!\d_porta|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(8),
	datad => VCC,
	cin => \d_porta|Add0~15\,
	combout => \d_porta|Add0~16_combout\,
	cout => \d_porta|Add0~17\);

-- Location: LCCOMB_X29_Y57_N0
\d_porta|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~13_combout\ = (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~16_combout\) # (!\d_porta|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_previousIn~q\,
	datac => \d_porta|Add0~16_combout\,
	datad => \d_porta|s_debounceCnt[17]~0_combout\,
	combout => \d_porta|s_debounceCnt~13_combout\);

-- Location: FF_X29_Y57_N1
\d_porta|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~13_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(8));

-- Location: LCCOMB_X28_Y58_N28
\d_porta|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~18_combout\ = (\d_porta|s_debounceCnt\(9) & (\d_porta|Add0~17\ & VCC)) # (!\d_porta|s_debounceCnt\(9) & (!\d_porta|Add0~17\))
-- \d_porta|Add0~19\ = CARRY((!\d_porta|s_debounceCnt\(9) & !\d_porta|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(9),
	datad => VCC,
	cin => \d_porta|Add0~17\,
	combout => \d_porta|Add0~18_combout\,
	cout => \d_porta|Add0~19\);

-- Location: LCCOMB_X29_Y57_N14
\d_porta|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~14_combout\ = (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~18_combout\) # (!\d_porta|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_previousIn~q\,
	datac => \d_porta|Add0~18_combout\,
	datad => \d_porta|s_debounceCnt[17]~0_combout\,
	combout => \d_porta|s_debounceCnt~14_combout\);

-- Location: FF_X29_Y57_N15
\d_porta|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~14_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(9));

-- Location: LCCOMB_X28_Y58_N30
\d_porta|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~20_combout\ = (\d_porta|s_debounceCnt\(10) & ((GND) # (!\d_porta|Add0~19\))) # (!\d_porta|s_debounceCnt\(10) & (\d_porta|Add0~19\ $ (GND)))
-- \d_porta|Add0~21\ = CARRY((\d_porta|s_debounceCnt\(10)) # (!\d_porta|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(10),
	datad => VCC,
	cin => \d_porta|Add0~19\,
	combout => \d_porta|Add0~20_combout\,
	cout => \d_porta|Add0~21\);

-- Location: LCCOMB_X29_Y57_N4
\d_porta|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~15_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~20_combout\,
	combout => \d_porta|s_debounceCnt~15_combout\);

-- Location: FF_X29_Y57_N5
\d_porta|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~15_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(10));

-- Location: LCCOMB_X29_Y57_N26
\d_porta|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~2_combout\ = (!\d_porta|s_debounceCnt\(7) & (!\d_porta|s_debounceCnt\(10) & (!\d_porta|s_debounceCnt\(9) & !\d_porta|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(7),
	datab => \d_porta|s_debounceCnt\(10),
	datac => \d_porta|s_debounceCnt\(9),
	datad => \d_porta|s_debounceCnt\(8),
	combout => \d_porta|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X28_Y57_N0
\d_porta|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~22_combout\ = (\d_porta|s_debounceCnt\(11) & (\d_porta|Add0~21\ & VCC)) # (!\d_porta|s_debounceCnt\(11) & (!\d_porta|Add0~21\))
-- \d_porta|Add0~23\ = CARRY((!\d_porta|s_debounceCnt\(11) & !\d_porta|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(11),
	datad => VCC,
	cin => \d_porta|Add0~21\,
	combout => \d_porta|Add0~22_combout\,
	cout => \d_porta|Add0~23\);

-- Location: LCCOMB_X29_Y57_N28
\d_porta|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~16_combout\ = (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~22_combout\) # (!\d_porta|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_previousIn~q\,
	datac => \d_porta|Add0~22_combout\,
	datad => \d_porta|s_debounceCnt[17]~0_combout\,
	combout => \d_porta|s_debounceCnt~16_combout\);

-- Location: FF_X29_Y57_N29
\d_porta|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~16_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(11));

-- Location: LCCOMB_X28_Y57_N2
\d_porta|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~24_combout\ = (\d_porta|s_debounceCnt\(12) & ((GND) # (!\d_porta|Add0~23\))) # (!\d_porta|s_debounceCnt\(12) & (\d_porta|Add0~23\ $ (GND)))
-- \d_porta|Add0~25\ = CARRY((\d_porta|s_debounceCnt\(12)) # (!\d_porta|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(12),
	datad => VCC,
	cin => \d_porta|Add0~23\,
	combout => \d_porta|Add0~24_combout\,
	cout => \d_porta|Add0~25\);

-- Location: LCCOMB_X29_Y57_N24
\d_porta|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~8_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~24_combout\,
	combout => \d_porta|s_debounceCnt~8_combout\);

-- Location: FF_X29_Y57_N25
\d_porta|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~8_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(12));

-- Location: LCCOMB_X28_Y57_N4
\d_porta|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~26_combout\ = (\d_porta|s_debounceCnt\(13) & (\d_porta|Add0~25\ & VCC)) # (!\d_porta|s_debounceCnt\(13) & (!\d_porta|Add0~25\))
-- \d_porta|Add0~27\ = CARRY((!\d_porta|s_debounceCnt\(13) & !\d_porta|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(13),
	datad => VCC,
	cin => \d_porta|Add0~25\,
	combout => \d_porta|Add0~26_combout\,
	cout => \d_porta|Add0~27\);

-- Location: LCCOMB_X28_Y57_N28
\d_porta|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~9_combout\ = (\d_porta|Add0~26_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|Add0~26_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~9_combout\);

-- Location: FF_X28_Y57_N29
\d_porta|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~9_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(13));

-- Location: LCCOMB_X28_Y57_N6
\d_porta|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~28_combout\ = (\d_porta|s_debounceCnt\(14) & ((GND) # (!\d_porta|Add0~27\))) # (!\d_porta|s_debounceCnt\(14) & (\d_porta|Add0~27\ $ (GND)))
-- \d_porta|Add0~29\ = CARRY((\d_porta|s_debounceCnt\(14)) # (!\d_porta|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(14),
	datad => VCC,
	cin => \d_porta|Add0~27\,
	combout => \d_porta|Add0~28_combout\,
	cout => \d_porta|Add0~29\);

-- Location: LCCOMB_X29_Y57_N6
\d_porta|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~17_combout\ = (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~28_combout\) # (!\d_porta|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_previousIn~q\,
	datac => \d_porta|Add0~28_combout\,
	datad => \d_porta|s_debounceCnt[17]~0_combout\,
	combout => \d_porta|s_debounceCnt~17_combout\);

-- Location: FF_X29_Y57_N7
\d_porta|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~17_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(14));

-- Location: LCCOMB_X28_Y57_N8
\d_porta|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~30_combout\ = (\d_porta|s_debounceCnt\(15) & (\d_porta|Add0~29\ & VCC)) # (!\d_porta|s_debounceCnt\(15) & (!\d_porta|Add0~29\))
-- \d_porta|Add0~31\ = CARRY((!\d_porta|s_debounceCnt\(15) & !\d_porta|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(15),
	datad => VCC,
	cin => \d_porta|Add0~29\,
	combout => \d_porta|Add0~30_combout\,
	cout => \d_porta|Add0~31\);

-- Location: LCCOMB_X29_Y57_N30
\d_porta|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~5_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~30_combout\,
	combout => \d_porta|s_debounceCnt~5_combout\);

-- Location: FF_X29_Y57_N31
\d_porta|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~5_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(15));

-- Location: LCCOMB_X28_Y57_N10
\d_porta|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~32_combout\ = (\d_porta|s_debounceCnt\(16) & ((GND) # (!\d_porta|Add0~31\))) # (!\d_porta|s_debounceCnt\(16) & (\d_porta|Add0~31\ $ (GND)))
-- \d_porta|Add0~33\ = CARRY((\d_porta|s_debounceCnt\(16)) # (!\d_porta|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(16),
	datad => VCC,
	cin => \d_porta|Add0~31\,
	combout => \d_porta|Add0~32_combout\,
	cout => \d_porta|Add0~33\);

-- Location: LCCOMB_X27_Y57_N16
\d_porta|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~6_combout\ = (\d_porta|Add0~32_combout\ & \d_porta|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|Add0~32_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt~6_combout\);

-- Location: FF_X27_Y57_N17
\d_porta|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~6_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(16));

-- Location: LCCOMB_X28_Y57_N12
\d_porta|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~34_combout\ = (\d_porta|s_debounceCnt\(17) & (\d_porta|Add0~33\ & VCC)) # (!\d_porta|s_debounceCnt\(17) & (!\d_porta|Add0~33\))
-- \d_porta|Add0~35\ = CARRY((!\d_porta|s_debounceCnt\(17) & !\d_porta|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(17),
	datad => VCC,
	cin => \d_porta|Add0~33\,
	combout => \d_porta|Add0~34_combout\,
	cout => \d_porta|Add0~35\);

-- Location: LCCOMB_X29_Y57_N8
\d_porta|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~7_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~34_combout\,
	combout => \d_porta|s_debounceCnt~7_combout\);

-- Location: FF_X29_Y57_N9
\d_porta|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~7_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(17));

-- Location: LCCOMB_X28_Y57_N14
\d_porta|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~36_combout\ = (\d_porta|s_debounceCnt\(18) & ((GND) # (!\d_porta|Add0~35\))) # (!\d_porta|s_debounceCnt\(18) & (\d_porta|Add0~35\ $ (GND)))
-- \d_porta|Add0~37\ = CARRY((\d_porta|s_debounceCnt\(18)) # (!\d_porta|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(18),
	datad => VCC,
	cin => \d_porta|Add0~35\,
	combout => \d_porta|Add0~36_combout\,
	cout => \d_porta|Add0~37\);

-- Location: LCCOMB_X30_Y57_N24
\d_porta|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[18]~18_combout\ = (\d_porta|s_debounceCnt[17]~3_combout\ & (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~36_combout\) # (!\d_porta|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_previousIn~q\,
	datab => \d_porta|s_debounceCnt[17]~3_combout\,
	datac => \d_porta|s_debounceCnt[17]~0_combout\,
	datad => \d_porta|Add0~36_combout\,
	combout => \d_porta|s_debounceCnt[18]~18_combout\);

-- Location: FF_X30_Y57_N25
\d_porta|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(18));

-- Location: LCCOMB_X28_Y57_N16
\d_porta|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~38_combout\ = (\d_porta|s_debounceCnt\(19) & (\d_porta|Add0~37\ & VCC)) # (!\d_porta|s_debounceCnt\(19) & (!\d_porta|Add0~37\))
-- \d_porta|Add0~39\ = CARRY((!\d_porta|s_debounceCnt\(19) & !\d_porta|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(19),
	datad => VCC,
	cin => \d_porta|Add0~37\,
	combout => \d_porta|Add0~38_combout\,
	cout => \d_porta|Add0~39\);

-- Location: LCCOMB_X27_Y57_N22
\d_porta|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[19]~19_combout\ = (\d_porta|s_debounceCnt[17]~3_combout\ & (\d_porta|s_debounceCnt[17]~0_combout\ & ((\d_porta|Add0~38_combout\) # (!\d_porta|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt[17]~3_combout\,
	datab => \d_porta|s_debounceCnt[17]~0_combout\,
	datac => \d_porta|s_previousIn~q\,
	datad => \d_porta|Add0~38_combout\,
	combout => \d_porta|s_debounceCnt[19]~19_combout\);

-- Location: FF_X27_Y57_N23
\d_porta|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(19));

-- Location: LCCOMB_X29_Y57_N20
\d_porta|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~3_combout\ = (!\d_porta|s_debounceCnt\(14) & (!\d_porta|s_debounceCnt\(11) & (!\d_porta|s_debounceCnt\(19) & !\d_porta|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(14),
	datab => \d_porta|s_debounceCnt\(11),
	datac => \d_porta|s_debounceCnt\(19),
	datad => \d_porta|s_debounceCnt\(18),
	combout => \d_porta|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X28_Y57_N18
\d_porta|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~40_combout\ = (\d_porta|s_debounceCnt\(20) & ((GND) # (!\d_porta|Add0~39\))) # (!\d_porta|s_debounceCnt\(20) & (\d_porta|Add0~39\ $ (GND)))
-- \d_porta|Add0~41\ = CARRY((\d_porta|s_debounceCnt\(20)) # (!\d_porta|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(20),
	datad => VCC,
	cin => \d_porta|Add0~39\,
	combout => \d_porta|Add0~40_combout\,
	cout => \d_porta|Add0~41\);

-- Location: LCCOMB_X28_Y57_N20
\d_porta|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~42_combout\ = (\d_porta|s_debounceCnt\(21) & (\d_porta|Add0~41\ & VCC)) # (!\d_porta|s_debounceCnt\(21) & (!\d_porta|Add0~41\))
-- \d_porta|Add0~43\ = CARRY((!\d_porta|s_debounceCnt\(21) & !\d_porta|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt\(21),
	datad => VCC,
	cin => \d_porta|Add0~41\,
	combout => \d_porta|Add0~42_combout\,
	cout => \d_porta|Add0~43\);

-- Location: LCCOMB_X28_Y57_N24
\d_porta|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[21]~11_combout\ = (\d_porta|s_debounceCnt[17]~3_combout\ & (\d_porta|Add0~42_combout\ & \d_porta|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt[17]~3_combout\,
	datac => \d_porta|Add0~42_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt[21]~11_combout\);

-- Location: FF_X28_Y57_N25
\d_porta|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(21));

-- Location: LCCOMB_X28_Y57_N26
\d_porta|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~1_combout\ = (!\d_porta|s_debounceCnt\(13) & (!\d_porta|s_debounceCnt\(21) & (!\d_porta|s_debounceCnt\(20) & !\d_porta|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(13),
	datab => \d_porta|s_debounceCnt\(21),
	datac => \d_porta|s_debounceCnt\(20),
	datad => \d_porta|s_debounceCnt\(12),
	combout => \d_porta|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X29_Y57_N18
\d_porta|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~0_combout\ = (!\d_porta|s_debounceCnt\(6) & (!\d_porta|s_debounceCnt\(17) & (!\d_porta|s_debounceCnt\(15) & !\d_porta|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(6),
	datab => \d_porta|s_debounceCnt\(17),
	datac => \d_porta|s_debounceCnt\(15),
	datad => \d_porta|s_debounceCnt\(16),
	combout => \d_porta|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X29_Y57_N2
\d_porta|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~4_combout\ = (\d_porta|s_pulsedOut~2_combout\ & (\d_porta|s_pulsedOut~3_combout\ & (\d_porta|s_pulsedOut~1_combout\ & \d_porta|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_pulsedOut~2_combout\,
	datab => \d_porta|s_pulsedOut~3_combout\,
	datac => \d_porta|s_pulsedOut~1_combout\,
	datad => \d_porta|s_pulsedOut~0_combout\,
	combout => \d_porta|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X29_Y57_N10
\d_porta|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[17]~2_combout\ = (\d_porta|s_debounceCnt\(0)) # ((\d_porta|s_debounceCnt\(5)) # ((!\d_porta|s_pulsedOut~4_combout\) # (!\d_porta|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(0),
	datab => \d_porta|s_debounceCnt\(5),
	datac => \d_porta|s_pulsedOut~5_combout\,
	datad => \d_porta|s_pulsedOut~4_combout\,
	combout => \d_porta|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X29_Y57_N16
\d_porta|s_debounceCnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[17]~3_combout\ = ((\d_porta|s_debounceCnt\(22)) # ((\d_porta|s_debounceCnt[17]~2_combout\) # (!\d_porta|s_previousIn~q\))) # (!\d_porta|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_dirtyIn~q\,
	datab => \d_porta|s_debounceCnt\(22),
	datac => \d_porta|s_previousIn~q\,
	datad => \d_porta|s_debounceCnt[17]~2_combout\,
	combout => \d_porta|s_debounceCnt[17]~3_combout\);

-- Location: LCCOMB_X28_Y57_N30
\d_porta|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[20]~10_combout\ = (\d_porta|s_debounceCnt[17]~3_combout\ & (\d_porta|Add0~40_combout\ & \d_porta|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt[17]~3_combout\,
	datac => \d_porta|Add0~40_combout\,
	datad => \d_porta|s_debounceCnt[17]~4_combout\,
	combout => \d_porta|s_debounceCnt[20]~10_combout\);

-- Location: FF_X28_Y57_N31
\d_porta|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(20));

-- Location: LCCOMB_X27_Y57_N28
\d_porta|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~1_combout\ = (\d_porta|s_debounceCnt\(11) & \d_porta|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_debounceCnt\(11),
	datad => \d_porta|s_debounceCnt\(9),
	combout => \d_porta|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y57_N30
\d_porta|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~0_combout\ = (\d_porta|s_debounceCnt\(19) & (\d_porta|s_debounceCnt\(8) & (\d_porta|s_debounceCnt\(18) & \d_porta|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(19),
	datab => \d_porta|s_debounceCnt\(8),
	datac => \d_porta|s_debounceCnt\(18),
	datad => \d_porta|s_debounceCnt\(14),
	combout => \d_porta|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y57_N2
\d_porta|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~2_combout\ = (\d_porta|s_debounceCnt\(6) & ((\d_porta|s_debounceCnt\(0)) # ((\d_porta|s_debounceCnt\(5)) # (!\d_porta|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(6),
	datab => \d_porta|s_debounceCnt\(0),
	datac => \d_porta|s_debounceCnt\(5),
	datad => \d_porta|s_pulsedOut~5_combout\,
	combout => \d_porta|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y57_N8
\d_porta|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~3_combout\ = (\d_porta|LessThan0~1_combout\ & (\d_porta|LessThan0~0_combout\ & ((\d_porta|s_debounceCnt\(7)) # (\d_porta|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(7),
	datab => \d_porta|LessThan0~1_combout\,
	datac => \d_porta|LessThan0~0_combout\,
	datad => \d_porta|LessThan0~2_combout\,
	combout => \d_porta|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y57_N6
\d_porta|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~4_combout\ = (\d_porta|s_debounceCnt\(13)) # ((\d_porta|s_debounceCnt\(12)) # ((\d_porta|s_debounceCnt\(11) & \d_porta|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(11),
	datab => \d_porta|s_debounceCnt\(13),
	datac => \d_porta|s_debounceCnt\(10),
	datad => \d_porta|s_debounceCnt\(12),
	combout => \d_porta|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y57_N12
\d_porta|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~5_combout\ = (\d_porta|s_debounceCnt\(16)) # ((\d_porta|s_debounceCnt\(15)) # ((\d_porta|s_debounceCnt\(14) & \d_porta|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(14),
	datab => \d_porta|s_debounceCnt\(16),
	datac => \d_porta|s_debounceCnt\(15),
	datad => \d_porta|LessThan0~4_combout\,
	combout => \d_porta|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y57_N10
\d_porta|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~6_combout\ = (\d_porta|s_debounceCnt\(19) & (\d_porta|s_debounceCnt\(18) & ((\d_porta|s_debounceCnt\(17)) # (\d_porta|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(19),
	datab => \d_porta|s_debounceCnt\(17),
	datac => \d_porta|s_debounceCnt\(18),
	datad => \d_porta|LessThan0~5_combout\,
	combout => \d_porta|LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y57_N20
\d_porta|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|LessThan0~7_combout\ = (\d_porta|s_debounceCnt\(20)) # ((\d_porta|s_debounceCnt\(21)) # ((\d_porta|LessThan0~3_combout\) # (\d_porta|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(20),
	datab => \d_porta|s_debounceCnt\(21),
	datac => \d_porta|LessThan0~3_combout\,
	datad => \d_porta|LessThan0~6_combout\,
	combout => \d_porta|LessThan0~7_combout\);

-- Location: LCCOMB_X27_Y57_N18
\d_porta|s_debounceCnt[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[17]~0_combout\ = (\d_porta|s_dirtyIn~q\ & ((!\d_porta|LessThan0~7_combout\) # (!\d_porta|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_dirtyIn~q\,
	datac => \d_porta|s_debounceCnt\(22),
	datad => \d_porta|LessThan0~7_combout\,
	combout => \d_porta|s_debounceCnt[17]~0_combout\);

-- Location: LCCOMB_X27_Y57_N26
\d_porta|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[22]~25_combout\ = (\d_porta|s_dirtyIn~q\ & ((\d_porta|s_debounceCnt\(22) & ((!\d_porta|LessThan0~7_combout\))) # (!\d_porta|s_debounceCnt\(22) & (\d_porta|s_debounceCnt[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt[17]~2_combout\,
	datab => \d_porta|s_dirtyIn~q\,
	datac => \d_porta|s_debounceCnt\(22),
	datad => \d_porta|LessThan0~7_combout\,
	combout => \d_porta|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X28_Y57_N22
\d_porta|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|Add0~44_combout\ = \d_porta|Add0~43\ $ (\d_porta|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \d_porta|s_debounceCnt\(22),
	cin => \d_porta|Add0~43\,
	combout => \d_porta|Add0~44_combout\);

-- Location: LCCOMB_X27_Y57_N14
\d_porta|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[22]~26_combout\ = (\d_porta|s_previousIn~q\ & (((\d_porta|s_debounceCnt[22]~25_combout\ & \d_porta|Add0~44_combout\)))) # (!\d_porta|s_previousIn~q\ & (\d_porta|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_previousIn~q\,
	datab => \d_porta|s_debounceCnt[17]~0_combout\,
	datac => \d_porta|s_debounceCnt[22]~25_combout\,
	datad => \d_porta|Add0~44_combout\,
	combout => \d_porta|s_debounceCnt[22]~26_combout\);

-- Location: FF_X27_Y57_N15
\d_porta|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(22));

-- Location: LCCOMB_X27_Y57_N24
\d_porta|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt[17]~4_combout\ = (\d_porta|s_previousIn~q\ & (\d_porta|s_dirtyIn~q\ & ((!\d_porta|LessThan0~7_combout\) # (!\d_porta|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_previousIn~q\,
	datab => \d_porta|s_dirtyIn~q\,
	datac => \d_porta|s_debounceCnt\(22),
	datad => \d_porta|LessThan0~7_combout\,
	combout => \d_porta|s_debounceCnt[17]~4_combout\);

-- Location: LCCOMB_X27_Y57_N4
\d_porta|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_debounceCnt~27_combout\ = (\d_porta|s_debounceCnt[17]~4_combout\ & \d_porta|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_porta|s_debounceCnt[17]~4_combout\,
	datad => \d_porta|Add0~10_combout\,
	combout => \d_porta|s_debounceCnt~27_combout\);

-- Location: FF_X27_Y57_N5
\d_porta|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_debounceCnt~27_combout\,
	ena => \d_porta|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_debounceCnt\(5));

-- Location: LCCOMB_X30_Y57_N4
\d_porta|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~6_combout\ = (\d_porta|s_previousIn~q\ & (\d_porta|s_debounceCnt\(0) & (\d_porta|s_dirtyIn~q\ & !\d_porta|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_previousIn~q\,
	datab => \d_porta|s_debounceCnt\(0),
	datac => \d_porta|s_dirtyIn~q\,
	datad => \d_porta|s_debounceCnt\(22),
	combout => \d_porta|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X24_Y55_N22
\d_porta|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_porta|s_pulsedOut~7_combout\ = (!\d_porta|s_debounceCnt\(5) & (\d_porta|s_pulsedOut~5_combout\ & (\d_porta|s_pulsedOut~4_combout\ & \d_porta|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_porta|s_debounceCnt\(5),
	datab => \d_porta|s_pulsedOut~5_combout\,
	datac => \d_porta|s_pulsedOut~4_combout\,
	datad => \d_porta|s_pulsedOut~6_combout\,
	combout => \d_porta|s_pulsedOut~7_combout\);

-- Location: FF_X24_Y55_N23
\d_porta|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \d_porta|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_porta|s_pulsedOut~q\);

-- Location: LCCOMB_X24_Y55_N14
\fsm|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector40~0_combout\ = (\d_porta|s_pulsedOut~q\) # (\fsm|s_pState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_porta|s_pulsedOut~q\,
	datad => \fsm|s_pState.S0~q\,
	combout => \fsm|Selector40~0_combout\);

-- Location: CLKCTRL_G1
\fsm|Selector40~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|Selector40~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|Selector40~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y57_N22
\fsm|s_nState.RA3_1010\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.RA3_1010~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector13~3_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.RA3_1010~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector13~3_combout\,
	datac => \fsm|s_nState.RA3_1010~combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.RA3_1010~combout\);

-- Location: LCCOMB_X23_Y57_N28
\fsm|s_pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~18_combout\ = (\fsm|s_nState.RA3_1010~combout\ & !\d_reset|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_nState.RA3_1010~combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \fsm|s_pState~18_combout\);

-- Location: FF_X23_Y57_N29
\fsm|s_pState.RA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.RA3~q\);

-- Location: LCCOMB_X23_Y56_N10
\fsm|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector11~3_combout\ = (\timer|s_cntZero~q\ & (\fsm|s_pState.RA3~q\)) # (!\timer|s_cntZero~q\ & (((\fsm|s_pState.W2s~q\ & !\fsm|startStop_rE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.RA3~q\,
	datab => \fsm|s_pState.W2s~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector11~3_combout\);

-- Location: LCCOMB_X24_Y56_N26
\fsm|s_bStop.W2s_587\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.W2s_587~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.W2s~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.W2s_587~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.W2s_587~combout\,
	datac => \fsm|Selector24~0clkctrl_outclk\,
	datad => \fsm|s_pState.W2s~q\,
	combout => \fsm|s_bStop.W2s_587~combout\);

-- Location: LCCOMB_X23_Y56_N0
\fsm|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector11~4_combout\ = (\fsm|Selector11~3_combout\) # ((\fsm|startStop_rE~q\ & (\fsm|s_pState.W~q\ & \fsm|s_bStop.W2s_587~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector11~3_combout\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_pState.W~q\,
	datad => \fsm|s_bStop.W2s_587~combout\,
	combout => \fsm|Selector11~4_combout\);

-- Location: LCCOMB_X23_Y56_N14
\fsm|s_nState.W2s_1001\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.W2s_1001~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector11~4_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.W2s_1001~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector11~4_combout\,
	datac => \fsm|s_nState.W2s_1001~combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.W2s_1001~combout\);

-- Location: LCCOMB_X21_Y56_N20
\fsm|s_pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~23_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.W2s_1001~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_nState.W2s_1001~combout\,
	combout => \fsm|s_pState~23_combout\);

-- Location: FF_X24_Y56_N9
\fsm|s_pState.W2s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \fsm|s_pState~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.W2s~q\);

-- Location: LCCOMB_X23_Y55_N28
\fsm|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector39~0_combout\ = (\fsm|s_nState~0_combout\) # ((\timer|s_cntZero~q\ & \fsm|s_pState.W2s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_cntZero~q\,
	datac => \fsm|s_nState~0_combout\,
	datad => \fsm|s_pState.W2s~q\,
	combout => \fsm|Selector39~0_combout\);

-- Location: LCCOMB_X23_Y55_N4
\fsm|s_nState.S0_1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.S0_1082~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|Selector39~0_combout\))) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|s_nState.S0_1082~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nState.S0_1082~combout\,
	datac => \fsm|Selector39~0_combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.S0_1082~combout\);

-- Location: LCCOMB_X23_Y55_N26
\fsm|s_pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~21_combout\ = (!\d_reset|s_pulsedOut~q\ & !\fsm|s_nState.S0_1082~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|s_nState.S0_1082~combout\,
	combout => \fsm|s_pState~21_combout\);

-- Location: LCCOMB_X24_Y55_N28
\fsm|s_pState.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState.S0~feeder_combout\ = \fsm|s_pState~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|s_pState~21_combout\,
	combout => \fsm|s_pState.S0~feeder_combout\);

-- Location: FF_X24_Y55_N29
\fsm|s_pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~input_o\,
	d => \fsm|s_pState.S0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.S0~q\);

-- Location: LCCOMB_X24_Y57_N6
\fsm|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector24~0_combout\ = (!\fsm|s_pState.W~q\ & (\fsm|s_pState.S0~q\ & (!\timer|s_cntZero~q\ & \fsm|startStop_rE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W~q\,
	datab => \fsm|s_pState.S0~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector24~0_combout\);

-- Location: CLKCTRL_G13
\fsm|Selector24~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|Selector24~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|Selector24~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y55_N22
\fsm|s_bStop.S3_675\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.S3_675~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.S3~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.S3_675~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.S3_675~combout\,
	datac => \fsm|Selector24~0clkctrl_outclk\,
	datad => \fsm|s_pState.S3~q\,
	combout => \fsm|s_bStop.S3_675~combout\);

-- Location: LCCOMB_X24_Y55_N30
\fsm|s_bStop.Ra2_719\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.Ra2_719~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.Ra2~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.Ra2_719~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.Ra2_719~combout\,
	datac => \fsm|s_pState.Ra2~q\,
	datad => \fsm|Selector24~0clkctrl_outclk\,
	combout => \fsm|s_bStop.Ra2_719~combout\);

-- Location: LCCOMB_X24_Y56_N10
\fsm|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector29~2_combout\ = (\timer|s_cntZero~q\ & (\fsm|s_pState.Ma2~q\)) # (!\timer|s_cntZero~q\ & (((\fsm|s_pState.E2~q\ & !\fsm|startStop_rE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ma2~q\,
	datab => \timer|s_cntZero~q\,
	datac => \fsm|s_pState.E2~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector29~2_combout\);

-- Location: LCCOMB_X23_Y57_N4
\fsm|s_bStop.E2_763\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.E2_763~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_pState.E2~q\)) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_bStop.E2_763~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.E2~q\,
	datac => \fsm|s_bStop.E2_763~combout\,
	datad => \fsm|Selector24~0clkctrl_outclk\,
	combout => \fsm|s_bStop.E2_763~combout\);

-- Location: LCCOMB_X24_Y56_N24
\fsm|Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector29~3_combout\ = (\fsm|Selector29~2_combout\) # ((\fsm|startStop_rE~q\ & (\fsm|s_bStop.E2_763~combout\ & \fsm|s_pState.W~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|startStop_rE~q\,
	datab => \fsm|Selector29~2_combout\,
	datac => \fsm|s_bStop.E2_763~combout\,
	datad => \fsm|s_pState.W~q\,
	combout => \fsm|Selector29~3_combout\);

-- Location: LCCOMB_X24_Y56_N28
\fsm|s_nState.E2_1037\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.E2_1037~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|Selector29~3_combout\))) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|s_nState.E2_1037~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nState.E2_1037~combout\,
	datac => \fsm|Selector29~3_combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.E2_1037~combout\);

-- Location: LCCOMB_X23_Y57_N30
\fsm|s_pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~20_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.E2_1037~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_nState.E2_1037~combout\,
	combout => \fsm|s_pState~20_combout\);

-- Location: FF_X23_Y57_N31
\fsm|s_pState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.E2~q\);

-- Location: LCCOMB_X24_Y55_N10
\fsm|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector27~2_combout\ = (\timer|s_cntZero~q\ & (\fsm|s_pState.E2~q\)) # (!\timer|s_cntZero~q\ & (((!\fsm|startStop_rE~q\ & \fsm|s_pState.Ra2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E2~q\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_pState.Ra2~q\,
	datad => \timer|s_cntZero~q\,
	combout => \fsm|Selector27~2_combout\);

-- Location: LCCOMB_X24_Y55_N16
\fsm|Selector27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector27~3_combout\ = (\fsm|Selector27~2_combout\) # ((\fsm|s_bStop.Ra2_719~combout\ & (\fsm|s_pState.W~q\ & \fsm|startStop_rE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.Ra2_719~combout\,
	datab => \fsm|s_pState.W~q\,
	datac => \fsm|startStop_rE~q\,
	datad => \fsm|Selector27~2_combout\,
	combout => \fsm|Selector27~3_combout\);

-- Location: LCCOMB_X24_Y55_N6
\fsm|s_nState.Ra2_1028\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.Ra2_1028~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector27~3_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.Ra2_1028~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector27~3_combout\,
	datac => \fsm|Selector40~0clkctrl_outclk\,
	datad => \fsm|s_nState.Ra2_1028~combout\,
	combout => \fsm|s_nState.Ra2_1028~combout\);

-- Location: LCCOMB_X23_Y57_N18
\fsm|s_pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~17_combout\ = (\fsm|s_nState.Ra2_1028~combout\ & !\d_reset|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nState.Ra2_1028~combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \fsm|s_pState~17_combout\);

-- Location: FF_X23_Y57_N19
\fsm|s_pState.Ra2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.Ra2~q\);

-- Location: LCCOMB_X23_Y55_N18
\fsm|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector25~1_combout\ = (\timer|s_cntZero~q\ & (((\fsm|s_pState.Ra2~q\)))) # (!\timer|s_cntZero~q\ & (\fsm|s_pState.S3~q\ & (!\fsm|startStop_rE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.S3~q\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_pState.Ra2~q\,
	datad => \timer|s_cntZero~q\,
	combout => \fsm|Selector25~1_combout\);

-- Location: LCCOMB_X24_Y55_N12
\fsm|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector11~2_combout\ = (\fsm|s_pState.W~q\ & \fsm|startStop_rE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector11~2_combout\);

-- Location: LCCOMB_X23_Y55_N20
\fsm|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector25~0_combout\ = (!\d_p1|s_pulsedOut~q\ & (\d_p3|s_pulsedOut~q\ & (!\fsm|s_pState.S0~q\ & !\d_p2|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_p1|s_pulsedOut~q\,
	datab => \d_p3|s_pulsedOut~q\,
	datac => \fsm|s_pState.S0~q\,
	datad => \d_p2|s_pulsedOut~q\,
	combout => \fsm|Selector25~0_combout\);

-- Location: LCCOMB_X23_Y55_N24
\fsm|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector25~2_combout\ = (\fsm|Selector25~1_combout\) # ((\fsm|Selector25~0_combout\) # ((\fsm|s_bStop.S3_675~combout\ & \fsm|Selector11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.S3_675~combout\,
	datab => \fsm|Selector25~1_combout\,
	datac => \fsm|Selector11~2_combout\,
	datad => \fsm|Selector25~0_combout\,
	combout => \fsm|Selector25~2_combout\);

-- Location: LCCOMB_X23_Y55_N6
\fsm|s_nState.S3_1019\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.S3_1019~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector25~2_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.S3_1019~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector25~2_combout\,
	datac => \fsm|Selector40~0clkctrl_outclk\,
	datad => \fsm|s_nState.S3_1019~combout\,
	combout => \fsm|s_nState.S3_1019~combout\);

-- Location: LCCOMB_X23_Y55_N12
\fsm|s_pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~15_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.S3_1019~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_nState.S3_1019~combout\,
	combout => \fsm|s_pState~15_combout\);

-- Location: FF_X23_Y55_N13
\fsm|s_pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.S3~q\);

-- Location: LCCOMB_X23_Y56_N20
\fsm|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector37~1_combout\ = (\fsm|s_pState.MA1~q\ & (!\timer|s_cntZero~q\ & !\fsm|startStop_rE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.MA1~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector37~1_combout\);

-- Location: LCCOMB_X23_Y56_N26
\fsm|s_bStop.MA1_939\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.MA1_939~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_pState.MA1~q\)) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_bStop.MA1_939~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.MA1~q\,
	datac => \fsm|Selector24~0clkctrl_outclk\,
	datad => \fsm|s_bStop.MA1_939~combout\,
	combout => \fsm|s_bStop.MA1_939~combout\);

-- Location: LCCOMB_X23_Y56_N22
\fsm|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector37~0_combout\ = (\fsm|s_bStop.MA1_939~combout\ & (\fsm|s_pState.W~q\ & \fsm|startStop_rE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_bStop.MA1_939~combout\,
	datac => \fsm|s_pState.W~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector37~0_combout\);

-- Location: LCCOMB_X23_Y56_N30
\fsm|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector37~2_combout\ = (\fsm|Selector37~1_combout\) # ((\fsm|Selector37~0_combout\) # ((\d_p1|s_pulsedOut~q\ & !\fsm|s_pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector37~1_combout\,
	datab => \d_p1|s_pulsedOut~q\,
	datac => \fsm|Selector37~0_combout\,
	datad => \fsm|s_pState.S0~q\,
	combout => \fsm|Selector37~2_combout\);

-- Location: LCCOMB_X23_Y56_N2
\fsm|s_nState.MA1_1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.MA1_1073~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector37~2_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.MA1_1073~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector40~0clkctrl_outclk\,
	datab => \fsm|Selector37~2_combout\,
	datad => \fsm|s_nState.MA1_1073~combout\,
	combout => \fsm|s_nState.MA1_1073~combout\);

-- Location: LCCOMB_X23_Y56_N18
\fsm|s_pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~13_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.MA1_1073~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_nState.MA1_1073~combout\,
	combout => \fsm|s_pState~13_combout\);

-- Location: FF_X23_Y56_N19
\fsm|s_pState.MA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.MA1~q\);

-- Location: LCCOMB_X24_Y57_N16
\fsm|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector35~2_combout\ = (\timer|s_cntZero~q\ & (((\fsm|s_pState.MA1~q\)))) # (!\timer|s_cntZero~q\ & (\fsm|s_pState.E1~q\ & ((!\fsm|startStop_rE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E1~q\,
	datab => \fsm|s_pState.MA1~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector35~2_combout\);

-- Location: LCCOMB_X24_Y57_N14
\fsm|s_bStop.E1_895\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.E1_895~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.E1~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.E1_895~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_bStop.E1_895~combout\,
	datac => \fsm|s_pState.E1~q\,
	datad => \fsm|Selector24~0clkctrl_outclk\,
	combout => \fsm|s_bStop.E1_895~combout\);

-- Location: LCCOMB_X24_Y57_N22
\fsm|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector35~3_combout\ = (\fsm|Selector35~2_combout\) # ((\fsm|startStop_rE~q\ & (\fsm|s_bStop.E1_895~combout\ & \fsm|s_pState.W~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector35~2_combout\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_bStop.E1_895~combout\,
	datad => \fsm|s_pState.W~q\,
	combout => \fsm|Selector35~3_combout\);

-- Location: LCCOMB_X24_Y57_N12
\fsm|s_nState.E1_1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.E1_1064~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector35~3_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.E1_1064~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector35~3_combout\,
	datac => \fsm|Selector40~0clkctrl_outclk\,
	datad => \fsm|s_nState.E1_1064~combout\,
	combout => \fsm|s_nState.E1_1064~combout\);

-- Location: LCCOMB_X24_Y57_N2
\fsm|s_pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~19_combout\ = (\fsm|s_nState.E1_1064~combout\ & !\d_reset|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_nState.E1_1064~combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \fsm|s_pState~19_combout\);

-- Location: FF_X24_Y57_N3
\fsm|s_pState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.E1~q\);

-- Location: LCCOMB_X23_Y57_N26
\fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = (\fsm|s_pState.Ra2~q\) # ((\fsm|s_pState.RA3~q\) # ((\fsm|s_pState.E1~q\) # (\fsm|s_pState.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ra2~q\,
	datab => \fsm|s_pState.RA3~q\,
	datac => \fsm|s_pState.E1~q\,
	datad => \fsm|s_pState.E2~q\,
	combout => \fsm|Selector9~0_combout\);

-- Location: LCCOMB_X24_Y57_N28
\fsm|s_bStop.RA1_851\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.RA1_851~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_pState.RA1~q\))) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_bStop.RA1_851~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_bStop.RA1_851~combout\,
	datac => \fsm|s_pState.RA1~q\,
	datad => \fsm|Selector24~0clkctrl_outclk\,
	combout => \fsm|s_bStop.RA1_851~combout\);

-- Location: LCCOMB_X24_Y57_N30
\fsm|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector33~2_combout\ = (\timer|s_cntZero~q\ & (\fsm|s_pState.E1~q\)) # (!\timer|s_cntZero~q\ & (((\fsm|s_pState.RA1~q\ & !\fsm|startStop_rE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E1~q\,
	datab => \fsm|s_pState.RA1~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|startStop_rE~q\,
	combout => \fsm|Selector33~2_combout\);

-- Location: LCCOMB_X24_Y57_N8
\fsm|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector33~3_combout\ = (\fsm|Selector33~2_combout\) # ((\fsm|s_pState.W~q\ & (\fsm|startStop_rE~q\ & \fsm|s_bStop.RA1_851~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W~q\,
	datab => \fsm|startStop_rE~q\,
	datac => \fsm|s_bStop.RA1_851~combout\,
	datad => \fsm|Selector33~2_combout\,
	combout => \fsm|Selector33~3_combout\);

-- Location: LCCOMB_X24_Y57_N18
\fsm|s_nState.RA1_1055\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.RA1_1055~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector33~3_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.RA1_1055~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector33~3_combout\,
	datac => \fsm|Selector40~0clkctrl_outclk\,
	datad => \fsm|s_nState.RA1_1055~combout\,
	combout => \fsm|s_nState.RA1_1055~combout\);

-- Location: LCCOMB_X24_Y57_N24
\fsm|s_pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~16_combout\ = (\fsm|s_nState.RA1_1055~combout\ & !\d_reset|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nState.RA1_1055~combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \fsm|s_pState~16_combout\);

-- Location: FF_X24_Y57_N25
\fsm|s_pState.RA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.RA1~q\);

-- Location: LCCOMB_X23_Y57_N16
\fsm|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~1_combout\ = (\fsm|s_pState.RA1~q\) # ((\fsm|s_pState.Ma2~q\) # (\fsm|s_pState.W2s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.RA1~q\,
	datac => \fsm|s_pState.Ma2~q\,
	datad => \fsm|s_pState.W2s~q\,
	combout => \fsm|Selector9~1_combout\);

-- Location: LCCOMB_X23_Y57_N2
\fsm|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~2_combout\ = (\fsm|s_pState.S3~q\) # ((\fsm|s_pState.MA1~q\) # ((\fsm|Selector9~0_combout\) # (\fsm|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.S3~q\,
	datab => \fsm|s_pState.MA1~q\,
	datac => \fsm|Selector9~0_combout\,
	datad => \fsm|Selector9~1_combout\,
	combout => \fsm|Selector9~2_combout\);

-- Location: LCCOMB_X23_Y57_N0
\fsm|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~3_combout\ = (\fsm|startStop_rE~q\ & (((!\timer|s_cntZero~q\ & \fsm|Selector9~2_combout\)))) # (!\fsm|startStop_rE~q\ & (\fsm|s_pState.W~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W~q\,
	datab => \fsm|startStop_rE~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|Selector9~2_combout\,
	combout => \fsm|Selector9~3_combout\);

-- Location: LCCOMB_X23_Y57_N24
\fsm|s_nState.W_992\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.W_992~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|Selector9~3_combout\))) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|s_nState.W_992~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nState.W_992~combout\,
	datac => \fsm|Selector9~3_combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.W_992~combout\);

-- Location: LCCOMB_X23_Y55_N8
\fsm|s_pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~22_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.W_992~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|s_nState.W_992~combout\,
	combout => \fsm|s_pState~22_combout\);

-- Location: LCCOMB_X24_Y55_N26
\fsm|s_pState.W~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState.W~feeder_combout\ = \fsm|s_pState~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm|s_pState~22_combout\,
	combout => \fsm|s_pState.W~feeder_combout\);

-- Location: FF_X24_Y55_N27
\fsm|s_pState.W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~input_o\,
	d => \fsm|s_pState.W~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.W~q\);

-- Location: LCCOMB_X23_Y57_N14
\fsm|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~3_combout\ = (\fsm|s_pState.E1~q\ & ((\fsm|s_pState.RA1~q\ $ (\fsm|s_nState.RA1_1055~combout\)) # (!\fsm|s_nState.E1_1064~combout\))) # (!\fsm|s_pState.E1~q\ & ((\fsm|s_nState.E1_1064~combout\) # (\fsm|s_pState.RA1~q\ $ 
-- (\fsm|s_nState.RA1_1055~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E1~q\,
	datab => \fsm|s_pState.RA1~q\,
	datac => \fsm|s_nState.E1_1064~combout\,
	datad => \fsm|s_nState.RA1_1055~combout\,
	combout => \fsm|WideOr0~3_combout\);

-- Location: LCCOMB_X24_Y57_N0
\fsm|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~0_combout\ = (\fsm|s_pState.RA3~q\ & ((\fsm|s_pState.W2s~q\ $ (\fsm|s_nState.W2s_1001~combout\)) # (!\fsm|s_nState.RA3_1010~combout\))) # (!\fsm|s_pState.RA3~q\ & ((\fsm|s_nState.RA3_1010~combout\) # (\fsm|s_pState.W2s~q\ $ 
-- (\fsm|s_nState.W2s_1001~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.RA3~q\,
	datab => \fsm|s_nState.RA3_1010~combout\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|s_nState.W2s_1001~combout\,
	combout => \fsm|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y55_N18
\fsm|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~1_combout\ = (\fsm|s_pState.Ra2~q\ & ((\fsm|s_pState.S3~q\ $ (\fsm|s_nState.S3_1019~combout\)) # (!\fsm|s_nState.Ra2_1028~combout\))) # (!\fsm|s_pState.Ra2~q\ & ((\fsm|s_nState.Ra2_1028~combout\) # (\fsm|s_pState.S3~q\ $ 
-- (\fsm|s_nState.S3_1019~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ra2~q\,
	datab => \fsm|s_pState.S3~q\,
	datac => \fsm|s_nState.S3_1019~combout\,
	datad => \fsm|s_nState.Ra2_1028~combout\,
	combout => \fsm|WideOr0~1_combout\);

-- Location: LCCOMB_X24_Y56_N0
\fsm|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~2_combout\ = (\fsm|s_pState.E2~q\ & ((\fsm|s_pState.Ma2~q\ $ (\fsm|s_nState.Ma2_1046~combout\)) # (!\fsm|s_nState.E2_1037~combout\))) # (!\fsm|s_pState.E2~q\ & ((\fsm|s_nState.E2_1037~combout\) # (\fsm|s_pState.Ma2~q\ $ 
-- (\fsm|s_nState.Ma2_1046~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E2~q\,
	datab => \fsm|s_nState.E2_1037~combout\,
	datac => \fsm|s_pState.Ma2~q\,
	datad => \fsm|s_nState.Ma2_1046~combout\,
	combout => \fsm|WideOr0~2_combout\);

-- Location: LCCOMB_X24_Y57_N26
\fsm|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~4_combout\ = (\fsm|WideOr0~3_combout\) # ((\fsm|WideOr0~0_combout\) # ((\fsm|WideOr0~1_combout\) # (\fsm|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr0~3_combout\,
	datab => \fsm|WideOr0~0_combout\,
	datac => \fsm|WideOr0~1_combout\,
	datad => \fsm|WideOr0~2_combout\,
	combout => \fsm|WideOr0~4_combout\);

-- Location: LCCOMB_X23_Y55_N10
\fsm|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~5_combout\ = \fsm|s_pState.MA1~q\ $ (\fsm|s_nState.MA1_1073~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|s_pState.MA1~q\,
	datad => \fsm|s_nState.MA1_1073~combout\,
	combout => \fsm|WideOr0~5_combout\);

-- Location: LCCOMB_X23_Y55_N16
\fsm|WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~6_combout\ = (\fsm|s_nState.W_992~combout\) # ((\fsm|WideOr0~5_combout\) # (\fsm|s_pState.S0~q\ $ (!\fsm|s_nState.S0_1082~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.S0~q\,
	datab => \fsm|s_nState.S0_1082~combout\,
	datac => \fsm|s_nState.W_992~combout\,
	datad => \fsm|WideOr0~5_combout\,
	combout => \fsm|WideOr0~6_combout\);

-- Location: LCCOMB_X24_Y57_N10
\fsm|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChanged~0_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|s_pState.W~q\) # ((!\fsm|WideOr0~4_combout\ & !\fsm|WideOr0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W~q\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|WideOr0~4_combout\,
	datad => \fsm|WideOr0~6_combout\,
	combout => \fsm|s_stateChanged~0_combout\);

-- Location: FF_X24_Y57_N11
\fsm|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_stateChanged~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_stateChanged~q\);

-- Location: LCCOMB_X24_Y60_N0
\timer|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_cntZero~0_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|s_stateChanged~q\) # ((\fsm|s_pState.W~q\) # (!\fsm|s_pState.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChanged~q\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|s_pState.W~q\,
	datad => \fsm|s_pState.S0~q\,
	combout => \timer|s_cntZero~0_combout\);

-- Location: LCCOMB_X24_Y60_N14
\fsm|newTime\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|newTime~combout\ = ((\fsm|s_stateChanged~q\) # (\fsm|s_pState.W~q\)) # (!\fsm|s_pState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.S0~q\,
	datac => \fsm|s_stateChanged~q\,
	datad => \fsm|s_pState.W~q\,
	combout => \fsm|newTime~combout\);

-- Location: LCCOMB_X24_Y55_N20
\fsm|washLED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|washLED~0_combout\ = (!\fsm|s_pState.W~q\ & \fsm|s_pState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|s_pState.W~q\,
	datad => \fsm|s_pState.S0~q\,
	combout => \fsm|washLED~0_combout\);

-- Location: LCCOMB_X24_Y56_N22
\fsm|WideOr9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr9~4_combout\ = (!\fsm|s_pState.Ma2~q\ & (!\fsm|s_pState.MA1~q\ & (!\fsm|s_pState.S3~q\ & \fsm|washLED~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ma2~q\,
	datab => \fsm|s_pState.MA1~q\,
	datac => \fsm|s_pState.S3~q\,
	datad => \fsm|washLED~0_combout\,
	combout => \fsm|WideOr9~4_combout\);

-- Location: LCCOMB_X24_Y56_N20
\fsm|WideOr7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr7~4_combout\ = (\fsm|s_pState.Ma2~q\) # ((\fsm|s_pState.MA1~q\) # ((\fsm|s_pState.W2s~q\) # (!\fsm|washLED~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ma2~q\,
	datab => \fsm|s_pState.MA1~q\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|washLED~0_combout\,
	combout => \fsm|WideOr7~4_combout\);

-- Location: LCCOMB_X24_Y56_N8
\fsm|timeVal[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|timeVal[3]~0_combout\ = (!\fsm|s_pState.E1~q\ & !\fsm|s_pState.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E1~q\,
	datad => \fsm|s_pState.E2~q\,
	combout => \fsm|timeVal[3]~0_combout\);

-- Location: LCCOMB_X23_Y58_N18
\timer|Mult0|mult_core|romout[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][29]~combout\ = (!\fsm|timeVal[3]~0_combout\ & (((!\fsm|s_pState.W2s~q\ & !\fsm|WideOr7~4_combout\)) # (!\fsm|WideOr9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datab => \fsm|WideOr9~4_combout\,
	datac => \fsm|WideOr7~4_combout\,
	datad => \fsm|timeVal[3]~0_combout\,
	combout => \timer|Mult0|mult_core|romout[0][29]~combout\);

-- Location: LCCOMB_X23_Y58_N16
\timer|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~62_combout\ = \timer|Mult0|mult_core|romout[0][29]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|Mult0|mult_core|romout[0][29]~combout\,
	combout => \timer|Add0~62_combout\);

-- Location: LCCOMB_X24_Y56_N18
\timer|Mult0|mult_core|romout[0][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][18]~combout\ = \fsm|s_pState.W2s~q\ $ (!\fsm|WideOr9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datac => \fsm|WideOr9~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][18]~combout\);

-- Location: LCCOMB_X24_Y58_N26
\timer|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~53_combout\ = \timer|Mult0|mult_core|romout[0][18]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|Mult0|mult_core|romout[0][18]~combout\,
	combout => \timer|Add0~53_combout\);

-- Location: LCCOMB_X24_Y56_N2
\timer|Mult0|mult_core|romout[0][17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][17]~4_combout\ = (!\fsm|s_pState.Ma2~q\ & (!\fsm|s_pState.MA1~q\ & (!\fsm|s_pState.W2s~q\ & \fsm|washLED~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ma2~q\,
	datab => \fsm|s_pState.MA1~q\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|washLED~0_combout\,
	combout => \timer|Mult0|mult_core|romout[0][17]~4_combout\);

-- Location: LCCOMB_X23_Y56_N12
\timer|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~50_combout\ = \timer|Mult0|mult_core|romout[0][17]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|Mult0|mult_core|romout[0][17]~4_combout\,
	combout => \timer|Add0~50_combout\);

-- Location: LCCOMB_X24_Y56_N6
\timer|Mult0|mult_core|romout[0][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][22]~combout\ = (\fsm|s_pState.W2s~q\) # ((\fsm|WideOr9~4_combout\ & (!\fsm|WideOr7~4_combout\)) # (!\fsm|WideOr9~4_combout\ & ((\fsm|timeVal[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datab => \fsm|WideOr7~4_combout\,
	datac => \fsm|WideOr9~4_combout\,
	datad => \fsm|timeVal[3]~0_combout\,
	combout => \timer|Mult0|mult_core|romout[0][22]~combout\);

-- Location: LCCOMB_X24_Y56_N4
\timer|Mult0|mult_core|romout[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][21]~combout\ = (\fsm|timeVal[3]~0_combout\ & (((\fsm|s_pState.W2s~q\) # (!\fsm|WideOr7~4_combout\)))) # (!\fsm|timeVal[3]~0_combout\ & (!\fsm|WideOr9~4_combout\ & (!\fsm|s_pState.W2s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr9~4_combout\,
	datab => \fsm|timeVal[3]~0_combout\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|WideOr7~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][21]~combout\);

-- Location: LCCOMB_X24_Y56_N30
\timer|Mult0|mult_core|romout[0][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][20]~combout\ = (\fsm|s_pState.W2s~q\ & (((\fsm|timeVal[3]~0_combout\)))) # (!\fsm|s_pState.W2s~q\ & (!\fsm|WideOr9~4_combout\ & ((\fsm|WideOr7~4_combout\) # (!\fsm|timeVal[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr9~4_combout\,
	datab => \fsm|timeVal[3]~0_combout\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|WideOr7~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][20]~combout\);

-- Location: LCCOMB_X24_Y56_N12
\timer|Mult0|mult_core|romout[0][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][19]~combout\ = (\fsm|timeVal[3]~0_combout\ & (!\fsm|s_pState.W2s~q\ & (\fsm|WideOr9~4_combout\ $ (\fsm|WideOr7~4_combout\)))) # (!\fsm|timeVal[3]~0_combout\ & ((\fsm|s_pState.W2s~q\) # ((!\fsm|WideOr9~4_combout\ & 
-- !\fsm|WideOr7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr9~4_combout\,
	datab => \fsm|timeVal[3]~0_combout\,
	datac => \fsm|s_pState.W2s~q\,
	datad => \fsm|WideOr7~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][19]~combout\);

-- Location: LCCOMB_X24_Y56_N16
\timer|Mult0|mult_core|romout[0][22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][22]~2_combout\ = (!\fsm|s_pState.W2s~q\ & ((\fsm|WideOr7~4_combout\) # (!\fsm|WideOr9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datac => \fsm|WideOr9~4_combout\,
	datad => \fsm|WideOr7~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][22]~2_combout\);

-- Location: LCCOMB_X24_Y56_N14
\timer|Mult0|mult_core|romout[0][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][13]~combout\ = (\fsm|s_pState.W2s~q\ & (\fsm|WideOr9~4_combout\)) # (!\fsm|s_pState.W2s~q\ & (!\fsm|WideOr9~4_combout\ & !\fsm|WideOr7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datac => \fsm|WideOr9~4_combout\,
	datad => \fsm|WideOr7~4_combout\,
	combout => \timer|Mult0|mult_core|romout[0][13]~combout\);

-- Location: LCCOMB_X25_Y56_N0
\timer|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~1_cout\ = CARRY(!\fsm|WideOr9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr9~4_combout\,
	datad => VCC,
	cout => \timer|Add0~1_cout\);

-- Location: LCCOMB_X25_Y56_N2
\timer|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~2_combout\ = (\fsm|WideOr7~4_combout\ & (\timer|Add0~1_cout\ & VCC)) # (!\fsm|WideOr7~4_combout\ & (!\timer|Add0~1_cout\))
-- \timer|Add0~3\ = CARRY((!\fsm|WideOr7~4_combout\ & !\timer|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr7~4_combout\,
	datad => VCC,
	cin => \timer|Add0~1_cout\,
	combout => \timer|Add0~2_combout\,
	cout => \timer|Add0~3\);

-- Location: LCCOMB_X25_Y56_N4
\timer|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~5_combout\ = (\fsm|s_pState.W2s~q\ & (\timer|Add0~3\ $ (GND))) # (!\fsm|s_pState.W2s~q\ & ((GND) # (!\timer|Add0~3\)))
-- \timer|Add0~6\ = CARRY((!\timer|Add0~3\) # (!\fsm|s_pState.W2s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datad => VCC,
	cin => \timer|Add0~3\,
	combout => \timer|Add0~5_combout\,
	cout => \timer|Add0~6\);

-- Location: LCCOMB_X25_Y56_N6
\timer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~8_combout\ = (\timer|Add0~6\ & (((\fsm|s_pState.E2~q\) # (\fsm|s_pState.E1~q\)))) # (!\timer|Add0~6\ & (!\fsm|s_pState.E2~q\ & (!\fsm|s_pState.E1~q\)))
-- \timer|Add0~9\ = CARRY((!\fsm|s_pState.E2~q\ & (!\fsm|s_pState.E1~q\ & !\timer|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.E2~q\,
	datab => \fsm|s_pState.E1~q\,
	datad => VCC,
	cin => \timer|Add0~6\,
	combout => \timer|Add0~8_combout\,
	cout => \timer|Add0~9\);

-- Location: LCCOMB_X25_Y56_N8
\timer|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~11_combout\ = (\fsm|WideOr9~4_combout\ & (\timer|Add0~9\ $ (GND))) # (!\fsm|WideOr9~4_combout\ & ((GND) # (!\timer|Add0~9\)))
-- \timer|Add0~12\ = CARRY((!\timer|Add0~9\) # (!\fsm|WideOr9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr9~4_combout\,
	datad => VCC,
	cin => \timer|Add0~9\,
	combout => \timer|Add0~11_combout\,
	cout => \timer|Add0~12\);

-- Location: LCCOMB_X25_Y56_N10
\timer|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~14_combout\ = (\timer|Mult0|mult_core|romout[0][13]~combout\ & (\timer|Add0~12\ & VCC)) # (!\timer|Mult0|mult_core|romout[0][13]~combout\ & (!\timer|Add0~12\))
-- \timer|Add0~15\ = CARRY((!\timer|Mult0|mult_core|romout[0][13]~combout\ & !\timer|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Mult0|mult_core|romout[0][13]~combout\,
	datad => VCC,
	cin => \timer|Add0~12\,
	combout => \timer|Add0~14_combout\,
	cout => \timer|Add0~15\);

-- Location: LCCOMB_X25_Y56_N12
\timer|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~17_combout\ = (\timer|Mult0|mult_core|romout[0][22]~2_combout\ & (\timer|Add0~15\ $ (GND))) # (!\timer|Mult0|mult_core|romout[0][22]~2_combout\ & ((GND) # (!\timer|Add0~15\)))
-- \timer|Add0~18\ = CARRY((!\timer|Add0~15\) # (!\timer|Mult0|mult_core|romout[0][22]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Mult0|mult_core|romout[0][22]~2_combout\,
	datad => VCC,
	cin => \timer|Add0~15\,
	combout => \timer|Add0~17_combout\,
	cout => \timer|Add0~18\);

-- Location: LCCOMB_X25_Y56_N14
\timer|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~20_combout\ = (\fsm|timeVal[3]~0_combout\ & (\timer|Add0~18\ & VCC)) # (!\fsm|timeVal[3]~0_combout\ & (!\timer|Add0~18\))
-- \timer|Add0~21\ = CARRY((!\fsm|timeVal[3]~0_combout\ & !\timer|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|timeVal[3]~0_combout\,
	datad => VCC,
	cin => \timer|Add0~18\,
	combout => \timer|Add0~20_combout\,
	cout => \timer|Add0~21\);

-- Location: LCCOMB_X25_Y56_N16
\timer|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~23_combout\ = (\fsm|WideOr9~4_combout\ & ((GND) # (!\timer|Add0~21\))) # (!\fsm|WideOr9~4_combout\ & (\timer|Add0~21\ $ (GND)))
-- \timer|Add0~24\ = CARRY((\fsm|WideOr9~4_combout\) # (!\timer|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr9~4_combout\,
	datad => VCC,
	cin => \timer|Add0~21\,
	combout => \timer|Add0~23_combout\,
	cout => \timer|Add0~24\);

-- Location: LCCOMB_X25_Y56_N18
\timer|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~26_combout\ = (\timer|Mult0|mult_core|romout[0][17]~4_combout\ & (\timer|Add0~24\ & VCC)) # (!\timer|Mult0|mult_core|romout[0][17]~4_combout\ & (!\timer|Add0~24\))
-- \timer|Add0~27\ = CARRY((!\timer|Mult0|mult_core|romout[0][17]~4_combout\ & !\timer|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Mult0|mult_core|romout[0][17]~4_combout\,
	datad => VCC,
	cin => \timer|Add0~24\,
	combout => \timer|Add0~26_combout\,
	cout => \timer|Add0~27\);

-- Location: LCCOMB_X25_Y56_N20
\timer|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~29_combout\ = (\timer|Mult0|mult_core|romout[0][18]~combout\ & ((GND) # (!\timer|Add0~27\))) # (!\timer|Mult0|mult_core|romout[0][18]~combout\ & (\timer|Add0~27\ $ (GND)))
-- \timer|Add0~30\ = CARRY((\timer|Mult0|mult_core|romout[0][18]~combout\) # (!\timer|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|Mult0|mult_core|romout[0][18]~combout\,
	datad => VCC,
	cin => \timer|Add0~27\,
	combout => \timer|Add0~29_combout\,
	cout => \timer|Add0~30\);

-- Location: LCCOMB_X25_Y56_N22
\timer|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~32_combout\ = (\timer|Mult0|mult_core|romout[0][19]~combout\ & (\timer|Add0~30\ & VCC)) # (!\timer|Mult0|mult_core|romout[0][19]~combout\ & (!\timer|Add0~30\))
-- \timer|Add0~33\ = CARRY((!\timer|Mult0|mult_core|romout[0][19]~combout\ & !\timer|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Mult0|mult_core|romout[0][19]~combout\,
	datad => VCC,
	cin => \timer|Add0~30\,
	combout => \timer|Add0~32_combout\,
	cout => \timer|Add0~33\);

-- Location: LCCOMB_X25_Y56_N24
\timer|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~35_combout\ = (\timer|Mult0|mult_core|romout[0][20]~combout\ & ((GND) # (!\timer|Add0~33\))) # (!\timer|Mult0|mult_core|romout[0][20]~combout\ & (\timer|Add0~33\ $ (GND)))
-- \timer|Add0~36\ = CARRY((\timer|Mult0|mult_core|romout[0][20]~combout\) # (!\timer|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|Mult0|mult_core|romout[0][20]~combout\,
	datad => VCC,
	cin => \timer|Add0~33\,
	combout => \timer|Add0~35_combout\,
	cout => \timer|Add0~36\);

-- Location: LCCOMB_X25_Y56_N26
\timer|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~38_combout\ = (\timer|Mult0|mult_core|romout[0][21]~combout\ & (\timer|Add0~36\ & VCC)) # (!\timer|Mult0|mult_core|romout[0][21]~combout\ & (!\timer|Add0~36\))
-- \timer|Add0~39\ = CARRY((!\timer|Mult0|mult_core|romout[0][21]~combout\ & !\timer|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|Mult0|mult_core|romout[0][21]~combout\,
	datad => VCC,
	cin => \timer|Add0~36\,
	combout => \timer|Add0~38_combout\,
	cout => \timer|Add0~39\);

-- Location: LCCOMB_X25_Y56_N28
\timer|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~41_combout\ = (\timer|Mult0|mult_core|romout[0][22]~combout\ & ((GND) # (!\timer|Add0~39\))) # (!\timer|Mult0|mult_core|romout[0][22]~combout\ & (\timer|Add0~39\ $ (GND)))
-- \timer|Add0~42\ = CARRY((\timer|Mult0|mult_core|romout[0][22]~combout\) # (!\timer|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Mult0|mult_core|romout[0][22]~combout\,
	datad => VCC,
	cin => \timer|Add0~39\,
	combout => \timer|Add0~41_combout\,
	cout => \timer|Add0~42\);

-- Location: LCCOMB_X25_Y56_N30
\timer|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~44_combout\ = \timer|Add0~42\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timer|Add0~42\,
	combout => \timer|Add0~44_combout\);

-- Location: LCCOMB_X25_Y60_N8
\timer|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~0_combout\ = \timer|s_counter\(0) $ (GND)
-- \timer|Add1~1\ = CARRY(!\timer|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(0),
	datad => VCC,
	combout => \timer|Add1~0_combout\,
	cout => \timer|Add1~1\);

-- Location: LCCOMB_X24_Y60_N16
\timer|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~0_combout\ = (!\timer|Add1~0_combout\ & (!\d_reset|s_pulsedOut~q\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \timer|Add1~0_combout\,
	datac => \fsm|s_stateChanged~q\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|s_counter~0_combout\);

-- Location: LCCOMB_X24_Y60_N30
\timer|s_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter[3]~1_combout\ = ((!\timer|Equal0~12_combout\ & !\fsm|s_pState.W~q\)) # (!\timer|s_cntZero~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~12_combout\,
	datab => \timer|s_cntZero~0_combout\,
	datad => \fsm|s_pState.W~q\,
	combout => \timer|s_counter[3]~1_combout\);

-- Location: FF_X25_Y60_N29
\timer|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \timer|s_counter~0_combout\,
	sload => VCC,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(0));

-- Location: LCCOMB_X25_Y60_N10
\timer|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~2_combout\ = (\timer|s_counter\(1) & (!\timer|Add1~1\)) # (!\timer|s_counter\(1) & (\timer|Add1~1\ & VCC))
-- \timer|Add1~3\ = CARRY((\timer|s_counter\(1) & !\timer|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(1),
	datad => VCC,
	cin => \timer|Add1~1\,
	combout => \timer|Add1~2_combout\,
	cout => \timer|Add1~3\);

-- Location: LCCOMB_X24_Y60_N4
\timer|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~2_combout\ = (!\timer|Add1~2_combout\ & (!\d_reset|s_pulsedOut~q\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \timer|Add1~2_combout\,
	datac => \fsm|s_stateChanged~q\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|s_counter~2_combout\);

-- Location: FF_X25_Y60_N31
\timer|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \timer|s_counter~2_combout\,
	sload => VCC,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(1));

-- Location: LCCOMB_X25_Y60_N12
\timer|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~4_combout\ = (\timer|s_counter\(2) & (\timer|Add1~3\ $ (GND))) # (!\timer|s_counter\(2) & ((GND) # (!\timer|Add1~3\)))
-- \timer|Add1~5\ = CARRY((!\timer|Add1~3\) # (!\timer|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(2),
	datad => VCC,
	cin => \timer|Add1~3\,
	combout => \timer|Add1~4_combout\,
	cout => \timer|Add1~5\);

-- Location: LCCOMB_X24_Y57_N4
\timer|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~3_combout\ = (!\d_reset|s_pulsedOut~q\ & (!\timer|Add1~4_combout\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChanged~q\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~4_combout\,
	datad => \fsm|washLED~0_combout\,
	combout => \timer|s_counter~3_combout\);

-- Location: FF_X25_Y60_N23
\timer|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \timer|s_counter~3_combout\,
	sload => VCC,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(2));

-- Location: LCCOMB_X25_Y60_N14
\timer|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~6_combout\ = (\timer|s_counter\(3) & (!\timer|Add1~5\)) # (!\timer|s_counter\(3) & (\timer|Add1~5\ & VCC))
-- \timer|Add1~7\ = CARRY((\timer|s_counter\(3) & !\timer|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(3),
	datad => VCC,
	cin => \timer|Add1~5\,
	combout => \timer|Add1~6_combout\,
	cout => \timer|Add1~7\);

-- Location: LCCOMB_X25_Y60_N0
\timer|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~4_combout\ = (!\timer|Add1~6_combout\ & (!\d_reset|s_pulsedOut~q\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \timer|Add1~6_combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_stateChanged~q\,
	combout => \timer|s_counter~4_combout\);

-- Location: FF_X25_Y60_N1
\timer|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~4_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(3));

-- Location: LCCOMB_X25_Y60_N16
\timer|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~8_combout\ = (\timer|s_counter\(4) & (\timer|Add1~7\ $ (GND))) # (!\timer|s_counter\(4) & ((GND) # (!\timer|Add1~7\)))
-- \timer|Add1~9\ = CARRY((!\timer|Add1~7\) # (!\timer|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(4),
	datad => VCC,
	cin => \timer|Add1~7\,
	combout => \timer|Add1~8_combout\,
	cout => \timer|Add1~9\);

-- Location: LCCOMB_X25_Y60_N6
\timer|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~5_combout\ = (!\d_reset|s_pulsedOut~q\ & (!\timer|Add1~8_combout\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \fsm|s_stateChanged~q\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add1~8_combout\,
	combout => \timer|s_counter~5_combout\);

-- Location: FF_X25_Y60_N7
\timer|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~5_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(4));

-- Location: LCCOMB_X25_Y60_N18
\timer|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~10_combout\ = (\timer|s_counter\(5) & (!\timer|Add1~9\)) # (!\timer|s_counter\(5) & (\timer|Add1~9\ & VCC))
-- \timer|Add1~11\ = CARRY((\timer|s_counter\(5) & !\timer|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(5),
	datad => VCC,
	cin => \timer|Add1~9\,
	combout => \timer|Add1~10_combout\,
	cout => \timer|Add1~11\);

-- Location: LCCOMB_X25_Y60_N4
\timer|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~6_combout\ = (!\d_reset|s_pulsedOut~q\ & (!\timer|Add1~10_combout\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \fsm|s_stateChanged~q\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add1~10_combout\,
	combout => \timer|s_counter~6_combout\);

-- Location: FF_X25_Y60_N5
\timer|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~6_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(5));

-- Location: LCCOMB_X25_Y60_N20
\timer|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~12_combout\ = (\timer|s_counter\(6) & (\timer|Add1~11\ $ (GND))) # (!\timer|s_counter\(6) & ((GND) # (!\timer|Add1~11\)))
-- \timer|Add1~13\ = CARRY((!\timer|Add1~11\) # (!\timer|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(6),
	datad => VCC,
	cin => \timer|Add1~11\,
	combout => \timer|Add1~12_combout\,
	cout => \timer|Add1~13\);

-- Location: LCCOMB_X25_Y60_N2
\timer|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~7_combout\ = (!\d_reset|s_pulsedOut~q\ & (!\timer|Add1~12_combout\ & ((\fsm|s_stateChanged~q\) # (!\fsm|washLED~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|washLED~0_combout\,
	datab => \fsm|s_stateChanged~q\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add1~12_combout\,
	combout => \timer|s_counter~7_combout\);

-- Location: FF_X25_Y60_N3
\timer|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~7_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(6));

-- Location: LCCOMB_X25_Y60_N22
\timer|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~14_combout\ = (\timer|s_counter\(7) & (!\timer|Add1~13\)) # (!\timer|s_counter\(7) & (\timer|Add1~13\ & VCC))
-- \timer|Add1~15\ = CARRY((\timer|s_counter\(7) & !\timer|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(7),
	datad => VCC,
	cin => \timer|Add1~13\,
	combout => \timer|Add1~14_combout\,
	cout => \timer|Add1~15\);

-- Location: LCCOMB_X26_Y60_N0
\timer|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~8_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~14_combout\))) # (!\fsm|newTime~combout\ & (!\fsm|WideOr9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|WideOr9~4_combout\,
	datad => \timer|Add1~14_combout\,
	combout => \timer|s_counter~8_combout\);

-- Location: FF_X25_Y60_N11
\timer|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \timer|s_counter~8_combout\,
	sload => VCC,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(7));

-- Location: LCCOMB_X25_Y60_N24
\timer|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~16_combout\ = (\timer|s_counter\(8) & (\timer|Add1~15\ $ (GND))) # (!\timer|s_counter\(8) & ((GND) # (!\timer|Add1~15\)))
-- \timer|Add1~17\ = CARRY((!\timer|Add1~15\) # (!\timer|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(8),
	datad => VCC,
	cin => \timer|Add1~15\,
	combout => \timer|Add1~16_combout\,
	cout => \timer|Add1~17\);

-- Location: LCCOMB_X24_Y59_N24
\timer|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~4_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~16_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~16_combout\,
	datad => \timer|Add0~2_combout\,
	combout => \timer|Add0~4_combout\);

-- Location: FF_X24_Y59_N25
\timer|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~4_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(8));

-- Location: LCCOMB_X25_Y60_N26
\timer|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~18_combout\ = (\timer|s_counter\(9) & (!\timer|Add1~17\)) # (!\timer|s_counter\(9) & (\timer|Add1~17\ & VCC))
-- \timer|Add1~19\ = CARRY((\timer|s_counter\(9) & !\timer|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(9),
	datad => VCC,
	cin => \timer|Add1~17\,
	combout => \timer|Add1~18_combout\,
	cout => \timer|Add1~19\);

-- Location: LCCOMB_X24_Y59_N22
\timer|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~7_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~18_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \timer|Add1~18_combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add0~5_combout\,
	combout => \timer|Add0~7_combout\);

-- Location: FF_X24_Y59_N23
\timer|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~7_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(9));

-- Location: LCCOMB_X25_Y60_N28
\timer|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~20_combout\ = (\timer|s_counter\(10) & (\timer|Add1~19\ $ (GND))) # (!\timer|s_counter\(10) & ((GND) # (!\timer|Add1~19\)))
-- \timer|Add1~21\ = CARRY((!\timer|Add1~19\) # (!\timer|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(10),
	datad => VCC,
	cin => \timer|Add1~19\,
	combout => \timer|Add1~20_combout\,
	cout => \timer|Add1~21\);

-- Location: LCCOMB_X24_Y59_N20
\timer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~10_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~20_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \timer|Add1~20_combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add0~8_combout\,
	combout => \timer|Add0~10_combout\);

-- Location: FF_X24_Y59_N21
\timer|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~10_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(10));

-- Location: LCCOMB_X25_Y60_N30
\timer|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~22_combout\ = (\timer|s_counter\(11) & (!\timer|Add1~21\)) # (!\timer|s_counter\(11) & (\timer|Add1~21\ & VCC))
-- \timer|Add1~23\ = CARRY((\timer|s_counter\(11) & !\timer|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(11),
	datad => VCC,
	cin => \timer|Add1~21\,
	combout => \timer|Add1~22_combout\,
	cout => \timer|Add1~23\);

-- Location: LCCOMB_X24_Y59_N2
\timer|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~9_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~22_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datac => \timer|Add1~22_combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|s_counter~9_combout\);

-- Location: FF_X24_Y59_N3
\timer|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~9_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(11));

-- Location: LCCOMB_X25_Y59_N0
\timer|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~24_combout\ = (\timer|s_counter\(12) & (\timer|Add1~23\ $ (GND))) # (!\timer|s_counter\(12) & ((GND) # (!\timer|Add1~23\)))
-- \timer|Add1~25\ = CARRY((!\timer|Add1~23\) # (!\timer|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(12),
	datad => VCC,
	cin => \timer|Add1~23\,
	combout => \timer|Add1~24_combout\,
	cout => \timer|Add1~25\);

-- Location: LCCOMB_X24_Y59_N14
\timer|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~13_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~24_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \timer|Add1~24_combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add0~11_combout\,
	combout => \timer|Add0~13_combout\);

-- Location: FF_X24_Y59_N15
\timer|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~13_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(12));

-- Location: LCCOMB_X25_Y59_N2
\timer|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~26_combout\ = (\timer|s_counter\(13) & (!\timer|Add1~25\)) # (!\timer|s_counter\(13) & (\timer|Add1~25\ & VCC))
-- \timer|Add1~27\ = CARRY((\timer|s_counter\(13) & !\timer|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(13),
	datad => VCC,
	cin => \timer|Add1~25\,
	combout => \timer|Add1~26_combout\,
	cout => \timer|Add1~27\);

-- Location: LCCOMB_X24_Y59_N12
\timer|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~16_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~26_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~26_combout\,
	datad => \timer|Add0~14_combout\,
	combout => \timer|Add0~16_combout\);

-- Location: FF_X24_Y59_N13
\timer|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~16_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(13));

-- Location: LCCOMB_X25_Y59_N4
\timer|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~28_combout\ = (\timer|s_counter\(14) & (\timer|Add1~27\ $ (GND))) # (!\timer|s_counter\(14) & ((GND) # (!\timer|Add1~27\)))
-- \timer|Add1~29\ = CARRY((!\timer|Add1~27\) # (!\timer|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(14),
	datad => VCC,
	cin => \timer|Add1~27\,
	combout => \timer|Add1~28_combout\,
	cout => \timer|Add1~29\);

-- Location: LCCOMB_X24_Y59_N6
\timer|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~19_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~28_combout\))) # (!\fsm|newTime~combout\ & (!\timer|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add0~17_combout\,
	datad => \timer|Add1~28_combout\,
	combout => \timer|Add0~19_combout\);

-- Location: FF_X24_Y59_N7
\timer|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~19_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(14));

-- Location: LCCOMB_X25_Y59_N6
\timer|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~30_combout\ = (\timer|s_counter\(15) & (!\timer|Add1~29\)) # (!\timer|s_counter\(15) & (\timer|Add1~29\ & VCC))
-- \timer|Add1~31\ = CARRY((\timer|s_counter\(15) & !\timer|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(15),
	datad => VCC,
	cin => \timer|Add1~29\,
	combout => \timer|Add1~30_combout\,
	cout => \timer|Add1~31\);

-- Location: LCCOMB_X24_Y59_N16
\timer|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~22_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~30_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add1~30_combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|newTime~combout\,
	datad => \timer|Add0~20_combout\,
	combout => \timer|Add0~22_combout\);

-- Location: FF_X24_Y59_N17
\timer|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~22_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(15));

-- Location: LCCOMB_X25_Y59_N8
\timer|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~32_combout\ = (\timer|s_counter\(16) & (\timer|Add1~31\ $ (GND))) # (!\timer|s_counter\(16) & ((GND) # (!\timer|Add1~31\)))
-- \timer|Add1~33\ = CARRY((!\timer|Add1~31\) # (!\timer|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(16),
	datad => VCC,
	cin => \timer|Add1~31\,
	combout => \timer|Add1~32_combout\,
	cout => \timer|Add1~33\);

-- Location: LCCOMB_X24_Y59_N8
\timer|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~25_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~32_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~32_combout\,
	datad => \timer|Add0~23_combout\,
	combout => \timer|Add0~25_combout\);

-- Location: FF_X24_Y59_N9
\timer|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~25_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(16));

-- Location: LCCOMB_X25_Y59_N10
\timer|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~34_combout\ = (\timer|s_counter\(17) & (!\timer|Add1~33\)) # (!\timer|s_counter\(17) & (\timer|Add1~33\ & VCC))
-- \timer|Add1~35\ = CARRY((\timer|s_counter\(17) & !\timer|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(17),
	datad => VCC,
	cin => \timer|Add1~33\,
	combout => \timer|Add1~34_combout\,
	cout => \timer|Add1~35\);

-- Location: LCCOMB_X24_Y59_N10
\timer|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~28_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~34_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~34_combout\,
	datad => \timer|Add0~26_combout\,
	combout => \timer|Add0~28_combout\);

-- Location: FF_X24_Y59_N11
\timer|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~28_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(17));

-- Location: LCCOMB_X25_Y59_N12
\timer|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~36_combout\ = (\timer|s_counter\(18) & (\timer|Add1~35\ $ (GND))) # (!\timer|s_counter\(18) & ((GND) # (!\timer|Add1~35\)))
-- \timer|Add1~37\ = CARRY((!\timer|Add1~35\) # (!\timer|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(18),
	datad => VCC,
	cin => \timer|Add1~35\,
	combout => \timer|Add1~36_combout\,
	cout => \timer|Add1~37\);

-- Location: LCCOMB_X24_Y59_N4
\timer|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~31_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~36_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \timer|Add1~36_combout\,
	datac => \timer|Add0~29_combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|Add0~31_combout\);

-- Location: FF_X24_Y59_N5
\timer|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~31_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(18));

-- Location: LCCOMB_X25_Y59_N14
\timer|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~38_combout\ = (\timer|s_counter\(19) & (!\timer|Add1~37\)) # (!\timer|s_counter\(19) & (\timer|Add1~37\ & VCC))
-- \timer|Add1~39\ = CARRY((\timer|s_counter\(19) & !\timer|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(19),
	datad => VCC,
	cin => \timer|Add1~37\,
	combout => \timer|Add1~38_combout\,
	cout => \timer|Add1~39\);

-- Location: LCCOMB_X24_Y59_N18
\timer|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~34_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~38_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~38_combout\,
	datad => \timer|Add0~32_combout\,
	combout => \timer|Add0~34_combout\);

-- Location: FF_X24_Y59_N19
\timer|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~34_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(19));

-- Location: LCCOMB_X25_Y59_N16
\timer|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~40_combout\ = (\timer|s_counter\(20) & (\timer|Add1~39\ $ (GND))) # (!\timer|s_counter\(20) & ((GND) # (!\timer|Add1~39\)))
-- \timer|Add1~41\ = CARRY((!\timer|Add1~39\) # (!\timer|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(20),
	datad => VCC,
	cin => \timer|Add1~39\,
	combout => \timer|Add1~40_combout\,
	cout => \timer|Add1~41\);

-- Location: LCCOMB_X24_Y58_N8
\timer|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~37_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~40_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~40_combout\,
	datad => \timer|Add0~35_combout\,
	combout => \timer|Add0~37_combout\);

-- Location: FF_X24_Y58_N9
\timer|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~37_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(20));

-- Location: LCCOMB_X25_Y59_N18
\timer|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~42_combout\ = (\timer|s_counter\(21) & (!\timer|Add1~41\)) # (!\timer|s_counter\(21) & (\timer|Add1~41\ & VCC))
-- \timer|Add1~43\ = CARRY((\timer|s_counter\(21) & !\timer|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(21),
	datad => VCC,
	cin => \timer|Add1~41\,
	combout => \timer|Add1~42_combout\,
	cout => \timer|Add1~43\);

-- Location: LCCOMB_X24_Y58_N2
\timer|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~40_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~42_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~42_combout\,
	datad => \timer|Add0~38_combout\,
	combout => \timer|Add0~40_combout\);

-- Location: FF_X24_Y58_N3
\timer|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~40_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(21));

-- Location: LCCOMB_X25_Y59_N20
\timer|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~44_combout\ = (\timer|s_counter\(22) & (\timer|Add1~43\ $ (GND))) # (!\timer|s_counter\(22) & ((GND) # (!\timer|Add1~43\)))
-- \timer|Add1~45\ = CARRY((!\timer|Add1~43\) # (!\timer|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(22),
	datad => VCC,
	cin => \timer|Add1~43\,
	combout => \timer|Add1~44_combout\,
	cout => \timer|Add1~45\);

-- Location: LCCOMB_X24_Y58_N0
\timer|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~43_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~44_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~44_combout\,
	datad => \timer|Add0~41_combout\,
	combout => \timer|Add0~43_combout\);

-- Location: FF_X24_Y58_N1
\timer|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~43_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(22));

-- Location: LCCOMB_X25_Y59_N22
\timer|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~46_combout\ = (\timer|s_counter\(23) & (!\timer|Add1~45\)) # (!\timer|s_counter\(23) & (\timer|Add1~45\ & VCC))
-- \timer|Add1~47\ = CARRY((\timer|s_counter\(23) & !\timer|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(23),
	datad => VCC,
	cin => \timer|Add1~45\,
	combout => \timer|Add1~46_combout\,
	cout => \timer|Add1~47\);

-- Location: LCCOMB_X24_Y58_N22
\timer|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~46_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~46_combout\))) # (!\fsm|newTime~combout\ & (!\timer|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add0~44_combout\,
	datad => \timer|Add1~46_combout\,
	combout => \timer|Add0~46_combout\);

-- Location: FF_X24_Y58_N23
\timer|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~46_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(23));

-- Location: LCCOMB_X25_Y59_N24
\timer|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~48_combout\ = (\timer|s_counter\(24) & (\timer|Add1~47\ $ (GND))) # (!\timer|s_counter\(24) & ((GND) # (!\timer|Add1~47\)))
-- \timer|Add1~49\ = CARRY((!\timer|Add1~47\) # (!\timer|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(24),
	datad => VCC,
	cin => \timer|Add1~47\,
	combout => \timer|Add1~48_combout\,
	cout => \timer|Add1~49\);

-- Location: LCCOMB_X24_Y58_N20
\timer|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~47_combout\ = \fsm|WideOr9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|WideOr9~4_combout\,
	combout => \timer|Add0~47_combout\);

-- Location: LCCOMB_X24_Y58_N14
\timer|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~49_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~48_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~48_combout\,
	datad => \timer|Add0~47_combout\,
	combout => \timer|Add0~49_combout\);

-- Location: FF_X24_Y58_N15
\timer|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~49_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(24));

-- Location: LCCOMB_X25_Y59_N26
\timer|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~50_combout\ = (\timer|s_counter\(25) & (!\timer|Add1~49\)) # (!\timer|s_counter\(25) & (\timer|Add1~49\ & VCC))
-- \timer|Add1~51\ = CARRY((\timer|s_counter\(25) & !\timer|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(25),
	datad => VCC,
	cin => \timer|Add1~49\,
	combout => \timer|Add1~50_combout\,
	cout => \timer|Add1~51\);

-- Location: LCCOMB_X24_Y59_N30
\timer|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~52_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~50_combout\))) # (!\fsm|newTime~combout\ & (!\timer|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|newTime~combout\,
	datab => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add0~50_combout\,
	datad => \timer|Add1~50_combout\,
	combout => \timer|Add0~52_combout\);

-- Location: FF_X24_Y59_N31
\timer|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~52_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(25));

-- Location: LCCOMB_X25_Y59_N28
\timer|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~52_combout\ = (\timer|s_counter\(26) & (\timer|Add1~51\ $ (GND))) # (!\timer|s_counter\(26) & ((GND) # (!\timer|Add1~51\)))
-- \timer|Add1~53\ = CARRY((!\timer|Add1~51\) # (!\timer|s_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(26),
	datad => VCC,
	cin => \timer|Add1~51\,
	combout => \timer|Add1~52_combout\,
	cout => \timer|Add1~53\);

-- Location: LCCOMB_X24_Y58_N12
\timer|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~55_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~52_combout\))) # (!\fsm|newTime~combout\ & (!\timer|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add0~53_combout\,
	datad => \timer|Add1~52_combout\,
	combout => \timer|Add0~55_combout\);

-- Location: FF_X24_Y58_N13
\timer|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~55_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(26));

-- Location: LCCOMB_X25_Y59_N30
\timer|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~54_combout\ = (\timer|s_counter\(27) & (!\timer|Add1~53\)) # (!\timer|s_counter\(27) & (\timer|Add1~53\ & VCC))
-- \timer|Add1~55\ = CARRY((\timer|s_counter\(27) & !\timer|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(27),
	datad => VCC,
	cin => \timer|Add1~53\,
	combout => \timer|Add1~54_combout\,
	cout => \timer|Add1~55\);

-- Location: LCCOMB_X23_Y58_N10
\timer|Mult0|mult_core|romout[0][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][27]~combout\ = (\fsm|s_pState.W2s~q\ & (\fsm|WideOr9~4_combout\ $ (((\fsm|timeVal[3]~0_combout\))))) # (!\fsm|s_pState.W2s~q\ & ((\fsm|WideOr7~4_combout\ & (!\fsm|WideOr9~4_combout\ & !\fsm|timeVal[3]~0_combout\)) # 
-- (!\fsm|WideOr7~4_combout\ & ((\fsm|timeVal[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datab => \fsm|WideOr9~4_combout\,
	datac => \fsm|WideOr7~4_combout\,
	datad => \fsm|timeVal[3]~0_combout\,
	combout => \timer|Mult0|mult_core|romout[0][27]~combout\);

-- Location: LCCOMB_X23_Y58_N24
\timer|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~56_combout\ = \timer|Mult0|mult_core|romout[0][27]~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|Mult0|mult_core|romout[0][27]~combout\,
	combout => \timer|Add0~56_combout\);

-- Location: LCCOMB_X24_Y58_N18
\timer|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~58_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~54_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~54_combout\,
	datad => \timer|Add0~56_combout\,
	combout => \timer|Add0~58_combout\);

-- Location: FF_X24_Y58_N19
\timer|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~58_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(27));

-- Location: LCCOMB_X25_Y58_N0
\timer|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~56_combout\ = (\timer|s_counter\(28) & (\timer|Add1~55\ $ (GND))) # (!\timer|s_counter\(28) & ((GND) # (!\timer|Add1~55\)))
-- \timer|Add1~57\ = CARRY((!\timer|Add1~55\) # (!\timer|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(28),
	datad => VCC,
	cin => \timer|Add1~55\,
	combout => \timer|Add1~56_combout\,
	cout => \timer|Add1~57\);

-- Location: LCCOMB_X23_Y58_N28
\timer|Mult0|mult_core|romout[0][28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Mult0|mult_core|romout[0][28]~3_combout\ = (\fsm|s_pState.W2s~q\ & (((\fsm|timeVal[3]~0_combout\)) # (!\fsm|WideOr9~4_combout\))) # (!\fsm|s_pState.W2s~q\ & ((\fsm|WideOr9~4_combout\) # ((!\fsm|timeVal[3]~0_combout\) # (!\fsm|WideOr7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.W2s~q\,
	datab => \fsm|WideOr9~4_combout\,
	datac => \fsm|WideOr7~4_combout\,
	datad => \fsm|timeVal[3]~0_combout\,
	combout => \timer|Mult0|mult_core|romout[0][28]~3_combout\);

-- Location: LCCOMB_X23_Y58_N14
\timer|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~59_combout\ = !\timer|Mult0|mult_core|romout[0][28]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|Mult0|mult_core|romout[0][28]~3_combout\,
	combout => \timer|Add0~59_combout\);

-- Location: LCCOMB_X24_Y58_N6
\timer|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~61_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & (!\timer|Add1~56_combout\)) # (!\fsm|newTime~combout\ & ((!\timer|Add0~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~56_combout\,
	datad => \timer|Add0~59_combout\,
	combout => \timer|Add0~61_combout\);

-- Location: FF_X24_Y58_N7
\timer|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~61_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(28));

-- Location: LCCOMB_X25_Y58_N2
\timer|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~58_combout\ = (\timer|s_counter\(29) & (!\timer|Add1~57\)) # (!\timer|s_counter\(29) & (\timer|Add1~57\ & VCC))
-- \timer|Add1~59\ = CARRY((\timer|s_counter\(29) & !\timer|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(29),
	datad => VCC,
	cin => \timer|Add1~57\,
	combout => \timer|Add1~58_combout\,
	cout => \timer|Add1~59\);

-- Location: LCCOMB_X24_Y58_N16
\timer|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~64_combout\ = (!\d_reset|s_pulsedOut~q\ & ((\fsm|newTime~combout\ & ((!\timer|Add1~58_combout\))) # (!\fsm|newTime~combout\ & (!\timer|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datab => \fsm|newTime~combout\,
	datac => \timer|Add0~62_combout\,
	datad => \timer|Add1~58_combout\,
	combout => \timer|Add0~64_combout\);

-- Location: FF_X24_Y58_N17
\timer|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|Add0~64_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(29));

-- Location: LCCOMB_X25_Y58_N4
\timer|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~60_combout\ = (\timer|s_counter\(30) & (\timer|Add1~59\ $ (GND))) # (!\timer|s_counter\(30) & ((GND) # (!\timer|Add1~59\)))
-- \timer|Add1~61\ = CARRY((!\timer|Add1~59\) # (!\timer|s_counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(30),
	datad => VCC,
	cin => \timer|Add1~59\,
	combout => \timer|Add1~60_combout\,
	cout => \timer|Add1~61\);

-- Location: LCCOMB_X24_Y58_N30
\timer|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~10_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\fsm|newTime~combout\) # (!\timer|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~60_combout\,
	datad => \fsm|newTime~combout\,
	combout => \timer|s_counter~10_combout\);

-- Location: FF_X24_Y58_N31
\timer|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~10_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(30));

-- Location: LCCOMB_X25_Y58_N6
\timer|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~62_combout\ = (\timer|s_counter\(31) & (!\timer|Add1~61\)) # (!\timer|s_counter\(31) & (\timer|Add1~61\ & VCC))
-- \timer|Add1~63\ = CARRY((\timer|s_counter\(31) & !\timer|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(31),
	datad => VCC,
	cin => \timer|Add1~61\,
	combout => \timer|Add1~62_combout\,
	cout => \timer|Add1~63\);

-- Location: LCCOMB_X25_Y58_N28
\timer|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~11_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~62_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|newTime~combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add1~62_combout\,
	combout => \timer|s_counter~11_combout\);

-- Location: FF_X25_Y58_N29
\timer|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~11_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(31));

-- Location: LCCOMB_X25_Y58_N8
\timer|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~64_combout\ = (\timer|s_counter\(32) & (\timer|Add1~63\ $ (GND))) # (!\timer|s_counter\(32) & ((GND) # (!\timer|Add1~63\)))
-- \timer|Add1~65\ = CARRY((!\timer|Add1~63\) # (!\timer|s_counter\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(32),
	datad => VCC,
	cin => \timer|Add1~63\,
	combout => \timer|Add1~64_combout\,
	cout => \timer|Add1~65\);

-- Location: LCCOMB_X25_Y58_N30
\timer|s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~12_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\fsm|newTime~combout\) # (!\timer|Add1~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~64_combout\,
	datad => \fsm|newTime~combout\,
	combout => \timer|s_counter~12_combout\);

-- Location: FF_X25_Y58_N31
\timer|s_counter[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~12_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(32));

-- Location: LCCOMB_X25_Y58_N10
\timer|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~66_combout\ = (\timer|s_counter\(33) & (!\timer|Add1~65\)) # (!\timer|s_counter\(33) & (\timer|Add1~65\ & VCC))
-- \timer|Add1~67\ = CARRY((\timer|s_counter\(33) & !\timer|Add1~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(33),
	datad => VCC,
	cin => \timer|Add1~65\,
	combout => \timer|Add1~66_combout\,
	cout => \timer|Add1~67\);

-- Location: LCCOMB_X24_Y60_N2
\timer|s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~13_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~66_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~66_combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|s_counter~13_combout\);

-- Location: FF_X24_Y60_N3
\timer|s_counter[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~13_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(33));

-- Location: LCCOMB_X25_Y58_N12
\timer|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~68_combout\ = (\timer|s_counter\(34) & (\timer|Add1~67\ $ (GND))) # (!\timer|s_counter\(34) & ((GND) # (!\timer|Add1~67\)))
-- \timer|Add1~69\ = CARRY((!\timer|Add1~67\) # (!\timer|s_counter\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(34),
	datad => VCC,
	cin => \timer|Add1~67\,
	combout => \timer|Add1~68_combout\,
	cout => \timer|Add1~69\);

-- Location: LCCOMB_X25_Y58_N24
\timer|s_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~14_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~68_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|newTime~combout\,
	datac => \d_reset|s_pulsedOut~q\,
	datad => \timer|Add1~68_combout\,
	combout => \timer|s_counter~14_combout\);

-- Location: FF_X25_Y58_N25
\timer|s_counter[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~14_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(34));

-- Location: LCCOMB_X25_Y58_N14
\timer|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~70_combout\ = (\timer|s_counter\(35) & (!\timer|Add1~69\)) # (!\timer|s_counter\(35) & (\timer|Add1~69\ & VCC))
-- \timer|Add1~71\ = CARRY((\timer|s_counter\(35) & !\timer|Add1~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(35),
	datad => VCC,
	cin => \timer|Add1~69\,
	combout => \timer|Add1~70_combout\,
	cout => \timer|Add1~71\);

-- Location: LCCOMB_X24_Y58_N10
\timer|s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~15_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\fsm|newTime~combout\) # (!\timer|Add1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~70_combout\,
	datad => \fsm|newTime~combout\,
	combout => \timer|s_counter~15_combout\);

-- Location: FF_X24_Y58_N11
\timer|s_counter[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~15_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(35));

-- Location: LCCOMB_X24_Y60_N12
\timer|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~10_combout\ = (\timer|s_counter\(35) & (\timer|s_counter\(33) & (\timer|s_counter\(32) & \timer|s_counter\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(35),
	datab => \timer|s_counter\(33),
	datac => \timer|s_counter\(32),
	datad => \timer|s_counter\(34),
	combout => \timer|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y58_N16
\timer|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~72_combout\ = (\timer|s_counter\(36) & (\timer|Add1~71\ $ (GND))) # (!\timer|s_counter\(36) & ((GND) # (!\timer|Add1~71\)))
-- \timer|Add1~73\ = CARRY((!\timer|Add1~71\) # (!\timer|s_counter\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(36),
	datad => VCC,
	cin => \timer|Add1~71\,
	combout => \timer|Add1~72_combout\,
	cout => \timer|Add1~73\);

-- Location: LCCOMB_X24_Y60_N18
\timer|s_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~16_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~72_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|newTime~combout\,
	datac => \timer|Add1~72_combout\,
	datad => \d_reset|s_pulsedOut~q\,
	combout => \timer|s_counter~16_combout\);

-- Location: FF_X24_Y60_N19
\timer|s_counter[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~16_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(36));

-- Location: LCCOMB_X25_Y58_N18
\timer|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~74_combout\ = (\timer|s_counter\(37) & (!\timer|Add1~73\)) # (!\timer|s_counter\(37) & (\timer|Add1~73\ & VCC))
-- \timer|Add1~75\ = CARRY((\timer|s_counter\(37) & !\timer|Add1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_counter\(37),
	datad => VCC,
	cin => \timer|Add1~73\,
	combout => \timer|Add1~74_combout\,
	cout => \timer|Add1~75\);

-- Location: LCCOMB_X24_Y60_N28
\timer|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~17_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~74_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|newTime~combout\,
	datad => \timer|Add1~74_combout\,
	combout => \timer|s_counter~17_combout\);

-- Location: FF_X24_Y60_N29
\timer|s_counter[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~17_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(37));

-- Location: LCCOMB_X25_Y58_N20
\timer|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~76_combout\ = (\timer|s_counter\(38) & (\timer|Add1~75\ $ (GND))) # (!\timer|s_counter\(38) & ((GND) # (!\timer|Add1~75\)))
-- \timer|Add1~77\ = CARRY((!\timer|Add1~75\) # (!\timer|s_counter\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(38),
	datad => VCC,
	cin => \timer|Add1~75\,
	combout => \timer|Add1~76_combout\,
	cout => \timer|Add1~77\);

-- Location: LCCOMB_X24_Y60_N6
\timer|s_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~18_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\timer|Add1~76_combout\) # (!\fsm|newTime~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datac => \fsm|newTime~combout\,
	datad => \timer|Add1~76_combout\,
	combout => \timer|s_counter~18_combout\);

-- Location: FF_X24_Y60_N7
\timer|s_counter[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~18_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(38));

-- Location: LCCOMB_X25_Y58_N22
\timer|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add1~78_combout\ = \timer|s_counter\(39) $ (\timer|Add1~77\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(39),
	cin => \timer|Add1~77\,
	combout => \timer|Add1~78_combout\);

-- Location: LCCOMB_X25_Y58_N26
\timer|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_counter~19_combout\ = (!\d_reset|s_pulsedOut~q\ & ((!\fsm|newTime~combout\) # (!\timer|Add1~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_reset|s_pulsedOut~q\,
	datac => \timer|Add1~78_combout\,
	datad => \fsm|newTime~combout\,
	combout => \timer|s_counter~19_combout\);

-- Location: FF_X25_Y58_N27
\timer|s_counter[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \timer|s_counter~19_combout\,
	ena => \timer|s_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_counter\(39));

-- Location: LCCOMB_X24_Y60_N8
\timer|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~11_combout\ = (\timer|s_counter\(38) & (\timer|s_counter\(37) & (\timer|s_counter\(39) & \timer|s_counter\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(38),
	datab => \timer|s_counter\(37),
	datac => \timer|s_counter\(39),
	datad => \timer|s_counter\(36),
	combout => \timer|Equal0~11_combout\);

-- Location: LCCOMB_X24_Y60_N10
\timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~0_combout\ = (\timer|s_counter\(1) & (\timer|s_counter\(0) & (\timer|s_counter\(3) & \timer|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(1),
	datab => \timer|s_counter\(0),
	datac => \timer|s_counter\(3),
	datad => \timer|s_counter\(2),
	combout => \timer|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y60_N24
\timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~1_combout\ = (\timer|s_counter\(5) & (\timer|s_counter\(4) & (\timer|s_counter\(7) & \timer|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(5),
	datab => \timer|s_counter\(4),
	datac => \timer|s_counter\(7),
	datad => \timer|s_counter\(6),
	combout => \timer|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y59_N28
\timer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~2_combout\ = (\timer|s_counter\(9) & (\timer|s_counter\(8) & (\timer|s_counter\(10) & \timer|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(9),
	datab => \timer|s_counter\(8),
	datac => \timer|s_counter\(10),
	datad => \timer|s_counter\(11),
	combout => \timer|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y59_N26
\timer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~3_combout\ = (\timer|s_counter\(13) & (\timer|s_counter\(12) & (\timer|s_counter\(14) & \timer|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(13),
	datab => \timer|s_counter\(12),
	datac => \timer|s_counter\(14),
	datad => \timer|s_counter\(15),
	combout => \timer|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y60_N26
\timer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~4_combout\ = (\timer|Equal0~0_combout\ & (\timer|Equal0~1_combout\ & (\timer|Equal0~2_combout\ & \timer|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~0_combout\,
	datab => \timer|Equal0~1_combout\,
	datac => \timer|Equal0~2_combout\,
	datad => \timer|Equal0~3_combout\,
	combout => \timer|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y58_N4
\timer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~8_combout\ = (\timer|s_counter\(28) & (\timer|s_counter\(29) & (\timer|s_counter\(30) & \timer|s_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(28),
	datab => \timer|s_counter\(29),
	datac => \timer|s_counter\(30),
	datad => \timer|s_counter\(31),
	combout => \timer|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y59_N0
\timer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~5_combout\ = (\timer|s_counter\(17) & (\timer|s_counter\(16) & (\timer|s_counter\(18) & \timer|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(17),
	datab => \timer|s_counter\(16),
	datac => \timer|s_counter\(18),
	datad => \timer|s_counter\(19),
	combout => \timer|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y58_N28
\timer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~7_combout\ = (\timer|s_counter\(26) & (\timer|s_counter\(24) & (\timer|s_counter\(25) & \timer|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(26),
	datab => \timer|s_counter\(24),
	datac => \timer|s_counter\(25),
	datad => \timer|s_counter\(27),
	combout => \timer|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y58_N24
\timer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~6_combout\ = (\timer|s_counter\(23) & (\timer|s_counter\(22) & (\timer|s_counter\(20) & \timer|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_counter\(23),
	datab => \timer|s_counter\(22),
	datac => \timer|s_counter\(20),
	datad => \timer|s_counter\(21),
	combout => \timer|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y60_N20
\timer|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~9_combout\ = (\timer|Equal0~8_combout\ & (\timer|Equal0~5_combout\ & (\timer|Equal0~7_combout\ & \timer|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~8_combout\,
	datab => \timer|Equal0~5_combout\,
	datac => \timer|Equal0~7_combout\,
	datad => \timer|Equal0~6_combout\,
	combout => \timer|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y60_N22
\timer|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~12_combout\ = (\timer|Equal0~10_combout\ & (\timer|Equal0~11_combout\ & (\timer|Equal0~4_combout\ & \timer|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~10_combout\,
	datab => \timer|Equal0~11_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	combout => \timer|Equal0~12_combout\);

-- Location: LCCOMB_X24_Y57_N20
\timer|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_cntZero~1_combout\ = (\timer|s_cntZero~0_combout\ & ((\fsm|s_pState.W~q\ & (\timer|s_cntZero~q\)) # (!\fsm|s_pState.W~q\ & ((\timer|Equal0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_cntZero~0_combout\,
	datab => \fsm|s_pState.W~q\,
	datac => \timer|s_cntZero~q\,
	datad => \timer|Equal0~12_combout\,
	combout => \timer|s_cntZero~1_combout\);

-- Location: FF_X24_Y57_N7
\timer|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	asdata => \timer|s_cntZero~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_cntZero~q\);

-- Location: LCCOMB_X23_Y56_N6
\fsm|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector31~1_combout\ = (\timer|s_cntZero~q\ & (((\fsm|s_pState.RA1~q\)))) # (!\timer|s_cntZero~q\ & (\fsm|s_pState.Ma2~q\ & (!\fsm|startStop_rE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.Ma2~q\,
	datab => \fsm|startStop_rE~q\,
	datac => \timer|s_cntZero~q\,
	datad => \fsm|s_pState.RA1~q\,
	combout => \fsm|Selector31~1_combout\);

-- Location: LCCOMB_X23_Y56_N24
\fsm|s_bStop.Ma2_807\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_bStop.Ma2_807~combout\ = (GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & (\fsm|s_pState.Ma2~q\)) # (!GLOBAL(\fsm|Selector24~0clkctrl_outclk\) & ((\fsm|s_bStop.Ma2_807~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.Ma2~q\,
	datac => \fsm|Selector24~0clkctrl_outclk\,
	datad => \fsm|s_bStop.Ma2_807~combout\,
	combout => \fsm|s_bStop.Ma2_807~combout\);

-- Location: LCCOMB_X23_Y56_N4
\fsm|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector31~0_combout\ = (!\d_p1|s_pulsedOut~q\ & (!\fsm|s_pState.S0~q\ & \d_p2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_p1|s_pulsedOut~q\,
	datac => \fsm|s_pState.S0~q\,
	datad => \d_p2|s_pulsedOut~q\,
	combout => \fsm|Selector31~0_combout\);

-- Location: LCCOMB_X23_Y56_N8
\fsm|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector31~2_combout\ = (\fsm|Selector31~1_combout\) # ((\fsm|Selector31~0_combout\) # ((\fsm|s_bStop.Ma2_807~combout\ & \fsm|Selector11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector31~1_combout\,
	datab => \fsm|s_bStop.Ma2_807~combout\,
	datac => \fsm|Selector31~0_combout\,
	datad => \fsm|Selector11~2_combout\,
	combout => \fsm|Selector31~2_combout\);

-- Location: LCCOMB_X23_Y56_N28
\fsm|s_nState.Ma2_1046\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nState.Ma2_1046~combout\ = (GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & (\fsm|Selector31~2_combout\)) # (!GLOBAL(\fsm|Selector40~0clkctrl_outclk\) & ((\fsm|s_nState.Ma2_1046~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector31~2_combout\,
	datab => \fsm|s_nState.Ma2_1046~combout\,
	datad => \fsm|Selector40~0clkctrl_outclk\,
	combout => \fsm|s_nState.Ma2_1046~combout\);

-- Location: LCCOMB_X23_Y56_N16
\fsm|s_pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_pState~14_combout\ = (!\d_reset|s_pulsedOut~q\ & \fsm|s_nState.Ma2_1046~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_reset|s_pulsedOut~q\,
	datad => \fsm|s_nState.Ma2_1046~combout\,
	combout => \fsm|s_pState~14_combout\);

-- Location: FF_X23_Y56_N17
\fsm|s_pState.Ma2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK50~inputclkctrl_outclk\,
	d => \fsm|s_pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_pState.Ma2~q\);

-- Location: LCCOMB_X23_Y57_N8
\fsm|waterValve~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|waterValve~0_combout\ = (!\fsm|s_pState.Ma2~q\ & !\fsm|s_pState.MA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_pState.Ma2~q\,
	datac => \fsm|s_pState.MA1~q\,
	combout => \fsm|waterValve~0_combout\);

-- Location: LCCOMB_X23_Y58_N2
\fsm|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr1~combout\ = (\fsm|s_pState.RA3~q\) # ((\fsm|s_pState.S3~q\) # ((\fsm|s_pState.Ra2~q\) # (\fsm|s_pState.RA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.RA3~q\,
	datab => \fsm|s_pState.S3~q\,
	datac => \fsm|s_pState.Ra2~q\,
	datad => \fsm|s_pState.RA1~q\,
	combout => \fsm|WideOr1~combout\);

-- Location: LCCOMB_X23_Y58_N12
\fsm|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr2~0_combout\ = (!\fsm|s_pState.RA1~q\ & (\fsm|timeVal[3]~0_combout\ & (!\fsm|s_pState.Ra2~q\ & !\fsm|s_pState.RA3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_pState.RA1~q\,
	datab => \fsm|timeVal[3]~0_combout\,
	datac => \fsm|s_pState.Ra2~q\,
	datad => \fsm|s_pState.RA3~q\,
	combout => \fsm|WideOr2~0_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


