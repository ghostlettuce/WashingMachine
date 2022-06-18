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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/18/2022 21:56:45"

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

ENTITY 	WashingMAchineFSM IS
    PORT (
	reset : IN std_logic;
	startStop : IN std_logic;
	clk : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	porta : IN std_logic;
	timeExp : IN std_logic;
	timeVal : BUFFER std_logic_vector(7 DOWNTO 0);
	timeEnable : BUFFER std_logic;
	newTime : BUFFER std_logic;
	water_valve : BUFFER std_logic;
	water_pump : BUFFER std_logic;
	spin : BUFFER std_logic;
	rinse : BUFFER std_logic
	);
END WashingMAchineFSM;

-- Design Ports Information
-- timeVal[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeVal[7]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeEnable	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newTime	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- water_valve	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- water_pump	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spin	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rinse	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeExp	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startStop	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porta	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WashingMAchineFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_startStop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL ww_porta : std_logic;
SIGNAL ww_timeExp : std_logic;
SIGNAL ww_timeVal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_timeEnable : std_logic;
SIGNAL ww_newTime : std_logic;
SIGNAL ww_water_valve : std_logic;
SIGNAL ww_water_pump : std_logic;
SIGNAL ww_spin : std_logic;
SIGNAL ww_rinse : std_logic;
SIGNAL \Selector24~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector40~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timeVal[0]~output_o\ : std_logic;
SIGNAL \timeVal[1]~output_o\ : std_logic;
SIGNAL \timeVal[2]~output_o\ : std_logic;
SIGNAL \timeVal[3]~output_o\ : std_logic;
SIGNAL \timeVal[4]~output_o\ : std_logic;
SIGNAL \timeVal[5]~output_o\ : std_logic;
SIGNAL \timeVal[6]~output_o\ : std_logic;
SIGNAL \timeVal[7]~output_o\ : std_logic;
SIGNAL \timeEnable~output_o\ : std_logic;
SIGNAL \newTime~output_o\ : std_logic;
SIGNAL \water_valve~output_o\ : std_logic;
SIGNAL \water_pump~output_o\ : std_logic;
SIGNAL \spin~output_o\ : std_logic;
SIGNAL \rinse~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \P2~input_o\ : std_logic;
SIGNAL \timeExp~input_o\ : std_logic;
SIGNAL \startStop~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \P1~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~0clkctrl_outclk\ : std_logic;
SIGNAL \s_bStop.MA1_929~combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \porta~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~0clkctrl_outclk\ : std_logic;
SIGNAL \s_nState.MA1_1063~combout\ : std_logic;
SIGNAL \s_pState~15_combout\ : std_logic;
SIGNAL \s_pState.MA1~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \s_bStop.E1_885~combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \s_nState.E1_1054~combout\ : std_logic;
SIGNAL \s_pState~19_combout\ : std_logic;
SIGNAL \s_pState.E1~q\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \s_bStop.RA1_841~combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \s_nState.RA1_1045~combout\ : std_logic;
SIGNAL \s_pState~21_combout\ : std_logic;
SIGNAL \s_pState.RA1~q\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \s_bStop.Ma2_797~combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \s_nState.Ma2_1036~combout\ : std_logic;
SIGNAL \s_pState~16_combout\ : std_logic;
SIGNAL \s_pState.Ma2~q\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \s_bStop.E2_753~combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \s_nState.E2_1027~combout\ : std_logic;
SIGNAL \s_pState~20_combout\ : std_logic;
SIGNAL \s_pState.E2~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \s_bStop.Ra2_709~combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \s_nState.Ra2_1018~combout\ : std_logic;
SIGNAL \s_pState~22_combout\ : std_logic;
SIGNAL \s_pState.Ra2~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \s_nState.W_982~combout\ : std_logic;
SIGNAL \s_pState~14_combout\ : std_logic;
SIGNAL \s_pState.W~q\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \s_bStop.RA3_621~combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \s_nState.RA3_1000~combout\ : std_logic;
SIGNAL \s_pState~23_combout\ : std_logic;
SIGNAL \s_pState.RA3~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \s_bStop.W2s_577~combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \s_nState.W2s_991~combout\ : std_logic;
SIGNAL \s_pState~18_combout\ : std_logic;
SIGNAL \s_pState.W2s~q\ : std_logic;
SIGNAL \P3~input_o\ : std_logic;
SIGNAL \s_nState~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \s_nState.S0_1072~combout\ : std_logic;
SIGNAL \s_pState~17_combout\ : std_logic;
SIGNAL \s_pState.S0~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \s_bStop.S3_665~combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \s_nState.S3_1009~combout\ : std_logic;
SIGNAL \s_pState~13_combout\ : std_logic;
SIGNAL \s_pState.S3~q\ : std_logic;
SIGNAL \water_valve~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \timeVal~0_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \s_stateChanged~0_combout\ : std_logic;
SIGNAL \s_stateChanged~q\ : std_logic;
SIGNAL \newTime~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_timeVal~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_pState.W2s~q\ : std_logic;
SIGNAL \ALT_INV_water_valve~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_pState.W~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_startStop <= startStop;
ww_clk <= clk;
ww_P1 <= P1;
ww_P2 <= P2;
ww_P3 <= P3;
ww_porta <= porta;
ww_timeExp <= timeExp;
timeVal <= ww_timeVal;
timeEnable <= ww_timeEnable;
newTime <= ww_newTime;
water_valve <= ww_water_valve;
water_pump <= ww_water_pump;
spin <= ww_spin;
rinse <= ww_rinse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector24~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector24~0_combout\);

\Selector40~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector40~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_timeVal~0_combout\ <= NOT \timeVal~0_combout\;
\ALT_INV_s_pState.W2s~q\ <= NOT \s_pState.W2s~q\;
\ALT_INV_water_valve~0_combout\ <= NOT \water_valve~0_combout\;
\ALT_INV_s_pState.W~q\ <= NOT \s_pState.W~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N16
\timeVal[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \timeVal[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\timeVal[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \timeVal[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\timeVal[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_pState.W2s~q\,
	devoe => ww_devoe,
	o => \timeVal[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\timeVal[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_timeVal~0_combout\,
	devoe => ww_devoe,
	o => \timeVal[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\timeVal[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \timeVal[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\timeVal[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \timeVal[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\timeVal[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \timeVal[6]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\timeVal[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \timeVal[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\timeEnable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_pState.W~q\,
	devoe => ww_devoe,
	o => \timeEnable~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\newTime~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \newTime~0_combout\,
	devoe => ww_devoe,
	o => \newTime~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\water_valve~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_water_valve~0_combout\,
	devoe => ww_devoe,
	o => \water_valve~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\water_pump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \water_pump~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\spin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_pState.S3~q\,
	devoe => ww_devoe,
	o => \spin~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\rinse~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \rinse~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y30_N1
\P2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2,
	o => \P2~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\timeExp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeExp,
	o => \timeExp~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\startStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startStop,
	o => \startStop~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X2_Y35_N4
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (!\startStop~input_o\ & (\s_pState.MA1~q\ & !\timeExp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datac => \s_pState.MA1~q\,
	datad => \timeExp~input_o\,
	combout => \Selector37~1_combout\);

-- Location: IOIBUF_X0_Y28_N22
\P1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P1,
	o => \P1~input_o\);

-- Location: LCCOMB_X1_Y35_N18
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\startStop~input_o\ & (!\timeExp~input_o\ & (!\s_pState.W~q\ & \s_pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datab => \timeExp~input_o\,
	datac => \s_pState.W~q\,
	datad => \s_pState.S0~q\,
	combout => \Selector24~0_combout\);

-- Location: CLKCTRL_G1
\Selector24~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector24~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector24~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y35_N12
\s_bStop.MA1_929\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.MA1_929~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.MA1~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.MA1_929~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_bStop.MA1_929~combout\,
	datac => \s_pState.MA1~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.MA1_929~combout\);

-- Location: LCCOMB_X2_Y35_N30
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\startStop~input_o\ & (\s_pState.W~q\ & \s_bStop.MA1_929~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datac => \s_pState.W~q\,
	datad => \s_bStop.MA1_929~combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X2_Y35_N28
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~1_combout\) # ((\Selector37~0_combout\) # ((\P1~input_o\ & !\s_pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~1_combout\,
	datab => \P1~input_o\,
	datac => \s_pState.S0~q\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~2_combout\);

-- Location: IOIBUF_X0_Y35_N1
\porta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_porta,
	o => \porta~input_o\);

-- Location: LCCOMB_X1_Y35_N0
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\s_pState.S0~q\) # (\porta~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.S0~q\,
	datad => \porta~input_o\,
	combout => \Selector40~0_combout\);

-- Location: CLKCTRL_G3
\Selector40~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector40~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector40~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y35_N14
\s_nState.MA1_1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.MA1_1063~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & ((\Selector37~2_combout\))) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & (\s_nState.MA1_1063~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.MA1_1063~combout\,
	datac => \Selector37~2_combout\,
	datad => \Selector40~0clkctrl_outclk\,
	combout => \s_nState.MA1_1063~combout\);

-- Location: LCCOMB_X2_Y35_N8
\s_pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~15_combout\ = (!\reset~input_o\ & \s_nState.MA1_1063~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \s_nState.MA1_1063~combout\,
	combout => \s_pState~15_combout\);

-- Location: FF_X2_Y35_N9
\s_pState.MA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.MA1~q\);

-- Location: LCCOMB_X1_Y35_N28
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\timeExp~input_o\ & (((\s_pState.MA1~q\)))) # (!\timeExp~input_o\ & (\s_pState.E1~q\ & (!\startStop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E1~q\,
	datab => \timeExp~input_o\,
	datac => \startStop~input_o\,
	datad => \s_pState.MA1~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X1_Y35_N2
\s_bStop.E1_885\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.E1_885~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.E1~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.E1_885~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_bStop.E1_885~combout\,
	datac => \s_pState.E1~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.E1_885~combout\);

-- Location: LCCOMB_X1_Y35_N4
\Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\Selector35~0_combout\) # ((\startStop~input_o\ & (\s_pState.W~q\ & \s_bStop.E1_885~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datab => \s_pState.W~q\,
	datac => \Selector35~0_combout\,
	datad => \s_bStop.E1_885~combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X1_Y35_N8
\s_nState.E1_1054\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.E1_1054~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & ((\Selector35~1_combout\))) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & (\s_nState.E1_1054~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.E1_1054~combout\,
	datac => \Selector35~1_combout\,
	datad => \Selector40~0clkctrl_outclk\,
	combout => \s_nState.E1_1054~combout\);

-- Location: LCCOMB_X1_Y35_N10
\s_pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~19_combout\ = (!\reset~input_o\ & \s_nState.E1_1054~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \s_nState.E1_1054~combout\,
	combout => \s_pState~19_combout\);

-- Location: FF_X1_Y35_N11
\s_pState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.E1~q\);

-- Location: LCCOMB_X1_Y35_N6
\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\timeExp~input_o\ & (((\s_pState.E1~q\)))) # (!\timeExp~input_o\ & (!\startStop~input_o\ & (\s_pState.RA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~input_o\,
	datab => \startStop~input_o\,
	datac => \s_pState.RA1~q\,
	datad => \s_pState.E1~q\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X1_Y35_N12
\s_bStop.RA1_841\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.RA1_841~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_pState.RA1~q\)) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_bStop.RA1_841~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_pState.RA1~q\,
	datac => \s_bStop.RA1_841~combout\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.RA1_841~combout\);

-- Location: LCCOMB_X1_Y35_N14
\Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Selector33~1_combout\) # ((\startStop~input_o\ & (\s_pState.W~q\ & \s_bStop.RA1_841~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datab => \Selector33~1_combout\,
	datac => \s_pState.W~q\,
	datad => \s_bStop.RA1_841~combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X1_Y35_N26
\s_nState.RA1_1045\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.RA1_1045~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & ((\Selector33~2_combout\))) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & (\s_nState.RA1_1045~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.RA1_1045~combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \Selector33~2_combout\,
	combout => \s_nState.RA1_1045~combout\);

-- Location: LCCOMB_X1_Y35_N30
\s_pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~21_combout\ = (\s_nState.RA1_1045~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.RA1_1045~combout\,
	datad => \reset~input_o\,
	combout => \s_pState~21_combout\);

-- Location: FF_X1_Y35_N31
\s_pState.RA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.RA1~q\);

-- Location: LCCOMB_X4_Y35_N30
\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\timeExp~input_o\ & (((\s_pState.RA1~q\)))) # (!\timeExp~input_o\ & (\s_pState.Ma2~q\ & (!\startStop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.Ma2~q\,
	datab => \startStop~input_o\,
	datac => \timeExp~input_o\,
	datad => \s_pState.RA1~q\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X4_Y35_N26
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\s_pState.W~q\ & \startStop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_pState.W~q\,
	datad => \startStop~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X2_Y35_N10
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (!\s_pState.S0~q\ & (\P2~input_o\ & !\P1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_pState.S0~q\,
	datac => \P2~input_o\,
	datad => \P1~input_o\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X4_Y35_N16
\s_bStop.Ma2_797\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.Ma2_797~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.Ma2~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.Ma2_797~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_bStop.Ma2_797~combout\,
	datac => \s_pState.Ma2~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.Ma2_797~combout\);

-- Location: LCCOMB_X4_Y35_N20
\Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector31~1_combout\) # ((\Selector31~0_combout\) # ((\Selector33~0_combout\ & \s_bStop.Ma2_797~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector31~0_combout\,
	datad => \s_bStop.Ma2_797~combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X4_Y35_N14
\s_nState.Ma2_1036\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.Ma2_1036~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector31~2_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.Ma2_1036~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector31~2_combout\,
	datac => \s_nState.Ma2_1036~combout\,
	datad => \Selector40~0clkctrl_outclk\,
	combout => \s_nState.Ma2_1036~combout\);

-- Location: LCCOMB_X4_Y35_N12
\s_pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~16_combout\ = (\s_nState.Ma2_1036~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.Ma2_1036~combout\,
	datac => \reset~input_o\,
	combout => \s_pState~16_combout\);

-- Location: FF_X4_Y35_N13
\s_pState.Ma2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.Ma2~q\);

-- Location: LCCOMB_X4_Y35_N22
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\s_pState.Ma2~q\) # ((\s_pState.S3~q\) # (\s_pState.RA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.Ma2~q\,
	datac => \s_pState.S3~q\,
	datad => \s_pState.RA1~q\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X5_Y35_N24
\Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\timeExp~input_o\ & (((\s_pState.Ma2~q\)))) # (!\timeExp~input_o\ & (\s_pState.E2~q\ & (!\startStop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datab => \timeExp~input_o\,
	datac => \startStop~input_o\,
	datad => \s_pState.Ma2~q\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X5_Y35_N20
\s_bStop.E2_753\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.E2_753~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_pState.E2~q\)) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_bStop.E2_753~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datac => \s_bStop.E2_753~combout\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.E2_753~combout\);

-- Location: LCCOMB_X5_Y35_N2
\Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\Selector29~2_combout\) # ((\s_pState.W~q\ & (\startStop~input_o\ & \s_bStop.E2_753~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.W~q\,
	datab => \Selector29~2_combout\,
	datac => \startStop~input_o\,
	datad => \s_bStop.E2_753~combout\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X5_Y35_N10
\s_nState.E2_1027\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.E2_1027~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector29~3_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.E2_1027~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \s_nState.E2_1027~combout\,
	combout => \s_nState.E2_1027~combout\);

-- Location: LCCOMB_X5_Y35_N4
\s_pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~20_combout\ = (!\reset~input_o\ & \s_nState.E2_1027~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nState.E2_1027~combout\,
	combout => \s_pState~20_combout\);

-- Location: FF_X4_Y35_N27
\s_pState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_pState~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.E2~q\);

-- Location: LCCOMB_X5_Y35_N14
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\timeExp~input_o\ & (\s_pState.E2~q\)) # (!\timeExp~input_o\ & (((\s_pState.Ra2~q\ & !\startStop~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datab => \timeExp~input_o\,
	datac => \s_pState.Ra2~q\,
	datad => \startStop~input_o\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X5_Y35_N18
\s_bStop.Ra2_709\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.Ra2_709~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.Ra2~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.Ra2_709~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_bStop.Ra2_709~combout\,
	datac => \s_pState.Ra2~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.Ra2_709~combout\);

-- Location: LCCOMB_X5_Y35_N12
\Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector27~0_combout\) # ((\s_pState.W~q\ & (\startStop~input_o\ & \s_bStop.Ra2_709~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.W~q\,
	datab => \Selector27~0_combout\,
	datac => \startStop~input_o\,
	datad => \s_bStop.Ra2_709~combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X5_Y35_N16
\s_nState.Ra2_1018\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.Ra2_1018~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector27~1_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.Ra2_1018~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~1_combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \s_nState.Ra2_1018~combout\,
	combout => \s_nState.Ra2_1018~combout\);

-- Location: LCCOMB_X5_Y35_N26
\s_pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~22_combout\ = (\s_nState.Ra2_1018~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.Ra2_1018~combout\,
	datad => \reset~input_o\,
	combout => \s_pState~22_combout\);

-- Location: FF_X5_Y35_N27
\s_pState.Ra2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.Ra2~q\);

-- Location: LCCOMB_X4_Y35_N28
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\s_pState.E2~q\) # ((\s_pState.RA3~q\) # ((\s_pState.Ra2~q\) # (\s_pState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datab => \s_pState.RA3~q\,
	datac => \s_pState.Ra2~q\,
	datad => \s_pState.E1~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X4_Y35_N18
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\s_pState.W2s~q\) # ((\s_pState.MA1~q\) # ((\Selector9~1_combout\) # (\Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.W2s~q\,
	datab => \s_pState.MA1~q\,
	datac => \Selector9~1_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X4_Y35_N6
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\startStop~input_o\ & (!\timeExp~input_o\ & ((\Selector9~2_combout\)))) # (!\startStop~input_o\ & (((\s_pState.W~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~input_o\,
	datab => \s_pState.W~q\,
	datac => \startStop~input_o\,
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X4_Y35_N8
\s_nState.W_982\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.W_982~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector9~3_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.W_982~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datac => \s_nState.W_982~combout\,
	datad => \Selector40~0clkctrl_outclk\,
	combout => \s_nState.W_982~combout\);

-- Location: LCCOMB_X4_Y35_N0
\s_pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~14_combout\ = (!\reset~input_o\ & \s_nState.W_982~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \s_nState.W_982~combout\,
	combout => \s_pState~14_combout\);

-- Location: FF_X4_Y35_N1
\s_pState.W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.W~q\);

-- Location: LCCOMB_X3_Y35_N18
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\timeExp~input_o\ & (((\s_pState.S3~q\)))) # (!\timeExp~input_o\ & (\s_pState.RA3~q\ & (!\startStop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~input_o\,
	datab => \s_pState.RA3~q\,
	datac => \startStop~input_o\,
	datad => \s_pState.S3~q\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X3_Y35_N2
\s_bStop.RA3_621\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.RA3_621~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_pState.RA3~q\)) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_bStop.RA3_621~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.RA3~q\,
	datab => \s_bStop.RA3_621~combout\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.RA3_621~combout\);

-- Location: LCCOMB_X3_Y35_N22
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\) # ((\startStop~input_o\ & (\s_pState.W~q\ & \s_bStop.RA3_621~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startStop~input_o\,
	datab => \s_pState.W~q\,
	datac => \Selector13~2_combout\,
	datad => \s_bStop.RA3_621~combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X3_Y35_N6
\s_nState.RA3_1000\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.RA3_1000~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector13~3_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.RA3_1000~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~3_combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \s_nState.RA3_1000~combout\,
	combout => \s_nState.RA3_1000~combout\);

-- Location: LCCOMB_X3_Y35_N24
\s_pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~23_combout\ = (\s_nState.RA3_1000~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.RA3_1000~combout\,
	datac => \reset~input_o\,
	combout => \s_pState~23_combout\);

-- Location: FF_X3_Y35_N25
\s_pState.RA3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.RA3~q\);

-- Location: LCCOMB_X3_Y35_N28
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\timeExp~input_o\ & (((\s_pState.RA3~q\)))) # (!\timeExp~input_o\ & (!\startStop~input_o\ & (\s_pState.W2s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeExp~input_o\,
	datab => \startStop~input_o\,
	datac => \s_pState.W2s~q\,
	datad => \s_pState.RA3~q\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X3_Y35_N20
\s_bStop.W2s_577\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.W2s_577~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.W2s~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.W2s_577~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_bStop.W2s_577~combout\,
	datac => \s_pState.W2s~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.W2s_577~combout\);

-- Location: LCCOMB_X3_Y35_N4
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~2_combout\) # ((\s_pState.W~q\ & (\startStop~input_o\ & \s_bStop.W2s_577~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datab => \s_pState.W~q\,
	datac => \startStop~input_o\,
	datad => \s_bStop.W2s_577~combout\,
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X3_Y35_N16
\s_nState.W2s_991\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.W2s_991~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector11~3_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.W2s_991~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector11~3_combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \s_nState.W2s_991~combout\,
	combout => \s_nState.W2s_991~combout\);

-- Location: LCCOMB_X3_Y35_N8
\s_pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~18_combout\ = (\s_nState.W2s_991~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.W2s_991~combout\,
	datac => \reset~input_o\,
	combout => \s_pState~18_combout\);

-- Location: FF_X3_Y35_N9
\s_pState.W2s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.W2s~q\);

-- Location: IOIBUF_X0_Y28_N15
\P3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P3,
	o => \P3~input_o\);

-- Location: LCCOMB_X2_Y35_N0
\s_nState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState~0_combout\ = (!\P2~input_o\ & (!\s_pState.S0~q\ & (!\P3~input_o\ & !\P1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2~input_o\,
	datab => \s_pState.S0~q\,
	datac => \P3~input_o\,
	datad => \P1~input_o\,
	combout => \s_nState~0_combout\);

-- Location: LCCOMB_X2_Y35_N20
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\s_nState~0_combout\) # ((\s_pState.W2s~q\ & \timeExp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.W2s~q\,
	datac => \timeExp~input_o\,
	datad => \s_nState~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X2_Y35_N6
\s_nState.S0_1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.S0_1072~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & ((\Selector39~0_combout\))) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & (\s_nState.S0_1072~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.S0_1072~combout\,
	datac => \Selector39~0_combout\,
	datad => \Selector40~0clkctrl_outclk\,
	combout => \s_nState.S0_1072~combout\);

-- Location: LCCOMB_X2_Y35_N2
\s_pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~17_combout\ = (!\s_nState.S0_1072~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.S0_1072~combout\,
	datac => \reset~input_o\,
	combout => \s_pState~17_combout\);

-- Location: FF_X2_Y35_N3
\s_pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.S0~q\);

-- Location: LCCOMB_X2_Y35_N22
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\P2~input_o\ & (!\s_pState.S0~q\ & (\P3~input_o\ & !\P1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2~input_o\,
	datab => \s_pState.S0~q\,
	datac => \P3~input_o\,
	datad => \P1~input_o\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X5_Y35_N28
\Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\timeExp~input_o\ & (\s_pState.Ra2~q\)) # (!\timeExp~input_o\ & (((\s_pState.S3~q\ & !\startStop~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.Ra2~q\,
	datab => \timeExp~input_o\,
	datac => \s_pState.S3~q\,
	datad => \startStop~input_o\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X5_Y35_N6
\s_bStop.S3_665\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bStop.S3_665~combout\ = (GLOBAL(\Selector24~0clkctrl_outclk\) & ((\s_pState.S3~q\))) # (!GLOBAL(\Selector24~0clkctrl_outclk\) & (\s_bStop.S3_665~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_bStop.S3_665~combout\,
	datac => \s_pState.S3~q\,
	datad => \Selector24~0clkctrl_outclk\,
	combout => \s_bStop.S3_665~combout\);

-- Location: LCCOMB_X5_Y35_N22
\Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\Selector25~0_combout\) # ((\Selector25~1_combout\) # ((\Selector33~0_combout\ & \s_bStop.S3_665~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector33~0_combout\,
	datac => \Selector25~1_combout\,
	datad => \s_bStop.S3_665~combout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X5_Y35_N0
\s_nState.S3_1009\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nState.S3_1009~combout\ = (GLOBAL(\Selector40~0clkctrl_outclk\) & (\Selector25~2_combout\)) # (!GLOBAL(\Selector40~0clkctrl_outclk\) & ((\s_nState.S3_1009~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector25~2_combout\,
	datac => \Selector40~0clkctrl_outclk\,
	datad => \s_nState.S3_1009~combout\,
	combout => \s_nState.S3_1009~combout\);

-- Location: LCCOMB_X5_Y35_N8
\s_pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_pState~13_combout\ = (\s_nState.S3_1009~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nState.S3_1009~combout\,
	datad => \reset~input_o\,
	combout => \s_pState~13_combout\);

-- Location: FF_X5_Y35_N9
\s_pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_pState.S3~q\);

-- Location: LCCOMB_X2_Y35_N26
\water_valve~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \water_valve~0_combout\ = (!\s_pState.MA1~q\ & !\s_pState.Ma2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_pState.MA1~q\,
	datad => \s_pState.Ma2~q\,
	combout => \water_valve~0_combout\);

-- Location: LCCOMB_X2_Y35_N18
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\s_pState.S3~q\) # (((\s_pState.W~q\) # (!\water_valve~0_combout\)) # (!\s_pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.S3~q\,
	datab => \s_pState.S0~q\,
	datac => \s_pState.W~q\,
	datad => \water_valve~0_combout\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X2_Y35_N24
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\s_pState.W2s~q\) # ((\s_pState.W~q\) # ((!\water_valve~0_combout\) # (!\s_pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.W2s~q\,
	datab => \s_pState.W~q\,
	datac => \s_pState.S0~q\,
	datad => \water_valve~0_combout\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X1_Y35_N20
\timeVal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeVal~0_combout\ = (!\s_pState.E2~q\ & !\s_pState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datac => \s_pState.E1~q\,
	combout => \timeVal~0_combout\);

-- Location: LCCOMB_X2_Y35_N16
\WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = (\s_nState.S0_1072~combout\ & ((\s_pState.S0~q\) # (\s_nState.MA1_1063~combout\ $ (\s_pState.MA1~q\)))) # (!\s_nState.S0_1072~combout\ & ((\s_nState.MA1_1063~combout\ $ (\s_pState.MA1~q\)) # (!\s_pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.S0_1072~combout\,
	datab => \s_pState.S0~q\,
	datac => \s_nState.MA1_1063~combout\,
	datad => \s_pState.MA1~q\,
	combout => \WideOr0~5_combout\);

-- Location: LCCOMB_X4_Y35_N4
\WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = (\s_nState.W_982~combout\) # (\WideOr0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_nState.W_982~combout\,
	datad => \WideOr0~5_combout\,
	combout => \WideOr0~6_combout\);

-- Location: LCCOMB_X3_Y35_N14
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\s_nState.RA3_1000~combout\ & ((\s_pState.W2s~q\ $ (\s_nState.W2s_991~combout\)) # (!\s_pState.RA3~q\))) # (!\s_nState.RA3_1000~combout\ & ((\s_pState.RA3~q\) # (\s_pState.W2s~q\ $ (\s_nState.W2s_991~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.RA3_1000~combout\,
	datab => \s_pState.RA3~q\,
	datac => \s_pState.W2s~q\,
	datad => \s_nState.W2s_991~combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y35_N24
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\s_pState.E2~q\ & ((\s_nState.Ma2_1036~combout\ $ (\s_pState.Ma2~q\)) # (!\s_nState.E2_1027~combout\))) # (!\s_pState.E2~q\ & ((\s_nState.E2_1027~combout\) # (\s_nState.Ma2_1036~combout\ $ (\s_pState.Ma2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.E2~q\,
	datab => \s_nState.Ma2_1036~combout\,
	datac => \s_nState.E2_1027~combout\,
	datad => \s_pState.Ma2~q\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X5_Y35_N30
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\s_pState.Ra2~q\ & ((\s_nState.S3_1009~combout\ $ (\s_pState.S3~q\)) # (!\s_nState.Ra2_1018~combout\))) # (!\s_pState.Ra2~q\ & ((\s_nState.Ra2_1018~combout\) # (\s_nState.S3_1009~combout\ $ (\s_pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.Ra2~q\,
	datab => \s_nState.S3_1009~combout\,
	datac => \s_pState.S3~q\,
	datad => \s_nState.Ra2_1018~combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X1_Y35_N22
\WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (\s_nState.RA1_1045~combout\ & ((\s_nState.E1_1054~combout\ $ (\s_pState.E1~q\)) # (!\s_pState.RA1~q\))) # (!\s_nState.RA1_1045~combout\ & ((\s_pState.RA1~q\) # (\s_nState.E1_1054~combout\ $ (\s_pState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nState.RA1_1045~combout\,
	datab => \s_nState.E1_1054~combout\,
	datac => \s_pState.RA1~q\,
	datad => \s_pState.E1~q\,
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X4_Y35_N2
\WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (\WideOr0~0_combout\) # ((\WideOr0~2_combout\) # ((\WideOr0~1_combout\) # (\WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \WideOr0~2_combout\,
	datac => \WideOr0~1_combout\,
	datad => \WideOr0~3_combout\,
	combout => \WideOr0~4_combout\);

-- Location: LCCOMB_X4_Y35_N10
\s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_stateChanged~0_combout\ = (!\reset~input_o\ & ((\s_pState.W~q\) # ((!\WideOr0~6_combout\ & !\WideOr0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_pState.W~q\,
	datac => \WideOr0~6_combout\,
	datad => \WideOr0~4_combout\,
	combout => \s_stateChanged~0_combout\);

-- Location: FF_X4_Y35_N11
s_stateChanged : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_stateChanged~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_stateChanged~q\);

-- Location: LCCOMB_X3_Y35_N30
\newTime~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \newTime~0_combout\ = (!\s_stateChanged~q\ & (!\s_pState.W~q\ & \s_pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_stateChanged~q\,
	datac => \s_pState.W~q\,
	datad => \s_pState.S0~q\,
	combout => \newTime~0_combout\);

-- Location: LCCOMB_X1_Y35_N24
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\s_pState.RA1~q\) # ((\s_pState.RA3~q\) # ((\s_pState.S3~q\) # (\s_pState.Ra2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.RA1~q\,
	datab => \s_pState.RA3~q\,
	datac => \s_pState.S3~q\,
	datad => \s_pState.Ra2~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X1_Y35_N16
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\s_pState.Ra2~q\ & (!\s_pState.RA1~q\ & (\timeVal~0_combout\ & !\s_pState.RA3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_pState.Ra2~q\,
	datab => \s_pState.RA1~q\,
	datac => \timeVal~0_combout\,
	datad => \s_pState.RA3~q\,
	combout => \WideOr2~0_combout\);

ww_timeVal(0) <= \timeVal[0]~output_o\;

ww_timeVal(1) <= \timeVal[1]~output_o\;

ww_timeVal(2) <= \timeVal[2]~output_o\;

ww_timeVal(3) <= \timeVal[3]~output_o\;

ww_timeVal(4) <= \timeVal[4]~output_o\;

ww_timeVal(5) <= \timeVal[5]~output_o\;

ww_timeVal(6) <= \timeVal[6]~output_o\;

ww_timeVal(7) <= \timeVal[7]~output_o\;

ww_timeEnable <= \timeEnable~output_o\;

ww_newTime <= \newTime~output_o\;

ww_water_valve <= \water_valve~output_o\;

ww_water_pump <= \water_pump~output_o\;

ww_spin <= \spin~output_o\;

ww_rinse <= \rinse~output_o\;
END structure;


