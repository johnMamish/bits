-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/07/2020 22:31:14"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	blink IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END blink;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \blinky[1]~22_combout\ : std_logic;
SIGNAL \blinky[2]~24_combout\ : std_logic;
SIGNAL \blinky[4]~28_combout\ : std_logic;
SIGNAL \blinky[6]~32_combout\ : std_logic;
SIGNAL \blinky[8]~36_combout\ : std_logic;
SIGNAL \blinky[15]~50_combout\ : std_logic;
SIGNAL \blinky[17]~54_combout\ : std_logic;
SIGNAL \blinky[18]~56_combout\ : std_logic;
SIGNAL \blinky[20]~60_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \blinky[0]~66_combout\ : std_logic;
SIGNAL \blinky[1]~23\ : std_logic;
SIGNAL \blinky[2]~25\ : std_logic;
SIGNAL \blinky[3]~26_combout\ : std_logic;
SIGNAL \blinky[3]~27\ : std_logic;
SIGNAL \blinky[4]~29\ : std_logic;
SIGNAL \blinky[5]~30_combout\ : std_logic;
SIGNAL \blinky[5]~31\ : std_logic;
SIGNAL \blinky[6]~33\ : std_logic;
SIGNAL \blinky[7]~34_combout\ : std_logic;
SIGNAL \blinky[7]~35\ : std_logic;
SIGNAL \blinky[8]~37\ : std_logic;
SIGNAL \blinky[9]~38_combout\ : std_logic;
SIGNAL \blinky[9]~39\ : std_logic;
SIGNAL \blinky[10]~40_combout\ : std_logic;
SIGNAL \blinky[10]~41\ : std_logic;
SIGNAL \blinky[11]~42_combout\ : std_logic;
SIGNAL \blinky[11]~43\ : std_logic;
SIGNAL \blinky[12]~44_combout\ : std_logic;
SIGNAL \blinky[12]~45\ : std_logic;
SIGNAL \blinky[13]~46_combout\ : std_logic;
SIGNAL \blinky[13]~47\ : std_logic;
SIGNAL \blinky[14]~48_combout\ : std_logic;
SIGNAL \blinky[14]~49\ : std_logic;
SIGNAL \blinky[15]~51\ : std_logic;
SIGNAL \blinky[16]~52_combout\ : std_logic;
SIGNAL \blinky[16]~53\ : std_logic;
SIGNAL \blinky[17]~55\ : std_logic;
SIGNAL \blinky[18]~57\ : std_logic;
SIGNAL \blinky[19]~58_combout\ : std_logic;
SIGNAL \blinky[19]~59\ : std_logic;
SIGNAL \blinky[20]~61\ : std_logic;
SIGNAL \blinky[21]~62_combout\ : std_logic;
SIGNAL \blinky[21]~63\ : std_logic;
SIGNAL \blinky[22]~64_combout\ : std_logic;
SIGNAL blinky : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

-- Location: LCFF_X64_Y1_N17
\blinky[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[20]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(20));

-- Location: LCFF_X64_Y1_N13
\blinky[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[18]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(18));

-- Location: LCFF_X64_Y1_N11
\blinky[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(17));

-- Location: LCFF_X64_Y1_N7
\blinky[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(15));

-- Location: LCFF_X64_Y2_N25
\blinky[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[8]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(8));

-- Location: LCFF_X64_Y2_N21
\blinky[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(6));

-- Location: LCFF_X64_Y2_N17
\blinky[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(4));

-- Location: LCFF_X64_Y2_N13
\blinky[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(2));

-- Location: LCFF_X64_Y2_N11
\blinky[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(1));

-- Location: LCCOMB_X64_Y2_N10
\blinky[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[1]~22_combout\ = (blinky(1) & (blinky(0) $ (VCC))) # (!blinky(1) & (blinky(0) & VCC))
-- \blinky[1]~23\ = CARRY((blinky(1) & blinky(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blinky(1),
	datab => blinky(0),
	datad => VCC,
	combout => \blinky[1]~22_combout\,
	cout => \blinky[1]~23\);

-- Location: LCCOMB_X64_Y2_N12
\blinky[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[2]~24_combout\ = (blinky(2) & (!\blinky[1]~23\)) # (!blinky(2) & ((\blinky[1]~23\) # (GND)))
-- \blinky[2]~25\ = CARRY((!\blinky[1]~23\) # (!blinky(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(2),
	datad => VCC,
	cin => \blinky[1]~23\,
	combout => \blinky[2]~24_combout\,
	cout => \blinky[2]~25\);

-- Location: LCCOMB_X64_Y2_N16
\blinky[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[4]~28_combout\ = (blinky(4) & (!\blinky[3]~27\)) # (!blinky(4) & ((\blinky[3]~27\) # (GND)))
-- \blinky[4]~29\ = CARRY((!\blinky[3]~27\) # (!blinky(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(4),
	datad => VCC,
	cin => \blinky[3]~27\,
	combout => \blinky[4]~28_combout\,
	cout => \blinky[4]~29\);

-- Location: LCCOMB_X64_Y2_N20
\blinky[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[6]~32_combout\ = (blinky(6) & (!\blinky[5]~31\)) # (!blinky(6) & ((\blinky[5]~31\) # (GND)))
-- \blinky[6]~33\ = CARRY((!\blinky[5]~31\) # (!blinky(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(6),
	datad => VCC,
	cin => \blinky[5]~31\,
	combout => \blinky[6]~32_combout\,
	cout => \blinky[6]~33\);

-- Location: LCCOMB_X64_Y2_N24
\blinky[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[8]~36_combout\ = (blinky(8) & (!\blinky[7]~35\)) # (!blinky(8) & ((\blinky[7]~35\) # (GND)))
-- \blinky[8]~37\ = CARRY((!\blinky[7]~35\) # (!blinky(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(8),
	datad => VCC,
	cin => \blinky[7]~35\,
	combout => \blinky[8]~36_combout\,
	cout => \blinky[8]~37\);

-- Location: LCCOMB_X64_Y1_N6
\blinky[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[15]~50_combout\ = (blinky(15) & (\blinky[14]~49\ $ (GND))) # (!blinky(15) & (!\blinky[14]~49\ & VCC))
-- \blinky[15]~51\ = CARRY((blinky(15) & !\blinky[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(15),
	datad => VCC,
	cin => \blinky[14]~49\,
	combout => \blinky[15]~50_combout\,
	cout => \blinky[15]~51\);

-- Location: LCCOMB_X64_Y1_N10
\blinky[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[17]~54_combout\ = (blinky(17) & (\blinky[16]~53\ $ (GND))) # (!blinky(17) & (!\blinky[16]~53\ & VCC))
-- \blinky[17]~55\ = CARRY((blinky(17) & !\blinky[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(17),
	datad => VCC,
	cin => \blinky[16]~53\,
	combout => \blinky[17]~54_combout\,
	cout => \blinky[17]~55\);

-- Location: LCCOMB_X64_Y1_N12
\blinky[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[18]~56_combout\ = (blinky(18) & (!\blinky[17]~55\)) # (!blinky(18) & ((\blinky[17]~55\) # (GND)))
-- \blinky[18]~57\ = CARRY((!\blinky[17]~55\) # (!blinky(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(18),
	datad => VCC,
	cin => \blinky[17]~55\,
	combout => \blinky[18]~56_combout\,
	cout => \blinky[18]~57\);

-- Location: LCCOMB_X64_Y1_N16
\blinky[20]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[20]~60_combout\ = (blinky(20) & (!\blinky[19]~59\)) # (!blinky(20) & ((\blinky[19]~59\) # (GND)))
-- \blinky[20]~61\ = CARRY((!\blinky[19]~59\) # (!blinky(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(20),
	datad => VCC,
	cin => \blinky[19]~59\,
	combout => \blinky[20]~60_combout\,
	cout => \blinky[20]~61\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y2_N0
\blinky[0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[0]~66_combout\ = !blinky(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => blinky(0),
	combout => \blinky[0]~66_combout\);

-- Location: LCFF_X64_Y2_N1
\blinky[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(0));

-- Location: LCCOMB_X64_Y2_N14
\blinky[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[3]~26_combout\ = (blinky(3) & (\blinky[2]~25\ $ (GND))) # (!blinky(3) & (!\blinky[2]~25\ & VCC))
-- \blinky[3]~27\ = CARRY((blinky(3) & !\blinky[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(3),
	datad => VCC,
	cin => \blinky[2]~25\,
	combout => \blinky[3]~26_combout\,
	cout => \blinky[3]~27\);

-- Location: LCFF_X64_Y2_N15
\blinky[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(3));

-- Location: LCCOMB_X64_Y2_N18
\blinky[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[5]~30_combout\ = (blinky(5) & (\blinky[4]~29\ $ (GND))) # (!blinky(5) & (!\blinky[4]~29\ & VCC))
-- \blinky[5]~31\ = CARRY((blinky(5) & !\blinky[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(5),
	datad => VCC,
	cin => \blinky[4]~29\,
	combout => \blinky[5]~30_combout\,
	cout => \blinky[5]~31\);

-- Location: LCFF_X64_Y2_N19
\blinky[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(5));

-- Location: LCCOMB_X64_Y2_N22
\blinky[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[7]~34_combout\ = (blinky(7) & (\blinky[6]~33\ $ (GND))) # (!blinky(7) & (!\blinky[6]~33\ & VCC))
-- \blinky[7]~35\ = CARRY((blinky(7) & !\blinky[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(7),
	datad => VCC,
	cin => \blinky[6]~33\,
	combout => \blinky[7]~34_combout\,
	cout => \blinky[7]~35\);

-- Location: LCFF_X64_Y2_N23
\blinky[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(7));

-- Location: LCCOMB_X64_Y2_N26
\blinky[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[9]~38_combout\ = (blinky(9) & (\blinky[8]~37\ $ (GND))) # (!blinky(9) & (!\blinky[8]~37\ & VCC))
-- \blinky[9]~39\ = CARRY((blinky(9) & !\blinky[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(9),
	datad => VCC,
	cin => \blinky[8]~37\,
	combout => \blinky[9]~38_combout\,
	cout => \blinky[9]~39\);

-- Location: LCFF_X64_Y2_N27
\blinky[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[9]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(9));

-- Location: LCCOMB_X64_Y2_N28
\blinky[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[10]~40_combout\ = (blinky(10) & (!\blinky[9]~39\)) # (!blinky(10) & ((\blinky[9]~39\) # (GND)))
-- \blinky[10]~41\ = CARRY((!\blinky[9]~39\) # (!blinky(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(10),
	datad => VCC,
	cin => \blinky[9]~39\,
	combout => \blinky[10]~40_combout\,
	cout => \blinky[10]~41\);

-- Location: LCFF_X64_Y2_N29
\blinky[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[10]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(10));

-- Location: LCCOMB_X64_Y2_N30
\blinky[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[11]~42_combout\ = (blinky(11) & (\blinky[10]~41\ $ (GND))) # (!blinky(11) & (!\blinky[10]~41\ & VCC))
-- \blinky[11]~43\ = CARRY((blinky(11) & !\blinky[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(11),
	datad => VCC,
	cin => \blinky[10]~41\,
	combout => \blinky[11]~42_combout\,
	cout => \blinky[11]~43\);

-- Location: LCFF_X64_Y2_N31
\blinky[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(11));

-- Location: LCCOMB_X64_Y1_N0
\blinky[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[12]~44_combout\ = (blinky(12) & (!\blinky[11]~43\)) # (!blinky(12) & ((\blinky[11]~43\) # (GND)))
-- \blinky[12]~45\ = CARRY((!\blinky[11]~43\) # (!blinky(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(12),
	datad => VCC,
	cin => \blinky[11]~43\,
	combout => \blinky[12]~44_combout\,
	cout => \blinky[12]~45\);

-- Location: LCFF_X64_Y1_N1
\blinky[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(12));

-- Location: LCCOMB_X64_Y1_N2
\blinky[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[13]~46_combout\ = (blinky(13) & (\blinky[12]~45\ $ (GND))) # (!blinky(13) & (!\blinky[12]~45\ & VCC))
-- \blinky[13]~47\ = CARRY((blinky(13) & !\blinky[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(13),
	datad => VCC,
	cin => \blinky[12]~45\,
	combout => \blinky[13]~46_combout\,
	cout => \blinky[13]~47\);

-- Location: LCFF_X64_Y1_N3
\blinky[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(13));

-- Location: LCCOMB_X64_Y1_N4
\blinky[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[14]~48_combout\ = (blinky(14) & (!\blinky[13]~47\)) # (!blinky(14) & ((\blinky[13]~47\) # (GND)))
-- \blinky[14]~49\ = CARRY((!\blinky[13]~47\) # (!blinky(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(14),
	datad => VCC,
	cin => \blinky[13]~47\,
	combout => \blinky[14]~48_combout\,
	cout => \blinky[14]~49\);

-- Location: LCFF_X64_Y1_N5
\blinky[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[14]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(14));

-- Location: LCCOMB_X64_Y1_N8
\blinky[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[16]~52_combout\ = (blinky(16) & (!\blinky[15]~51\)) # (!blinky(16) & ((\blinky[15]~51\) # (GND)))
-- \blinky[16]~53\ = CARRY((!\blinky[15]~51\) # (!blinky(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(16),
	datad => VCC,
	cin => \blinky[15]~51\,
	combout => \blinky[16]~52_combout\,
	cout => \blinky[16]~53\);

-- Location: LCFF_X64_Y1_N9
\blinky[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(16));

-- Location: LCCOMB_X64_Y1_N14
\blinky[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[19]~58_combout\ = (blinky(19) & (\blinky[18]~57\ $ (GND))) # (!blinky(19) & (!\blinky[18]~57\ & VCC))
-- \blinky[19]~59\ = CARRY((blinky(19) & !\blinky[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(19),
	datad => VCC,
	cin => \blinky[18]~57\,
	combout => \blinky[19]~58_combout\,
	cout => \blinky[19]~59\);

-- Location: LCFF_X64_Y1_N15
\blinky[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[19]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(19));

-- Location: LCCOMB_X64_Y1_N18
\blinky[21]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[21]~62_combout\ = (blinky(21) & (\blinky[20]~61\ $ (GND))) # (!blinky(21) & (!\blinky[20]~61\ & VCC))
-- \blinky[21]~63\ = CARRY((blinky(21) & !\blinky[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blinky(21),
	datad => VCC,
	cin => \blinky[20]~61\,
	combout => \blinky[21]~62_combout\,
	cout => \blinky[21]~63\);

-- Location: LCFF_X64_Y1_N19
\blinky[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[21]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(21));

-- Location: LCCOMB_X64_Y1_N20
\blinky[22]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinky[22]~64_combout\ = blinky(22) $ (\blinky[21]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blinky(22),
	cin => \blinky[21]~63\,
	combout => \blinky[22]~64_combout\);

-- Location: LCFF_X64_Y1_N21
\blinky[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \blinky[22]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blinky(22));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => blinky(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));
END structure;


