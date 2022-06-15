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

-- DATE "06/14/2022 22:39:25"

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

ENTITY 	Regi IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	P1 : IN std_logic;
	P2 : IN std_logic;
	P3 : IN std_logic;
	startStop : IN std_logic;
	outRset : OUT std_logic;
	outP1 : OUT std_logic;
	outP2 : OUT std_logic;
	outP3 : OUT std_logic;
	outSS : OUT std_logic
	);
END Regi;

-- Design Ports Information
-- outRset	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outP1	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outP2	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outP3	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSS	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startStop	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Regi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL ww_startStop : std_logic;
SIGNAL ww_outRset : std_logic;
SIGNAL ww_outP1 : std_logic;
SIGNAL ww_outP2 : std_logic;
SIGNAL ww_outP3 : std_logic;
SIGNAL ww_outSS : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outRset~output_o\ : std_logic;
SIGNAL \outP1~output_o\ : std_logic;
SIGNAL \outP2~output_o\ : std_logic;
SIGNAL \outP3~output_o\ : std_logic;
SIGNAL \outSS~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \outRset~reg0feeder_combout\ : std_logic;
SIGNAL \outRset~reg0_q\ : std_logic;
SIGNAL \P1~input_o\ : std_logic;
SIGNAL \outP1~reg0feeder_combout\ : std_logic;
SIGNAL \outP1~reg0_q\ : std_logic;
SIGNAL \P2~input_o\ : std_logic;
SIGNAL \outP2~reg0feeder_combout\ : std_logic;
SIGNAL \outP2~reg0_q\ : std_logic;
SIGNAL \P3~input_o\ : std_logic;
SIGNAL \outP3~reg0feeder_combout\ : std_logic;
SIGNAL \outP3~reg0_q\ : std_logic;
SIGNAL \startStop~input_o\ : std_logic;
SIGNAL \outSS~reg0feeder_combout\ : std_logic;
SIGNAL \outSS~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_P1 <= P1;
ww_P2 <= P2;
ww_P3 <= P3;
ww_startStop <= startStop;
outRset <= ww_outRset;
outP1 <= ww_outP1;
outP2 <= ww_outP2;
outP3 <= ww_outP3;
outSS <= ww_outSS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y42_N9
\outRset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outRset~reg0_q\,
	devoe => ww_devoe,
	o => \outRset~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\outP1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outP1~reg0_q\,
	devoe => ww_devoe,
	o => \outP1~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\outP2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outP2~reg0_q\,
	devoe => ww_devoe,
	o => \outP2~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\outP3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outP3~reg0_q\,
	devoe => ww_devoe,
	o => \outP3~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\outSS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outSS~reg0_q\,
	devoe => ww_devoe,
	o => \outSS~output_o\);

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

-- Location: IOIBUF_X0_Y42_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y42_N16
\outRset~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outRset~reg0feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \outRset~reg0feeder_combout\);

-- Location: FF_X1_Y42_N17
\outRset~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outRset~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outRset~reg0_q\);

-- Location: IOIBUF_X49_Y73_N22
\P1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P1,
	o => \P1~input_o\);

-- Location: LCCOMB_X49_Y72_N0
\outP1~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outP1~reg0feeder_combout\ = \P1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P1~input_o\,
	combout => \outP1~reg0feeder_combout\);

-- Location: FF_X49_Y72_N1
\outP1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outP1~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outP1~reg0_q\);

-- Location: IOIBUF_X0_Y57_N22
\P2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2,
	o => \P2~input_o\);

-- Location: LCCOMB_X1_Y57_N16
\outP2~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outP2~reg0feeder_combout\ = \P2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P2~input_o\,
	combout => \outP2~reg0feeder_combout\);

-- Location: FF_X1_Y57_N17
\outP2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outP2~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outP2~reg0_q\);

-- Location: IOIBUF_X115_Y66_N15
\P3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P3,
	o => \P3~input_o\);

-- Location: LCCOMB_X114_Y66_N8
\outP3~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outP3~reg0feeder_combout\ = \P3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \P3~input_o\,
	combout => \outP3~reg0feeder_combout\);

-- Location: FF_X114_Y66_N9
\outP3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outP3~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outP3~reg0_q\);

-- Location: IOIBUF_X0_Y62_N15
\startStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startStop,
	o => \startStop~input_o\);

-- Location: LCCOMB_X1_Y62_N16
\outSS~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outSS~reg0feeder_combout\ = \startStop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \startStop~input_o\,
	combout => \outSS~reg0feeder_combout\);

-- Location: FF_X1_Y62_N17
\outSS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outSS~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outSS~reg0_q\);

ww_outRset <= \outRset~output_o\;

ww_outP1 <= \outP1~output_o\;

ww_outP2 <= \outP2~output_o\;

ww_outP3 <= \outP3~output_o\;

ww_outSS <= \outSS~output_o\;
END structure;


