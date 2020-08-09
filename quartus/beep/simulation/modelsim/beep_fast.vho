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

-- DATE "08/09/2020 14:37:13"

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

ENTITY 	beep IS
    PORT (
	CLOCK_50 : IN std_logic;
	I2C_SCLK : INOUT std_logic;
	I2C_SDAT : INOUT std_logic;
	GPIO_0 : OUT std_logic_vector(7 DOWNTO 0);
	AUD_XCK : OUT std_logic;
	NES_PS : OUT std_logic;
	NES_CK : OUT std_logic;
	NES_DO : IN std_logic;
	AUD_BCLK : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	AUD_ADCLRCK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END beep;

-- Design Ports Information
-- I2C_SCLK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_XCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NES_PS	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NES_CK	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NES_DO	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF beep IS
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
SIGNAL ww_GPIO_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_NES_PS : std_logic;
SIGNAL ww_NES_CK : std_logic;
SIGNAL ww_NES_DO : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_12_5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2s|LRCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reader|div|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reader|state[7]~23_combout\ : std_logic;
SIGNAL \i2s|bitcount[2]~12_combout\ : std_logic;
SIGNAL \i2s|bitcount[4]~17\ : std_logic;
SIGNAL \i2s|bitcount[5]~18_combout\ : std_logic;
SIGNAL \r2|Add0~4_combout\ : std_logic;
SIGNAL \r2|Add0~26_combout\ : std_logic;
SIGNAL \r2|Add0~36_combout\ : std_logic;
SIGNAL \r2|Add0~39\ : std_logic;
SIGNAL \r2|Add0~40_combout\ : std_logic;
SIGNAL \reader|div|counter[1]~9_combout\ : std_logic;
SIGNAL \reader|div|counter[3]~13_combout\ : std_logic;
SIGNAL \r|Add0~0_combout\ : std_logic;
SIGNAL \r|Add0~4_combout\ : std_logic;
SIGNAL \r|Add0~23\ : std_logic;
SIGNAL \r|Add0~24_combout\ : std_logic;
SIGNAL \r|Add0~25\ : std_logic;
SIGNAL \r|Add0~26_combout\ : std_logic;
SIGNAL \r|Add0~27\ : std_logic;
SIGNAL \r|Add0~28_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_START_WAIT~regout\ : std_logic;
SIGNAL \init|i2c_master|Add2~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~2_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~4_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~6_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~8_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~10_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~12_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~14_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~16_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~22_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~30_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \d[0]~0_combout\ : std_logic;
SIGNAL \d[1]~2_combout\ : std_logic;
SIGNAL \d[2]~4_combout\ : std_logic;
SIGNAL \d[3]~6_combout\ : std_logic;
SIGNAL \d[4]~8_combout\ : std_logic;
SIGNAL \d[5]~10_combout\ : std_logic;
SIGNAL \d[6]~12_combout\ : std_logic;
SIGNAL \d[7]~14_combout\ : std_logic;
SIGNAL \d[8]~16_combout\ : std_logic;
SIGNAL \d[9]~18_combout\ : std_logic;
SIGNAL \d[10]~20_combout\ : std_logic;
SIGNAL \d[11]~22_combout\ : std_logic;
SIGNAL \d[12]~24_combout\ : std_logic;
SIGNAL \d[13]~26_combout\ : std_logic;
SIGNAL \d[14]~28_combout\ : std_logic;
SIGNAL \d[15]~30_combout\ : std_logic;
SIGNAL \d[16]~32_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~61\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~62_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[6]~29_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[14]~46\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[15]~47_combout\ : std_logic;
SIGNAL \r2|Equal0~1_combout\ : std_logic;
SIGNAL \divider_25~regout\ : std_logic;
SIGNAL \r|Equal0~3_combout\ : std_logic;
SIGNAL \reader|Selector0~0_combout\ : std_logic;
SIGNAL \reader|Selector0~1_combout\ : std_logic;
SIGNAL \reader|Selector0~2_combout\ : std_logic;
SIGNAL \reader|Decoder0~2_combout\ : std_logic;
SIGNAL \init|i2c_master|always0~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector37~1_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~2_combout\ : std_logic;
SIGNAL \init|i2c_master|Add1~0_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_scl_next~0_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[0]~10_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[15]~12_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[11]~16_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[7]~20_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[3]~25_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~26_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector14~0_combout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~0_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~5_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~3_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~5_combout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~1_combout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~4_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector21~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector29~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector35~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector36~0_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~7_combout\ : std_logic;
SIGNAL \triangles[7][23]~0_combout\ : std_logic;
SIGNAL \triangles[6][23]~1_combout\ : std_logic;
SIGNAL \triangles[7][22]~2_combout\ : std_logic;
SIGNAL \triangles[7][21]~4_combout\ : std_logic;
SIGNAL \triangles[7][20]~6_combout\ : std_logic;
SIGNAL \triangles[7][19]~8_combout\ : std_logic;
SIGNAL \triangles[6][18]~11_combout\ : std_logic;
SIGNAL \triangles[6][17]~13_combout\ : std_logic;
SIGNAL \triangles[7][16]~14_combout\ : std_logic;
SIGNAL \triangles[6][15]~17_combout\ : std_logic;
SIGNAL \triangles[7][14]~18_combout\ : std_logic;
SIGNAL \triangles[7][13]~20_combout\ : std_logic;
SIGNAL \triangles[6][12]~23_combout\ : std_logic;
SIGNAL \triangles[7][11]~24_combout\ : std_logic;
SIGNAL \triangles[6][10]~27_combout\ : std_logic;
SIGNAL \triangles[7][9]~28_combout\ : std_logic;
SIGNAL \triangles[7][8]~30_combout\ : std_logic;
SIGNAL \triangles[6][7]~33_combout\ : std_logic;
SIGNAL \triangles[6][6]~35_combout\ : std_logic;
SIGNAL \triangles[7][5]~36_combout\ : std_logic;
SIGNAL \triangles[6][4]~39_combout\ : std_logic;
SIGNAL \triangles[6][3]~41_combout\ : std_logic;
SIGNAL \triangles[6][2]~43_combout\ : std_logic;
SIGNAL \triangles[6][1]~45_combout\ : std_logic;
SIGNAL \triangles[6][0]~47_combout\ : std_logic;
SIGNAL \triangles[5][22]~51_combout\ : std_logic;
SIGNAL \triangles[5][21]~53_combout\ : std_logic;
SIGNAL \triangles[5][20]~55_combout\ : std_logic;
SIGNAL \triangles[5][19]~57_combout\ : std_logic;
SIGNAL \triangles[5][18]~59_combout\ : std_logic;
SIGNAL \triangles[5][17]~61_combout\ : std_logic;
SIGNAL \triangles[5][16]~63_combout\ : std_logic;
SIGNAL \triangles[5][15]~65_combout\ : std_logic;
SIGNAL \triangles[4][14]~66_combout\ : std_logic;
SIGNAL \triangles[4][13]~68_combout\ : std_logic;
SIGNAL \triangles[4][12]~70_combout\ : std_logic;
SIGNAL \triangles[5][11]~73_combout\ : std_logic;
SIGNAL \triangles[5][10]~75_combout\ : std_logic;
SIGNAL \triangles[5][9]~77_combout\ : std_logic;
SIGNAL \triangles[4][8]~78_combout\ : std_logic;
SIGNAL \triangles[5][7]~81_combout\ : std_logic;
SIGNAL \triangles[5][6]~83_combout\ : std_logic;
SIGNAL \triangles[5][5]~85_combout\ : std_logic;
SIGNAL \triangles[4][4]~86_combout\ : std_logic;
SIGNAL \triangles[4][3]~88_combout\ : std_logic;
SIGNAL \triangles[5][2]~91_combout\ : std_logic;
SIGNAL \triangles[5][1]~93_combout\ : std_logic;
SIGNAL \triangles[4][0]~94_combout\ : std_logic;
SIGNAL \triangles[3][23]~97_combout\ : std_logic;
SIGNAL \triangles[3][22]~99_combout\ : std_logic;
SIGNAL \triangles[3][21]~101_combout\ : std_logic;
SIGNAL \triangles[2][20]~102_combout\ : std_logic;
SIGNAL \triangles[2][19]~104_combout\ : std_logic;
SIGNAL \triangles[3][18]~107_combout\ : std_logic;
SIGNAL \triangles[2][17]~108_combout\ : std_logic;
SIGNAL \triangles[2][16]~110_combout\ : std_logic;
SIGNAL \triangles[3][15]~113_combout\ : std_logic;
SIGNAL \triangles[2][14]~114_combout\ : std_logic;
SIGNAL \triangles[3][13]~117_combout\ : std_logic;
SIGNAL \triangles[2][12]~118_combout\ : std_logic;
SIGNAL \triangles[2][11]~120_combout\ : std_logic;
SIGNAL \triangles[3][10]~123_combout\ : std_logic;
SIGNAL \triangles[3][9]~125_combout\ : std_logic;
SIGNAL \triangles[2][8]~126_combout\ : std_logic;
SIGNAL \triangles[2][7]~128_combout\ : std_logic;
SIGNAL \triangles[3][6]~131_combout\ : std_logic;
SIGNAL \triangles[3][5]~133_combout\ : std_logic;
SIGNAL \triangles[3][4]~135_combout\ : std_logic;
SIGNAL \triangles[2][3]~136_combout\ : std_logic;
SIGNAL \triangles[2][2]~138_combout\ : std_logic;
SIGNAL \triangles[2][1]~140_combout\ : std_logic;
SIGNAL \triangles[3][0]~143_combout\ : std_logic;
SIGNAL \triangles[0][23]~144_combout\ : std_logic;
SIGNAL \triangles[1][23]~145_combout\ : std_logic;
SIGNAL \triangles[0][22]~146_combout\ : std_logic;
SIGNAL \triangles[0][21]~148_combout\ : std_logic;
SIGNAL \triangles[0][20]~150_combout\ : std_logic;
SIGNAL \triangles[0][19]~152_combout\ : std_logic;
SIGNAL \triangles[0][18]~154_combout\ : std_logic;
SIGNAL \triangles[1][17]~157_combout\ : std_logic;
SIGNAL \triangles[1][16]~159_combout\ : std_logic;
SIGNAL \triangles[1][15]~161_combout\ : std_logic;
SIGNAL \triangles[0][14]~162_combout\ : std_logic;
SIGNAL \triangles[1][13]~165_combout\ : std_logic;
SIGNAL \triangles[0][12]~166_combout\ : std_logic;
SIGNAL \triangles[0][11]~168_combout\ : std_logic;
SIGNAL \triangles[0][10]~170_combout\ : std_logic;
SIGNAL \triangles[0][9]~172_combout\ : std_logic;
SIGNAL \triangles[0][8]~174_combout\ : std_logic;
SIGNAL \triangles[1][7]~177_combout\ : std_logic;
SIGNAL \triangles[0][6]~178_combout\ : std_logic;
SIGNAL \triangles[0][5]~180_combout\ : std_logic;
SIGNAL \triangles[0][4]~182_combout\ : std_logic;
SIGNAL \triangles[1][3]~185_combout\ : std_logic;
SIGNAL \triangles[1][2]~187_combout\ : std_logic;
SIGNAL \triangles[1][1]~189_combout\ : std_logic;
SIGNAL \triangles[0][0]~190_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~1_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|pulse~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~2_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_1~1_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_2~1_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~5_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~6_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~7_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector59~0_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[1]~11_combout\ : std_logic;
SIGNAL \i2s|data_shift~11_combout\ : std_logic;
SIGNAL \i2s|data_shift~12_combout\ : std_logic;
SIGNAL \i2s|data_shift~13_combout\ : std_logic;
SIGNAL \i2s|data_shift~14_combout\ : std_logic;
SIGNAL \i2s|data_shift~15_combout\ : std_logic;
SIGNAL \i2s|data_shift~16_combout\ : std_logic;
SIGNAL \i2s|data_shift~17_combout\ : std_logic;
SIGNAL \i2s|data_shift~18_combout\ : std_logic;
SIGNAL \i2s|data_shift~19_combout\ : std_logic;
SIGNAL \i2s|data_shift~20_combout\ : std_logic;
SIGNAL \i2s|data_shift~21_combout\ : std_logic;
SIGNAL \i2s|data_shift~22_combout\ : std_logic;
SIGNAL \i2s|data_shift~23_combout\ : std_logic;
SIGNAL \i2s|data_shift~24_combout\ : std_logic;
SIGNAL \i2s|data_shift~25_combout\ : std_logic;
SIGNAL \i2s|data_shift~26_combout\ : std_logic;
SIGNAL \i2s|data_shift~27_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[3]~30_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~28_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~27_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[2]~30_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~18_combout\ : std_logic;
SIGNAL \i2s|data_shift~28_combout\ : std_logic;
SIGNAL \divider_25~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \i2s|LRCK~clkctrl_outclk\ : std_logic;
SIGNAL \reader|div|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \r|reset_count[2]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_master|data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \I2C_SCLK~0\ : std_logic;
SIGNAL \I2C_SDAT~0\ : std_logic;
SIGNAL \clk_12_5~0_combout\ : std_logic;
SIGNAL \clk_12_5~regout\ : std_logic;
SIGNAL \clk_12_5~clkctrl_outclk\ : std_logic;
SIGNAL \r|reset_count~0_combout\ : std_logic;
SIGNAL \r|Add0~1\ : std_logic;
SIGNAL \r|Add0~2_combout\ : std_logic;
SIGNAL \r|Add0~3\ : std_logic;
SIGNAL \r|Add0~5\ : std_logic;
SIGNAL \r|Add0~6_combout\ : std_logic;
SIGNAL \r|Add0~7\ : std_logic;
SIGNAL \r|Add0~8_combout\ : std_logic;
SIGNAL \r|Add0~9\ : std_logic;
SIGNAL \r|Add0~10_combout\ : std_logic;
SIGNAL \r|Add0~11\ : std_logic;
SIGNAL \r|Add0~13\ : std_logic;
SIGNAL \r|Add0~14_combout\ : std_logic;
SIGNAL \r|Add0~15\ : std_logic;
SIGNAL \r|Add0~17\ : std_logic;
SIGNAL \r|Add0~19\ : std_logic;
SIGNAL \r|Add0~20_combout\ : std_logic;
SIGNAL \r|Add0~21\ : std_logic;
SIGNAL \r|Add0~22_combout\ : std_logic;
SIGNAL \r|Equal0~2_combout\ : std_logic;
SIGNAL \r|Add0~12_combout\ : std_logic;
SIGNAL \r|Equal0~1_combout\ : std_logic;
SIGNAL \r|Add0~16_combout\ : std_logic;
SIGNAL \r|Add0~18_combout\ : std_logic;
SIGNAL \r|Equal0~0_combout\ : std_logic;
SIGNAL \r|Equal0~4_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~25_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~27_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~35_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~37_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~36_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~34_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~4_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~4_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~13_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~3_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~3_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~5_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~5_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~14_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[0]~16_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|Equal0~4_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[2]~21\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[3]~24\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[4]~25_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[4]~26\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[5]~28\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[6]~30\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[7]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[7]~32\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[8]~34\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[9]~35_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[9]~36\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[10]~37_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[8]~33_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|Equal0~1_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[10]~38\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[11]~39_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[11]~40\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[12]~42\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[13]~43_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[13]~44\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[14]~45_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[12]~41_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|Equal0~2_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[3]~23_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[5]~27_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|Equal0~0_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|Equal0~3_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[9]~22_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[0]~17\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[1]~18_combout\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[1]~19\ : std_logic;
SIGNAL \init|i2c_init_start_pulse|count[2]~20_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~20_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~16_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~15_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~12_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~13_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~11_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~21_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal1~4_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal4~0_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~15_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~18_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~19_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~20_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_2~0_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_2~2_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg.STATE_TABLE_2~regout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~14_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[4]~28_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[4]~21_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~10_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~20_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal2~0_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~23_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~17_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~21_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~22_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg.STATE_IDLE~regout\ : std_logic;
SIGNAL \init|i2c_init|start_flag_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_init|start_flag_reg~1_combout\ : std_logic;
SIGNAL \init|i2c_init|start_flag_reg~regout\ : std_logic;
SIGNAL \init|i2c_init|always0~0_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next~1_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal5~5_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~18_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~19_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg.STATE_RUN~regout\ : std_logic;
SIGNAL \init|i2c_init|state_reg~15_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_valid_reg~6_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_valid_reg~5_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_valid_reg~regout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[1]~12_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[1]~16_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[3]~33_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[3]~26_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~2_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~0_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~17_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[5]~29_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[5]~22_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~8_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~9_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal3~1_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next~0_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~17_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~22_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal1~5_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal5~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~2_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal7~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~5_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~16_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~17_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[2]~23_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~6_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~7_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg[1]~10_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~3_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~6_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_next~7_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_valid_reg~regout\ : std_logic;
SIGNAL \init|i2c_init|data_out_valid_reg~4_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_1~0_combout\ : std_logic;
SIGNAL \init|i2c_init|state_next.STATE_TABLE_1~2_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg.STATE_TABLE_1~regout\ : std_logic;
SIGNAL \init|i2c_init|address_ptr_reg[4]~0_combout\ : std_logic;
SIGNAL \init|i2c_init|address_ptr_reg[4]~1_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[0]~31_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[0]~24_combout\ : std_logic;
SIGNAL \init|i2c_init|address_reg~1_combout\ : std_logic;
SIGNAL \init|i2c_init|Add0~4_combout\ : std_logic;
SIGNAL \init|i2c_init|data_ptr_reg~19_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~32_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data.raddr_a[1]~25_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~18_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~19_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal3~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector10~0_combout\ : std_logic;
SIGNAL \init|i2c_init|state_reg.STATE_TABLE_3~regout\ : std_logic;
SIGNAL \init|i2c_init|Equal7~5_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_write_next~0_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~3_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~6_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~7_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~8_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~9_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~10_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_write_next~1_combout\ : std_logic;
SIGNAL \init|i2c_master|always0~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_write_next~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_write_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_start_bit~0_combout\ : std_logic;
SIGNAL \init|i2c_master|sda_i_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|sda_i_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|last_sda_i_reg~feeder_combout\ : std_logic;
SIGNAL \init|i2c_master|last_sda_i_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|scl_i_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|scl_i_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|bus_active_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|bus_active_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~24_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_IDLE~regout\ : std_logic;
SIGNAL \init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal0~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector27~0_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_address_reg[6]~3_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_address_reg[6]~2_combout\ : std_logic;
SIGNAL \init|i2c_master|addr_reg[6]~4_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector26~0_combout\ : std_logic;
SIGNAL \init|i2c_master|always0~1_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~14_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~15_combout\ : std_logic;
SIGNAL \init|i2c_init|init_data~16_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector25~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector23~0_combout\ : std_logic;
SIGNAL \init|i2c_master|always0~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~0_combout\ : std_logic;
SIGNAL \init|i2c_init|Equal1~6_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~1_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~4_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~6_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~7_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~8_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_next~9_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_start_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|always0~3_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector20~0_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~28_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~29_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~6_combout\ : std_logic;
SIGNAL \init|i2c_master|cmd_ready_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|cmd_ready_reg~regout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_next~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cmd_stop_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector12~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector24~0_combout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~3_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector16~0_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~26_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~27_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_WRITE_1~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector37~2_combout\ : std_logic;
SIGNAL \init|i2c_master|state_next~0_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_ADDRESS_2~regout\ : std_logic;
SIGNAL \init|i2c_master|data_in_ready_reg~2_combout\ : std_logic;
SIGNAL \init|i2c_master|data_in_ready_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~2_combout\ : std_logic;
SIGNAL \init|i2c_master|bit_count_reg[3]~5_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector23~2_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector22~2_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector37~0_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~25_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_WRITE_2~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector37~3_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_WRITE_3~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector12~1_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ : std_logic;
SIGNAL \init|i2c_master|state_reg~23_combout\ : std_logic;
SIGNAL \init|i2c_master|mode_stop_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector26~0_combout\ : std_logic;
SIGNAL \init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\ : std_logic;
SIGNAL \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~3_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~30_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~38_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~5_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~6_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~7_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~9_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[0]~8_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[8]~19_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector27~0_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~6_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[5]~29_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[5]~22_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[6]~21_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~3_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[4]~23_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[4]~24_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[2]~27_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~1\ : std_logic;
SIGNAL \init|i2c_master|Add2~3\ : std_logic;
SIGNAL \init|i2c_master|Add2~5\ : std_logic;
SIGNAL \init|i2c_master|Add2~7\ : std_logic;
SIGNAL \init|i2c_master|Add2~9\ : std_logic;
SIGNAL \init|i2c_master|Add2~11\ : std_logic;
SIGNAL \init|i2c_master|Add2~13\ : std_logic;
SIGNAL \init|i2c_master|Add2~15\ : std_logic;
SIGNAL \init|i2c_master|Add2~17\ : std_logic;
SIGNAL \init|i2c_master|Add2~18_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[9]~18_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~19\ : std_logic;
SIGNAL \init|i2c_master|Add2~20_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[10]~17_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~1_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~21\ : std_logic;
SIGNAL \init|i2c_master|Add2~23\ : std_logic;
SIGNAL \init|i2c_master|Add2~24_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[12]~15_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~25\ : std_logic;
SIGNAL \init|i2c_master|Add2~26_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[13]~14_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~27\ : std_logic;
SIGNAL \init|i2c_master|Add2~28_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[14]~13_combout\ : std_logic;
SIGNAL \init|i2c_master|Add2~29\ : std_logic;
SIGNAL \init|i2c_master|Add2~31\ : std_logic;
SIGNAL \init|i2c_master|Add2~32_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[16]~11_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~0_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~2_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_reg[1]~28_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~4_combout\ : std_logic;
SIGNAL \init|i2c_master|LessThan2~5_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~9_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~10_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_scl_next~1_combout\ : std_logic;
SIGNAL \init|i2c_master|delay_scl_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~2_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~5_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~8_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~33_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_next~4_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~31_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~26_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~2_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg~32_combout\ : std_logic;
SIGNAL \init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~3_combout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~1_combout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~4_combout\ : std_logic;
SIGNAL \init|i2c_master|scl_o_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~1_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux0~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~2_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg[3]~8_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector28~0_combout\ : std_logic;
SIGNAL \init|i2c_init|cur_address_reg~3_combout\ : std_logic;
SIGNAL \init|i2c_init|Selector29~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux0~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux0~1_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux0~3_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~3_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_reg[4]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector32~0_combout\ : std_logic;
SIGNAL \init|i2c_master|data_reg[6]~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector30~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux1~4_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux1~6_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_reg[2]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector34~0_combout\ : std_logic;
SIGNAL \init|i2c_init|data_out_reg[3]~feeder_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector33~0_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux1~2_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux1~3_combout\ : std_logic;
SIGNAL \init|i2c_master|Mux1~5_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~4_combout\ : std_logic;
SIGNAL \init|i2c_master|Selector38~5_combout\ : std_logic;
SIGNAL \init|i2c_master|sda_o_next~0_combout\ : std_logic;
SIGNAL \init|i2c_master|sda_o_reg~0_combout\ : std_logic;
SIGNAL \init|i2c_master|sda_o_reg~regout\ : std_logic;
SIGNAL \i2s|bitcount[0]~9\ : std_logic;
SIGNAL \i2s|bitcount[1]~10_combout\ : std_logic;
SIGNAL \r2|Add0~1\ : std_logic;
SIGNAL \r2|Add0~2_combout\ : std_logic;
SIGNAL \r2|Add0~3\ : std_logic;
SIGNAL \r2|Add0~5\ : std_logic;
SIGNAL \r2|Add0~6_combout\ : std_logic;
SIGNAL \r2|Add0~7\ : std_logic;
SIGNAL \r2|Add0~8_combout\ : std_logic;
SIGNAL \r2|Add0~9\ : std_logic;
SIGNAL \r2|Add0~10_combout\ : std_logic;
SIGNAL \r2|Add0~11\ : std_logic;
SIGNAL \r2|Add0~13\ : std_logic;
SIGNAL \r2|Add0~14_combout\ : std_logic;
SIGNAL \r2|reset_count[7]~feeder_combout\ : std_logic;
SIGNAL \r2|Add0~15\ : std_logic;
SIGNAL \r2|Add0~16_combout\ : std_logic;
SIGNAL \r2|reset_count[8]~feeder_combout\ : std_logic;
SIGNAL \r2|Add0~17\ : std_logic;
SIGNAL \r2|Add0~18_combout\ : std_logic;
SIGNAL \r2|reset_count[9]~feeder_combout\ : std_logic;
SIGNAL \r2|Add0~19\ : std_logic;
SIGNAL \r2|Add0~20_combout\ : std_logic;
SIGNAL \r2|Add0~21\ : std_logic;
SIGNAL \r2|Add0~22_combout\ : std_logic;
SIGNAL \r2|Add0~23\ : std_logic;
SIGNAL \r2|Add0~24_combout\ : std_logic;
SIGNAL \r2|Add0~25\ : std_logic;
SIGNAL \r2|Add0~27\ : std_logic;
SIGNAL \r2|Add0~28_combout\ : std_logic;
SIGNAL \r2|Add0~29\ : std_logic;
SIGNAL \r2|Add0~31\ : std_logic;
SIGNAL \r2|Add0~33\ : std_logic;
SIGNAL \r2|Add0~34_combout\ : std_logic;
SIGNAL \r2|Add0~35\ : std_logic;
SIGNAL \r2|Add0~37\ : std_logic;
SIGNAL \r2|Add0~38_combout\ : std_logic;
SIGNAL \r2|Add0~32_combout\ : std_logic;
SIGNAL \r2|Equal0~5_combout\ : std_logic;
SIGNAL \r2|Equal0~0_combout\ : std_logic;
SIGNAL \r2|Add0~12_combout\ : std_logic;
SIGNAL \r2|Equal0~2_combout\ : std_logic;
SIGNAL \r2|Add0~30_combout\ : std_logic;
SIGNAL \r2|Add0~0_combout\ : std_logic;
SIGNAL \r2|reset_count~0_combout\ : std_logic;
SIGNAL \r2|Equal0~3_combout\ : std_logic;
SIGNAL \r2|Equal0~4_combout\ : std_logic;
SIGNAL \i2s|div_256|counter~1_combout\ : std_logic;
SIGNAL \r2|Equal0~6_combout\ : std_logic;
SIGNAL \i2s|div_256|counter~0_combout\ : std_logic;
SIGNAL \i2s|bck_prev~0_combout\ : std_logic;
SIGNAL \i2s|bck_prev~regout\ : std_logic;
SIGNAL \i2s|always0~0_combout\ : std_logic;
SIGNAL \i2s|bitcount[0]~7_combout\ : std_logic;
SIGNAL \i2s|bitcount[1]~11\ : std_logic;
SIGNAL \i2s|bitcount[2]~13\ : std_logic;
SIGNAL \i2s|bitcount[3]~15\ : std_logic;
SIGNAL \i2s|bitcount[4]~16_combout\ : std_logic;
SIGNAL \i2s|bitcount[3]~14_combout\ : std_logic;
SIGNAL \i2s|bitcount[0]~8_combout\ : std_logic;
SIGNAL \i2s|Equal0~0_combout\ : std_logic;
SIGNAL \i2s|Equal0~1_combout\ : std_logic;
SIGNAL \i2s|bitcount[0]~6_combout\ : std_logic;
SIGNAL \i2s|data_shift~5_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~0_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~1\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~3\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \reader|state[0]~10\ : std_logic;
SIGNAL \reader|state[1]~12\ : std_logic;
SIGNAL \reader|state[2]~13_combout\ : std_logic;
SIGNAL \reader|state[2]~14\ : std_logic;
SIGNAL \reader|state[3]~15_combout\ : std_logic;
SIGNAL \reader|state[3]~16\ : std_logic;
SIGNAL \reader|state[4]~17_combout\ : std_logic;
SIGNAL \reader|state[1]~11_combout\ : std_logic;
SIGNAL \reader|Decoder0~0_combout\ : std_logic;
SIGNAL \reader|state[0]~9_combout\ : std_logic;
SIGNAL \reader|state[4]~18\ : std_logic;
SIGNAL \reader|state[5]~20\ : std_logic;
SIGNAL \reader|state[6]~22\ : std_logic;
SIGNAL \reader|state[7]~24\ : std_logic;
SIGNAL \reader|state[8]~25_combout\ : std_logic;
SIGNAL \reader|state[5]~19_combout\ : std_logic;
SIGNAL \reader|state[6]~21_combout\ : std_logic;
SIGNAL \reader|Decoder1~0_combout\ : std_logic;
SIGNAL \reader|WideOr1~0_combout\ : std_logic;
SIGNAL \reader|WideOr1~1_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[1]~0_combout\ : std_logic;
SIGNAL \reader|buttons~2_combout\ : std_logic;
SIGNAL \reader|Decoder1~3_combout\ : std_logic;
SIGNAL \reader|buttons[5]~1_combout\ : std_logic;
SIGNAL \triangles[6][19]~9_combout\ : std_logic;
SIGNAL \reader|buttons~0_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~3\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \triangles[7][18]~10_combout\ : std_logic;
SIGNAL \triangles[7][17]~12_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \triangles[6][16]~15_combout\ : std_logic;
SIGNAL \triangles[7][15]~16_combout\ : std_logic;
SIGNAL \triangles[6][14]~19_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \triangles[6][13]~21_combout\ : std_logic;
SIGNAL \triangles[7][12]~22_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \triangles[6][11]~25_combout\ : std_logic;
SIGNAL \triangles[7][10]~26_combout\ : std_logic;
SIGNAL \triangles[6][9]~29_combout\ : std_logic;
SIGNAL \triangles[6][8]~31_combout\ : std_logic;
SIGNAL \triangles[7][7]~32_combout\ : std_logic;
SIGNAL \triangles[7][6]~34_combout\ : std_logic;
SIGNAL \triangles[6][5]~37_combout\ : std_logic;
SIGNAL \triangles[7][4]~38_combout\ : std_logic;
SIGNAL \triangles[7][3]~40_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \triangles[7][2]~42_combout\ : std_logic;
SIGNAL \triangles[7][1]~44_combout\ : std_logic;
SIGNAL \wavies[7].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \triangles[7][0]~46_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \reader|Decoder0~3_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[4]~3_combout\ : std_logic;
SIGNAL \reader|buttons~5_combout\ : std_logic;
SIGNAL \triangles[2][15]~112_combout\ : std_logic;
SIGNAL \reader|Decoder0~6_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[7]~6_combout\ : std_logic;
SIGNAL \reader|buttons~8_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~0_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~3\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \triangles[3][14]~115_combout\ : std_logic;
SIGNAL \triangles[2][13]~116_combout\ : std_logic;
SIGNAL \triangles[3][12]~119_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \triangles[3][11]~121_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~3_cout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \triangles[2][10]~122_combout\ : std_logic;
SIGNAL \triangles[2][9]~124_combout\ : std_logic;
SIGNAL \triangles[3][8]~127_combout\ : std_logic;
SIGNAL \triangles[3][7]~129_combout\ : std_logic;
SIGNAL \triangles[2][6]~130_combout\ : std_logic;
SIGNAL \triangles[2][5]~132_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \triangles[2][4]~134_combout\ : std_logic;
SIGNAL \triangles[3][3]~137_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \triangles[3][2]~139_combout\ : std_logic;
SIGNAL \triangles[3][1]~141_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \triangles[2][0]~142_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \reader|Decoder0~4_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[5]~4_combout\ : std_logic;
SIGNAL \reader|buttons~6_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~1\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~3_cout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \triangles[0][13]~164_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~1_cout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~3_cout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \reader|Decoder0~5_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[6]~5_combout\ : std_logic;
SIGNAL \reader|buttons~7_combout\ : std_logic;
SIGNAL \triangles[1][12]~167_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \triangles[1][11]~169_combout\ : std_logic;
SIGNAL \triangles[1][10]~171_combout\ : std_logic;
SIGNAL \triangles[1][9]~173_combout\ : std_logic;
SIGNAL \triangles[1][8]~175_combout\ : std_logic;
SIGNAL \triangles[0][7]~176_combout\ : std_logic;
SIGNAL \triangles[1][6]~179_combout\ : std_logic;
SIGNAL \triangles[1][5]~181_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \triangles[1][4]~183_combout\ : std_logic;
SIGNAL \triangles[0][3]~184_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \triangles[0][2]~186_combout\ : std_logic;
SIGNAL \triangles[0][1]~188_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \triangles[1][0]~191_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~3\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \triangles[5][13]~69_combout\ : std_logic;
SIGNAL \NES_DO~combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[3]~2_combout\ : std_logic;
SIGNAL \reader|buttons~4_combout\ : std_logic;
SIGNAL \triangles[5][12]~71_combout\ : std_logic;
SIGNAL \reader|Decoder0~1_combout\ : std_logic;
SIGNAL \reader|buttons_latch_next[2]~1_combout\ : std_logic;
SIGNAL \reader|buttons~3_combout\ : std_logic;
SIGNAL \triangles[4][11]~72_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~3\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~5\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~7\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~9\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~11\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~13\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~15\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~17\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~19\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~21\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~23\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~25\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~27\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~29\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~31\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~33\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \triangles[4][10]~74_combout\ : std_logic;
SIGNAL \triangles[4][9]~76_combout\ : std_logic;
SIGNAL \triangles[5][8]~79_combout\ : std_logic;
SIGNAL \triangles[4][7]~80_combout\ : std_logic;
SIGNAL \triangles[4][6]~82_combout\ : std_logic;
SIGNAL \triangles[4][5]~84_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \triangles[5][4]~87_combout\ : std_logic;
SIGNAL \triangles[5][3]~89_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \triangles[4][2]~90_combout\ : std_logic;
SIGNAL \triangles[4][1]~92_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \triangles[5][0]~95_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3_cout\ : std_logic;
SIGNAL \d[0]~1\ : std_logic;
SIGNAL \d[1]~3\ : std_logic;
SIGNAL \d[2]~5\ : std_logic;
SIGNAL \d[3]~7\ : std_logic;
SIGNAL \d[4]~9\ : std_logic;
SIGNAL \d[5]~11\ : std_logic;
SIGNAL \d[6]~13\ : std_logic;
SIGNAL \d[7]~15\ : std_logic;
SIGNAL \d[8]~17\ : std_logic;
SIGNAL \d[9]~19\ : std_logic;
SIGNAL \d[10]~21\ : std_logic;
SIGNAL \d[11]~23\ : std_logic;
SIGNAL \d[12]~25\ : std_logic;
SIGNAL \d[13]~27\ : std_logic;
SIGNAL \d[14]~29\ : std_logic;
SIGNAL \d[15]~31\ : std_logic;
SIGNAL \d[16]~33\ : std_logic;
SIGNAL \d[17]~34_combout\ : std_logic;
SIGNAL \i2s|data_shift~10_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \triangles[3][20]~103_combout\ : std_logic;
SIGNAL \triangles[3][19]~105_combout\ : std_logic;
SIGNAL \triangles[2][18]~106_combout\ : std_logic;
SIGNAL \triangles[3][17]~109_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \triangles[3][16]~111_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \triangles[1][19]~153_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \triangles[1][18]~155_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \triangles[0][17]~156_combout\ : std_logic;
SIGNAL \wavies[0].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \triangles[0][16]~158_combout\ : std_logic;
SIGNAL \triangles[0][15]~160_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \triangles[1][14]~163_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \triangles[4][19]~56_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \triangles[4][18]~58_combout\ : std_logic;
SIGNAL \triangles[4][17]~60_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \triangles[4][16]~62_combout\ : std_logic;
SIGNAL \triangles[4][15]~64_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \triangles[5][14]~67_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \d[17]~35\ : std_logic;
SIGNAL \d[18]~36_combout\ : std_logic;
SIGNAL \i2s|data_shift~9_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~35\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~37\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~39\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~41\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \triangles[2][21]~100_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \d[18]~37\ : std_logic;
SIGNAL \d[19]~38_combout\ : std_logic;
SIGNAL \i2s|data_shift~8_combout\ : std_logic;
SIGNAL \triangles[6][22]~3_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[6].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[6].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \triangles[6][21]~5_combout\ : std_logic;
SIGNAL \triangles[6][20]~7_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \d[19]~39\ : std_logic;
SIGNAL \d[20]~40_combout\ : std_logic;
SIGNAL \i2s|data_shift~7_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~43\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~45\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~47\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~49\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~51\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[5].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[5].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \triangles[5][23]~49_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~53\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[4].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \triangles[4][23]~48_combout\ : std_logic;
SIGNAL \triangles[4][22]~50_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \triangles[4][21]~52_combout\ : std_logic;
SIGNAL \wavies[4].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \triangles[4][20]~54_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[2].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[2].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \triangles[2][23]~96_combout\ : std_logic;
SIGNAL \triangles[2][22]~98_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~55\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~57\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~59\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~61\ : std_logic;
SIGNAL \wavies[1].triangle_gen|Add1~62_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|count~1_combout\ : std_logic;
SIGNAL \triangles[1][22]~147_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|count~2_combout\ : std_logic;
SIGNAL \triangles[1][21]~149_combout\ : std_logic;
SIGNAL \wavies[1].triangle_gen|count~3_combout\ : std_logic;
SIGNAL \triangles[1][20]~151_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \d[20]~41\ : std_logic;
SIGNAL \d[21]~42_combout\ : std_logic;
SIGNAL \i2s|data_shift~6_combout\ : std_logic;
SIGNAL \i2s|data_shift~4_combout\ : std_logic;
SIGNAL \i2s|data_shift~3_combout\ : std_logic;
SIGNAL \i2s|data_shift~2_combout\ : std_logic;
SIGNAL \i2s|LRCK~0_combout\ : std_logic;
SIGNAL \i2s|LRCK~regout\ : std_logic;
SIGNAL \reader|div|counter[0]~7_combout\ : std_logic;
SIGNAL \reader|div|counter[5]~17_combout\ : std_logic;
SIGNAL \reader|div|counter[1]~22_combout\ : std_logic;
SIGNAL \reader|div|counter[1]~21_combout\ : std_logic;
SIGNAL \reader|div|counter[1]~23_combout\ : std_logic;
SIGNAL \reader|div|counter[0]~8\ : std_logic;
SIGNAL \reader|div|counter[1]~10\ : std_logic;
SIGNAL \reader|div|counter[2]~11_combout\ : std_logic;
SIGNAL \reader|div|counter[2]~12\ : std_logic;
SIGNAL \reader|div|counter[3]~14\ : std_logic;
SIGNAL \reader|div|counter[4]~15_combout\ : std_logic;
SIGNAL \reader|div|counter[4]~16\ : std_logic;
SIGNAL \reader|div|counter[5]~18\ : std_logic;
SIGNAL \reader|div|counter[6]~19_combout\ : std_logic;
SIGNAL \reader|div|LessThan0~combout\ : std_logic;
SIGNAL \reader|Decoder1~1_combout\ : std_logic;
SIGNAL \reader|Decoder1~2_combout\ : std_logic;
SIGNAL \reader|WideOr0~0_combout\ : std_logic;
SIGNAL \reader|WideOr0~1_combout\ : std_logic;
SIGNAL \wavies[3].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[4].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[5].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[6].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[7].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2s|data_shift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2s|bitcount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i2s|div_256|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r|reset_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \r2|reset_count\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \reader|state\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reader|buttons_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reader|buttons\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reader|div|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \init|i2c_init|init_data_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \init|i2c_init|init_data.raddr_a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \init|i2c_init|data_ptr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \init|i2c_init|data_out_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \init|i2c_init|cur_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \init|i2c_init|cmd_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \init|i2c_init|address_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \init|i2c_init|address_ptr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \init|i2c_init_start_pulse|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \init|i2c_master|delay_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \init|i2c_master|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \init|i2c_master|bit_count_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \init|i2c_master|addr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wavies[0].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[1].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wavies[2].triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \init|i2c_master|ALT_INV_scl_o_reg~regout\ : std_logic;
SIGNAL \init|i2c_master|ALT_INV_sda_o_reg~regout\ : std_logic;
SIGNAL \r|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \i2s|div_256|ALT_INV_counter\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
GPIO_0 <= ww_GPIO_0;
AUD_XCK <= ww_AUD_XCK;
NES_PS <= ww_NES_PS;
NES_CK <= ww_NES_CK;
ww_NES_DO <= NES_DO;
AUD_BCLK <= ww_AUD_BCLK;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_12_5~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_12_5~regout\);

\i2s|LRCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i2s|LRCK~regout\);

\reader|div|LessThan0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reader|div|LessThan0~combout\);
\init|i2c_master|ALT_INV_scl_o_reg~regout\ <= NOT \init|i2c_master|scl_o_reg~regout\;
\init|i2c_master|ALT_INV_sda_o_reg~regout\ <= NOT \init|i2c_master|sda_o_reg~regout\;
\r|ALT_INV_Equal0~4_combout\ <= NOT \r|Equal0~4_combout\;
\i2s|div_256|ALT_INV_counter\(1) <= NOT \i2s|div_256|counter\(1);

-- Location: LCFF_X33_Y21_N29
\reader|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[7]~23_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(7));

-- Location: LCFF_X36_Y23_N11
\i2s|bitcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[2]~12_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(2));

-- Location: LCFF_X36_Y23_N17
\i2s|bitcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[5]~18_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(5));

-- Location: LCCOMB_X33_Y21_N28
\reader|state[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[7]~23_combout\ = (\reader|state\(7) & (!\reader|state[6]~22\)) # (!\reader|state\(7) & ((\reader|state[6]~22\) # (GND)))
-- \reader|state[7]~24\ = CARRY((!\reader|state[6]~22\) # (!\reader|state\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(7),
	datad => VCC,
	cin => \reader|state[6]~22\,
	combout => \reader|state[7]~23_combout\,
	cout => \reader|state[7]~24\);

-- Location: LCFF_X35_Y21_N21
\reader|buttons_latch[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|Selector0~2_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(0));

-- Location: LCCOMB_X36_Y23_N10
\i2s|bitcount[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[2]~12_combout\ = (\i2s|bitcount\(2) & (\i2s|bitcount[1]~11\ $ (GND))) # (!\i2s|bitcount\(2) & (!\i2s|bitcount[1]~11\ & VCC))
-- \i2s|bitcount[2]~13\ = CARRY((\i2s|bitcount\(2) & !\i2s|bitcount[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(2),
	datad => VCC,
	cin => \i2s|bitcount[1]~11\,
	combout => \i2s|bitcount[2]~12_combout\,
	cout => \i2s|bitcount[2]~13\);

-- Location: LCCOMB_X36_Y23_N14
\i2s|bitcount[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[4]~16_combout\ = (\i2s|bitcount\(4) & (\i2s|bitcount[3]~15\ $ (GND))) # (!\i2s|bitcount\(4) & (!\i2s|bitcount[3]~15\ & VCC))
-- \i2s|bitcount[4]~17\ = CARRY((\i2s|bitcount\(4) & !\i2s|bitcount[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(4),
	datad => VCC,
	cin => \i2s|bitcount[3]~15\,
	combout => \i2s|bitcount[4]~16_combout\,
	cout => \i2s|bitcount[4]~17\);

-- Location: LCCOMB_X36_Y23_N16
\i2s|bitcount[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[5]~18_combout\ = \i2s|bitcount\(5) $ (\i2s|bitcount[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(5),
	cin => \i2s|bitcount[4]~17\,
	combout => \i2s|bitcount[5]~18_combout\);

-- Location: LCCOMB_X38_Y24_N16
\r2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~4_combout\ = (\r2|reset_count\(2) & (\r2|Add0~3\ $ (GND))) # (!\r2|reset_count\(2) & (!\r2|Add0~3\ & VCC))
-- \r2|Add0~5\ = CARRY((\r2|reset_count\(2) & !\r2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(2),
	datad => VCC,
	cin => \r2|Add0~3\,
	combout => \r2|Add0~4_combout\,
	cout => \r2|Add0~5\);

-- Location: LCCOMB_X38_Y23_N6
\r2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~26_combout\ = (\r2|reset_count\(13) & (!\r2|Add0~25\)) # (!\r2|reset_count\(13) & ((\r2|Add0~25\) # (GND)))
-- \r2|Add0~27\ = CARRY((!\r2|Add0~25\) # (!\r2|reset_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(13),
	datad => VCC,
	cin => \r2|Add0~25\,
	combout => \r2|Add0~26_combout\,
	cout => \r2|Add0~27\);

-- Location: LCCOMB_X38_Y23_N16
\r2|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~36_combout\ = (\r2|reset_count\(18) & (\r2|Add0~35\ $ (GND))) # (!\r2|reset_count\(18) & (!\r2|Add0~35\ & VCC))
-- \r2|Add0~37\ = CARRY((\r2|reset_count\(18) & !\r2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(18),
	datad => VCC,
	cin => \r2|Add0~35\,
	combout => \r2|Add0~36_combout\,
	cout => \r2|Add0~37\);

-- Location: LCCOMB_X38_Y23_N18
\r2|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~38_combout\ = (\r2|reset_count\(19) & (!\r2|Add0~37\)) # (!\r2|reset_count\(19) & ((\r2|Add0~37\) # (GND)))
-- \r2|Add0~39\ = CARRY((!\r2|Add0~37\) # (!\r2|reset_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(19),
	datad => VCC,
	cin => \r2|Add0~37\,
	combout => \r2|Add0~38_combout\,
	cout => \r2|Add0~39\);

-- Location: LCCOMB_X38_Y23_N20
\r2|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~40_combout\ = \r2|reset_count\(20) $ (!\r2|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	cin => \r2|Add0~39\,
	combout => \r2|Add0~40_combout\);

-- Location: LCFF_X64_Y19_N21
\reader|div|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[3]~13_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(3));

-- Location: LCFF_X64_Y19_N17
\reader|div|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[1]~9_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(1));

-- Location: LCCOMB_X64_Y19_N16
\reader|div|counter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[1]~9_combout\ = (\reader|div|counter\(1) & (\reader|div|counter[0]~8\ & VCC)) # (!\reader|div|counter\(1) & (!\reader|div|counter[0]~8\))
-- \reader|div|counter[1]~10\ = CARRY((!\reader|div|counter\(1) & !\reader|div|counter[0]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|div|counter\(1),
	datad => VCC,
	cin => \reader|div|counter[0]~8\,
	combout => \reader|div|counter[1]~9_combout\,
	cout => \reader|div|counter[1]~10\);

-- Location: LCCOMB_X64_Y19_N20
\reader|div|counter[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[3]~13_combout\ = (\reader|div|counter\(3) & (\reader|div|counter[2]~12\ & VCC)) # (!\reader|div|counter\(3) & (!\reader|div|counter[2]~12\))
-- \reader|div|counter[3]~14\ = CARRY((!\reader|div|counter\(3) & !\reader|div|counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|div|counter\(3),
	datad => VCC,
	cin => \reader|div|counter[2]~12\,
	combout => \reader|div|counter[3]~13_combout\,
	cout => \reader|div|counter[3]~14\);

-- Location: LCCOMB_X38_Y21_N0
\r|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~0_combout\ = \r|reset_count\(0) $ (VCC)
-- \r|Add0~1\ = CARRY(\r|reset_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(0),
	datad => VCC,
	combout => \r|Add0~0_combout\,
	cout => \r|Add0~1\);

-- Location: LCCOMB_X38_Y21_N4
\r|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~4_combout\ = (\r|reset_count\(2) & (\r|Add0~3\ $ (GND))) # (!\r|reset_count\(2) & (!\r|Add0~3\ & VCC))
-- \r|Add0~5\ = CARRY((\r|reset_count\(2) & !\r|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(2),
	datad => VCC,
	cin => \r|Add0~3\,
	combout => \r|Add0~4_combout\,
	cout => \r|Add0~5\);

-- Location: LCCOMB_X38_Y21_N22
\r|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~22_combout\ = (\r|reset_count\(11) & (!\r|Add0~21\)) # (!\r|reset_count\(11) & ((\r|Add0~21\) # (GND)))
-- \r|Add0~23\ = CARRY((!\r|Add0~21\) # (!\r|reset_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(11),
	datad => VCC,
	cin => \r|Add0~21\,
	combout => \r|Add0~22_combout\,
	cout => \r|Add0~23\);

-- Location: LCCOMB_X38_Y21_N24
\r|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~24_combout\ = (\r|reset_count\(12) & (\r|Add0~23\ $ (GND))) # (!\r|reset_count\(12) & (!\r|Add0~23\ & VCC))
-- \r|Add0~25\ = CARRY((\r|reset_count\(12) & !\r|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(12),
	datad => VCC,
	cin => \r|Add0~23\,
	combout => \r|Add0~24_combout\,
	cout => \r|Add0~25\);

-- Location: LCCOMB_X38_Y21_N26
\r|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~26_combout\ = (\r|reset_count\(13) & (!\r|Add0~25\)) # (!\r|reset_count\(13) & ((\r|Add0~25\) # (GND)))
-- \r|Add0~27\ = CARRY((!\r|Add0~25\) # (!\r|reset_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(13),
	datad => VCC,
	cin => \r|Add0~25\,
	combout => \r|Add0~26_combout\,
	cout => \r|Add0~27\);

-- Location: LCCOMB_X38_Y21_N28
\r|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~28_combout\ = \r|Add0~27\ $ (!\r|reset_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r|reset_count\(14),
	cin => \r|Add0~27\,
	combout => \r|Add0~28_combout\);

-- Location: LCFF_X43_Y24_N13
\init|i2c_master|state_reg.STATE_START_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector14~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_START_WAIT~regout\);

-- Location: LCCOMB_X46_Y24_N16
\init|i2c_master|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~0_combout\ = \init|i2c_master|delay_reg\(0) $ (VCC)
-- \init|i2c_master|Add2~1\ = CARRY(\init|i2c_master|delay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(0),
	datad => VCC,
	combout => \init|i2c_master|Add2~0_combout\,
	cout => \init|i2c_master|Add2~1\);

-- Location: LCCOMB_X46_Y24_N18
\init|i2c_master|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~2_combout\ = (\init|i2c_master|delay_reg\(1) & (\init|i2c_master|Add2~1\ & VCC)) # (!\init|i2c_master|delay_reg\(1) & (!\init|i2c_master|Add2~1\))
-- \init|i2c_master|Add2~3\ = CARRY((!\init|i2c_master|delay_reg\(1) & !\init|i2c_master|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(1),
	datad => VCC,
	cin => \init|i2c_master|Add2~1\,
	combout => \init|i2c_master|Add2~2_combout\,
	cout => \init|i2c_master|Add2~3\);

-- Location: LCCOMB_X46_Y24_N20
\init|i2c_master|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~4_combout\ = (\init|i2c_master|delay_reg\(2) & ((GND) # (!\init|i2c_master|Add2~3\))) # (!\init|i2c_master|delay_reg\(2) & (\init|i2c_master|Add2~3\ $ (GND)))
-- \init|i2c_master|Add2~5\ = CARRY((\init|i2c_master|delay_reg\(2)) # (!\init|i2c_master|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(2),
	datad => VCC,
	cin => \init|i2c_master|Add2~3\,
	combout => \init|i2c_master|Add2~4_combout\,
	cout => \init|i2c_master|Add2~5\);

-- Location: LCCOMB_X46_Y24_N22
\init|i2c_master|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~6_combout\ = (\init|i2c_master|delay_reg\(3) & (\init|i2c_master|Add2~5\ & VCC)) # (!\init|i2c_master|delay_reg\(3) & (!\init|i2c_master|Add2~5\))
-- \init|i2c_master|Add2~7\ = CARRY((!\init|i2c_master|delay_reg\(3) & !\init|i2c_master|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(3),
	datad => VCC,
	cin => \init|i2c_master|Add2~5\,
	combout => \init|i2c_master|Add2~6_combout\,
	cout => \init|i2c_master|Add2~7\);

-- Location: LCCOMB_X46_Y24_N24
\init|i2c_master|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~8_combout\ = (\init|i2c_master|delay_reg\(4) & ((GND) # (!\init|i2c_master|Add2~7\))) # (!\init|i2c_master|delay_reg\(4) & (\init|i2c_master|Add2~7\ $ (GND)))
-- \init|i2c_master|Add2~9\ = CARRY((\init|i2c_master|delay_reg\(4)) # (!\init|i2c_master|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(4),
	datad => VCC,
	cin => \init|i2c_master|Add2~7\,
	combout => \init|i2c_master|Add2~8_combout\,
	cout => \init|i2c_master|Add2~9\);

-- Location: LCCOMB_X46_Y24_N26
\init|i2c_master|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~10_combout\ = (\init|i2c_master|delay_reg\(5) & (\init|i2c_master|Add2~9\ & VCC)) # (!\init|i2c_master|delay_reg\(5) & (!\init|i2c_master|Add2~9\))
-- \init|i2c_master|Add2~11\ = CARRY((!\init|i2c_master|delay_reg\(5) & !\init|i2c_master|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(5),
	datad => VCC,
	cin => \init|i2c_master|Add2~9\,
	combout => \init|i2c_master|Add2~10_combout\,
	cout => \init|i2c_master|Add2~11\);

-- Location: LCCOMB_X46_Y24_N28
\init|i2c_master|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~12_combout\ = (\init|i2c_master|delay_reg\(6) & ((GND) # (!\init|i2c_master|Add2~11\))) # (!\init|i2c_master|delay_reg\(6) & (\init|i2c_master|Add2~11\ $ (GND)))
-- \init|i2c_master|Add2~13\ = CARRY((\init|i2c_master|delay_reg\(6)) # (!\init|i2c_master|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(6),
	datad => VCC,
	cin => \init|i2c_master|Add2~11\,
	combout => \init|i2c_master|Add2~12_combout\,
	cout => \init|i2c_master|Add2~13\);

-- Location: LCCOMB_X46_Y24_N30
\init|i2c_master|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~14_combout\ = (\init|i2c_master|delay_reg\(7) & (\init|i2c_master|Add2~13\ & VCC)) # (!\init|i2c_master|delay_reg\(7) & (!\init|i2c_master|Add2~13\))
-- \init|i2c_master|Add2~15\ = CARRY((!\init|i2c_master|delay_reg\(7) & !\init|i2c_master|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(7),
	datad => VCC,
	cin => \init|i2c_master|Add2~13\,
	combout => \init|i2c_master|Add2~14_combout\,
	cout => \init|i2c_master|Add2~15\);

-- Location: LCCOMB_X46_Y23_N0
\init|i2c_master|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~16_combout\ = (\init|i2c_master|delay_reg\(8) & ((GND) # (!\init|i2c_master|Add2~15\))) # (!\init|i2c_master|delay_reg\(8) & (\init|i2c_master|Add2~15\ $ (GND)))
-- \init|i2c_master|Add2~17\ = CARRY((\init|i2c_master|delay_reg\(8)) # (!\init|i2c_master|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(8),
	datad => VCC,
	cin => \init|i2c_master|Add2~15\,
	combout => \init|i2c_master|Add2~16_combout\,
	cout => \init|i2c_master|Add2~17\);

-- Location: LCCOMB_X46_Y23_N6
\init|i2c_master|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~22_combout\ = (\init|i2c_master|delay_reg\(11) & (\init|i2c_master|Add2~21\ & VCC)) # (!\init|i2c_master|delay_reg\(11) & (!\init|i2c_master|Add2~21\))
-- \init|i2c_master|Add2~23\ = CARRY((!\init|i2c_master|delay_reg\(11) & !\init|i2c_master|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(11),
	datad => VCC,
	cin => \init|i2c_master|Add2~21\,
	combout => \init|i2c_master|Add2~22_combout\,
	cout => \init|i2c_master|Add2~23\);

-- Location: LCCOMB_X46_Y23_N14
\init|i2c_master|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~30_combout\ = (\init|i2c_master|delay_reg\(15) & (\init|i2c_master|Add2~29\ & VCC)) # (!\init|i2c_master|delay_reg\(15) & (!\init|i2c_master|Add2~29\))
-- \init|i2c_master|Add2~31\ = CARRY((!\init|i2c_master|delay_reg\(15) & !\init|i2c_master|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(15),
	datad => VCC,
	cin => \init|i2c_master|Add2~29\,
	combout => \init|i2c_master|Add2~30_combout\,
	cout => \init|i2c_master|Add2~31\);

-- Location: LCFF_X45_Y25_N13
\init|i2c_master|phy_state_reg.PHY_STATE_START_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector59~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\);

-- Location: LCCOMB_X36_Y20_N16
\Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\triangles[6][4]~39_combout\ $ (\triangles[7][4]~38_combout\ $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\triangles[6][4]~39_combout\ & ((\triangles[7][4]~38_combout\) # (!\Add5~7\))) # (!\triangles[6][4]~39_combout\ & (\triangles[7][4]~38_combout\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][4]~39_combout\,
	datab => \triangles[7][4]~38_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X36_Y20_N18
\Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\triangles[7][5]~36_combout\ & ((\triangles[6][5]~37_combout\ & (\Add5~9\ & VCC)) # (!\triangles[6][5]~37_combout\ & (!\Add5~9\)))) # (!\triangles[7][5]~36_combout\ & ((\triangles[6][5]~37_combout\ & (!\Add5~9\)) # 
-- (!\triangles[6][5]~37_combout\ & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\triangles[7][5]~36_combout\ & (!\triangles[6][5]~37_combout\ & !\Add5~9\)) # (!\triangles[7][5]~36_combout\ & ((!\Add5~9\) # (!\triangles[6][5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][5]~36_combout\,
	datab => \triangles[6][5]~37_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X36_Y20_N22
\Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\triangles[6][7]~33_combout\ & ((\triangles[7][7]~32_combout\ & (\Add5~13\ & VCC)) # (!\triangles[7][7]~32_combout\ & (!\Add5~13\)))) # (!\triangles[6][7]~33_combout\ & ((\triangles[7][7]~32_combout\ & (!\Add5~13\)) # 
-- (!\triangles[7][7]~32_combout\ & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY((\triangles[6][7]~33_combout\ & (!\triangles[7][7]~32_combout\ & !\Add5~13\)) # (!\triangles[6][7]~33_combout\ & ((!\Add5~13\) # (!\triangles[7][7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][7]~33_combout\,
	datab => \triangles[7][7]~32_combout\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X36_Y20_N24
\Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\triangles[7][8]~30_combout\ $ (\triangles[6][8]~31_combout\ $ (!\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((\triangles[7][8]~30_combout\ & ((\triangles[6][8]~31_combout\) # (!\Add5~15\))) # (!\triangles[7][8]~30_combout\ & (\triangles[6][8]~31_combout\ & !\Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][8]~30_combout\,
	datab => \triangles[6][8]~31_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X36_Y20_N26
\Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\triangles[7][9]~28_combout\ & ((\triangles[6][9]~29_combout\ & (\Add5~17\ & VCC)) # (!\triangles[6][9]~29_combout\ & (!\Add5~17\)))) # (!\triangles[7][9]~28_combout\ & ((\triangles[6][9]~29_combout\ & (!\Add5~17\)) # 
-- (!\triangles[6][9]~29_combout\ & ((\Add5~17\) # (GND)))))
-- \Add5~19\ = CARRY((\triangles[7][9]~28_combout\ & (!\triangles[6][9]~29_combout\ & !\Add5~17\)) # (!\triangles[7][9]~28_combout\ & ((!\Add5~17\) # (!\triangles[6][9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][9]~28_combout\,
	datab => \triangles[6][9]~29_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X36_Y20_N28
\Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ((\triangles[6][10]~27_combout\ $ (\triangles[7][10]~26_combout\ $ (!\Add5~19\)))) # (GND)
-- \Add5~21\ = CARRY((\triangles[6][10]~27_combout\ & ((\triangles[7][10]~26_combout\) # (!\Add5~19\))) # (!\triangles[6][10]~27_combout\ & (\triangles[7][10]~26_combout\ & !\Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][10]~27_combout\,
	datab => \triangles[7][10]~26_combout\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X36_Y19_N4
\Add5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = ((\triangles[7][14]~18_combout\ $ (\triangles[6][14]~19_combout\ $ (!\Add5~27\)))) # (GND)
-- \Add5~29\ = CARRY((\triangles[7][14]~18_combout\ & ((\triangles[6][14]~19_combout\) # (!\Add5~27\))) # (!\triangles[7][14]~18_combout\ & (\triangles[6][14]~19_combout\ & !\Add5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][14]~18_combout\,
	datab => \triangles[6][14]~19_combout\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X36_Y19_N6
\Add5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\triangles[6][15]~17_combout\ & ((\triangles[7][15]~16_combout\ & (\Add5~29\ & VCC)) # (!\triangles[7][15]~16_combout\ & (!\Add5~29\)))) # (!\triangles[6][15]~17_combout\ & ((\triangles[7][15]~16_combout\ & (!\Add5~29\)) # 
-- (!\triangles[7][15]~16_combout\ & ((\Add5~29\) # (GND)))))
-- \Add5~31\ = CARRY((\triangles[6][15]~17_combout\ & (!\triangles[7][15]~16_combout\ & !\Add5~29\)) # (!\triangles[6][15]~17_combout\ & ((!\Add5~29\) # (!\triangles[7][15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][15]~17_combout\,
	datab => \triangles[7][15]~16_combout\,
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X36_Y19_N16
\Add5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = ((\triangles[7][20]~6_combout\ $ (\triangles[6][20]~7_combout\ $ (!\Add5~39\)))) # (GND)
-- \Add5~41\ = CARRY((\triangles[7][20]~6_combout\ & ((\triangles[6][20]~7_combout\) # (!\Add5~39\))) # (!\triangles[7][20]~6_combout\ & (\triangles[6][20]~7_combout\ & !\Add5~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][20]~6_combout\,
	datab => \triangles[6][20]~7_combout\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X36_Y19_N18
\Add5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (\triangles[7][21]~4_combout\ & ((\triangles[6][21]~5_combout\ & (\Add5~41\ & VCC)) # (!\triangles[6][21]~5_combout\ & (!\Add5~41\)))) # (!\triangles[7][21]~4_combout\ & ((\triangles[6][21]~5_combout\ & (!\Add5~41\)) # 
-- (!\triangles[6][21]~5_combout\ & ((\Add5~41\) # (GND)))))
-- \Add5~43\ = CARRY((\triangles[7][21]~4_combout\ & (!\triangles[6][21]~5_combout\ & !\Add5~41\)) # (!\triangles[7][21]~4_combout\ & ((!\Add5~41\) # (!\triangles[6][21]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][21]~4_combout\,
	datab => \triangles[6][21]~5_combout\,
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X36_Y19_N20
\Add5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = ((\triangles[7][22]~2_combout\ $ (\triangles[6][22]~3_combout\ $ (!\Add5~43\)))) # (GND)
-- \Add5~45\ = CARRY((\triangles[7][22]~2_combout\ & ((\triangles[6][22]~3_combout\) # (!\Add5~43\))) # (!\triangles[7][22]~2_combout\ & (\triangles[6][22]~3_combout\ & !\Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][22]~2_combout\,
	datab => \triangles[6][22]~3_combout\,
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X36_Y19_N22
\Add5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = \triangles[6][23]~1_combout\ $ (\triangles[7][23]~0_combout\ $ (\Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][23]~1_combout\,
	datab => \triangles[7][23]~0_combout\,
	cin => \Add5~45\,
	combout => \Add5~46_combout\);

-- Location: LCCOMB_X34_Y22_N16
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\triangles[4][4]~86_combout\ $ (\triangles[5][4]~87_combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\triangles[4][4]~86_combout\ & ((\triangles[5][4]~87_combout\) # (!\Add3~7\))) # (!\triangles[4][4]~86_combout\ & (\triangles[5][4]~87_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][4]~86_combout\,
	datab => \triangles[5][4]~87_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X34_Y22_N18
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\triangles[5][5]~85_combout\ & ((\triangles[4][5]~84_combout\ & (\Add3~9\ & VCC)) # (!\triangles[4][5]~84_combout\ & (!\Add3~9\)))) # (!\triangles[5][5]~85_combout\ & ((\triangles[4][5]~84_combout\ & (!\Add3~9\)) # 
-- (!\triangles[4][5]~84_combout\ & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\triangles[5][5]~85_combout\ & (!\triangles[4][5]~84_combout\ & !\Add3~9\)) # (!\triangles[5][5]~85_combout\ & ((!\Add3~9\) # (!\triangles[4][5]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][5]~85_combout\,
	datab => \triangles[4][5]~84_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X34_Y22_N22
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\triangles[5][7]~81_combout\ & ((\triangles[4][7]~80_combout\ & (\Add3~13\ & VCC)) # (!\triangles[4][7]~80_combout\ & (!\Add3~13\)))) # (!\triangles[5][7]~81_combout\ & ((\triangles[4][7]~80_combout\ & (!\Add3~13\)) # 
-- (!\triangles[4][7]~80_combout\ & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\triangles[5][7]~81_combout\ & (!\triangles[4][7]~80_combout\ & !\Add3~13\)) # (!\triangles[5][7]~81_combout\ & ((!\Add3~13\) # (!\triangles[4][7]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][7]~81_combout\,
	datab => \triangles[4][7]~80_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X34_Y22_N24
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\triangles[4][8]~78_combout\ $ (\triangles[5][8]~79_combout\ $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\triangles[4][8]~78_combout\ & ((\triangles[5][8]~79_combout\) # (!\Add3~15\))) # (!\triangles[4][8]~78_combout\ & (\triangles[5][8]~79_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][8]~78_combout\,
	datab => \triangles[5][8]~79_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X34_Y22_N26
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\triangles[5][9]~77_combout\ & ((\triangles[4][9]~76_combout\ & (\Add3~17\ & VCC)) # (!\triangles[4][9]~76_combout\ & (!\Add3~17\)))) # (!\triangles[5][9]~77_combout\ & ((\triangles[4][9]~76_combout\ & (!\Add3~17\)) # 
-- (!\triangles[4][9]~76_combout\ & ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((\triangles[5][9]~77_combout\ & (!\triangles[4][9]~76_combout\ & !\Add3~17\)) # (!\triangles[5][9]~77_combout\ & ((!\Add3~17\) # (!\triangles[4][9]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][9]~77_combout\,
	datab => \triangles[4][9]~76_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X34_Y22_N28
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\triangles[5][10]~75_combout\ $ (\triangles[4][10]~74_combout\ $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((\triangles[5][10]~75_combout\ & ((\triangles[4][10]~74_combout\) # (!\Add3~19\))) # (!\triangles[5][10]~75_combout\ & (\triangles[4][10]~74_combout\ & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][10]~75_combout\,
	datab => \triangles[4][10]~74_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X34_Y21_N4
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((\triangles[4][14]~66_combout\ $ (\triangles[5][14]~67_combout\ $ (!\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((\triangles[4][14]~66_combout\ & ((\triangles[5][14]~67_combout\) # (!\Add3~27\))) # (!\triangles[4][14]~66_combout\ & (\triangles[5][14]~67_combout\ & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][14]~66_combout\,
	datab => \triangles[5][14]~67_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X34_Y21_N6
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\triangles[5][15]~65_combout\ & ((\triangles[4][15]~64_combout\ & (\Add3~29\ & VCC)) # (!\triangles[4][15]~64_combout\ & (!\Add3~29\)))) # (!\triangles[5][15]~65_combout\ & ((\triangles[4][15]~64_combout\ & (!\Add3~29\)) # 
-- (!\triangles[4][15]~64_combout\ & ((\Add3~29\) # (GND)))))
-- \Add3~31\ = CARRY((\triangles[5][15]~65_combout\ & (!\triangles[4][15]~64_combout\ & !\Add3~29\)) # (!\triangles[5][15]~65_combout\ & ((!\Add3~29\) # (!\triangles[4][15]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][15]~65_combout\,
	datab => \triangles[4][15]~64_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X34_Y21_N16
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = ((\triangles[5][20]~55_combout\ $ (\triangles[4][20]~54_combout\ $ (!\Add3~39\)))) # (GND)
-- \Add3~41\ = CARRY((\triangles[5][20]~55_combout\ & ((\triangles[4][20]~54_combout\) # (!\Add3~39\))) # (!\triangles[5][20]~55_combout\ & (\triangles[4][20]~54_combout\ & !\Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][20]~55_combout\,
	datab => \triangles[4][20]~54_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X34_Y21_N18
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\triangles[5][21]~53_combout\ & ((\triangles[4][21]~52_combout\ & (\Add3~41\ & VCC)) # (!\triangles[4][21]~52_combout\ & (!\Add3~41\)))) # (!\triangles[5][21]~53_combout\ & ((\triangles[4][21]~52_combout\ & (!\Add3~41\)) # 
-- (!\triangles[4][21]~52_combout\ & ((\Add3~41\) # (GND)))))
-- \Add3~43\ = CARRY((\triangles[5][21]~53_combout\ & (!\triangles[4][21]~52_combout\ & !\Add3~41\)) # (!\triangles[5][21]~53_combout\ & ((!\Add3~41\) # (!\triangles[4][21]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][21]~53_combout\,
	datab => \triangles[4][21]~52_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X32_Y24_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\triangles[2][1]~140_combout\ & ((\triangles[3][1]~141_combout\ & (\Add1~1\ & VCC)) # (!\triangles[3][1]~141_combout\ & (!\Add1~1\)))) # (!\triangles[2][1]~140_combout\ & ((\triangles[3][1]~141_combout\ & (!\Add1~1\)) # 
-- (!\triangles[3][1]~141_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\triangles[2][1]~140_combout\ & (!\triangles[3][1]~141_combout\ & !\Add1~1\)) # (!\triangles[2][1]~140_combout\ & ((!\Add1~1\) # (!\triangles[3][1]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][1]~140_combout\,
	datab => \triangles[3][1]~141_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X32_Y24_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\triangles[2][2]~138_combout\ $ (\triangles[3][2]~139_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\triangles[2][2]~138_combout\ & ((\triangles[3][2]~139_combout\) # (!\Add1~3\))) # (!\triangles[2][2]~138_combout\ & (\triangles[3][2]~139_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][2]~138_combout\,
	datab => \triangles[3][2]~139_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X32_Y24_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\triangles[2][3]~136_combout\ & ((\triangles[3][3]~137_combout\ & (\Add1~5\ & VCC)) # (!\triangles[3][3]~137_combout\ & (!\Add1~5\)))) # (!\triangles[2][3]~136_combout\ & ((\triangles[3][3]~137_combout\ & (!\Add1~5\)) # 
-- (!\triangles[3][3]~137_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\triangles[2][3]~136_combout\ & (!\triangles[3][3]~137_combout\ & !\Add1~5\)) # (!\triangles[2][3]~136_combout\ & ((!\Add1~5\) # (!\triangles[3][3]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][3]~136_combout\,
	datab => \triangles[3][3]~137_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X32_Y24_N20
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\triangles[3][6]~131_combout\ $ (\triangles[2][6]~130_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\triangles[3][6]~131_combout\ & ((\triangles[2][6]~130_combout\) # (!\Add1~11\))) # (!\triangles[3][6]~131_combout\ & (\triangles[2][6]~130_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][6]~131_combout\,
	datab => \triangles[2][6]~130_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X32_Y24_N24
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\triangles[2][8]~126_combout\ $ (\triangles[3][8]~127_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\triangles[2][8]~126_combout\ & ((\triangles[3][8]~127_combout\) # (!\Add1~15\))) # (!\triangles[2][8]~126_combout\ & (\triangles[3][8]~127_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][8]~126_combout\,
	datab => \triangles[3][8]~127_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X32_Y24_N30
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\triangles[2][11]~120_combout\ & ((\triangles[3][11]~121_combout\ & (\Add1~21\ & VCC)) # (!\triangles[3][11]~121_combout\ & (!\Add1~21\)))) # (!\triangles[2][11]~120_combout\ & ((\triangles[3][11]~121_combout\ & (!\Add1~21\)) # 
-- (!\triangles[3][11]~121_combout\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\triangles[2][11]~120_combout\ & (!\triangles[3][11]~121_combout\ & !\Add1~21\)) # (!\triangles[2][11]~120_combout\ & ((!\Add1~21\) # (!\triangles[3][11]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][11]~120_combout\,
	datab => \triangles[3][11]~121_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X32_Y23_N0
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\triangles[2][12]~118_combout\ $ (\triangles[3][12]~119_combout\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\triangles[2][12]~118_combout\ & ((\triangles[3][12]~119_combout\) # (!\Add1~23\))) # (!\triangles[2][12]~118_combout\ & (\triangles[3][12]~119_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][12]~118_combout\,
	datab => \triangles[3][12]~119_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X32_Y23_N2
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\triangles[3][13]~117_combout\ & ((\triangles[2][13]~116_combout\ & (\Add1~25\ & VCC)) # (!\triangles[2][13]~116_combout\ & (!\Add1~25\)))) # (!\triangles[3][13]~117_combout\ & ((\triangles[2][13]~116_combout\ & (!\Add1~25\)) # 
-- (!\triangles[2][13]~116_combout\ & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\triangles[3][13]~117_combout\ & (!\triangles[2][13]~116_combout\ & !\Add1~25\)) # (!\triangles[3][13]~117_combout\ & ((!\Add1~25\) # (!\triangles[2][13]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][13]~117_combout\,
	datab => \triangles[2][13]~116_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X32_Y23_N8
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\triangles[2][16]~110_combout\ $ (\triangles[3][16]~111_combout\ $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\triangles[2][16]~110_combout\ & ((\triangles[3][16]~111_combout\) # (!\Add1~31\))) # (!\triangles[2][16]~110_combout\ & (\triangles[3][16]~111_combout\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][16]~110_combout\,
	datab => \triangles[3][16]~111_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X32_Y23_N10
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\triangles[2][17]~108_combout\ & ((\triangles[3][17]~109_combout\ & (\Add1~33\ & VCC)) # (!\triangles[3][17]~109_combout\ & (!\Add1~33\)))) # (!\triangles[2][17]~108_combout\ & ((\triangles[3][17]~109_combout\ & (!\Add1~33\)) # 
-- (!\triangles[3][17]~109_combout\ & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\triangles[2][17]~108_combout\ & (!\triangles[3][17]~109_combout\ & !\Add1~33\)) # (!\triangles[2][17]~108_combout\ & ((!\Add1~33\) # (!\triangles[3][17]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][17]~108_combout\,
	datab => \triangles[3][17]~109_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X32_Y23_N12
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\triangles[3][18]~107_combout\ $ (\triangles[2][18]~106_combout\ $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\triangles[3][18]~107_combout\ & ((\triangles[2][18]~106_combout\) # (!\Add1~35\))) # (!\triangles[3][18]~107_combout\ & (\triangles[2][18]~106_combout\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][18]~107_combout\,
	datab => \triangles[2][18]~106_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X32_Y23_N14
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\triangles[2][19]~104_combout\ & ((\triangles[3][19]~105_combout\ & (\Add1~37\ & VCC)) # (!\triangles[3][19]~105_combout\ & (!\Add1~37\)))) # (!\triangles[2][19]~104_combout\ & ((\triangles[3][19]~105_combout\ & (!\Add1~37\)) # 
-- (!\triangles[3][19]~105_combout\ & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\triangles[2][19]~104_combout\ & (!\triangles[3][19]~105_combout\ & !\Add1~37\)) # (!\triangles[2][19]~104_combout\ & ((!\Add1~37\) # (!\triangles[3][19]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][19]~104_combout\,
	datab => \triangles[3][19]~105_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X32_Y23_N20
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\triangles[3][22]~99_combout\ $ (\triangles[2][22]~98_combout\ $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\triangles[3][22]~99_combout\ & ((\triangles[2][22]~98_combout\) # (!\Add1~43\))) # (!\triangles[3][22]~99_combout\ & (\triangles[2][22]~98_combout\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][22]~99_combout\,
	datab => \triangles[2][22]~98_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X34_Y20_N8
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\triangles[0][0]~190_combout\ & (\triangles[1][0]~191_combout\ $ (VCC))) # (!\triangles[0][0]~190_combout\ & (\triangles[1][0]~191_combout\ & VCC))
-- \Add0~1\ = CARRY((\triangles[0][0]~190_combout\ & \triangles[1][0]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][0]~190_combout\,
	datab => \triangles[1][0]~191_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X34_Y20_N16
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\triangles[0][4]~182_combout\ $ (\triangles[1][4]~183_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\triangles[0][4]~182_combout\ & ((\triangles[1][4]~183_combout\) # (!\Add0~7\))) # (!\triangles[0][4]~182_combout\ & (\triangles[1][4]~183_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][4]~182_combout\,
	datab => \triangles[1][4]~183_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X34_Y20_N18
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\triangles[0][5]~180_combout\ & ((\triangles[1][5]~181_combout\ & (\Add0~9\ & VCC)) # (!\triangles[1][5]~181_combout\ & (!\Add0~9\)))) # (!\triangles[0][5]~180_combout\ & ((\triangles[1][5]~181_combout\ & (!\Add0~9\)) # 
-- (!\triangles[1][5]~181_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\triangles[0][5]~180_combout\ & (!\triangles[1][5]~181_combout\ & !\Add0~9\)) # (!\triangles[0][5]~180_combout\ & ((!\Add0~9\) # (!\triangles[1][5]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][5]~180_combout\,
	datab => \triangles[1][5]~181_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X34_Y20_N22
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\triangles[1][7]~177_combout\ & ((\triangles[0][7]~176_combout\ & (\Add0~13\ & VCC)) # (!\triangles[0][7]~176_combout\ & (!\Add0~13\)))) # (!\triangles[1][7]~177_combout\ & ((\triangles[0][7]~176_combout\ & (!\Add0~13\)) # 
-- (!\triangles[0][7]~176_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\triangles[1][7]~177_combout\ & (!\triangles[0][7]~176_combout\ & !\Add0~13\)) # (!\triangles[1][7]~177_combout\ & ((!\Add0~13\) # (!\triangles[0][7]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][7]~177_combout\,
	datab => \triangles[0][7]~176_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X34_Y20_N26
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\triangles[0][9]~172_combout\ & ((\triangles[1][9]~173_combout\ & (\Add0~17\ & VCC)) # (!\triangles[1][9]~173_combout\ & (!\Add0~17\)))) # (!\triangles[0][9]~172_combout\ & ((\triangles[1][9]~173_combout\ & (!\Add0~17\)) # 
-- (!\triangles[1][9]~173_combout\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\triangles[0][9]~172_combout\ & (!\triangles[1][9]~173_combout\ & !\Add0~17\)) # (!\triangles[0][9]~172_combout\ & ((!\Add0~17\) # (!\triangles[1][9]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][9]~172_combout\,
	datab => \triangles[1][9]~173_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X34_Y20_N28
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\triangles[0][10]~170_combout\ $ (\triangles[1][10]~171_combout\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\triangles[0][10]~170_combout\ & ((\triangles[1][10]~171_combout\) # (!\Add0~19\))) # (!\triangles[0][10]~170_combout\ & (\triangles[1][10]~171_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][10]~170_combout\,
	datab => \triangles[1][10]~171_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X34_Y19_N4
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\triangles[0][14]~162_combout\ $ (\triangles[1][14]~163_combout\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\triangles[0][14]~162_combout\ & ((\triangles[1][14]~163_combout\) # (!\Add0~27\))) # (!\triangles[0][14]~162_combout\ & (\triangles[1][14]~163_combout\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][14]~162_combout\,
	datab => \triangles[1][14]~163_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X34_Y19_N6
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\triangles[1][15]~161_combout\ & ((\triangles[0][15]~160_combout\ & (\Add0~29\ & VCC)) # (!\triangles[0][15]~160_combout\ & (!\Add0~29\)))) # (!\triangles[1][15]~161_combout\ & ((\triangles[0][15]~160_combout\ & (!\Add0~29\)) # 
-- (!\triangles[0][15]~160_combout\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\triangles[1][15]~161_combout\ & (!\triangles[0][15]~160_combout\ & !\Add0~29\)) # (!\triangles[1][15]~161_combout\ & ((!\Add0~29\) # (!\triangles[0][15]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][15]~161_combout\,
	datab => \triangles[0][15]~160_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X34_Y19_N16
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\triangles[0][20]~150_combout\ $ (\triangles[1][20]~151_combout\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\triangles[0][20]~150_combout\ & ((\triangles[1][20]~151_combout\) # (!\Add0~39\))) # (!\triangles[0][20]~150_combout\ & (\triangles[1][20]~151_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][20]~150_combout\,
	datab => \triangles[1][20]~151_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X34_Y19_N18
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\triangles[0][21]~148_combout\ & ((\triangles[1][21]~149_combout\ & (\Add0~41\ & VCC)) # (!\triangles[1][21]~149_combout\ & (!\Add0~41\)))) # (!\triangles[0][21]~148_combout\ & ((\triangles[1][21]~149_combout\ & (!\Add0~41\)) # 
-- (!\triangles[1][21]~149_combout\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\triangles[0][21]~148_combout\ & (!\triangles[1][21]~149_combout\ & !\Add0~41\)) # (!\triangles[0][21]~148_combout\ & ((!\Add0~41\) # (!\triangles[1][21]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][21]~148_combout\,
	datab => \triangles[1][21]~149_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X34_Y19_N20
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\triangles[0][22]~146_combout\ $ (\triangles[1][22]~147_combout\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\triangles[0][22]~146_combout\ & ((\triangles[1][22]~147_combout\) # (!\Add0~43\))) # (!\triangles[0][22]~146_combout\ & (\triangles[1][22]~147_combout\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][22]~146_combout\,
	datab => \triangles[1][22]~147_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X34_Y19_N22
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = \triangles[0][23]~144_combout\ $ (\Add0~45\ $ (\triangles[1][23]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][23]~144_combout\,
	datad => \triangles[1][23]~145_combout\,
	cin => \Add0~45\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X33_Y24_N8
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X33_Y24_N10
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((\Add0~2_combout\ & (\Add2~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add2~1\)))) # (!\Add1~2_combout\ & ((\Add0~2_combout\ & (!\Add2~1\)) # (!\Add0~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (!\Add0~2_combout\ & !\Add2~1\)) # (!\Add1~2_combout\ & ((!\Add2~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X33_Y24_N12
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~4_combout\ $ (\Add0~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~4_combout\ & ((\Add0~4_combout\) # (!\Add2~3\))) # (!\Add1~4_combout\ & (\Add0~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X33_Y24_N14
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~6_combout\ & ((\Add0~6_combout\ & (\Add2~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add2~5\)))) # (!\Add1~6_combout\ & ((\Add0~6_combout\ & (!\Add2~5\)) # (!\Add0~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~6_combout\ & (!\Add0~6_combout\ & !\Add2~5\)) # (!\Add1~6_combout\ & ((!\Add2~5\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X33_Y24_N20
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add1~12_combout\ $ (\Add0~12_combout\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add1~12_combout\ & ((\Add0~12_combout\) # (!\Add2~11\))) # (!\Add1~12_combout\ & (\Add0~12_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X33_Y24_N30
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add1~22_combout\ & ((\Add0~22_combout\ & (\Add2~21\ & VCC)) # (!\Add0~22_combout\ & (!\Add2~21\)))) # (!\Add1~22_combout\ & ((\Add0~22_combout\ & (!\Add2~21\)) # (!\Add0~22_combout\ & ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Add1~22_combout\ & (!\Add0~22_combout\ & !\Add2~21\)) # (!\Add1~22_combout\ & ((!\Add2~21\) # (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X33_Y23_N0
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add1~24_combout\ $ (\Add0~24_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Add1~24_combout\ & ((\Add0~24_combout\) # (!\Add2~23\))) # (!\Add1~24_combout\ & (\Add0~24_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X33_Y23_N2
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add1~26_combout\ & ((\Add0~26_combout\ & (\Add2~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add2~25\)))) # (!\Add1~26_combout\ & ((\Add0~26_combout\ & (!\Add2~25\)) # (!\Add0~26_combout\ & ((\Add2~25\) # (GND)))))
-- \Add2~27\ = CARRY((\Add1~26_combout\ & (!\Add0~26_combout\ & !\Add2~25\)) # (!\Add1~26_combout\ & ((!\Add2~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X33_Y23_N8
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = ((\Add1~32_combout\ $ (\Add0~32_combout\ $ (!\Add2~31\)))) # (GND)
-- \Add2~33\ = CARRY((\Add1~32_combout\ & ((\Add0~32_combout\) # (!\Add2~31\))) # (!\Add1~32_combout\ & (\Add0~32_combout\ & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X33_Y23_N10
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add1~34_combout\ & ((\Add0~34_combout\ & (\Add2~33\ & VCC)) # (!\Add0~34_combout\ & (!\Add2~33\)))) # (!\Add1~34_combout\ & ((\Add0~34_combout\ & (!\Add2~33\)) # (!\Add0~34_combout\ & ((\Add2~33\) # (GND)))))
-- \Add2~35\ = CARRY((\Add1~34_combout\ & (!\Add0~34_combout\ & !\Add2~33\)) # (!\Add1~34_combout\ & ((!\Add2~33\) # (!\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X33_Y23_N12
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = ((\Add1~36_combout\ $ (\Add0~36_combout\ $ (!\Add2~35\)))) # (GND)
-- \Add2~37\ = CARRY((\Add1~36_combout\ & ((\Add0~36_combout\) # (!\Add2~35\))) # (!\Add1~36_combout\ & (\Add0~36_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X33_Y23_N14
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add1~38_combout\ & ((\Add0~38_combout\ & (\Add2~37\ & VCC)) # (!\Add0~38_combout\ & (!\Add2~37\)))) # (!\Add1~38_combout\ & ((\Add0~38_combout\ & (!\Add2~37\)) # (!\Add0~38_combout\ & ((\Add2~37\) # (GND)))))
-- \Add2~39\ = CARRY((\Add1~38_combout\ & (!\Add0~38_combout\ & !\Add2~37\)) # (!\Add1~38_combout\ & ((!\Add2~37\) # (!\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X33_Y23_N20
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = ((\Add1~44_combout\ $ (\Add0~44_combout\ $ (!\Add2~43\)))) # (GND)
-- \Add2~45\ = CARRY((\Add1~44_combout\ & ((\Add0~44_combout\) # (!\Add2~43\))) # (!\Add1~44_combout\ & (\Add0~44_combout\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X34_Y24_N8
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Add2~0_combout\ & (\Add3~0_combout\ $ (VCC))) # (!\Add2~0_combout\ & (\Add3~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\Add2~0_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X34_Y24_N10
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add2~2_combout\ & ((\Add3~2_combout\ & (\Add4~1\ & VCC)) # (!\Add3~2_combout\ & (!\Add4~1\)))) # (!\Add2~2_combout\ & ((\Add3~2_combout\ & (!\Add4~1\)) # (!\Add3~2_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add2~2_combout\ & (!\Add3~2_combout\ & !\Add4~1\)) # (!\Add2~2_combout\ & ((!\Add4~1\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X34_Y24_N12
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add2~4_combout\ $ (\Add3~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add2~4_combout\ & ((\Add3~4_combout\) # (!\Add4~3\))) # (!\Add2~4_combout\ & (\Add3~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X34_Y24_N14
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add2~6_combout\ & ((\Add3~6_combout\ & (\Add4~5\ & VCC)) # (!\Add3~6_combout\ & (!\Add4~5\)))) # (!\Add2~6_combout\ & ((\Add3~6_combout\ & (!\Add4~5\)) # (!\Add3~6_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add2~6_combout\ & (!\Add3~6_combout\ & !\Add4~5\)) # (!\Add2~6_combout\ & ((!\Add4~5\) # (!\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X34_Y24_N20
\Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Add2~12_combout\ $ (\Add3~12_combout\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Add2~12_combout\ & ((\Add3~12_combout\) # (!\Add4~11\))) # (!\Add2~12_combout\ & (\Add3~12_combout\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X34_Y24_N30
\Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Add2~22_combout\ & ((\Add3~22_combout\ & (\Add4~21\ & VCC)) # (!\Add3~22_combout\ & (!\Add4~21\)))) # (!\Add2~22_combout\ & ((\Add3~22_combout\ & (!\Add4~21\)) # (!\Add3~22_combout\ & ((\Add4~21\) # (GND)))))
-- \Add4~23\ = CARRY((\Add2~22_combout\ & (!\Add3~22_combout\ & !\Add4~21\)) # (!\Add2~22_combout\ & ((!\Add4~21\) # (!\Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add3~22_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X34_Y23_N0
\Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((\Add2~24_combout\ $ (\Add3~24_combout\ $ (!\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((\Add2~24_combout\ & ((\Add3~24_combout\) # (!\Add4~23\))) # (!\Add2~24_combout\ & (\Add3~24_combout\ & !\Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X34_Y23_N2
\Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Add2~26_combout\ & ((\Add3~26_combout\ & (\Add4~25\ & VCC)) # (!\Add3~26_combout\ & (!\Add4~25\)))) # (!\Add2~26_combout\ & ((\Add3~26_combout\ & (!\Add4~25\)) # (!\Add3~26_combout\ & ((\Add4~25\) # (GND)))))
-- \Add4~27\ = CARRY((\Add2~26_combout\ & (!\Add3~26_combout\ & !\Add4~25\)) # (!\Add2~26_combout\ & ((!\Add4~25\) # (!\Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add3~26_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X34_Y23_N8
\Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = ((\Add2~32_combout\ $ (\Add3~32_combout\ $ (!\Add4~31\)))) # (GND)
-- \Add4~33\ = CARRY((\Add2~32_combout\ & ((\Add3~32_combout\) # (!\Add4~31\))) # (!\Add2~32_combout\ & (\Add3~32_combout\ & !\Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add3~32_combout\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X34_Y23_N10
\Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\Add2~34_combout\ & ((\Add3~34_combout\ & (\Add4~33\ & VCC)) # (!\Add3~34_combout\ & (!\Add4~33\)))) # (!\Add2~34_combout\ & ((\Add3~34_combout\ & (!\Add4~33\)) # (!\Add3~34_combout\ & ((\Add4~33\) # (GND)))))
-- \Add4~35\ = CARRY((\Add2~34_combout\ & (!\Add3~34_combout\ & !\Add4~33\)) # (!\Add2~34_combout\ & ((!\Add4~33\) # (!\Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Add3~34_combout\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X34_Y23_N12
\Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = ((\Add2~36_combout\ $ (\Add3~36_combout\ $ (!\Add4~35\)))) # (GND)
-- \Add4~37\ = CARRY((\Add2~36_combout\ & ((\Add3~36_combout\) # (!\Add4~35\))) # (!\Add2~36_combout\ & (\Add3~36_combout\ & !\Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \Add3~36_combout\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X34_Y23_N14
\Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\Add2~38_combout\ & ((\Add3~38_combout\ & (\Add4~37\ & VCC)) # (!\Add3~38_combout\ & (!\Add4~37\)))) # (!\Add2~38_combout\ & ((\Add3~38_combout\ & (!\Add4~37\)) # (!\Add3~38_combout\ & ((\Add4~37\) # (GND)))))
-- \Add4~39\ = CARRY((\Add2~38_combout\ & (!\Add3~38_combout\ & !\Add4~37\)) # (!\Add2~38_combout\ & ((!\Add4~37\) # (!\Add3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \Add3~38_combout\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X34_Y23_N20
\Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = ((\Add2~44_combout\ $ (\Add3~44_combout\ $ (!\Add4~43\)))) # (GND)
-- \Add4~45\ = CARRY((\Add2~44_combout\ & ((\Add3~44_combout\) # (!\Add4~43\))) # (!\Add2~44_combout\ & (\Add3~44_combout\ & !\Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add3~44_combout\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X35_Y24_N12
\d[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[0]~0_combout\ = ((\Add4~4_combout\ $ (\Add5~4_combout\ $ (!\Add6~3_cout\)))) # (GND)
-- \d[0]~1\ = CARRY((\Add4~4_combout\ & ((\Add5~4_combout\) # (!\Add6~3_cout\))) # (!\Add4~4_combout\ & (\Add5~4_combout\ & !\Add6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \Add6~3_cout\,
	combout => \d[0]~0_combout\,
	cout => \d[0]~1\);

-- Location: LCCOMB_X35_Y24_N14
\d[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[1]~2_combout\ = (\Add4~6_combout\ & ((\Add5~6_combout\ & (\d[0]~1\ & VCC)) # (!\Add5~6_combout\ & (!\d[0]~1\)))) # (!\Add4~6_combout\ & ((\Add5~6_combout\ & (!\d[0]~1\)) # (!\Add5~6_combout\ & ((\d[0]~1\) # (GND)))))
-- \d[1]~3\ = CARRY((\Add4~6_combout\ & (!\Add5~6_combout\ & !\d[0]~1\)) # (!\Add4~6_combout\ & ((!\d[0]~1\) # (!\Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add5~6_combout\,
	datad => VCC,
	cin => \d[0]~1\,
	combout => \d[1]~2_combout\,
	cout => \d[1]~3\);

-- Location: LCCOMB_X35_Y24_N16
\d[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[2]~4_combout\ = ((\Add5~8_combout\ $ (\Add4~8_combout\ $ (!\d[1]~3\)))) # (GND)
-- \d[2]~5\ = CARRY((\Add5~8_combout\ & ((\Add4~8_combout\) # (!\d[1]~3\))) # (!\Add5~8_combout\ & (\Add4~8_combout\ & !\d[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \d[1]~3\,
	combout => \d[2]~4_combout\,
	cout => \d[2]~5\);

-- Location: LCCOMB_X35_Y24_N18
\d[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[3]~6_combout\ = (\Add5~10_combout\ & ((\Add4~10_combout\ & (\d[2]~5\ & VCC)) # (!\Add4~10_combout\ & (!\d[2]~5\)))) # (!\Add5~10_combout\ & ((\Add4~10_combout\ & (!\d[2]~5\)) # (!\Add4~10_combout\ & ((\d[2]~5\) # (GND)))))
-- \d[3]~7\ = CARRY((\Add5~10_combout\ & (!\Add4~10_combout\ & !\d[2]~5\)) # (!\Add5~10_combout\ & ((!\d[2]~5\) # (!\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add4~10_combout\,
	datad => VCC,
	cin => \d[2]~5\,
	combout => \d[3]~6_combout\,
	cout => \d[3]~7\);

-- Location: LCCOMB_X35_Y24_N20
\d[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[4]~8_combout\ = ((\Add4~12_combout\ $ (\Add5~12_combout\ $ (!\d[3]~7\)))) # (GND)
-- \d[4]~9\ = CARRY((\Add4~12_combout\ & ((\Add5~12_combout\) # (!\d[3]~7\))) # (!\Add4~12_combout\ & (\Add5~12_combout\ & !\d[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \d[3]~7\,
	combout => \d[4]~8_combout\,
	cout => \d[4]~9\);

-- Location: LCCOMB_X35_Y24_N22
\d[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[5]~10_combout\ = (\Add5~14_combout\ & ((\Add4~14_combout\ & (\d[4]~9\ & VCC)) # (!\Add4~14_combout\ & (!\d[4]~9\)))) # (!\Add5~14_combout\ & ((\Add4~14_combout\ & (!\d[4]~9\)) # (!\Add4~14_combout\ & ((\d[4]~9\) # (GND)))))
-- \d[5]~11\ = CARRY((\Add5~14_combout\ & (!\Add4~14_combout\ & !\d[4]~9\)) # (!\Add5~14_combout\ & ((!\d[4]~9\) # (!\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \Add4~14_combout\,
	datad => VCC,
	cin => \d[4]~9\,
	combout => \d[5]~10_combout\,
	cout => \d[5]~11\);

-- Location: LCCOMB_X35_Y24_N24
\d[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[6]~12_combout\ = ((\Add5~16_combout\ $ (\Add4~16_combout\ $ (!\d[5]~11\)))) # (GND)
-- \d[6]~13\ = CARRY((\Add5~16_combout\ & ((\Add4~16_combout\) # (!\d[5]~11\))) # (!\Add5~16_combout\ & (\Add4~16_combout\ & !\d[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Add4~16_combout\,
	datad => VCC,
	cin => \d[5]~11\,
	combout => \d[6]~12_combout\,
	cout => \d[6]~13\);

-- Location: LCCOMB_X35_Y24_N26
\d[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[7]~14_combout\ = (\Add5~18_combout\ & ((\Add4~18_combout\ & (\d[6]~13\ & VCC)) # (!\Add4~18_combout\ & (!\d[6]~13\)))) # (!\Add5~18_combout\ & ((\Add4~18_combout\ & (!\d[6]~13\)) # (!\Add4~18_combout\ & ((\d[6]~13\) # (GND)))))
-- \d[7]~15\ = CARRY((\Add5~18_combout\ & (!\Add4~18_combout\ & !\d[6]~13\)) # (!\Add5~18_combout\ & ((!\d[6]~13\) # (!\Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~18_combout\,
	datab => \Add4~18_combout\,
	datad => VCC,
	cin => \d[6]~13\,
	combout => \d[7]~14_combout\,
	cout => \d[7]~15\);

-- Location: LCCOMB_X35_Y24_N28
\d[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[8]~16_combout\ = ((\Add5~20_combout\ $ (\Add4~20_combout\ $ (!\d[7]~15\)))) # (GND)
-- \d[8]~17\ = CARRY((\Add5~20_combout\ & ((\Add4~20_combout\) # (!\d[7]~15\))) # (!\Add5~20_combout\ & (\Add4~20_combout\ & !\d[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \Add4~20_combout\,
	datad => VCC,
	cin => \d[7]~15\,
	combout => \d[8]~16_combout\,
	cout => \d[8]~17\);

-- Location: LCCOMB_X35_Y24_N30
\d[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[9]~18_combout\ = (\Add4~22_combout\ & ((\Add5~22_combout\ & (\d[8]~17\ & VCC)) # (!\Add5~22_combout\ & (!\d[8]~17\)))) # (!\Add4~22_combout\ & ((\Add5~22_combout\ & (!\d[8]~17\)) # (!\Add5~22_combout\ & ((\d[8]~17\) # (GND)))))
-- \d[9]~19\ = CARRY((\Add4~22_combout\ & (!\Add5~22_combout\ & !\d[8]~17\)) # (!\Add4~22_combout\ & ((!\d[8]~17\) # (!\Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => \Add5~22_combout\,
	datad => VCC,
	cin => \d[8]~17\,
	combout => \d[9]~18_combout\,
	cout => \d[9]~19\);

-- Location: LCCOMB_X35_Y23_N0
\d[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[10]~20_combout\ = ((\Add4~24_combout\ $ (\Add5~24_combout\ $ (!\d[9]~19\)))) # (GND)
-- \d[10]~21\ = CARRY((\Add4~24_combout\ & ((\Add5~24_combout\) # (!\d[9]~19\))) # (!\Add4~24_combout\ & (\Add5~24_combout\ & !\d[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \Add5~24_combout\,
	datad => VCC,
	cin => \d[9]~19\,
	combout => \d[10]~20_combout\,
	cout => \d[10]~21\);

-- Location: LCCOMB_X35_Y23_N2
\d[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[11]~22_combout\ = (\Add4~26_combout\ & ((\Add5~26_combout\ & (\d[10]~21\ & VCC)) # (!\Add5~26_combout\ & (!\d[10]~21\)))) # (!\Add4~26_combout\ & ((\Add5~26_combout\ & (!\d[10]~21\)) # (!\Add5~26_combout\ & ((\d[10]~21\) # (GND)))))
-- \d[11]~23\ = CARRY((\Add4~26_combout\ & (!\Add5~26_combout\ & !\d[10]~21\)) # (!\Add4~26_combout\ & ((!\d[10]~21\) # (!\Add5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \Add5~26_combout\,
	datad => VCC,
	cin => \d[10]~21\,
	combout => \d[11]~22_combout\,
	cout => \d[11]~23\);

-- Location: LCCOMB_X35_Y23_N4
\d[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[12]~24_combout\ = ((\Add5~28_combout\ $ (\Add4~28_combout\ $ (!\d[11]~23\)))) # (GND)
-- \d[12]~25\ = CARRY((\Add5~28_combout\ & ((\Add4~28_combout\) # (!\d[11]~23\))) # (!\Add5~28_combout\ & (\Add4~28_combout\ & !\d[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => \Add4~28_combout\,
	datad => VCC,
	cin => \d[11]~23\,
	combout => \d[12]~24_combout\,
	cout => \d[12]~25\);

-- Location: LCCOMB_X35_Y23_N6
\d[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[13]~26_combout\ = (\Add5~30_combout\ & ((\Add4~30_combout\ & (\d[12]~25\ & VCC)) # (!\Add4~30_combout\ & (!\d[12]~25\)))) # (!\Add5~30_combout\ & ((\Add4~30_combout\ & (!\d[12]~25\)) # (!\Add4~30_combout\ & ((\d[12]~25\) # (GND)))))
-- \d[13]~27\ = CARRY((\Add5~30_combout\ & (!\Add4~30_combout\ & !\d[12]~25\)) # (!\Add5~30_combout\ & ((!\d[12]~25\) # (!\Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \Add4~30_combout\,
	datad => VCC,
	cin => \d[12]~25\,
	combout => \d[13]~26_combout\,
	cout => \d[13]~27\);

-- Location: LCCOMB_X35_Y23_N8
\d[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[14]~28_combout\ = ((\Add4~32_combout\ $ (\Add5~32_combout\ $ (!\d[13]~27\)))) # (GND)
-- \d[14]~29\ = CARRY((\Add4~32_combout\ & ((\Add5~32_combout\) # (!\d[13]~27\))) # (!\Add4~32_combout\ & (\Add5~32_combout\ & !\d[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => \Add5~32_combout\,
	datad => VCC,
	cin => \d[13]~27\,
	combout => \d[14]~28_combout\,
	cout => \d[14]~29\);

-- Location: LCCOMB_X35_Y23_N10
\d[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[15]~30_combout\ = (\Add4~34_combout\ & ((\Add5~34_combout\ & (\d[14]~29\ & VCC)) # (!\Add5~34_combout\ & (!\d[14]~29\)))) # (!\Add4~34_combout\ & ((\Add5~34_combout\ & (!\d[14]~29\)) # (!\Add5~34_combout\ & ((\d[14]~29\) # (GND)))))
-- \d[15]~31\ = CARRY((\Add4~34_combout\ & (!\Add5~34_combout\ & !\d[14]~29\)) # (!\Add4~34_combout\ & ((!\d[14]~29\) # (!\Add5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \Add5~34_combout\,
	datad => VCC,
	cin => \d[14]~29\,
	combout => \d[15]~30_combout\,
	cout => \d[15]~31\);

-- Location: LCCOMB_X35_Y23_N12
\d[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[16]~32_combout\ = ((\Add4~36_combout\ $ (\Add5~36_combout\ $ (!\d[15]~31\)))) # (GND)
-- \d[16]~33\ = CARRY((\Add4~36_combout\ & ((\Add5~36_combout\) # (!\d[15]~31\))) # (!\Add4~36_combout\ & (\Add5~36_combout\ & !\d[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~36_combout\,
	datab => \Add5~36_combout\,
	datad => VCC,
	cin => \d[15]~31\,
	combout => \d[16]~32_combout\,
	cout => \d[16]~33\);

-- Location: LCFF_X41_Y27_N13
\init|i2c_init_start_pulse|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[6]~29_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(6));

-- Location: LCFF_X41_Y27_N31
\init|i2c_init_start_pulse|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[15]~47_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(15));

-- Location: LCCOMB_X31_Y22_N6
\wavies[7].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~6_combout\ = (\wavies[7].triangle_gen|count\(3) & (\wavies[7].triangle_gen|Add1~5\ & VCC)) # (!\wavies[7].triangle_gen|count\(3) & (!\wavies[7].triangle_gen|Add1~5\))
-- \wavies[7].triangle_gen|Add1~7\ = CARRY((!\wavies[7].triangle_gen|count\(3) & !\wavies[7].triangle_gen|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~5\,
	combout => \wavies[7].triangle_gen|Add1~6_combout\,
	cout => \wavies[7].triangle_gen|Add1~7\);

-- Location: LCCOMB_X31_Y22_N10
\wavies[7].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~10_combout\ = (\wavies[7].triangle_gen|count\(5) & (!\wavies[7].triangle_gen|Add1~9\)) # (!\wavies[7].triangle_gen|count\(5) & ((\wavies[7].triangle_gen|Add1~9\) # (GND)))
-- \wavies[7].triangle_gen|Add1~11\ = CARRY((!\wavies[7].triangle_gen|Add1~9\) # (!\wavies[7].triangle_gen|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~9\,
	combout => \wavies[7].triangle_gen|Add1~10_combout\,
	cout => \wavies[7].triangle_gen|Add1~11\);

-- Location: LCCOMB_X31_Y22_N12
\wavies[7].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~12_combout\ = (\wavies[7].triangle_gen|count\(6) & ((GND) # (!\wavies[7].triangle_gen|Add1~11\))) # (!\wavies[7].triangle_gen|count\(6) & (\wavies[7].triangle_gen|Add1~11\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~13\ = CARRY((\wavies[7].triangle_gen|count\(6)) # (!\wavies[7].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~11\,
	combout => \wavies[7].triangle_gen|Add1~12_combout\,
	cout => \wavies[7].triangle_gen|Add1~13\);

-- Location: LCCOMB_X31_Y22_N24
\wavies[7].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~24_combout\ = (\wavies[7].triangle_gen|count\(12) & ((GND) # (!\wavies[7].triangle_gen|Add1~23\))) # (!\wavies[7].triangle_gen|count\(12) & (\wavies[7].triangle_gen|Add1~23\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~25\ = CARRY((\wavies[7].triangle_gen|count\(12)) # (!\wavies[7].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~23\,
	combout => \wavies[7].triangle_gen|Add1~24_combout\,
	cout => \wavies[7].triangle_gen|Add1~25\);

-- Location: LCCOMB_X31_Y21_N6
\wavies[7].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~38_combout\ = (\wavies[7].triangle_gen|count\(19) & (\wavies[7].triangle_gen|Add1~37\ & VCC)) # (!\wavies[7].triangle_gen|count\(19) & (!\wavies[7].triangle_gen|Add1~37\))
-- \wavies[7].triangle_gen|Add1~39\ = CARRY((!\wavies[7].triangle_gen|count\(19) & !\wavies[7].triangle_gen|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~37\,
	combout => \wavies[7].triangle_gen|Add1~38_combout\,
	cout => \wavies[7].triangle_gen|Add1~39\);

-- Location: LCCOMB_X31_Y21_N10
\wavies[7].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~42_combout\ = (\wavies[7].triangle_gen|count\(21) & (!\wavies[7].triangle_gen|Add1~41\)) # (!\wavies[7].triangle_gen|count\(21) & ((\wavies[7].triangle_gen|Add1~41\) # (GND)))
-- \wavies[7].triangle_gen|Add1~43\ = CARRY((!\wavies[7].triangle_gen|Add1~41\) # (!\wavies[7].triangle_gen|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~41\,
	combout => \wavies[7].triangle_gen|Add1~42_combout\,
	cout => \wavies[7].triangle_gen|Add1~43\);

-- Location: LCCOMB_X31_Y21_N12
\wavies[7].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~44_combout\ = (\wavies[7].triangle_gen|count\(22) & (\wavies[7].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[7].triangle_gen|count\(22) & (!\wavies[7].triangle_gen|Add1~43\ & VCC))
-- \wavies[7].triangle_gen|Add1~45\ = CARRY((\wavies[7].triangle_gen|count\(22) & !\wavies[7].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~43\,
	combout => \wavies[7].triangle_gen|Add1~44_combout\,
	cout => \wavies[7].triangle_gen|Add1~45\);

-- Location: LCCOMB_X31_Y21_N16
\wavies[7].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~48_combout\ = (\wavies[7].triangle_gen|count\(24) & (\wavies[7].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[7].triangle_gen|count\(24) & (!\wavies[7].triangle_gen|Add1~47\ & VCC))
-- \wavies[7].triangle_gen|Add1~49\ = CARRY((\wavies[7].triangle_gen|count\(24) & !\wavies[7].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~47\,
	combout => \wavies[7].triangle_gen|Add1~48_combout\,
	cout => \wavies[7].triangle_gen|Add1~49\);

-- Location: LCCOMB_X31_Y21_N20
\wavies[7].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~52_combout\ = (\wavies[7].triangle_gen|count\(26) & (\wavies[7].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[7].triangle_gen|count\(26) & (!\wavies[7].triangle_gen|Add1~51\ & VCC))
-- \wavies[7].triangle_gen|Add1~53\ = CARRY((\wavies[7].triangle_gen|count\(26) & !\wavies[7].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~51\,
	combout => \wavies[7].triangle_gen|Add1~52_combout\,
	cout => \wavies[7].triangle_gen|Add1~53\);

-- Location: LCCOMB_X31_Y21_N22
\wavies[7].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~54_combout\ = (\wavies[7].triangle_gen|count\(27) & (!\wavies[7].triangle_gen|Add1~53\)) # (!\wavies[7].triangle_gen|count\(27) & ((\wavies[7].triangle_gen|Add1~53\) # (GND)))
-- \wavies[7].triangle_gen|Add1~55\ = CARRY((!\wavies[7].triangle_gen|Add1~53\) # (!\wavies[7].triangle_gen|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~53\,
	combout => \wavies[7].triangle_gen|Add1~54_combout\,
	cout => \wavies[7].triangle_gen|Add1~55\);

-- Location: LCCOMB_X31_Y21_N24
\wavies[7].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~56_combout\ = (\wavies[7].triangle_gen|count\(28) & (\wavies[7].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[7].triangle_gen|count\(28) & (!\wavies[7].triangle_gen|Add1~55\ & VCC))
-- \wavies[7].triangle_gen|Add1~57\ = CARRY((\wavies[7].triangle_gen|count\(28) & !\wavies[7].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~55\,
	combout => \wavies[7].triangle_gen|Add1~56_combout\,
	cout => \wavies[7].triangle_gen|Add1~57\);

-- Location: LCCOMB_X31_Y21_N26
\wavies[7].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~58_combout\ = (\wavies[7].triangle_gen|count\(29) & (!\wavies[7].triangle_gen|Add1~57\)) # (!\wavies[7].triangle_gen|count\(29) & ((\wavies[7].triangle_gen|Add1~57\) # (GND)))
-- \wavies[7].triangle_gen|Add1~59\ = CARRY((!\wavies[7].triangle_gen|Add1~57\) # (!\wavies[7].triangle_gen|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~57\,
	combout => \wavies[7].triangle_gen|Add1~58_combout\,
	cout => \wavies[7].triangle_gen|Add1~59\);

-- Location: LCCOMB_X31_Y21_N28
\wavies[7].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~60_combout\ = (\wavies[7].triangle_gen|count\(30) & (\wavies[7].triangle_gen|Add1~59\ $ (GND))) # (!\wavies[7].triangle_gen|count\(30) & (!\wavies[7].triangle_gen|Add1~59\ & VCC))
-- \wavies[7].triangle_gen|Add1~61\ = CARRY((\wavies[7].triangle_gen|count\(30) & !\wavies[7].triangle_gen|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~59\,
	combout => \wavies[7].triangle_gen|Add1~60_combout\,
	cout => \wavies[7].triangle_gen|Add1~61\);

-- Location: LCCOMB_X31_Y21_N30
\wavies[7].triangle_gen|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~62_combout\ = \wavies[7].triangle_gen|Add1~61\ $ (\wavies[7].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[7].triangle_gen|count\(31),
	cin => \wavies[7].triangle_gen|Add1~61\,
	combout => \wavies[7].triangle_gen|Add1~62_combout\);

-- Location: LCCOMB_X31_Y19_N6
\wavies[6].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~4_combout\ = (\wavies[6].triangle_gen|count\(3) & ((GND) # (!\wavies[6].triangle_gen|Add1~3\))) # (!\wavies[6].triangle_gen|count\(3) & (\wavies[6].triangle_gen|Add1~3\ $ (GND)))
-- \wavies[6].triangle_gen|Add1~5\ = CARRY((\wavies[6].triangle_gen|count\(3)) # (!\wavies[6].triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~3\,
	combout => \wavies[6].triangle_gen|Add1~4_combout\,
	cout => \wavies[6].triangle_gen|Add1~5\);

-- Location: LCCOMB_X31_Y19_N10
\wavies[6].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~8_combout\ = (\wavies[6].triangle_gen|count\(5) & (\wavies[6].triangle_gen|Add1~7\ $ (GND))) # (!\wavies[6].triangle_gen|count\(5) & (!\wavies[6].triangle_gen|Add1~7\ & VCC))
-- \wavies[6].triangle_gen|Add1~9\ = CARRY((\wavies[6].triangle_gen|count\(5) & !\wavies[6].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~7\,
	combout => \wavies[6].triangle_gen|Add1~8_combout\,
	cout => \wavies[6].triangle_gen|Add1~9\);

-- Location: LCCOMB_X31_Y19_N12
\wavies[6].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~10_combout\ = (\wavies[6].triangle_gen|count\(6) & (\wavies[6].triangle_gen|Add1~9\ & VCC)) # (!\wavies[6].triangle_gen|count\(6) & (!\wavies[6].triangle_gen|Add1~9\))
-- \wavies[6].triangle_gen|Add1~11\ = CARRY((!\wavies[6].triangle_gen|count\(6) & !\wavies[6].triangle_gen|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~9\,
	combout => \wavies[6].triangle_gen|Add1~10_combout\,
	cout => \wavies[6].triangle_gen|Add1~11\);

-- Location: LCCOMB_X31_Y19_N16
\wavies[6].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~14_combout\ = (\wavies[6].triangle_gen|count\(8) & (!\wavies[6].triangle_gen|Add1~13\)) # (!\wavies[6].triangle_gen|count\(8) & ((\wavies[6].triangle_gen|Add1~13\) # (GND)))
-- \wavies[6].triangle_gen|Add1~15\ = CARRY((!\wavies[6].triangle_gen|Add1~13\) # (!\wavies[6].triangle_gen|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~13\,
	combout => \wavies[6].triangle_gen|Add1~14_combout\,
	cout => \wavies[6].triangle_gen|Add1~15\);

-- Location: LCCOMB_X31_Y19_N20
\wavies[6].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~18_combout\ = (\wavies[6].triangle_gen|count\(10) & (\wavies[6].triangle_gen|Add1~17\ & VCC)) # (!\wavies[6].triangle_gen|count\(10) & (!\wavies[6].triangle_gen|Add1~17\))
-- \wavies[6].triangle_gen|Add1~19\ = CARRY((!\wavies[6].triangle_gen|count\(10) & !\wavies[6].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~17\,
	combout => \wavies[6].triangle_gen|Add1~18_combout\,
	cout => \wavies[6].triangle_gen|Add1~19\);

-- Location: LCCOMB_X31_Y19_N24
\wavies[6].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~22_combout\ = (\wavies[6].triangle_gen|count\(12) & (\wavies[6].triangle_gen|Add1~21\ & VCC)) # (!\wavies[6].triangle_gen|count\(12) & (!\wavies[6].triangle_gen|Add1~21\))
-- \wavies[6].triangle_gen|Add1~23\ = CARRY((!\wavies[6].triangle_gen|count\(12) & !\wavies[6].triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~21\,
	combout => \wavies[6].triangle_gen|Add1~22_combout\,
	cout => \wavies[6].triangle_gen|Add1~23\);

-- Location: LCCOMB_X31_Y18_N12
\wavies[6].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~42_combout\ = (\wavies[6].triangle_gen|count\(22) & (!\wavies[6].triangle_gen|Add1~41\)) # (!\wavies[6].triangle_gen|count\(22) & ((\wavies[6].triangle_gen|Add1~41\) # (GND)))
-- \wavies[6].triangle_gen|Add1~43\ = CARRY((!\wavies[6].triangle_gen|Add1~41\) # (!\wavies[6].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~41\,
	combout => \wavies[6].triangle_gen|Add1~42_combout\,
	cout => \wavies[6].triangle_gen|Add1~43\);

-- Location: LCCOMB_X31_Y18_N20
\wavies[6].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~50_combout\ = (\wavies[6].triangle_gen|count\(26) & (!\wavies[6].triangle_gen|Add1~49\)) # (!\wavies[6].triangle_gen|count\(26) & ((\wavies[6].triangle_gen|Add1~49\) # (GND)))
-- \wavies[6].triangle_gen|Add1~51\ = CARRY((!\wavies[6].triangle_gen|Add1~49\) # (!\wavies[6].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~49\,
	combout => \wavies[6].triangle_gen|Add1~50_combout\,
	cout => \wavies[6].triangle_gen|Add1~51\);

-- Location: LCCOMB_X31_Y18_N28
\wavies[6].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~58_combout\ = (\wavies[6].triangle_gen|count\(30) & (!\wavies[6].triangle_gen|Add1~57\)) # (!\wavies[6].triangle_gen|count\(30) & ((\wavies[6].triangle_gen|Add1~57\) # (GND)))
-- \wavies[6].triangle_gen|Add1~59\ = CARRY((!\wavies[6].triangle_gen|Add1~57\) # (!\wavies[6].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~57\,
	combout => \wavies[6].triangle_gen|Add1~58_combout\,
	cout => \wavies[6].triangle_gen|Add1~59\);

-- Location: LCCOMB_X31_Y18_N30
\wavies[6].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~60_combout\ = \wavies[6].triangle_gen|Add1~59\ $ (!\wavies[6].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[6].triangle_gen|count\(31),
	cin => \wavies[6].triangle_gen|Add1~59\,
	combout => \wavies[6].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X36_Y22_N6
\wavies[4].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~4_combout\ = (\wavies[4].triangle_gen|count\(3) & (\wavies[4].triangle_gen|Add1~3\ $ (GND))) # (!\wavies[4].triangle_gen|count\(3) & (!\wavies[4].triangle_gen|Add1~3\ & VCC))
-- \wavies[4].triangle_gen|Add1~5\ = CARRY((\wavies[4].triangle_gen|count\(3) & !\wavies[4].triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~3\,
	combout => \wavies[4].triangle_gen|Add1~4_combout\,
	cout => \wavies[4].triangle_gen|Add1~5\);

-- Location: LCCOMB_X36_Y22_N10
\wavies[4].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~8_combout\ = (\wavies[4].triangle_gen|count\(5) & (\wavies[4].triangle_gen|Add1~7\ $ (GND))) # (!\wavies[4].triangle_gen|count\(5) & (!\wavies[4].triangle_gen|Add1~7\ & VCC))
-- \wavies[4].triangle_gen|Add1~9\ = CARRY((\wavies[4].triangle_gen|count\(5) & !\wavies[4].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~7\,
	combout => \wavies[4].triangle_gen|Add1~8_combout\,
	cout => \wavies[4].triangle_gen|Add1~9\);

-- Location: LCCOMB_X36_Y22_N12
\wavies[4].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~10_combout\ = (\wavies[4].triangle_gen|count\(6) & (!\wavies[4].triangle_gen|Add1~9\)) # (!\wavies[4].triangle_gen|count\(6) & ((\wavies[4].triangle_gen|Add1~9\) # (GND)))
-- \wavies[4].triangle_gen|Add1~11\ = CARRY((!\wavies[4].triangle_gen|Add1~9\) # (!\wavies[4].triangle_gen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~9\,
	combout => \wavies[4].triangle_gen|Add1~10_combout\,
	cout => \wavies[4].triangle_gen|Add1~11\);

-- Location: LCCOMB_X36_Y22_N16
\wavies[4].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~14_combout\ = (\wavies[4].triangle_gen|count\(8) & (\wavies[4].triangle_gen|Add1~13\ & VCC)) # (!\wavies[4].triangle_gen|count\(8) & (!\wavies[4].triangle_gen|Add1~13\))
-- \wavies[4].triangle_gen|Add1~15\ = CARRY((!\wavies[4].triangle_gen|count\(8) & !\wavies[4].triangle_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~13\,
	combout => \wavies[4].triangle_gen|Add1~14_combout\,
	cout => \wavies[4].triangle_gen|Add1~15\);

-- Location: LCCOMB_X36_Y22_N24
\wavies[4].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~22_combout\ = (\wavies[4].triangle_gen|count\(12) & (\wavies[4].triangle_gen|Add1~21\ & VCC)) # (!\wavies[4].triangle_gen|count\(12) & (!\wavies[4].triangle_gen|Add1~21\))
-- \wavies[4].triangle_gen|Add1~23\ = CARRY((!\wavies[4].triangle_gen|count\(12) & !\wavies[4].triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~21\,
	combout => \wavies[4].triangle_gen|Add1~22_combout\,
	cout => \wavies[4].triangle_gen|Add1~23\);

-- Location: LCCOMB_X36_Y21_N6
\wavies[4].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~36_combout\ = (\wavies[4].triangle_gen|count\(19) & ((GND) # (!\wavies[4].triangle_gen|Add1~35\))) # (!\wavies[4].triangle_gen|count\(19) & (\wavies[4].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[4].triangle_gen|Add1~37\ = CARRY((\wavies[4].triangle_gen|count\(19)) # (!\wavies[4].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~35\,
	combout => \wavies[4].triangle_gen|Add1~36_combout\,
	cout => \wavies[4].triangle_gen|Add1~37\);

-- Location: LCCOMB_X36_Y21_N10
\wavies[4].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~40_combout\ = (\wavies[4].triangle_gen|count\(21) & (\wavies[4].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[4].triangle_gen|count\(21) & (!\wavies[4].triangle_gen|Add1~39\ & VCC))
-- \wavies[4].triangle_gen|Add1~41\ = CARRY((\wavies[4].triangle_gen|count\(21) & !\wavies[4].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~39\,
	combout => \wavies[4].triangle_gen|Add1~40_combout\,
	cout => \wavies[4].triangle_gen|Add1~41\);

-- Location: LCCOMB_X36_Y21_N12
\wavies[4].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~42_combout\ = (\wavies[4].triangle_gen|count\(22) & (!\wavies[4].triangle_gen|Add1~41\)) # (!\wavies[4].triangle_gen|count\(22) & ((\wavies[4].triangle_gen|Add1~41\) # (GND)))
-- \wavies[4].triangle_gen|Add1~43\ = CARRY((!\wavies[4].triangle_gen|Add1~41\) # (!\wavies[4].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~41\,
	combout => \wavies[4].triangle_gen|Add1~42_combout\,
	cout => \wavies[4].triangle_gen|Add1~43\);

-- Location: LCCOMB_X36_Y21_N24
\wavies[4].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~54_combout\ = (\wavies[4].triangle_gen|count\(28) & (!\wavies[4].triangle_gen|Add1~53\)) # (!\wavies[4].triangle_gen|count\(28) & ((\wavies[4].triangle_gen|Add1~53\) # (GND)))
-- \wavies[4].triangle_gen|Add1~55\ = CARRY((!\wavies[4].triangle_gen|Add1~53\) # (!\wavies[4].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~53\,
	combout => \wavies[4].triangle_gen|Add1~54_combout\,
	cout => \wavies[4].triangle_gen|Add1~55\);

-- Location: LCCOMB_X29_Y22_N6
\wavies[5].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~4_combout\ = (\wavies[5].triangle_gen|count\(3) & ((GND) # (!\wavies[5].triangle_gen|Add1~3\))) # (!\wavies[5].triangle_gen|count\(3) & (\wavies[5].triangle_gen|Add1~3\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~5\ = CARRY((\wavies[5].triangle_gen|count\(3)) # (!\wavies[5].triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~3\,
	combout => \wavies[5].triangle_gen|Add1~4_combout\,
	cout => \wavies[5].triangle_gen|Add1~5\);

-- Location: LCCOMB_X29_Y22_N10
\wavies[5].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~8_combout\ = (\wavies[5].triangle_gen|count\(5) & (\wavies[5].triangle_gen|Add1~7\ $ (GND))) # (!\wavies[5].triangle_gen|count\(5) & (!\wavies[5].triangle_gen|Add1~7\ & VCC))
-- \wavies[5].triangle_gen|Add1~9\ = CARRY((\wavies[5].triangle_gen|count\(5) & !\wavies[5].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~7\,
	combout => \wavies[5].triangle_gen|Add1~8_combout\,
	cout => \wavies[5].triangle_gen|Add1~9\);

-- Location: LCCOMB_X29_Y22_N12
\wavies[5].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~10_combout\ = (\wavies[5].triangle_gen|count\(6) & (!\wavies[5].triangle_gen|Add1~9\)) # (!\wavies[5].triangle_gen|count\(6) & ((\wavies[5].triangle_gen|Add1~9\) # (GND)))
-- \wavies[5].triangle_gen|Add1~11\ = CARRY((!\wavies[5].triangle_gen|Add1~9\) # (!\wavies[5].triangle_gen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~9\,
	combout => \wavies[5].triangle_gen|Add1~10_combout\,
	cout => \wavies[5].triangle_gen|Add1~11\);

-- Location: LCCOMB_X29_Y22_N20
\wavies[5].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~18_combout\ = (\wavies[5].triangle_gen|count\(10) & (\wavies[5].triangle_gen|Add1~17\ & VCC)) # (!\wavies[5].triangle_gen|count\(10) & (!\wavies[5].triangle_gen|Add1~17\))
-- \wavies[5].triangle_gen|Add1~19\ = CARRY((!\wavies[5].triangle_gen|count\(10) & !\wavies[5].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~17\,
	combout => \wavies[5].triangle_gen|Add1~18_combout\,
	cout => \wavies[5].triangle_gen|Add1~19\);

-- Location: LCCOMB_X29_Y21_N6
\wavies[5].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~36_combout\ = (\wavies[5].triangle_gen|count\(19) & ((GND) # (!\wavies[5].triangle_gen|Add1~35\))) # (!\wavies[5].triangle_gen|count\(19) & (\wavies[5].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~37\ = CARRY((\wavies[5].triangle_gen|count\(19)) # (!\wavies[5].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~35\,
	combout => \wavies[5].triangle_gen|Add1~36_combout\,
	cout => \wavies[5].triangle_gen|Add1~37\);

-- Location: LCCOMB_X29_Y21_N16
\wavies[5].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~46_combout\ = (\wavies[5].triangle_gen|count\(24) & (!\wavies[5].triangle_gen|Add1~45\)) # (!\wavies[5].triangle_gen|count\(24) & ((\wavies[5].triangle_gen|Add1~45\) # (GND)))
-- \wavies[5].triangle_gen|Add1~47\ = CARRY((!\wavies[5].triangle_gen|Add1~45\) # (!\wavies[5].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~45\,
	combout => \wavies[5].triangle_gen|Add1~46_combout\,
	cout => \wavies[5].triangle_gen|Add1~47\);

-- Location: LCCOMB_X29_Y21_N20
\wavies[5].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~50_combout\ = (\wavies[5].triangle_gen|count\(26) & (!\wavies[5].triangle_gen|Add1~49\)) # (!\wavies[5].triangle_gen|count\(26) & ((\wavies[5].triangle_gen|Add1~49\) # (GND)))
-- \wavies[5].triangle_gen|Add1~51\ = CARRY((!\wavies[5].triangle_gen|Add1~49\) # (!\wavies[5].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~49\,
	combout => \wavies[5].triangle_gen|Add1~50_combout\,
	cout => \wavies[5].triangle_gen|Add1~51\);

-- Location: LCCOMB_X30_Y24_N6
\wavies[2].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~4_combout\ = (\wavies[2].triangle_gen|count\(3) & ((GND) # (!\wavies[2].triangle_gen|Add1~3_cout\))) # (!\wavies[2].triangle_gen|count\(3) & (\wavies[2].triangle_gen|Add1~3_cout\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~5\ = CARRY((\wavies[2].triangle_gen|count\(3)) # (!\wavies[2].triangle_gen|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~3_cout\,
	combout => \wavies[2].triangle_gen|Add1~4_combout\,
	cout => \wavies[2].triangle_gen|Add1~5\);

-- Location: LCCOMB_X30_Y24_N10
\wavies[2].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~8_combout\ = (\wavies[2].triangle_gen|count\(5) & ((GND) # (!\wavies[2].triangle_gen|Add1~7\))) # (!\wavies[2].triangle_gen|count\(5) & (\wavies[2].triangle_gen|Add1~7\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~9\ = CARRY((\wavies[2].triangle_gen|count\(5)) # (!\wavies[2].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~7\,
	combout => \wavies[2].triangle_gen|Add1~8_combout\,
	cout => \wavies[2].triangle_gen|Add1~9\);

-- Location: LCCOMB_X30_Y24_N12
\wavies[2].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~10_combout\ = (\wavies[2].triangle_gen|count\(6) & (!\wavies[2].triangle_gen|Add1~9\)) # (!\wavies[2].triangle_gen|count\(6) & ((\wavies[2].triangle_gen|Add1~9\) # (GND)))
-- \wavies[2].triangle_gen|Add1~11\ = CARRY((!\wavies[2].triangle_gen|Add1~9\) # (!\wavies[2].triangle_gen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~9\,
	combout => \wavies[2].triangle_gen|Add1~10_combout\,
	cout => \wavies[2].triangle_gen|Add1~11\);

-- Location: LCCOMB_X30_Y24_N20
\wavies[2].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~18_combout\ = (\wavies[2].triangle_gen|count\(10) & (!\wavies[2].triangle_gen|Add1~17\)) # (!\wavies[2].triangle_gen|count\(10) & ((\wavies[2].triangle_gen|Add1~17\) # (GND)))
-- \wavies[2].triangle_gen|Add1~19\ = CARRY((!\wavies[2].triangle_gen|Add1~17\) # (!\wavies[2].triangle_gen|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~17\,
	combout => \wavies[2].triangle_gen|Add1~18_combout\,
	cout => \wavies[2].triangle_gen|Add1~19\);

-- Location: LCCOMB_X30_Y23_N10
\wavies[2].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~40_combout\ = (\wavies[2].triangle_gen|count\(21) & (\wavies[2].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[2].triangle_gen|count\(21) & (!\wavies[2].triangle_gen|Add1~39\ & VCC))
-- \wavies[2].triangle_gen|Add1~41\ = CARRY((\wavies[2].triangle_gen|count\(21) & !\wavies[2].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~39\,
	combout => \wavies[2].triangle_gen|Add1~40_combout\,
	cout => \wavies[2].triangle_gen|Add1~41\);

-- Location: LCCOMB_X30_Y23_N12
\wavies[2].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~42_combout\ = (\wavies[2].triangle_gen|count\(22) & (!\wavies[2].triangle_gen|Add1~41\)) # (!\wavies[2].triangle_gen|count\(22) & ((\wavies[2].triangle_gen|Add1~41\) # (GND)))
-- \wavies[2].triangle_gen|Add1~43\ = CARRY((!\wavies[2].triangle_gen|Add1~41\) # (!\wavies[2].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~41\,
	combout => \wavies[2].triangle_gen|Add1~42_combout\,
	cout => \wavies[2].triangle_gen|Add1~43\);

-- Location: LCCOMB_X30_Y23_N16
\wavies[2].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~46_combout\ = (\wavies[2].triangle_gen|count\(24) & (!\wavies[2].triangle_gen|Add1~45\)) # (!\wavies[2].triangle_gen|count\(24) & ((\wavies[2].triangle_gen|Add1~45\) # (GND)))
-- \wavies[2].triangle_gen|Add1~47\ = CARRY((!\wavies[2].triangle_gen|Add1~45\) # (!\wavies[2].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~45\,
	combout => \wavies[2].triangle_gen|Add1~46_combout\,
	cout => \wavies[2].triangle_gen|Add1~47\);

-- Location: LCCOMB_X30_Y23_N20
\wavies[2].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~50_combout\ = (\wavies[2].triangle_gen|count\(26) & (!\wavies[2].triangle_gen|Add1~49\)) # (!\wavies[2].triangle_gen|count\(26) & ((\wavies[2].triangle_gen|Add1~49\) # (GND)))
-- \wavies[2].triangle_gen|Add1~51\ = CARRY((!\wavies[2].triangle_gen|Add1~49\) # (!\wavies[2].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~49\,
	combout => \wavies[2].triangle_gen|Add1~50_combout\,
	cout => \wavies[2].triangle_gen|Add1~51\);

-- Location: LCCOMB_X31_Y26_N6
\wavies[3].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~4_combout\ = (\wavies[3].triangle_gen|count\(3) & (\wavies[3].triangle_gen|Add1~3\ $ (GND))) # (!\wavies[3].triangle_gen|count\(3) & (!\wavies[3].triangle_gen|Add1~3\ & VCC))
-- \wavies[3].triangle_gen|Add1~5\ = CARRY((\wavies[3].triangle_gen|count\(3) & !\wavies[3].triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~3\,
	combout => \wavies[3].triangle_gen|Add1~4_combout\,
	cout => \wavies[3].triangle_gen|Add1~5\);

-- Location: LCCOMB_X31_Y26_N10
\wavies[3].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~8_combout\ = (\wavies[3].triangle_gen|count\(5) & (\wavies[3].triangle_gen|Add1~7\ $ (GND))) # (!\wavies[3].triangle_gen|count\(5) & (!\wavies[3].triangle_gen|Add1~7\ & VCC))
-- \wavies[3].triangle_gen|Add1~9\ = CARRY((\wavies[3].triangle_gen|count\(5) & !\wavies[3].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~7\,
	combout => \wavies[3].triangle_gen|Add1~8_combout\,
	cout => \wavies[3].triangle_gen|Add1~9\);

-- Location: LCCOMB_X31_Y26_N12
\wavies[3].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~10_combout\ = (\wavies[3].triangle_gen|count\(6) & (!\wavies[3].triangle_gen|Add1~9\)) # (!\wavies[3].triangle_gen|count\(6) & ((\wavies[3].triangle_gen|Add1~9\) # (GND)))
-- \wavies[3].triangle_gen|Add1~11\ = CARRY((!\wavies[3].triangle_gen|Add1~9\) # (!\wavies[3].triangle_gen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~9\,
	combout => \wavies[3].triangle_gen|Add1~10_combout\,
	cout => \wavies[3].triangle_gen|Add1~11\);

-- Location: LCCOMB_X31_Y26_N16
\wavies[3].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~14_combout\ = (\wavies[3].triangle_gen|count\(8) & (\wavies[3].triangle_gen|Add1~13\ & VCC)) # (!\wavies[3].triangle_gen|count\(8) & (!\wavies[3].triangle_gen|Add1~13\))
-- \wavies[3].triangle_gen|Add1~15\ = CARRY((!\wavies[3].triangle_gen|count\(8) & !\wavies[3].triangle_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~13\,
	combout => \wavies[3].triangle_gen|Add1~14_combout\,
	cout => \wavies[3].triangle_gen|Add1~15\);

-- Location: LCCOMB_X31_Y26_N24
\wavies[3].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~22_combout\ = (\wavies[3].triangle_gen|count\(12) & (\wavies[3].triangle_gen|Add1~21\ & VCC)) # (!\wavies[3].triangle_gen|count\(12) & (!\wavies[3].triangle_gen|Add1~21\))
-- \wavies[3].triangle_gen|Add1~23\ = CARRY((!\wavies[3].triangle_gen|count\(12) & !\wavies[3].triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~21\,
	combout => \wavies[3].triangle_gen|Add1~22_combout\,
	cout => \wavies[3].triangle_gen|Add1~23\);

-- Location: LCCOMB_X31_Y25_N10
\wavies[3].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~40_combout\ = (\wavies[3].triangle_gen|count\(21) & (\wavies[3].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[3].triangle_gen|count\(21) & (!\wavies[3].triangle_gen|Add1~39\ & VCC))
-- \wavies[3].triangle_gen|Add1~41\ = CARRY((\wavies[3].triangle_gen|count\(21) & !\wavies[3].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~39\,
	combout => \wavies[3].triangle_gen|Add1~40_combout\,
	cout => \wavies[3].triangle_gen|Add1~41\);

-- Location: LCCOMB_X31_Y25_N20
\wavies[3].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~50_combout\ = (\wavies[3].triangle_gen|count\(26) & (!\wavies[3].triangle_gen|Add1~49\)) # (!\wavies[3].triangle_gen|count\(26) & ((\wavies[3].triangle_gen|Add1~49\) # (GND)))
-- \wavies[3].triangle_gen|Add1~51\ = CARRY((!\wavies[3].triangle_gen|Add1~49\) # (!\wavies[3].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~49\,
	combout => \wavies[3].triangle_gen|Add1~50_combout\,
	cout => \wavies[3].triangle_gen|Add1~51\);

-- Location: LCCOMB_X33_Y19_N6
\wavies[0].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~4_combout\ = (\wavies[0].triangle_gen|count\(3) & (\wavies[0].triangle_gen|Add1~3_cout\ $ (GND))) # (!\wavies[0].triangle_gen|count\(3) & (!\wavies[0].triangle_gen|Add1~3_cout\ & VCC))
-- \wavies[0].triangle_gen|Add1~5\ = CARRY((\wavies[0].triangle_gen|count\(3) & !\wavies[0].triangle_gen|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~3_cout\,
	combout => \wavies[0].triangle_gen|Add1~4_combout\,
	cout => \wavies[0].triangle_gen|Add1~5\);

-- Location: LCCOMB_X33_Y19_N10
\wavies[0].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~8_combout\ = (\wavies[0].triangle_gen|count\(5) & ((GND) # (!\wavies[0].triangle_gen|Add1~7\))) # (!\wavies[0].triangle_gen|count\(5) & (\wavies[0].triangle_gen|Add1~7\ $ (GND)))
-- \wavies[0].triangle_gen|Add1~9\ = CARRY((\wavies[0].triangle_gen|count\(5)) # (!\wavies[0].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~7\,
	combout => \wavies[0].triangle_gen|Add1~8_combout\,
	cout => \wavies[0].triangle_gen|Add1~9\);

-- Location: LCCOMB_X33_Y19_N12
\wavies[0].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~10_combout\ = (\wavies[0].triangle_gen|count\(6) & (!\wavies[0].triangle_gen|Add1~9\)) # (!\wavies[0].triangle_gen|count\(6) & ((\wavies[0].triangle_gen|Add1~9\) # (GND)))
-- \wavies[0].triangle_gen|Add1~11\ = CARRY((!\wavies[0].triangle_gen|Add1~9\) # (!\wavies[0].triangle_gen|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~9\,
	combout => \wavies[0].triangle_gen|Add1~10_combout\,
	cout => \wavies[0].triangle_gen|Add1~11\);

-- Location: LCCOMB_X33_Y19_N16
\wavies[0].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~14_combout\ = (\wavies[0].triangle_gen|count\(8) & (\wavies[0].triangle_gen|Add1~13\ & VCC)) # (!\wavies[0].triangle_gen|count\(8) & (!\wavies[0].triangle_gen|Add1~13\))
-- \wavies[0].triangle_gen|Add1~15\ = CARRY((!\wavies[0].triangle_gen|count\(8) & !\wavies[0].triangle_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~13\,
	combout => \wavies[0].triangle_gen|Add1~14_combout\,
	cout => \wavies[0].triangle_gen|Add1~15\);

-- Location: LCCOMB_X33_Y19_N24
\wavies[0].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~22_combout\ = (\wavies[0].triangle_gen|count\(12) & (!\wavies[0].triangle_gen|Add1~21\)) # (!\wavies[0].triangle_gen|count\(12) & ((\wavies[0].triangle_gen|Add1~21\) # (GND)))
-- \wavies[0].triangle_gen|Add1~23\ = CARRY((!\wavies[0].triangle_gen|Add1~21\) # (!\wavies[0].triangle_gen|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~21\,
	combout => \wavies[0].triangle_gen|Add1~22_combout\,
	cout => \wavies[0].triangle_gen|Add1~23\);

-- Location: LCCOMB_X33_Y18_N6
\wavies[0].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~36_combout\ = (\wavies[0].triangle_gen|count\(19) & (\wavies[0].triangle_gen|Add1~35\ $ (GND))) # (!\wavies[0].triangle_gen|count\(19) & (!\wavies[0].triangle_gen|Add1~35\ & VCC))
-- \wavies[0].triangle_gen|Add1~37\ = CARRY((\wavies[0].triangle_gen|count\(19) & !\wavies[0].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~35\,
	combout => \wavies[0].triangle_gen|Add1~36_combout\,
	cout => \wavies[0].triangle_gen|Add1~37\);

-- Location: LCCOMB_X33_Y18_N12
\wavies[0].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~42_combout\ = (\wavies[0].triangle_gen|count\(22) & (!\wavies[0].triangle_gen|Add1~41\)) # (!\wavies[0].triangle_gen|count\(22) & ((\wavies[0].triangle_gen|Add1~41\) # (GND)))
-- \wavies[0].triangle_gen|Add1~43\ = CARRY((!\wavies[0].triangle_gen|Add1~41\) # (!\wavies[0].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~41\,
	combout => \wavies[0].triangle_gen|Add1~42_combout\,
	cout => \wavies[0].triangle_gen|Add1~43\);

-- Location: LCCOMB_X33_Y18_N18
\wavies[0].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~48_combout\ = (\wavies[0].triangle_gen|count\(25) & (\wavies[0].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[0].triangle_gen|count\(25) & (!\wavies[0].triangle_gen|Add1~47\ & VCC))
-- \wavies[0].triangle_gen|Add1~49\ = CARRY((\wavies[0].triangle_gen|count\(25) & !\wavies[0].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~47\,
	combout => \wavies[0].triangle_gen|Add1~48_combout\,
	cout => \wavies[0].triangle_gen|Add1~49\);

-- Location: LCCOMB_X33_Y18_N20
\wavies[0].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~50_combout\ = (\wavies[0].triangle_gen|count\(26) & (!\wavies[0].triangle_gen|Add1~49\)) # (!\wavies[0].triangle_gen|count\(26) & ((\wavies[0].triangle_gen|Add1~49\) # (GND)))
-- \wavies[0].triangle_gen|Add1~51\ = CARRY((!\wavies[0].triangle_gen|Add1~49\) # (!\wavies[0].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~49\,
	combout => \wavies[0].triangle_gen|Add1~50_combout\,
	cout => \wavies[0].triangle_gen|Add1~51\);

-- Location: LCCOMB_X33_Y18_N22
\wavies[0].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~52_combout\ = (\wavies[0].triangle_gen|count\(27) & (\wavies[0].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[0].triangle_gen|count\(27) & (!\wavies[0].triangle_gen|Add1~51\ & VCC))
-- \wavies[0].triangle_gen|Add1~53\ = CARRY((\wavies[0].triangle_gen|count\(27) & !\wavies[0].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~51\,
	combout => \wavies[0].triangle_gen|Add1~52_combout\,
	cout => \wavies[0].triangle_gen|Add1~53\);

-- Location: LCCOMB_X33_Y18_N24
\wavies[0].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~54_combout\ = (\wavies[0].triangle_gen|count\(28) & (!\wavies[0].triangle_gen|Add1~53\)) # (!\wavies[0].triangle_gen|count\(28) & ((\wavies[0].triangle_gen|Add1~53\) # (GND)))
-- \wavies[0].triangle_gen|Add1~55\ = CARRY((!\wavies[0].triangle_gen|Add1~53\) # (!\wavies[0].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~53\,
	combout => \wavies[0].triangle_gen|Add1~54_combout\,
	cout => \wavies[0].triangle_gen|Add1~55\);

-- Location: LCCOMB_X33_Y18_N26
\wavies[0].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~56_combout\ = (\wavies[0].triangle_gen|count\(29) & (\wavies[0].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[0].triangle_gen|count\(29) & (!\wavies[0].triangle_gen|Add1~55\ & VCC))
-- \wavies[0].triangle_gen|Add1~57\ = CARRY((\wavies[0].triangle_gen|count\(29) & !\wavies[0].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~55\,
	combout => \wavies[0].triangle_gen|Add1~56_combout\,
	cout => \wavies[0].triangle_gen|Add1~57\);

-- Location: LCCOMB_X33_Y18_N28
\wavies[0].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~58_combout\ = (\wavies[0].triangle_gen|count\(30) & (!\wavies[0].triangle_gen|Add1~57\)) # (!\wavies[0].triangle_gen|count\(30) & ((\wavies[0].triangle_gen|Add1~57\) # (GND)))
-- \wavies[0].triangle_gen|Add1~59\ = CARRY((!\wavies[0].triangle_gen|Add1~57\) # (!\wavies[0].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~57\,
	combout => \wavies[0].triangle_gen|Add1~58_combout\,
	cout => \wavies[0].triangle_gen|Add1~59\);

-- Location: LCCOMB_X33_Y18_N30
\wavies[0].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~60_combout\ = \wavies[0].triangle_gen|Add1~59\ $ (!\wavies[0].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[0].triangle_gen|count\(31),
	cin => \wavies[0].triangle_gen|Add1~59\,
	combout => \wavies[0].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X35_Y19_N6
\wavies[1].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~6_combout\ = (\wavies[1].triangle_gen|count\(3) & (!\wavies[1].triangle_gen|Add1~5\)) # (!\wavies[1].triangle_gen|count\(3) & ((\wavies[1].triangle_gen|Add1~5\) # (GND)))
-- \wavies[1].triangle_gen|Add1~7\ = CARRY((!\wavies[1].triangle_gen|Add1~5\) # (!\wavies[1].triangle_gen|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(3),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~5\,
	combout => \wavies[1].triangle_gen|Add1~6_combout\,
	cout => \wavies[1].triangle_gen|Add1~7\);

-- Location: LCCOMB_X35_Y19_N10
\wavies[1].triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~10_combout\ = (\wavies[1].triangle_gen|count\(5) & (\wavies[1].triangle_gen|Add1~9\ & VCC)) # (!\wavies[1].triangle_gen|count\(5) & (!\wavies[1].triangle_gen|Add1~9\))
-- \wavies[1].triangle_gen|Add1~11\ = CARRY((!\wavies[1].triangle_gen|count\(5) & !\wavies[1].triangle_gen|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(5),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~9\,
	combout => \wavies[1].triangle_gen|Add1~10_combout\,
	cout => \wavies[1].triangle_gen|Add1~11\);

-- Location: LCCOMB_X35_Y19_N12
\wavies[1].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~12_combout\ = (\wavies[1].triangle_gen|count\(6) & ((GND) # (!\wavies[1].triangle_gen|Add1~11\))) # (!\wavies[1].triangle_gen|count\(6) & (\wavies[1].triangle_gen|Add1~11\ $ (GND)))
-- \wavies[1].triangle_gen|Add1~13\ = CARRY((\wavies[1].triangle_gen|count\(6)) # (!\wavies[1].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(6),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~11\,
	combout => \wavies[1].triangle_gen|Add1~12_combout\,
	cout => \wavies[1].triangle_gen|Add1~13\);

-- Location: LCCOMB_X35_Y19_N20
\wavies[1].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~20_combout\ = (\wavies[1].triangle_gen|count\(10) & (\wavies[1].triangle_gen|Add1~19\ $ (GND))) # (!\wavies[1].triangle_gen|count\(10) & (!\wavies[1].triangle_gen|Add1~19\ & VCC))
-- \wavies[1].triangle_gen|Add1~21\ = CARRY((\wavies[1].triangle_gen|count\(10) & !\wavies[1].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~19\,
	combout => \wavies[1].triangle_gen|Add1~20_combout\,
	cout => \wavies[1].triangle_gen|Add1~21\);

-- Location: LCCOMB_X35_Y18_N10
\wavies[1].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~42_combout\ = (\wavies[1].triangle_gen|count\(21) & (!\wavies[1].triangle_gen|Add1~41\)) # (!\wavies[1].triangle_gen|count\(21) & ((\wavies[1].triangle_gen|Add1~41\) # (GND)))
-- \wavies[1].triangle_gen|Add1~43\ = CARRY((!\wavies[1].triangle_gen|Add1~41\) # (!\wavies[1].triangle_gen|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~41\,
	combout => \wavies[1].triangle_gen|Add1~42_combout\,
	cout => \wavies[1].triangle_gen|Add1~43\);

-- Location: LCCOMB_X35_Y18_N16
\wavies[1].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~48_combout\ = (\wavies[1].triangle_gen|count\(24) & (\wavies[1].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[1].triangle_gen|count\(24) & (!\wavies[1].triangle_gen|Add1~47\ & VCC))
-- \wavies[1].triangle_gen|Add1~49\ = CARRY((\wavies[1].triangle_gen|count\(24) & !\wavies[1].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~47\,
	combout => \wavies[1].triangle_gen|Add1~48_combout\,
	cout => \wavies[1].triangle_gen|Add1~49\);

-- Location: LCCOMB_X35_Y18_N26
\wavies[1].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~58_combout\ = (\wavies[1].triangle_gen|count\(29) & (!\wavies[1].triangle_gen|Add1~57\)) # (!\wavies[1].triangle_gen|count\(29) & ((\wavies[1].triangle_gen|Add1~57\) # (GND)))
-- \wavies[1].triangle_gen|Add1~59\ = CARRY((!\wavies[1].triangle_gen|Add1~57\) # (!\wavies[1].triangle_gen|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~57\,
	combout => \wavies[1].triangle_gen|Add1~58_combout\,
	cout => \wavies[1].triangle_gen|Add1~59\);

-- Location: LCCOMB_X41_Y27_N12
\init|i2c_init_start_pulse|count[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[6]~29_combout\ = (\init|i2c_init_start_pulse|count\(6) & (\init|i2c_init_start_pulse|count[5]~28\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(6) & (!\init|i2c_init_start_pulse|count[5]~28\ & VCC))
-- \init|i2c_init_start_pulse|count[6]~30\ = CARRY((\init|i2c_init_start_pulse|count\(6) & !\init|i2c_init_start_pulse|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(6),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[5]~28\,
	combout => \init|i2c_init_start_pulse|count[6]~29_combout\,
	cout => \init|i2c_init_start_pulse|count[6]~30\);

-- Location: LCCOMB_X41_Y27_N28
\init|i2c_init_start_pulse|count[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[14]~45_combout\ = (\init|i2c_init_start_pulse|count\(14) & (\init|i2c_init_start_pulse|count[13]~44\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(14) & (!\init|i2c_init_start_pulse|count[13]~44\ & VCC))
-- \init|i2c_init_start_pulse|count[14]~46\ = CARRY((\init|i2c_init_start_pulse|count\(14) & !\init|i2c_init_start_pulse|count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(14),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[13]~44\,
	combout => \init|i2c_init_start_pulse|count[14]~45_combout\,
	cout => \init|i2c_init_start_pulse|count[14]~46\);

-- Location: LCCOMB_X41_Y27_N30
\init|i2c_init_start_pulse|count[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[15]~47_combout\ = \init|i2c_init_start_pulse|count[14]~46\ $ (\init|i2c_init_start_pulse|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init_start_pulse|count\(15),
	cin => \init|i2c_init_start_pulse|count[14]~46\,
	combout => \init|i2c_init_start_pulse|count[15]~47_combout\);

-- Location: LCFF_X38_Y23_N7
\r2|reset_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(13));

-- Location: LCCOMB_X37_Y23_N10
\r2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~1_combout\ = (\r2|reset_count\(7) & (!\r2|reset_count\(9) & (\r2|reset_count\(10) & !\r2|reset_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(7),
	datab => \r2|reset_count\(9),
	datac => \r2|reset_count\(10),
	datad => \r2|reset_count\(8),
	combout => \r2|Equal0~1_combout\);

-- Location: LCFF_X37_Y23_N25
\r2|reset_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r2|Add0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(2));

-- Location: LCFF_X38_Y23_N21
\r2|reset_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(20));

-- Location: LCFF_X38_Y23_N17
\r2|reset_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(18));

-- Location: LCFF_X1_Y18_N1
divider_25 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \divider_25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider_25~regout\);

-- Location: LCFF_X37_Y21_N21
\r|reset_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|reset_count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(2));

-- Location: LCFF_X38_Y21_N29
\r|reset_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(14));

-- Location: LCFF_X37_Y21_N15
\r|reset_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(12));

-- Location: LCFF_X38_Y21_N27
\r|reset_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(13));

-- Location: LCCOMB_X37_Y21_N12
\r|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Equal0~3_combout\ = (!\r|reset_count\(12) & (!\r|reset_count\(13) & \r|reset_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(12),
	datac => \r|reset_count\(13),
	datad => \r|reset_count\(14),
	combout => \r|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y21_N30
\reader|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Selector0~0_combout\ = (\reader|state\(4)) # ((\reader|state\(3)) # (\reader|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(4),
	datab => \reader|state\(3),
	datad => \reader|state\(0),
	combout => \reader|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y21_N12
\reader|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Selector0~1_combout\ = (\reader|Decoder1~0_combout\ & (!\reader|state\(1) & !\reader|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|Decoder1~0_combout\,
	datac => \reader|state\(1),
	datad => \reader|Selector0~0_combout\,
	combout => \reader|Selector0~1_combout\);

-- Location: LCCOMB_X35_Y21_N20
\reader|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Selector0~2_combout\ = (\reader|state\(2) & (((\reader|buttons_latch\(0))))) # (!\reader|state\(2) & ((\reader|Selector0~1_combout\ & (\NES_DO~combout\)) # (!\reader|Selector0~1_combout\ & ((\reader|buttons_latch\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(2),
	datab => \NES_DO~combout\,
	datac => \reader|buttons_latch\(0),
	datad => \reader|Selector0~1_combout\,
	combout => \reader|Selector0~2_combout\);

-- Location: LCCOMB_X32_Y21_N10
\reader|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~2_combout\ = (\reader|state\(3) & (!\reader|state\(4) & (!\reader|state\(1) & !\reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~2_combout\);

-- Location: LCFF_X45_Y24_N11
\init|i2c_master|delay_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(0));

-- Location: LCFF_X46_Y23_N21
\init|i2c_master|delay_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(15));

-- Location: LCFF_X45_Y24_N21
\init|i2c_master|delay_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(11));

-- Location: LCFF_X45_Y24_N3
\init|i2c_master|delay_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(7));

-- Location: LCFF_X45_Y24_N1
\init|i2c_master|delay_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(3));

-- Location: LCCOMB_X42_Y24_N24
\init|i2c_master|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|always0~0_combout\ = (\init|i2c_init|cmd_address_reg\(0) & (\init|i2c_master|addr_reg\(0) & (\init|i2c_init|cmd_address_reg\(1) $ (!\init|i2c_master|addr_reg\(1))))) # (!\init|i2c_init|cmd_address_reg\(0) & (!\init|i2c_master|addr_reg\(0) 
-- & (\init|i2c_init|cmd_address_reg\(1) $ (!\init|i2c_master|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_address_reg\(0),
	datab => \init|i2c_init|cmd_address_reg\(1),
	datac => \init|i2c_master|addr_reg\(1),
	datad => \init|i2c_master|addr_reg\(0),
	combout => \init|i2c_master|always0~0_combout\);

-- Location: LCFF_X41_Y24_N11
\init|i2c_master|bit_count_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector21~0_combout\,
	ena => \init|i2c_master|bit_count_reg[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|bit_count_reg\(3));

-- Location: LCCOMB_X44_Y25_N12
\init|i2c_master|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector37~1_combout\ = (\init|i2c_master|Selector37~0_combout\ & ((\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\) # (\init|i2c_master|state_reg.STATE_WRITE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datac => \init|i2c_master|Selector37~0_combout\,
	datad => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \init|i2c_master|Selector37~1_combout\);

-- Location: LCCOMB_X45_Y25_N6
\init|i2c_master|Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~2_combout\ = (!\init|i2c_master|Selector27~0_combout\ & ((\init|i2c_master|Selector37~1_combout\) # ((!\init|i2c_master|sda_o_reg~regout\ & !\init|i2c_master|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Selector27~0_combout\,
	datab => \init|i2c_master|sda_o_reg~regout\,
	datac => \init|i2c_master|Selector26~0_combout\,
	datad => \init|i2c_master|Selector37~1_combout\,
	combout => \init|i2c_master|Selector38~2_combout\);

-- Location: LCFF_X41_Y24_N7
\init|i2c_master|data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|data_reg[7]~feeder_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(7));

-- Location: LCFF_X41_Y25_N7
\init|i2c_master|data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector35~0_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(1));

-- Location: LCFF_X41_Y25_N21
\init|i2c_master|data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector36~0_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(0));

-- Location: LCCOMB_X41_Y24_N4
\init|i2c_master|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add1~0_combout\ = (\init|i2c_master|bit_count_reg\(1)) # (\init|i2c_master|bit_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Add1~0_combout\);

-- Location: LCCOMB_X43_Y24_N30
\init|i2c_master|delay_scl_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_scl_next~0_combout\ = (\init|i2c_master|delay_scl_reg~regout\ & (!\init|i2c_master|scl_o_reg~regout\ & \init|i2c_master|scl_i_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_scl_reg~regout\,
	datac => \init|i2c_master|scl_o_reg~regout\,
	datad => \init|i2c_master|scl_i_reg~regout\,
	combout => \init|i2c_master|delay_scl_next~0_combout\);

-- Location: LCCOMB_X45_Y24_N10
\init|i2c_master|delay_reg[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[0]~10_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~0_combout\) # ((\init|i2c_master|delay_reg\(0) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(0) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~0_combout\,
	datac => \init|i2c_master|delay_reg\(0),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[0]~10_combout\);

-- Location: LCCOMB_X46_Y23_N20
\init|i2c_master|delay_reg[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[15]~12_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~30_combout\) # ((\init|i2c_master|delay_reg\(15) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(15) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~30_combout\,
	datac => \init|i2c_master|delay_reg\(15),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[15]~12_combout\);

-- Location: LCCOMB_X45_Y24_N20
\init|i2c_master|delay_reg[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[11]~16_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~22_combout\) # ((\init|i2c_master|delay_reg\(11) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(11) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~22_combout\,
	datac => \init|i2c_master|delay_reg\(11),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[11]~16_combout\);

-- Location: LCCOMB_X45_Y24_N2
\init|i2c_master|delay_reg[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[7]~20_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~14_combout\) # ((\init|i2c_master|delay_reg\(7) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(7) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~14_combout\,
	datac => \init|i2c_master|delay_reg\(7),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[7]~20_combout\);

-- Location: LCCOMB_X45_Y24_N0
\init|i2c_master|delay_reg[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[3]~25_combout\ = (\init|i2c_master|delay_reg[2]~9_combout\ & ((\init|i2c_master|delay_reg\(3)))) # (!\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg[3]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg[3]~30_combout\,
	datac => \init|i2c_master|delay_reg\(3),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[3]~25_combout\);

-- Location: LCCOMB_X45_Y24_N14
\init|i2c_master|delay_reg[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~26_combout\ = (\r|Equal0~4_combout\ & ((\init|i2c_master|LessThan2~5_combout\ & (\init|i2c_master|Add2~4_combout\)) # (!\init|i2c_master|LessThan2~5_combout\ & 
-- ((!\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~4_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|delay_reg[2]~26_combout\);

-- Location: LCCOMB_X43_Y24_N12
\init|i2c_master|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector14~0_combout\ = (\init|i2c_master|bus_active_reg~regout\ & ((\init|i2c_master|state_reg.STATE_START_WAIT~regout\) # ((!\init|i2c_master|state_reg.STATE_IDLE~regout\ & \init|i2c_master|phy_start_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datad => \init|i2c_master|bus_active_reg~regout\,
	combout => \init|i2c_master|Selector14~0_combout\);

-- Location: LCCOMB_X43_Y24_N20
\init|i2c_master|bit_count_reg[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~0_combout\ = (\init|i2c_master|state_reg.STATE_IDLE~regout\ & !\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	combout => \init|i2c_master|bit_count_reg[3]~0_combout\);

-- Location: LCCOMB_X42_Y25_N6
\init|i2c_init|cmd_valid_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~5_combout\ = (\init|i2c_init|state_next~0_combout\ & (\init|i2c_init|Equal1~6_combout\ & ((\init|i2c_init|state_reg.STATE_RUN~regout\) # (\init|i2c_init|cmd_stop_reg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_next~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|Equal1~6_combout\,
	datad => \init|i2c_init|cmd_stop_reg~5_combout\,
	combout => \init|i2c_init|cmd_valid_next~5_combout\);

-- Location: LCFF_X43_Y23_N11
\init|i2c_init|cur_address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~4_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(2));

-- Location: LCFF_X43_Y23_N21
\init|i2c_init|cur_address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~5_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(3));

-- Location: LCFF_X42_Y26_N13
\init|i2c_init|cur_address_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~6_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(6));

-- Location: LCFF_X43_Y23_N13
\init|i2c_init|cur_address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~7_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(4));

-- Location: LCCOMB_X42_Y25_N20
\init|i2c_init|cmd_start_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~3_combout\ = (\init|i2c_init|cmd_start_next~0_combout\ & (!\init|i2c_init|Equal1~6_combout\ & ((\init|i2c_init|Equal4~0_combout\) # (\init|i2c_init|Equal5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal4~0_combout\,
	datab => \init|i2c_init|cmd_start_next~0_combout\,
	datac => \init|i2c_init|Equal1~6_combout\,
	datad => \init|i2c_init|Equal5~5_combout\,
	combout => \init|i2c_init|cmd_start_next~3_combout\);

-- Location: LCCOMB_X42_Y26_N18
\init|i2c_init|cmd_start_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~5_combout\ = (!\init|i2c_init|cmd_valid_reg~regout\ & (!\init|i2c_init|data_out_valid_reg~regout\ & !\init|i2c_init|init_data_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|init_data_reg\(8),
	combout => \init|i2c_init|cmd_start_next~5_combout\);

-- Location: LCCOMB_X43_Y24_N26
\init|i2c_master|bit_count_reg[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~1_combout\ = ((\init|i2c_master|state_reg.STATE_WRITE_1~regout\) # ((\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\) # (\init|i2c_master|state_reg.STATE_START_WAIT~regout\))) # 
-- (!\init|i2c_master|state_reg.STATE_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datab => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datac => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datad => \init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	combout => \init|i2c_master|bit_count_reg[3]~1_combout\);

-- Location: LCCOMB_X43_Y24_N10
\init|i2c_master|bit_count_reg[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~4_combout\ = (\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\init|i2c_master|phy_start_bit~0_combout\ & ((!\init|i2c_master|always0~3_combout\)))) # (!\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & 
-- ((\init|i2c_master|phy_start_bit~0_combout\) # ((\init|i2c_master|state_reg.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datad => \init|i2c_master|always0~3_combout\,
	combout => \init|i2c_master|bit_count_reg[3]~4_combout\);

-- Location: LCCOMB_X41_Y24_N10
\init|i2c_master|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector21~0_combout\ = (\init|i2c_master|bit_count_reg[3]~1_combout\) # (\init|i2c_master|bit_count_reg\(3) $ (((!\init|i2c_master|Add1~0_combout\ & !\init|i2c_master|bit_count_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~1_combout\,
	datab => \init|i2c_master|Add1~0_combout\,
	datac => \init|i2c_master|bit_count_reg\(3),
	datad => \init|i2c_master|bit_count_reg\(2),
	combout => \init|i2c_master|Selector21~0_combout\);

-- Location: LCFF_X41_Y25_N11
\init|i2c_init|data_out_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|init_data_reg\(7),
	sload => VCC,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(7));

-- Location: LCCOMB_X41_Y25_N10
\init|i2c_master|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector29~0_combout\ = (\init|i2c_init|data_out_reg\(7) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|data_out_reg\(7),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector29~0_combout\);

-- Location: LCFF_X41_Y25_N31
\init|i2c_init|data_out_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_out_reg[1]~feeder_combout\,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(1));

-- Location: LCCOMB_X41_Y25_N6
\init|i2c_master|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector35~0_combout\ = (\init|i2c_init|data_out_reg\(1) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|data_out_reg\(1),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector35~0_combout\);

-- Location: LCFF_X41_Y25_N13
\init|i2c_init|data_out_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|init_data_reg\(0),
	sload => VCC,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(0));

-- Location: LCCOMB_X41_Y25_N20
\init|i2c_master|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector36~0_combout\ = (\init|i2c_init|data_out_reg\(0) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_reg\(0),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector36~0_combout\);

-- Location: LCCOMB_X42_Y24_N12
\init|i2c_master|phy_state_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~7_combout\ = (\init|i2c_master|Selector37~2_combout\ & (!\init|i2c_master|bit_count_reg\(0) & ((\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\) # (\init|i2c_master|state_reg.STATE_WRITE_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datab => \init|i2c_master|Selector37~2_combout\,
	datac => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|phy_state_next~7_combout\);

-- Location: LCFF_X30_Y21_N23
\wavies[7].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(31));

-- Location: LCCOMB_X32_Y19_N12
\triangles[7][23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][23]~0_combout\ = (\reader|buttons\(0) & \wavies[7].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(0),
	datac => \wavies[7].triangle_gen|count\(31),
	combout => \triangles[7][23]~0_combout\);

-- Location: LCFF_X32_Y18_N21
\wavies[6].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(31));

-- Location: LCCOMB_X32_Y18_N26
\triangles[6][23]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][23]~1_combout\ = (\reader|buttons\(1) & \wavies[6].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(1),
	datac => \wavies[6].triangle_gen|count\(31),
	combout => \triangles[6][23]~1_combout\);

-- Location: LCFF_X30_Y21_N9
\wavies[7].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(30));

-- Location: LCCOMB_X32_Y19_N14
\triangles[7][22]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][22]~2_combout\ = (\reader|buttons\(0) & \wavies[7].triangle_gen|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(0),
	datac => \wavies[7].triangle_gen|count\(30),
	combout => \triangles[7][22]~2_combout\);

-- Location: LCFF_X30_Y21_N19
\wavies[7].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(29));

-- Location: LCCOMB_X32_Y19_N8
\triangles[7][21]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][21]~4_combout\ = (\reader|buttons\(0) & \wavies[7].triangle_gen|count\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(0),
	datad => \wavies[7].triangle_gen|count\(29),
	combout => \triangles[7][21]~4_combout\);

-- Location: LCFF_X30_Y21_N29
\wavies[7].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(28));

-- Location: LCCOMB_X32_Y19_N18
\triangles[7][20]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][20]~6_combout\ = (\wavies[7].triangle_gen|count\(28) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(28),
	datac => \reader|buttons\(0),
	combout => \triangles[7][20]~6_combout\);

-- Location: LCFF_X32_Y18_N17
\wavies[6].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(28));

-- Location: LCFF_X31_Y21_N23
\wavies[7].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(27));

-- Location: LCCOMB_X32_Y19_N20
\triangles[7][19]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][19]~8_combout\ = (\wavies[7].triangle_gen|count\(27) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(27),
	datac => \reader|buttons\(0),
	combout => \triangles[7][19]~8_combout\);

-- Location: LCFF_X31_Y18_N21
\wavies[6].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(26));

-- Location: LCCOMB_X32_Y18_N2
\triangles[6][18]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][18]~11_combout\ = (\wavies[6].triangle_gen|count\(26) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(26),
	datac => \reader|buttons\(1),
	combout => \triangles[6][18]~11_combout\);

-- Location: LCCOMB_X32_Y18_N4
\triangles[6][17]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][17]~13_combout\ = (\wavies[6].triangle_gen|count\(25) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(25),
	datac => \reader|buttons\(1),
	combout => \triangles[6][17]~13_combout\);

-- Location: LCFF_X31_Y21_N17
\wavies[7].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(24));

-- Location: LCCOMB_X32_Y19_N10
\triangles[7][16]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][16]~14_combout\ = (\wavies[7].triangle_gen|count\(24) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(24),
	datac => \reader|buttons\(0),
	combout => \triangles[7][16]~14_combout\);

-- Location: LCCOMB_X32_Y18_N24
\triangles[6][15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][15]~17_combout\ = (\wavies[6].triangle_gen|count\(23) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(23),
	datac => \reader|buttons\(1),
	combout => \triangles[6][15]~17_combout\);

-- Location: LCFF_X31_Y21_N13
\wavies[7].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(22));

-- Location: LCCOMB_X32_Y19_N30
\triangles[7][14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][14]~18_combout\ = (\wavies[7].triangle_gen|count\(22) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(22),
	datac => \reader|buttons\(0),
	combout => \triangles[7][14]~18_combout\);

-- Location: LCFF_X31_Y18_N13
\wavies[6].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(22));

-- Location: LCFF_X31_Y21_N11
\wavies[7].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(21));

-- Location: LCCOMB_X32_Y19_N28
\triangles[7][13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][13]~20_combout\ = (\reader|buttons\(0) & \wavies[7].triangle_gen|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(0),
	datac => \wavies[7].triangle_gen|count\(21),
	combout => \triangles[7][13]~20_combout\);

-- Location: LCCOMB_X32_Y18_N0
\triangles[6][12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][12]~23_combout\ = (\wavies[6].triangle_gen|count\(20) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(20),
	datac => \reader|buttons\(1),
	combout => \triangles[6][12]~23_combout\);

-- Location: LCFF_X31_Y21_N7
\wavies[7].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(19));

-- Location: LCCOMB_X31_Y20_N12
\triangles[7][11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][11]~24_combout\ = (\wavies[7].triangle_gen|count\(19) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(19),
	datad => \reader|buttons\(0),
	combout => \triangles[7][11]~24_combout\);

-- Location: LCCOMB_X32_Y20_N24
\triangles[6][10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][10]~27_combout\ = (\wavies[6].triangle_gen|count\(18) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(18),
	datad => \reader|buttons\(1),
	combout => \triangles[6][10]~27_combout\);

-- Location: LCCOMB_X31_Y20_N6
\triangles[7][9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][9]~28_combout\ = (\wavies[7].triangle_gen|count\(17) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(17),
	datad => \reader|buttons\(0),
	combout => \triangles[7][9]~28_combout\);

-- Location: LCCOMB_X32_Y20_N18
\triangles[7][8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][8]~30_combout\ = (\wavies[7].triangle_gen|count\(16) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[7].triangle_gen|count\(16),
	datad => \reader|buttons\(0),
	combout => \triangles[7][8]~30_combout\);

-- Location: LCCOMB_X32_Y20_N26
\triangles[6][7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][7]~33_combout\ = (\wavies[6].triangle_gen|count\(15) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(15),
	datad => \reader|buttons\(1),
	combout => \triangles[6][7]~33_combout\);

-- Location: LCCOMB_X32_Y20_N4
\triangles[6][6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][6]~35_combout\ = (\wavies[6].triangle_gen|count\(14) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(14),
	datad => \reader|buttons\(1),
	combout => \triangles[6][6]~35_combout\);

-- Location: LCCOMB_X32_Y20_N14
\triangles[7][5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][5]~36_combout\ = (\wavies[7].triangle_gen|count\(13) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(13),
	datad => \reader|buttons\(0),
	combout => \triangles[7][5]~36_combout\);

-- Location: LCFF_X31_Y22_N25
\wavies[7].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(12));

-- Location: LCFF_X31_Y19_N25
\wavies[6].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(12));

-- Location: LCCOMB_X32_Y20_N8
\triangles[6][4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][4]~39_combout\ = (\wavies[6].triangle_gen|count\(12) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(12),
	datad => \reader|buttons\(1),
	combout => \triangles[6][4]~39_combout\);

-- Location: LCCOMB_X32_Y20_N28
\triangles[6][3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][3]~41_combout\ = (\wavies[6].triangle_gen|count\(11) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(11),
	datad => \reader|buttons\(1),
	combout => \triangles[6][3]~41_combout\);

-- Location: LCFF_X31_Y19_N21
\wavies[6].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(10));

-- Location: LCCOMB_X32_Y20_N6
\triangles[6][2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][2]~43_combout\ = (\wavies[6].triangle_gen|count\(10) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(10),
	datad => \reader|buttons\(1),
	combout => \triangles[6][2]~43_combout\);

-- Location: LCCOMB_X32_Y20_N12
\triangles[6][1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][1]~45_combout\ = (\wavies[6].triangle_gen|count\(9) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(9),
	datad => \reader|buttons\(1),
	combout => \triangles[6][1]~45_combout\);

-- Location: LCFF_X31_Y19_N17
\wavies[6].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(8));

-- Location: LCCOMB_X32_Y20_N2
\triangles[6][0]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][0]~47_combout\ = (\wavies[6].triangle_gen|count\(8) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(8),
	datad => \reader|buttons\(1),
	combout => \triangles[6][0]~47_combout\);

-- Location: LCCOMB_X30_Y21_N6
\triangles[5][22]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][22]~51_combout\ = (\wavies[5].triangle_gen|count\(30) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(30),
	datad => \reader|buttons\(3),
	combout => \triangles[5][22]~51_combout\);

-- Location: LCCOMB_X30_Y21_N14
\triangles[5][21]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][21]~53_combout\ = (\wavies[5].triangle_gen|count\(29) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(29),
	datad => \reader|buttons\(3),
	combout => \triangles[5][21]~53_combout\);

-- Location: LCFF_X30_Y21_N17
\wavies[5].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(28));

-- Location: LCCOMB_X30_Y21_N30
\triangles[5][20]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][20]~55_combout\ = (\wavies[5].triangle_gen|count\(28) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(28),
	datad => \reader|buttons\(3),
	combout => \triangles[5][20]~55_combout\);

-- Location: LCCOMB_X30_Y21_N24
\triangles[5][19]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][19]~57_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(27),
	combout => \triangles[5][19]~57_combout\);

-- Location: LCFF_X29_Y21_N21
\wavies[5].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(26));

-- Location: LCCOMB_X30_Y21_N26
\triangles[5][18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][18]~59_combout\ = (\wavies[5].triangle_gen|count\(26) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(26),
	datad => \reader|buttons\(3),
	combout => \triangles[5][18]~59_combout\);

-- Location: LCCOMB_X30_Y21_N4
\triangles[5][17]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][17]~61_combout\ = (\wavies[5].triangle_gen|count\(25) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(25),
	datad => \reader|buttons\(3),
	combout => \triangles[5][17]~61_combout\);

-- Location: LCFF_X29_Y21_N17
\wavies[5].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(24));

-- Location: LCCOMB_X33_Y21_N12
\triangles[5][16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][16]~63_combout\ = (\wavies[5].triangle_gen|count\(24) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(24),
	datad => \reader|buttons\(3),
	combout => \triangles[5][16]~63_combout\);

-- Location: LCCOMB_X34_Y21_N24
\triangles[5][15]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][15]~65_combout\ = (\wavies[5].triangle_gen|count\(23) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(23),
	datad => \reader|buttons\(3),
	combout => \triangles[5][15]~65_combout\);

-- Location: LCFF_X36_Y21_N13
\wavies[4].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(22));

-- Location: LCCOMB_X35_Y21_N6
\triangles[4][14]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][14]~66_combout\ = (\wavies[4].triangle_gen|count\(22) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(22),
	datad => \reader|buttons\(2),
	combout => \triangles[4][14]~66_combout\);

-- Location: LCFF_X36_Y21_N11
\wavies[4].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(21));

-- Location: LCCOMB_X35_Y21_N4
\triangles[4][13]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][13]~68_combout\ = (\wavies[4].triangle_gen|count\(21) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(21),
	datad => \reader|buttons\(2),
	combout => \triangles[4][13]~68_combout\);

-- Location: LCCOMB_X35_Y21_N2
\triangles[4][12]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][12]~70_combout\ = (\wavies[4].triangle_gen|count\(20) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(20),
	datad => \reader|buttons\(2),
	combout => \triangles[4][12]~70_combout\);

-- Location: LCFF_X36_Y21_N7
\wavies[4].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(19));

-- Location: LCFF_X29_Y21_N7
\wavies[5].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(19));

-- Location: LCCOMB_X30_Y22_N18
\triangles[5][11]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][11]~73_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(19),
	combout => \triangles[5][11]~73_combout\);

-- Location: LCCOMB_X30_Y22_N0
\triangles[5][10]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][10]~75_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(18),
	combout => \triangles[5][10]~75_combout\);

-- Location: LCCOMB_X30_Y21_N10
\triangles[5][9]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][9]~77_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(17),
	combout => \triangles[5][9]~77_combout\);

-- Location: LCCOMB_X35_Y22_N2
\triangles[4][8]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][8]~78_combout\ = (\wavies[4].triangle_gen|count\(16) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(16),
	datad => \reader|buttons\(2),
	combout => \triangles[4][8]~78_combout\);

-- Location: LCCOMB_X30_Y22_N12
\triangles[5][7]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][7]~81_combout\ = (\wavies[5].triangle_gen|count\(15) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(15),
	datad => \reader|buttons\(3),
	combout => \triangles[5][7]~81_combout\);

-- Location: LCCOMB_X30_Y22_N30
\triangles[5][6]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][6]~83_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(14),
	combout => \triangles[5][6]~83_combout\);

-- Location: LCCOMB_X30_Y22_N24
\triangles[5][5]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][5]~85_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(13),
	combout => \triangles[5][5]~85_combout\);

-- Location: LCFF_X36_Y22_N25
\wavies[4].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(12));

-- Location: LCCOMB_X35_Y22_N6
\triangles[4][4]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][4]~86_combout\ = (\wavies[4].triangle_gen|count\(12) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(12),
	datad => \reader|buttons\(2),
	combout => \triangles[4][4]~86_combout\);

-- Location: LCCOMB_X35_Y22_N4
\triangles[4][3]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][3]~88_combout\ = (\wavies[4].triangle_gen|count\(11) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(11),
	datad => \reader|buttons\(2),
	combout => \triangles[4][3]~88_combout\);

-- Location: LCFF_X29_Y22_N21
\wavies[5].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(10));

-- Location: LCCOMB_X30_Y22_N22
\triangles[5][2]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][2]~91_combout\ = (\wavies[5].triangle_gen|count\(10) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(10),
	datad => \reader|buttons\(3),
	combout => \triangles[5][2]~91_combout\);

-- Location: LCCOMB_X30_Y22_N4
\triangles[5][1]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][1]~93_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(9),
	combout => \triangles[5][1]~93_combout\);

-- Location: LCFF_X36_Y22_N17
\wavies[4].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(8));

-- Location: LCCOMB_X35_Y22_N26
\triangles[4][0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][0]~94_combout\ = (\wavies[4].triangle_gen|count\(8) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(8),
	datad => \reader|buttons\(2),
	combout => \triangles[4][0]~94_combout\);

-- Location: LCCOMB_X32_Y25_N30
\triangles[3][23]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][23]~97_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(31),
	combout => \triangles[3][23]~97_combout\);

-- Location: LCCOMB_X32_Y25_N22
\triangles[3][22]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][22]~99_combout\ = (\wavies[3].triangle_gen|count\(30) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(30),
	datad => \reader|buttons\(7),
	combout => \triangles[3][22]~99_combout\);

-- Location: LCCOMB_X32_Y25_N26
\triangles[3][21]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][21]~101_combout\ = (\wavies[3].triangle_gen|count\(29) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(29),
	datad => \reader|buttons\(7),
	combout => \triangles[3][21]~101_combout\);

-- Location: LCCOMB_X31_Y23_N30
\triangles[2][20]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][20]~102_combout\ = (\wavies[2].triangle_gen|count\(28) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(28),
	datac => \reader|buttons\(4),
	combout => \triangles[2][20]~102_combout\);

-- Location: LCCOMB_X31_Y23_N0
\triangles[2][19]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][19]~104_combout\ = (\wavies[2].triangle_gen|count\(27) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(27),
	datac => \reader|buttons\(4),
	combout => \triangles[2][19]~104_combout\);

-- Location: LCFF_X30_Y23_N21
\wavies[2].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(26));

-- Location: LCFF_X31_Y25_N21
\wavies[3].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(26));

-- Location: LCCOMB_X31_Y23_N2
\triangles[3][18]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][18]~107_combout\ = (\wavies[3].triangle_gen|count\(26) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(26),
	datad => \reader|buttons\(7),
	combout => \triangles[3][18]~107_combout\);

-- Location: LCCOMB_X31_Y23_N12
\triangles[2][17]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][17]~108_combout\ = (\wavies[2].triangle_gen|count\(25) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(25),
	datac => \reader|buttons\(4),
	combout => \triangles[2][17]~108_combout\);

-- Location: LCFF_X30_Y23_N17
\wavies[2].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(24));

-- Location: LCCOMB_X31_Y23_N8
\triangles[2][16]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][16]~110_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(24),
	combout => \triangles[2][16]~110_combout\);

-- Location: LCCOMB_X32_Y23_N28
\triangles[3][15]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][15]~113_combout\ = (\wavies[3].triangle_gen|count\(23) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(23),
	datad => \reader|buttons\(7),
	combout => \triangles[3][15]~113_combout\);

-- Location: LCFF_X30_Y23_N13
\wavies[2].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(22));

-- Location: LCCOMB_X31_Y23_N10
\triangles[2][14]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][14]~114_combout\ = (\wavies[2].triangle_gen|count\(22) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(22),
	datac => \reader|buttons\(4),
	combout => \triangles[2][14]~114_combout\);

-- Location: LCFF_X30_Y23_N11
\wavies[2].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(21));

-- Location: LCFF_X31_Y25_N11
\wavies[3].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(21));

-- Location: LCCOMB_X32_Y23_N24
\triangles[3][13]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][13]~117_combout\ = (\wavies[3].triangle_gen|count\(21) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(21),
	datad => \reader|buttons\(7),
	combout => \triangles[3][13]~117_combout\);

-- Location: LCCOMB_X31_Y23_N14
\triangles[2][12]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][12]~118_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(20),
	combout => \triangles[2][12]~118_combout\);

-- Location: LCCOMB_X31_Y24_N24
\triangles[2][11]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][11]~120_combout\ = (\wavies[2].triangle_gen|count\(19) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[2].triangle_gen|count\(19),
	datad => \reader|buttons\(4),
	combout => \triangles[2][11]~120_combout\);

-- Location: LCCOMB_X33_Y24_N4
\triangles[3][10]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][10]~123_combout\ = (\wavies[3].triangle_gen|count\(18) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(18),
	datad => \reader|buttons\(7),
	combout => \triangles[3][10]~123_combout\);

-- Location: LCCOMB_X31_Y24_N10
\triangles[3][9]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][9]~125_combout\ = (\wavies[3].triangle_gen|count\(17) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(17),
	datad => \reader|buttons\(7),
	combout => \triangles[3][9]~125_combout\);

-- Location: LCCOMB_X31_Y24_N20
\triangles[2][8]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][8]~126_combout\ = (\wavies[2].triangle_gen|count\(16) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(16),
	datad => \reader|buttons\(4),
	combout => \triangles[2][8]~126_combout\);

-- Location: LCCOMB_X31_Y24_N8
\triangles[2][7]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][7]~128_combout\ = (\wavies[2].triangle_gen|count\(15) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[2].triangle_gen|count\(15),
	datad => \reader|buttons\(4),
	combout => \triangles[2][7]~128_combout\);

-- Location: LCCOMB_X31_Y26_N0
\triangles[3][6]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][6]~131_combout\ = (\wavies[3].triangle_gen|count\(14) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(14),
	datad => \reader|buttons\(7),
	combout => \triangles[3][6]~131_combout\);

-- Location: LCCOMB_X32_Y26_N6
\triangles[3][5]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][5]~133_combout\ = (\wavies[3].triangle_gen|count\(13) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(13),
	datad => \reader|buttons\(7),
	combout => \triangles[3][5]~133_combout\);

-- Location: LCFF_X31_Y26_N25
\wavies[3].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(12));

-- Location: LCCOMB_X31_Y24_N0
\triangles[3][4]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][4]~135_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(12),
	combout => \triangles[3][4]~135_combout\);

-- Location: LCCOMB_X31_Y24_N2
\triangles[2][3]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][3]~136_combout\ = (\wavies[2].triangle_gen|count\(11) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(11),
	datad => \reader|buttons\(4),
	combout => \triangles[2][3]~136_combout\);

-- Location: LCFF_X30_Y24_N21
\wavies[2].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(10));

-- Location: LCCOMB_X31_Y24_N12
\triangles[2][2]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][2]~138_combout\ = (\wavies[2].triangle_gen|count\(10) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[2].triangle_gen|count\(10),
	datad => \reader|buttons\(4),
	combout => \triangles[2][2]~138_combout\);

-- Location: LCCOMB_X31_Y24_N30
\triangles[2][1]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][1]~140_combout\ = (\wavies[2].triangle_gen|count\(9) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(9),
	datad => \reader|buttons\(4),
	combout => \triangles[2][1]~140_combout\);

-- Location: LCFF_X31_Y26_N17
\wavies[3].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(8));

-- Location: LCCOMB_X32_Y24_N6
\triangles[3][0]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][0]~143_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(8),
	combout => \triangles[3][0]~143_combout\);

-- Location: LCFF_X34_Y18_N5
\wavies[0].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(31));

-- Location: LCCOMB_X33_Y20_N12
\triangles[0][23]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][23]~144_combout\ = (\wavies[0].triangle_gen|count\(31) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(31),
	datad => \reader|buttons\(5),
	combout => \triangles[0][23]~144_combout\);

-- Location: LCCOMB_X34_Y17_N8
\triangles[1][23]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][23]~145_combout\ = (\wavies[1].triangle_gen|count\(31) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(31),
	datac => \reader|buttons\(6),
	combout => \triangles[1][23]~145_combout\);

-- Location: LCFF_X34_Y18_N1
\wavies[0].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(30));

-- Location: LCCOMB_X33_Y20_N18
\triangles[0][22]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][22]~146_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(30),
	combout => \triangles[0][22]~146_combout\);

-- Location: LCFF_X34_Y18_N9
\wavies[0].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(29));

-- Location: LCCOMB_X34_Y18_N10
\triangles[0][21]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][21]~148_combout\ = (\wavies[0].triangle_gen|count\(29) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[0].triangle_gen|count\(29),
	datad => \reader|buttons\(5),
	combout => \triangles[0][21]~148_combout\);

-- Location: LCFF_X34_Y18_N17
\wavies[0].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(28));

-- Location: LCCOMB_X34_Y18_N26
\triangles[0][20]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][20]~150_combout\ = (\wavies[0].triangle_gen|count\(28) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[0].triangle_gen|count\(28),
	datad => \reader|buttons\(5),
	combout => \triangles[0][20]~150_combout\);

-- Location: LCFF_X33_Y18_N23
\wavies[0].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(27));

-- Location: LCCOMB_X34_Y18_N24
\triangles[0][19]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][19]~152_combout\ = (\wavies[0].triangle_gen|count\(27) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(27),
	datad => \reader|buttons\(5),
	combout => \triangles[0][19]~152_combout\);

-- Location: LCFF_X33_Y18_N21
\wavies[0].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(26));

-- Location: LCCOMB_X33_Y20_N4
\triangles[0][18]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][18]~154_combout\ = (\wavies[0].triangle_gen|count\(26) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[0].triangle_gen|count\(26),
	datad => \reader|buttons\(5),
	combout => \triangles[0][18]~154_combout\);

-- Location: LCCOMB_X35_Y20_N24
\triangles[1][17]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][17]~157_combout\ = (\wavies[1].triangle_gen|count\(25) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(25),
	datad => \reader|buttons\(6),
	combout => \triangles[1][17]~157_combout\);

-- Location: LCFF_X35_Y18_N17
\wavies[1].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(24));

-- Location: LCCOMB_X35_Y20_N10
\triangles[1][16]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][16]~159_combout\ = (\wavies[1].triangle_gen|count\(24) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(24),
	datad => \reader|buttons\(6),
	combout => \triangles[1][16]~159_combout\);

-- Location: LCCOMB_X35_Y20_N20
\triangles[1][15]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][15]~161_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(23),
	combout => \triangles[1][15]~161_combout\);

-- Location: LCFF_X33_Y18_N13
\wavies[0].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(22));

-- Location: LCCOMB_X33_Y20_N28
\triangles[0][14]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][14]~162_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(22),
	combout => \triangles[0][14]~162_combout\);

-- Location: LCFF_X35_Y18_N11
\wavies[1].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(21));

-- Location: LCCOMB_X35_Y20_N22
\triangles[1][13]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][13]~165_combout\ = (\wavies[1].triangle_gen|count\(21) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(21),
	datad => \reader|buttons\(6),
	combout => \triangles[1][13]~165_combout\);

-- Location: LCCOMB_X34_Y19_N24
\triangles[0][12]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][12]~166_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(20),
	combout => \triangles[0][12]~166_combout\);

-- Location: LCFF_X33_Y20_N25
\wavies[0].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[0].triangle_gen|Add1~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(19));

-- Location: LCCOMB_X33_Y20_N10
\triangles[0][11]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][11]~168_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(19),
	combout => \triangles[0][11]~168_combout\);

-- Location: LCCOMB_X33_Y20_N0
\triangles[0][10]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][10]~170_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(18),
	combout => \triangles[0][10]~170_combout\);

-- Location: LCCOMB_X33_Y20_N2
\triangles[0][9]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][9]~172_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(17),
	combout => \triangles[0][9]~172_combout\);

-- Location: LCCOMB_X33_Y20_N20
\triangles[0][8]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][8]~174_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(16),
	combout => \triangles[0][8]~174_combout\);

-- Location: LCCOMB_X35_Y20_N26
\triangles[1][7]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][7]~177_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(15),
	combout => \triangles[1][7]~177_combout\);

-- Location: LCCOMB_X33_Y20_N8
\triangles[0][6]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][6]~178_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(14),
	combout => \triangles[0][6]~178_combout\);

-- Location: LCCOMB_X34_Y20_N6
\triangles[0][5]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][5]~180_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(13),
	combout => \triangles[0][5]~180_combout\);

-- Location: LCFF_X33_Y19_N25
\wavies[0].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(12));

-- Location: LCCOMB_X33_Y20_N14
\triangles[0][4]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][4]~182_combout\ = (\wavies[0].triangle_gen|count\(12) & \reader|buttons\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[0].triangle_gen|count\(12),
	datad => \reader|buttons\(5),
	combout => \triangles[0][4]~182_combout\);

-- Location: LCCOMB_X35_Y20_N4
\triangles[1][3]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][3]~185_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(11),
	combout => \triangles[1][3]~185_combout\);

-- Location: LCFF_X35_Y19_N21
\wavies[1].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(10));

-- Location: LCCOMB_X35_Y20_N2
\triangles[1][2]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][2]~187_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(10),
	combout => \triangles[1][2]~187_combout\);

-- Location: LCCOMB_X35_Y20_N16
\triangles[1][1]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][1]~189_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(9),
	combout => \triangles[1][1]~189_combout\);

-- Location: LCFF_X33_Y19_N17
\wavies[0].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(8));

-- Location: LCCOMB_X33_Y19_N0
\triangles[0][0]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][0]~190_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(8),
	combout => \triangles[0][0]~190_combout\);

-- Location: LCFF_X43_Y26_N7
\init|i2c_init|address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(4));

-- Location: LCCOMB_X43_Y26_N16
\init|i2c_init|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~1_combout\ = \init|i2c_init|address_reg\(4) $ (\init|i2c_init|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(4),
	datad => \init|i2c_init|Add0~0_combout\,
	combout => \init|i2c_init|Add0~1_combout\);

-- Location: LCCOMB_X42_Y27_N10
\init|i2c_init_start_pulse|pulse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|pulse~0_combout\ = (!\init|i2c_init_start_pulse|count\(0) & !\init|i2c_init_start_pulse|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init_start_pulse|count\(0),
	datad => \init|i2c_init_start_pulse|count\(1),
	combout => \init|i2c_init_start_pulse|pulse~0_combout\);

-- Location: LCCOMB_X43_Y26_N24
\init|i2c_init|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~2_combout\ = \init|i2c_init|address_reg\(5) $ (((\init|i2c_init|address_reg\(4) & \init|i2c_init|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(4),
	datab => \init|i2c_init|address_reg\(5),
	datad => \init|i2c_init|Add0~0_combout\,
	combout => \init|i2c_init|Add0~2_combout\);

-- Location: LCFF_X45_Y27_N29
\init|i2c_init|data_ptr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~18_combout\,
	sload => VCC,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(2));

-- Location: LCFF_X45_Y27_N7
\init|i2c_init|address_ptr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~18_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(2));

-- Location: LCFF_X45_Y27_N9
\init|i2c_init|data_ptr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_ptr_reg~13_combout\,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(0));

-- Location: LCFF_X45_Y27_N11
\init|i2c_init|data_ptr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_ptr_reg~19_combout\,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(1));

-- Location: LCCOMB_X42_Y26_N20
\init|i2c_init|state_next.STATE_TABLE_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_1~1_combout\ = (!\init|i2c_init|Equal2~0_combout\ & ((\init|i2c_init|state_reg.STATE_RUN~regout\) # ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\) # (\init|i2c_init|state_reg.STATE_TABLE_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_1~1_combout\);

-- Location: LCCOMB_X42_Y26_N16
\init|i2c_init|state_next.STATE_TABLE_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_2~1_combout\ = (\init|i2c_init|Equal2~0_combout\ & (!\init|i2c_init|Equal0~0_combout\ & (!\init|i2c_init|Equal5~5_combout\ & !\init|i2c_init|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal2~0_combout\,
	datab => \init|i2c_init|Equal0~0_combout\,
	datac => \init|i2c_init|Equal5~5_combout\,
	datad => \init|i2c_init|Equal3~1_combout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_2~1_combout\);

-- Location: LCCOMB_X43_Y23_N10
\init|i2c_init|cur_address_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~4_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data_reg\(2),
	combout => \init|i2c_init|cur_address_reg~4_combout\);

-- Location: LCCOMB_X43_Y23_N20
\init|i2c_init|cur_address_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~5_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data_reg\(3),
	combout => \init|i2c_init|cur_address_reg~5_combout\);

-- Location: LCCOMB_X42_Y26_N12
\init|i2c_init|cur_address_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~6_combout\ = (\init|i2c_init|init_data_reg\(6) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data_reg\(6),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|cur_address_reg~6_combout\);

-- Location: LCCOMB_X43_Y23_N12
\init|i2c_init|cur_address_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~7_combout\ = (\init|i2c_init|init_data_reg\(4) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(4),
	datac => \r|Equal0~4_combout\,
	combout => \init|i2c_init|cur_address_reg~7_combout\);

-- Location: LCCOMB_X45_Y25_N12
\init|i2c_master|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector59~0_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\) # ((!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & \init|i2c_master|Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datad => \init|i2c_master|Selector20~0_combout\,
	combout => \init|i2c_master|Selector59~0_combout\);

-- Location: LCFF_X31_Y22_N13
\wavies[7].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(6));

-- Location: LCFF_X31_Y22_N11
\wavies[7].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(5));

-- Location: LCFF_X31_Y22_N7
\wavies[7].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(3));

-- Location: LCCOMB_X30_Y21_N22
\wavies[7].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|count~0_combout\ = (\wavies[7].triangle_gen|Add1~62_combout\ & ((\wavies[7].triangle_gen|Add1~56_combout\) # ((\wavies[7].triangle_gen|Add1~58_combout\) # (\wavies[7].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|Add1~56_combout\,
	datab => \wavies[7].triangle_gen|Add1~62_combout\,
	datac => \wavies[7].triangle_gen|Add1~58_combout\,
	datad => \wavies[7].triangle_gen|Add1~60_combout\,
	combout => \wavies[7].triangle_gen|count~0_combout\);

-- Location: LCFF_X31_Y19_N13
\wavies[6].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(6));

-- Location: LCFF_X31_Y19_N11
\wavies[6].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(5));

-- Location: LCFF_X31_Y19_N7
\wavies[6].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(3));

-- Location: LCCOMB_X32_Y18_N20
\wavies[6].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|count~0_combout\ = (\wavies[6].triangle_gen|Add1~60_combout\ & ((\wavies[6].triangle_gen|Add1~54_combout\) # ((\wavies[6].triangle_gen|Add1~56_combout\) # (\wavies[6].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|Add1~54_combout\,
	datab => \wavies[6].triangle_gen|Add1~56_combout\,
	datac => \wavies[6].triangle_gen|Add1~60_combout\,
	datad => \wavies[6].triangle_gen|Add1~58_combout\,
	combout => \wavies[6].triangle_gen|count~0_combout\);

-- Location: LCCOMB_X30_Y21_N8
\wavies[7].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|count~1_combout\ = (\wavies[7].triangle_gen|Add1~56_combout\ & (((\wavies[7].triangle_gen|Add1~60_combout\)))) # (!\wavies[7].triangle_gen|Add1~56_combout\ & ((\wavies[7].triangle_gen|Add1~58_combout\ & 
-- ((\wavies[7].triangle_gen|Add1~60_combout\))) # (!\wavies[7].triangle_gen|Add1~58_combout\ & (\wavies[7].triangle_gen|Add1~62_combout\ & !\wavies[7].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|Add1~56_combout\,
	datab => \wavies[7].triangle_gen|Add1~62_combout\,
	datac => \wavies[7].triangle_gen|Add1~58_combout\,
	datad => \wavies[7].triangle_gen|Add1~60_combout\,
	combout => \wavies[7].triangle_gen|count~1_combout\);

-- Location: LCCOMB_X30_Y21_N18
\wavies[7].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|count~2_combout\ = (\wavies[7].triangle_gen|Add1~56_combout\ & (((\wavies[7].triangle_gen|Add1~58_combout\)))) # (!\wavies[7].triangle_gen|Add1~56_combout\ & (!\wavies[7].triangle_gen|Add1~58_combout\ & 
-- ((\wavies[7].triangle_gen|Add1~62_combout\) # (\wavies[7].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|Add1~56_combout\,
	datab => \wavies[7].triangle_gen|Add1~62_combout\,
	datac => \wavies[7].triangle_gen|Add1~58_combout\,
	datad => \wavies[7].triangle_gen|Add1~60_combout\,
	combout => \wavies[7].triangle_gen|count~2_combout\);

-- Location: LCCOMB_X30_Y21_N28
\wavies[7].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|count~3_combout\ = (!\wavies[7].triangle_gen|Add1~56_combout\ & ((\wavies[7].triangle_gen|Add1~62_combout\) # ((\wavies[7].triangle_gen|Add1~58_combout\) # (\wavies[7].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|Add1~56_combout\,
	datab => \wavies[7].triangle_gen|Add1~62_combout\,
	datac => \wavies[7].triangle_gen|Add1~58_combout\,
	datad => \wavies[7].triangle_gen|Add1~60_combout\,
	combout => \wavies[7].triangle_gen|count~3_combout\);

-- Location: LCCOMB_X32_Y18_N16
\wavies[6].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|count~3_combout\ = (!\wavies[6].triangle_gen|Add1~54_combout\ & ((\wavies[6].triangle_gen|Add1~60_combout\) # ((\wavies[6].triangle_gen|Add1~56_combout\) # (\wavies[6].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|Add1~60_combout\,
	datab => \wavies[6].triangle_gen|Add1~56_combout\,
	datac => \wavies[6].triangle_gen|Add1~54_combout\,
	datad => \wavies[6].triangle_gen|Add1~58_combout\,
	combout => \wavies[6].triangle_gen|count~3_combout\);

-- Location: LCFF_X36_Y22_N13
\wavies[4].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(6));

-- Location: LCFF_X36_Y22_N11
\wavies[4].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(5));

-- Location: LCFF_X36_Y22_N7
\wavies[4].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(3));

-- Location: LCFF_X29_Y22_N13
\wavies[5].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(6));

-- Location: LCFF_X29_Y22_N11
\wavies[5].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(5));

-- Location: LCFF_X29_Y22_N7
\wavies[5].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(3));

-- Location: LCCOMB_X30_Y21_N16
\wavies[5].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|count~3_combout\ = (!\wavies[5].triangle_gen|Add1~54_combout\ & ((\wavies[5].triangle_gen|Add1~60_combout\) # ((\wavies[5].triangle_gen|Add1~56_combout\) # (\wavies[5].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|Add1~60_combout\,
	datab => \wavies[5].triangle_gen|Add1~54_combout\,
	datac => \wavies[5].triangle_gen|Add1~56_combout\,
	datad => \wavies[5].triangle_gen|Add1~58_combout\,
	combout => \wavies[5].triangle_gen|count~3_combout\);

-- Location: LCFF_X30_Y24_N13
\wavies[2].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(6));

-- Location: LCFF_X30_Y24_N11
\wavies[2].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(5));

-- Location: LCFF_X30_Y24_N7
\wavies[2].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(3));

-- Location: LCFF_X31_Y26_N13
\wavies[3].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(6));

-- Location: LCFF_X31_Y26_N11
\wavies[3].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(5));

-- Location: LCFF_X31_Y26_N7
\wavies[3].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(3));

-- Location: LCFF_X33_Y19_N13
\wavies[0].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(6));

-- Location: LCFF_X33_Y19_N11
\wavies[0].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(5));

-- Location: LCFF_X33_Y19_N7
\wavies[0].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(3));

-- Location: LCCOMB_X34_Y18_N4
\wavies[0].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|count~0_combout\ = (\wavies[0].triangle_gen|Add1~60_combout\ & ((\wavies[0].triangle_gen|Add1~56_combout\) # ((\wavies[0].triangle_gen|Add1~58_combout\) # (\wavies[0].triangle_gen|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|Add1~60_combout\,
	datab => \wavies[0].triangle_gen|Add1~56_combout\,
	datac => \wavies[0].triangle_gen|Add1~58_combout\,
	datad => \wavies[0].triangle_gen|Add1~54_combout\,
	combout => \wavies[0].triangle_gen|count~0_combout\);

-- Location: LCFF_X35_Y19_N13
\wavies[1].triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(6));

-- Location: LCFF_X35_Y19_N11
\wavies[1].triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(5));

-- Location: LCFF_X35_Y19_N7
\wavies[1].triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(3));

-- Location: LCCOMB_X34_Y18_N0
\wavies[0].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|count~1_combout\ = (\wavies[0].triangle_gen|Add1~56_combout\ & (((\wavies[0].triangle_gen|Add1~58_combout\)))) # (!\wavies[0].triangle_gen|Add1~56_combout\ & ((\wavies[0].triangle_gen|Add1~58_combout\ & 
-- ((\wavies[0].triangle_gen|Add1~54_combout\))) # (!\wavies[0].triangle_gen|Add1~58_combout\ & (\wavies[0].triangle_gen|Add1~60_combout\ & !\wavies[0].triangle_gen|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|Add1~60_combout\,
	datab => \wavies[0].triangle_gen|Add1~56_combout\,
	datac => \wavies[0].triangle_gen|Add1~58_combout\,
	datad => \wavies[0].triangle_gen|Add1~54_combout\,
	combout => \wavies[0].triangle_gen|count~1_combout\);

-- Location: LCCOMB_X34_Y18_N8
\wavies[0].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|count~2_combout\ = (\wavies[0].triangle_gen|Add1~56_combout\ & (((\wavies[0].triangle_gen|Add1~54_combout\)))) # (!\wavies[0].triangle_gen|Add1~56_combout\ & (!\wavies[0].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[0].triangle_gen|Add1~60_combout\) # (\wavies[0].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|Add1~60_combout\,
	datab => \wavies[0].triangle_gen|Add1~56_combout\,
	datac => \wavies[0].triangle_gen|Add1~58_combout\,
	datad => \wavies[0].triangle_gen|Add1~54_combout\,
	combout => \wavies[0].triangle_gen|count~2_combout\);

-- Location: LCCOMB_X34_Y18_N16
\wavies[0].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|count~3_combout\ = (!\wavies[0].triangle_gen|Add1~54_combout\ & ((\wavies[0].triangle_gen|Add1~60_combout\) # ((\wavies[0].triangle_gen|Add1~56_combout\) # (\wavies[0].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|Add1~60_combout\,
	datab => \wavies[0].triangle_gen|Add1~56_combout\,
	datac => \wavies[0].triangle_gen|Add1~58_combout\,
	datad => \wavies[0].triangle_gen|Add1~54_combout\,
	combout => \wavies[0].triangle_gen|count~3_combout\);

-- Location: LCCOMB_X43_Y26_N6
\init|i2c_init|address_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~0_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data.raddr_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|address_reg~0_combout\);

-- Location: LCCOMB_X42_Y26_N14
\init|i2c_init|data_ptr_reg[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[1]~11_combout\ = (!\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & ((\init|i2c_init|init_data_reg\(7)) # ((\init|i2c_init|init_data_reg\(8)) # (!\init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \init|i2c_init|init_data_reg\(7),
	datac => \init|i2c_init|init_data_reg\(8),
	datad => \init|i2c_init|state_reg.STATE_RUN~regout\,
	combout => \init|i2c_init|data_ptr_reg[1]~11_combout\);

-- Location: LCFF_X35_Y23_N31
\i2s|data_shift[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~11_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(23));

-- Location: LCFF_X35_Y23_N25
\i2s|data_shift[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~12_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(22));

-- Location: LCCOMB_X35_Y23_N30
\i2s|data_shift~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~11_combout\ = (\i2s|data_shift\(22) & (((\i2s|data_shift~5_combout\ & \d[16]~32_combout\)) # (!\i2s|bitcount[0]~6_combout\))) # (!\i2s|data_shift\(22) & (\i2s|data_shift~5_combout\ & ((\d[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(22),
	datab => \i2s|data_shift~5_combout\,
	datac => \i2s|bitcount[0]~6_combout\,
	datad => \d[16]~32_combout\,
	combout => \i2s|data_shift~11_combout\);

-- Location: LCFF_X35_Y23_N27
\i2s|data_shift[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~13_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(21));

-- Location: LCCOMB_X35_Y23_N24
\i2s|data_shift~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~12_combout\ = (\i2s|data_shift\(21) & (((\i2s|data_shift~5_combout\ & \d[15]~30_combout\)) # (!\i2s|bitcount[0]~6_combout\))) # (!\i2s|data_shift\(21) & (\i2s|data_shift~5_combout\ & ((\d[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(21),
	datab => \i2s|data_shift~5_combout\,
	datac => \i2s|bitcount[0]~6_combout\,
	datad => \d[15]~30_combout\,
	combout => \i2s|data_shift~12_combout\);

-- Location: LCFF_X36_Y23_N31
\i2s|data_shift[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~14_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(20));

-- Location: LCCOMB_X35_Y23_N26
\i2s|data_shift~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~13_combout\ = (\i2s|data_shift\(20) & (((\i2s|data_shift~5_combout\ & \d[14]~28_combout\)) # (!\i2s|bitcount[0]~6_combout\))) # (!\i2s|data_shift\(20) & (\i2s|data_shift~5_combout\ & (\d[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(20),
	datab => \i2s|data_shift~5_combout\,
	datac => \d[14]~28_combout\,
	datad => \i2s|bitcount[0]~6_combout\,
	combout => \i2s|data_shift~13_combout\);

-- Location: LCFF_X36_Y23_N1
\i2s|data_shift[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~15_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(19));

-- Location: LCCOMB_X36_Y23_N30
\i2s|data_shift~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~14_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\d[13]~26_combout\ & \i2s|data_shift~5_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(19)) # ((\d[13]~26_combout\ & \i2s|data_shift~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(19),
	datac => \d[13]~26_combout\,
	datad => \i2s|data_shift~5_combout\,
	combout => \i2s|data_shift~14_combout\);

-- Location: LCFF_X36_Y24_N25
\i2s|data_shift[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~16_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(18));

-- Location: LCCOMB_X36_Y23_N0
\i2s|data_shift~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~15_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\d[12]~24_combout\ & \i2s|data_shift~5_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(18)) # ((\d[12]~24_combout\ & \i2s|data_shift~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(18),
	datac => \d[12]~24_combout\,
	datad => \i2s|data_shift~5_combout\,
	combout => \i2s|data_shift~15_combout\);

-- Location: LCFF_X36_Y23_N3
\i2s|data_shift[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~17_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(17));

-- Location: LCCOMB_X36_Y24_N24
\i2s|data_shift~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~16_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(17))) # (!\i2s|Equal0~1_combout\ & ((\d[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \r2|Equal0~6_combout\,
	datac => \i2s|data_shift\(17),
	datad => \d[11]~22_combout\,
	combout => \i2s|data_shift~16_combout\);

-- Location: LCFF_X36_Y24_N17
\i2s|data_shift[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~18_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(16));

-- Location: LCCOMB_X36_Y23_N2
\i2s|data_shift~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~17_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(16))) # (!\i2s|Equal0~1_combout\ & ((\d[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(16),
	datab => \i2s|Equal0~1_combout\,
	datac => \d[10]~20_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~17_combout\);

-- Location: LCFF_X36_Y24_N29
\i2s|data_shift[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~19_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(15));

-- Location: LCCOMB_X36_Y24_N16
\i2s|data_shift~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~18_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(15))) # (!\i2s|Equal0~1_combout\ & ((\d[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(15),
	datac => \d[9]~18_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~18_combout\);

-- Location: LCFF_X35_Y24_N5
\i2s|data_shift[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~20_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(14));

-- Location: LCCOMB_X36_Y24_N28
\i2s|data_shift~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~19_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(14))) # (!\i2s|Equal0~1_combout\ & ((\d[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(14),
	datab => \r2|Equal0~6_combout\,
	datac => \i2s|Equal0~1_combout\,
	datad => \d[8]~16_combout\,
	combout => \i2s|data_shift~19_combout\);

-- Location: LCFF_X35_Y24_N7
\i2s|data_shift[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~21_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(13));

-- Location: LCCOMB_X35_Y24_N4
\i2s|data_shift~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~20_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(13))) # (!\i2s|Equal0~1_combout\ & ((\d[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(13),
	datab => \d[7]~14_combout\,
	datac => \i2s|Equal0~1_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~20_combout\);

-- Location: LCFF_X36_Y24_N7
\i2s|data_shift[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~22_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(12));

-- Location: LCCOMB_X35_Y24_N6
\i2s|data_shift~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~21_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(12))) # (!\i2s|Equal0~1_combout\ & ((\d[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(12),
	datab => \i2s|Equal0~1_combout\,
	datac => \d[6]~12_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~21_combout\);

-- Location: LCFF_X36_Y24_N13
\i2s|data_shift[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~23_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(11));

-- Location: LCCOMB_X36_Y24_N6
\i2s|data_shift~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~22_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(11))) # (!\i2s|Equal0~1_combout\ & ((\d[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(11),
	datab => \r2|Equal0~6_combout\,
	datac => \i2s|Equal0~1_combout\,
	datad => \d[5]~10_combout\,
	combout => \i2s|data_shift~22_combout\);

-- Location: LCFF_X36_Y24_N31
\i2s|data_shift[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~24_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(10));

-- Location: LCCOMB_X36_Y24_N12
\i2s|data_shift~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~23_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(10))) # (!\i2s|Equal0~1_combout\ & ((\d[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(10),
	datac => \d[4]~8_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~23_combout\);

-- Location: LCFF_X36_Y24_N27
\i2s|data_shift[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~25_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(9));

-- Location: LCCOMB_X36_Y24_N30
\i2s|data_shift~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~24_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(9))) # (!\i2s|Equal0~1_combout\ & ((\d[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(9),
	datab => \r2|Equal0~6_combout\,
	datac => \i2s|Equal0~1_combout\,
	datad => \d[3]~6_combout\,
	combout => \i2s|data_shift~24_combout\);

-- Location: LCFF_X36_Y24_N5
\i2s|data_shift[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~26_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(8));

-- Location: LCCOMB_X36_Y24_N26
\i2s|data_shift~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~25_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(8))) # (!\i2s|Equal0~1_combout\ & ((\d[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(8),
	datab => \r2|Equal0~6_combout\,
	datac => \i2s|Equal0~1_combout\,
	datad => \d[2]~4_combout\,
	combout => \i2s|data_shift~25_combout\);

-- Location: LCFF_X36_Y24_N23
\i2s|data_shift[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(7));

-- Location: LCCOMB_X36_Y24_N4
\i2s|data_shift~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~26_combout\ = (\r2|Equal0~6_combout\ & ((\i2s|Equal0~1_combout\ & ((\i2s|data_shift\(7)))) # (!\i2s|Equal0~1_combout\ & (\d[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~2_combout\,
	datab => \i2s|data_shift\(7),
	datac => \i2s|Equal0~1_combout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|data_shift~26_combout\);

-- Location: LCCOMB_X36_Y24_N20
\i2s|data_shift~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~27_combout\ = (\i2s|always0~0_combout\ & (((\i2s|data_shift\(7))))) # (!\i2s|always0~0_combout\ & (!\i2s|Equal0~1_combout\ & ((\d[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(7),
	datac => \i2s|always0~0_combout\,
	datad => \d[0]~0_combout\,
	combout => \i2s|data_shift~27_combout\);

-- Location: LCCOMB_X45_Y24_N22
\init|i2c_master|delay_reg[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[3]~30_combout\ = (\r|Equal0~4_combout\ & ((\init|i2c_master|LessThan2~5_combout\ & (\init|i2c_master|Add2~6_combout\)) # (!\init|i2c_master|LessThan2~5_combout\ & 
-- ((\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~6_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|delay_reg[3]~30_combout\);

-- Location: LCCOMB_X43_Y24_N16
\init|i2c_master|state_reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~28_combout\ = (!\init|i2c_master|state_reg.STATE_IDLE~regout\ & (((\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & !\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\)) # 
-- (!\init|i2c_master|phy_start_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	combout => \init|i2c_master|state_reg~28_combout\);

-- Location: LCCOMB_X42_Y27_N24
\init|i2c_init|init_data.raddr_a[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~27_combout\ = (\init|i2c_init|state_reg.STATE_IDLE~regout\) # ((\init|i2c_init|init_data_reg\(7) & (!\init|i2c_init|init_data_reg\(8) & \init|i2c_init|state_reg.STATE_TABLE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(7),
	datab => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_init|init_data_reg\(8),
	datad => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~27_combout\);

-- Location: LCCOMB_X45_Y27_N6
\init|i2c_init|init_data.raddr_a[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[2]~30_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|Equal4~0_combout\ & (\init|i2c_init|address_ptr_reg\(2))) # (!\init|i2c_init|Equal4~0_combout\ & 
-- ((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|address_ptr_reg\(2),
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|init_data.raddr_a[2]~30_combout\);

-- Location: LCCOMB_X45_Y27_N22
\init|i2c_init|data_ptr_reg~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~18_combout\ = (\r|Equal0~4_combout\ & (\init|i2c_init|address_reg\(2) $ (((\init|i2c_init|address_reg\(1) & \init|i2c_init|address_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(1),
	datab => \init|i2c_init|address_reg\(0),
	datac => \init|i2c_init|address_reg\(2),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg~18_combout\);

-- Location: LCCOMB_X36_Y24_N22
\i2s|data_shift~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~28_combout\ = (\r2|reset_count\(20) & (\r2|Equal0~5_combout\ & (\i2s|data_shift~27_combout\ & \r2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datac => \i2s|data_shift~27_combout\,
	datad => \r2|Equal0~4_combout\,
	combout => \i2s|data_shift~28_combout\);

-- Location: LCCOMB_X1_Y18_N0
\divider_25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider_25~0_combout\ = !\divider_25~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_25~regout\,
	combout => \divider_25~0_combout\);

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

-- Location: CLKCTRL_G8
\i2s|LRCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i2s|LRCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i2s|LRCK~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\reader|div|LessThan0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reader|div|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reader|div|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y21_N20
\r|reset_count[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|reset_count[2]~feeder_combout\ = \r|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|Add0~4_combout\,
	combout => \r|reset_count[2]~feeder_combout\);

-- Location: LCCOMB_X41_Y25_N30
\init|i2c_init|data_out_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_reg[1]~feeder_combout\ = \init|i2c_init|init_data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|init_data_reg\(1),
	combout => \init|i2c_init|data_out_reg[1]~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N6
\init|i2c_master|data_reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|data_reg[7]~feeder_combout\ = \init|i2c_master|Selector29~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_master|Selector29~0_combout\,
	combout => \init|i2c_master|data_reg[7]~feeder_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \init|i2c_master|ALT_INV_scl_o_reg~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => I2C_SCLK,
	combout => \I2C_SCLK~0\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \init|i2c_master|ALT_INV_sda_o_reg~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => I2C_SDAT,
	combout => \I2C_SDAT~0\);

-- Location: LCCOMB_X1_Y18_N4
\clk_12_5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_12_5~0_combout\ = !\clk_12_5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_12_5~regout\,
	combout => \clk_12_5~0_combout\);

-- Location: LCFF_X1_Y18_N5
clk_12_5 : cycloneii_lcell_ff
PORT MAP (
	clk => \divider_25~regout\,
	datain => \clk_12_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_12_5~regout\);

-- Location: CLKCTRL_G1
\clk_12_5~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_12_5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_12_5~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y21_N28
\r|reset_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|reset_count~0_combout\ = (\r|Add0~0_combout\ & !\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Add0~0_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \r|reset_count~0_combout\);

-- Location: LCFF_X37_Y21_N29
\r|reset_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|reset_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(0));

-- Location: LCCOMB_X38_Y21_N2
\r|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~2_combout\ = (\r|reset_count\(1) & (!\r|Add0~1\)) # (!\r|reset_count\(1) & ((\r|Add0~1\) # (GND)))
-- \r|Add0~3\ = CARRY((!\r|Add0~1\) # (!\r|reset_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(1),
	datad => VCC,
	cin => \r|Add0~1\,
	combout => \r|Add0~2_combout\,
	cout => \r|Add0~3\);

-- Location: LCFF_X37_Y21_N31
\r|reset_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(1));

-- Location: LCCOMB_X38_Y21_N6
\r|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~6_combout\ = (\r|reset_count\(3) & (!\r|Add0~5\)) # (!\r|reset_count\(3) & ((\r|Add0~5\) # (GND)))
-- \r|Add0~7\ = CARRY((!\r|Add0~5\) # (!\r|reset_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(3),
	datad => VCC,
	cin => \r|Add0~5\,
	combout => \r|Add0~6_combout\,
	cout => \r|Add0~7\);

-- Location: LCFF_X37_Y21_N23
\r|reset_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(3));

-- Location: LCCOMB_X38_Y21_N8
\r|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~8_combout\ = (\r|reset_count\(4) & (\r|Add0~7\ $ (GND))) # (!\r|reset_count\(4) & (!\r|Add0~7\ & VCC))
-- \r|Add0~9\ = CARRY((\r|reset_count\(4) & !\r|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(4),
	datad => VCC,
	cin => \r|Add0~7\,
	combout => \r|Add0~8_combout\,
	cout => \r|Add0~9\);

-- Location: LCFF_X37_Y21_N25
\r|reset_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(4));

-- Location: LCCOMB_X38_Y21_N10
\r|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~10_combout\ = (\r|reset_count\(5) & (!\r|Add0~9\)) # (!\r|reset_count\(5) & ((\r|Add0~9\) # (GND)))
-- \r|Add0~11\ = CARRY((!\r|Add0~9\) # (!\r|reset_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(5),
	datad => VCC,
	cin => \r|Add0~9\,
	combout => \r|Add0~10_combout\,
	cout => \r|Add0~11\);

-- Location: LCFF_X37_Y21_N17
\r|reset_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(5));

-- Location: LCCOMB_X38_Y21_N12
\r|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~12_combout\ = (\r|reset_count\(6) & (\r|Add0~11\ $ (GND))) # (!\r|reset_count\(6) & (!\r|Add0~11\ & VCC))
-- \r|Add0~13\ = CARRY((\r|reset_count\(6) & !\r|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(6),
	datad => VCC,
	cin => \r|Add0~11\,
	combout => \r|Add0~12_combout\,
	cout => \r|Add0~13\);

-- Location: LCCOMB_X38_Y21_N14
\r|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~14_combout\ = (\r|reset_count\(7) & (!\r|Add0~13\)) # (!\r|reset_count\(7) & ((\r|Add0~13\) # (GND)))
-- \r|Add0~15\ = CARRY((!\r|Add0~13\) # (!\r|reset_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(7),
	datad => VCC,
	cin => \r|Add0~13\,
	combout => \r|Add0~14_combout\,
	cout => \r|Add0~15\);

-- Location: LCFF_X38_Y21_N15
\r|reset_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(7));

-- Location: LCCOMB_X38_Y21_N16
\r|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~16_combout\ = (\r|reset_count\(8) & (\r|Add0~15\ $ (GND))) # (!\r|reset_count\(8) & (!\r|Add0~15\ & VCC))
-- \r|Add0~17\ = CARRY((\r|reset_count\(8) & !\r|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(8),
	datad => VCC,
	cin => \r|Add0~15\,
	combout => \r|Add0~16_combout\,
	cout => \r|Add0~17\);

-- Location: LCCOMB_X38_Y21_N18
\r|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~18_combout\ = (\r|reset_count\(9) & (!\r|Add0~17\)) # (!\r|reset_count\(9) & ((\r|Add0~17\) # (GND)))
-- \r|Add0~19\ = CARRY((!\r|Add0~17\) # (!\r|reset_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(9),
	datad => VCC,
	cin => \r|Add0~17\,
	combout => \r|Add0~18_combout\,
	cout => \r|Add0~19\);

-- Location: LCCOMB_X38_Y21_N20
\r|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Add0~20_combout\ = (\r|reset_count\(10) & (\r|Add0~19\ $ (GND))) # (!\r|reset_count\(10) & (!\r|Add0~19\ & VCC))
-- \r|Add0~21\ = CARRY((\r|reset_count\(10) & !\r|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|reset_count\(10),
	datad => VCC,
	cin => \r|Add0~19\,
	combout => \r|Add0~20_combout\,
	cout => \r|Add0~21\);

-- Location: LCFF_X38_Y21_N21
\r|reset_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(10));

-- Location: LCFF_X37_Y21_N27
\r|reset_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(11));

-- Location: LCCOMB_X37_Y21_N30
\r|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Equal0~2_combout\ = (!\r|reset_count\(2) & (!\r|reset_count\(0) & (!\r|reset_count\(1) & \r|reset_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(2),
	datab => \r|reset_count\(0),
	datac => \r|reset_count\(1),
	datad => \r|reset_count\(11),
	combout => \r|Equal0~2_combout\);

-- Location: LCFF_X37_Y21_N3
\r|reset_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \r|Add0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(6));

-- Location: LCCOMB_X37_Y21_N16
\r|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Equal0~1_combout\ = (!\r|reset_count\(4) & (!\r|reset_count\(6) & (\r|reset_count\(5) & !\r|reset_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(4),
	datab => \r|reset_count\(6),
	datac => \r|reset_count\(5),
	datad => \r|reset_count\(3),
	combout => \r|Equal0~1_combout\);

-- Location: LCFF_X38_Y21_N17
\r|reset_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(8));

-- Location: LCFF_X38_Y21_N19
\r|reset_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|reset_count\(9));

-- Location: LCCOMB_X38_Y21_N30
\r|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Equal0~0_combout\ = (\r|reset_count\(10) & (!\r|reset_count\(7) & (!\r|reset_count\(8) & \r|reset_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reset_count\(10),
	datab => \r|reset_count\(7),
	datac => \r|reset_count\(8),
	datad => \r|reset_count\(9),
	combout => \r|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y21_N10
\r|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r|Equal0~4_combout\ = (\r|Equal0~3_combout\ & (\r|Equal0~2_combout\ & (\r|Equal0~1_combout\ & \r|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~3_combout\,
	datab => \r|Equal0~2_combout\,
	datac => \r|Equal0~1_combout\,
	datad => \r|Equal0~0_combout\,
	combout => \r|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y24_N4
\init|i2c_master|phy_state_reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~25_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~25_combout\);

-- Location: LCCOMB_X44_Y24_N10
\init|i2c_master|phy_state_reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~27_combout\ = ((!\init|i2c_master|delay_scl_reg~regout\ & !\init|i2c_master|LessThan2~5_combout\)) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_scl_reg~regout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|phy_state_reg~27_combout\);

-- Location: LCFF_X44_Y24_N5
\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~25_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\);

-- Location: LCCOMB_X45_Y25_N22
\init|i2c_master|phy_state_reg~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~35_combout\ = (\r|Equal0~4_combout\ & \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\,
	combout => \init|i2c_master|phy_state_reg~35_combout\);

-- Location: LCFF_X45_Y25_N23
\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~35_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\);

-- Location: LCCOMB_X45_Y25_N2
\init|i2c_master|phy_state_reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~37_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~37_combout\);

-- Location: LCFF_X45_Y25_N3
\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~37_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\);

-- Location: LCCOMB_X45_Y25_N4
\init|i2c_master|phy_state_reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~36_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~36_combout\);

-- Location: LCFF_X45_Y25_N5
\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~36_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\);

-- Location: LCCOMB_X45_Y25_N8
\init|i2c_master|phy_state_reg~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~34_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~34_combout\);

-- Location: LCFF_X45_Y25_N9
\init|i2c_master|phy_state_reg.PHY_STATE_START_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~34_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\);

-- Location: LCCOMB_X46_Y25_N16
\init|i2c_master|delay_reg[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~4_combout\ = (!\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\ & (!\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\ & !\init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\,
	combout => \init|i2c_master|delay_reg[2]~4_combout\);

-- Location: LCCOMB_X43_Y27_N28
\init|i2c_init|address_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~4_combout\ = (\init|i2c_init|init_data.raddr_a\(1) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data.raddr_a\(1),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|address_reg~4_combout\);

-- Location: LCFF_X43_Y27_N29
\init|i2c_init|address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(1));

-- Location: LCCOMB_X45_Y27_N8
\init|i2c_init|data_ptr_reg~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~13_combout\ = (!\init|i2c_init|address_reg\(0) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|address_reg\(0),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg~13_combout\);

-- Location: LCCOMB_X46_Y27_N2
\init|i2c_init|address_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~3_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data.raddr_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data.raddr_a\(2),
	combout => \init|i2c_init|address_reg~3_combout\);

-- Location: LCFF_X46_Y27_N3
\init|i2c_init|address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(2));

-- Location: LCCOMB_X45_Y27_N28
\init|i2c_init|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~3_combout\ = \init|i2c_init|address_reg\(2) $ (((\init|i2c_init|address_reg\(1) & \init|i2c_init|address_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(1),
	datab => \init|i2c_init|address_reg\(2),
	datad => \init|i2c_init|address_reg\(0),
	combout => \init|i2c_init|Add0~3_combout\);

-- Location: LCCOMB_X43_Y27_N10
\init|i2c_init|address_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~5_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data.raddr_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data.raddr_a\(5),
	combout => \init|i2c_init|address_reg~5_combout\);

-- Location: LCFF_X43_Y27_N11
\init|i2c_init|address_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(5));

-- Location: LCCOMB_X46_Y27_N0
\init|i2c_init|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~5_combout\ = \init|i2c_init|address_reg\(3) $ (((\init|i2c_init|address_reg\(1) & (\init|i2c_init|address_reg\(2) & \init|i2c_init|address_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(1),
	datab => \init|i2c_init|address_reg\(2),
	datac => \init|i2c_init|address_reg\(3),
	datad => \init|i2c_init|address_reg\(0),
	combout => \init|i2c_init|Add0~5_combout\);

-- Location: LCCOMB_X45_Y27_N20
\init|i2c_init|data_ptr_reg~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~14_combout\ = (\init|i2c_init|Add0~5_combout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|Add0~5_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg~14_combout\);

-- Location: LCCOMB_X41_Y27_N0
\init|i2c_init_start_pulse|count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[0]~16_combout\ = \init|i2c_init_start_pulse|count\(0) $ (VCC)
-- \init|i2c_init_start_pulse|count[0]~17\ = CARRY(\init|i2c_init_start_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(0),
	datad => VCC,
	combout => \init|i2c_init_start_pulse|count[0]~16_combout\,
	cout => \init|i2c_init_start_pulse|count[0]~17\);

-- Location: LCCOMB_X42_Y27_N12
\init|i2c_init_start_pulse|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|Equal0~4_combout\ = ((\init|i2c_init_start_pulse|count\(1)) # (!\init|i2c_init_start_pulse|count\(2))) # (!\init|i2c_init_start_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(0),
	datac => \init|i2c_init_start_pulse|count\(2),
	datad => \init|i2c_init_start_pulse|count\(1),
	combout => \init|i2c_init_start_pulse|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y27_N4
\init|i2c_init_start_pulse|count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[2]~20_combout\ = (\init|i2c_init_start_pulse|count\(2) & (\init|i2c_init_start_pulse|count[1]~19\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(2) & (!\init|i2c_init_start_pulse|count[1]~19\ & VCC))
-- \init|i2c_init_start_pulse|count[2]~21\ = CARRY((\init|i2c_init_start_pulse|count\(2) & !\init|i2c_init_start_pulse|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(2),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[1]~19\,
	combout => \init|i2c_init_start_pulse|count[2]~20_combout\,
	cout => \init|i2c_init_start_pulse|count[2]~21\);

-- Location: LCCOMB_X41_Y27_N6
\init|i2c_init_start_pulse|count[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[3]~23_combout\ = (\init|i2c_init_start_pulse|count\(3) & (!\init|i2c_init_start_pulse|count[2]~21\)) # (!\init|i2c_init_start_pulse|count\(3) & ((\init|i2c_init_start_pulse|count[2]~21\) # (GND)))
-- \init|i2c_init_start_pulse|count[3]~24\ = CARRY((!\init|i2c_init_start_pulse|count[2]~21\) # (!\init|i2c_init_start_pulse|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(3),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[2]~21\,
	combout => \init|i2c_init_start_pulse|count[3]~23_combout\,
	cout => \init|i2c_init_start_pulse|count[3]~24\);

-- Location: LCCOMB_X41_Y27_N8
\init|i2c_init_start_pulse|count[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[4]~25_combout\ = (\init|i2c_init_start_pulse|count\(4) & (\init|i2c_init_start_pulse|count[3]~24\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(4) & (!\init|i2c_init_start_pulse|count[3]~24\ & VCC))
-- \init|i2c_init_start_pulse|count[4]~26\ = CARRY((\init|i2c_init_start_pulse|count\(4) & !\init|i2c_init_start_pulse|count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(4),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[3]~24\,
	combout => \init|i2c_init_start_pulse|count[4]~25_combout\,
	cout => \init|i2c_init_start_pulse|count[4]~26\);

-- Location: LCFF_X41_Y27_N9
\init|i2c_init_start_pulse|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[4]~25_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(4));

-- Location: LCCOMB_X41_Y27_N10
\init|i2c_init_start_pulse|count[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[5]~27_combout\ = (\init|i2c_init_start_pulse|count\(5) & (!\init|i2c_init_start_pulse|count[4]~26\)) # (!\init|i2c_init_start_pulse|count\(5) & ((\init|i2c_init_start_pulse|count[4]~26\) # (GND)))
-- \init|i2c_init_start_pulse|count[5]~28\ = CARRY((!\init|i2c_init_start_pulse|count[4]~26\) # (!\init|i2c_init_start_pulse|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(5),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[4]~26\,
	combout => \init|i2c_init_start_pulse|count[5]~27_combout\,
	cout => \init|i2c_init_start_pulse|count[5]~28\);

-- Location: LCCOMB_X41_Y27_N14
\init|i2c_init_start_pulse|count[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[7]~31_combout\ = (\init|i2c_init_start_pulse|count\(7) & (!\init|i2c_init_start_pulse|count[6]~30\)) # (!\init|i2c_init_start_pulse|count\(7) & ((\init|i2c_init_start_pulse|count[6]~30\) # (GND)))
-- \init|i2c_init_start_pulse|count[7]~32\ = CARRY((!\init|i2c_init_start_pulse|count[6]~30\) # (!\init|i2c_init_start_pulse|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(7),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[6]~30\,
	combout => \init|i2c_init_start_pulse|count[7]~31_combout\,
	cout => \init|i2c_init_start_pulse|count[7]~32\);

-- Location: LCCOMB_X40_Y27_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X41_Y27_N15
\init|i2c_init_start_pulse|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[7]~31_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(7));

-- Location: LCCOMB_X41_Y27_N16
\init|i2c_init_start_pulse|count[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[8]~33_combout\ = (\init|i2c_init_start_pulse|count\(8) & (\init|i2c_init_start_pulse|count[7]~32\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(8) & (!\init|i2c_init_start_pulse|count[7]~32\ & VCC))
-- \init|i2c_init_start_pulse|count[8]~34\ = CARRY((\init|i2c_init_start_pulse|count\(8) & !\init|i2c_init_start_pulse|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(8),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[7]~32\,
	combout => \init|i2c_init_start_pulse|count[8]~33_combout\,
	cout => \init|i2c_init_start_pulse|count[8]~34\);

-- Location: LCCOMB_X41_Y27_N18
\init|i2c_init_start_pulse|count[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[9]~35_combout\ = (\init|i2c_init_start_pulse|count\(9) & (!\init|i2c_init_start_pulse|count[8]~34\)) # (!\init|i2c_init_start_pulse|count\(9) & ((\init|i2c_init_start_pulse|count[8]~34\) # (GND)))
-- \init|i2c_init_start_pulse|count[9]~36\ = CARRY((!\init|i2c_init_start_pulse|count[8]~34\) # (!\init|i2c_init_start_pulse|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(9),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[8]~34\,
	combout => \init|i2c_init_start_pulse|count[9]~35_combout\,
	cout => \init|i2c_init_start_pulse|count[9]~36\);

-- Location: LCFF_X41_Y27_N19
\init|i2c_init_start_pulse|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[9]~35_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(9));

-- Location: LCCOMB_X41_Y27_N20
\init|i2c_init_start_pulse|count[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[10]~37_combout\ = (\init|i2c_init_start_pulse|count\(10) & (\init|i2c_init_start_pulse|count[9]~36\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(10) & (!\init|i2c_init_start_pulse|count[9]~36\ & VCC))
-- \init|i2c_init_start_pulse|count[10]~38\ = CARRY((\init|i2c_init_start_pulse|count\(10) & !\init|i2c_init_start_pulse|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(10),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[9]~36\,
	combout => \init|i2c_init_start_pulse|count[10]~37_combout\,
	cout => \init|i2c_init_start_pulse|count[10]~38\);

-- Location: LCFF_X41_Y27_N21
\init|i2c_init_start_pulse|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[10]~37_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(10));

-- Location: LCFF_X41_Y27_N17
\init|i2c_init_start_pulse|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[8]~33_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(8));

-- Location: LCCOMB_X42_Y27_N22
\init|i2c_init_start_pulse|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|Equal0~1_combout\ = (!\init|i2c_init_start_pulse|count\(7) & (\init|i2c_init_start_pulse|count\(9) & (!\init|i2c_init_start_pulse|count\(10) & \init|i2c_init_start_pulse|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(7),
	datab => \init|i2c_init_start_pulse|count\(9),
	datac => \init|i2c_init_start_pulse|count\(10),
	datad => \init|i2c_init_start_pulse|count\(8),
	combout => \init|i2c_init_start_pulse|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y27_N22
\init|i2c_init_start_pulse|count[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[11]~39_combout\ = (\init|i2c_init_start_pulse|count\(11) & (!\init|i2c_init_start_pulse|count[10]~38\)) # (!\init|i2c_init_start_pulse|count\(11) & ((\init|i2c_init_start_pulse|count[10]~38\) # (GND)))
-- \init|i2c_init_start_pulse|count[11]~40\ = CARRY((!\init|i2c_init_start_pulse|count[10]~38\) # (!\init|i2c_init_start_pulse|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(11),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[10]~38\,
	combout => \init|i2c_init_start_pulse|count[11]~39_combout\,
	cout => \init|i2c_init_start_pulse|count[11]~40\);

-- Location: LCFF_X41_Y27_N23
\init|i2c_init_start_pulse|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[11]~39_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(11));

-- Location: LCCOMB_X41_Y27_N24
\init|i2c_init_start_pulse|count[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[12]~41_combout\ = (\init|i2c_init_start_pulse|count\(12) & (\init|i2c_init_start_pulse|count[11]~40\ $ (GND))) # (!\init|i2c_init_start_pulse|count\(12) & (!\init|i2c_init_start_pulse|count[11]~40\ & VCC))
-- \init|i2c_init_start_pulse|count[12]~42\ = CARRY((\init|i2c_init_start_pulse|count\(12) & !\init|i2c_init_start_pulse|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(12),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[11]~40\,
	combout => \init|i2c_init_start_pulse|count[12]~41_combout\,
	cout => \init|i2c_init_start_pulse|count[12]~42\);

-- Location: LCCOMB_X41_Y27_N26
\init|i2c_init_start_pulse|count[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[13]~43_combout\ = (\init|i2c_init_start_pulse|count\(13) & (!\init|i2c_init_start_pulse|count[12]~42\)) # (!\init|i2c_init_start_pulse|count\(13) & ((\init|i2c_init_start_pulse|count[12]~42\) # (GND)))
-- \init|i2c_init_start_pulse|count[13]~44\ = CARRY((!\init|i2c_init_start_pulse|count[12]~42\) # (!\init|i2c_init_start_pulse|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(13),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[12]~42\,
	combout => \init|i2c_init_start_pulse|count[13]~43_combout\,
	cout => \init|i2c_init_start_pulse|count[13]~44\);

-- Location: LCFF_X41_Y27_N27
\init|i2c_init_start_pulse|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[13]~43_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(13));

-- Location: LCFF_X41_Y27_N29
\init|i2c_init_start_pulse|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[14]~45_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(14));

-- Location: LCFF_X41_Y27_N25
\init|i2c_init_start_pulse|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[12]~41_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(12));

-- Location: LCCOMB_X42_Y27_N20
\init|i2c_init_start_pulse|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|Equal0~2_combout\ = (!\init|i2c_init_start_pulse|count\(11) & (\init|i2c_init_start_pulse|count\(14) & (!\init|i2c_init_start_pulse|count\(12) & !\init|i2c_init_start_pulse|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(11),
	datab => \init|i2c_init_start_pulse|count\(14),
	datac => \init|i2c_init_start_pulse|count\(12),
	datad => \init|i2c_init_start_pulse|count\(13),
	combout => \init|i2c_init_start_pulse|Equal0~2_combout\);

-- Location: LCFF_X41_Y27_N7
\init|i2c_init_start_pulse|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[3]~23_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(3));

-- Location: LCFF_X41_Y27_N11
\init|i2c_init_start_pulse|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[5]~27_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(5));

-- Location: LCCOMB_X42_Y27_N28
\init|i2c_init_start_pulse|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|Equal0~0_combout\ = (\init|i2c_init_start_pulse|count\(6) & (!\init|i2c_init_start_pulse|count\(3) & (\init|i2c_init_start_pulse|count\(4) & !\init|i2c_init_start_pulse|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(6),
	datab => \init|i2c_init_start_pulse|count\(3),
	datac => \init|i2c_init_start_pulse|count\(4),
	datad => \init|i2c_init_start_pulse|count\(5),
	combout => \init|i2c_init_start_pulse|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y27_N26
\init|i2c_init_start_pulse|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|Equal0~3_combout\ = (\init|i2c_init_start_pulse|count\(15) & (\init|i2c_init_start_pulse|Equal0~1_combout\ & (\init|i2c_init_start_pulse|Equal0~2_combout\ & \init|i2c_init_start_pulse|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|count\(15),
	datab => \init|i2c_init_start_pulse|Equal0~1_combout\,
	datac => \init|i2c_init_start_pulse|Equal0~2_combout\,
	datad => \init|i2c_init_start_pulse|Equal0~0_combout\,
	combout => \init|i2c_init_start_pulse|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y27_N30
\init|i2c_init_start_pulse|count[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[9]~22_combout\ = ((!\init|i2c_init_start_pulse|Equal0~4_combout\ & \init|i2c_init_start_pulse|Equal0~3_combout\)) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|Equal0~4_combout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_init_start_pulse|Equal0~3_combout\,
	combout => \init|i2c_init_start_pulse|count[9]~22_combout\);

-- Location: LCFF_X41_Y27_N1
\init|i2c_init_start_pulse|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[0]~16_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(0));

-- Location: LCCOMB_X41_Y27_N2
\init|i2c_init_start_pulse|count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init_start_pulse|count[1]~18_combout\ = (\init|i2c_init_start_pulse|count\(1) & (!\init|i2c_init_start_pulse|count[0]~17\)) # (!\init|i2c_init_start_pulse|count\(1) & ((\init|i2c_init_start_pulse|count[0]~17\) # (GND)))
-- \init|i2c_init_start_pulse|count[1]~19\ = CARRY((!\init|i2c_init_start_pulse|count[0]~17\) # (!\init|i2c_init_start_pulse|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init_start_pulse|count\(1),
	datad => VCC,
	cin => \init|i2c_init_start_pulse|count[0]~17\,
	combout => \init|i2c_init_start_pulse|count[1]~18_combout\,
	cout => \init|i2c_init_start_pulse|count[1]~19\);

-- Location: LCFF_X41_Y27_N3
\init|i2c_init_start_pulse|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[1]~18_combout\,
	sdata => \~GND~combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(1));

-- Location: LCFF_X41_Y27_N5
\init|i2c_init_start_pulse|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init_start_pulse|count[2]~20_combout\,
	sdata => \r|Equal0~4_combout\,
	sload => \init|i2c_init_start_pulse|count[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init_start_pulse|count\(2));

-- Location: LCCOMB_X41_Y26_N28
\init|i2c_init|state_reg~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~20_combout\ = (\init|i2c_init|state_reg.STATE_RUN~regout\ & (\init|i2c_init|Equal3~1_combout\)) # (!\init|i2c_init|state_reg.STATE_RUN~regout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- (\init|i2c_init|Equal3~1_combout\)) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((!\init|i2c_init|state_reg.STATE_IDLE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal3~1_combout\,
	datab => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|state_reg~20_combout\);

-- Location: LCCOMB_X41_Y26_N24
\init|i2c_init|state_reg~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~16_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\) # ((!\init|i2c_init|state_reg.STATE_IDLE~regout\ & !\init|i2c_init|state_reg.STATE_RUN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|state_reg~16_combout\);

-- Location: LCCOMB_X43_Y26_N18
\init|i2c_init|data_ptr_reg~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~15_combout\ = (\r|Equal0~4_combout\ & (\init|i2c_init|address_reg\(4) $ (\init|i2c_init|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(4),
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_init|Add0~0_combout\,
	combout => \init|i2c_init|data_ptr_reg~15_combout\);

-- Location: LCCOMB_X43_Y26_N26
\init|i2c_init|data_ptr_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[4]~feeder_combout\ = \init|i2c_init|data_ptr_reg~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|data_ptr_reg~15_combout\,
	combout => \init|i2c_init|data_ptr_reg[4]~feeder_combout\);

-- Location: LCFF_X43_Y26_N27
\init|i2c_init|data_ptr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_ptr_reg[4]~feeder_combout\,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(4));

-- Location: LCCOMB_X44_Y27_N22
\init|i2c_init|init_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~12_combout\ = (!\init|i2c_init|init_data.raddr_a\(2) & (!\init|i2c_init|init_data.raddr_a\(5) & (!\init|i2c_init|init_data.raddr_a\(3) & !\init|i2c_init|init_data.raddr_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(2),
	datab => \init|i2c_init|init_data.raddr_a\(5),
	datac => \init|i2c_init|init_data.raddr_a\(3),
	datad => \init|i2c_init|init_data.raddr_a\(1),
	combout => \init|i2c_init|init_data~12_combout\);

-- Location: LCCOMB_X43_Y27_N24
\init|i2c_init|init_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~13_combout\ = (\init|i2c_init|init_data.raddr_a\(0) & \init|i2c_init|init_data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data~12_combout\,
	combout => \init|i2c_init|init_data~13_combout\);

-- Location: LCFF_X43_Y27_N25
\init|i2c_init|init_data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~13_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(2));

-- Location: LCCOMB_X44_Y27_N28
\init|i2c_init|init_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~11_combout\ = (\init|i2c_init|init_data.raddr_a\(0)) # ((\init|i2c_init|init_data.raddr_a\(4) & ((\init|i2c_init|init_data.raddr_a\(3)) # (\init|i2c_init|init_data.raddr_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(0),
	datab => \init|i2c_init|init_data.raddr_a\(3),
	datac => \init|i2c_init|init_data.raddr_a\(2),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~11_combout\);

-- Location: LCCOMB_X43_Y27_N26
\init|i2c_init|init_data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~21_combout\ = (!\init|i2c_init|init_data.raddr_a\(5) & (!\init|i2c_init|init_data.raddr_a\(1) & !\init|i2c_init|init_data~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(5),
	datac => \init|i2c_init|init_data.raddr_a\(1),
	datad => \init|i2c_init|init_data~11_combout\,
	combout => \init|i2c_init|init_data~21_combout\);

-- Location: LCFF_X43_Y27_N27
\init|i2c_init|init_data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~21_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(7));

-- Location: LCCOMB_X43_Y27_N0
\init|i2c_init|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal1~4_combout\ = (!\init|i2c_init|init_data_reg\(4) & (!\init|i2c_init|init_data_reg\(8) & (!\init|i2c_init|init_data_reg\(2) & !\init|i2c_init|init_data_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(4),
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|init_data_reg\(2),
	datad => \init|i2c_init|init_data_reg\(7),
	combout => \init|i2c_init|Equal1~4_combout\);

-- Location: LCCOMB_X44_Y27_N16
\init|i2c_init|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal4~0_combout\ = (\init|i2c_init|init_data_reg\(3) & (!\init|i2c_init|init_data_reg\(0) & (\init|i2c_init|Equal1~4_combout\ & \init|i2c_init|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(3),
	datab => \init|i2c_init|init_data_reg\(0),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal3~0_combout\,
	combout => \init|i2c_init|Equal4~0_combout\);

-- Location: LCCOMB_X42_Y27_N18
\init|i2c_init|init_data.raddr_a[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~15_combout\ = (!\init|i2c_init|Equal4~0_combout\) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|Equal4~0_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~15_combout\);

-- Location: LCCOMB_X42_Y27_N0
\init|i2c_init|init_data.raddr_a[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~18_combout\ = (\init|i2c_init|cmd_valid_reg~regout\) # ((\init|i2c_init|data_out_valid_reg~regout\) # ((!\init|i2c_init|address_ptr_reg[4]~0_combout\ & \init|i2c_init|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|address_ptr_reg[4]~0_combout\,
	datad => \init|i2c_init|Equal3~1_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~18_combout\);

-- Location: LCCOMB_X42_Y27_N14
\init|i2c_init|init_data.raddr_a[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~19_combout\ = (\init|i2c_init|init_data.raddr_a[1]~18_combout\) # ((!\init|i2c_init|state_reg.STATE_IDLE~regout\ & \init|i2c_init|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_init|always0~0_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~18_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~19_combout\);

-- Location: LCCOMB_X42_Y27_N16
\init|i2c_init|init_data.raddr_a[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~20_combout\ = (\init|i2c_init|init_data.raddr_a[1]~27_combout\ & (\init|i2c_init|init_data.raddr_a[1]~15_combout\ & (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & !\init|i2c_init|init_data.raddr_a[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~27_combout\,
	datab => \init|i2c_init|init_data.raddr_a[1]~15_combout\,
	datac => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~20_combout\);

-- Location: LCFF_X44_Y27_N25
\init|i2c_init|address_ptr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~15_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(4));

-- Location: LCCOMB_X42_Y26_N2
\init|i2c_init|state_next.STATE_TABLE_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_2~0_combout\ = (\init|i2c_init|data_out_valid_reg~4_combout\ & (\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_1~regout\) # (\init|i2c_init|state_reg.STATE_TABLE_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datac => \init|i2c_init|Equal4~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_2~0_combout\);

-- Location: LCCOMB_X42_Y26_N6
\init|i2c_init|state_next.STATE_TABLE_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_2~2_combout\ = (\init|i2c_init|state_next.STATE_TABLE_2~0_combout\) # ((\init|i2c_init|state_reg.STATE_TABLE_2~regout\ & ((\init|i2c_init|state_next.STATE_TABLE_2~1_combout\) # 
-- (!\init|i2c_init|data_out_valid_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_next.STATE_TABLE_2~1_combout\,
	datab => \init|i2c_init|data_out_valid_reg~4_combout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datad => \init|i2c_init|state_next.STATE_TABLE_2~0_combout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_2~2_combout\);

-- Location: LCFF_X42_Y26_N7
\init|i2c_init|state_reg.STATE_TABLE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|state_next.STATE_TABLE_2~2_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|state_reg.STATE_TABLE_2~regout\);

-- Location: LCCOMB_X44_Y27_N10
\init|i2c_init|init_data.raddr_a[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~14_combout\ = (!\init|i2c_init|init_data_reg\(8) & (\init|i2c_init|init_data_reg\(7) & \init|i2c_init|state_reg.STATE_TABLE_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(8),
	datab => \init|i2c_init|init_data_reg\(7),
	datad => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~14_combout\);

-- Location: LCCOMB_X44_Y27_N24
\init|i2c_init|init_data.raddr_a[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[4]~28_combout\ = (\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|address_ptr_reg\(4))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- ((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))) # (!\init|i2c_init|Equal4~0_combout\ & (((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal4~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|address_ptr_reg\(4),
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|init_data.raddr_a[4]~28_combout\);

-- Location: LCCOMB_X43_Y26_N12
\init|i2c_init|init_data.raddr_a[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[4]~21_combout\ = (\init|i2c_init|init_data.raddr_a[1]~17_combout\ & (\init|i2c_init|address_reg\(4))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~19_combout\ & 
-- (\init|i2c_init|address_reg\(4))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & ((\init|i2c_init|init_data.raddr_a[4]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(4),
	datab => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	datac => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	datad => \init|i2c_init|init_data.raddr_a[4]~28_combout\,
	combout => \init|i2c_init|init_data.raddr_a[4]~21_combout\);

-- Location: LCCOMB_X43_Y26_N10
\init|i2c_init|init_data.raddr_a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(4) = (\init|i2c_init|init_data.raddr_a[1]~20_combout\ & ((\init|i2c_init|init_data.raddr_a[4]~21_combout\ & ((\init|i2c_init|data_ptr_reg\(4)))) # (!\init|i2c_init|init_data.raddr_a[4]~21_combout\ & 
-- (\init|i2c_init|Add0~1_combout\)))) # (!\init|i2c_init|init_data.raddr_a[1]~20_combout\ & (((\init|i2c_init|init_data.raddr_a[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Add0~1_combout\,
	datab => \init|i2c_init|data_ptr_reg\(4),
	datac => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	datad => \init|i2c_init|init_data.raddr_a[4]~21_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(4));

-- Location: LCCOMB_X46_Y27_N28
\init|i2c_init|init_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~10_combout\ = (\init|i2c_init|init_data.raddr_a\(3) & ((\init|i2c_init|init_data.raddr_a\(4)) # ((\init|i2c_init|init_data.raddr_a\(2) & \init|i2c_init|init_data.raddr_a\(0))))) # (!\init|i2c_init|init_data.raddr_a\(3) & 
-- (\init|i2c_init|init_data.raddr_a\(2) & ((\init|i2c_init|init_data.raddr_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(3),
	datab => \init|i2c_init|init_data.raddr_a\(2),
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~10_combout\);

-- Location: LCCOMB_X46_Y27_N20
\init|i2c_init|init_data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~20_combout\ = (!\init|i2c_init|init_data.raddr_a\(1) & (!\init|i2c_init|init_data.raddr_a\(5) & !\init|i2c_init|init_data~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(1),
	datac => \init|i2c_init|init_data.raddr_a\(5),
	datad => \init|i2c_init|init_data~10_combout\,
	combout => \init|i2c_init|init_data~20_combout\);

-- Location: LCFF_X46_Y27_N21
\init|i2c_init|init_data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~20_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(3));

-- Location: LCCOMB_X44_Y27_N6
\init|i2c_init|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal2~0_combout\ = (((!\init|i2c_init|Equal3~0_combout\) # (!\init|i2c_init|Equal1~4_combout\)) # (!\init|i2c_init|init_data_reg\(3))) # (!\init|i2c_init|init_data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(0),
	datab => \init|i2c_init|init_data_reg\(3),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal3~0_combout\,
	combout => \init|i2c_init|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y26_N0
\init|i2c_init|state_reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~23_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_2~regout\ & (\init|i2c_init|init_data_reg\(7) & (!\init|i2c_init|init_data_reg\(8)))) # (!\init|i2c_init|state_reg.STATE_TABLE_2~regout\ & (((\init|i2c_init|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(7),
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|Equal4~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \init|i2c_init|state_reg~23_combout\);

-- Location: LCCOMB_X42_Y26_N8
\init|i2c_init|state_reg~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~17_combout\ = (!\init|i2c_init|state_reg~15_combout\ & ((\init|i2c_init|state_reg~16_combout\) # ((\init|i2c_init|Equal2~0_combout\ & !\init|i2c_init|state_reg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg~15_combout\,
	datab => \init|i2c_init|state_reg~16_combout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|state_reg~23_combout\,
	combout => \init|i2c_init|state_reg~17_combout\);

-- Location: LCCOMB_X41_Y26_N26
\init|i2c_init|state_reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~21_combout\ = (\init|i2c_init|state_reg~20_combout\ & (((\init|i2c_init|state_reg~17_combout\ & !\init|i2c_init|always0~0_combout\)))) # (!\init|i2c_init|state_reg~20_combout\ & (((!\init|i2c_init|state_reg~17_combout\)) # 
-- (!\init|i2c_init|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal3~1_combout\,
	datab => \init|i2c_init|state_reg~20_combout\,
	datac => \init|i2c_init|state_reg~17_combout\,
	datad => \init|i2c_init|always0~0_combout\,
	combout => \init|i2c_init|state_reg~21_combout\);

-- Location: LCCOMB_X41_Y26_N18
\init|i2c_init|state_reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~22_combout\ = ((!\init|i2c_init|data_out_valid_reg~regout\ & !\init|i2c_init|cmd_valid_reg~regout\)) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|state_reg~22_combout\);

-- Location: LCFF_X41_Y26_N27
\init|i2c_init|state_reg.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|state_reg~21_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_init|state_reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|state_reg.STATE_IDLE~regout\);

-- Location: LCCOMB_X42_Y27_N6
\init|i2c_init|start_flag_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|start_flag_reg~0_combout\ = (\init|i2c_init|start_flag_reg~regout\) # ((!\init|i2c_init|cmd_valid_reg~regout\ & (!\init|i2c_init|state_reg.STATE_IDLE~regout\ & !\init|i2c_init|data_out_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \init|i2c_init|start_flag_reg~regout\,
	datad => \init|i2c_init|data_out_valid_reg~regout\,
	combout => \init|i2c_init|start_flag_reg~0_combout\);

-- Location: LCCOMB_X42_Y27_N4
\init|i2c_init|start_flag_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|start_flag_reg~1_combout\ = (\init|i2c_init|start_flag_reg~0_combout\ & (\init|i2c_init_start_pulse|Equal0~3_combout\ & (\init|i2c_init_start_pulse|pulse~0_combout\ $ (!\init|i2c_init_start_pulse|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|pulse~0_combout\,
	datab => \init|i2c_init|start_flag_reg~0_combout\,
	datac => \init|i2c_init_start_pulse|count\(2),
	datad => \init|i2c_init_start_pulse|Equal0~3_combout\,
	combout => \init|i2c_init|start_flag_reg~1_combout\);

-- Location: LCFF_X42_Y27_N5
\init|i2c_init|start_flag_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|start_flag_reg~1_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|start_flag_reg~regout\);

-- Location: LCCOMB_X42_Y27_N8
\init|i2c_init|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|always0~0_combout\ = (\init|i2c_init|start_flag_reg~regout\) # ((\init|i2c_init_start_pulse|pulse~0_combout\ $ (\init|i2c_init_start_pulse|count\(2))) # (!\init|i2c_init_start_pulse|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init_start_pulse|pulse~0_combout\,
	datab => \init|i2c_init_start_pulse|count\(2),
	datac => \init|i2c_init|start_flag_reg~regout\,
	datad => \init|i2c_init_start_pulse|Equal0~3_combout\,
	combout => \init|i2c_init|always0~0_combout\);

-- Location: LCCOMB_X43_Y26_N8
\init|i2c_init|state_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next~1_combout\ = ((\init|i2c_init|Equal2~0_combout\ & !\init|i2c_init|Equal3~1_combout\)) # (!\init|i2c_init|cmd_stop_reg~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_stop_reg~2_combout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|Equal3~1_combout\,
	combout => \init|i2c_init|state_next~1_combout\);

-- Location: LCCOMB_X44_Y27_N14
\init|i2c_init|Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal5~5_combout\ = (!\init|i2c_init|init_data_reg\(3) & (\init|i2c_init|init_data_reg\(0) & (\init|i2c_init|Equal1~4_combout\ & \init|i2c_init|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(3),
	datab => \init|i2c_init|init_data_reg\(0),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal3~0_combout\,
	combout => \init|i2c_init|Equal5~5_combout\);

-- Location: LCCOMB_X41_Y26_N30
\init|i2c_init|state_reg~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~18_combout\ = (\init|i2c_init|state_reg~16_combout\ & (((\init|i2c_init|Equal5~5_combout\) # (!\init|i2c_init|state_reg~15_combout\)))) # (!\init|i2c_init|state_reg~16_combout\ & (\init|i2c_init|state_next~1_combout\ & 
-- (\init|i2c_init|state_reg~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg~16_combout\,
	datab => \init|i2c_init|state_next~1_combout\,
	datac => \init|i2c_init|state_reg~15_combout\,
	datad => \init|i2c_init|Equal5~5_combout\,
	combout => \init|i2c_init|state_reg~18_combout\);

-- Location: LCCOMB_X41_Y26_N0
\init|i2c_init|state_reg~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~19_combout\ = (\init|i2c_init|state_reg~17_combout\ & ((\init|i2c_init|state_reg~18_combout\ & ((!\init|i2c_init|always0~0_combout\))) # (!\init|i2c_init|state_reg~18_combout\ & (\init|i2c_init|Equal5~5_combout\)))) # 
-- (!\init|i2c_init|state_reg~17_combout\ & (((\init|i2c_init|state_reg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal5~5_combout\,
	datab => \init|i2c_init|always0~0_combout\,
	datac => \init|i2c_init|state_reg~17_combout\,
	datad => \init|i2c_init|state_reg~18_combout\,
	combout => \init|i2c_init|state_reg~19_combout\);

-- Location: LCFF_X41_Y26_N1
\init|i2c_init|state_reg.STATE_RUN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|state_reg~19_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_init|state_reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|state_reg.STATE_RUN~regout\);

-- Location: LCCOMB_X41_Y26_N16
\init|i2c_init|state_reg~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_reg~15_combout\ = (\init|i2c_init|state_reg.STATE_RUN~regout\) # (\init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|state_reg~15_combout\);

-- Location: LCCOMB_X42_Y25_N30
\init|i2c_init|data_out_valid_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_valid_reg~6_combout\ = (!\init|i2c_init|cmd_valid_reg~regout\ & (\init|i2c_init|init_data_reg\(8) & (\init|i2c_init|state_reg~15_combout\ & !\init|i2c_init|data_out_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|state_reg~15_combout\,
	datad => \init|i2c_init|data_out_valid_reg~regout\,
	combout => \init|i2c_init|data_out_valid_reg~6_combout\);

-- Location: LCCOMB_X42_Y25_N2
\init|i2c_init|data_out_valid_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_valid_reg~5_combout\ = (\init|i2c_init|data_out_valid_reg~6_combout\) # ((!\init|i2c_master|data_in_ready_reg~regout\ & \init|i2c_init|data_out_valid_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|data_in_ready_reg~regout\,
	datac => \init|i2c_init|data_out_valid_reg~regout\,
	datad => \init|i2c_init|data_out_valid_reg~6_combout\,
	combout => \init|i2c_init|data_out_valid_reg~5_combout\);

-- Location: LCFF_X42_Y25_N3
\init|i2c_init|data_out_valid_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_out_valid_reg~5_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_valid_reg~regout\);

-- Location: LCCOMB_X43_Y26_N14
\init|i2c_init|data_ptr_reg[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[1]~12_combout\ = (\init|i2c_init|Equal2~0_combout\) # ((\init|i2c_init|data_ptr_reg[1]~11_combout\ & (!\init|i2c_init|state_reg.STATE_TABLE_2~regout\ & !\init|i2c_init|state_reg.STATE_TABLE_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_ptr_reg[1]~11_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|data_ptr_reg[1]~12_combout\);

-- Location: LCCOMB_X43_Y26_N0
\init|i2c_init|data_ptr_reg[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[1]~16_combout\ = ((!\init|i2c_init|cmd_valid_reg~regout\ & (!\init|i2c_init|data_out_valid_reg~regout\ & !\init|i2c_init|data_ptr_reg[1]~12_combout\))) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|data_ptr_reg[1]~12_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg[1]~16_combout\);

-- Location: LCFF_X45_Y27_N21
\init|i2c_init|data_ptr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_ptr_reg~14_combout\,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(3));

-- Location: LCFF_X45_Y27_N3
\init|i2c_init|address_ptr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~14_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(3));

-- Location: LCCOMB_X45_Y27_N2
\init|i2c_init|init_data.raddr_a[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[3]~33_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|Equal4~0_combout\ & (\init|i2c_init|address_ptr_reg\(3))) # (!\init|i2c_init|Equal4~0_combout\ & 
-- ((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|address_ptr_reg\(3),
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|init_data.raddr_a[3]~33_combout\);

-- Location: LCCOMB_X45_Y27_N0
\init|i2c_init|init_data.raddr_a[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[3]~26_combout\ = (\init|i2c_init|init_data.raddr_a[1]~19_combout\ & (\init|i2c_init|address_reg\(3))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~17_combout\ & 
-- (\init|i2c_init|address_reg\(3))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[3]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(3),
	datab => \init|i2c_init|init_data.raddr_a[3]~33_combout\,
	datac => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	combout => \init|i2c_init|init_data.raddr_a[3]~26_combout\);

-- Location: LCCOMB_X45_Y27_N14
\init|i2c_init|init_data.raddr_a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(3) = (\init|i2c_init|init_data.raddr_a[1]~20_combout\ & ((\init|i2c_init|init_data.raddr_a[3]~26_combout\ & ((\init|i2c_init|data_ptr_reg\(3)))) # (!\init|i2c_init|init_data.raddr_a[3]~26_combout\ & 
-- (\init|i2c_init|Add0~5_combout\)))) # (!\init|i2c_init|init_data.raddr_a[1]~20_combout\ & (((\init|i2c_init|init_data.raddr_a[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Add0~5_combout\,
	datab => \init|i2c_init|data_ptr_reg\(3),
	datac => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	datad => \init|i2c_init|init_data.raddr_a[3]~26_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(3));

-- Location: LCCOMB_X46_Y27_N4
\init|i2c_init|address_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~2_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data.raddr_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data.raddr_a\(3),
	combout => \init|i2c_init|address_reg~2_combout\);

-- Location: LCFF_X46_Y27_N5
\init|i2c_init|address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(3));

-- Location: LCCOMB_X46_Y27_N16
\init|i2c_init|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~0_combout\ = (\init|i2c_init|address_reg\(1) & (\init|i2c_init|address_reg\(2) & (\init|i2c_init|address_reg\(3) & \init|i2c_init|address_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(1),
	datab => \init|i2c_init|address_reg\(2),
	datac => \init|i2c_init|address_reg\(3),
	datad => \init|i2c_init|address_reg\(0),
	combout => \init|i2c_init|Add0~0_combout\);

-- Location: LCCOMB_X43_Y26_N30
\init|i2c_init|data_ptr_reg~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~17_combout\ = (\r|Equal0~4_combout\ & (\init|i2c_init|address_reg\(5) $ (((\init|i2c_init|address_reg\(4) & \init|i2c_init|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|address_reg\(4),
	datab => \init|i2c_init|address_reg\(5),
	datac => \init|i2c_init|Add0~0_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg~17_combout\);

-- Location: LCCOMB_X43_Y26_N2
\init|i2c_init|data_ptr_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[5]~feeder_combout\ = \init|i2c_init|data_ptr_reg~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|data_ptr_reg~17_combout\,
	combout => \init|i2c_init|data_ptr_reg[5]~feeder_combout\);

-- Location: LCFF_X43_Y26_N3
\init|i2c_init|data_ptr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_ptr_reg[5]~feeder_combout\,
	ena => \init|i2c_init|data_ptr_reg[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_ptr_reg\(5));

-- Location: LCFF_X44_Y27_N11
\init|i2c_init|address_ptr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~17_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(5));

-- Location: LCCOMB_X45_Y27_N24
\init|i2c_init|init_data.raddr_a[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[5]~29_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|address_ptr_reg\(5)))) # (!\init|i2c_init|Equal4~0_combout\ & 
-- (\init|i2c_init|init_data.raddr_a[1]~14_combout\)))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|init_data.raddr_a[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	datab => \init|i2c_init|address_ptr_reg\(5),
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|Equal4~0_combout\,
	combout => \init|i2c_init|init_data.raddr_a[5]~29_combout\);

-- Location: LCCOMB_X43_Y27_N4
\init|i2c_init|init_data.raddr_a[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[5]~22_combout\ = (\init|i2c_init|init_data.raddr_a[1]~17_combout\ & (\init|i2c_init|address_reg\(5))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~19_combout\ & 
-- (\init|i2c_init|address_reg\(5))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & ((\init|i2c_init|init_data.raddr_a[5]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	datab => \init|i2c_init|address_reg\(5),
	datac => \init|i2c_init|init_data.raddr_a[5]~29_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	combout => \init|i2c_init|init_data.raddr_a[5]~22_combout\);

-- Location: LCCOMB_X43_Y27_N22
\init|i2c_init|init_data.raddr_a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(5) = (\init|i2c_init|init_data.raddr_a[5]~22_combout\ & (((\init|i2c_init|data_ptr_reg\(5)) # (!\init|i2c_init|init_data.raddr_a[1]~20_combout\)))) # (!\init|i2c_init|init_data.raddr_a[5]~22_combout\ & 
-- (\init|i2c_init|Add0~2_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Add0~2_combout\,
	datab => \init|i2c_init|data_ptr_reg\(5),
	datac => \init|i2c_init|init_data.raddr_a[5]~22_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(5));

-- Location: LCCOMB_X46_Y27_N26
\init|i2c_init|init_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~8_combout\ = (\init|i2c_init|init_data.raddr_a\(3) & (!\init|i2c_init|init_data.raddr_a\(4) & ((\init|i2c_init|init_data.raddr_a\(2)) # (\init|i2c_init|init_data.raddr_a\(0))))) # (!\init|i2c_init|init_data.raddr_a\(3) & 
-- (\init|i2c_init|init_data.raddr_a\(0) & ((!\init|i2c_init|init_data.raddr_a\(4)) # (!\init|i2c_init|init_data.raddr_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(3),
	datab => \init|i2c_init|init_data.raddr_a\(2),
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~8_combout\);

-- Location: LCCOMB_X46_Y27_N10
\init|i2c_init|init_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~9_combout\ = (\init|i2c_init|init_data.raddr_a\(1) & (!\init|i2c_init|init_data.raddr_a\(5) & \init|i2c_init|init_data~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(1),
	datac => \init|i2c_init|init_data.raddr_a\(5),
	datad => \init|i2c_init|init_data~8_combout\,
	combout => \init|i2c_init|init_data~9_combout\);

-- Location: LCFF_X46_Y27_N11
\init|i2c_init|init_data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~9_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(0));

-- Location: LCCOMB_X44_Y27_N26
\init|i2c_init|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal3~1_combout\ = (!\init|i2c_init|init_data_reg\(3) & (!\init|i2c_init|init_data_reg\(0) & (\init|i2c_init|Equal1~4_combout\ & \init|i2c_init|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(3),
	datab => \init|i2c_init|init_data_reg\(0),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal3~0_combout\,
	combout => \init|i2c_init|Equal3~1_combout\);

-- Location: LCCOMB_X43_Y27_N18
\init|i2c_init|state_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next~0_combout\ = (!\init|i2c_init|init_data_reg\(8) & !\init|i2c_init|init_data_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data_reg\(8),
	datad => \init|i2c_init|init_data_reg\(7),
	combout => \init|i2c_init|state_next~0_combout\);

-- Location: LCCOMB_X46_Y27_N18
\init|i2c_init|init_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~17_combout\ = (\init|i2c_init|init_data.raddr_a\(3) & (((\init|i2c_init|init_data.raddr_a\(4))))) # (!\init|i2c_init|init_data.raddr_a\(3) & ((\init|i2c_init|init_data.raddr_a\(0)) # ((\init|i2c_init|init_data.raddr_a\(2) & 
-- \init|i2c_init|init_data.raddr_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(3),
	datab => \init|i2c_init|init_data.raddr_a\(2),
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~17_combout\);

-- Location: LCCOMB_X46_Y27_N30
\init|i2c_init|init_data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~22_combout\ = (!\init|i2c_init|init_data.raddr_a\(1) & (!\init|i2c_init|init_data.raddr_a\(5) & !\init|i2c_init|init_data~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(1),
	datac => \init|i2c_init|init_data.raddr_a\(5),
	datad => \init|i2c_init|init_data~17_combout\,
	combout => \init|i2c_init|init_data~22_combout\);

-- Location: LCFF_X46_Y27_N31
\init|i2c_init|init_data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~22_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(1));

-- Location: LCCOMB_X45_Y27_N12
\init|i2c_init|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal1~5_combout\ = (\init|i2c_init|init_data_reg\(6) & !\init|i2c_init|init_data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data_reg\(6),
	datad => \init|i2c_init|init_data_reg\(1),
	combout => \init|i2c_init|Equal1~5_combout\);

-- Location: LCCOMB_X45_Y27_N4
\init|i2c_init|Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal5~4_combout\ = (\init|i2c_init|init_data_reg\(0) & !\init|i2c_init|init_data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data_reg\(0),
	datad => \init|i2c_init|init_data_reg\(3),
	combout => \init|i2c_init|Equal5~4_combout\);

-- Location: LCCOMB_X44_Y27_N4
\init|i2c_init|cmd_stop_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~2_combout\ = (\init|i2c_init|state_next~0_combout\ & (((!\init|i2c_init|Equal5~4_combout\) # (!\init|i2c_init|Equal1~5_combout\)) # (!\init|i2c_init|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal1~4_combout\,
	datab => \init|i2c_init|state_next~0_combout\,
	datac => \init|i2c_init|Equal1~5_combout\,
	datad => \init|i2c_init|Equal5~4_combout\,
	combout => \init|i2c_init|cmd_stop_reg~2_combout\);

-- Location: LCCOMB_X45_Y27_N18
\init|i2c_init|Equal7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal7~4_combout\ = (!\init|i2c_init|init_data_reg\(6) & \init|i2c_init|init_data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data_reg\(6),
	datad => \init|i2c_init|init_data_reg\(1),
	combout => \init|i2c_init|Equal7~4_combout\);

-- Location: LCCOMB_X44_Y27_N12
\init|i2c_init|cmd_stop_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~5_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((!\init|i2c_init|Equal7~4_combout\) # (!\init|i2c_init|Equal1~4_combout\)) # (!\init|i2c_init|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal5~4_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal7~4_combout\,
	combout => \init|i2c_init|cmd_stop_reg~5_combout\);

-- Location: LCCOMB_X44_Y27_N0
\init|i2c_init|init_data.raddr_a[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~16_combout\ = (\init|i2c_init|state_reg.STATE_RUN~regout\) # ((!\init|i2c_init|Equal4~0_combout\ & (!\init|i2c_init|Equal5~5_combout\ & \init|i2c_init|cmd_stop_reg~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal4~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|Equal5~5_combout\,
	datad => \init|i2c_init|cmd_stop_reg~5_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~16_combout\);

-- Location: LCCOMB_X44_Y27_N2
\init|i2c_init|init_data.raddr_a[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~17_combout\ = (\init|i2c_init|Equal2~0_combout\ & (\init|i2c_init|Equal3~1_combout\ & (\init|i2c_init|cmd_stop_reg~2_combout\ & \init|i2c_init|init_data.raddr_a[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal2~0_combout\,
	datab => \init|i2c_init|Equal3~1_combout\,
	datac => \init|i2c_init|cmd_stop_reg~2_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~16_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~17_combout\);

-- Location: LCCOMB_X45_Y27_N16
\init|i2c_init|init_data.raddr_a[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[2]~23_combout\ = (\init|i2c_init|init_data.raddr_a[1]~17_combout\ & (((\init|i2c_init|address_reg\(2))))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~19_combout\ & 
-- ((\init|i2c_init|address_reg\(2)))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & (\init|i2c_init|init_data.raddr_a[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[2]~30_combout\,
	datab => \init|i2c_init|address_reg\(2),
	datac => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	combout => \init|i2c_init|init_data.raddr_a[2]~23_combout\);

-- Location: LCCOMB_X45_Y27_N26
\init|i2c_init|init_data.raddr_a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(2) = (\init|i2c_init|init_data.raddr_a[2]~23_combout\ & ((\init|i2c_init|data_ptr_reg\(2)) # ((!\init|i2c_init|init_data.raddr_a[1]~20_combout\)))) # (!\init|i2c_init|init_data.raddr_a[2]~23_combout\ & 
-- (((\init|i2c_init|Add0~3_combout\ & \init|i2c_init|init_data.raddr_a[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_ptr_reg\(2),
	datab => \init|i2c_init|Add0~3_combout\,
	datac => \init|i2c_init|init_data.raddr_a[2]~23_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(2));

-- Location: LCCOMB_X44_Y27_N18
\init|i2c_init|init_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~6_combout\ = (\init|i2c_init|init_data.raddr_a\(3) & (!\init|i2c_init|init_data.raddr_a\(4) & (\init|i2c_init|init_data.raddr_a\(1) $ (\init|i2c_init|init_data.raddr_a\(0))))) # (!\init|i2c_init|init_data.raddr_a\(3) & 
-- (\init|i2c_init|init_data.raddr_a\(1) $ ((\init|i2c_init|init_data.raddr_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(1),
	datab => \init|i2c_init|init_data.raddr_a\(3),
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~6_combout\);

-- Location: LCCOMB_X43_Y27_N8
\init|i2c_init|init_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~7_combout\ = (!\init|i2c_init|init_data.raddr_a\(5) & (\init|i2c_init|init_data~6_combout\ & ((!\init|i2c_init|init_data.raddr_a\(4)) # (!\init|i2c_init|init_data.raddr_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(5),
	datab => \init|i2c_init|init_data.raddr_a\(2),
	datac => \init|i2c_init|init_data.raddr_a\(4),
	datad => \init|i2c_init|init_data~6_combout\,
	combout => \init|i2c_init|init_data~7_combout\);

-- Location: LCFF_X43_Y27_N9
\init|i2c_init|init_data_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~7_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(8));

-- Location: LCCOMB_X42_Y25_N18
\init|i2c_init|data_ptr_reg[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg[1]~10_combout\ = (\init|i2c_init|init_data_reg\(8)) # ((\init|i2c_init|init_data_reg\(7)) # (!\init|i2c_init|state_reg.STATE_RUN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|init_data_reg\(7),
	datad => \init|i2c_init|state_reg.STATE_RUN~regout\,
	combout => \init|i2c_init|data_ptr_reg[1]~10_combout\);

-- Location: LCCOMB_X43_Y25_N30
\init|i2c_init|cmd_valid_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~2_combout\ = (!\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_1~regout\) # ((\init|i2c_init|cmd_stop_reg~5_combout\ & \init|i2c_init|state_next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|cmd_stop_reg~5_combout\,
	datad => \init|i2c_init|state_next~0_combout\,
	combout => \init|i2c_init|cmd_valid_next~2_combout\);

-- Location: LCCOMB_X43_Y25_N14
\init|i2c_init|cmd_valid_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~3_combout\ = (!\init|i2c_init|Equal5~5_combout\ & ((\init|i2c_init|cmd_valid_next~2_combout\) # ((!\init|i2c_init|Equal0~0_combout\ & \init|i2c_init|state_reg.STATE_TABLE_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal0~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \init|i2c_init|Equal5~5_combout\,
	datad => \init|i2c_init|cmd_valid_next~2_combout\,
	combout => \init|i2c_init|cmd_valid_next~3_combout\);

-- Location: LCCOMB_X42_Y25_N12
\init|i2c_init|cmd_valid_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~4_combout\ = (\init|i2c_init|Equal2~0_combout\ & (\init|i2c_init|Equal3~1_combout\ & ((\init|i2c_init|cmd_valid_next~3_combout\) # (!\init|i2c_init|data_ptr_reg[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal2~0_combout\,
	datab => \init|i2c_init|data_ptr_reg[1]~10_combout\,
	datac => \init|i2c_init|cmd_valid_next~3_combout\,
	datad => \init|i2c_init|Equal3~1_combout\,
	combout => \init|i2c_init|cmd_valid_next~4_combout\);

-- Location: LCCOMB_X42_Y25_N0
\init|i2c_init|cmd_valid_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~6_combout\ = (\init|i2c_init|cmd_valid_next~5_combout\) # ((\init|i2c_init|cmd_valid_next~4_combout\) # ((\init|i2c_init|init_data_reg\(8) & \init|i2c_init|state_reg~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_next~5_combout\,
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|state_reg~15_combout\,
	datad => \init|i2c_init|cmd_valid_next~4_combout\,
	combout => \init|i2c_init|cmd_valid_next~6_combout\);

-- Location: LCCOMB_X42_Y25_N8
\init|i2c_init|cmd_valid_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_valid_next~7_combout\ = (\init|i2c_init|cmd_valid_reg~regout\ & (((!\init|i2c_master|cmd_ready_reg~regout\)))) # (!\init|i2c_init|cmd_valid_reg~regout\ & (!\init|i2c_init|data_out_valid_reg~regout\ & 
-- ((\init|i2c_init|cmd_valid_next~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~regout\,
	datab => \init|i2c_master|cmd_ready_reg~regout\,
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \init|i2c_init|cmd_valid_next~6_combout\,
	combout => \init|i2c_init|cmd_valid_next~7_combout\);

-- Location: LCFF_X42_Y25_N9
\init|i2c_init|cmd_valid_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cmd_valid_next~7_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_valid_reg~regout\);

-- Location: LCCOMB_X42_Y25_N22
\init|i2c_init|data_out_valid_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_valid_reg~4_combout\ = (!\init|i2c_init|cmd_valid_reg~regout\ & !\init|i2c_init|data_out_valid_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \init|i2c_init|data_out_valid_reg~regout\,
	combout => \init|i2c_init|data_out_valid_reg~4_combout\);

-- Location: LCCOMB_X42_Y26_N22
\init|i2c_init|state_next.STATE_TABLE_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_1~0_combout\ = ((!\init|i2c_init|Equal5~5_combout\ & (!\init|i2c_init|Equal4~0_combout\ & !\init|i2c_init|Equal3~1_combout\))) # (!\init|i2c_init|data_out_valid_reg~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal5~5_combout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|data_out_valid_reg~4_combout\,
	datad => \init|i2c_init|Equal3~1_combout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_1~0_combout\);

-- Location: LCCOMB_X42_Y26_N28
\init|i2c_init|state_next.STATE_TABLE_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|state_next.STATE_TABLE_1~2_combout\ = (\init|i2c_init|state_next.STATE_TABLE_1~1_combout\ & ((\init|i2c_init|data_out_valid_reg~4_combout\) # ((\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & 
-- \init|i2c_init|state_next.STATE_TABLE_1~0_combout\)))) # (!\init|i2c_init|state_next.STATE_TABLE_1~1_combout\ & (((\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & \init|i2c_init|state_next.STATE_TABLE_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_next.STATE_TABLE_1~1_combout\,
	datab => \init|i2c_init|data_out_valid_reg~4_combout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datad => \init|i2c_init|state_next.STATE_TABLE_1~0_combout\,
	combout => \init|i2c_init|state_next.STATE_TABLE_1~2_combout\);

-- Location: LCFF_X42_Y26_N29
\init|i2c_init|state_reg.STATE_TABLE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|state_next.STATE_TABLE_1~2_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|state_reg.STATE_TABLE_1~regout\);

-- Location: LCCOMB_X42_Y26_N24
\init|i2c_init|address_ptr_reg[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_ptr_reg[4]~0_combout\ = (!\init|i2c_init|state_reg.STATE_TABLE_2~regout\ & !\init|i2c_init|state_reg.STATE_TABLE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	combout => \init|i2c_init|address_ptr_reg[4]~0_combout\);

-- Location: LCCOMB_X43_Y26_N20
\init|i2c_init|address_ptr_reg[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_ptr_reg[4]~1_combout\ = ((\init|i2c_init|data_out_valid_reg~4_combout\ & (!\init|i2c_init|address_ptr_reg[4]~0_combout\ & \init|i2c_init|state_reg~23_combout\))) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \init|i2c_init|address_ptr_reg[4]~0_combout\,
	datac => \init|i2c_init|state_reg~23_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|address_ptr_reg[4]~1_combout\);

-- Location: LCFF_X44_Y27_N31
\init|i2c_init|address_ptr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~13_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(0));

-- Location: LCCOMB_X44_Y27_N30
\init|i2c_init|init_data.raddr_a[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[0]~31_combout\ = (\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|address_ptr_reg\(0))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- ((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))) # (!\init|i2c_init|Equal4~0_combout\ & (((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal4~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|address_ptr_reg\(0),
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|init_data.raddr_a[0]~31_combout\);

-- Location: LCCOMB_X43_Y27_N16
\init|i2c_init|init_data.raddr_a[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[0]~24_combout\ = (\init|i2c_init|init_data.raddr_a[1]~17_combout\ & (\init|i2c_init|address_reg\(0))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~19_combout\ & 
-- (\init|i2c_init|address_reg\(0))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & ((\init|i2c_init|init_data.raddr_a[0]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	datab => \init|i2c_init|address_reg\(0),
	datac => \init|i2c_init|init_data.raddr_a[0]~31_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	combout => \init|i2c_init|init_data.raddr_a[0]~24_combout\);

-- Location: LCCOMB_X43_Y27_N30
\init|i2c_init|init_data.raddr_a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(0) = (\init|i2c_init|init_data.raddr_a[0]~24_combout\ & ((\init|i2c_init|data_ptr_reg\(0)) # ((!\init|i2c_init|init_data.raddr_a[1]~20_combout\)))) # (!\init|i2c_init|init_data.raddr_a[0]~24_combout\ & 
-- (((!\init|i2c_init|address_reg\(0) & \init|i2c_init|init_data.raddr_a[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_ptr_reg\(0),
	datab => \init|i2c_init|address_reg\(0),
	datac => \init|i2c_init|init_data.raddr_a[0]~24_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(0));

-- Location: LCCOMB_X46_Y27_N6
\init|i2c_init|address_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|address_reg~1_combout\ = (\init|i2c_init|init_data.raddr_a\(0) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|address_reg~1_combout\);

-- Location: LCFF_X46_Y27_N7
\init|i2c_init|address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|address_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_reg\(0));

-- Location: LCCOMB_X46_Y27_N14
\init|i2c_init|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Add0~4_combout\ = \init|i2c_init|address_reg\(1) $ (\init|i2c_init|address_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|address_reg\(1),
	datad => \init|i2c_init|address_reg\(0),
	combout => \init|i2c_init|Add0~4_combout\);

-- Location: LCCOMB_X45_Y27_N10
\init|i2c_init|data_ptr_reg~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_ptr_reg~19_combout\ = (\r|Equal0~4_combout\ & (\init|i2c_init|address_reg\(0) $ (\init|i2c_init|address_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|address_reg\(0),
	datac => \init|i2c_init|address_reg\(1),
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|data_ptr_reg~19_combout\);

-- Location: LCFF_X44_Y27_N9
\init|i2c_init|address_ptr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|data_ptr_reg~19_combout\,
	sload => VCC,
	ena => \init|i2c_init|address_ptr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|address_ptr_reg\(1));

-- Location: LCCOMB_X44_Y27_N8
\init|i2c_init|init_data.raddr_a[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~32_combout\ = (\init|i2c_init|Equal4~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|address_ptr_reg\(1))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- ((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))) # (!\init|i2c_init|Equal4~0_combout\ & (((\init|i2c_init|init_data.raddr_a[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal4~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|address_ptr_reg\(1),
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~32_combout\);

-- Location: LCCOMB_X43_Y27_N20
\init|i2c_init|init_data.raddr_a[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a[1]~25_combout\ = (\init|i2c_init|init_data.raddr_a[1]~17_combout\ & (\init|i2c_init|address_reg\(1))) # (!\init|i2c_init|init_data.raddr_a[1]~17_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~19_combout\ & 
-- (\init|i2c_init|address_reg\(1))) # (!\init|i2c_init|init_data.raddr_a[1]~19_combout\ & ((\init|i2c_init|init_data.raddr_a[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~17_combout\,
	datab => \init|i2c_init|address_reg\(1),
	datac => \init|i2c_init|init_data.raddr_a[1]~32_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~19_combout\,
	combout => \init|i2c_init|init_data.raddr_a[1]~25_combout\);

-- Location: LCCOMB_X43_Y27_N14
\init|i2c_init|init_data.raddr_a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data.raddr_a\(1) = (\init|i2c_init|init_data.raddr_a[1]~25_combout\ & ((\init|i2c_init|data_ptr_reg\(1)) # ((!\init|i2c_init|init_data.raddr_a[1]~20_combout\)))) # (!\init|i2c_init|init_data.raddr_a[1]~25_combout\ & 
-- (((\init|i2c_init|Add0~4_combout\ & \init|i2c_init|init_data.raddr_a[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_ptr_reg\(1),
	datab => \init|i2c_init|Add0~4_combout\,
	datac => \init|i2c_init|init_data.raddr_a[1]~25_combout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~20_combout\,
	combout => \init|i2c_init|init_data.raddr_a\(1));

-- Location: LCCOMB_X46_Y27_N12
\init|i2c_init|init_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~18_combout\ = (\init|i2c_init|init_data.raddr_a\(0) & (((!\init|i2c_init|init_data.raddr_a\(3) & !\init|i2c_init|init_data.raddr_a\(2))) # (!\init|i2c_init|init_data.raddr_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(3),
	datab => \init|i2c_init|init_data.raddr_a\(2),
	datac => \init|i2c_init|init_data.raddr_a\(0),
	datad => \init|i2c_init|init_data.raddr_a\(4),
	combout => \init|i2c_init|init_data~18_combout\);

-- Location: LCCOMB_X46_Y27_N8
\init|i2c_init|init_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~19_combout\ = (\init|i2c_init|init_data.raddr_a\(1) & (!\init|i2c_init|init_data.raddr_a\(5) & \init|i2c_init|init_data~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(1),
	datac => \init|i2c_init|init_data.raddr_a\(5),
	datad => \init|i2c_init|init_data~18_combout\,
	combout => \init|i2c_init|init_data~19_combout\);

-- Location: LCFF_X46_Y27_N9
\init|i2c_init|init_data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~19_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(6));

-- Location: LCCOMB_X45_Y27_N30
\init|i2c_init|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal3~0_combout\ = (!\init|i2c_init|init_data_reg\(6) & !\init|i2c_init|init_data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|init_data_reg\(6),
	datad => \init|i2c_init|init_data_reg\(1),
	combout => \init|i2c_init|Equal3~0_combout\);

-- Location: LCCOMB_X46_Y27_N24
\init|i2c_init|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector10~0_combout\ = (\init|i2c_init|init_data.raddr_a[1]~14_combout\) # ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((!\init|i2c_init|Equal3~0_combout\) # (!\init|i2c_init|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal1~4_combout\,
	datab => \init|i2c_init|Equal3~0_combout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	combout => \init|i2c_init|Selector10~0_combout\);

-- Location: LCFF_X46_Y27_N25
\init|i2c_init|state_reg.STATE_TABLE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|Selector10~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_init|state_reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|state_reg.STATE_TABLE_3~regout\);

-- Location: LCCOMB_X44_Y27_N20
\init|i2c_init|Equal7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal7~5_combout\ = (\init|i2c_init|init_data_reg\(0) & (!\init|i2c_init|init_data_reg\(3) & (\init|i2c_init|Equal1~4_combout\ & \init|i2c_init|Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(0),
	datab => \init|i2c_init|init_data_reg\(3),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal7~4_combout\,
	combout => \init|i2c_init|Equal7~5_combout\);

-- Location: LCCOMB_X43_Y25_N0
\init|i2c_init|cmd_write_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_write_next~0_combout\ = (\init|i2c_init|cmd_stop_reg~2_combout\ & (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|Equal7~5_combout\))) # (!\init|i2c_init|cmd_stop_reg~2_combout\ & 
-- ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\) # ((\init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_stop_reg~2_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal7~5_combout\,
	datad => \init|i2c_init|state_reg.STATE_RUN~regout\,
	combout => \init|i2c_init|cmd_write_next~0_combout\);

-- Location: LCCOMB_X43_Y25_N22
\init|i2c_init|cmd_stop_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~3_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\) # (\init|i2c_init|Equal2~0_combout\))) # (!\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & 
-- (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & \init|i2c_init|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	combout => \init|i2c_init|cmd_stop_reg~3_combout\);

-- Location: LCCOMB_X43_Y25_N12
\init|i2c_init|cmd_stop_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~4_combout\ = (\init|i2c_init|cmd_stop_reg~3_combout\ & (((!\init|i2c_init|Equal4~0_combout\)))) # (!\init|i2c_init|cmd_stop_reg~3_combout\ & (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal0~0_combout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|cmd_stop_reg~3_combout\,
	combout => \init|i2c_init|cmd_stop_reg~4_combout\);

-- Location: LCCOMB_X43_Y25_N26
\init|i2c_init|cmd_stop_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~6_combout\ = (\init|i2c_init|cmd_stop_reg~2_combout\ & ((\init|i2c_init|state_reg.STATE_RUN~regout\) # ((\init|i2c_init|cmd_stop_reg~5_combout\ & \init|i2c_init|cmd_stop_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_stop_reg~5_combout\,
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|cmd_stop_reg~2_combout\,
	datad => \init|i2c_init|cmd_stop_reg~4_combout\,
	combout => \init|i2c_init|cmd_stop_reg~6_combout\);

-- Location: LCCOMB_X43_Y25_N20
\init|i2c_init|cmd_stop_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~7_combout\ = ((!\init|i2c_init|cmd_stop_reg~6_combout\ & ((\init|i2c_init|address_ptr_reg[4]~0_combout\) # (!\init|i2c_init|cmd_stop_reg~4_combout\)))) # (!\init|i2c_init|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_stop_reg~4_combout\,
	datab => \init|i2c_init|address_ptr_reg[4]~0_combout\,
	datac => \init|i2c_init|Equal3~1_combout\,
	datad => \init|i2c_init|cmd_stop_reg~6_combout\,
	combout => \init|i2c_init|cmd_stop_reg~7_combout\);

-- Location: LCCOMB_X43_Y25_N4
\init|i2c_init|cmd_stop_reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~8_combout\ = ((\init|i2c_init|Equal7~5_combout\ & (\init|i2c_init|state_next~0_combout\)) # (!\init|i2c_init|Equal7~5_combout\ & ((\init|i2c_init|cmd_stop_reg~2_combout\)))) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_next~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal7~5_combout\,
	datad => \init|i2c_init|cmd_stop_reg~2_combout\,
	combout => \init|i2c_init|cmd_stop_reg~8_combout\);

-- Location: LCCOMB_X43_Y25_N10
\init|i2c_init|cmd_stop_reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~9_combout\ = (\init|i2c_init|Equal0~0_combout\) # ((\init|i2c_init|cmd_stop_reg~8_combout\ & ((\init|i2c_init|cmd_stop_reg~2_combout\) # (!\init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal0~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|cmd_stop_reg~8_combout\,
	datad => \init|i2c_init|cmd_stop_reg~2_combout\,
	combout => \init|i2c_init|cmd_stop_reg~9_combout\);

-- Location: LCCOMB_X43_Y25_N28
\init|i2c_init|cmd_stop_reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_reg~10_combout\ = (\init|i2c_init|cmd_valid_reg~regout\) # ((\init|i2c_init|data_out_valid_reg~regout\) # ((\init|i2c_init|cmd_stop_reg~7_combout\ & \init|i2c_init|cmd_stop_reg~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|cmd_stop_reg~7_combout\,
	datad => \init|i2c_init|cmd_stop_reg~9_combout\,
	combout => \init|i2c_init|cmd_stop_reg~10_combout\);

-- Location: LCCOMB_X43_Y25_N16
\init|i2c_init|cmd_write_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_write_next~1_combout\ = (\init|i2c_init|init_data_reg\(8) & (\init|i2c_init|cmd_write_next~0_combout\ & !\init|i2c_init|cmd_stop_reg~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(8),
	datab => \init|i2c_init|cmd_write_next~0_combout\,
	datad => \init|i2c_init|cmd_stop_reg~10_combout\,
	combout => \init|i2c_init|cmd_write_next~1_combout\);

-- Location: LCCOMB_X42_Y25_N24
\init|i2c_master|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|always0~4_combout\ = (\init|i2c_init|cmd_valid_reg~regout\ & \init|i2c_master|cmd_ready_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \init|i2c_master|cmd_ready_reg~regout\,
	combout => \init|i2c_master|always0~4_combout\);

-- Location: LCCOMB_X43_Y25_N2
\init|i2c_init|cmd_write_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_write_next~2_combout\ = (\init|i2c_master|always0~4_combout\) # ((\init|i2c_init|data_out_valid_reg~4_combout\ & ((!\init|i2c_init|cmd_stop_reg~9_combout\) # (!\init|i2c_init|cmd_stop_reg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \init|i2c_master|always0~4_combout\,
	datac => \init|i2c_init|cmd_stop_reg~7_combout\,
	datad => \init|i2c_init|cmd_stop_reg~9_combout\,
	combout => \init|i2c_init|cmd_write_next~2_combout\);

-- Location: LCFF_X43_Y25_N17
\init|i2c_init|cmd_write_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cmd_write_next~1_combout\,
	ena => \init|i2c_init|cmd_write_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_write_reg~regout\);

-- Location: LCCOMB_X43_Y24_N18
\init|i2c_master|phy_start_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_start_bit~0_combout\ = (\init|i2c_master|cmd_ready_reg~regout\ & (\init|i2c_init|cmd_write_reg~regout\ & \init|i2c_init|cmd_valid_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|cmd_ready_reg~regout\,
	datac => \init|i2c_init|cmd_write_reg~regout\,
	datad => \init|i2c_init|cmd_valid_reg~regout\,
	combout => \init|i2c_master|phy_start_bit~0_combout\);

-- Location: LCCOMB_X43_Y26_N28
\init|i2c_master|sda_i_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|sda_i_reg~0_combout\ = !\I2C_SDAT~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_SDAT~0\,
	combout => \init|i2c_master|sda_i_reg~0_combout\);

-- Location: LCFF_X43_Y26_N29
\init|i2c_master|sda_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|sda_i_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|sda_i_reg~regout\);

-- Location: LCCOMB_X44_Y25_N8
\init|i2c_master|last_sda_i_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|last_sda_i_reg~feeder_combout\ = \init|i2c_master|sda_i_reg~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_master|sda_i_reg~regout\,
	combout => \init|i2c_master|last_sda_i_reg~feeder_combout\);

-- Location: LCFF_X44_Y25_N9
\init|i2c_master|last_sda_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|last_sda_i_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|last_sda_i_reg~regout\);

-- Location: LCCOMB_X44_Y25_N24
\init|i2c_master|scl_i_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_i_reg~0_combout\ = !\I2C_SCLK~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_SCLK~0\,
	combout => \init|i2c_master|scl_i_reg~0_combout\);

-- Location: LCFF_X44_Y25_N25
\init|i2c_master|scl_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|scl_i_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|scl_i_reg~regout\);

-- Location: LCCOMB_X43_Y24_N22
\init|i2c_master|bus_active_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bus_active_reg~0_combout\ = (\init|i2c_master|sda_i_reg~regout\ & ((\init|i2c_master|bus_active_reg~regout\) # ((!\init|i2c_master|last_sda_i_reg~regout\ & !\init|i2c_master|scl_i_reg~regout\)))) # (!\init|i2c_master|sda_i_reg~regout\ & 
-- (\init|i2c_master|bus_active_reg~regout\ & ((\init|i2c_master|scl_i_reg~regout\) # (!\init|i2c_master|last_sda_i_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|sda_i_reg~regout\,
	datab => \init|i2c_master|last_sda_i_reg~regout\,
	datac => \init|i2c_master|bus_active_reg~regout\,
	datad => \init|i2c_master|scl_i_reg~regout\,
	combout => \init|i2c_master|bus_active_reg~0_combout\);

-- Location: LCFF_X43_Y24_N23
\init|i2c_master|bus_active_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|bus_active_reg~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|bus_active_reg~regout\);

-- Location: LCCOMB_X43_Y24_N24
\init|i2c_master|state_reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~24_combout\ = (!\init|i2c_master|state_reg~28_combout\ & (\r|Equal0~4_combout\ & ((\init|i2c_master|Selector38~6_combout\) # (!\init|i2c_master|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg~28_combout\,
	datab => \r|Equal0~4_combout\,
	datac => \init|i2c_master|Selector26~0_combout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|state_reg~24_combout\);

-- Location: LCFF_X43_Y24_N25
\init|i2c_master|state_reg.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|state_reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_IDLE~regout\);

-- Location: LCCOMB_X43_Y24_N14
\init|i2c_master|state_next.STATE_ADDRESS_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\ = (!\init|i2c_master|bus_active_reg~regout\ & ((\init|i2c_master|state_reg.STATE_START_WAIT~regout\) # ((!\init|i2c_master|state_reg.STATE_IDLE~regout\ & \init|i2c_master|phy_start_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datab => \init|i2c_master|bus_active_reg~regout\,
	datac => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datad => \init|i2c_master|phy_start_bit~0_combout\,
	combout => \init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\);

-- Location: LCCOMB_X42_Y26_N30
\init|i2c_init|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal0~0_combout\ = (\init|i2c_init|init_data_reg\(7) & !\init|i2c_init|init_data_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data_reg\(7),
	datac => \init|i2c_init|init_data_reg\(8),
	combout => \init|i2c_init|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y24_N2
\init|i2c_init|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector27~0_combout\ = (\init|i2c_init|Equal0~0_combout\ & (((\init|i2c_init|init_data_reg\(2))))) # (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|cur_address_reg\(2))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|init_data_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cur_address_reg\(2),
	datab => \init|i2c_init|Equal0~0_combout\,
	datac => \init|i2c_init|init_data_reg\(2),
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|Selector27~0_combout\);

-- Location: LCCOMB_X42_Y25_N4
\init|i2c_init|cmd_address_reg[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_address_reg[6]~3_combout\ = (\init|i2c_init|init_data_reg\(8)) # (((!\init|i2c_init|init_data_reg\(7) & !\init|i2c_init|Equal7~5_combout\)) # (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(7),
	datab => \init|i2c_init|init_data_reg\(8),
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|Equal7~5_combout\,
	combout => \init|i2c_init|cmd_address_reg[6]~3_combout\);

-- Location: LCCOMB_X42_Y24_N8
\init|i2c_init|cmd_address_reg[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_address_reg[6]~2_combout\ = (\init|i2c_init|data_out_valid_reg~4_combout\ & (((\init|i2c_init|state_reg.STATE_RUN~regout\ & \init|i2c_init|Equal0~0_combout\)) # (!\init|i2c_init|cmd_address_reg[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \init|i2c_init|Equal0~0_combout\,
	datac => \init|i2c_init|data_out_valid_reg~4_combout\,
	datad => \init|i2c_init|cmd_address_reg[6]~3_combout\,
	combout => \init|i2c_init|cmd_address_reg[6]~2_combout\);

-- Location: LCFF_X42_Y24_N3
\init|i2c_init|cmd_address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|Selector27~0_combout\,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(2));

-- Location: LCCOMB_X43_Y24_N2
\init|i2c_master|addr_reg[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|addr_reg[6]~4_combout\ = (!\init|i2c_master|bit_count_reg[3]~0_combout\ & (\init|i2c_master|phy_start_bit~0_combout\ & ((\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # 
-- (!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~0_combout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	combout => \init|i2c_master|addr_reg[6]~4_combout\);

-- Location: LCFF_X42_Y24_N27
\init|i2c_master|addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(2),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(2));

-- Location: LCCOMB_X43_Y23_N2
\init|i2c_init|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector26~0_combout\ = (\init|i2c_init|Equal0~0_combout\ & (((\init|i2c_init|init_data_reg\(3))))) # (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|cur_address_reg\(3))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|init_data_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cur_address_reg\(3),
	datab => \init|i2c_init|init_data_reg\(3),
	datac => \init|i2c_init|Equal0~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|Selector26~0_combout\);

-- Location: LCFF_X42_Y24_N1
\init|i2c_init|cmd_address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|Selector26~0_combout\,
	sload => VCC,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(3));

-- Location: LCCOMB_X42_Y24_N26
\init|i2c_master|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|always0~1_combout\ = (\init|i2c_master|addr_reg\(3) & (\init|i2c_init|cmd_address_reg\(3) & (\init|i2c_init|cmd_address_reg\(2) $ (!\init|i2c_master|addr_reg\(2))))) # (!\init|i2c_master|addr_reg\(3) & (!\init|i2c_init|cmd_address_reg\(3) 
-- & (\init|i2c_init|cmd_address_reg\(2) $ (!\init|i2c_master|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|addr_reg\(3),
	datab => \init|i2c_init|cmd_address_reg\(2),
	datac => \init|i2c_master|addr_reg\(2),
	datad => \init|i2c_init|cmd_address_reg\(3),
	combout => \init|i2c_master|always0~1_combout\);

-- Location: LCCOMB_X43_Y27_N12
\init|i2c_init|init_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~14_combout\ = (\init|i2c_init|init_data.raddr_a\(0) & (!\init|i2c_init|init_data.raddr_a\(1) & \init|i2c_init|init_data.raddr_a\(2))) # (!\init|i2c_init|init_data.raddr_a\(0) & (\init|i2c_init|init_data.raddr_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|init_data.raddr_a\(0),
	datac => \init|i2c_init|init_data.raddr_a\(1),
	datad => \init|i2c_init|init_data.raddr_a\(2),
	combout => \init|i2c_init|init_data~14_combout\);

-- Location: LCCOMB_X43_Y27_N2
\init|i2c_init|init_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~15_combout\ = \init|i2c_init|init_data.raddr_a\(0) $ (((\init|i2c_init|init_data.raddr_a\(3) & (!\init|i2c_init|init_data.raddr_a\(4) & \init|i2c_init|init_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(0),
	datab => \init|i2c_init|init_data.raddr_a\(3),
	datac => \init|i2c_init|init_data.raddr_a\(4),
	datad => \init|i2c_init|init_data~14_combout\,
	combout => \init|i2c_init|init_data~15_combout\);

-- Location: LCCOMB_X43_Y27_N6
\init|i2c_init|init_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|init_data~16_combout\ = (!\init|i2c_init|init_data~15_combout\ & ((\init|i2c_init|init_data.raddr_a\(4) & ((\init|i2c_init|init_data~12_combout\))) # (!\init|i2c_init|init_data.raddr_a\(4) & (!\init|i2c_init|init_data.raddr_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a\(5),
	datab => \init|i2c_init|init_data~12_combout\,
	datac => \init|i2c_init|init_data.raddr_a\(4),
	datad => \init|i2c_init|init_data~15_combout\,
	combout => \init|i2c_init|init_data~16_combout\);

-- Location: LCFF_X43_Y27_N7
\init|i2c_init|init_data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|init_data~16_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|init_data_reg\(4));

-- Location: LCCOMB_X43_Y23_N30
\init|i2c_init|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector25~0_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|init_data_reg\(4)))) # (!\init|i2c_init|Equal0~0_combout\ & (\init|i2c_init|cur_address_reg\(4))))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\init|i2c_init|init_data_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cur_address_reg\(4),
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal0~0_combout\,
	datad => \init|i2c_init|init_data_reg\(4),
	combout => \init|i2c_init|Selector25~0_combout\);

-- Location: LCFF_X42_Y24_N19
\init|i2c_init|cmd_address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|Selector25~0_combout\,
	sload => VCC,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(4));

-- Location: LCCOMB_X42_Y24_N10
\init|i2c_init|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector23~0_combout\ = (\init|i2c_init|Equal0~0_combout\ & (((\init|i2c_init|init_data_reg\(6))))) # (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|cur_address_reg\(6))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|init_data_reg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cur_address_reg\(6),
	datab => \init|i2c_init|init_data_reg\(6),
	datac => \init|i2c_init|Equal0~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|Selector23~0_combout\);

-- Location: LCFF_X42_Y24_N11
\init|i2c_init|cmd_address_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|Selector23~0_combout\,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(6));

-- Location: LCFF_X42_Y24_N5
\init|i2c_master|addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(6),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(6));

-- Location: LCFF_X42_Y24_N7
\init|i2c_master|addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(4),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(4));

-- Location: LCCOMB_X42_Y24_N4
\init|i2c_master|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|always0~2_combout\ = (\init|i2c_init|cmd_address_reg\(6) & (\init|i2c_master|addr_reg\(6) & (\init|i2c_init|cmd_address_reg\(4) $ (!\init|i2c_master|addr_reg\(4))))) # (!\init|i2c_init|cmd_address_reg\(6) & (!\init|i2c_master|addr_reg\(6) 
-- & (\init|i2c_init|cmd_address_reg\(4) $ (!\init|i2c_master|addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_address_reg\(6),
	datab => \init|i2c_init|cmd_address_reg\(4),
	datac => \init|i2c_master|addr_reg\(6),
	datad => \init|i2c_master|addr_reg\(4),
	combout => \init|i2c_master|always0~2_combout\);

-- Location: LCCOMB_X42_Y25_N26
\init|i2c_init|cmd_start_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~0_combout\ = (\init|i2c_init|cmd_start_reg~regout\ & ((!\init|i2c_master|cmd_ready_reg~regout\) # (!\init|i2c_init|cmd_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_start_reg~regout\,
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \init|i2c_master|cmd_ready_reg~regout\,
	combout => \init|i2c_init|cmd_start_next~0_combout\);

-- Location: LCCOMB_X46_Y27_N22
\init|i2c_init|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Equal1~6_combout\ = (!\init|i2c_init|init_data_reg\(3) & (\init|i2c_init|init_data_reg\(0) & (\init|i2c_init|Equal1~4_combout\ & \init|i2c_init|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(3),
	datab => \init|i2c_init|init_data_reg\(0),
	datac => \init|i2c_init|Equal1~4_combout\,
	datad => \init|i2c_init|Equal1~5_combout\,
	combout => \init|i2c_init|Equal1~6_combout\);

-- Location: LCCOMB_X42_Y25_N28
\init|i2c_init|cmd_start_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~1_combout\ = (!\init|i2c_init|Equal1~6_combout\ & (\init|i2c_init|cmd_start_next~0_combout\ & ((!\init|i2c_init|Equal2~0_combout\) # (!\init|i2c_init|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal3~1_combout\,
	datab => \init|i2c_init|Equal2~0_combout\,
	datac => \init|i2c_init|Equal1~6_combout\,
	datad => \init|i2c_init|cmd_start_next~0_combout\,
	combout => \init|i2c_init|cmd_start_next~1_combout\);

-- Location: LCCOMB_X42_Y25_N10
\init|i2c_init|cmd_start_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~2_combout\ = (\init|i2c_init|state_next~0_combout\ & (\init|i2c_init|cmd_start_next~1_combout\ & ((\init|i2c_init|state_reg.STATE_RUN~regout\) # (\init|i2c_init|state_reg.STATE_TABLE_3~regout\)))) # 
-- (!\init|i2c_init|state_next~0_combout\ & ((\init|i2c_init|state_reg.STATE_RUN~regout\) # ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_next~0_combout\,
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|cmd_start_next~1_combout\,
	combout => \init|i2c_init|cmd_start_next~2_combout\);

-- Location: LCCOMB_X42_Y25_N14
\init|i2c_init|cmd_start_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~4_combout\ = (\init|i2c_init|cmd_start_next~2_combout\) # ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|cmd_start_next~3_combout\) # (\init|i2c_init|Equal7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_start_next~3_combout\,
	datab => \init|i2c_init|Equal7~5_combout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|cmd_start_next~2_combout\,
	combout => \init|i2c_init|cmd_start_next~4_combout\);

-- Location: LCCOMB_X42_Y26_N4
\init|i2c_init|cmd_start_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~6_combout\ = (!\init|i2c_init|address_ptr_reg[4]~0_combout\ & ((\init|i2c_init|Equal5~5_combout\) # ((!\init|i2c_init|Equal2~0_combout\) # (!\init|i2c_init|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|Equal5~5_combout\,
	datab => \init|i2c_init|Equal3~1_combout\,
	datac => \init|i2c_init|Equal2~0_combout\,
	datad => \init|i2c_init|address_ptr_reg[4]~0_combout\,
	combout => \init|i2c_init|cmd_start_next~6_combout\);

-- Location: LCCOMB_X41_Y26_N22
\init|i2c_init|cmd_start_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~7_combout\ = (\init|i2c_init|init_data.raddr_a[1]~14_combout\) # ((\init|i2c_init|data_out_valid_reg~regout\) # ((\init|i2c_init|cmd_valid_reg~regout\) # (!\init|i2c_init|state_reg.STATE_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|cmd_valid_reg~regout\,
	datad => \init|i2c_init|state_reg.STATE_IDLE~regout\,
	combout => \init|i2c_init|cmd_start_next~7_combout\);

-- Location: LCCOMB_X42_Y26_N26
\init|i2c_init|cmd_start_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~8_combout\ = (\init|i2c_init|cmd_start_next~6_combout\) # ((\init|i2c_init|cmd_start_next~7_combout\) # ((\init|i2c_init|state_reg.STATE_TABLE_1~regout\ & \init|i2c_init|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \init|i2c_init|Equal4~0_combout\,
	datac => \init|i2c_init|cmd_start_next~6_combout\,
	datad => \init|i2c_init|cmd_start_next~7_combout\,
	combout => \init|i2c_init|cmd_start_next~8_combout\);

-- Location: LCCOMB_X42_Y25_N16
\init|i2c_init|cmd_start_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_start_next~9_combout\ = (\init|i2c_init|cmd_start_next~0_combout\ & (((\init|i2c_init|cmd_start_next~4_combout\) # (\init|i2c_init|cmd_start_next~8_combout\)))) # (!\init|i2c_init|cmd_start_next~0_combout\ & 
-- (\init|i2c_init|cmd_start_next~5_combout\ & (\init|i2c_init|cmd_start_next~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_start_next~5_combout\,
	datab => \init|i2c_init|cmd_start_next~0_combout\,
	datac => \init|i2c_init|cmd_start_next~4_combout\,
	datad => \init|i2c_init|cmd_start_next~8_combout\,
	combout => \init|i2c_init|cmd_start_next~9_combout\);

-- Location: LCFF_X42_Y25_N17
\init|i2c_init|cmd_start_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cmd_start_next~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_start_reg~regout\);

-- Location: LCCOMB_X42_Y24_N14
\init|i2c_master|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|always0~3_combout\ = (\init|i2c_master|always0~0_combout\ & (\init|i2c_master|always0~1_combout\ & (\init|i2c_master|always0~2_combout\ & !\init|i2c_init|cmd_start_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|always0~0_combout\,
	datab => \init|i2c_master|always0~1_combout\,
	datac => \init|i2c_master|always0~2_combout\,
	datad => \init|i2c_init|cmd_start_reg~regout\,
	combout => \init|i2c_master|always0~3_combout\);

-- Location: LCCOMB_X43_Y24_N8
\init|i2c_master|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector20~0_combout\ = (\init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\) # ((\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\init|i2c_master|phy_start_bit~0_combout\ & !\init|i2c_master|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\,
	datad => \init|i2c_master|always0~3_combout\,
	combout => \init|i2c_master|Selector20~0_combout\);

-- Location: LCCOMB_X45_Y24_N8
\init|i2c_master|phy_state_reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~28_combout\ = (\init|i2c_master|phy_state_next~2_combout\ & ((\init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # ((!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & !\init|i2c_master|Selector20~0_combout\)))) 
-- # (!\init|i2c_master|phy_state_next~2_combout\ & (((!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|phy_state_next~2_combout\,
	datad => \init|i2c_master|Selector20~0_combout\,
	combout => \init|i2c_master|phy_state_reg~28_combout\);

-- Location: LCCOMB_X45_Y24_N4
\init|i2c_master|phy_state_reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~29_combout\ = (!\init|i2c_master|phy_state_reg~28_combout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|phy_state_reg~28_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~29_combout\);

-- Location: LCFF_X45_Y24_N5
\init|i2c_master|phy_state_reg.PHY_STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\);

-- Location: LCCOMB_X44_Y25_N26
\init|i2c_master|Selector38~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~6_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & !\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	combout => \init|i2c_master|Selector38~6_combout\);

-- Location: LCCOMB_X43_Y24_N0
\init|i2c_master|cmd_ready_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|cmd_ready_reg~0_combout\ = (!\init|i2c_master|bit_count_reg[3]~0_combout\ & (!\init|i2c_master|phy_start_bit~0_combout\ & (\r|Equal0~4_combout\ & !\init|i2c_master|Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~0_combout\,
	datab => \init|i2c_master|phy_start_bit~0_combout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|cmd_ready_reg~0_combout\);

-- Location: LCFF_X43_Y24_N1
\init|i2c_master|cmd_ready_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|cmd_ready_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|cmd_ready_reg~regout\);

-- Location: LCCOMB_X43_Y25_N8
\init|i2c_init|cmd_stop_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cmd_stop_next~2_combout\ = (!\init|i2c_init|cmd_stop_reg~10_combout\ & (((!\init|i2c_init|state_reg.STATE_RUN~regout\ & !\init|i2c_init|state_reg.STATE_TABLE_3~regout\)) # (!\init|i2c_init|init_data_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(8),
	datab => \init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \init|i2c_init|cmd_stop_reg~10_combout\,
	combout => \init|i2c_init|cmd_stop_next~2_combout\);

-- Location: LCFF_X43_Y25_N9
\init|i2c_init|cmd_stop_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cmd_stop_next~2_combout\,
	ena => \init|i2c_init|cmd_write_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_stop_reg~regout\);

-- Location: LCCOMB_X43_Y25_N18
\init|i2c_master|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector12~0_combout\ = ((!\init|i2c_init|cmd_write_reg~regout\ & (!\init|i2c_init|cmd_stop_reg~regout\ & \init|i2c_init|cmd_valid_reg~regout\))) # (!\init|i2c_master|cmd_ready_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_write_reg~regout\,
	datab => \init|i2c_master|cmd_ready_reg~regout\,
	datac => \init|i2c_init|cmd_stop_reg~regout\,
	datad => \init|i2c_init|cmd_valid_reg~regout\,
	combout => \init|i2c_master|Selector12~0_combout\);

-- Location: LCCOMB_X41_Y24_N8
\init|i2c_master|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector24~0_combout\ = (!\init|i2c_master|bit_count_reg[3]~1_combout\ & !\init|i2c_master|bit_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~1_combout\,
	datac => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Selector24~0_combout\);

-- Location: LCCOMB_X43_Y24_N4
\init|i2c_master|bit_count_reg[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~3_combout\ = (\init|i2c_master|state_reg.STATE_WRITE_3~regout\) # ((\init|i2c_master|bus_active_reg~regout\ & ((\init|i2c_master|state_reg.STATE_START_WAIT~regout\) # (!\init|i2c_master|state_reg.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datab => \init|i2c_master|bus_active_reg~regout\,
	datac => \init|i2c_master|state_reg.STATE_IDLE~regout\,
	datad => \init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	combout => \init|i2c_master|bit_count_reg[3]~3_combout\);

-- Location: LCCOMB_X43_Y24_N6
\init|i2c_master|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector16~0_combout\ = ((\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\init|i2c_master|phy_start_bit~0_combout\ & \init|i2c_master|always0~3_combout\))) # (!\init|i2c_master|bit_count_reg[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \init|i2c_master|bit_count_reg[3]~2_combout\,
	datac => \init|i2c_master|phy_start_bit~0_combout\,
	datad => \init|i2c_master|always0~3_combout\,
	combout => \init|i2c_master|Selector16~0_combout\);

-- Location: LCCOMB_X44_Y25_N14
\init|i2c_master|state_reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~26_combout\ = (\r|Equal0~4_combout\ & \init|i2c_master|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~4_combout\,
	datad => \init|i2c_master|Selector16~0_combout\,
	combout => \init|i2c_master|state_reg~26_combout\);

-- Location: LCCOMB_X44_Y25_N10
\init|i2c_master|state_reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~27_combout\ = ((\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # (!\r|Equal0~4_combout\)) # (!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|state_reg~27_combout\);

-- Location: LCFF_X44_Y25_N15
\init|i2c_master|state_reg.STATE_WRITE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|state_reg~26_combout\,
	ena => \init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_WRITE_1~regout\);

-- Location: LCCOMB_X41_Y24_N18
\init|i2c_master|Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector37~2_combout\ = (!\init|i2c_master|bit_count_reg\(3) & (!\init|i2c_master|bit_count_reg\(1) & !\init|i2c_master|bit_count_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(3),
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|bit_count_reg\(2),
	combout => \init|i2c_master|Selector37~2_combout\);

-- Location: LCCOMB_X44_Y25_N4
\init|i2c_master|state_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_next~0_combout\ = (\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ & (\init|i2c_master|Selector37~2_combout\ & \init|i2c_master|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datab => \init|i2c_master|Selector37~2_combout\,
	datac => \init|i2c_master|Selector37~0_combout\,
	combout => \init|i2c_master|state_next~0_combout\);

-- Location: LCFF_X44_Y25_N5
\init|i2c_master|state_reg.STATE_ADDRESS_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|state_next~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_ADDRESS_2~regout\);

-- Location: LCCOMB_X44_Y25_N28
\init|i2c_master|data_in_ready_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|data_in_ready_reg~2_combout\ = (\r|Equal0~4_combout\ & (\init|i2c_master|Selector16~0_combout\ & ((\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # (!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~4_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \init|i2c_master|Selector16~0_combout\,
	combout => \init|i2c_master|data_in_ready_reg~2_combout\);

-- Location: LCFF_X44_Y25_N29
\init|i2c_master|data_in_ready_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|data_in_ready_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_in_ready_reg~regout\);

-- Location: LCCOMB_X44_Y25_N22
\init|i2c_master|bit_count_reg[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~2_combout\ = (!\init|i2c_master|state_reg.STATE_ADDRESS_2~regout\ & (((\init|i2c_init|data_out_valid_reg~regout\ & \init|i2c_master|data_in_ready_reg~regout\)) # (!\init|i2c_master|state_reg.STATE_WRITE_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~regout\,
	datab => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datac => \init|i2c_master|state_reg.STATE_ADDRESS_2~regout\,
	datad => \init|i2c_master|data_in_ready_reg~regout\,
	combout => \init|i2c_master|bit_count_reg[3]~2_combout\);

-- Location: LCCOMB_X43_Y24_N28
\init|i2c_master|bit_count_reg[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|bit_count_reg[3]~5_combout\ = (\init|i2c_master|bit_count_reg[3]~4_combout\ & (!\init|i2c_master|bit_count_reg[3]~3_combout\ & (\init|i2c_master|bit_count_reg[3]~2_combout\ & !\init|i2c_master|Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~4_combout\,
	datab => \init|i2c_master|bit_count_reg[3]~3_combout\,
	datac => \init|i2c_master|bit_count_reg[3]~2_combout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|bit_count_reg[3]~5_combout\);

-- Location: LCFF_X41_Y24_N9
\init|i2c_master|bit_count_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector24~0_combout\,
	ena => \init|i2c_master|bit_count_reg[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|bit_count_reg\(0));

-- Location: LCCOMB_X41_Y24_N14
\init|i2c_master|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector23~2_combout\ = (!\init|i2c_master|bit_count_reg[3]~1_combout\ & (\init|i2c_master|bit_count_reg\(1) $ (!\init|i2c_master|bit_count_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~1_combout\,
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Selector23~2_combout\);

-- Location: LCFF_X41_Y24_N15
\init|i2c_master|bit_count_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector23~2_combout\,
	ena => \init|i2c_master|bit_count_reg[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|bit_count_reg\(1));

-- Location: LCCOMB_X41_Y24_N28
\init|i2c_master|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector22~2_combout\ = (!\init|i2c_master|bit_count_reg[3]~1_combout\ & (\init|i2c_master|bit_count_reg\(2) $ (((!\init|i2c_master|bit_count_reg\(1) & !\init|i2c_master|bit_count_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg[3]~1_combout\,
	datab => \init|i2c_master|bit_count_reg\(1),
	datac => \init|i2c_master|bit_count_reg\(2),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Selector22~2_combout\);

-- Location: LCFF_X41_Y24_N29
\init|i2c_master|bit_count_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector22~2_combout\,
	ena => \init|i2c_master|bit_count_reg[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|bit_count_reg\(2));

-- Location: LCCOMB_X41_Y24_N24
\init|i2c_master|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector37~0_combout\ = (!\init|i2c_master|bit_count_reg\(3) & (!\init|i2c_master|bit_count_reg\(2) & (!\init|i2c_master|bit_count_reg\(1) & !\init|i2c_master|bit_count_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(3),
	datab => \init|i2c_master|bit_count_reg\(2),
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Selector37~0_combout\);

-- Location: LCCOMB_X44_Y25_N6
\init|i2c_master|state_reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~25_combout\ = (\init|i2c_master|data_reg[6]~0_combout\) # ((\init|i2c_master|state_reg.STATE_WRITE_2~regout\ & ((\init|i2c_master|Selector38~6_combout\) # (!\init|i2c_master|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|data_reg[6]~0_combout\,
	datab => \init|i2c_master|Selector37~0_combout\,
	datac => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|state_reg~25_combout\);

-- Location: LCFF_X44_Y25_N7
\init|i2c_master|state_reg.STATE_WRITE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|state_reg~25_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_WRITE_2~regout\);

-- Location: LCCOMB_X44_Y25_N2
\init|i2c_master|Selector37~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector37~3_combout\ = (\init|i2c_master|Selector37~0_combout\ & \init|i2c_master|state_reg.STATE_WRITE_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|Selector37~0_combout\,
	datad => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \init|i2c_master|Selector37~3_combout\);

-- Location: LCFF_X44_Y25_N3
\init|i2c_master|state_reg.STATE_WRITE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector37~3_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_WRITE_3~regout\);

-- Location: LCCOMB_X44_Y25_N0
\init|i2c_master|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector12~1_combout\ = (\init|i2c_master|mode_stop_reg~regout\ & (\init|i2c_master|Selector12~0_combout\ & (\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\))) # (!\init|i2c_master|mode_stop_reg~regout\ & 
-- ((\init|i2c_master|state_reg.STATE_WRITE_3~regout\) # ((\init|i2c_master|Selector12~0_combout\ & \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|mode_stop_reg~regout\,
	datab => \init|i2c_master|Selector12~0_combout\,
	datac => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datad => \init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	combout => \init|i2c_master|Selector12~1_combout\);

-- Location: LCFF_X44_Y25_N1
\init|i2c_master|state_reg.STATE_ACTIVE_WRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector12~1_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	ena => \init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\);

-- Location: LCCOMB_X43_Y25_N24
\init|i2c_master|state_reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_reg~23_combout\ = (\init|i2c_master|cmd_ready_reg~regout\ & (((!\init|i2c_init|cmd_write_reg~regout\ & \init|i2c_init|cmd_stop_reg~regout\)) # (!\init|i2c_init|cmd_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_write_reg~regout\,
	datab => \init|i2c_master|cmd_ready_reg~regout\,
	datac => \init|i2c_init|cmd_stop_reg~regout\,
	datad => \init|i2c_init|cmd_valid_reg~regout\,
	combout => \init|i2c_master|state_reg~23_combout\);

-- Location: LCFF_X43_Y25_N19
\init|i2c_master|mode_stop_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_stop_reg~regout\,
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|mode_stop_reg~regout\);

-- Location: LCCOMB_X43_Y25_N6
\init|i2c_master|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector26~0_combout\ = (\init|i2c_master|state_reg.STATE_WRITE_3~regout\ & ((\init|i2c_master|mode_stop_reg~regout\) # ((\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & \init|i2c_master|state_reg~23_combout\)))) # 
-- (!\init|i2c_master|state_reg.STATE_WRITE_3~regout\ & (\init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\init|i2c_master|state_reg~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	datab => \init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datac => \init|i2c_master|state_reg~23_combout\,
	datad => \init|i2c_master|mode_stop_reg~regout\,
	combout => \init|i2c_master|Selector26~0_combout\);

-- Location: LCCOMB_X44_Y25_N20
\init|i2c_master|state_next.STATE_ADDRESS_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\ = (\init|i2c_master|Selector38~6_combout\ & (((\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\)))) # (!\init|i2c_master|Selector38~6_combout\ & ((\init|i2c_master|Selector20~0_combout\) # 
-- ((!\init|i2c_master|Selector37~0_combout\ & \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Selector37~0_combout\,
	datab => \init|i2c_master|Selector20~0_combout\,
	datac => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\);

-- Location: LCFF_X44_Y25_N21
\init|i2c_master|state_reg.STATE_ADDRESS_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\);

-- Location: LCCOMB_X44_Y24_N26
\init|i2c_master|phy_state_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~3_combout\ = (!\init|i2c_master|state_reg.STATE_WRITE_2~regout\ & (!\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ & !\init|i2c_master|Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datac => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datad => \init|i2c_master|Selector20~0_combout\,
	combout => \init|i2c_master|phy_state_next~3_combout\);

-- Location: LCCOMB_X45_Y24_N26
\init|i2c_master|phy_state_reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~30_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (((!\init|i2c_master|Selector26~0_combout\ & \init|i2c_master|phy_state_next~3_combout\)) # (!\init|i2c_master|phy_state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \init|i2c_master|Selector26~0_combout\,
	datac => \init|i2c_master|phy_state_next~2_combout\,
	datad => \init|i2c_master|phy_state_next~3_combout\,
	combout => \init|i2c_master|phy_state_reg~30_combout\);

-- Location: LCCOMB_X45_Y24_N12
\init|i2c_master|phy_state_reg~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~38_combout\ = (\init|i2c_master|phy_state_reg~30_combout\) # ((!\init|i2c_master|delay_scl_reg~regout\ & (!\init|i2c_master|LessThan2~5_combout\ & !\init|i2c_master|delay_reg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_scl_reg~regout\,
	datab => \init|i2c_master|LessThan2~5_combout\,
	datac => \init|i2c_master|delay_reg[2]~4_combout\,
	datad => \init|i2c_master|phy_state_reg~30_combout\,
	combout => \init|i2c_master|phy_state_reg~38_combout\);

-- Location: LCFF_X45_Y24_N13
\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~38_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\);

-- Location: LCCOMB_X44_Y24_N20
\init|i2c_master|delay_reg[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~5_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (((\init|i2c_master|Selector26~0_combout\)))) # (!\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & 
-- (!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & ((\init|i2c_master|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \init|i2c_master|Selector26~0_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \init|i2c_master|Selector20~0_combout\,
	combout => \init|i2c_master|delay_reg[2]~5_combout\);

-- Location: LCCOMB_X44_Y24_N14
\init|i2c_master|delay_reg[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~6_combout\ = (!\init|i2c_master|delay_reg[2]~5_combout\ & (((\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & \init|i2c_master|phy_state_next~3_combout\)) # (!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datac => \init|i2c_master|delay_reg[2]~5_combout\,
	datad => \init|i2c_master|phy_state_next~3_combout\,
	combout => \init|i2c_master|delay_reg[2]~6_combout\);

-- Location: LCCOMB_X45_Y24_N18
\init|i2c_master|delay_reg[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~7_combout\ = (!\init|i2c_master|LessThan2~5_combout\ & ((\init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # ((\init|i2c_master|delay_reg[2]~6_combout\) # (!\init|i2c_master|delay_reg[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	datab => \init|i2c_master|LessThan2~5_combout\,
	datac => \init|i2c_master|delay_reg[2]~4_combout\,
	datad => \init|i2c_master|delay_reg[2]~6_combout\,
	combout => \init|i2c_master|delay_reg[2]~7_combout\);

-- Location: LCCOMB_X45_Y24_N6
\init|i2c_master|delay_reg[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~9_combout\ = (\r|Equal0~4_combout\ & ((\init|i2c_master|delay_scl_reg~regout\) # (\init|i2c_master|delay_reg[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_scl_reg~regout\,
	datab => \r|Equal0~4_combout\,
	datad => \init|i2c_master|delay_reg[2]~7_combout\,
	combout => \init|i2c_master|delay_reg[2]~9_combout\);

-- Location: LCCOMB_X45_Y24_N16
\init|i2c_master|delay_reg[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[0]~8_combout\ = (!\init|i2c_master|delay_scl_reg~regout\ & (\init|i2c_master|LessThan2~5_combout\ & (\r|Equal0~4_combout\ & !\init|i2c_master|delay_reg[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_scl_reg~regout\,
	datab => \init|i2c_master|LessThan2~5_combout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|delay_reg[2]~7_combout\,
	combout => \init|i2c_master|delay_reg[0]~8_combout\);

-- Location: LCCOMB_X46_Y24_N8
\init|i2c_master|delay_reg[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[8]~19_combout\ = (\init|i2c_master|Add2~16_combout\ & ((\init|i2c_master|delay_reg[0]~8_combout\) # ((\init|i2c_master|delay_reg[2]~9_combout\ & \init|i2c_master|delay_reg\(8))))) # (!\init|i2c_master|Add2~16_combout\ & 
-- (\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~16_combout\,
	datab => \init|i2c_master|delay_reg[2]~9_combout\,
	datac => \init|i2c_master|delay_reg\(8),
	datad => \init|i2c_master|delay_reg[0]~8_combout\,
	combout => \init|i2c_master|delay_reg[8]~19_combout\);

-- Location: LCFF_X46_Y24_N9
\init|i2c_master|delay_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(8));

-- Location: LCCOMB_X44_Y25_N30
\init|i2c_master|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector27~0_combout\ = (!\init|i2c_master|Selector37~0_combout\ & ((\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\) # (\init|i2c_master|state_reg.STATE_WRITE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datac => \init|i2c_master|Selector37~0_combout\,
	datad => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \init|i2c_master|Selector27~0_combout\);

-- Location: LCCOMB_X44_Y24_N16
\init|i2c_master|phy_state_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~6_combout\ = (\init|i2c_master|phy_state_next~5_combout\ & ((\init|i2c_master|Selector27~0_combout\) # ((!\init|i2c_master|phy_state_next~2_combout\ & \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))) # 
-- (!\init|i2c_master|phy_state_next~5_combout\ & (!\init|i2c_master|phy_state_next~2_combout\ & (\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_next~5_combout\,
	datab => \init|i2c_master|phy_state_next~2_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datad => \init|i2c_master|Selector27~0_combout\,
	combout => \init|i2c_master|phy_state_next~6_combout\);

-- Location: LCFF_X44_Y24_N17
\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_next~6_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\);

-- Location: LCCOMB_X45_Y24_N24
\init|i2c_master|delay_reg[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[5]~29_combout\ = (\r|Equal0~4_combout\ & ((\init|i2c_master|LessThan2~5_combout\ & (\init|i2c_master|Add2~10_combout\)) # (!\init|i2c_master|LessThan2~5_combout\ & 
-- ((\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~10_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|delay_reg[5]~29_combout\);

-- Location: LCCOMB_X46_Y24_N4
\init|i2c_master|delay_reg[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[5]~22_combout\ = (\init|i2c_master|delay_reg[2]~9_combout\ & ((\init|i2c_master|delay_reg\(5)))) # (!\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg[5]~29_combout\,
	datac => \init|i2c_master|delay_reg\(5),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[5]~22_combout\);

-- Location: LCFF_X46_Y24_N5
\init|i2c_master|delay_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(5));

-- Location: LCCOMB_X46_Y24_N2
\init|i2c_master|delay_reg[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[6]~21_combout\ = (\init|i2c_master|Add2~12_combout\ & ((\init|i2c_master|delay_reg[0]~8_combout\) # ((\init|i2c_master|delay_reg[2]~9_combout\ & \init|i2c_master|delay_reg\(6))))) # (!\init|i2c_master|Add2~12_combout\ & 
-- (\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~12_combout\,
	datab => \init|i2c_master|delay_reg[2]~9_combout\,
	datac => \init|i2c_master|delay_reg\(6),
	datad => \init|i2c_master|delay_reg[0]~8_combout\,
	combout => \init|i2c_master|delay_reg[6]~21_combout\);

-- Location: LCFF_X46_Y24_N3
\init|i2c_master|delay_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(6));

-- Location: LCCOMB_X46_Y24_N10
\init|i2c_master|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~3_combout\ = (\init|i2c_master|delay_reg\(7)) # ((\init|i2c_master|delay_reg\(8)) # ((\init|i2c_master|delay_reg\(5)) # (\init|i2c_master|delay_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(7),
	datab => \init|i2c_master|delay_reg\(8),
	datac => \init|i2c_master|delay_reg\(5),
	datad => \init|i2c_master|delay_reg\(6),
	combout => \init|i2c_master|LessThan2~3_combout\);

-- Location: LCCOMB_X45_Y24_N28
\init|i2c_master|delay_reg[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[4]~23_combout\ = (\r|Equal0~4_combout\ & ((\init|i2c_master|LessThan2~5_combout\ & (\init|i2c_master|Add2~8_combout\)) # (!\init|i2c_master|LessThan2~5_combout\ & 
-- ((!\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~8_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|delay_reg[4]~23_combout\);

-- Location: LCCOMB_X46_Y24_N0
\init|i2c_master|delay_reg[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[4]~24_combout\ = (\init|i2c_master|delay_reg[2]~9_combout\ & ((\init|i2c_master|delay_reg\(4)))) # (!\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg[4]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg[4]~23_combout\,
	datac => \init|i2c_master|delay_reg\(4),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[4]~24_combout\);

-- Location: LCFF_X46_Y24_N1
\init|i2c_master|delay_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(4));

-- Location: LCCOMB_X46_Y24_N14
\init|i2c_master|delay_reg[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[2]~27_combout\ = (\init|i2c_master|delay_reg[2]~9_combout\ & ((\init|i2c_master|delay_reg\(2)))) # (!\init|i2c_master|delay_reg[2]~9_combout\ & (\init|i2c_master|delay_reg[2]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[2]~26_combout\,
	datab => \init|i2c_master|delay_reg[2]~9_combout\,
	datac => \init|i2c_master|delay_reg\(2),
	combout => \init|i2c_master|delay_reg[2]~27_combout\);

-- Location: LCFF_X46_Y24_N15
\init|i2c_master|delay_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(2));

-- Location: LCCOMB_X46_Y23_N2
\init|i2c_master|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~18_combout\ = (\init|i2c_master|delay_reg\(9) & (\init|i2c_master|Add2~17\ & VCC)) # (!\init|i2c_master|delay_reg\(9) & (!\init|i2c_master|Add2~17\))
-- \init|i2c_master|Add2~19\ = CARRY((!\init|i2c_master|delay_reg\(9) & !\init|i2c_master|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(9),
	datad => VCC,
	cin => \init|i2c_master|Add2~17\,
	combout => \init|i2c_master|Add2~18_combout\,
	cout => \init|i2c_master|Add2~19\);

-- Location: LCCOMB_X45_Y23_N14
\init|i2c_master|delay_reg[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[9]~18_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~18_combout\) # ((\init|i2c_master|delay_reg\(9) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(9) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~18_combout\,
	datac => \init|i2c_master|delay_reg\(9),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[9]~18_combout\);

-- Location: LCFF_X45_Y23_N15
\init|i2c_master|delay_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(9));

-- Location: LCCOMB_X46_Y23_N4
\init|i2c_master|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~20_combout\ = (\init|i2c_master|delay_reg\(10) & ((GND) # (!\init|i2c_master|Add2~19\))) # (!\init|i2c_master|delay_reg\(10) & (\init|i2c_master|Add2~19\ $ (GND)))
-- \init|i2c_master|Add2~21\ = CARRY((\init|i2c_master|delay_reg\(10)) # (!\init|i2c_master|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(10),
	datad => VCC,
	cin => \init|i2c_master|Add2~19\,
	combout => \init|i2c_master|Add2~20_combout\,
	cout => \init|i2c_master|Add2~21\);

-- Location: LCCOMB_X45_Y23_N28
\init|i2c_master|delay_reg[10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[10]~17_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~20_combout\) # ((\init|i2c_master|delay_reg\(10) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(10) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~20_combout\,
	datac => \init|i2c_master|delay_reg\(10),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[10]~17_combout\);

-- Location: LCFF_X45_Y23_N29
\init|i2c_master|delay_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(10));

-- Location: LCCOMB_X45_Y23_N4
\init|i2c_master|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~1_combout\ = (\init|i2c_master|delay_reg\(9)) # (\init|i2c_master|delay_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|delay_reg\(9),
	datad => \init|i2c_master|delay_reg\(10),
	combout => \init|i2c_master|LessThan2~1_combout\);

-- Location: LCCOMB_X46_Y23_N8
\init|i2c_master|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~24_combout\ = (\init|i2c_master|delay_reg\(12) & ((GND) # (!\init|i2c_master|Add2~23\))) # (!\init|i2c_master|delay_reg\(12) & (\init|i2c_master|Add2~23\ $ (GND)))
-- \init|i2c_master|Add2~25\ = CARRY((\init|i2c_master|delay_reg\(12)) # (!\init|i2c_master|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(12),
	datad => VCC,
	cin => \init|i2c_master|Add2~23\,
	combout => \init|i2c_master|Add2~24_combout\,
	cout => \init|i2c_master|Add2~25\);

-- Location: LCCOMB_X46_Y23_N24
\init|i2c_master|delay_reg[12]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[12]~15_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~24_combout\) # ((\init|i2c_master|delay_reg\(12) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(12) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~24_combout\,
	datac => \init|i2c_master|delay_reg\(12),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[12]~15_combout\);

-- Location: LCFF_X46_Y23_N25
\init|i2c_master|delay_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(12));

-- Location: LCCOMB_X46_Y23_N10
\init|i2c_master|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~26_combout\ = (\init|i2c_master|delay_reg\(13) & (\init|i2c_master|Add2~25\ & VCC)) # (!\init|i2c_master|delay_reg\(13) & (!\init|i2c_master|Add2~25\))
-- \init|i2c_master|Add2~27\ = CARRY((!\init|i2c_master|delay_reg\(13) & !\init|i2c_master|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(13),
	datad => VCC,
	cin => \init|i2c_master|Add2~25\,
	combout => \init|i2c_master|Add2~26_combout\,
	cout => \init|i2c_master|Add2~27\);

-- Location: LCCOMB_X46_Y23_N28
\init|i2c_master|delay_reg[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[13]~14_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~26_combout\) # ((\init|i2c_master|delay_reg\(13) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(13) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~26_combout\,
	datac => \init|i2c_master|delay_reg\(13),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[13]~14_combout\);

-- Location: LCFF_X46_Y23_N29
\init|i2c_master|delay_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(13));

-- Location: LCCOMB_X46_Y23_N12
\init|i2c_master|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~28_combout\ = (\init|i2c_master|delay_reg\(14) & ((GND) # (!\init|i2c_master|Add2~27\))) # (!\init|i2c_master|delay_reg\(14) & (\init|i2c_master|Add2~27\ $ (GND)))
-- \init|i2c_master|Add2~29\ = CARRY((\init|i2c_master|delay_reg\(14)) # (!\init|i2c_master|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|delay_reg\(14),
	datad => VCC,
	cin => \init|i2c_master|Add2~27\,
	combout => \init|i2c_master|Add2~28_combout\,
	cout => \init|i2c_master|Add2~29\);

-- Location: LCCOMB_X46_Y23_N18
\init|i2c_master|delay_reg[14]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[14]~13_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~28_combout\) # ((\init|i2c_master|delay_reg\(14) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(14) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~28_combout\,
	datac => \init|i2c_master|delay_reg\(14),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[14]~13_combout\);

-- Location: LCFF_X46_Y23_N19
\init|i2c_master|delay_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[14]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(14));

-- Location: LCCOMB_X46_Y23_N16
\init|i2c_master|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Add2~32_combout\ = \init|i2c_master|Add2~31\ $ (\init|i2c_master|delay_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_master|delay_reg\(16),
	cin => \init|i2c_master|Add2~31\,
	combout => \init|i2c_master|Add2~32_combout\);

-- Location: LCCOMB_X46_Y23_N22
\init|i2c_master|delay_reg[16]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[16]~11_combout\ = (\init|i2c_master|delay_reg[0]~8_combout\ & ((\init|i2c_master|Add2~32_combout\) # ((\init|i2c_master|delay_reg\(16) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|delay_reg[0]~8_combout\ & 
-- (((\init|i2c_master|delay_reg\(16) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg[0]~8_combout\,
	datab => \init|i2c_master|Add2~32_combout\,
	datac => \init|i2c_master|delay_reg\(16),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[16]~11_combout\);

-- Location: LCFF_X46_Y23_N23
\init|i2c_master|delay_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(16));

-- Location: LCCOMB_X46_Y23_N26
\init|i2c_master|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~0_combout\ = (\init|i2c_master|delay_reg\(15)) # ((\init|i2c_master|delay_reg\(16)) # ((\init|i2c_master|delay_reg\(14)) # (\init|i2c_master|delay_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(15),
	datab => \init|i2c_master|delay_reg\(16),
	datac => \init|i2c_master|delay_reg\(14),
	datad => \init|i2c_master|delay_reg\(13),
	combout => \init|i2c_master|LessThan2~0_combout\);

-- Location: LCCOMB_X46_Y23_N30
\init|i2c_master|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~2_combout\ = (\init|i2c_master|delay_reg\(11)) # ((\init|i2c_master|LessThan2~1_combout\) # ((\init|i2c_master|delay_reg\(12)) # (\init|i2c_master|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(11),
	datab => \init|i2c_master|LessThan2~1_combout\,
	datac => \init|i2c_master|delay_reg\(12),
	datad => \init|i2c_master|LessThan2~0_combout\,
	combout => \init|i2c_master|LessThan2~2_combout\);

-- Location: LCCOMB_X46_Y24_N12
\init|i2c_master|delay_reg[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_reg[1]~28_combout\ = (\init|i2c_master|Add2~2_combout\ & ((\init|i2c_master|delay_reg[0]~8_combout\) # ((\init|i2c_master|delay_reg\(1) & \init|i2c_master|delay_reg[2]~9_combout\)))) # (!\init|i2c_master|Add2~2_combout\ & 
-- (((\init|i2c_master|delay_reg\(1) & \init|i2c_master|delay_reg[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add2~2_combout\,
	datab => \init|i2c_master|delay_reg[0]~8_combout\,
	datac => \init|i2c_master|delay_reg\(1),
	datad => \init|i2c_master|delay_reg[2]~9_combout\,
	combout => \init|i2c_master|delay_reg[1]~28_combout\);

-- Location: LCFF_X46_Y24_N13
\init|i2c_master|delay_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_reg\(1));

-- Location: LCCOMB_X46_Y24_N6
\init|i2c_master|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~4_combout\ = (\init|i2c_master|delay_reg\(3)) # ((\init|i2c_master|delay_reg\(4)) # ((\init|i2c_master|delay_reg\(2)) # (\init|i2c_master|delay_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(3),
	datab => \init|i2c_master|delay_reg\(4),
	datac => \init|i2c_master|delay_reg\(2),
	datad => \init|i2c_master|delay_reg\(1),
	combout => \init|i2c_master|LessThan2~4_combout\);

-- Location: LCCOMB_X45_Y24_N30
\init|i2c_master|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|LessThan2~5_combout\ = (\init|i2c_master|delay_reg\(0)) # ((\init|i2c_master|LessThan2~3_combout\) # ((\init|i2c_master|LessThan2~2_combout\) # (\init|i2c_master|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_reg\(0),
	datab => \init|i2c_master|LessThan2~3_combout\,
	datac => \init|i2c_master|LessThan2~2_combout\,
	datad => \init|i2c_master|LessThan2~4_combout\,
	combout => \init|i2c_master|LessThan2~5_combout\);

-- Location: LCCOMB_X44_Y24_N2
\init|i2c_master|phy_state_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~9_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (\init|i2c_master|phy_state_next~3_combout\ & (\init|i2c_master|Selector26~0_combout\ & \init|i2c_master|phy_state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \init|i2c_master|phy_state_next~3_combout\,
	datac => \init|i2c_master|Selector26~0_combout\,
	datad => \init|i2c_master|phy_state_next~2_combout\,
	combout => \init|i2c_master|phy_state_next~9_combout\);

-- Location: LCCOMB_X44_Y24_N0
\init|i2c_master|phy_state_next~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~10_combout\ = (\init|i2c_master|phy_state_next~9_combout\) # ((\init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & ((\init|i2c_master|delay_scl_reg~regout\) # (\init|i2c_master|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_scl_reg~regout\,
	datab => \init|i2c_master|LessThan2~5_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datad => \init|i2c_master|phy_state_next~9_combout\,
	combout => \init|i2c_master|phy_state_next~10_combout\);

-- Location: LCFF_X44_Y24_N1
\init|i2c_master|phy_state_reg.PHY_STATE_STOP_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_next~10_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\);

-- Location: LCCOMB_X44_Y24_N22
\init|i2c_master|scl_o_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_o_reg~0_combout\ = (!\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\ & (!\init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & (!\init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\ & 
-- !\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	combout => \init|i2c_master|scl_o_reg~0_combout\);

-- Location: LCCOMB_X44_Y24_N8
\init|i2c_master|delay_scl_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|delay_scl_next~1_combout\ = (\init|i2c_master|delay_scl_next~0_combout\) # ((!\init|i2c_master|scl_o_reg~0_combout\ & (!\init|i2c_master|delay_scl_reg~regout\ & !\init|i2c_master|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|delay_scl_next~0_combout\,
	datab => \init|i2c_master|scl_o_reg~0_combout\,
	datac => \init|i2c_master|delay_scl_reg~regout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|delay_scl_next~1_combout\);

-- Location: LCFF_X44_Y24_N9
\init|i2c_master|delay_scl_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|delay_scl_next~1_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|delay_scl_reg~regout\);

-- Location: LCCOMB_X44_Y24_N30
\init|i2c_master|phy_state_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~2_combout\ = (!\init|i2c_master|delay_scl_reg~regout\ & !\init|i2c_master|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|delay_scl_reg~regout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|phy_state_next~2_combout\);

-- Location: LCCOMB_X44_Y24_N12
\init|i2c_master|phy_state_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~5_combout\ = (!\init|i2c_master|Selector20~0_combout\ & (!\init|i2c_master|delay_scl_reg~regout\ & (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & !\init|i2c_master|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Selector20~0_combout\,
	datab => \init|i2c_master|delay_scl_reg~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \init|i2c_master|LessThan2~5_combout\,
	combout => \init|i2c_master|phy_state_next~5_combout\);

-- Location: LCCOMB_X44_Y24_N18
\init|i2c_master|phy_state_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~8_combout\ = (\init|i2c_master|phy_state_next~7_combout\ & ((\init|i2c_master|phy_state_next~5_combout\) # ((!\init|i2c_master|phy_state_next~2_combout\ & \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)))) # 
-- (!\init|i2c_master|phy_state_next~7_combout\ & (!\init|i2c_master|phy_state_next~2_combout\ & (\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_next~7_combout\,
	datab => \init|i2c_master|phy_state_next~2_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	datad => \init|i2c_master|phy_state_next~5_combout\,
	combout => \init|i2c_master|phy_state_next~8_combout\);

-- Location: LCFF_X44_Y24_N19
\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_next~8_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\);

-- Location: LCCOMB_X44_Y24_N24
\init|i2c_master|phy_state_reg~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~33_combout\ = (\r|Equal0~4_combout\ & \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	combout => \init|i2c_master|phy_state_reg~33_combout\);

-- Location: LCFF_X44_Y24_N25
\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~33_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\);

-- Location: LCCOMB_X44_Y24_N6
\init|i2c_master|phy_state_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_next~4_combout\ = (\init|i2c_master|phy_state_next~2_combout\ & (\init|i2c_master|Selector20~0_combout\ & (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\))) # (!\init|i2c_master|phy_state_next~2_combout\ & 
-- (((\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Selector20~0_combout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	datad => \init|i2c_master|phy_state_next~2_combout\,
	combout => \init|i2c_master|phy_state_next~4_combout\);

-- Location: LCFF_X44_Y24_N7
\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_next~4_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\);

-- Location: LCCOMB_X44_Y24_N28
\init|i2c_master|phy_state_reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~31_combout\ = (\r|Equal0~4_combout\ & \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	combout => \init|i2c_master|phy_state_reg~31_combout\);

-- Location: LCFF_X44_Y24_N29
\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~31_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\);

-- Location: LCCOMB_X45_Y25_N30
\init|i2c_master|phy_state_reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~26_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~26_combout\);

-- Location: LCFF_X45_Y25_N31
\init|i2c_master|phy_state_reg.PHY_STATE_STOP_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~26_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\);

-- Location: LCCOMB_X45_Y25_N26
\init|i2c_master|scl_o_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_o_reg~2_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # ((\init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\) # ((\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\) # 
-- (\init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	combout => \init|i2c_master|scl_o_reg~2_combout\);

-- Location: LCCOMB_X45_Y25_N16
\init|i2c_master|phy_state_reg~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|phy_state_reg~32_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\ & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_master|phy_state_reg~32_combout\);

-- Location: LCFF_X45_Y25_N17
\init|i2c_master|phy_state_reg.PHY_STATE_STOP_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|phy_state_reg~32_combout\,
	ena => \init|i2c_master|phy_state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\);

-- Location: LCCOMB_X46_Y25_N30
\init|i2c_master|scl_o_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_o_reg~3_combout\ = (\init|i2c_master|scl_o_reg~2_combout\) # ((\init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # (!\init|i2c_master|delay_reg[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_master|scl_o_reg~2_combout\,
	datac => \init|i2c_master|delay_reg[2]~4_combout\,
	datad => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	combout => \init|i2c_master|scl_o_reg~3_combout\);

-- Location: LCCOMB_X45_Y25_N10
\init|i2c_master|scl_o_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_o_reg~1_combout\ = ((\init|i2c_master|phy_state_next~2_combout\ & ((!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\) # (!\init|i2c_master|scl_o_reg~0_combout\)))) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~4_combout\,
	datab => \init|i2c_master|scl_o_reg~0_combout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datad => \init|i2c_master|phy_state_next~2_combout\,
	combout => \init|i2c_master|scl_o_reg~1_combout\);

-- Location: LCCOMB_X45_Y25_N20
\init|i2c_master|scl_o_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|scl_o_reg~4_combout\ = (!\init|i2c_master|scl_o_reg~1_combout\ & ((\init|i2c_master|scl_o_reg~regout\) # ((\init|i2c_master|phy_state_next~2_combout\ & !\init|i2c_master|scl_o_reg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_next~2_combout\,
	datab => \init|i2c_master|scl_o_reg~3_combout\,
	datac => \init|i2c_master|scl_o_reg~regout\,
	datad => \init|i2c_master|scl_o_reg~1_combout\,
	combout => \init|i2c_master|scl_o_reg~4_combout\);

-- Location: LCFF_X45_Y25_N21
\init|i2c_master|scl_o_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|scl_o_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|scl_o_reg~regout\);

-- Location: LCCOMB_X45_Y25_N24
\init|i2c_master|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~0_combout\ = (!\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (!\init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\ & (\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & 
-- !\init|i2c_master|sda_o_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datac => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datad => \init|i2c_master|sda_o_reg~regout\,
	combout => \init|i2c_master|Selector38~0_combout\);

-- Location: LCCOMB_X44_Y25_N18
\init|i2c_master|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~1_combout\ = (\init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\) # ((\init|i2c_master|Selector38~0_combout\) # ((!\init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & !\init|i2c_master|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	datab => \init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \init|i2c_master|Selector20~0_combout\,
	datad => \init|i2c_master|Selector38~0_combout\,
	combout => \init|i2c_master|Selector38~1_combout\);

-- Location: LCCOMB_X42_Y24_N6
\init|i2c_master|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux0~2_combout\ = (!\init|i2c_master|bit_count_reg\(0) & ((\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|addr_reg\(4)))) # (!\init|i2c_master|bit_count_reg\(1) & (\init|i2c_master|addr_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(1),
	datab => \init|i2c_master|addr_reg\(6),
	datac => \init|i2c_master|addr_reg\(4),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Mux0~2_combout\);

-- Location: LCCOMB_X43_Y23_N0
\init|i2c_init|cur_address_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~2_combout\ = (\init|i2c_init|init_data_reg\(1) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(1),
	datac => \r|Equal0~4_combout\,
	combout => \init|i2c_init|cur_address_reg~2_combout\);

-- Location: LCCOMB_X42_Y26_N10
\init|i2c_init|cur_address_reg[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg[3]~8_combout\ = ((!\init|i2c_init|cmd_valid_reg~regout\ & (!\init|i2c_init|data_out_valid_reg~regout\ & \init|i2c_init|init_data.raddr_a[1]~14_combout\))) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|cmd_valid_reg~regout\,
	datab => \init|i2c_init|data_out_valid_reg~regout\,
	datac => \init|i2c_init|init_data.raddr_a[1]~14_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \init|i2c_init|cur_address_reg[3]~8_combout\);

-- Location: LCFF_X43_Y23_N1
\init|i2c_init|cur_address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~2_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(1));

-- Location: LCCOMB_X42_Y24_N30
\init|i2c_init|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector28~0_combout\ = (\init|i2c_init|Equal0~0_combout\ & (\init|i2c_init|init_data_reg\(1))) # (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|cur_address_reg\(1)))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|init_data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(1),
	datab => \init|i2c_init|cur_address_reg\(1),
	datac => \init|i2c_init|Equal0~0_combout\,
	datad => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \init|i2c_init|Selector28~0_combout\);

-- Location: LCFF_X42_Y24_N31
\init|i2c_init|cmd_address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|Selector28~0_combout\,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(1));

-- Location: LCFF_X42_Y24_N25
\init|i2c_master|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(1),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(1));

-- Location: LCCOMB_X43_Y23_N26
\init|i2c_init|cur_address_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|cur_address_reg~3_combout\ = (\r|Equal0~4_combout\ & \init|i2c_init|init_data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|Equal0~4_combout\,
	datad => \init|i2c_init|init_data_reg\(0),
	combout => \init|i2c_init|cur_address_reg~3_combout\);

-- Location: LCFF_X43_Y23_N27
\init|i2c_init|cur_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|cur_address_reg~3_combout\,
	ena => \init|i2c_init|cur_address_reg[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cur_address_reg\(0));

-- Location: LCCOMB_X43_Y23_N24
\init|i2c_init|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|Selector29~0_combout\ = (\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\init|i2c_init|Equal0~0_combout\ & (\init|i2c_init|init_data_reg\(0))) # (!\init|i2c_init|Equal0~0_combout\ & ((\init|i2c_init|cur_address_reg\(0)))))) # 
-- (!\init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\init|i2c_init|init_data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|init_data_reg\(0),
	datab => \init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \init|i2c_init|Equal0~0_combout\,
	datad => \init|i2c_init|cur_address_reg\(0),
	combout => \init|i2c_init|Selector29~0_combout\);

-- Location: LCFF_X42_Y24_N17
\init|i2c_init|cmd_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|Selector29~0_combout\,
	sload => VCC,
	ena => \init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|cmd_address_reg\(0));

-- Location: LCFF_X42_Y24_N29
\init|i2c_master|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(0),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(0));

-- Location: LCFF_X42_Y24_N21
\init|i2c_master|addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|cmd_address_reg\(3),
	sload => VCC,
	ena => \init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|addr_reg\(3));

-- Location: LCCOMB_X42_Y24_N20
\init|i2c_master|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux0~0_combout\ = (\init|i2c_master|bit_count_reg\(1) & (((\init|i2c_master|bit_count_reg\(0))))) # (!\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|bit_count_reg\(0) & ((\init|i2c_master|addr_reg\(3)))) # 
-- (!\init|i2c_master|bit_count_reg\(0) & (\init|i2c_master|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(1),
	datab => \init|i2c_master|addr_reg\(2),
	datac => \init|i2c_master|addr_reg\(3),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y24_N28
\init|i2c_master|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux0~1_combout\ = (\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|Mux0~0_combout\ & (\init|i2c_master|addr_reg\(1))) # (!\init|i2c_master|Mux0~0_combout\ & ((\init|i2c_master|addr_reg\(0)))))) # 
-- (!\init|i2c_master|bit_count_reg\(1) & (((\init|i2c_master|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(1),
	datab => \init|i2c_master|addr_reg\(1),
	datac => \init|i2c_master|addr_reg\(0),
	datad => \init|i2c_master|Mux0~0_combout\,
	combout => \init|i2c_master|Mux0~1_combout\);

-- Location: LCCOMB_X42_Y24_N22
\init|i2c_master|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux0~3_combout\ = (\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|bit_count_reg\(2) & (\init|i2c_master|Mux0~2_combout\)) # (!\init|i2c_master|bit_count_reg\(2) & ((\init|i2c_master|Mux0~1_combout\))))) # 
-- (!\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|bit_count_reg\(2) & ((\init|i2c_master|Mux0~1_combout\))) # (!\init|i2c_master|bit_count_reg\(2) & (\init|i2c_master|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(1),
	datab => \init|i2c_master|Mux0~2_combout\,
	datac => \init|i2c_master|Mux0~1_combout\,
	datad => \init|i2c_master|bit_count_reg\(2),
	combout => \init|i2c_master|Mux0~3_combout\);

-- Location: LCCOMB_X42_Y24_N0
\init|i2c_master|Selector38~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~3_combout\ = (\init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ & (!\init|i2c_master|Selector37~2_combout\ & \init|i2c_master|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datab => \init|i2c_master|Selector37~2_combout\,
	datad => \init|i2c_master|Mux0~3_combout\,
	combout => \init|i2c_master|Selector38~3_combout\);

-- Location: LCCOMB_X41_Y25_N28
\init|i2c_init|data_out_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_reg[4]~feeder_combout\ = \init|i2c_init|init_data_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|init_data_reg\(4),
	combout => \init|i2c_init|data_out_reg[4]~feeder_combout\);

-- Location: LCFF_X41_Y25_N29
\init|i2c_init|data_out_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_out_reg[4]~feeder_combout\,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(4));

-- Location: LCCOMB_X41_Y25_N8
\init|i2c_master|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector32~0_combout\ = (\init|i2c_init|data_out_reg\(4) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|data_out_reg\(4),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector32~0_combout\);

-- Location: LCCOMB_X44_Y25_N16
\init|i2c_master|data_reg[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|data_reg[6]~0_combout\ = (\init|i2c_init|data_out_valid_reg~regout\ & (\init|i2c_master|data_in_ready_reg~regout\ & (\init|i2c_master|state_reg.STATE_WRITE_1~regout\ & !\init|i2c_master|Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_init|data_out_valid_reg~regout\,
	datab => \init|i2c_master|data_in_ready_reg~regout\,
	datac => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \init|i2c_master|Selector38~6_combout\,
	combout => \init|i2c_master|data_reg[6]~0_combout\);

-- Location: LCFF_X41_Y25_N9
\init|i2c_master|data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector32~0_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(4));

-- Location: LCFF_X41_Y25_N17
\init|i2c_init|data_out_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_init|init_data_reg\(6),
	sload => VCC,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(6));

-- Location: LCCOMB_X41_Y25_N16
\init|i2c_master|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector30~0_combout\ = (\init|i2c_init|data_out_reg\(6) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|data_out_reg\(6),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector30~0_combout\);

-- Location: LCFF_X41_Y24_N1
\init|i2c_master|data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	sdata => \init|i2c_master|Selector30~0_combout\,
	sload => VCC,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(6));

-- Location: LCCOMB_X41_Y24_N0
\init|i2c_master|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux1~4_combout\ = (\init|i2c_master|bit_count_reg\(1) & (((\init|i2c_master|data_reg\(6) & \init|i2c_master|bit_count_reg\(0))))) # (!\init|i2c_master|bit_count_reg\(1) & (\init|i2c_master|data_reg\(7) & 
-- ((!\init|i2c_master|bit_count_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|data_reg\(7),
	datab => \init|i2c_master|bit_count_reg\(1),
	datac => \init|i2c_master|data_reg\(6),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Mux1~4_combout\);

-- Location: LCCOMB_X41_Y25_N26
\init|i2c_master|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux1~6_combout\ = (\init|i2c_master|Mux1~4_combout\) # ((\init|i2c_master|bit_count_reg\(0) & (\init|i2c_master|data_reg\(4) & !\init|i2c_master|bit_count_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|bit_count_reg\(0),
	datab => \init|i2c_master|data_reg\(4),
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|Mux1~4_combout\,
	combout => \init|i2c_master|Mux1~6_combout\);

-- Location: LCCOMB_X41_Y25_N18
\init|i2c_init|data_out_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_reg[2]~feeder_combout\ = \init|i2c_init|init_data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|init_data_reg\(2),
	combout => \init|i2c_init|data_out_reg[2]~feeder_combout\);

-- Location: LCFF_X41_Y25_N19
\init|i2c_init|data_out_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_out_reg[2]~feeder_combout\,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(2));

-- Location: LCCOMB_X41_Y25_N14
\init|i2c_master|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector34~0_combout\ = (\init|i2c_init|data_out_reg\(2) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init|i2c_init|data_out_reg\(2),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector34~0_combout\);

-- Location: LCFF_X41_Y25_N15
\init|i2c_master|data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector34~0_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(2));

-- Location: LCCOMB_X41_Y25_N24
\init|i2c_init|data_out_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_init|data_out_reg[3]~feeder_combout\ = \init|i2c_init|init_data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init|i2c_init|init_data_reg\(3),
	combout => \init|i2c_init|data_out_reg[3]~feeder_combout\);

-- Location: LCFF_X41_Y25_N25
\init|i2c_init|data_out_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_init|data_out_reg[3]~feeder_combout\,
	ena => \init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_init|data_out_reg\(3));

-- Location: LCCOMB_X41_Y25_N4
\init|i2c_master|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector33~0_combout\ = (\init|i2c_init|data_out_reg\(3) & \init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init|i2c_init|data_out_reg\(3),
	datad => \init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \init|i2c_master|Selector33~0_combout\);

-- Location: LCFF_X41_Y25_N5
\init|i2c_master|data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|Selector33~0_combout\,
	ena => \init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|data_reg\(3));

-- Location: LCCOMB_X41_Y25_N0
\init|i2c_master|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux1~2_combout\ = (\init|i2c_master|bit_count_reg\(1) & (((\init|i2c_master|bit_count_reg\(0))))) # (!\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|bit_count_reg\(0) & (\init|i2c_master|data_reg\(0))) # 
-- (!\init|i2c_master|bit_count_reg\(0) & ((\init|i2c_master|data_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|data_reg\(0),
	datab => \init|i2c_master|data_reg\(3),
	datac => \init|i2c_master|bit_count_reg\(1),
	datad => \init|i2c_master|bit_count_reg\(0),
	combout => \init|i2c_master|Mux1~2_combout\);

-- Location: LCCOMB_X41_Y25_N2
\init|i2c_master|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux1~3_combout\ = (\init|i2c_master|bit_count_reg\(1) & ((\init|i2c_master|Mux1~2_combout\ & ((\init|i2c_master|data_reg\(2)))) # (!\init|i2c_master|Mux1~2_combout\ & (\init|i2c_master|data_reg\(1))))) # 
-- (!\init|i2c_master|bit_count_reg\(1) & (((\init|i2c_master|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|data_reg\(1),
	datab => \init|i2c_master|bit_count_reg\(1),
	datac => \init|i2c_master|data_reg\(2),
	datad => \init|i2c_master|Mux1~2_combout\,
	combout => \init|i2c_master|Mux1~3_combout\);

-- Location: LCCOMB_X41_Y25_N22
\init|i2c_master|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Mux1~5_combout\ = (\init|i2c_master|Add1~0_combout\ & ((\init|i2c_master|bit_count_reg\(2) & (\init|i2c_master|Mux1~6_combout\)) # (!\init|i2c_master|bit_count_reg\(2) & ((\init|i2c_master|Mux1~3_combout\))))) # 
-- (!\init|i2c_master|Add1~0_combout\ & ((\init|i2c_master|bit_count_reg\(2) & ((\init|i2c_master|Mux1~3_combout\))) # (!\init|i2c_master|bit_count_reg\(2) & (\init|i2c_master|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Add1~0_combout\,
	datab => \init|i2c_master|Mux1~6_combout\,
	datac => \init|i2c_master|bit_count_reg\(2),
	datad => \init|i2c_master|Mux1~3_combout\,
	combout => \init|i2c_master|Mux1~5_combout\);

-- Location: LCCOMB_X45_Y25_N0
\init|i2c_master|Selector38~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~4_combout\ = (\init|i2c_master|Selector38~3_combout\) # ((\init|i2c_master|state_reg.STATE_WRITE_2~regout\ & (!\init|i2c_master|Selector37~0_combout\ & \init|i2c_master|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datab => \init|i2c_master|Selector37~0_combout\,
	datac => \init|i2c_master|Selector38~3_combout\,
	datad => \init|i2c_master|Mux1~5_combout\,
	combout => \init|i2c_master|Selector38~4_combout\);

-- Location: LCCOMB_X45_Y25_N14
\init|i2c_master|Selector38~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|Selector38~5_combout\ = (\init|i2c_master|Selector38~2_combout\) # ((\init|i2c_master|Selector20~0_combout\) # ((\init|i2c_master|Selector27~0_combout\ & \init|i2c_master|Selector38~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|Selector38~2_combout\,
	datab => \init|i2c_master|Selector20~0_combout\,
	datac => \init|i2c_master|Selector27~0_combout\,
	datad => \init|i2c_master|Selector38~4_combout\,
	combout => \init|i2c_master|Selector38~5_combout\);

-- Location: LCCOMB_X45_Y25_N28
\init|i2c_master|sda_o_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|sda_o_next~0_combout\ = (\init|i2c_master|phy_state_next~2_combout\ & ((\init|i2c_master|Selector38~1_combout\) # ((\init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & \init|i2c_master|Selector38~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \init|i2c_master|Selector38~1_combout\,
	datac => \init|i2c_master|Selector38~5_combout\,
	datad => \init|i2c_master|phy_state_next~2_combout\,
	combout => \init|i2c_master|sda_o_next~0_combout\);

-- Location: LCCOMB_X45_Y25_N18
\init|i2c_master|sda_o_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \init|i2c_master|sda_o_reg~0_combout\ = (\r|Equal0~4_combout\ & (!\init|i2c_master|sda_o_next~0_combout\ & ((\init|i2c_master|phy_state_next~2_combout\) # (\init|i2c_master|sda_o_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init|i2c_master|phy_state_next~2_combout\,
	datab => \r|Equal0~4_combout\,
	datac => \init|i2c_master|sda_o_reg~regout\,
	datad => \init|i2c_master|sda_o_next~0_combout\,
	combout => \init|i2c_master|sda_o_reg~0_combout\);

-- Location: LCFF_X45_Y25_N19
\init|i2c_master|sda_o_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \init|i2c_master|sda_o_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \init|i2c_master|sda_o_reg~regout\);

-- Location: LCCOMB_X36_Y23_N6
\i2s|bitcount[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[0]~8_combout\ = \i2s|bitcount\(0) $ (VCC)
-- \i2s|bitcount[0]~9\ = CARRY(\i2s|bitcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(0),
	datad => VCC,
	combout => \i2s|bitcount[0]~8_combout\,
	cout => \i2s|bitcount[0]~9\);

-- Location: LCCOMB_X36_Y23_N8
\i2s|bitcount[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[1]~10_combout\ = (\i2s|bitcount\(1) & (!\i2s|bitcount[0]~9\)) # (!\i2s|bitcount\(1) & ((\i2s|bitcount[0]~9\) # (GND)))
-- \i2s|bitcount[1]~11\ = CARRY((!\i2s|bitcount[0]~9\) # (!\i2s|bitcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(1),
	datad => VCC,
	cin => \i2s|bitcount[0]~9\,
	combout => \i2s|bitcount[1]~10_combout\,
	cout => \i2s|bitcount[1]~11\);

-- Location: LCCOMB_X38_Y24_N12
\r2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~0_combout\ = \r2|reset_count\(0) $ (VCC)
-- \r2|Add0~1\ = CARRY(\r2|reset_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(0),
	datad => VCC,
	combout => \r2|Add0~0_combout\,
	cout => \r2|Add0~1\);

-- Location: LCCOMB_X38_Y24_N14
\r2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~2_combout\ = (\r2|reset_count\(1) & (!\r2|Add0~1\)) # (!\r2|reset_count\(1) & ((\r2|Add0~1\) # (GND)))
-- \r2|Add0~3\ = CARRY((!\r2|Add0~1\) # (!\r2|reset_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(1),
	datad => VCC,
	cin => \r2|Add0~1\,
	combout => \r2|Add0~2_combout\,
	cout => \r2|Add0~3\);

-- Location: LCFF_X38_Y24_N15
\r2|reset_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(1));

-- Location: LCCOMB_X38_Y24_N18
\r2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~6_combout\ = (\r2|reset_count\(3) & (!\r2|Add0~5\)) # (!\r2|reset_count\(3) & ((\r2|Add0~5\) # (GND)))
-- \r2|Add0~7\ = CARRY((!\r2|Add0~5\) # (!\r2|reset_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(3),
	datad => VCC,
	cin => \r2|Add0~5\,
	combout => \r2|Add0~6_combout\,
	cout => \r2|Add0~7\);

-- Location: LCFF_X38_Y24_N19
\r2|reset_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(3));

-- Location: LCCOMB_X38_Y24_N20
\r2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~8_combout\ = (\r2|reset_count\(4) & (\r2|Add0~7\ $ (GND))) # (!\r2|reset_count\(4) & (!\r2|Add0~7\ & VCC))
-- \r2|Add0~9\ = CARRY((\r2|reset_count\(4) & !\r2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(4),
	datad => VCC,
	cin => \r2|Add0~7\,
	combout => \r2|Add0~8_combout\,
	cout => \r2|Add0~9\);

-- Location: LCFF_X38_Y24_N21
\r2|reset_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(4));

-- Location: LCCOMB_X38_Y24_N22
\r2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~10_combout\ = (\r2|reset_count\(5) & (!\r2|Add0~9\)) # (!\r2|reset_count\(5) & ((\r2|Add0~9\) # (GND)))
-- \r2|Add0~11\ = CARRY((!\r2|Add0~9\) # (!\r2|reset_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(5),
	datad => VCC,
	cin => \r2|Add0~9\,
	combout => \r2|Add0~10_combout\,
	cout => \r2|Add0~11\);

-- Location: LCFF_X38_Y24_N23
\r2|reset_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(5));

-- Location: LCCOMB_X38_Y24_N24
\r2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~12_combout\ = (\r2|reset_count\(6) & (\r2|Add0~11\ $ (GND))) # (!\r2|reset_count\(6) & (!\r2|Add0~11\ & VCC))
-- \r2|Add0~13\ = CARRY((\r2|reset_count\(6) & !\r2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(6),
	datad => VCC,
	cin => \r2|Add0~11\,
	combout => \r2|Add0~12_combout\,
	cout => \r2|Add0~13\);

-- Location: LCCOMB_X38_Y24_N26
\r2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~14_combout\ = (\r2|reset_count\(7) & (!\r2|Add0~13\)) # (!\r2|reset_count\(7) & ((\r2|Add0~13\) # (GND)))
-- \r2|Add0~15\ = CARRY((!\r2|Add0~13\) # (!\r2|reset_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(7),
	datad => VCC,
	cin => \r2|Add0~13\,
	combout => \r2|Add0~14_combout\,
	cout => \r2|Add0~15\);

-- Location: LCCOMB_X37_Y23_N20
\r2|reset_count[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|reset_count[7]~feeder_combout\ = \r2|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r2|Add0~14_combout\,
	combout => \r2|reset_count[7]~feeder_combout\);

-- Location: LCFF_X37_Y23_N21
\r2|reset_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|reset_count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(7));

-- Location: LCCOMB_X38_Y24_N28
\r2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~16_combout\ = (\r2|reset_count\(8) & (\r2|Add0~15\ $ (GND))) # (!\r2|reset_count\(8) & (!\r2|Add0~15\ & VCC))
-- \r2|Add0~17\ = CARRY((\r2|reset_count\(8) & !\r2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(8),
	datad => VCC,
	cin => \r2|Add0~15\,
	combout => \r2|Add0~16_combout\,
	cout => \r2|Add0~17\);

-- Location: LCCOMB_X37_Y23_N12
\r2|reset_count[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|reset_count[8]~feeder_combout\ = \r2|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r2|Add0~16_combout\,
	combout => \r2|reset_count[8]~feeder_combout\);

-- Location: LCFF_X37_Y23_N13
\r2|reset_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|reset_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(8));

-- Location: LCCOMB_X38_Y24_N30
\r2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~18_combout\ = (\r2|reset_count\(9) & (!\r2|Add0~17\)) # (!\r2|reset_count\(9) & ((\r2|Add0~17\) # (GND)))
-- \r2|Add0~19\ = CARRY((!\r2|Add0~17\) # (!\r2|reset_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(9),
	datad => VCC,
	cin => \r2|Add0~17\,
	combout => \r2|Add0~18_combout\,
	cout => \r2|Add0~19\);

-- Location: LCCOMB_X37_Y23_N22
\r2|reset_count[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|reset_count[9]~feeder_combout\ = \r2|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r2|Add0~18_combout\,
	combout => \r2|reset_count[9]~feeder_combout\);

-- Location: LCFF_X37_Y23_N23
\r2|reset_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|reset_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(9));

-- Location: LCCOMB_X38_Y23_N0
\r2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~20_combout\ = (\r2|reset_count\(10) & (\r2|Add0~19\ $ (GND))) # (!\r2|reset_count\(10) & (!\r2|Add0~19\ & VCC))
-- \r2|Add0~21\ = CARRY((\r2|reset_count\(10) & !\r2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(10),
	datad => VCC,
	cin => \r2|Add0~19\,
	combout => \r2|Add0~20_combout\,
	cout => \r2|Add0~21\);

-- Location: LCFF_X38_Y23_N1
\r2|reset_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(10));

-- Location: LCCOMB_X38_Y23_N2
\r2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~22_combout\ = (\r2|reset_count\(11) & (!\r2|Add0~21\)) # (!\r2|reset_count\(11) & ((\r2|Add0~21\) # (GND)))
-- \r2|Add0~23\ = CARRY((!\r2|Add0~21\) # (!\r2|reset_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(11),
	datad => VCC,
	cin => \r2|Add0~21\,
	combout => \r2|Add0~22_combout\,
	cout => \r2|Add0~23\);

-- Location: LCFF_X38_Y23_N3
\r2|reset_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(11));

-- Location: LCCOMB_X38_Y23_N4
\r2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~24_combout\ = (\r2|reset_count\(12) & (\r2|Add0~23\ $ (GND))) # (!\r2|reset_count\(12) & (!\r2|Add0~23\ & VCC))
-- \r2|Add0~25\ = CARRY((\r2|reset_count\(12) & !\r2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(12),
	datad => VCC,
	cin => \r2|Add0~23\,
	combout => \r2|Add0~24_combout\,
	cout => \r2|Add0~25\);

-- Location: LCFF_X38_Y23_N5
\r2|reset_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(12));

-- Location: LCCOMB_X38_Y23_N8
\r2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~28_combout\ = (\r2|reset_count\(14) & (\r2|Add0~27\ $ (GND))) # (!\r2|reset_count\(14) & (!\r2|Add0~27\ & VCC))
-- \r2|Add0~29\ = CARRY((\r2|reset_count\(14) & !\r2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(14),
	datad => VCC,
	cin => \r2|Add0~27\,
	combout => \r2|Add0~28_combout\,
	cout => \r2|Add0~29\);

-- Location: LCFF_X38_Y23_N9
\r2|reset_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(14));

-- Location: LCCOMB_X38_Y23_N10
\r2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~30_combout\ = (\r2|reset_count\(15) & (!\r2|Add0~29\)) # (!\r2|reset_count\(15) & ((\r2|Add0~29\) # (GND)))
-- \r2|Add0~31\ = CARRY((!\r2|Add0~29\) # (!\r2|reset_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(15),
	datad => VCC,
	cin => \r2|Add0~29\,
	combout => \r2|Add0~30_combout\,
	cout => \r2|Add0~31\);

-- Location: LCCOMB_X38_Y23_N12
\r2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~32_combout\ = (\r2|reset_count\(16) & (\r2|Add0~31\ $ (GND))) # (!\r2|reset_count\(16) & (!\r2|Add0~31\ & VCC))
-- \r2|Add0~33\ = CARRY((\r2|reset_count\(16) & !\r2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(16),
	datad => VCC,
	cin => \r2|Add0~31\,
	combout => \r2|Add0~32_combout\,
	cout => \r2|Add0~33\);

-- Location: LCCOMB_X38_Y23_N14
\r2|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Add0~34_combout\ = (\r2|reset_count\(17) & (!\r2|Add0~33\)) # (!\r2|reset_count\(17) & ((\r2|Add0~33\) # (GND)))
-- \r2|Add0~35\ = CARRY((!\r2|Add0~33\) # (!\r2|reset_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r2|reset_count\(17),
	datad => VCC,
	cin => \r2|Add0~33\,
	combout => \r2|Add0~34_combout\,
	cout => \r2|Add0~35\);

-- Location: LCFF_X38_Y23_N15
\r2|reset_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(17));

-- Location: LCFF_X38_Y23_N19
\r2|reset_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(19));

-- Location: LCFF_X38_Y23_N13
\r2|reset_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(16));

-- Location: LCCOMB_X38_Y23_N30
\r2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~5_combout\ = (\r2|reset_count\(18) & (\r2|reset_count\(19) & (\r2|reset_count\(17) & !\r2|reset_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(18),
	datab => \r2|reset_count\(19),
	datac => \r2|reset_count\(17),
	datad => \r2|reset_count\(16),
	combout => \r2|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y23_N22
\r2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~0_combout\ = (!\r2|reset_count\(13) & (!\r2|reset_count\(14) & (!\r2|reset_count\(12) & !\r2|reset_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(13),
	datab => \r2|reset_count\(14),
	datac => \r2|reset_count\(12),
	datad => \r2|reset_count\(11),
	combout => \r2|Equal0~0_combout\);

-- Location: LCFF_X38_Y24_N25
\r2|reset_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(6));

-- Location: LCCOMB_X38_Y24_N4
\r2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~2_combout\ = (!\r2|reset_count\(4) & (!\r2|reset_count\(3) & (!\r2|reset_count\(6) & !\r2|reset_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(4),
	datab => \r2|reset_count\(3),
	datac => \r2|reset_count\(6),
	datad => \r2|reset_count\(5),
	combout => \r2|Equal0~2_combout\);

-- Location: LCFF_X38_Y23_N11
\r2|reset_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(15));

-- Location: LCCOMB_X38_Y23_N28
\r2|reset_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|reset_count~0_combout\ = (\r2|Add0~0_combout\ & (((!\r2|Equal0~4_combout\) # (!\r2|Equal0~5_combout\)) # (!\r2|reset_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datac => \r2|Equal0~4_combout\,
	datad => \r2|Add0~0_combout\,
	combout => \r2|reset_count~0_combout\);

-- Location: LCFF_X38_Y23_N29
\r2|reset_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \r2|reset_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|reset_count\(0));

-- Location: LCCOMB_X37_Y23_N2
\r2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~3_combout\ = (!\r2|reset_count\(2) & (\r2|reset_count\(15) & (!\r2|reset_count\(1) & !\r2|reset_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(2),
	datab => \r2|reset_count\(15),
	datac => \r2|reset_count\(1),
	datad => \r2|reset_count\(0),
	combout => \r2|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y23_N0
\r2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~4_combout\ = (\r2|Equal0~1_combout\ & (\r2|Equal0~0_combout\ & (\r2|Equal0~2_combout\ & \r2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|Equal0~1_combout\,
	datab => \r2|Equal0~0_combout\,
	datac => \r2|Equal0~2_combout\,
	datad => \r2|Equal0~3_combout\,
	combout => \r2|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y24_N24
\i2s|div_256|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|div_256|counter~1_combout\ = (((!\r2|Equal0~4_combout\) # (!\i2s|div_256|counter\(0))) # (!\r2|Equal0~5_combout\)) # (!\r2|reset_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datac => \i2s|div_256|counter\(0),
	datad => \r2|Equal0~4_combout\,
	combout => \i2s|div_256|counter~1_combout\);

-- Location: LCFF_X37_Y24_N25
\i2s|div_256|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|div_256|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|div_256|counter\(0));

-- Location: LCCOMB_X36_Y24_N18
\r2|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|Equal0~6_combout\ = (\r2|reset_count\(20) & (\r2|Equal0~5_combout\ & \r2|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datad => \r2|Equal0~4_combout\,
	combout => \r2|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y24_N2
\i2s|div_256|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|div_256|counter~0_combout\ = (\i2s|div_256|counter\(0) $ (!\i2s|div_256|counter\(1))) # (!\r2|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s|div_256|counter\(0),
	datac => \i2s|div_256|counter\(1),
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|div_256|counter~0_combout\);

-- Location: LCFF_X36_Y24_N3
\i2s|div_256|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|div_256|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|div_256|counter\(1));

-- Location: LCCOMB_X36_Y24_N14
\i2s|bck_prev~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bck_prev~0_combout\ = (\r2|reset_count\(20) & (\r2|Equal0~5_combout\ & (!\i2s|div_256|counter\(1) & \r2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datac => \i2s|div_256|counter\(1),
	datad => \r2|Equal0~4_combout\,
	combout => \i2s|bck_prev~0_combout\);

-- Location: LCFF_X36_Y24_N15
\i2s|bck_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bck_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bck_prev~regout\);

-- Location: LCCOMB_X36_Y24_N8
\i2s|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|always0~0_combout\ = (!\i2s|div_256|counter\(1)) # (!\i2s|bck_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s|bck_prev~regout\,
	datad => \i2s|div_256|counter\(1),
	combout => \i2s|always0~0_combout\);

-- Location: LCCOMB_X37_Y23_N26
\i2s|bitcount[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[0]~7_combout\ = (((!\r2|Equal0~4_combout\) # (!\i2s|always0~0_combout\)) # (!\r2|Equal0~5_combout\)) # (!\r2|reset_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \r2|Equal0~5_combout\,
	datac => \i2s|always0~0_combout\,
	datad => \r2|Equal0~4_combout\,
	combout => \i2s|bitcount[0]~7_combout\);

-- Location: LCFF_X36_Y23_N9
\i2s|bitcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[1]~10_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(1));

-- Location: LCCOMB_X36_Y23_N12
\i2s|bitcount[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[3]~14_combout\ = (\i2s|bitcount\(3) & (!\i2s|bitcount[2]~13\)) # (!\i2s|bitcount\(3) & ((\i2s|bitcount[2]~13\) # (GND)))
-- \i2s|bitcount[3]~15\ = CARRY((!\i2s|bitcount[2]~13\) # (!\i2s|bitcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(3),
	datad => VCC,
	cin => \i2s|bitcount[2]~13\,
	combout => \i2s|bitcount[3]~14_combout\,
	cout => \i2s|bitcount[3]~15\);

-- Location: LCFF_X36_Y23_N15
\i2s|bitcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[4]~16_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(4));

-- Location: LCFF_X36_Y23_N13
\i2s|bitcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[3]~14_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(3));

-- Location: LCFF_X36_Y23_N7
\i2s|bitcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|bitcount[0]~8_combout\,
	sclr => \i2s|bitcount[0]~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(0));

-- Location: LCCOMB_X36_Y23_N4
\i2s|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|Equal0~0_combout\ = (((!\i2s|bitcount\(0)) # (!\i2s|bitcount\(1))) # (!\i2s|bitcount\(3))) # (!\i2s|bitcount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(2),
	datab => \i2s|bitcount\(3),
	datac => \i2s|bitcount\(1),
	datad => \i2s|bitcount\(0),
	combout => \i2s|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y23_N22
\i2s|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|Equal0~1_combout\ = (\i2s|bitcount\(5)) # ((\i2s|Equal0~0_combout\) # (!\i2s|bitcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(5),
	datab => \i2s|bitcount\(4),
	datac => \i2s|Equal0~0_combout\,
	combout => \i2s|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y23_N20
\i2s|bitcount[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[0]~6_combout\ = (((!\r2|Equal0~5_combout\) # (!\r2|Equal0~4_combout\)) # (!\i2s|Equal0~1_combout\)) # (!\r2|reset_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \i2s|Equal0~1_combout\,
	datac => \r2|Equal0~4_combout\,
	datad => \r2|Equal0~5_combout\,
	combout => \i2s|bitcount[0]~6_combout\);

-- Location: LCCOMB_X36_Y23_N24
\i2s|data_shift~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~5_combout\ = (\r2|reset_count\(20) & (!\i2s|Equal0~1_combout\ & (\r2|Equal0~4_combout\ & \r2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|reset_count\(20),
	datab => \i2s|Equal0~1_combout\,
	datac => \r2|Equal0~4_combout\,
	datad => \r2|Equal0~5_combout\,
	combout => \i2s|data_shift~5_combout\);

-- Location: LCCOMB_X31_Y22_N0
\wavies[7].triangle_gen|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~0_combout\ = \wavies[7].triangle_gen|count\(0) $ (VCC)
-- \wavies[7].triangle_gen|Add1~1\ = CARRY(\wavies[7].triangle_gen|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(0),
	datad => VCC,
	combout => \wavies[7].triangle_gen|Add1~0_combout\,
	cout => \wavies[7].triangle_gen|Add1~1\);

-- Location: LCFF_X31_Y22_N1
\wavies[7].triangle_gen|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(0));

-- Location: LCCOMB_X31_Y22_N2
\wavies[7].triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~2_combout\ = (\wavies[7].triangle_gen|count\(1) & (!\wavies[7].triangle_gen|Add1~1\)) # (!\wavies[7].triangle_gen|count\(1) & ((\wavies[7].triangle_gen|Add1~1\) # (GND)))
-- \wavies[7].triangle_gen|Add1~3\ = CARRY((!\wavies[7].triangle_gen|Add1~1\) # (!\wavies[7].triangle_gen|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(1),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~1\,
	combout => \wavies[7].triangle_gen|Add1~2_combout\,
	cout => \wavies[7].triangle_gen|Add1~3\);

-- Location: LCFF_X31_Y22_N3
\wavies[7].triangle_gen|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(1));

-- Location: LCCOMB_X31_Y19_N2
\wavies[6].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~1_cout\ = CARRY((\wavies[7].triangle_gen|count\(0) & \wavies[7].triangle_gen|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(0),
	datab => \wavies[7].triangle_gen|count\(1),
	datad => VCC,
	cout => \wavies[6].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X31_Y19_N4
\wavies[6].triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~2_combout\ = (\wavies[6].triangle_gen|count\(2) & (\wavies[6].triangle_gen|Add1~1_cout\ & VCC)) # (!\wavies[6].triangle_gen|count\(2) & (!\wavies[6].triangle_gen|Add1~1_cout\))
-- \wavies[6].triangle_gen|Add1~3\ = CARRY((!\wavies[6].triangle_gen|count\(2) & !\wavies[6].triangle_gen|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~1_cout\,
	combout => \wavies[6].triangle_gen|Add1~2_combout\,
	cout => \wavies[6].triangle_gen|Add1~3\);

-- Location: LCFF_X31_Y19_N5
\wavies[6].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(2));

-- Location: LCCOMB_X31_Y19_N8
\wavies[6].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~6_combout\ = (\wavies[6].triangle_gen|count\(4) & (!\wavies[6].triangle_gen|Add1~5\)) # (!\wavies[6].triangle_gen|count\(4) & ((\wavies[6].triangle_gen|Add1~5\) # (GND)))
-- \wavies[6].triangle_gen|Add1~7\ = CARRY((!\wavies[6].triangle_gen|Add1~5\) # (!\wavies[6].triangle_gen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~5\,
	combout => \wavies[6].triangle_gen|Add1~6_combout\,
	cout => \wavies[6].triangle_gen|Add1~7\);

-- Location: LCFF_X31_Y19_N9
\wavies[6].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(4));

-- Location: LCCOMB_X31_Y19_N14
\wavies[6].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~12_combout\ = (\wavies[6].triangle_gen|count\(7) & ((GND) # (!\wavies[6].triangle_gen|Add1~11\))) # (!\wavies[6].triangle_gen|count\(7) & (\wavies[6].triangle_gen|Add1~11\ $ (GND)))
-- \wavies[6].triangle_gen|Add1~13\ = CARRY((\wavies[6].triangle_gen|count\(7)) # (!\wavies[6].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~11\,
	combout => \wavies[6].triangle_gen|Add1~12_combout\,
	cout => \wavies[6].triangle_gen|Add1~13\);

-- Location: LCFF_X31_Y19_N15
\wavies[6].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(7));

-- Location: LCCOMB_X31_Y19_N18
\wavies[6].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~16_combout\ = (\wavies[6].triangle_gen|count\(9) & (\wavies[6].triangle_gen|Add1~15\ $ (GND))) # (!\wavies[6].triangle_gen|count\(9) & (!\wavies[6].triangle_gen|Add1~15\ & VCC))
-- \wavies[6].triangle_gen|Add1~17\ = CARRY((\wavies[6].triangle_gen|count\(9) & !\wavies[6].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~15\,
	combout => \wavies[6].triangle_gen|Add1~16_combout\,
	cout => \wavies[6].triangle_gen|Add1~17\);

-- Location: LCFF_X31_Y19_N19
\wavies[6].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(9));

-- Location: LCCOMB_X31_Y19_N22
\wavies[6].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~20_combout\ = (\wavies[6].triangle_gen|count\(11) & (\wavies[6].triangle_gen|Add1~19\ $ (GND))) # (!\wavies[6].triangle_gen|count\(11) & (!\wavies[6].triangle_gen|Add1~19\ & VCC))
-- \wavies[6].triangle_gen|Add1~21\ = CARRY((\wavies[6].triangle_gen|count\(11) & !\wavies[6].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~19\,
	combout => \wavies[6].triangle_gen|Add1~20_combout\,
	cout => \wavies[6].triangle_gen|Add1~21\);

-- Location: LCFF_X31_Y19_N23
\wavies[6].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(11));

-- Location: LCCOMB_X31_Y19_N26
\wavies[6].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~24_combout\ = (\wavies[6].triangle_gen|count\(13) & (\wavies[6].triangle_gen|Add1~23\ $ (GND))) # (!\wavies[6].triangle_gen|count\(13) & (!\wavies[6].triangle_gen|Add1~23\ & VCC))
-- \wavies[6].triangle_gen|Add1~25\ = CARRY((\wavies[6].triangle_gen|count\(13) & !\wavies[6].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~23\,
	combout => \wavies[6].triangle_gen|Add1~24_combout\,
	cout => \wavies[6].triangle_gen|Add1~25\);

-- Location: LCFF_X31_Y19_N27
\wavies[6].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(13));

-- Location: LCCOMB_X31_Y19_N28
\wavies[6].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~26_combout\ = (\wavies[6].triangle_gen|count\(14) & (\wavies[6].triangle_gen|Add1~25\ & VCC)) # (!\wavies[6].triangle_gen|count\(14) & (!\wavies[6].triangle_gen|Add1~25\))
-- \wavies[6].triangle_gen|Add1~27\ = CARRY((!\wavies[6].triangle_gen|count\(14) & !\wavies[6].triangle_gen|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~25\,
	combout => \wavies[6].triangle_gen|Add1~26_combout\,
	cout => \wavies[6].triangle_gen|Add1~27\);

-- Location: LCFF_X31_Y19_N29
\wavies[6].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(14));

-- Location: LCCOMB_X31_Y19_N30
\wavies[6].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~28_combout\ = (\wavies[6].triangle_gen|count\(15) & (\wavies[6].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[6].triangle_gen|count\(15) & (!\wavies[6].triangle_gen|Add1~27\ & VCC))
-- \wavies[6].triangle_gen|Add1~29\ = CARRY((\wavies[6].triangle_gen|count\(15) & !\wavies[6].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~27\,
	combout => \wavies[6].triangle_gen|Add1~28_combout\,
	cout => \wavies[6].triangle_gen|Add1~29\);

-- Location: LCFF_X31_Y19_N31
\wavies[6].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(15));

-- Location: LCCOMB_X31_Y18_N0
\wavies[6].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~30_combout\ = (\wavies[6].triangle_gen|count\(16) & (!\wavies[6].triangle_gen|Add1~29\)) # (!\wavies[6].triangle_gen|count\(16) & ((\wavies[6].triangle_gen|Add1~29\) # (GND)))
-- \wavies[6].triangle_gen|Add1~31\ = CARRY((!\wavies[6].triangle_gen|Add1~29\) # (!\wavies[6].triangle_gen|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~29\,
	combout => \wavies[6].triangle_gen|Add1~30_combout\,
	cout => \wavies[6].triangle_gen|Add1~31\);

-- Location: LCFF_X31_Y18_N1
\wavies[6].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(16));

-- Location: LCCOMB_X31_Y18_N2
\wavies[6].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~32_combout\ = (\wavies[6].triangle_gen|count\(17) & (\wavies[6].triangle_gen|Add1~31\ $ (GND))) # (!\wavies[6].triangle_gen|count\(17) & (!\wavies[6].triangle_gen|Add1~31\ & VCC))
-- \wavies[6].triangle_gen|Add1~33\ = CARRY((\wavies[6].triangle_gen|count\(17) & !\wavies[6].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~31\,
	combout => \wavies[6].triangle_gen|Add1~32_combout\,
	cout => \wavies[6].triangle_gen|Add1~33\);

-- Location: LCFF_X31_Y18_N3
\wavies[6].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(17));

-- Location: LCCOMB_X31_Y18_N4
\wavies[6].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~34_combout\ = (\wavies[6].triangle_gen|count\(18) & (\wavies[6].triangle_gen|Add1~33\ & VCC)) # (!\wavies[6].triangle_gen|count\(18) & (!\wavies[6].triangle_gen|Add1~33\))
-- \wavies[6].triangle_gen|Add1~35\ = CARRY((!\wavies[6].triangle_gen|count\(18) & !\wavies[6].triangle_gen|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~33\,
	combout => \wavies[6].triangle_gen|Add1~34_combout\,
	cout => \wavies[6].triangle_gen|Add1~35\);

-- Location: LCFF_X31_Y18_N5
\wavies[6].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(18));

-- Location: LCCOMB_X31_Y18_N6
\wavies[6].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~36_combout\ = (\wavies[6].triangle_gen|count\(19) & ((GND) # (!\wavies[6].triangle_gen|Add1~35\))) # (!\wavies[6].triangle_gen|count\(19) & (\wavies[6].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[6].triangle_gen|Add1~37\ = CARRY((\wavies[6].triangle_gen|count\(19)) # (!\wavies[6].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~35\,
	combout => \wavies[6].triangle_gen|Add1~36_combout\,
	cout => \wavies[6].triangle_gen|Add1~37\);

-- Location: LCCOMB_X31_Y18_N8
\wavies[6].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~38_combout\ = (\wavies[6].triangle_gen|count\(20) & (!\wavies[6].triangle_gen|Add1~37\)) # (!\wavies[6].triangle_gen|count\(20) & ((\wavies[6].triangle_gen|Add1~37\) # (GND)))
-- \wavies[6].triangle_gen|Add1~39\ = CARRY((!\wavies[6].triangle_gen|Add1~37\) # (!\wavies[6].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~37\,
	combout => \wavies[6].triangle_gen|Add1~38_combout\,
	cout => \wavies[6].triangle_gen|Add1~39\);

-- Location: LCFF_X31_Y18_N9
\wavies[6].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(20));

-- Location: LCCOMB_X31_Y18_N10
\wavies[6].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~40_combout\ = (\wavies[6].triangle_gen|count\(21) & (\wavies[6].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[6].triangle_gen|count\(21) & (!\wavies[6].triangle_gen|Add1~39\ & VCC))
-- \wavies[6].triangle_gen|Add1~41\ = CARRY((\wavies[6].triangle_gen|count\(21) & !\wavies[6].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~39\,
	combout => \wavies[6].triangle_gen|Add1~40_combout\,
	cout => \wavies[6].triangle_gen|Add1~41\);

-- Location: LCCOMB_X31_Y18_N14
\wavies[6].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~44_combout\ = (\wavies[6].triangle_gen|count\(23) & (\wavies[6].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[6].triangle_gen|count\(23) & (!\wavies[6].triangle_gen|Add1~43\ & VCC))
-- \wavies[6].triangle_gen|Add1~45\ = CARRY((\wavies[6].triangle_gen|count\(23) & !\wavies[6].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~43\,
	combout => \wavies[6].triangle_gen|Add1~44_combout\,
	cout => \wavies[6].triangle_gen|Add1~45\);

-- Location: LCFF_X31_Y18_N15
\wavies[6].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(23));

-- Location: LCCOMB_X31_Y18_N16
\wavies[6].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~46_combout\ = (\wavies[6].triangle_gen|count\(24) & (!\wavies[6].triangle_gen|Add1~45\)) # (!\wavies[6].triangle_gen|count\(24) & ((\wavies[6].triangle_gen|Add1~45\) # (GND)))
-- \wavies[6].triangle_gen|Add1~47\ = CARRY((!\wavies[6].triangle_gen|Add1~45\) # (!\wavies[6].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~45\,
	combout => \wavies[6].triangle_gen|Add1~46_combout\,
	cout => \wavies[6].triangle_gen|Add1~47\);

-- Location: LCCOMB_X31_Y18_N18
\wavies[6].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~48_combout\ = (\wavies[6].triangle_gen|count\(25) & (\wavies[6].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[6].triangle_gen|count\(25) & (!\wavies[6].triangle_gen|Add1~47\ & VCC))
-- \wavies[6].triangle_gen|Add1~49\ = CARRY((\wavies[6].triangle_gen|count\(25) & !\wavies[6].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~47\,
	combout => \wavies[6].triangle_gen|Add1~48_combout\,
	cout => \wavies[6].triangle_gen|Add1~49\);

-- Location: LCFF_X31_Y18_N19
\wavies[6].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(25));

-- Location: LCCOMB_X31_Y18_N22
\wavies[6].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~52_combout\ = (\wavies[6].triangle_gen|count\(27) & (\wavies[6].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[6].triangle_gen|count\(27) & (!\wavies[6].triangle_gen|Add1~51\ & VCC))
-- \wavies[6].triangle_gen|Add1~53\ = CARRY((\wavies[6].triangle_gen|count\(27) & !\wavies[6].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~51\,
	combout => \wavies[6].triangle_gen|Add1~52_combout\,
	cout => \wavies[6].triangle_gen|Add1~53\);

-- Location: LCFF_X31_Y18_N23
\wavies[6].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(27));

-- Location: LCCOMB_X33_Y21_N14
\reader|state[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[0]~9_combout\ = \reader|state\(0) $ (VCC)
-- \reader|state[0]~10\ = CARRY(\reader|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(0),
	datad => VCC,
	combout => \reader|state[0]~9_combout\,
	cout => \reader|state[0]~10\);

-- Location: LCCOMB_X33_Y21_N16
\reader|state[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[1]~11_combout\ = (\reader|state\(1) & (!\reader|state[0]~10\)) # (!\reader|state\(1) & ((\reader|state[0]~10\) # (GND)))
-- \reader|state[1]~12\ = CARRY((!\reader|state[0]~10\) # (!\reader|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(1),
	datad => VCC,
	cin => \reader|state[0]~10\,
	combout => \reader|state[1]~11_combout\,
	cout => \reader|state[1]~12\);

-- Location: LCCOMB_X33_Y21_N18
\reader|state[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[2]~13_combout\ = (\reader|state\(2) & (\reader|state[1]~12\ $ (GND))) # (!\reader|state\(2) & (!\reader|state[1]~12\ & VCC))
-- \reader|state[2]~14\ = CARRY((\reader|state\(2) & !\reader|state[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reader|state\(2),
	datad => VCC,
	cin => \reader|state[1]~12\,
	combout => \reader|state[2]~13_combout\,
	cout => \reader|state[2]~14\);

-- Location: LCFF_X33_Y21_N19
\reader|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[2]~13_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(2));

-- Location: LCCOMB_X33_Y21_N20
\reader|state[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[3]~15_combout\ = (\reader|state\(3) & (!\reader|state[2]~14\)) # (!\reader|state\(3) & ((\reader|state[2]~14\) # (GND)))
-- \reader|state[3]~16\ = CARRY((!\reader|state[2]~14\) # (!\reader|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reader|state\(3),
	datad => VCC,
	cin => \reader|state[2]~14\,
	combout => \reader|state[3]~15_combout\,
	cout => \reader|state[3]~16\);

-- Location: LCFF_X33_Y21_N21
\reader|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[3]~15_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(3));

-- Location: LCCOMB_X33_Y21_N22
\reader|state[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[4]~17_combout\ = (\reader|state\(4) & (\reader|state[3]~16\ $ (GND))) # (!\reader|state\(4) & (!\reader|state[3]~16\ & VCC))
-- \reader|state[4]~18\ = CARRY((\reader|state\(4) & !\reader|state[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(4),
	datad => VCC,
	cin => \reader|state[3]~16\,
	combout => \reader|state[4]~17_combout\,
	cout => \reader|state[4]~18\);

-- Location: LCFF_X33_Y21_N23
\reader|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[4]~17_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(4));

-- Location: LCFF_X33_Y21_N17
\reader|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[1]~11_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(1));

-- Location: LCCOMB_X32_Y21_N14
\reader|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~0_combout\ = (!\reader|state\(3) & (!\reader|state\(4) & (!\reader|state\(1) & \reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~0_combout\);

-- Location: LCFF_X33_Y21_N15
\reader|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[0]~9_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(0));

-- Location: LCCOMB_X33_Y21_N24
\reader|state[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[5]~19_combout\ = (\reader|state\(5) & (!\reader|state[4]~18\)) # (!\reader|state\(5) & ((\reader|state[4]~18\) # (GND)))
-- \reader|state[5]~20\ = CARRY((!\reader|state[4]~18\) # (!\reader|state\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(5),
	datad => VCC,
	cin => \reader|state[4]~18\,
	combout => \reader|state[5]~19_combout\,
	cout => \reader|state[5]~20\);

-- Location: LCCOMB_X33_Y21_N26
\reader|state[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[6]~21_combout\ = (\reader|state\(6) & (\reader|state[5]~20\ $ (GND))) # (!\reader|state\(6) & (!\reader|state[5]~20\ & VCC))
-- \reader|state[6]~22\ = CARRY((\reader|state\(6) & !\reader|state[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(6),
	datad => VCC,
	cin => \reader|state[5]~20\,
	combout => \reader|state[6]~21_combout\,
	cout => \reader|state[6]~22\);

-- Location: LCCOMB_X33_Y21_N30
\reader|state[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|state[8]~25_combout\ = \reader|state\(8) $ (!\reader|state[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(8),
	cin => \reader|state[7]~24\,
	combout => \reader|state[8]~25_combout\);

-- Location: LCFF_X33_Y21_N31
\reader|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[8]~25_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(8));

-- Location: LCFF_X33_Y21_N25
\reader|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[5]~19_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(5));

-- Location: LCFF_X33_Y21_N27
\reader|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|state[6]~21_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|state\(6));

-- Location: LCCOMB_X33_Y21_N8
\reader|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder1~0_combout\ = (!\reader|state\(7) & (!\reader|state\(8) & (!\reader|state\(5) & !\reader|state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(7),
	datab => \reader|state\(8),
	datac => \reader|state\(5),
	datad => \reader|state\(6),
	combout => \reader|Decoder1~0_combout\);

-- Location: LCCOMB_X32_Y21_N12
\reader|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|WideOr1~0_combout\ = (\reader|state\(4) & (!\reader|state\(1) & (!\reader|state\(3) & !\reader|state\(2)))) # (!\reader|state\(4) & (((\reader|state\(3)) # (\reader|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(1),
	datab => \reader|state\(4),
	datac => \reader|state\(3),
	datad => \reader|state\(2),
	combout => \reader|WideOr1~0_combout\);

-- Location: LCCOMB_X32_Y21_N18
\reader|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|WideOr1~1_combout\ = (!\reader|state\(0) & (\reader|Decoder1~0_combout\ & \reader|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|state\(0),
	datac => \reader|Decoder1~0_combout\,
	datad => \reader|WideOr1~0_combout\,
	combout => \reader|WideOr1~1_combout\);

-- Location: LCCOMB_X32_Y21_N24
\reader|buttons_latch_next[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[1]~0_combout\ = (\reader|Decoder0~0_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(1)))))) # (!\reader|Decoder0~0_combout\ & 
-- (((\reader|buttons_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~0_combout\,
	datac => \reader|buttons_latch\(1),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[1]~0_combout\);

-- Location: LCFF_X32_Y21_N25
\reader|buttons_latch[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[1]~0_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(1));

-- Location: LCCOMB_X33_Y21_N10
\reader|buttons~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~2_combout\ = (\r|Equal0~4_combout\ & !\reader|buttons_latch\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~4_combout\,
	datad => \reader|buttons_latch\(1),
	combout => \reader|buttons~2_combout\);

-- Location: LCCOMB_X33_Y21_N4
\reader|Decoder1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder1~3_combout\ = (\reader|state\(0) & \reader|state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|state\(0),
	datad => \reader|state\(4),
	combout => \reader|Decoder1~3_combout\);

-- Location: LCCOMB_X33_Y21_N2
\reader|buttons[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons[5]~1_combout\ = ((\reader|Decoder1~1_combout\ & (\reader|Decoder1~3_combout\ & \reader|Decoder1~0_combout\))) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|Decoder1~1_combout\,
	datab => \reader|Decoder1~3_combout\,
	datac => \reader|Decoder1~0_combout\,
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons[5]~1_combout\);

-- Location: LCFF_X33_Y21_N11
\reader|buttons[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons~2_combout\,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(1));

-- Location: LCCOMB_X32_Y18_N28
\triangles[6][19]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][19]~9_combout\ = (\wavies[6].triangle_gen|count\(27) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(27),
	datac => \reader|buttons\(1),
	combout => \triangles[6][19]~9_combout\);

-- Location: LCCOMB_X33_Y21_N0
\reader|buttons~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~0_combout\ = (!\reader|buttons_latch\(0) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons_latch\(0),
	datac => \r|Equal0~4_combout\,
	combout => \reader|buttons~0_combout\);

-- Location: LCFF_X33_Y21_N1
\reader|buttons[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons~0_combout\,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(0));

-- Location: LCCOMB_X31_Y22_N4
\wavies[7].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~4_combout\ = (\wavies[7].triangle_gen|count\(2) & (\wavies[7].triangle_gen|Add1~3\ $ (GND))) # (!\wavies[7].triangle_gen|count\(2) & (!\wavies[7].triangle_gen|Add1~3\ & VCC))
-- \wavies[7].triangle_gen|Add1~5\ = CARRY((\wavies[7].triangle_gen|count\(2) & !\wavies[7].triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~3\,
	combout => \wavies[7].triangle_gen|Add1~4_combout\,
	cout => \wavies[7].triangle_gen|Add1~5\);

-- Location: LCFF_X31_Y22_N5
\wavies[7].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(2));

-- Location: LCCOMB_X31_Y22_N8
\wavies[7].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~8_combout\ = (\wavies[7].triangle_gen|count\(4) & ((GND) # (!\wavies[7].triangle_gen|Add1~7\))) # (!\wavies[7].triangle_gen|count\(4) & (\wavies[7].triangle_gen|Add1~7\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~9\ = CARRY((\wavies[7].triangle_gen|count\(4)) # (!\wavies[7].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~7\,
	combout => \wavies[7].triangle_gen|Add1~8_combout\,
	cout => \wavies[7].triangle_gen|Add1~9\);

-- Location: LCFF_X31_Y22_N9
\wavies[7].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(4));

-- Location: LCCOMB_X31_Y22_N14
\wavies[7].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~14_combout\ = (\wavies[7].triangle_gen|count\(7) & (!\wavies[7].triangle_gen|Add1~13\)) # (!\wavies[7].triangle_gen|count\(7) & ((\wavies[7].triangle_gen|Add1~13\) # (GND)))
-- \wavies[7].triangle_gen|Add1~15\ = CARRY((!\wavies[7].triangle_gen|Add1~13\) # (!\wavies[7].triangle_gen|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~13\,
	combout => \wavies[7].triangle_gen|Add1~14_combout\,
	cout => \wavies[7].triangle_gen|Add1~15\);

-- Location: LCFF_X31_Y22_N15
\wavies[7].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(7));

-- Location: LCCOMB_X31_Y22_N16
\wavies[7].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~16_combout\ = (\wavies[7].triangle_gen|count\(8) & ((GND) # (!\wavies[7].triangle_gen|Add1~15\))) # (!\wavies[7].triangle_gen|count\(8) & (\wavies[7].triangle_gen|Add1~15\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~17\ = CARRY((\wavies[7].triangle_gen|count\(8)) # (!\wavies[7].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~15\,
	combout => \wavies[7].triangle_gen|Add1~16_combout\,
	cout => \wavies[7].triangle_gen|Add1~17\);

-- Location: LCCOMB_X31_Y22_N18
\wavies[7].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~18_combout\ = (\wavies[7].triangle_gen|count\(9) & (\wavies[7].triangle_gen|Add1~17\ & VCC)) # (!\wavies[7].triangle_gen|count\(9) & (!\wavies[7].triangle_gen|Add1~17\))
-- \wavies[7].triangle_gen|Add1~19\ = CARRY((!\wavies[7].triangle_gen|count\(9) & !\wavies[7].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~17\,
	combout => \wavies[7].triangle_gen|Add1~18_combout\,
	cout => \wavies[7].triangle_gen|Add1~19\);

-- Location: LCFF_X31_Y22_N19
\wavies[7].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(9));

-- Location: LCCOMB_X31_Y22_N20
\wavies[7].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~20_combout\ = (\wavies[7].triangle_gen|count\(10) & ((GND) # (!\wavies[7].triangle_gen|Add1~19\))) # (!\wavies[7].triangle_gen|count\(10) & (\wavies[7].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~21\ = CARRY((\wavies[7].triangle_gen|count\(10)) # (!\wavies[7].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~19\,
	combout => \wavies[7].triangle_gen|Add1~20_combout\,
	cout => \wavies[7].triangle_gen|Add1~21\);

-- Location: LCCOMB_X31_Y22_N22
\wavies[7].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~22_combout\ = (\wavies[7].triangle_gen|count\(11) & (!\wavies[7].triangle_gen|Add1~21\)) # (!\wavies[7].triangle_gen|count\(11) & ((\wavies[7].triangle_gen|Add1~21\) # (GND)))
-- \wavies[7].triangle_gen|Add1~23\ = CARRY((!\wavies[7].triangle_gen|Add1~21\) # (!\wavies[7].triangle_gen|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~21\,
	combout => \wavies[7].triangle_gen|Add1~22_combout\,
	cout => \wavies[7].triangle_gen|Add1~23\);

-- Location: LCFF_X31_Y22_N23
\wavies[7].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(11));

-- Location: LCCOMB_X31_Y22_N26
\wavies[7].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~26_combout\ = (\wavies[7].triangle_gen|count\(13) & (!\wavies[7].triangle_gen|Add1~25\)) # (!\wavies[7].triangle_gen|count\(13) & ((\wavies[7].triangle_gen|Add1~25\) # (GND)))
-- \wavies[7].triangle_gen|Add1~27\ = CARRY((!\wavies[7].triangle_gen|Add1~25\) # (!\wavies[7].triangle_gen|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~25\,
	combout => \wavies[7].triangle_gen|Add1~26_combout\,
	cout => \wavies[7].triangle_gen|Add1~27\);

-- Location: LCFF_X31_Y22_N27
\wavies[7].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(13));

-- Location: LCCOMB_X31_Y22_N28
\wavies[7].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~28_combout\ = (\wavies[7].triangle_gen|count\(14) & ((GND) # (!\wavies[7].triangle_gen|Add1~27\))) # (!\wavies[7].triangle_gen|count\(14) & (\wavies[7].triangle_gen|Add1~27\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~29\ = CARRY((\wavies[7].triangle_gen|count\(14)) # (!\wavies[7].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~27\,
	combout => \wavies[7].triangle_gen|Add1~28_combout\,
	cout => \wavies[7].triangle_gen|Add1~29\);

-- Location: LCFF_X31_Y22_N29
\wavies[7].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(14));

-- Location: LCCOMB_X31_Y22_N30
\wavies[7].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~30_combout\ = (\wavies[7].triangle_gen|count\(15) & (\wavies[7].triangle_gen|Add1~29\ & VCC)) # (!\wavies[7].triangle_gen|count\(15) & (!\wavies[7].triangle_gen|Add1~29\))
-- \wavies[7].triangle_gen|Add1~31\ = CARRY((!\wavies[7].triangle_gen|count\(15) & !\wavies[7].triangle_gen|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~29\,
	combout => \wavies[7].triangle_gen|Add1~30_combout\,
	cout => \wavies[7].triangle_gen|Add1~31\);

-- Location: LCFF_X31_Y22_N31
\wavies[7].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(15));

-- Location: LCCOMB_X31_Y21_N0
\wavies[7].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~32_combout\ = (\wavies[7].triangle_gen|count\(16) & ((GND) # (!\wavies[7].triangle_gen|Add1~31\))) # (!\wavies[7].triangle_gen|count\(16) & (\wavies[7].triangle_gen|Add1~31\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~33\ = CARRY((\wavies[7].triangle_gen|count\(16)) # (!\wavies[7].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~31\,
	combout => \wavies[7].triangle_gen|Add1~32_combout\,
	cout => \wavies[7].triangle_gen|Add1~33\);

-- Location: LCFF_X31_Y21_N1
\wavies[7].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(16));

-- Location: LCCOMB_X31_Y21_N2
\wavies[7].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~34_combout\ = (\wavies[7].triangle_gen|count\(17) & (!\wavies[7].triangle_gen|Add1~33\)) # (!\wavies[7].triangle_gen|count\(17) & ((\wavies[7].triangle_gen|Add1~33\) # (GND)))
-- \wavies[7].triangle_gen|Add1~35\ = CARRY((!\wavies[7].triangle_gen|Add1~33\) # (!\wavies[7].triangle_gen|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~33\,
	combout => \wavies[7].triangle_gen|Add1~34_combout\,
	cout => \wavies[7].triangle_gen|Add1~35\);

-- Location: LCFF_X31_Y21_N3
\wavies[7].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(17));

-- Location: LCCOMB_X31_Y21_N4
\wavies[7].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~36_combout\ = (\wavies[7].triangle_gen|count\(18) & ((GND) # (!\wavies[7].triangle_gen|Add1~35\))) # (!\wavies[7].triangle_gen|count\(18) & (\wavies[7].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[7].triangle_gen|Add1~37\ = CARRY((\wavies[7].triangle_gen|count\(18)) # (!\wavies[7].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~35\,
	combout => \wavies[7].triangle_gen|Add1~36_combout\,
	cout => \wavies[7].triangle_gen|Add1~37\);

-- Location: LCFF_X31_Y21_N5
\wavies[7].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(18));

-- Location: LCCOMB_X31_Y21_N8
\wavies[7].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~40_combout\ = (\wavies[7].triangle_gen|count\(20) & (\wavies[7].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[7].triangle_gen|count\(20) & (!\wavies[7].triangle_gen|Add1~39\ & VCC))
-- \wavies[7].triangle_gen|Add1~41\ = CARRY((\wavies[7].triangle_gen|count\(20) & !\wavies[7].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~39\,
	combout => \wavies[7].triangle_gen|Add1~40_combout\,
	cout => \wavies[7].triangle_gen|Add1~41\);

-- Location: LCFF_X31_Y21_N9
\wavies[7].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(20));

-- Location: LCCOMB_X31_Y21_N14
\wavies[7].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~46_combout\ = (\wavies[7].triangle_gen|count\(23) & (!\wavies[7].triangle_gen|Add1~45\)) # (!\wavies[7].triangle_gen|count\(23) & ((\wavies[7].triangle_gen|Add1~45\) # (GND)))
-- \wavies[7].triangle_gen|Add1~47\ = CARRY((!\wavies[7].triangle_gen|Add1~45\) # (!\wavies[7].triangle_gen|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~45\,
	combout => \wavies[7].triangle_gen|Add1~46_combout\,
	cout => \wavies[7].triangle_gen|Add1~47\);

-- Location: LCFF_X31_Y21_N15
\wavies[7].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(23));

-- Location: LCCOMB_X31_Y21_N18
\wavies[7].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[7].triangle_gen|Add1~50_combout\ = (\wavies[7].triangle_gen|count\(25) & (!\wavies[7].triangle_gen|Add1~49\)) # (!\wavies[7].triangle_gen|count\(25) & ((\wavies[7].triangle_gen|Add1~49\) # (GND)))
-- \wavies[7].triangle_gen|Add1~51\ = CARRY((!\wavies[7].triangle_gen|Add1~49\) # (!\wavies[7].triangle_gen|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[7].triangle_gen|Add1~49\,
	combout => \wavies[7].triangle_gen|Add1~50_combout\,
	cout => \wavies[7].triangle_gen|Add1~51\);

-- Location: LCFF_X31_Y21_N19
\wavies[7].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(25));

-- Location: LCFF_X31_Y21_N21
\wavies[7].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(26));

-- Location: LCCOMB_X32_Y19_N26
\triangles[7][18]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][18]~10_combout\ = (\reader|buttons\(0) & \wavies[7].triangle_gen|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(0),
	datad => \wavies[7].triangle_gen|count\(26),
	combout => \triangles[7][18]~10_combout\);

-- Location: LCCOMB_X32_Y19_N4
\triangles[7][17]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][17]~12_combout\ = (\wavies[7].triangle_gen|count\(25) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(25),
	datac => \reader|buttons\(0),
	combout => \triangles[7][17]~12_combout\);

-- Location: LCFF_X31_Y18_N17
\wavies[6].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(24));

-- Location: LCCOMB_X32_Y18_N22
\triangles[6][16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][16]~15_combout\ = (\wavies[6].triangle_gen|count\(24) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(24),
	datac => \reader|buttons\(1),
	combout => \triangles[6][16]~15_combout\);

-- Location: LCCOMB_X32_Y19_N24
\triangles[7][15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][15]~16_combout\ = (\wavies[7].triangle_gen|count\(23) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(23),
	datac => \reader|buttons\(0),
	combout => \triangles[7][15]~16_combout\);

-- Location: LCCOMB_X32_Y18_N30
\triangles[6][14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][14]~19_combout\ = (\wavies[6].triangle_gen|count\(22) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(22),
	datac => \reader|buttons\(1),
	combout => \triangles[6][14]~19_combout\);

-- Location: LCFF_X31_Y18_N11
\wavies[6].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(21));

-- Location: LCCOMB_X36_Y18_N0
\triangles[6][13]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][13]~21_combout\ = (\wavies[6].triangle_gen|count\(21) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[6].triangle_gen|count\(21),
	datad => \reader|buttons\(1),
	combout => \triangles[6][13]~21_combout\);

-- Location: LCCOMB_X32_Y19_N2
\triangles[7][12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][12]~22_combout\ = (\wavies[7].triangle_gen|count\(20) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(20),
	datac => \reader|buttons\(0),
	combout => \triangles[7][12]~22_combout\);

-- Location: LCFF_X31_Y18_N7
\wavies[6].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(19));

-- Location: LCCOMB_X32_Y20_N0
\triangles[6][11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][11]~25_combout\ = (\wavies[6].triangle_gen|count\(19) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(19),
	datad => \reader|buttons\(1),
	combout => \triangles[6][11]~25_combout\);

-- Location: LCCOMB_X32_Y20_N10
\triangles[7][10]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][10]~26_combout\ = (\wavies[7].triangle_gen|count\(18) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(18),
	datad => \reader|buttons\(0),
	combout => \triangles[7][10]~26_combout\);

-- Location: LCCOMB_X32_Y18_N18
\triangles[6][9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][9]~29_combout\ = (\wavies[6].triangle_gen|count\(17) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(17),
	datac => \reader|buttons\(1),
	combout => \triangles[6][9]~29_combout\);

-- Location: LCCOMB_X32_Y20_N20
\triangles[6][8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][8]~31_combout\ = (\wavies[6].triangle_gen|count\(16) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(16),
	datad => \reader|buttons\(1),
	combout => \triangles[6][8]~31_combout\);

-- Location: LCCOMB_X31_Y20_N28
\triangles[7][7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][7]~32_combout\ = (\wavies[7].triangle_gen|count\(15) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(15),
	datad => \reader|buttons\(0),
	combout => \triangles[7][7]~32_combout\);

-- Location: LCCOMB_X31_Y20_N22
\triangles[7][6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][6]~34_combout\ = (\wavies[7].triangle_gen|count\(14) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[7].triangle_gen|count\(14),
	datad => \reader|buttons\(0),
	combout => \triangles[7][6]~34_combout\);

-- Location: LCCOMB_X32_Y20_N16
\triangles[6][5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][5]~37_combout\ = (\wavies[6].triangle_gen|count\(13) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(13),
	datad => \reader|buttons\(1),
	combout => \triangles[6][5]~37_combout\);

-- Location: LCCOMB_X32_Y20_N22
\triangles[7][4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][4]~38_combout\ = (\wavies[7].triangle_gen|count\(12) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(12),
	datad => \reader|buttons\(0),
	combout => \triangles[7][4]~38_combout\);

-- Location: LCCOMB_X32_Y20_N30
\triangles[7][3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][3]~40_combout\ = (\wavies[7].triangle_gen|count\(11) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[7].triangle_gen|count\(11),
	datad => \reader|buttons\(0),
	combout => \triangles[7][3]~40_combout\);

-- Location: LCFF_X31_Y22_N21
\wavies[7].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(10));

-- Location: LCCOMB_X31_Y20_N4
\triangles[7][2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][2]~42_combout\ = (\wavies[7].triangle_gen|count\(10) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[7].triangle_gen|count\(10),
	datad => \reader|buttons\(0),
	combout => \triangles[7][2]~42_combout\);

-- Location: LCCOMB_X35_Y22_N16
\triangles[7][1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][1]~44_combout\ = (\wavies[7].triangle_gen|count\(9) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(9),
	datad => \reader|buttons\(0),
	combout => \triangles[7][1]~44_combout\);

-- Location: LCFF_X31_Y22_N17
\wavies[7].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[7].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[7].triangle_gen|count\(8));

-- Location: LCCOMB_X35_Y22_N22
\triangles[7][0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[7][0]~46_combout\ = (\wavies[7].triangle_gen|count\(8) & \reader|buttons\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(8),
	datad => \reader|buttons\(0),
	combout => \triangles[7][0]~46_combout\);

-- Location: LCCOMB_X36_Y20_N8
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\triangles[6][0]~47_combout\ & (\triangles[7][0]~46_combout\ $ (VCC))) # (!\triangles[6][0]~47_combout\ & (\triangles[7][0]~46_combout\ & VCC))
-- \Add5~1\ = CARRY((\triangles[6][0]~47_combout\ & \triangles[7][0]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][0]~47_combout\,
	datab => \triangles[7][0]~46_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X36_Y20_N10
\Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\triangles[6][1]~45_combout\ & ((\triangles[7][1]~44_combout\ & (\Add5~1\ & VCC)) # (!\triangles[7][1]~44_combout\ & (!\Add5~1\)))) # (!\triangles[6][1]~45_combout\ & ((\triangles[7][1]~44_combout\ & (!\Add5~1\)) # 
-- (!\triangles[7][1]~44_combout\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\triangles[6][1]~45_combout\ & (!\triangles[7][1]~44_combout\ & !\Add5~1\)) # (!\triangles[6][1]~45_combout\ & ((!\Add5~1\) # (!\triangles[7][1]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][1]~45_combout\,
	datab => \triangles[7][1]~44_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X36_Y20_N12
\Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\triangles[6][2]~43_combout\ $ (\triangles[7][2]~42_combout\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\triangles[6][2]~43_combout\ & ((\triangles[7][2]~42_combout\) # (!\Add5~3\))) # (!\triangles[6][2]~43_combout\ & (\triangles[7][2]~42_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][2]~43_combout\,
	datab => \triangles[7][2]~42_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X36_Y20_N14
\Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\triangles[6][3]~41_combout\ & ((\triangles[7][3]~40_combout\ & (\Add5~5\ & VCC)) # (!\triangles[7][3]~40_combout\ & (!\Add5~5\)))) # (!\triangles[6][3]~41_combout\ & ((\triangles[7][3]~40_combout\ & (!\Add5~5\)) # 
-- (!\triangles[7][3]~40_combout\ & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\triangles[6][3]~41_combout\ & (!\triangles[7][3]~40_combout\ & !\Add5~5\)) # (!\triangles[6][3]~41_combout\ & ((!\Add5~5\) # (!\triangles[7][3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][3]~41_combout\,
	datab => \triangles[7][3]~40_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X36_Y20_N20
\Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((\triangles[6][6]~35_combout\ $ (\triangles[7][6]~34_combout\ $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((\triangles[6][6]~35_combout\ & ((\triangles[7][6]~34_combout\) # (!\Add5~11\))) # (!\triangles[6][6]~35_combout\ & (\triangles[7][6]~34_combout\ & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][6]~35_combout\,
	datab => \triangles[7][6]~34_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X36_Y20_N30
\Add5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\triangles[7][11]~24_combout\ & ((\triangles[6][11]~25_combout\ & (\Add5~21\ & VCC)) # (!\triangles[6][11]~25_combout\ & (!\Add5~21\)))) # (!\triangles[7][11]~24_combout\ & ((\triangles[6][11]~25_combout\ & (!\Add5~21\)) # 
-- (!\triangles[6][11]~25_combout\ & ((\Add5~21\) # (GND)))))
-- \Add5~23\ = CARRY((\triangles[7][11]~24_combout\ & (!\triangles[6][11]~25_combout\ & !\Add5~21\)) # (!\triangles[7][11]~24_combout\ & ((!\Add5~21\) # (!\triangles[6][11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][11]~24_combout\,
	datab => \triangles[6][11]~25_combout\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X36_Y19_N0
\Add5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = ((\triangles[6][12]~23_combout\ $ (\triangles[7][12]~22_combout\ $ (!\Add5~23\)))) # (GND)
-- \Add5~25\ = CARRY((\triangles[6][12]~23_combout\ & ((\triangles[7][12]~22_combout\) # (!\Add5~23\))) # (!\triangles[6][12]~23_combout\ & (\triangles[7][12]~22_combout\ & !\Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][12]~23_combout\,
	datab => \triangles[7][12]~22_combout\,
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X36_Y19_N2
\Add5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\triangles[7][13]~20_combout\ & ((\triangles[6][13]~21_combout\ & (\Add5~25\ & VCC)) # (!\triangles[6][13]~21_combout\ & (!\Add5~25\)))) # (!\triangles[7][13]~20_combout\ & ((\triangles[6][13]~21_combout\ & (!\Add5~25\)) # 
-- (!\triangles[6][13]~21_combout\ & ((\Add5~25\) # (GND)))))
-- \Add5~27\ = CARRY((\triangles[7][13]~20_combout\ & (!\triangles[6][13]~21_combout\ & !\Add5~25\)) # (!\triangles[7][13]~20_combout\ & ((!\Add5~25\) # (!\triangles[6][13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][13]~20_combout\,
	datab => \triangles[6][13]~21_combout\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X36_Y19_N8
\Add5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = ((\triangles[7][16]~14_combout\ $ (\triangles[6][16]~15_combout\ $ (!\Add5~31\)))) # (GND)
-- \Add5~33\ = CARRY((\triangles[7][16]~14_combout\ & ((\triangles[6][16]~15_combout\) # (!\Add5~31\))) # (!\triangles[7][16]~14_combout\ & (\triangles[6][16]~15_combout\ & !\Add5~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][16]~14_combout\,
	datab => \triangles[6][16]~15_combout\,
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X36_Y19_N10
\Add5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\triangles[6][17]~13_combout\ & ((\triangles[7][17]~12_combout\ & (\Add5~33\ & VCC)) # (!\triangles[7][17]~12_combout\ & (!\Add5~33\)))) # (!\triangles[6][17]~13_combout\ & ((\triangles[7][17]~12_combout\ & (!\Add5~33\)) # 
-- (!\triangles[7][17]~12_combout\ & ((\Add5~33\) # (GND)))))
-- \Add5~35\ = CARRY((\triangles[6][17]~13_combout\ & (!\triangles[7][17]~12_combout\ & !\Add5~33\)) # (!\triangles[6][17]~13_combout\ & ((!\Add5~33\) # (!\triangles[7][17]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][17]~13_combout\,
	datab => \triangles[7][17]~12_combout\,
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X36_Y19_N12
\Add5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = ((\triangles[6][18]~11_combout\ $ (\triangles[7][18]~10_combout\ $ (!\Add5~35\)))) # (GND)
-- \Add5~37\ = CARRY((\triangles[6][18]~11_combout\ & ((\triangles[7][18]~10_combout\) # (!\Add5~35\))) # (!\triangles[6][18]~11_combout\ & (\triangles[7][18]~10_combout\ & !\Add5~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[6][18]~11_combout\,
	datab => \triangles[7][18]~10_combout\,
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X36_Y19_N14
\Add5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\triangles[7][19]~8_combout\ & ((\triangles[6][19]~9_combout\ & (\Add5~37\ & VCC)) # (!\triangles[6][19]~9_combout\ & (!\Add5~37\)))) # (!\triangles[7][19]~8_combout\ & ((\triangles[6][19]~9_combout\ & (!\Add5~37\)) # 
-- (!\triangles[6][19]~9_combout\ & ((\Add5~37\) # (GND)))))
-- \Add5~39\ = CARRY((\triangles[7][19]~8_combout\ & (!\triangles[6][19]~9_combout\ & !\Add5~37\)) # (!\triangles[7][19]~8_combout\ & ((!\Add5~37\) # (!\triangles[6][19]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[7][19]~8_combout\,
	datab => \triangles[6][19]~9_combout\,
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X32_Y21_N8
\reader|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~3_combout\ = (\reader|state\(3) & (!\reader|state\(4) & (\reader|state\(1) & !\reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~3_combout\);

-- Location: LCCOMB_X32_Y21_N6
\reader|buttons_latch_next[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[4]~3_combout\ = (\reader|Decoder0~3_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(4)))))) # (!\reader|Decoder0~3_combout\ & 
-- (((\reader|buttons_latch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~3_combout\,
	datac => \reader|buttons_latch\(4),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[4]~3_combout\);

-- Location: LCFF_X32_Y21_N7
\reader|buttons_latch[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[4]~3_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(4));

-- Location: LCCOMB_X33_Y24_N0
\reader|buttons~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~5_combout\ = (!\reader|buttons_latch\(4) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(4),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~5_combout\);

-- Location: LCFF_X32_Y24_N5
\reader|buttons[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	sdata => \reader|buttons~5_combout\,
	sload => VCC,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(4));

-- Location: LCCOMB_X31_Y23_N4
\triangles[2][15]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][15]~112_combout\ = (\wavies[2].triangle_gen|count\(23) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(23),
	datac => \reader|buttons\(4),
	combout => \triangles[2][15]~112_combout\);

-- Location: LCCOMB_X32_Y21_N30
\reader|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~6_combout\ = (!\reader|state\(3) & (\reader|state\(4) & (!\reader|state\(1) & !\reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~6_combout\);

-- Location: LCCOMB_X32_Y21_N20
\reader|buttons_latch_next[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[7]~6_combout\ = (\reader|Decoder0~6_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(7)))))) # (!\reader|Decoder0~6_combout\ & 
-- (((\reader|buttons_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~6_combout\,
	datac => \reader|buttons_latch\(7),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[7]~6_combout\);

-- Location: LCFF_X32_Y21_N21
\reader|buttons_latch[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[7]~6_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(7));

-- Location: LCCOMB_X33_Y24_N6
\reader|buttons~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~8_combout\ = (!\reader|buttons_latch\(7) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(7),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~8_combout\);

-- Location: LCFF_X32_Y24_N3
\reader|buttons[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	sdata => \reader|buttons~8_combout\,
	sload => VCC,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(7));

-- Location: LCCOMB_X29_Y22_N2
\wavies[5].triangle_gen|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~0_combout\ = (\wavies[5].triangle_gen|count\(1) & (\wavies[7].triangle_gen|count\(0) $ (VCC))) # (!\wavies[5].triangle_gen|count\(1) & (\wavies[7].triangle_gen|count\(0) & VCC))
-- \wavies[5].triangle_gen|Add1~1\ = CARRY((\wavies[5].triangle_gen|count\(1) & \wavies[7].triangle_gen|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(1),
	datab => \wavies[7].triangle_gen|count\(0),
	datad => VCC,
	combout => \wavies[5].triangle_gen|Add1~0_combout\,
	cout => \wavies[5].triangle_gen|Add1~1\);

-- Location: LCFF_X29_Y22_N3
\wavies[5].triangle_gen|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(1));

-- Location: LCCOMB_X31_Y26_N2
\wavies[3].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~1_cout\ = CARRY((\wavies[7].triangle_gen|count\(0) & \wavies[5].triangle_gen|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(0),
	datab => \wavies[5].triangle_gen|count\(1),
	datad => VCC,
	cout => \wavies[3].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X31_Y26_N4
\wavies[3].triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~2_combout\ = (\wavies[3].triangle_gen|count\(2) & (!\wavies[3].triangle_gen|Add1~1_cout\)) # (!\wavies[3].triangle_gen|count\(2) & ((\wavies[3].triangle_gen|Add1~1_cout\) # (GND)))
-- \wavies[3].triangle_gen|Add1~3\ = CARRY((!\wavies[3].triangle_gen|Add1~1_cout\) # (!\wavies[3].triangle_gen|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~1_cout\,
	combout => \wavies[3].triangle_gen|Add1~2_combout\,
	cout => \wavies[3].triangle_gen|Add1~3\);

-- Location: LCFF_X31_Y26_N5
\wavies[3].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(2));

-- Location: LCCOMB_X31_Y26_N8
\wavies[3].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~6_combout\ = (\wavies[3].triangle_gen|count\(4) & (!\wavies[3].triangle_gen|Add1~5\)) # (!\wavies[3].triangle_gen|count\(4) & ((\wavies[3].triangle_gen|Add1~5\) # (GND)))
-- \wavies[3].triangle_gen|Add1~7\ = CARRY((!\wavies[3].triangle_gen|Add1~5\) # (!\wavies[3].triangle_gen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~5\,
	combout => \wavies[3].triangle_gen|Add1~6_combout\,
	cout => \wavies[3].triangle_gen|Add1~7\);

-- Location: LCFF_X31_Y26_N9
\wavies[3].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(4));

-- Location: LCCOMB_X31_Y26_N14
\wavies[3].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~12_combout\ = (\wavies[3].triangle_gen|count\(7) & (\wavies[3].triangle_gen|Add1~11\ $ (GND))) # (!\wavies[3].triangle_gen|count\(7) & (!\wavies[3].triangle_gen|Add1~11\ & VCC))
-- \wavies[3].triangle_gen|Add1~13\ = CARRY((\wavies[3].triangle_gen|count\(7) & !\wavies[3].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~11\,
	combout => \wavies[3].triangle_gen|Add1~12_combout\,
	cout => \wavies[3].triangle_gen|Add1~13\);

-- Location: LCFF_X31_Y26_N15
\wavies[3].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(7));

-- Location: LCCOMB_X31_Y26_N18
\wavies[3].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~16_combout\ = (\wavies[3].triangle_gen|count\(9) & ((GND) # (!\wavies[3].triangle_gen|Add1~15\))) # (!\wavies[3].triangle_gen|count\(9) & (\wavies[3].triangle_gen|Add1~15\ $ (GND)))
-- \wavies[3].triangle_gen|Add1~17\ = CARRY((\wavies[3].triangle_gen|count\(9)) # (!\wavies[3].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~15\,
	combout => \wavies[3].triangle_gen|Add1~16_combout\,
	cout => \wavies[3].triangle_gen|Add1~17\);

-- Location: LCFF_X31_Y26_N19
\wavies[3].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(9));

-- Location: LCCOMB_X31_Y26_N20
\wavies[3].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~18_combout\ = (\wavies[3].triangle_gen|count\(10) & (!\wavies[3].triangle_gen|Add1~17\)) # (!\wavies[3].triangle_gen|count\(10) & ((\wavies[3].triangle_gen|Add1~17\) # (GND)))
-- \wavies[3].triangle_gen|Add1~19\ = CARRY((!\wavies[3].triangle_gen|Add1~17\) # (!\wavies[3].triangle_gen|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~17\,
	combout => \wavies[3].triangle_gen|Add1~18_combout\,
	cout => \wavies[3].triangle_gen|Add1~19\);

-- Location: LCCOMB_X31_Y26_N22
\wavies[3].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~20_combout\ = (\wavies[3].triangle_gen|count\(11) & ((GND) # (!\wavies[3].triangle_gen|Add1~19\))) # (!\wavies[3].triangle_gen|count\(11) & (\wavies[3].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[3].triangle_gen|Add1~21\ = CARRY((\wavies[3].triangle_gen|count\(11)) # (!\wavies[3].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~19\,
	combout => \wavies[3].triangle_gen|Add1~20_combout\,
	cout => \wavies[3].triangle_gen|Add1~21\);

-- Location: LCFF_X31_Y26_N23
\wavies[3].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(11));

-- Location: LCCOMB_X31_Y26_N26
\wavies[3].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~24_combout\ = (\wavies[3].triangle_gen|count\(13) & ((GND) # (!\wavies[3].triangle_gen|Add1~23\))) # (!\wavies[3].triangle_gen|count\(13) & (\wavies[3].triangle_gen|Add1~23\ $ (GND)))
-- \wavies[3].triangle_gen|Add1~25\ = CARRY((\wavies[3].triangle_gen|count\(13)) # (!\wavies[3].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~23\,
	combout => \wavies[3].triangle_gen|Add1~24_combout\,
	cout => \wavies[3].triangle_gen|Add1~25\);

-- Location: LCFF_X31_Y26_N27
\wavies[3].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(13));

-- Location: LCCOMB_X31_Y26_N28
\wavies[3].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~26_combout\ = (\wavies[3].triangle_gen|count\(14) & (!\wavies[3].triangle_gen|Add1~25\)) # (!\wavies[3].triangle_gen|count\(14) & ((\wavies[3].triangle_gen|Add1~25\) # (GND)))
-- \wavies[3].triangle_gen|Add1~27\ = CARRY((!\wavies[3].triangle_gen|Add1~25\) # (!\wavies[3].triangle_gen|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~25\,
	combout => \wavies[3].triangle_gen|Add1~26_combout\,
	cout => \wavies[3].triangle_gen|Add1~27\);

-- Location: LCFF_X31_Y26_N29
\wavies[3].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(14));

-- Location: LCCOMB_X31_Y26_N30
\wavies[3].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~28_combout\ = (\wavies[3].triangle_gen|count\(15) & (\wavies[3].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[3].triangle_gen|count\(15) & (!\wavies[3].triangle_gen|Add1~27\ & VCC))
-- \wavies[3].triangle_gen|Add1~29\ = CARRY((\wavies[3].triangle_gen|count\(15) & !\wavies[3].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~27\,
	combout => \wavies[3].triangle_gen|Add1~28_combout\,
	cout => \wavies[3].triangle_gen|Add1~29\);

-- Location: LCFF_X31_Y26_N31
\wavies[3].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(15));

-- Location: LCCOMB_X31_Y25_N0
\wavies[3].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~30_combout\ = (\wavies[3].triangle_gen|count\(16) & (!\wavies[3].triangle_gen|Add1~29\)) # (!\wavies[3].triangle_gen|count\(16) & ((\wavies[3].triangle_gen|Add1~29\) # (GND)))
-- \wavies[3].triangle_gen|Add1~31\ = CARRY((!\wavies[3].triangle_gen|Add1~29\) # (!\wavies[3].triangle_gen|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~29\,
	combout => \wavies[3].triangle_gen|Add1~30_combout\,
	cout => \wavies[3].triangle_gen|Add1~31\);

-- Location: LCFF_X31_Y25_N1
\wavies[3].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(16));

-- Location: LCCOMB_X31_Y25_N2
\wavies[3].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~32_combout\ = (\wavies[3].triangle_gen|count\(17) & (\wavies[3].triangle_gen|Add1~31\ $ (GND))) # (!\wavies[3].triangle_gen|count\(17) & (!\wavies[3].triangle_gen|Add1~31\ & VCC))
-- \wavies[3].triangle_gen|Add1~33\ = CARRY((\wavies[3].triangle_gen|count\(17) & !\wavies[3].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~31\,
	combout => \wavies[3].triangle_gen|Add1~32_combout\,
	cout => \wavies[3].triangle_gen|Add1~33\);

-- Location: LCFF_X31_Y25_N3
\wavies[3].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(17));

-- Location: LCCOMB_X31_Y25_N4
\wavies[3].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~34_combout\ = (\wavies[3].triangle_gen|count\(18) & (!\wavies[3].triangle_gen|Add1~33\)) # (!\wavies[3].triangle_gen|count\(18) & ((\wavies[3].triangle_gen|Add1~33\) # (GND)))
-- \wavies[3].triangle_gen|Add1~35\ = CARRY((!\wavies[3].triangle_gen|Add1~33\) # (!\wavies[3].triangle_gen|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~33\,
	combout => \wavies[3].triangle_gen|Add1~34_combout\,
	cout => \wavies[3].triangle_gen|Add1~35\);

-- Location: LCFF_X32_Y24_N1
\wavies[3].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[3].triangle_gen|Add1~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(18));

-- Location: LCCOMB_X31_Y25_N6
\wavies[3].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~36_combout\ = (\wavies[3].triangle_gen|count\(19) & ((GND) # (!\wavies[3].triangle_gen|Add1~35\))) # (!\wavies[3].triangle_gen|count\(19) & (\wavies[3].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[3].triangle_gen|Add1~37\ = CARRY((\wavies[3].triangle_gen|count\(19)) # (!\wavies[3].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~35\,
	combout => \wavies[3].triangle_gen|Add1~36_combout\,
	cout => \wavies[3].triangle_gen|Add1~37\);

-- Location: LCCOMB_X31_Y25_N8
\wavies[3].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~38_combout\ = (\wavies[3].triangle_gen|count\(20) & (!\wavies[3].triangle_gen|Add1~37\)) # (!\wavies[3].triangle_gen|count\(20) & ((\wavies[3].triangle_gen|Add1~37\) # (GND)))
-- \wavies[3].triangle_gen|Add1~39\ = CARRY((!\wavies[3].triangle_gen|Add1~37\) # (!\wavies[3].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~37\,
	combout => \wavies[3].triangle_gen|Add1~38_combout\,
	cout => \wavies[3].triangle_gen|Add1~39\);

-- Location: LCFF_X31_Y25_N9
\wavies[3].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(20));

-- Location: LCCOMB_X31_Y25_N12
\wavies[3].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~42_combout\ = (\wavies[3].triangle_gen|count\(22) & (!\wavies[3].triangle_gen|Add1~41\)) # (!\wavies[3].triangle_gen|count\(22) & ((\wavies[3].triangle_gen|Add1~41\) # (GND)))
-- \wavies[3].triangle_gen|Add1~43\ = CARRY((!\wavies[3].triangle_gen|Add1~41\) # (!\wavies[3].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~41\,
	combout => \wavies[3].triangle_gen|Add1~42_combout\,
	cout => \wavies[3].triangle_gen|Add1~43\);

-- Location: LCFF_X31_Y25_N13
\wavies[3].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(22));

-- Location: LCCOMB_X32_Y23_N26
\triangles[3][14]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][14]~115_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(22),
	combout => \triangles[3][14]~115_combout\);

-- Location: LCCOMB_X31_Y23_N28
\triangles[2][13]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][13]~116_combout\ = (\wavies[2].triangle_gen|count\(21) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(21),
	datac => \reader|buttons\(4),
	combout => \triangles[2][13]~116_combout\);

-- Location: LCCOMB_X32_Y23_N30
\triangles[3][12]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][12]~119_combout\ = (\wavies[3].triangle_gen|count\(20) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(20),
	datad => \reader|buttons\(7),
	combout => \triangles[3][12]~119_combout\);

-- Location: LCFF_X31_Y25_N7
\wavies[3].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(19));

-- Location: LCCOMB_X32_Y24_N4
\triangles[3][11]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][11]~121_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(19),
	combout => \triangles[3][11]~121_combout\);

-- Location: LCCOMB_X30_Y24_N2
\wavies[2].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~1_cout\ = CARRY((\wavies[7].triangle_gen|count\(0) & \wavies[5].triangle_gen|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[7].triangle_gen|count\(0),
	datab => \wavies[5].triangle_gen|count\(1),
	datad => VCC,
	cout => \wavies[2].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X30_Y24_N4
\wavies[2].triangle_gen|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~3_cout\ = CARRY((!\wavies[5].triangle_gen|count\(2) & !\wavies[2].triangle_gen|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~1_cout\,
	cout => \wavies[2].triangle_gen|Add1~3_cout\);

-- Location: LCCOMB_X30_Y24_N8
\wavies[2].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~6_combout\ = (\wavies[2].triangle_gen|count\(4) & (!\wavies[2].triangle_gen|Add1~5\)) # (!\wavies[2].triangle_gen|count\(4) & ((\wavies[2].triangle_gen|Add1~5\) # (GND)))
-- \wavies[2].triangle_gen|Add1~7\ = CARRY((!\wavies[2].triangle_gen|Add1~5\) # (!\wavies[2].triangle_gen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~5\,
	combout => \wavies[2].triangle_gen|Add1~6_combout\,
	cout => \wavies[2].triangle_gen|Add1~7\);

-- Location: LCFF_X30_Y24_N9
\wavies[2].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(4));

-- Location: LCCOMB_X30_Y24_N14
\wavies[2].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~12_combout\ = (\wavies[2].triangle_gen|count\(7) & ((GND) # (!\wavies[2].triangle_gen|Add1~11\))) # (!\wavies[2].triangle_gen|count\(7) & (\wavies[2].triangle_gen|Add1~11\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~13\ = CARRY((\wavies[2].triangle_gen|count\(7)) # (!\wavies[2].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~11\,
	combout => \wavies[2].triangle_gen|Add1~12_combout\,
	cout => \wavies[2].triangle_gen|Add1~13\);

-- Location: LCFF_X30_Y24_N15
\wavies[2].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(7));

-- Location: LCCOMB_X30_Y24_N16
\wavies[2].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~14_combout\ = (\wavies[2].triangle_gen|count\(8) & (\wavies[2].triangle_gen|Add1~13\ & VCC)) # (!\wavies[2].triangle_gen|count\(8) & (!\wavies[2].triangle_gen|Add1~13\))
-- \wavies[2].triangle_gen|Add1~15\ = CARRY((!\wavies[2].triangle_gen|count\(8) & !\wavies[2].triangle_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~13\,
	combout => \wavies[2].triangle_gen|Add1~14_combout\,
	cout => \wavies[2].triangle_gen|Add1~15\);

-- Location: LCCOMB_X30_Y24_N18
\wavies[2].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~16_combout\ = (\wavies[2].triangle_gen|count\(9) & ((GND) # (!\wavies[2].triangle_gen|Add1~15\))) # (!\wavies[2].triangle_gen|count\(9) & (\wavies[2].triangle_gen|Add1~15\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~17\ = CARRY((\wavies[2].triangle_gen|count\(9)) # (!\wavies[2].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~15\,
	combout => \wavies[2].triangle_gen|Add1~16_combout\,
	cout => \wavies[2].triangle_gen|Add1~17\);

-- Location: LCFF_X30_Y24_N19
\wavies[2].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(9));

-- Location: LCCOMB_X30_Y24_N22
\wavies[2].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~20_combout\ = (\wavies[2].triangle_gen|count\(11) & ((GND) # (!\wavies[2].triangle_gen|Add1~19\))) # (!\wavies[2].triangle_gen|count\(11) & (\wavies[2].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~21\ = CARRY((\wavies[2].triangle_gen|count\(11)) # (!\wavies[2].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~19\,
	combout => \wavies[2].triangle_gen|Add1~20_combout\,
	cout => \wavies[2].triangle_gen|Add1~21\);

-- Location: LCFF_X30_Y24_N23
\wavies[2].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(11));

-- Location: LCCOMB_X30_Y24_N24
\wavies[2].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~22_combout\ = (\wavies[2].triangle_gen|count\(12) & (!\wavies[2].triangle_gen|Add1~21\)) # (!\wavies[2].triangle_gen|count\(12) & ((\wavies[2].triangle_gen|Add1~21\) # (GND)))
-- \wavies[2].triangle_gen|Add1~23\ = CARRY((!\wavies[2].triangle_gen|Add1~21\) # (!\wavies[2].triangle_gen|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~21\,
	combout => \wavies[2].triangle_gen|Add1~22_combout\,
	cout => \wavies[2].triangle_gen|Add1~23\);

-- Location: LCCOMB_X30_Y24_N26
\wavies[2].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~24_combout\ = (\wavies[2].triangle_gen|count\(13) & ((GND) # (!\wavies[2].triangle_gen|Add1~23\))) # (!\wavies[2].triangle_gen|count\(13) & (\wavies[2].triangle_gen|Add1~23\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~25\ = CARRY((\wavies[2].triangle_gen|count\(13)) # (!\wavies[2].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~23\,
	combout => \wavies[2].triangle_gen|Add1~24_combout\,
	cout => \wavies[2].triangle_gen|Add1~25\);

-- Location: LCFF_X30_Y24_N27
\wavies[2].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(13));

-- Location: LCCOMB_X30_Y24_N28
\wavies[2].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~26_combout\ = (\wavies[2].triangle_gen|count\(14) & (\wavies[2].triangle_gen|Add1~25\ & VCC)) # (!\wavies[2].triangle_gen|count\(14) & (!\wavies[2].triangle_gen|Add1~25\))
-- \wavies[2].triangle_gen|Add1~27\ = CARRY((!\wavies[2].triangle_gen|count\(14) & !\wavies[2].triangle_gen|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~25\,
	combout => \wavies[2].triangle_gen|Add1~26_combout\,
	cout => \wavies[2].triangle_gen|Add1~27\);

-- Location: LCFF_X30_Y24_N29
\wavies[2].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(14));

-- Location: LCCOMB_X30_Y24_N30
\wavies[2].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~28_combout\ = (\wavies[2].triangle_gen|count\(15) & ((GND) # (!\wavies[2].triangle_gen|Add1~27\))) # (!\wavies[2].triangle_gen|count\(15) & (\wavies[2].triangle_gen|Add1~27\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~29\ = CARRY((\wavies[2].triangle_gen|count\(15)) # (!\wavies[2].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~27\,
	combout => \wavies[2].triangle_gen|Add1~28_combout\,
	cout => \wavies[2].triangle_gen|Add1~29\);

-- Location: LCFF_X30_Y24_N31
\wavies[2].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(15));

-- Location: LCCOMB_X30_Y23_N0
\wavies[2].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~30_combout\ = (\wavies[2].triangle_gen|count\(16) & (!\wavies[2].triangle_gen|Add1~29\)) # (!\wavies[2].triangle_gen|count\(16) & ((\wavies[2].triangle_gen|Add1~29\) # (GND)))
-- \wavies[2].triangle_gen|Add1~31\ = CARRY((!\wavies[2].triangle_gen|Add1~29\) # (!\wavies[2].triangle_gen|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~29\,
	combout => \wavies[2].triangle_gen|Add1~30_combout\,
	cout => \wavies[2].triangle_gen|Add1~31\);

-- Location: LCFF_X30_Y23_N1
\wavies[2].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(16));

-- Location: LCCOMB_X30_Y23_N2
\wavies[2].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~32_combout\ = (\wavies[2].triangle_gen|count\(17) & ((GND) # (!\wavies[2].triangle_gen|Add1~31\))) # (!\wavies[2].triangle_gen|count\(17) & (\wavies[2].triangle_gen|Add1~31\ $ (GND)))
-- \wavies[2].triangle_gen|Add1~33\ = CARRY((\wavies[2].triangle_gen|count\(17)) # (!\wavies[2].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~31\,
	combout => \wavies[2].triangle_gen|Add1~32_combout\,
	cout => \wavies[2].triangle_gen|Add1~33\);

-- Location: LCFF_X30_Y23_N3
\wavies[2].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(17));

-- Location: LCCOMB_X30_Y23_N4
\wavies[2].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~34_combout\ = (\wavies[2].triangle_gen|count\(18) & (\wavies[2].triangle_gen|Add1~33\ & VCC)) # (!\wavies[2].triangle_gen|count\(18) & (!\wavies[2].triangle_gen|Add1~33\))
-- \wavies[2].triangle_gen|Add1~35\ = CARRY((!\wavies[2].triangle_gen|count\(18) & !\wavies[2].triangle_gen|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~33\,
	combout => \wavies[2].triangle_gen|Add1~34_combout\,
	cout => \wavies[2].triangle_gen|Add1~35\);

-- Location: LCFF_X31_Y24_N19
\wavies[2].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[2].triangle_gen|Add1~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(18));

-- Location: LCCOMB_X31_Y24_N18
\triangles[2][10]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][10]~122_combout\ = (\wavies[2].triangle_gen|count\(18) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[2].triangle_gen|count\(18),
	datad => \reader|buttons\(4),
	combout => \triangles[2][10]~122_combout\);

-- Location: LCCOMB_X31_Y24_N4
\triangles[2][9]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][9]~124_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(17),
	combout => \triangles[2][9]~124_combout\);

-- Location: LCCOMB_X31_Y24_N22
\triangles[3][8]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][8]~127_combout\ = (\wavies[3].triangle_gen|count\(16) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(16),
	datad => \reader|buttons\(7),
	combout => \triangles[3][8]~127_combout\);

-- Location: LCCOMB_X32_Y26_N28
\triangles[3][7]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][7]~129_combout\ = (\wavies[3].triangle_gen|count\(15) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(15),
	datad => \reader|buttons\(7),
	combout => \triangles[3][7]~129_combout\);

-- Location: LCCOMB_X31_Y24_N6
\triangles[2][6]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][6]~130_combout\ = (\wavies[2].triangle_gen|count\(14) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(14),
	datad => \reader|buttons\(4),
	combout => \triangles[2][6]~130_combout\);

-- Location: LCCOMB_X31_Y24_N28
\triangles[2][5]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][5]~132_combout\ = (\wavies[2].triangle_gen|count\(13) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(13),
	datad => \reader|buttons\(4),
	combout => \triangles[2][5]~132_combout\);

-- Location: LCFF_X30_Y24_N25
\wavies[2].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(12));

-- Location: LCCOMB_X31_Y24_N26
\triangles[2][4]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][4]~134_combout\ = (\wavies[2].triangle_gen|count\(12) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(12),
	datad => \reader|buttons\(4),
	combout => \triangles[2][4]~134_combout\);

-- Location: LCCOMB_X32_Y24_N0
\triangles[3][3]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][3]~137_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(11),
	combout => \triangles[3][3]~137_combout\);

-- Location: LCFF_X31_Y26_N21
\wavies[3].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(10));

-- Location: LCCOMB_X32_Y24_N2
\triangles[3][2]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][2]~139_combout\ = (\reader|buttons\(7) & \wavies[3].triangle_gen|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(7),
	datad => \wavies[3].triangle_gen|count\(10),
	combout => \triangles[3][2]~139_combout\);

-- Location: LCCOMB_X31_Y24_N16
\triangles[3][1]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][1]~141_combout\ = (\wavies[3].triangle_gen|count\(9) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(9),
	datad => \reader|buttons\(7),
	combout => \triangles[3][1]~141_combout\);

-- Location: LCFF_X30_Y24_N17
\wavies[2].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(8));

-- Location: LCCOMB_X31_Y24_N14
\triangles[2][0]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][0]~142_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(8),
	combout => \triangles[2][0]~142_combout\);

-- Location: LCCOMB_X32_Y24_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\triangles[3][0]~143_combout\ & (\triangles[2][0]~142_combout\ $ (VCC))) # (!\triangles[3][0]~143_combout\ & (\triangles[2][0]~142_combout\ & VCC))
-- \Add1~1\ = CARRY((\triangles[3][0]~143_combout\ & \triangles[2][0]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][0]~143_combout\,
	datab => \triangles[2][0]~142_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X32_Y24_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\triangles[3][4]~135_combout\ $ (\triangles[2][4]~134_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\triangles[3][4]~135_combout\ & ((\triangles[2][4]~134_combout\) # (!\Add1~7\))) # (!\triangles[3][4]~135_combout\ & (\triangles[2][4]~134_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][4]~135_combout\,
	datab => \triangles[2][4]~134_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X32_Y24_N18
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\triangles[3][5]~133_combout\ & ((\triangles[2][5]~132_combout\ & (\Add1~9\ & VCC)) # (!\triangles[2][5]~132_combout\ & (!\Add1~9\)))) # (!\triangles[3][5]~133_combout\ & ((\triangles[2][5]~132_combout\ & (!\Add1~9\)) # 
-- (!\triangles[2][5]~132_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\triangles[3][5]~133_combout\ & (!\triangles[2][5]~132_combout\ & !\Add1~9\)) # (!\triangles[3][5]~133_combout\ & ((!\Add1~9\) # (!\triangles[2][5]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][5]~133_combout\,
	datab => \triangles[2][5]~132_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X32_Y24_N22
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\triangles[2][7]~128_combout\ & ((\triangles[3][7]~129_combout\ & (\Add1~13\ & VCC)) # (!\triangles[3][7]~129_combout\ & (!\Add1~13\)))) # (!\triangles[2][7]~128_combout\ & ((\triangles[3][7]~129_combout\ & (!\Add1~13\)) # 
-- (!\triangles[3][7]~129_combout\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\triangles[2][7]~128_combout\ & (!\triangles[3][7]~129_combout\ & !\Add1~13\)) # (!\triangles[2][7]~128_combout\ & ((!\Add1~13\) # (!\triangles[3][7]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][7]~128_combout\,
	datab => \triangles[3][7]~129_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X32_Y24_N26
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\triangles[3][9]~125_combout\ & ((\triangles[2][9]~124_combout\ & (\Add1~17\ & VCC)) # (!\triangles[2][9]~124_combout\ & (!\Add1~17\)))) # (!\triangles[3][9]~125_combout\ & ((\triangles[2][9]~124_combout\ & (!\Add1~17\)) # 
-- (!\triangles[2][9]~124_combout\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\triangles[3][9]~125_combout\ & (!\triangles[2][9]~124_combout\ & !\Add1~17\)) # (!\triangles[3][9]~125_combout\ & ((!\Add1~17\) # (!\triangles[2][9]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][9]~125_combout\,
	datab => \triangles[2][9]~124_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X32_Y24_N28
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\triangles[3][10]~123_combout\ $ (\triangles[2][10]~122_combout\ $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\triangles[3][10]~123_combout\ & ((\triangles[2][10]~122_combout\) # (!\Add1~19\))) # (!\triangles[3][10]~123_combout\ & (\triangles[2][10]~122_combout\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][10]~123_combout\,
	datab => \triangles[2][10]~122_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X32_Y23_N4
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\triangles[2][14]~114_combout\ $ (\triangles[3][14]~115_combout\ $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\triangles[2][14]~114_combout\ & ((\triangles[3][14]~115_combout\) # (!\Add1~27\))) # (!\triangles[2][14]~114_combout\ & (\triangles[3][14]~115_combout\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][14]~114_combout\,
	datab => \triangles[3][14]~115_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X32_Y23_N6
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\triangles[3][15]~113_combout\ & ((\triangles[2][15]~112_combout\ & (\Add1~29\ & VCC)) # (!\triangles[2][15]~112_combout\ & (!\Add1~29\)))) # (!\triangles[3][15]~113_combout\ & ((\triangles[2][15]~112_combout\ & (!\Add1~29\)) # 
-- (!\triangles[2][15]~112_combout\ & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\triangles[3][15]~113_combout\ & (!\triangles[2][15]~112_combout\ & !\Add1~29\)) # (!\triangles[3][15]~113_combout\ & ((!\Add1~29\) # (!\triangles[2][15]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][15]~113_combout\,
	datab => \triangles[2][15]~112_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X32_Y21_N22
\reader|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~4_combout\ = (\reader|state\(3) & (!\reader|state\(4) & (!\reader|state\(1) & \reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~4_combout\);

-- Location: LCCOMB_X32_Y21_N16
\reader|buttons_latch_next[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[5]~4_combout\ = (\reader|Decoder0~4_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(5)))))) # (!\reader|Decoder0~4_combout\ & 
-- (((\reader|buttons_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~4_combout\,
	datac => \reader|buttons_latch\(5),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[5]~4_combout\);

-- Location: LCFF_X32_Y21_N17
\reader|buttons_latch[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[5]~4_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(5));

-- Location: LCCOMB_X33_Y20_N16
\reader|buttons~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~6_combout\ = (!\reader|buttons_latch\(5) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(5),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~6_combout\);

-- Location: LCFF_X33_Y20_N17
\reader|buttons[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons~6_combout\,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(5));

-- Location: LCCOMB_X29_Y22_N4
\wavies[5].triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~2_combout\ = (\wavies[5].triangle_gen|count\(2) & (\wavies[5].triangle_gen|Add1~1\ & VCC)) # (!\wavies[5].triangle_gen|count\(2) & (!\wavies[5].triangle_gen|Add1~1\))
-- \wavies[5].triangle_gen|Add1~3\ = CARRY((!\wavies[5].triangle_gen|count\(2) & !\wavies[5].triangle_gen|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~1\,
	combout => \wavies[5].triangle_gen|Add1~2_combout\,
	cout => \wavies[5].triangle_gen|Add1~3\);

-- Location: LCFF_X29_Y22_N5
\wavies[5].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(2));

-- Location: LCCOMB_X33_Y19_N2
\wavies[0].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~1_cout\ = CARRY((\wavies[5].triangle_gen|count\(1) & \wavies[7].triangle_gen|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(1),
	datab => \wavies[7].triangle_gen|count\(0),
	datad => VCC,
	cout => \wavies[0].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X33_Y19_N4
\wavies[0].triangle_gen|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~3_cout\ = CARRY((!\wavies[5].triangle_gen|count\(2) & !\wavies[0].triangle_gen|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~1_cout\,
	cout => \wavies[0].triangle_gen|Add1~3_cout\);

-- Location: LCCOMB_X33_Y19_N8
\wavies[0].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~6_combout\ = (\wavies[0].triangle_gen|count\(4) & (!\wavies[0].triangle_gen|Add1~5\)) # (!\wavies[0].triangle_gen|count\(4) & ((\wavies[0].triangle_gen|Add1~5\) # (GND)))
-- \wavies[0].triangle_gen|Add1~7\ = CARRY((!\wavies[0].triangle_gen|Add1~5\) # (!\wavies[0].triangle_gen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~5\,
	combout => \wavies[0].triangle_gen|Add1~6_combout\,
	cout => \wavies[0].triangle_gen|Add1~7\);

-- Location: LCFF_X33_Y19_N9
\wavies[0].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(4));

-- Location: LCCOMB_X33_Y19_N14
\wavies[0].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~12_combout\ = (\wavies[0].triangle_gen|count\(7) & (\wavies[0].triangle_gen|Add1~11\ $ (GND))) # (!\wavies[0].triangle_gen|count\(7) & (!\wavies[0].triangle_gen|Add1~11\ & VCC))
-- \wavies[0].triangle_gen|Add1~13\ = CARRY((\wavies[0].triangle_gen|count\(7) & !\wavies[0].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~11\,
	combout => \wavies[0].triangle_gen|Add1~12_combout\,
	cout => \wavies[0].triangle_gen|Add1~13\);

-- Location: LCFF_X33_Y19_N15
\wavies[0].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(7));

-- Location: LCCOMB_X33_Y19_N18
\wavies[0].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~16_combout\ = (\wavies[0].triangle_gen|count\(9) & ((GND) # (!\wavies[0].triangle_gen|Add1~15\))) # (!\wavies[0].triangle_gen|count\(9) & (\wavies[0].triangle_gen|Add1~15\ $ (GND)))
-- \wavies[0].triangle_gen|Add1~17\ = CARRY((\wavies[0].triangle_gen|count\(9)) # (!\wavies[0].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~15\,
	combout => \wavies[0].triangle_gen|Add1~16_combout\,
	cout => \wavies[0].triangle_gen|Add1~17\);

-- Location: LCFF_X33_Y19_N19
\wavies[0].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(9));

-- Location: LCCOMB_X33_Y19_N20
\wavies[0].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~18_combout\ = (\wavies[0].triangle_gen|count\(10) & (\wavies[0].triangle_gen|Add1~17\ & VCC)) # (!\wavies[0].triangle_gen|count\(10) & (!\wavies[0].triangle_gen|Add1~17\))
-- \wavies[0].triangle_gen|Add1~19\ = CARRY((!\wavies[0].triangle_gen|count\(10) & !\wavies[0].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~17\,
	combout => \wavies[0].triangle_gen|Add1~18_combout\,
	cout => \wavies[0].triangle_gen|Add1~19\);

-- Location: LCCOMB_X33_Y19_N22
\wavies[0].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~20_combout\ = (\wavies[0].triangle_gen|count\(11) & ((GND) # (!\wavies[0].triangle_gen|Add1~19\))) # (!\wavies[0].triangle_gen|count\(11) & (\wavies[0].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[0].triangle_gen|Add1~21\ = CARRY((\wavies[0].triangle_gen|count\(11)) # (!\wavies[0].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~19\,
	combout => \wavies[0].triangle_gen|Add1~20_combout\,
	cout => \wavies[0].triangle_gen|Add1~21\);

-- Location: LCFF_X33_Y19_N23
\wavies[0].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(11));

-- Location: LCCOMB_X33_Y19_N26
\wavies[0].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~24_combout\ = (\wavies[0].triangle_gen|count\(13) & ((GND) # (!\wavies[0].triangle_gen|Add1~23\))) # (!\wavies[0].triangle_gen|count\(13) & (\wavies[0].triangle_gen|Add1~23\ $ (GND)))
-- \wavies[0].triangle_gen|Add1~25\ = CARRY((\wavies[0].triangle_gen|count\(13)) # (!\wavies[0].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~23\,
	combout => \wavies[0].triangle_gen|Add1~24_combout\,
	cout => \wavies[0].triangle_gen|Add1~25\);

-- Location: LCFF_X33_Y19_N27
\wavies[0].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(13));

-- Location: LCCOMB_X33_Y19_N28
\wavies[0].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~26_combout\ = (\wavies[0].triangle_gen|count\(14) & (!\wavies[0].triangle_gen|Add1~25\)) # (!\wavies[0].triangle_gen|count\(14) & ((\wavies[0].triangle_gen|Add1~25\) # (GND)))
-- \wavies[0].triangle_gen|Add1~27\ = CARRY((!\wavies[0].triangle_gen|Add1~25\) # (!\wavies[0].triangle_gen|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~25\,
	combout => \wavies[0].triangle_gen|Add1~26_combout\,
	cout => \wavies[0].triangle_gen|Add1~27\);

-- Location: LCFF_X33_Y19_N29
\wavies[0].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(14));

-- Location: LCCOMB_X33_Y19_N30
\wavies[0].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~28_combout\ = (\wavies[0].triangle_gen|count\(15) & (\wavies[0].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[0].triangle_gen|count\(15) & (!\wavies[0].triangle_gen|Add1~27\ & VCC))
-- \wavies[0].triangle_gen|Add1~29\ = CARRY((\wavies[0].triangle_gen|count\(15) & !\wavies[0].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~27\,
	combout => \wavies[0].triangle_gen|Add1~28_combout\,
	cout => \wavies[0].triangle_gen|Add1~29\);

-- Location: LCFF_X33_Y19_N31
\wavies[0].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(15));

-- Location: LCCOMB_X33_Y18_N0
\wavies[0].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~30_combout\ = (\wavies[0].triangle_gen|count\(16) & (\wavies[0].triangle_gen|Add1~29\ & VCC)) # (!\wavies[0].triangle_gen|count\(16) & (!\wavies[0].triangle_gen|Add1~29\))
-- \wavies[0].triangle_gen|Add1~31\ = CARRY((!\wavies[0].triangle_gen|count\(16) & !\wavies[0].triangle_gen|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~29\,
	combout => \wavies[0].triangle_gen|Add1~30_combout\,
	cout => \wavies[0].triangle_gen|Add1~31\);

-- Location: LCFF_X33_Y18_N1
\wavies[0].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(16));

-- Location: LCCOMB_X33_Y18_N2
\wavies[0].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~32_combout\ = (\wavies[0].triangle_gen|count\(17) & (\wavies[0].triangle_gen|Add1~31\ $ (GND))) # (!\wavies[0].triangle_gen|count\(17) & (!\wavies[0].triangle_gen|Add1~31\ & VCC))
-- \wavies[0].triangle_gen|Add1~33\ = CARRY((\wavies[0].triangle_gen|count\(17) & !\wavies[0].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~31\,
	combout => \wavies[0].triangle_gen|Add1~32_combout\,
	cout => \wavies[0].triangle_gen|Add1~33\);

-- Location: LCFF_X33_Y20_N19
\wavies[0].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[0].triangle_gen|Add1~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(17));

-- Location: LCCOMB_X33_Y18_N4
\wavies[0].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~34_combout\ = (\wavies[0].triangle_gen|count\(18) & (\wavies[0].triangle_gen|Add1~33\ & VCC)) # (!\wavies[0].triangle_gen|count\(18) & (!\wavies[0].triangle_gen|Add1~33\))
-- \wavies[0].triangle_gen|Add1~35\ = CARRY((!\wavies[0].triangle_gen|count\(18) & !\wavies[0].triangle_gen|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~33\,
	combout => \wavies[0].triangle_gen|Add1~34_combout\,
	cout => \wavies[0].triangle_gen|Add1~35\);

-- Location: LCFF_X33_Y20_N11
\wavies[0].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[0].triangle_gen|Add1~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(18));

-- Location: LCCOMB_X33_Y18_N8
\wavies[0].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~38_combout\ = (\wavies[0].triangle_gen|count\(20) & (!\wavies[0].triangle_gen|Add1~37\)) # (!\wavies[0].triangle_gen|count\(20) & ((\wavies[0].triangle_gen|Add1~37\) # (GND)))
-- \wavies[0].triangle_gen|Add1~39\ = CARRY((!\wavies[0].triangle_gen|Add1~37\) # (!\wavies[0].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~37\,
	combout => \wavies[0].triangle_gen|Add1~38_combout\,
	cout => \wavies[0].triangle_gen|Add1~39\);

-- Location: LCFF_X33_Y18_N9
\wavies[0].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(20));

-- Location: LCCOMB_X33_Y18_N10
\wavies[0].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~40_combout\ = (\wavies[0].triangle_gen|count\(21) & (\wavies[0].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[0].triangle_gen|count\(21) & (!\wavies[0].triangle_gen|Add1~39\ & VCC))
-- \wavies[0].triangle_gen|Add1~41\ = CARRY((\wavies[0].triangle_gen|count\(21) & !\wavies[0].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~39\,
	combout => \wavies[0].triangle_gen|Add1~40_combout\,
	cout => \wavies[0].triangle_gen|Add1~41\);

-- Location: LCFF_X33_Y20_N13
\wavies[0].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[0].triangle_gen|Add1~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(21));

-- Location: LCCOMB_X33_Y20_N22
\triangles[0][13]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][13]~164_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(21),
	combout => \triangles[0][13]~164_combout\);

-- Location: LCCOMB_X36_Y22_N2
\wavies[4].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~1_cout\ = CARRY(\wavies[7].triangle_gen|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(0),
	datad => VCC,
	cout => \wavies[4].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X36_Y22_N4
\wavies[4].triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~2_combout\ = (\wavies[4].triangle_gen|count\(2) & (\wavies[4].triangle_gen|Add1~1_cout\ & VCC)) # (!\wavies[4].triangle_gen|count\(2) & (!\wavies[4].triangle_gen|Add1~1_cout\))
-- \wavies[4].triangle_gen|Add1~3\ = CARRY((!\wavies[4].triangle_gen|count\(2) & !\wavies[4].triangle_gen|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~1_cout\,
	combout => \wavies[4].triangle_gen|Add1~2_combout\,
	cout => \wavies[4].triangle_gen|Add1~3\);

-- Location: LCFF_X36_Y22_N5
\wavies[4].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(2));

-- Location: LCCOMB_X35_Y19_N0
\wavies[1].triangle_gen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~1_cout\ = CARRY(\wavies[7].triangle_gen|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[7].triangle_gen|count\(0),
	datad => VCC,
	cout => \wavies[1].triangle_gen|Add1~1_cout\);

-- Location: LCCOMB_X35_Y19_N2
\wavies[1].triangle_gen|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~3_cout\ = CARRY((!\wavies[4].triangle_gen|count\(2) & !\wavies[1].triangle_gen|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~1_cout\,
	cout => \wavies[1].triangle_gen|Add1~3_cout\);

-- Location: LCCOMB_X35_Y19_N4
\wavies[1].triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~4_combout\ = (\wavies[1].triangle_gen|count\(2) & ((GND) # (!\wavies[1].triangle_gen|Add1~3_cout\))) # (!\wavies[1].triangle_gen|count\(2) & (\wavies[1].triangle_gen|Add1~3_cout\ $ (GND)))
-- \wavies[1].triangle_gen|Add1~5\ = CARRY((\wavies[1].triangle_gen|count\(2)) # (!\wavies[1].triangle_gen|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(2),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~3_cout\,
	combout => \wavies[1].triangle_gen|Add1~4_combout\,
	cout => \wavies[1].triangle_gen|Add1~5\);

-- Location: LCFF_X35_Y19_N5
\wavies[1].triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(2));

-- Location: LCCOMB_X35_Y19_N8
\wavies[1].triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~8_combout\ = (\wavies[1].triangle_gen|count\(4) & (\wavies[1].triangle_gen|Add1~7\ $ (GND))) # (!\wavies[1].triangle_gen|count\(4) & (!\wavies[1].triangle_gen|Add1~7\ & VCC))
-- \wavies[1].triangle_gen|Add1~9\ = CARRY((\wavies[1].triangle_gen|count\(4) & !\wavies[1].triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~7\,
	combout => \wavies[1].triangle_gen|Add1~8_combout\,
	cout => \wavies[1].triangle_gen|Add1~9\);

-- Location: LCFF_X35_Y19_N9
\wavies[1].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(4));

-- Location: LCCOMB_X35_Y19_N14
\wavies[1].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~14_combout\ = (\wavies[1].triangle_gen|count\(7) & (!\wavies[1].triangle_gen|Add1~13\)) # (!\wavies[1].triangle_gen|count\(7) & ((\wavies[1].triangle_gen|Add1~13\) # (GND)))
-- \wavies[1].triangle_gen|Add1~15\ = CARRY((!\wavies[1].triangle_gen|Add1~13\) # (!\wavies[1].triangle_gen|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~13\,
	combout => \wavies[1].triangle_gen|Add1~14_combout\,
	cout => \wavies[1].triangle_gen|Add1~15\);

-- Location: LCFF_X35_Y19_N15
\wavies[1].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(7));

-- Location: LCCOMB_X35_Y19_N16
\wavies[1].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~16_combout\ = (\wavies[1].triangle_gen|count\(8) & (\wavies[1].triangle_gen|Add1~15\ $ (GND))) # (!\wavies[1].triangle_gen|count\(8) & (!\wavies[1].triangle_gen|Add1~15\ & VCC))
-- \wavies[1].triangle_gen|Add1~17\ = CARRY((\wavies[1].triangle_gen|count\(8) & !\wavies[1].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~15\,
	combout => \wavies[1].triangle_gen|Add1~16_combout\,
	cout => \wavies[1].triangle_gen|Add1~17\);

-- Location: LCCOMB_X35_Y19_N18
\wavies[1].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~18_combout\ = (\wavies[1].triangle_gen|count\(9) & (\wavies[1].triangle_gen|Add1~17\ & VCC)) # (!\wavies[1].triangle_gen|count\(9) & (!\wavies[1].triangle_gen|Add1~17\))
-- \wavies[1].triangle_gen|Add1~19\ = CARRY((!\wavies[1].triangle_gen|count\(9) & !\wavies[1].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~17\,
	combout => \wavies[1].triangle_gen|Add1~18_combout\,
	cout => \wavies[1].triangle_gen|Add1~19\);

-- Location: LCFF_X35_Y19_N19
\wavies[1].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(9));

-- Location: LCCOMB_X35_Y19_N22
\wavies[1].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~22_combout\ = (\wavies[1].triangle_gen|count\(11) & (\wavies[1].triangle_gen|Add1~21\ & VCC)) # (!\wavies[1].triangle_gen|count\(11) & (!\wavies[1].triangle_gen|Add1~21\))
-- \wavies[1].triangle_gen|Add1~23\ = CARRY((!\wavies[1].triangle_gen|count\(11) & !\wavies[1].triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~21\,
	combout => \wavies[1].triangle_gen|Add1~22_combout\,
	cout => \wavies[1].triangle_gen|Add1~23\);

-- Location: LCFF_X35_Y19_N23
\wavies[1].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(11));

-- Location: LCCOMB_X35_Y19_N24
\wavies[1].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~24_combout\ = (\wavies[1].triangle_gen|count\(12) & (\wavies[1].triangle_gen|Add1~23\ $ (GND))) # (!\wavies[1].triangle_gen|count\(12) & (!\wavies[1].triangle_gen|Add1~23\ & VCC))
-- \wavies[1].triangle_gen|Add1~25\ = CARRY((\wavies[1].triangle_gen|count\(12) & !\wavies[1].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~23\,
	combout => \wavies[1].triangle_gen|Add1~24_combout\,
	cout => \wavies[1].triangle_gen|Add1~25\);

-- Location: LCCOMB_X35_Y19_N26
\wavies[1].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~26_combout\ = (\wavies[1].triangle_gen|count\(13) & (\wavies[1].triangle_gen|Add1~25\ & VCC)) # (!\wavies[1].triangle_gen|count\(13) & (!\wavies[1].triangle_gen|Add1~25\))
-- \wavies[1].triangle_gen|Add1~27\ = CARRY((!\wavies[1].triangle_gen|count\(13) & !\wavies[1].triangle_gen|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~25\,
	combout => \wavies[1].triangle_gen|Add1~26_combout\,
	cout => \wavies[1].triangle_gen|Add1~27\);

-- Location: LCFF_X35_Y19_N27
\wavies[1].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(13));

-- Location: LCCOMB_X35_Y19_N28
\wavies[1].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~28_combout\ = (\wavies[1].triangle_gen|count\(14) & (\wavies[1].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[1].triangle_gen|count\(14) & (!\wavies[1].triangle_gen|Add1~27\ & VCC))
-- \wavies[1].triangle_gen|Add1~29\ = CARRY((\wavies[1].triangle_gen|count\(14) & !\wavies[1].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~27\,
	combout => \wavies[1].triangle_gen|Add1~28_combout\,
	cout => \wavies[1].triangle_gen|Add1~29\);

-- Location: LCFF_X35_Y19_N29
\wavies[1].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(14));

-- Location: LCCOMB_X35_Y19_N30
\wavies[1].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~30_combout\ = (\wavies[1].triangle_gen|count\(15) & (!\wavies[1].triangle_gen|Add1~29\)) # (!\wavies[1].triangle_gen|count\(15) & ((\wavies[1].triangle_gen|Add1~29\) # (GND)))
-- \wavies[1].triangle_gen|Add1~31\ = CARRY((!\wavies[1].triangle_gen|Add1~29\) # (!\wavies[1].triangle_gen|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~29\,
	combout => \wavies[1].triangle_gen|Add1~30_combout\,
	cout => \wavies[1].triangle_gen|Add1~31\);

-- Location: LCFF_X35_Y19_N31
\wavies[1].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(15));

-- Location: LCCOMB_X35_Y18_N0
\wavies[1].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~32_combout\ = (\wavies[1].triangle_gen|count\(16) & (\wavies[1].triangle_gen|Add1~31\ $ (GND))) # (!\wavies[1].triangle_gen|count\(16) & (!\wavies[1].triangle_gen|Add1~31\ & VCC))
-- \wavies[1].triangle_gen|Add1~33\ = CARRY((\wavies[1].triangle_gen|count\(16) & !\wavies[1].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~31\,
	combout => \wavies[1].triangle_gen|Add1~32_combout\,
	cout => \wavies[1].triangle_gen|Add1~33\);

-- Location: LCFF_X35_Y18_N1
\wavies[1].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(16));

-- Location: LCCOMB_X35_Y18_N2
\wavies[1].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~34_combout\ = (\wavies[1].triangle_gen|count\(17) & (\wavies[1].triangle_gen|Add1~33\ & VCC)) # (!\wavies[1].triangle_gen|count\(17) & (!\wavies[1].triangle_gen|Add1~33\))
-- \wavies[1].triangle_gen|Add1~35\ = CARRY((!\wavies[1].triangle_gen|count\(17) & !\wavies[1].triangle_gen|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~33\,
	combout => \wavies[1].triangle_gen|Add1~34_combout\,
	cout => \wavies[1].triangle_gen|Add1~35\);

-- Location: LCFF_X35_Y18_N3
\wavies[1].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(17));

-- Location: LCCOMB_X35_Y18_N4
\wavies[1].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~36_combout\ = (\wavies[1].triangle_gen|count\(18) & ((GND) # (!\wavies[1].triangle_gen|Add1~35\))) # (!\wavies[1].triangle_gen|count\(18) & (\wavies[1].triangle_gen|Add1~35\ $ (GND)))
-- \wavies[1].triangle_gen|Add1~37\ = CARRY((\wavies[1].triangle_gen|count\(18)) # (!\wavies[1].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~35\,
	combout => \wavies[1].triangle_gen|Add1~36_combout\,
	cout => \wavies[1].triangle_gen|Add1~37\);

-- Location: LCFF_X35_Y18_N5
\wavies[1].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(18));

-- Location: LCCOMB_X35_Y18_N6
\wavies[1].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~38_combout\ = (\wavies[1].triangle_gen|count\(19) & (!\wavies[1].triangle_gen|Add1~37\)) # (!\wavies[1].triangle_gen|count\(19) & ((\wavies[1].triangle_gen|Add1~37\) # (GND)))
-- \wavies[1].triangle_gen|Add1~39\ = CARRY((!\wavies[1].triangle_gen|Add1~37\) # (!\wavies[1].triangle_gen|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~37\,
	combout => \wavies[1].triangle_gen|Add1~38_combout\,
	cout => \wavies[1].triangle_gen|Add1~39\);

-- Location: LCCOMB_X35_Y18_N8
\wavies[1].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~40_combout\ = (\wavies[1].triangle_gen|count\(20) & (\wavies[1].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[1].triangle_gen|count\(20) & (!\wavies[1].triangle_gen|Add1~39\ & VCC))
-- \wavies[1].triangle_gen|Add1~41\ = CARRY((\wavies[1].triangle_gen|count\(20) & !\wavies[1].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~39\,
	combout => \wavies[1].triangle_gen|Add1~40_combout\,
	cout => \wavies[1].triangle_gen|Add1~41\);

-- Location: LCFF_X35_Y18_N9
\wavies[1].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(20));

-- Location: LCCOMB_X32_Y21_N0
\reader|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~5_combout\ = (\reader|state\(3) & (!\reader|state\(4) & (\reader|state\(1) & \reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~5_combout\);

-- Location: LCCOMB_X32_Y21_N26
\reader|buttons_latch_next[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[6]~5_combout\ = (\reader|Decoder0~5_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(6)))))) # (!\reader|Decoder0~5_combout\ & 
-- (((\reader|buttons_latch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~5_combout\,
	datac => \reader|buttons_latch\(6),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[6]~5_combout\);

-- Location: LCFF_X32_Y21_N27
\reader|buttons_latch[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[6]~5_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(6));

-- Location: LCCOMB_X33_Y20_N30
\reader|buttons~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~7_combout\ = (!\reader|buttons_latch\(6) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(6),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~7_combout\);

-- Location: LCFF_X34_Y20_N5
\reader|buttons[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	sdata => \reader|buttons~7_combout\,
	sload => VCC,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(6));

-- Location: LCCOMB_X34_Y19_N30
\triangles[1][12]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][12]~167_combout\ = (\wavies[1].triangle_gen|count\(20) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(20),
	datad => \reader|buttons\(6),
	combout => \triangles[1][12]~167_combout\);

-- Location: LCFF_X35_Y18_N7
\wavies[1].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(19));

-- Location: LCCOMB_X35_Y20_N8
\triangles[1][11]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][11]~169_combout\ = (\wavies[1].triangle_gen|count\(19) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(19),
	datad => \reader|buttons\(6),
	combout => \triangles[1][11]~169_combout\);

-- Location: LCCOMB_X35_Y20_N30
\triangles[1][10]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][10]~171_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(18),
	combout => \triangles[1][10]~171_combout\);

-- Location: LCCOMB_X34_Y18_N18
\triangles[1][9]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][9]~173_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(17),
	combout => \triangles[1][9]~173_combout\);

-- Location: LCCOMB_X35_Y20_N0
\triangles[1][8]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][8]~175_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(16),
	combout => \triangles[1][8]~175_combout\);

-- Location: LCCOMB_X33_Y20_N6
\triangles[0][7]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][7]~176_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(15),
	combout => \triangles[0][7]~176_combout\);

-- Location: LCCOMB_X35_Y20_N12
\triangles[1][6]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][6]~179_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(14),
	combout => \triangles[1][6]~179_combout\);

-- Location: LCCOMB_X34_Y20_N4
\triangles[1][5]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][5]~181_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(13),
	combout => \triangles[1][5]~181_combout\);

-- Location: LCFF_X35_Y19_N25
\wavies[1].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(12));

-- Location: LCCOMB_X35_Y20_N18
\triangles[1][4]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][4]~183_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(12),
	combout => \triangles[1][4]~183_combout\);

-- Location: LCCOMB_X34_Y20_N0
\triangles[0][3]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][3]~184_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(11),
	combout => \triangles[0][3]~184_combout\);

-- Location: LCFF_X33_Y19_N21
\wavies[0].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(10));

-- Location: LCCOMB_X33_Y20_N24
\triangles[0][2]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][2]~186_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(10),
	combout => \triangles[0][2]~186_combout\);

-- Location: LCCOMB_X34_Y20_N2
\triangles[0][1]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][1]~188_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(9),
	combout => \triangles[0][1]~188_combout\);

-- Location: LCFF_X35_Y19_N17
\wavies[1].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(8));

-- Location: LCCOMB_X35_Y20_N14
\triangles[1][0]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][0]~191_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(8),
	combout => \triangles[1][0]~191_combout\);

-- Location: LCCOMB_X34_Y20_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\triangles[1][1]~189_combout\ & ((\triangles[0][1]~188_combout\ & (\Add0~1\ & VCC)) # (!\triangles[0][1]~188_combout\ & (!\Add0~1\)))) # (!\triangles[1][1]~189_combout\ & ((\triangles[0][1]~188_combout\ & (!\Add0~1\)) # 
-- (!\triangles[0][1]~188_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\triangles[1][1]~189_combout\ & (!\triangles[0][1]~188_combout\ & !\Add0~1\)) # (!\triangles[1][1]~189_combout\ & ((!\Add0~1\) # (!\triangles[0][1]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][1]~189_combout\,
	datab => \triangles[0][1]~188_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y20_N12
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\triangles[1][2]~187_combout\ $ (\triangles[0][2]~186_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\triangles[1][2]~187_combout\ & ((\triangles[0][2]~186_combout\) # (!\Add0~3\))) # (!\triangles[1][2]~187_combout\ & (\triangles[0][2]~186_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][2]~187_combout\,
	datab => \triangles[0][2]~186_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y20_N14
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\triangles[1][3]~185_combout\ & ((\triangles[0][3]~184_combout\ & (\Add0~5\ & VCC)) # (!\triangles[0][3]~184_combout\ & (!\Add0~5\)))) # (!\triangles[1][3]~185_combout\ & ((\triangles[0][3]~184_combout\ & (!\Add0~5\)) # 
-- (!\triangles[0][3]~184_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\triangles[1][3]~185_combout\ & (!\triangles[0][3]~184_combout\ & !\Add0~5\)) # (!\triangles[1][3]~185_combout\ & ((!\Add0~5\) # (!\triangles[0][3]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][3]~185_combout\,
	datab => \triangles[0][3]~184_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y20_N20
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\triangles[0][6]~178_combout\ $ (\triangles[1][6]~179_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\triangles[0][6]~178_combout\ & ((\triangles[1][6]~179_combout\) # (!\Add0~11\))) # (!\triangles[0][6]~178_combout\ & (\triangles[1][6]~179_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][6]~178_combout\,
	datab => \triangles[1][6]~179_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X34_Y20_N24
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\triangles[0][8]~174_combout\ $ (\triangles[1][8]~175_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\triangles[0][8]~174_combout\ & ((\triangles[1][8]~175_combout\) # (!\Add0~15\))) # (!\triangles[0][8]~174_combout\ & (\triangles[1][8]~175_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][8]~174_combout\,
	datab => \triangles[1][8]~175_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X34_Y20_N30
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\triangles[0][11]~168_combout\ & ((\triangles[1][11]~169_combout\ & (\Add0~21\ & VCC)) # (!\triangles[1][11]~169_combout\ & (!\Add0~21\)))) # (!\triangles[0][11]~168_combout\ & ((\triangles[1][11]~169_combout\ & (!\Add0~21\)) # 
-- (!\triangles[1][11]~169_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\triangles[0][11]~168_combout\ & (!\triangles[1][11]~169_combout\ & !\Add0~21\)) # (!\triangles[0][11]~168_combout\ & ((!\Add0~21\) # (!\triangles[1][11]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][11]~168_combout\,
	datab => \triangles[1][11]~169_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X34_Y19_N0
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\triangles[0][12]~166_combout\ $ (\triangles[1][12]~167_combout\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\triangles[0][12]~166_combout\ & ((\triangles[1][12]~167_combout\) # (!\Add0~23\))) # (!\triangles[0][12]~166_combout\ & (\triangles[1][12]~167_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][12]~166_combout\,
	datab => \triangles[1][12]~167_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X34_Y19_N2
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\triangles[1][13]~165_combout\ & ((\triangles[0][13]~164_combout\ & (\Add0~25\ & VCC)) # (!\triangles[0][13]~164_combout\ & (!\Add0~25\)))) # (!\triangles[1][13]~165_combout\ & ((\triangles[0][13]~164_combout\ & (!\Add0~25\)) # 
-- (!\triangles[0][13]~164_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\triangles[1][13]~165_combout\ & (!\triangles[0][13]~164_combout\ & !\Add0~25\)) # (!\triangles[1][13]~165_combout\ & ((!\Add0~25\) # (!\triangles[0][13]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][13]~165_combout\,
	datab => \triangles[0][13]~164_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X33_Y24_N16
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~8_combout\ $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~8_combout\ & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X33_Y24_N18
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\Add2~9\)) # (!\Add1~10_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~9\)) # (!\Add0~10_combout\ & ((!\Add2~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X33_Y24_N22
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add0~14_combout\ & ((\Add1~14_combout\ & (\Add2~13\ & VCC)) # (!\Add1~14_combout\ & (!\Add2~13\)))) # (!\Add0~14_combout\ & ((\Add1~14_combout\ & (!\Add2~13\)) # (!\Add1~14_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\Add0~14_combout\ & (!\Add1~14_combout\ & !\Add2~13\)) # (!\Add0~14_combout\ & ((!\Add2~13\) # (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X33_Y24_N24
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Add1~16_combout\ $ (\Add0~16_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Add1~16_combout\ & ((\Add0~16_combout\) # (!\Add2~15\))) # (!\Add1~16_combout\ & (\Add0~16_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X33_Y24_N26
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add0~18_combout\ & ((\Add1~18_combout\ & (\Add2~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add2~17\)))) # (!\Add0~18_combout\ & ((\Add1~18_combout\ & (!\Add2~17\)) # (!\Add1~18_combout\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Add0~18_combout\ & (!\Add1~18_combout\ & !\Add2~17\)) # (!\Add0~18_combout\ & ((!\Add2~17\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X33_Y24_N28
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Add0~20_combout\ $ (\Add1~20_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Add0~20_combout\ & ((\Add1~20_combout\) # (!\Add2~19\))) # (!\Add0~20_combout\ & (\Add1~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X33_Y23_N4
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\Add0~28_combout\ $ (\Add1~28_combout\ $ (!\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\Add0~28_combout\ & ((\Add1~28_combout\) # (!\Add2~27\))) # (!\Add0~28_combout\ & (\Add1~28_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add1~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X33_Y23_N6
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add0~30_combout\ & ((\Add1~30_combout\ & (\Add2~29\ & VCC)) # (!\Add1~30_combout\ & (!\Add2~29\)))) # (!\Add0~30_combout\ & ((\Add1~30_combout\ & (!\Add2~29\)) # (!\Add1~30_combout\ & ((\Add2~29\) # (GND)))))
-- \Add2~31\ = CARRY((\Add0~30_combout\ & (!\Add1~30_combout\ & !\Add2~29\)) # (!\Add0~30_combout\ & ((!\Add2~29\) # (!\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add1~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X29_Y22_N8
\wavies[5].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~6_combout\ = (\wavies[5].triangle_gen|count\(4) & (\wavies[5].triangle_gen|Add1~5\ & VCC)) # (!\wavies[5].triangle_gen|count\(4) & (!\wavies[5].triangle_gen|Add1~5\))
-- \wavies[5].triangle_gen|Add1~7\ = CARRY((!\wavies[5].triangle_gen|count\(4) & !\wavies[5].triangle_gen|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~5\,
	combout => \wavies[5].triangle_gen|Add1~6_combout\,
	cout => \wavies[5].triangle_gen|Add1~7\);

-- Location: LCFF_X29_Y22_N9
\wavies[5].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(4));

-- Location: LCCOMB_X29_Y22_N14
\wavies[5].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~12_combout\ = (\wavies[5].triangle_gen|count\(7) & ((GND) # (!\wavies[5].triangle_gen|Add1~11\))) # (!\wavies[5].triangle_gen|count\(7) & (\wavies[5].triangle_gen|Add1~11\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~13\ = CARRY((\wavies[5].triangle_gen|count\(7)) # (!\wavies[5].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~11\,
	combout => \wavies[5].triangle_gen|Add1~12_combout\,
	cout => \wavies[5].triangle_gen|Add1~13\);

-- Location: LCFF_X29_Y22_N15
\wavies[5].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(7));

-- Location: LCCOMB_X29_Y22_N16
\wavies[5].triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~14_combout\ = (\wavies[5].triangle_gen|count\(8) & (!\wavies[5].triangle_gen|Add1~13\)) # (!\wavies[5].triangle_gen|count\(8) & ((\wavies[5].triangle_gen|Add1~13\) # (GND)))
-- \wavies[5].triangle_gen|Add1~15\ = CARRY((!\wavies[5].triangle_gen|Add1~13\) # (!\wavies[5].triangle_gen|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(8),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~13\,
	combout => \wavies[5].triangle_gen|Add1~14_combout\,
	cout => \wavies[5].triangle_gen|Add1~15\);

-- Location: LCCOMB_X29_Y22_N18
\wavies[5].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~16_combout\ = (\wavies[5].triangle_gen|count\(9) & ((GND) # (!\wavies[5].triangle_gen|Add1~15\))) # (!\wavies[5].triangle_gen|count\(9) & (\wavies[5].triangle_gen|Add1~15\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~17\ = CARRY((\wavies[5].triangle_gen|count\(9)) # (!\wavies[5].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~15\,
	combout => \wavies[5].triangle_gen|Add1~16_combout\,
	cout => \wavies[5].triangle_gen|Add1~17\);

-- Location: LCFF_X29_Y22_N19
\wavies[5].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(9));

-- Location: LCCOMB_X29_Y22_N22
\wavies[5].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~20_combout\ = (\wavies[5].triangle_gen|count\(11) & ((GND) # (!\wavies[5].triangle_gen|Add1~19\))) # (!\wavies[5].triangle_gen|count\(11) & (\wavies[5].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~21\ = CARRY((\wavies[5].triangle_gen|count\(11)) # (!\wavies[5].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~19\,
	combout => \wavies[5].triangle_gen|Add1~20_combout\,
	cout => \wavies[5].triangle_gen|Add1~21\);

-- Location: LCFF_X29_Y22_N23
\wavies[5].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(11));

-- Location: LCCOMB_X29_Y22_N24
\wavies[5].triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~22_combout\ = (\wavies[5].triangle_gen|count\(12) & (\wavies[5].triangle_gen|Add1~21\ & VCC)) # (!\wavies[5].triangle_gen|count\(12) & (!\wavies[5].triangle_gen|Add1~21\))
-- \wavies[5].triangle_gen|Add1~23\ = CARRY((!\wavies[5].triangle_gen|count\(12) & !\wavies[5].triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(12),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~21\,
	combout => \wavies[5].triangle_gen|Add1~22_combout\,
	cout => \wavies[5].triangle_gen|Add1~23\);

-- Location: LCCOMB_X29_Y22_N26
\wavies[5].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~24_combout\ = (\wavies[5].triangle_gen|count\(13) & (\wavies[5].triangle_gen|Add1~23\ $ (GND))) # (!\wavies[5].triangle_gen|count\(13) & (!\wavies[5].triangle_gen|Add1~23\ & VCC))
-- \wavies[5].triangle_gen|Add1~25\ = CARRY((\wavies[5].triangle_gen|count\(13) & !\wavies[5].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~23\,
	combout => \wavies[5].triangle_gen|Add1~24_combout\,
	cout => \wavies[5].triangle_gen|Add1~25\);

-- Location: LCFF_X29_Y22_N27
\wavies[5].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(13));

-- Location: LCCOMB_X29_Y22_N28
\wavies[5].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~26_combout\ = (\wavies[5].triangle_gen|count\(14) & (\wavies[5].triangle_gen|Add1~25\ & VCC)) # (!\wavies[5].triangle_gen|count\(14) & (!\wavies[5].triangle_gen|Add1~25\))
-- \wavies[5].triangle_gen|Add1~27\ = CARRY((!\wavies[5].triangle_gen|count\(14) & !\wavies[5].triangle_gen|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~25\,
	combout => \wavies[5].triangle_gen|Add1~26_combout\,
	cout => \wavies[5].triangle_gen|Add1~27\);

-- Location: LCFF_X29_Y22_N29
\wavies[5].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(14));

-- Location: LCCOMB_X29_Y22_N30
\wavies[5].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~28_combout\ = (\wavies[5].triangle_gen|count\(15) & (\wavies[5].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[5].triangle_gen|count\(15) & (!\wavies[5].triangle_gen|Add1~27\ & VCC))
-- \wavies[5].triangle_gen|Add1~29\ = CARRY((\wavies[5].triangle_gen|count\(15) & !\wavies[5].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~27\,
	combout => \wavies[5].triangle_gen|Add1~28_combout\,
	cout => \wavies[5].triangle_gen|Add1~29\);

-- Location: LCFF_X29_Y22_N31
\wavies[5].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(15));

-- Location: LCCOMB_X29_Y21_N0
\wavies[5].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~30_combout\ = (\wavies[5].triangle_gen|count\(16) & (!\wavies[5].triangle_gen|Add1~29\)) # (!\wavies[5].triangle_gen|count\(16) & ((\wavies[5].triangle_gen|Add1~29\) # (GND)))
-- \wavies[5].triangle_gen|Add1~31\ = CARRY((!\wavies[5].triangle_gen|Add1~29\) # (!\wavies[5].triangle_gen|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~29\,
	combout => \wavies[5].triangle_gen|Add1~30_combout\,
	cout => \wavies[5].triangle_gen|Add1~31\);

-- Location: LCFF_X29_Y21_N1
\wavies[5].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(16));

-- Location: LCCOMB_X29_Y21_N2
\wavies[5].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~32_combout\ = (\wavies[5].triangle_gen|count\(17) & ((GND) # (!\wavies[5].triangle_gen|Add1~31\))) # (!\wavies[5].triangle_gen|count\(17) & (\wavies[5].triangle_gen|Add1~31\ $ (GND)))
-- \wavies[5].triangle_gen|Add1~33\ = CARRY((\wavies[5].triangle_gen|count\(17)) # (!\wavies[5].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~31\,
	combout => \wavies[5].triangle_gen|Add1~32_combout\,
	cout => \wavies[5].triangle_gen|Add1~33\);

-- Location: LCFF_X29_Y21_N3
\wavies[5].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(17));

-- Location: LCCOMB_X29_Y21_N4
\wavies[5].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~34_combout\ = (\wavies[5].triangle_gen|count\(18) & (!\wavies[5].triangle_gen|Add1~33\)) # (!\wavies[5].triangle_gen|count\(18) & ((\wavies[5].triangle_gen|Add1~33\) # (GND)))
-- \wavies[5].triangle_gen|Add1~35\ = CARRY((!\wavies[5].triangle_gen|Add1~33\) # (!\wavies[5].triangle_gen|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~33\,
	combout => \wavies[5].triangle_gen|Add1~34_combout\,
	cout => \wavies[5].triangle_gen|Add1~35\);

-- Location: LCFF_X29_Y21_N5
\wavies[5].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(18));

-- Location: LCCOMB_X29_Y21_N8
\wavies[5].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~38_combout\ = (\wavies[5].triangle_gen|count\(20) & (!\wavies[5].triangle_gen|Add1~37\)) # (!\wavies[5].triangle_gen|count\(20) & ((\wavies[5].triangle_gen|Add1~37\) # (GND)))
-- \wavies[5].triangle_gen|Add1~39\ = CARRY((!\wavies[5].triangle_gen|Add1~37\) # (!\wavies[5].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~37\,
	combout => \wavies[5].triangle_gen|Add1~38_combout\,
	cout => \wavies[5].triangle_gen|Add1~39\);

-- Location: LCFF_X29_Y21_N9
\wavies[5].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(20));

-- Location: LCCOMB_X29_Y21_N10
\wavies[5].triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~40_combout\ = (\wavies[5].triangle_gen|count\(21) & (\wavies[5].triangle_gen|Add1~39\ $ (GND))) # (!\wavies[5].triangle_gen|count\(21) & (!\wavies[5].triangle_gen|Add1~39\ & VCC))
-- \wavies[5].triangle_gen|Add1~41\ = CARRY((\wavies[5].triangle_gen|count\(21) & !\wavies[5].triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(21),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~39\,
	combout => \wavies[5].triangle_gen|Add1~40_combout\,
	cout => \wavies[5].triangle_gen|Add1~41\);

-- Location: LCFF_X29_Y21_N11
\wavies[5].triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(21));

-- Location: LCCOMB_X34_Y21_N28
\triangles[5][13]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][13]~69_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(21),
	combout => \triangles[5][13]~69_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NES_DO~I\ : cycloneii_io
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
	padio => ww_NES_DO,
	combout => \NES_DO~combout\);

-- Location: LCCOMB_X32_Y21_N4
\reader|buttons_latch_next[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[3]~2_combout\ = (\reader|Decoder0~2_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(3)))))) # (!\reader|Decoder0~2_combout\ & 
-- (((\reader|buttons_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|Decoder0~2_combout\,
	datab => \NES_DO~combout\,
	datac => \reader|buttons_latch\(3),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[3]~2_combout\);

-- Location: LCFF_X32_Y21_N5
\reader|buttons_latch[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[3]~2_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(3));

-- Location: LCCOMB_X30_Y21_N12
\reader|buttons~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~4_combout\ = (!\reader|buttons_latch\(3) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(3),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~4_combout\);

-- Location: LCFF_X30_Y21_N13
\reader|buttons[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons~4_combout\,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(3));

-- Location: LCCOMB_X34_Y21_N26
\triangles[5][12]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][12]~71_combout\ = (\wavies[5].triangle_gen|count\(20) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(20),
	datad => \reader|buttons\(3),
	combout => \triangles[5][12]~71_combout\);

-- Location: LCCOMB_X32_Y21_N28
\reader|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder0~1_combout\ = (!\reader|state\(3) & (!\reader|state\(4) & (\reader|state\(1) & \reader|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datab => \reader|state\(4),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder0~1_combout\);

-- Location: LCCOMB_X32_Y21_N2
\reader|buttons_latch_next[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons_latch_next[2]~1_combout\ = (\reader|Decoder0~1_combout\ & ((\reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\reader|WideOr1~1_combout\ & ((\reader|buttons_latch\(2)))))) # (!\reader|Decoder0~1_combout\ & 
-- (((\reader|buttons_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NES_DO~combout\,
	datab => \reader|Decoder0~1_combout\,
	datac => \reader|buttons_latch\(2),
	datad => \reader|WideOr1~1_combout\,
	combout => \reader|buttons_latch_next[2]~1_combout\);

-- Location: LCFF_X32_Y21_N3
\reader|buttons_latch[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	datain => \reader|buttons_latch_next[2]~1_combout\,
	sclr => \r|ALT_INV_Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons_latch\(2));

-- Location: LCCOMB_X35_Y21_N16
\reader|buttons~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|buttons~3_combout\ = (!\reader|buttons_latch\(2) & \r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons_latch\(2),
	datad => \r|Equal0~4_combout\,
	combout => \reader|buttons~3_combout\);

-- Location: LCFF_X34_Y21_N25
\reader|buttons[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reader|div|LessThan0~clkctrl_outclk\,
	sdata => \reader|buttons~3_combout\,
	sload => VCC,
	ena => \reader|buttons[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|buttons\(2));

-- Location: LCCOMB_X35_Y22_N0
\triangles[4][11]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][11]~72_combout\ = (\wavies[4].triangle_gen|count\(19) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(19),
	datad => \reader|buttons\(2),
	combout => \triangles[4][11]~72_combout\);

-- Location: LCCOMB_X36_Y22_N8
\wavies[4].triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~6_combout\ = (\wavies[4].triangle_gen|count\(4) & (!\wavies[4].triangle_gen|Add1~5\)) # (!\wavies[4].triangle_gen|count\(4) & ((\wavies[4].triangle_gen|Add1~5\) # (GND)))
-- \wavies[4].triangle_gen|Add1~7\ = CARRY((!\wavies[4].triangle_gen|Add1~5\) # (!\wavies[4].triangle_gen|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(4),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~5\,
	combout => \wavies[4].triangle_gen|Add1~6_combout\,
	cout => \wavies[4].triangle_gen|Add1~7\);

-- Location: LCFF_X36_Y22_N9
\wavies[4].triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(4));

-- Location: LCCOMB_X36_Y22_N14
\wavies[4].triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~12_combout\ = (\wavies[4].triangle_gen|count\(7) & (\wavies[4].triangle_gen|Add1~11\ $ (GND))) # (!\wavies[4].triangle_gen|count\(7) & (!\wavies[4].triangle_gen|Add1~11\ & VCC))
-- \wavies[4].triangle_gen|Add1~13\ = CARRY((\wavies[4].triangle_gen|count\(7) & !\wavies[4].triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(7),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~11\,
	combout => \wavies[4].triangle_gen|Add1~12_combout\,
	cout => \wavies[4].triangle_gen|Add1~13\);

-- Location: LCFF_X36_Y22_N15
\wavies[4].triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(7));

-- Location: LCCOMB_X36_Y22_N18
\wavies[4].triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~16_combout\ = (\wavies[4].triangle_gen|count\(9) & (\wavies[4].triangle_gen|Add1~15\ $ (GND))) # (!\wavies[4].triangle_gen|count\(9) & (!\wavies[4].triangle_gen|Add1~15\ & VCC))
-- \wavies[4].triangle_gen|Add1~17\ = CARRY((\wavies[4].triangle_gen|count\(9) & !\wavies[4].triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(9),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~15\,
	combout => \wavies[4].triangle_gen|Add1~16_combout\,
	cout => \wavies[4].triangle_gen|Add1~17\);

-- Location: LCFF_X36_Y22_N19
\wavies[4].triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(9));

-- Location: LCCOMB_X36_Y22_N20
\wavies[4].triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~18_combout\ = (\wavies[4].triangle_gen|count\(10) & (\wavies[4].triangle_gen|Add1~17\ & VCC)) # (!\wavies[4].triangle_gen|count\(10) & (!\wavies[4].triangle_gen|Add1~17\))
-- \wavies[4].triangle_gen|Add1~19\ = CARRY((!\wavies[4].triangle_gen|count\(10) & !\wavies[4].triangle_gen|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(10),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~17\,
	combout => \wavies[4].triangle_gen|Add1~18_combout\,
	cout => \wavies[4].triangle_gen|Add1~19\);

-- Location: LCCOMB_X36_Y22_N22
\wavies[4].triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~20_combout\ = (\wavies[4].triangle_gen|count\(11) & ((GND) # (!\wavies[4].triangle_gen|Add1~19\))) # (!\wavies[4].triangle_gen|count\(11) & (\wavies[4].triangle_gen|Add1~19\ $ (GND)))
-- \wavies[4].triangle_gen|Add1~21\ = CARRY((\wavies[4].triangle_gen|count\(11)) # (!\wavies[4].triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(11),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~19\,
	combout => \wavies[4].triangle_gen|Add1~20_combout\,
	cout => \wavies[4].triangle_gen|Add1~21\);

-- Location: LCFF_X36_Y22_N23
\wavies[4].triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(11));

-- Location: LCCOMB_X36_Y22_N26
\wavies[4].triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~24_combout\ = (\wavies[4].triangle_gen|count\(13) & ((GND) # (!\wavies[4].triangle_gen|Add1~23\))) # (!\wavies[4].triangle_gen|count\(13) & (\wavies[4].triangle_gen|Add1~23\ $ (GND)))
-- \wavies[4].triangle_gen|Add1~25\ = CARRY((\wavies[4].triangle_gen|count\(13)) # (!\wavies[4].triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(13),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~23\,
	combout => \wavies[4].triangle_gen|Add1~24_combout\,
	cout => \wavies[4].triangle_gen|Add1~25\);

-- Location: LCFF_X36_Y22_N27
\wavies[4].triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(13));

-- Location: LCCOMB_X36_Y22_N28
\wavies[4].triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~26_combout\ = (\wavies[4].triangle_gen|count\(14) & (!\wavies[4].triangle_gen|Add1~25\)) # (!\wavies[4].triangle_gen|count\(14) & ((\wavies[4].triangle_gen|Add1~25\) # (GND)))
-- \wavies[4].triangle_gen|Add1~27\ = CARRY((!\wavies[4].triangle_gen|Add1~25\) # (!\wavies[4].triangle_gen|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(14),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~25\,
	combout => \wavies[4].triangle_gen|Add1~26_combout\,
	cout => \wavies[4].triangle_gen|Add1~27\);

-- Location: LCFF_X36_Y22_N29
\wavies[4].triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(14));

-- Location: LCCOMB_X36_Y22_N30
\wavies[4].triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~28_combout\ = (\wavies[4].triangle_gen|count\(15) & (\wavies[4].triangle_gen|Add1~27\ $ (GND))) # (!\wavies[4].triangle_gen|count\(15) & (!\wavies[4].triangle_gen|Add1~27\ & VCC))
-- \wavies[4].triangle_gen|Add1~29\ = CARRY((\wavies[4].triangle_gen|count\(15) & !\wavies[4].triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(15),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~27\,
	combout => \wavies[4].triangle_gen|Add1~28_combout\,
	cout => \wavies[4].triangle_gen|Add1~29\);

-- Location: LCFF_X36_Y22_N31
\wavies[4].triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(15));

-- Location: LCCOMB_X36_Y21_N0
\wavies[4].triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~30_combout\ = (\wavies[4].triangle_gen|count\(16) & (\wavies[4].triangle_gen|Add1~29\ & VCC)) # (!\wavies[4].triangle_gen|count\(16) & (!\wavies[4].triangle_gen|Add1~29\))
-- \wavies[4].triangle_gen|Add1~31\ = CARRY((!\wavies[4].triangle_gen|count\(16) & !\wavies[4].triangle_gen|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(16),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~29\,
	combout => \wavies[4].triangle_gen|Add1~30_combout\,
	cout => \wavies[4].triangle_gen|Add1~31\);

-- Location: LCFF_X36_Y21_N1
\wavies[4].triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(16));

-- Location: LCCOMB_X36_Y21_N2
\wavies[4].triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~32_combout\ = (\wavies[4].triangle_gen|count\(17) & (\wavies[4].triangle_gen|Add1~31\ $ (GND))) # (!\wavies[4].triangle_gen|count\(17) & (!\wavies[4].triangle_gen|Add1~31\ & VCC))
-- \wavies[4].triangle_gen|Add1~33\ = CARRY((\wavies[4].triangle_gen|count\(17) & !\wavies[4].triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(17),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~31\,
	combout => \wavies[4].triangle_gen|Add1~32_combout\,
	cout => \wavies[4].triangle_gen|Add1~33\);

-- Location: LCFF_X36_Y21_N3
\wavies[4].triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(17));

-- Location: LCCOMB_X36_Y21_N4
\wavies[4].triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~34_combout\ = (\wavies[4].triangle_gen|count\(18) & (!\wavies[4].triangle_gen|Add1~33\)) # (!\wavies[4].triangle_gen|count\(18) & ((\wavies[4].triangle_gen|Add1~33\) # (GND)))
-- \wavies[4].triangle_gen|Add1~35\ = CARRY((!\wavies[4].triangle_gen|Add1~33\) # (!\wavies[4].triangle_gen|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(18),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~33\,
	combout => \wavies[4].triangle_gen|Add1~34_combout\,
	cout => \wavies[4].triangle_gen|Add1~35\);

-- Location: LCFF_X36_Y21_N5
\wavies[4].triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(18));

-- Location: LCCOMB_X35_Y21_N0
\triangles[4][10]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][10]~74_combout\ = (\reader|buttons\(2) & \wavies[4].triangle_gen|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(2),
	datad => \wavies[4].triangle_gen|count\(18),
	combout => \triangles[4][10]~74_combout\);

-- Location: LCCOMB_X35_Y21_N10
\triangles[4][9]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][9]~76_combout\ = (\wavies[4].triangle_gen|count\(17) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(17),
	datad => \reader|buttons\(2),
	combout => \triangles[4][9]~76_combout\);

-- Location: LCCOMB_X30_Y22_N6
\triangles[5][8]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][8]~79_combout\ = (\wavies[5].triangle_gen|count\(16) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(16),
	datad => \reader|buttons\(3),
	combout => \triangles[5][8]~79_combout\);

-- Location: LCCOMB_X35_Y22_N20
\triangles[4][7]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][7]~80_combout\ = (\wavies[4].triangle_gen|count\(15) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(15),
	datad => \reader|buttons\(2),
	combout => \triangles[4][7]~80_combout\);

-- Location: LCCOMB_X35_Y22_N30
\triangles[4][6]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][6]~82_combout\ = (\wavies[4].triangle_gen|count\(14) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(14),
	datad => \reader|buttons\(2),
	combout => \triangles[4][6]~82_combout\);

-- Location: LCCOMB_X35_Y22_N28
\triangles[4][5]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][5]~84_combout\ = (\wavies[4].triangle_gen|count\(13) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(13),
	datad => \reader|buttons\(2),
	combout => \triangles[4][5]~84_combout\);

-- Location: LCFF_X29_Y22_N25
\wavies[5].triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(12));

-- Location: LCCOMB_X30_Y22_N26
\triangles[5][4]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][4]~87_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(12),
	combout => \triangles[5][4]~87_combout\);

-- Location: LCCOMB_X30_Y22_N28
\triangles[5][3]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][3]~89_combout\ = (\wavies[5].triangle_gen|count\(11) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(11),
	datad => \reader|buttons\(3),
	combout => \triangles[5][3]~89_combout\);

-- Location: LCFF_X36_Y22_N21
\wavies[4].triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(10));

-- Location: LCCOMB_X35_Y22_N14
\triangles[4][2]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][2]~90_combout\ = (\wavies[4].triangle_gen|count\(10) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(10),
	datad => \reader|buttons\(2),
	combout => \triangles[4][2]~90_combout\);

-- Location: LCCOMB_X35_Y22_N24
\triangles[4][1]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][1]~92_combout\ = (\wavies[4].triangle_gen|count\(9) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(9),
	datad => \reader|buttons\(2),
	combout => \triangles[4][1]~92_combout\);

-- Location: LCFF_X29_Y22_N17
\wavies[5].triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(8));

-- Location: LCCOMB_X30_Y22_N10
\triangles[5][0]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][0]~95_combout\ = (\reader|buttons\(3) & \wavies[5].triangle_gen|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(3),
	datad => \wavies[5].triangle_gen|count\(8),
	combout => \triangles[5][0]~95_combout\);

-- Location: LCCOMB_X34_Y22_N8
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\triangles[4][0]~94_combout\ & (\triangles[5][0]~95_combout\ $ (VCC))) # (!\triangles[4][0]~94_combout\ & (\triangles[5][0]~95_combout\ & VCC))
-- \Add3~1\ = CARRY((\triangles[4][0]~94_combout\ & \triangles[5][0]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][0]~94_combout\,
	datab => \triangles[5][0]~95_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X34_Y22_N10
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\triangles[5][1]~93_combout\ & ((\triangles[4][1]~92_combout\ & (\Add3~1\ & VCC)) # (!\triangles[4][1]~92_combout\ & (!\Add3~1\)))) # (!\triangles[5][1]~93_combout\ & ((\triangles[4][1]~92_combout\ & (!\Add3~1\)) # 
-- (!\triangles[4][1]~92_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\triangles[5][1]~93_combout\ & (!\triangles[4][1]~92_combout\ & !\Add3~1\)) # (!\triangles[5][1]~93_combout\ & ((!\Add3~1\) # (!\triangles[4][1]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][1]~93_combout\,
	datab => \triangles[4][1]~92_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X34_Y22_N12
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\triangles[5][2]~91_combout\ $ (\triangles[4][2]~90_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\triangles[5][2]~91_combout\ & ((\triangles[4][2]~90_combout\) # (!\Add3~3\))) # (!\triangles[5][2]~91_combout\ & (\triangles[4][2]~90_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][2]~91_combout\,
	datab => \triangles[4][2]~90_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X34_Y22_N14
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\triangles[4][3]~88_combout\ & ((\triangles[5][3]~89_combout\ & (\Add3~5\ & VCC)) # (!\triangles[5][3]~89_combout\ & (!\Add3~5\)))) # (!\triangles[4][3]~88_combout\ & ((\triangles[5][3]~89_combout\ & (!\Add3~5\)) # 
-- (!\triangles[5][3]~89_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\triangles[4][3]~88_combout\ & (!\triangles[5][3]~89_combout\ & !\Add3~5\)) # (!\triangles[4][3]~88_combout\ & ((!\Add3~5\) # (!\triangles[5][3]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][3]~88_combout\,
	datab => \triangles[5][3]~89_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X34_Y22_N20
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\triangles[5][6]~83_combout\ $ (\triangles[4][6]~82_combout\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\triangles[5][6]~83_combout\ & ((\triangles[4][6]~82_combout\) # (!\Add3~11\))) # (!\triangles[5][6]~83_combout\ & (\triangles[4][6]~82_combout\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][6]~83_combout\,
	datab => \triangles[4][6]~82_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X34_Y22_N30
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\triangles[5][11]~73_combout\ & ((\triangles[4][11]~72_combout\ & (\Add3~21\ & VCC)) # (!\triangles[4][11]~72_combout\ & (!\Add3~21\)))) # (!\triangles[5][11]~73_combout\ & ((\triangles[4][11]~72_combout\ & (!\Add3~21\)) # 
-- (!\triangles[4][11]~72_combout\ & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((\triangles[5][11]~73_combout\ & (!\triangles[4][11]~72_combout\ & !\Add3~21\)) # (!\triangles[5][11]~73_combout\ & ((!\Add3~21\) # (!\triangles[4][11]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][11]~73_combout\,
	datab => \triangles[4][11]~72_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X34_Y21_N0
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((\triangles[4][12]~70_combout\ $ (\triangles[5][12]~71_combout\ $ (!\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((\triangles[4][12]~70_combout\ & ((\triangles[5][12]~71_combout\) # (!\Add3~23\))) # (!\triangles[4][12]~70_combout\ & (\triangles[5][12]~71_combout\ & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][12]~70_combout\,
	datab => \triangles[5][12]~71_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X34_Y21_N2
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\triangles[4][13]~68_combout\ & ((\triangles[5][13]~69_combout\ & (\Add3~25\ & VCC)) # (!\triangles[5][13]~69_combout\ & (!\Add3~25\)))) # (!\triangles[4][13]~68_combout\ & ((\triangles[5][13]~69_combout\ & (!\Add3~25\)) # 
-- (!\triangles[5][13]~69_combout\ & ((\Add3~25\) # (GND)))))
-- \Add3~27\ = CARRY((\triangles[4][13]~68_combout\ & (!\triangles[5][13]~69_combout\ & !\Add3~25\)) # (!\triangles[4][13]~68_combout\ & ((!\Add3~25\) # (!\triangles[5][13]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[4][13]~68_combout\,
	datab => \triangles[5][13]~69_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X34_Y24_N16
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add3~8_combout\ $ (\Add2~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add3~8_combout\ & ((\Add2~8_combout\) # (!\Add4~7\))) # (!\Add3~8_combout\ & (\Add2~8_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X34_Y24_N18
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add3~10_combout\ & ((\Add2~10_combout\ & (\Add4~9\ & VCC)) # (!\Add2~10_combout\ & (!\Add4~9\)))) # (!\Add3~10_combout\ & ((\Add2~10_combout\ & (!\Add4~9\)) # (!\Add2~10_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Add3~10_combout\ & (!\Add2~10_combout\ & !\Add4~9\)) # (!\Add3~10_combout\ & ((!\Add4~9\) # (!\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X34_Y24_N22
\Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add3~14_combout\ & ((\Add2~14_combout\ & (\Add4~13\ & VCC)) # (!\Add2~14_combout\ & (!\Add4~13\)))) # (!\Add3~14_combout\ & ((\Add2~14_combout\ & (!\Add4~13\)) # (!\Add2~14_combout\ & ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((\Add3~14_combout\ & (!\Add2~14_combout\ & !\Add4~13\)) # (!\Add3~14_combout\ & ((!\Add4~13\) # (!\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X34_Y24_N24
\Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((\Add3~16_combout\ $ (\Add2~16_combout\ $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((\Add3~16_combout\ & ((\Add2~16_combout\) # (!\Add4~15\))) # (!\Add3~16_combout\ & (\Add2~16_combout\ & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X34_Y24_N26
\Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Add3~18_combout\ & ((\Add2~18_combout\ & (\Add4~17\ & VCC)) # (!\Add2~18_combout\ & (!\Add4~17\)))) # (!\Add3~18_combout\ & ((\Add2~18_combout\ & (!\Add4~17\)) # (!\Add2~18_combout\ & ((\Add4~17\) # (GND)))))
-- \Add4~19\ = CARRY((\Add3~18_combout\ & (!\Add2~18_combout\ & !\Add4~17\)) # (!\Add3~18_combout\ & ((!\Add4~17\) # (!\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X34_Y24_N28
\Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((\Add3~20_combout\ $ (\Add2~20_combout\ $ (!\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((\Add3~20_combout\ & ((\Add2~20_combout\) # (!\Add4~19\))) # (!\Add3~20_combout\ & (\Add2~20_combout\ & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X34_Y23_N4
\Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((\Add3~28_combout\ $ (\Add2~28_combout\ $ (!\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((\Add3~28_combout\ & ((\Add2~28_combout\) # (!\Add4~27\))) # (!\Add3~28_combout\ & (\Add2~28_combout\ & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X34_Y23_N6
\Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\Add3~30_combout\ & ((\Add2~30_combout\ & (\Add4~29\ & VCC)) # (!\Add2~30_combout\ & (!\Add4~29\)))) # (!\Add3~30_combout\ & ((\Add2~30_combout\ & (!\Add4~29\)) # (!\Add2~30_combout\ & ((\Add4~29\) # (GND)))))
-- \Add4~31\ = CARRY((\Add3~30_combout\ & (!\Add2~30_combout\ & !\Add4~29\)) # (!\Add3~30_combout\ & ((!\Add4~29\) # (!\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X35_Y24_N8
\Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((\Add4~0_combout\ & \Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X35_Y24_N10
\Add6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~3_cout\ = CARRY((\Add4~2_combout\ & (!\Add5~2_combout\ & !\Add6~1_cout\)) # (!\Add4~2_combout\ & ((!\Add6~1_cout\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	cout => \Add6~3_cout\);

-- Location: LCCOMB_X35_Y23_N14
\d[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[17]~34_combout\ = (\Add4~38_combout\ & ((\Add5~38_combout\ & (\d[16]~33\ & VCC)) # (!\Add5~38_combout\ & (!\d[16]~33\)))) # (!\Add4~38_combout\ & ((\Add5~38_combout\ & (!\d[16]~33\)) # (!\Add5~38_combout\ & ((\d[16]~33\) # (GND)))))
-- \d[17]~35\ = CARRY((\Add4~38_combout\ & (!\Add5~38_combout\ & !\d[16]~33\)) # (!\Add4~38_combout\ & ((!\d[16]~33\) # (!\Add5~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~38_combout\,
	datab => \Add5~38_combout\,
	datad => VCC,
	cin => \d[16]~33\,
	combout => \d[17]~34_combout\,
	cout => \d[17]~35\);

-- Location: LCCOMB_X35_Y23_N28
\i2s|data_shift~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~10_combout\ = (\i2s|data_shift\(23) & (((\i2s|data_shift~5_combout\ & \d[17]~34_combout\)) # (!\i2s|bitcount[0]~6_combout\))) # (!\i2s|data_shift\(23) & (\i2s|data_shift~5_combout\ & (\d[17]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(23),
	datab => \i2s|data_shift~5_combout\,
	datac => \d[17]~34_combout\,
	datad => \i2s|bitcount[0]~6_combout\,
	combout => \i2s|data_shift~10_combout\);

-- Location: LCFF_X35_Y23_N29
\i2s|data_shift[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~10_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(24));

-- Location: LCCOMB_X31_Y25_N14
\wavies[3].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~44_combout\ = (\wavies[3].triangle_gen|count\(23) & (\wavies[3].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[3].triangle_gen|count\(23) & (!\wavies[3].triangle_gen|Add1~43\ & VCC))
-- \wavies[3].triangle_gen|Add1~45\ = CARRY((\wavies[3].triangle_gen|count\(23) & !\wavies[3].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~43\,
	combout => \wavies[3].triangle_gen|Add1~44_combout\,
	cout => \wavies[3].triangle_gen|Add1~45\);

-- Location: LCFF_X31_Y25_N15
\wavies[3].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(23));

-- Location: LCCOMB_X31_Y25_N16
\wavies[3].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~46_combout\ = (\wavies[3].triangle_gen|count\(24) & (!\wavies[3].triangle_gen|Add1~45\)) # (!\wavies[3].triangle_gen|count\(24) & ((\wavies[3].triangle_gen|Add1~45\) # (GND)))
-- \wavies[3].triangle_gen|Add1~47\ = CARRY((!\wavies[3].triangle_gen|Add1~45\) # (!\wavies[3].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~45\,
	combout => \wavies[3].triangle_gen|Add1~46_combout\,
	cout => \wavies[3].triangle_gen|Add1~47\);

-- Location: LCCOMB_X31_Y25_N18
\wavies[3].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~48_combout\ = (\wavies[3].triangle_gen|count\(25) & (\wavies[3].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[3].triangle_gen|count\(25) & (!\wavies[3].triangle_gen|Add1~47\ & VCC))
-- \wavies[3].triangle_gen|Add1~49\ = CARRY((\wavies[3].triangle_gen|count\(25) & !\wavies[3].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~47\,
	combout => \wavies[3].triangle_gen|Add1~48_combout\,
	cout => \wavies[3].triangle_gen|Add1~49\);

-- Location: LCFF_X31_Y25_N19
\wavies[3].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(25));

-- Location: LCCOMB_X31_Y25_N22
\wavies[3].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~52_combout\ = (\wavies[3].triangle_gen|count\(27) & (\wavies[3].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[3].triangle_gen|count\(27) & (!\wavies[3].triangle_gen|Add1~51\ & VCC))
-- \wavies[3].triangle_gen|Add1~53\ = CARRY((\wavies[3].triangle_gen|count\(27) & !\wavies[3].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~51\,
	combout => \wavies[3].triangle_gen|Add1~52_combout\,
	cout => \wavies[3].triangle_gen|Add1~53\);

-- Location: LCFF_X31_Y25_N23
\wavies[3].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(27));

-- Location: LCCOMB_X31_Y25_N24
\wavies[3].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~54_combout\ = (\wavies[3].triangle_gen|count\(28) & (!\wavies[3].triangle_gen|Add1~53\)) # (!\wavies[3].triangle_gen|count\(28) & ((\wavies[3].triangle_gen|Add1~53\) # (GND)))
-- \wavies[3].triangle_gen|Add1~55\ = CARRY((!\wavies[3].triangle_gen|Add1~53\) # (!\wavies[3].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~53\,
	combout => \wavies[3].triangle_gen|Add1~54_combout\,
	cout => \wavies[3].triangle_gen|Add1~55\);

-- Location: LCCOMB_X32_Y25_N20
\wavies[3].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|count~1_combout\ = (\wavies[3].triangle_gen|Add1~56_combout\ & (((\wavies[3].triangle_gen|Add1~58_combout\)))) # (!\wavies[3].triangle_gen|Add1~56_combout\ & ((\wavies[3].triangle_gen|Add1~58_combout\ & 
-- ((\wavies[3].triangle_gen|Add1~54_combout\))) # (!\wavies[3].triangle_gen|Add1~58_combout\ & (\wavies[3].triangle_gen|Add1~60_combout\ & !\wavies[3].triangle_gen|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|Add1~60_combout\,
	datab => \wavies[3].triangle_gen|Add1~56_combout\,
	datac => \wavies[3].triangle_gen|Add1~58_combout\,
	datad => \wavies[3].triangle_gen|Add1~54_combout\,
	combout => \wavies[3].triangle_gen|count~1_combout\);

-- Location: LCFF_X32_Y25_N21
\wavies[3].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(30));

-- Location: LCCOMB_X31_Y25_N26
\wavies[3].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~56_combout\ = (\wavies[3].triangle_gen|count\(29) & (\wavies[3].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[3].triangle_gen|count\(29) & (!\wavies[3].triangle_gen|Add1~55\ & VCC))
-- \wavies[3].triangle_gen|Add1~57\ = CARRY((\wavies[3].triangle_gen|count\(29) & !\wavies[3].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~55\,
	combout => \wavies[3].triangle_gen|Add1~56_combout\,
	cout => \wavies[3].triangle_gen|Add1~57\);

-- Location: LCCOMB_X31_Y25_N28
\wavies[3].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~58_combout\ = (\wavies[3].triangle_gen|count\(30) & (!\wavies[3].triangle_gen|Add1~57\)) # (!\wavies[3].triangle_gen|count\(30) & ((\wavies[3].triangle_gen|Add1~57\) # (GND)))
-- \wavies[3].triangle_gen|Add1~59\ = CARRY((!\wavies[3].triangle_gen|Add1~57\) # (!\wavies[3].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[3].triangle_gen|Add1~57\,
	combout => \wavies[3].triangle_gen|Add1~58_combout\,
	cout => \wavies[3].triangle_gen|Add1~59\);

-- Location: LCCOMB_X32_Y25_N28
\wavies[3].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|count~0_combout\ = (\wavies[3].triangle_gen|Add1~60_combout\ & ((\wavies[3].triangle_gen|Add1~56_combout\) # ((\wavies[3].triangle_gen|Add1~58_combout\) # (\wavies[3].triangle_gen|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|Add1~60_combout\,
	datab => \wavies[3].triangle_gen|Add1~56_combout\,
	datac => \wavies[3].triangle_gen|Add1~58_combout\,
	datad => \wavies[3].triangle_gen|Add1~54_combout\,
	combout => \wavies[3].triangle_gen|count~0_combout\);

-- Location: LCFF_X32_Y25_N29
\wavies[3].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(31));

-- Location: LCCOMB_X31_Y25_N30
\wavies[3].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|Add1~60_combout\ = \wavies[3].triangle_gen|Add1~59\ $ (!\wavies[3].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[3].triangle_gen|count\(31),
	cin => \wavies[3].triangle_gen|Add1~59\,
	combout => \wavies[3].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X32_Y25_N12
\wavies[3].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|count~2_combout\ = (\wavies[3].triangle_gen|Add1~56_combout\ & (((\wavies[3].triangle_gen|Add1~54_combout\)))) # (!\wavies[3].triangle_gen|Add1~56_combout\ & (!\wavies[3].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[3].triangle_gen|Add1~58_combout\) # (\wavies[3].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|Add1~58_combout\,
	datab => \wavies[3].triangle_gen|Add1~56_combout\,
	datac => \wavies[3].triangle_gen|Add1~60_combout\,
	datad => \wavies[3].triangle_gen|Add1~54_combout\,
	combout => \wavies[3].triangle_gen|count~2_combout\);

-- Location: LCFF_X32_Y25_N13
\wavies[3].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(29));

-- Location: LCCOMB_X32_Y25_N0
\wavies[3].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[3].triangle_gen|count~3_combout\ = (!\wavies[3].triangle_gen|Add1~54_combout\ & ((\wavies[3].triangle_gen|Add1~60_combout\) # ((\wavies[3].triangle_gen|Add1~56_combout\) # (\wavies[3].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[3].triangle_gen|Add1~60_combout\,
	datab => \wavies[3].triangle_gen|Add1~56_combout\,
	datac => \wavies[3].triangle_gen|Add1~58_combout\,
	datad => \wavies[3].triangle_gen|Add1~54_combout\,
	combout => \wavies[3].triangle_gen|count~3_combout\);

-- Location: LCFF_X32_Y25_N1
\wavies[3].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(28));

-- Location: LCCOMB_X32_Y25_N18
\triangles[3][20]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][20]~103_combout\ = (\wavies[3].triangle_gen|count\(28) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[3].triangle_gen|count\(28),
	datad => \reader|buttons\(7),
	combout => \triangles[3][20]~103_combout\);

-- Location: LCCOMB_X31_Y23_N26
\triangles[3][19]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][19]~105_combout\ = (\wavies[3].triangle_gen|count\(27) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(27),
	datad => \reader|buttons\(7),
	combout => \triangles[3][19]~105_combout\);

-- Location: LCCOMB_X31_Y23_N16
\triangles[2][18]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][18]~106_combout\ = (\wavies[2].triangle_gen|count\(26) & \reader|buttons\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|count\(26),
	datac => \reader|buttons\(4),
	combout => \triangles[2][18]~106_combout\);

-- Location: LCCOMB_X31_Y23_N22
\triangles[3][17]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][17]~109_combout\ = (\wavies[3].triangle_gen|count\(25) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(25),
	datad => \reader|buttons\(7),
	combout => \triangles[3][17]~109_combout\);

-- Location: LCFF_X31_Y25_N17
\wavies[3].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[3].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[3].triangle_gen|count\(24));

-- Location: LCCOMB_X31_Y23_N6
\triangles[3][16]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[3][16]~111_combout\ = (\wavies[3].triangle_gen|count\(24) & \reader|buttons\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[3].triangle_gen|count\(24),
	datad => \reader|buttons\(7),
	combout => \triangles[3][16]~111_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\triangles[2][20]~102_combout\ $ (\triangles[3][20]~103_combout\ $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\triangles[2][20]~102_combout\ & ((\triangles[3][20]~103_combout\) # (!\Add1~39\))) # (!\triangles[2][20]~102_combout\ & (\triangles[3][20]~103_combout\ & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[2][20]~102_combout\,
	datab => \triangles[3][20]~103_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X35_Y18_N12
\wavies[1].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~44_combout\ = (\wavies[1].triangle_gen|count\(22) & (\wavies[1].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[1].triangle_gen|count\(22) & (!\wavies[1].triangle_gen|Add1~43\ & VCC))
-- \wavies[1].triangle_gen|Add1~45\ = CARRY((\wavies[1].triangle_gen|count\(22) & !\wavies[1].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~43\,
	combout => \wavies[1].triangle_gen|Add1~44_combout\,
	cout => \wavies[1].triangle_gen|Add1~45\);

-- Location: LCCOMB_X35_Y18_N14
\wavies[1].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~46_combout\ = (\wavies[1].triangle_gen|count\(23) & (!\wavies[1].triangle_gen|Add1~45\)) # (!\wavies[1].triangle_gen|count\(23) & ((\wavies[1].triangle_gen|Add1~45\) # (GND)))
-- \wavies[1].triangle_gen|Add1~47\ = CARRY((!\wavies[1].triangle_gen|Add1~45\) # (!\wavies[1].triangle_gen|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~45\,
	combout => \wavies[1].triangle_gen|Add1~46_combout\,
	cout => \wavies[1].triangle_gen|Add1~47\);

-- Location: LCFF_X35_Y18_N15
\wavies[1].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(23));

-- Location: LCCOMB_X35_Y18_N18
\wavies[1].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~50_combout\ = (\wavies[1].triangle_gen|count\(25) & (!\wavies[1].triangle_gen|Add1~49\)) # (!\wavies[1].triangle_gen|count\(25) & ((\wavies[1].triangle_gen|Add1~49\) # (GND)))
-- \wavies[1].triangle_gen|Add1~51\ = CARRY((!\wavies[1].triangle_gen|Add1~49\) # (!\wavies[1].triangle_gen|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~49\,
	combout => \wavies[1].triangle_gen|Add1~50_combout\,
	cout => \wavies[1].triangle_gen|Add1~51\);

-- Location: LCFF_X35_Y18_N19
\wavies[1].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(25));

-- Location: LCCOMB_X35_Y18_N20
\wavies[1].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~52_combout\ = (\wavies[1].triangle_gen|count\(26) & (\wavies[1].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[1].triangle_gen|count\(26) & (!\wavies[1].triangle_gen|Add1~51\ & VCC))
-- \wavies[1].triangle_gen|Add1~53\ = CARRY((\wavies[1].triangle_gen|count\(26) & !\wavies[1].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~51\,
	combout => \wavies[1].triangle_gen|Add1~52_combout\,
	cout => \wavies[1].triangle_gen|Add1~53\);

-- Location: LCCOMB_X35_Y18_N22
\wavies[1].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~54_combout\ = (\wavies[1].triangle_gen|count\(27) & (!\wavies[1].triangle_gen|Add1~53\)) # (!\wavies[1].triangle_gen|count\(27) & ((\wavies[1].triangle_gen|Add1~53\) # (GND)))
-- \wavies[1].triangle_gen|Add1~55\ = CARRY((!\wavies[1].triangle_gen|Add1~53\) # (!\wavies[1].triangle_gen|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[1].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~53\,
	combout => \wavies[1].triangle_gen|Add1~54_combout\,
	cout => \wavies[1].triangle_gen|Add1~55\);

-- Location: LCFF_X35_Y18_N23
\wavies[1].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(27));

-- Location: LCCOMB_X34_Y18_N6
\triangles[1][19]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][19]~153_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(27),
	combout => \triangles[1][19]~153_combout\);

-- Location: LCFF_X35_Y18_N21
\wavies[1].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(26));

-- Location: LCCOMB_X35_Y20_N6
\triangles[1][18]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][18]~155_combout\ = (\wavies[1].triangle_gen|count\(26) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(26),
	datad => \reader|buttons\(6),
	combout => \triangles[1][18]~155_combout\);

-- Location: LCCOMB_X33_Y18_N14
\wavies[0].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~44_combout\ = (\wavies[0].triangle_gen|count\(23) & (\wavies[0].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[0].triangle_gen|count\(23) & (!\wavies[0].triangle_gen|Add1~43\ & VCC))
-- \wavies[0].triangle_gen|Add1~45\ = CARRY((\wavies[0].triangle_gen|count\(23) & !\wavies[0].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[0].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~43\,
	combout => \wavies[0].triangle_gen|Add1~44_combout\,
	cout => \wavies[0].triangle_gen|Add1~45\);

-- Location: LCFF_X33_Y18_N15
\wavies[0].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(23));

-- Location: LCCOMB_X33_Y18_N16
\wavies[0].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[0].triangle_gen|Add1~46_combout\ = (\wavies[0].triangle_gen|count\(24) & (!\wavies[0].triangle_gen|Add1~45\)) # (!\wavies[0].triangle_gen|count\(24) & ((\wavies[0].triangle_gen|Add1~45\) # (GND)))
-- \wavies[0].triangle_gen|Add1~47\ = CARRY((!\wavies[0].triangle_gen|Add1~45\) # (!\wavies[0].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[0].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[0].triangle_gen|Add1~45\,
	combout => \wavies[0].triangle_gen|Add1~46_combout\,
	cout => \wavies[0].triangle_gen|Add1~47\);

-- Location: LCFF_X33_Y18_N19
\wavies[0].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(25));

-- Location: LCCOMB_X34_Y19_N28
\triangles[0][17]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][17]~156_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(5),
	datac => \wavies[0].triangle_gen|count\(25),
	combout => \triangles[0][17]~156_combout\);

-- Location: LCFF_X33_Y18_N17
\wavies[0].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[0].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[0].triangle_gen|count\(24));

-- Location: LCCOMB_X34_Y19_N26
\triangles[0][16]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][16]~158_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(24),
	combout => \triangles[0][16]~158_combout\);

-- Location: LCCOMB_X33_Y20_N26
\triangles[0][15]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[0][15]~160_combout\ = (\reader|buttons\(5) & \wavies[0].triangle_gen|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(5),
	datad => \wavies[0].triangle_gen|count\(23),
	combout => \triangles[0][15]~160_combout\);

-- Location: LCFF_X35_Y18_N13
\wavies[1].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(22));

-- Location: LCCOMB_X34_Y18_N28
\triangles[1][14]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][14]~163_combout\ = (\wavies[1].triangle_gen|count\(22) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(22),
	datad => \reader|buttons\(6),
	combout => \triangles[1][14]~163_combout\);

-- Location: LCCOMB_X34_Y19_N8
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\triangles[1][16]~159_combout\ $ (\triangles[0][16]~158_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\triangles[1][16]~159_combout\ & ((\triangles[0][16]~158_combout\) # (!\Add0~31\))) # (!\triangles[1][16]~159_combout\ & (\triangles[0][16]~158_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][16]~159_combout\,
	datab => \triangles[0][16]~158_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X34_Y19_N10
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\triangles[1][17]~157_combout\ & ((\triangles[0][17]~156_combout\ & (\Add0~33\ & VCC)) # (!\triangles[0][17]~156_combout\ & (!\Add0~33\)))) # (!\triangles[1][17]~157_combout\ & ((\triangles[0][17]~156_combout\ & (!\Add0~33\)) # 
-- (!\triangles[0][17]~156_combout\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\triangles[1][17]~157_combout\ & (!\triangles[0][17]~156_combout\ & !\Add0~33\)) # (!\triangles[1][17]~157_combout\ & ((!\Add0~33\) # (!\triangles[0][17]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[1][17]~157_combout\,
	datab => \triangles[0][17]~156_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X34_Y19_N12
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\triangles[0][18]~154_combout\ $ (\triangles[1][18]~155_combout\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\triangles[0][18]~154_combout\ & ((\triangles[1][18]~155_combout\) # (!\Add0~35\))) # (!\triangles[0][18]~154_combout\ & (\triangles[1][18]~155_combout\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][18]~154_combout\,
	datab => \triangles[1][18]~155_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X34_Y19_N14
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\triangles[0][19]~152_combout\ & ((\triangles[1][19]~153_combout\ & (\Add0~37\ & VCC)) # (!\triangles[1][19]~153_combout\ & (!\Add0~37\)))) # (!\triangles[0][19]~152_combout\ & ((\triangles[1][19]~153_combout\ & (!\Add0~37\)) # 
-- (!\triangles[1][19]~153_combout\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\triangles[0][19]~152_combout\ & (!\triangles[1][19]~153_combout\ & !\Add0~37\)) # (!\triangles[0][19]~152_combout\ & ((!\Add0~37\) # (!\triangles[1][19]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[0][19]~152_combout\,
	datab => \triangles[1][19]~153_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X33_Y23_N16
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = ((\Add0~40_combout\ $ (\Add1~40_combout\ $ (!\Add2~39\)))) # (GND)
-- \Add2~41\ = CARRY((\Add0~40_combout\ & ((\Add1~40_combout\) # (!\Add2~39\))) # (!\Add0~40_combout\ & (\Add1~40_combout\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add1~40_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X36_Y21_N8
\wavies[4].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~38_combout\ = (\wavies[4].triangle_gen|count\(20) & (!\wavies[4].triangle_gen|Add1~37\)) # (!\wavies[4].triangle_gen|count\(20) & ((\wavies[4].triangle_gen|Add1~37\) # (GND)))
-- \wavies[4].triangle_gen|Add1~39\ = CARRY((!\wavies[4].triangle_gen|Add1~37\) # (!\wavies[4].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~37\,
	combout => \wavies[4].triangle_gen|Add1~38_combout\,
	cout => \wavies[4].triangle_gen|Add1~39\);

-- Location: LCFF_X36_Y21_N9
\wavies[4].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(20));

-- Location: LCCOMB_X36_Y21_N14
\wavies[4].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~44_combout\ = (\wavies[4].triangle_gen|count\(23) & (\wavies[4].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[4].triangle_gen|count\(23) & (!\wavies[4].triangle_gen|Add1~43\ & VCC))
-- \wavies[4].triangle_gen|Add1~45\ = CARRY((\wavies[4].triangle_gen|count\(23) & !\wavies[4].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~43\,
	combout => \wavies[4].triangle_gen|Add1~44_combout\,
	cout => \wavies[4].triangle_gen|Add1~45\);

-- Location: LCFF_X36_Y21_N15
\wavies[4].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(23));

-- Location: LCCOMB_X36_Y21_N16
\wavies[4].triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~46_combout\ = (\wavies[4].triangle_gen|count\(24) & (!\wavies[4].triangle_gen|Add1~45\)) # (!\wavies[4].triangle_gen|count\(24) & ((\wavies[4].triangle_gen|Add1~45\) # (GND)))
-- \wavies[4].triangle_gen|Add1~47\ = CARRY((!\wavies[4].triangle_gen|Add1~45\) # (!\wavies[4].triangle_gen|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(24),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~45\,
	combout => \wavies[4].triangle_gen|Add1~46_combout\,
	cout => \wavies[4].triangle_gen|Add1~47\);

-- Location: LCCOMB_X36_Y21_N18
\wavies[4].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~48_combout\ = (\wavies[4].triangle_gen|count\(25) & (\wavies[4].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[4].triangle_gen|count\(25) & (!\wavies[4].triangle_gen|Add1~47\ & VCC))
-- \wavies[4].triangle_gen|Add1~49\ = CARRY((\wavies[4].triangle_gen|count\(25) & !\wavies[4].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~47\,
	combout => \wavies[4].triangle_gen|Add1~48_combout\,
	cout => \wavies[4].triangle_gen|Add1~49\);

-- Location: LCFF_X36_Y21_N19
\wavies[4].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(25));

-- Location: LCCOMB_X36_Y21_N20
\wavies[4].triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~50_combout\ = (\wavies[4].triangle_gen|count\(26) & (!\wavies[4].triangle_gen|Add1~49\)) # (!\wavies[4].triangle_gen|count\(26) & ((\wavies[4].triangle_gen|Add1~49\) # (GND)))
-- \wavies[4].triangle_gen|Add1~51\ = CARRY((!\wavies[4].triangle_gen|Add1~49\) # (!\wavies[4].triangle_gen|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(26),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~49\,
	combout => \wavies[4].triangle_gen|Add1~50_combout\,
	cout => \wavies[4].triangle_gen|Add1~51\);

-- Location: LCCOMB_X36_Y21_N22
\wavies[4].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~52_combout\ = (\wavies[4].triangle_gen|count\(27) & (\wavies[4].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[4].triangle_gen|count\(27) & (!\wavies[4].triangle_gen|Add1~51\ & VCC))
-- \wavies[4].triangle_gen|Add1~53\ = CARRY((\wavies[4].triangle_gen|count\(27) & !\wavies[4].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~51\,
	combout => \wavies[4].triangle_gen|Add1~52_combout\,
	cout => \wavies[4].triangle_gen|Add1~53\);

-- Location: LCFF_X36_Y21_N23
\wavies[4].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(27));

-- Location: LCCOMB_X35_Y21_N8
\triangles[4][19]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][19]~56_combout\ = (\reader|buttons\(2) & \wavies[4].triangle_gen|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(2),
	datad => \wavies[4].triangle_gen|count\(27),
	combout => \triangles[4][19]~56_combout\);

-- Location: LCFF_X36_Y21_N21
\wavies[4].triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(26));

-- Location: LCCOMB_X35_Y21_N22
\triangles[4][18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][18]~58_combout\ = (\reader|buttons\(2) & \wavies[4].triangle_gen|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(2),
	datad => \wavies[4].triangle_gen|count\(26),
	combout => \triangles[4][18]~58_combout\);

-- Location: LCCOMB_X35_Y21_N28
\triangles[4][17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][17]~60_combout\ = (\reader|buttons\(2) & \wavies[4].triangle_gen|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(2),
	datad => \wavies[4].triangle_gen|count\(25),
	combout => \triangles[4][17]~60_combout\);

-- Location: LCFF_X36_Y21_N17
\wavies[4].triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(24));

-- Location: LCCOMB_X35_Y21_N26
\triangles[4][16]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][16]~62_combout\ = (\wavies[4].triangle_gen|count\(24) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(24),
	datad => \reader|buttons\(2),
	combout => \triangles[4][16]~62_combout\);

-- Location: LCCOMB_X35_Y21_N24
\triangles[4][15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][15]~64_combout\ = (\wavies[4].triangle_gen|count\(23) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(23),
	datad => \reader|buttons\(2),
	combout => \triangles[4][15]~64_combout\);

-- Location: LCCOMB_X29_Y21_N12
\wavies[5].triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~42_combout\ = (\wavies[5].triangle_gen|count\(22) & (!\wavies[5].triangle_gen|Add1~41\)) # (!\wavies[5].triangle_gen|count\(22) & ((\wavies[5].triangle_gen|Add1~41\) # (GND)))
-- \wavies[5].triangle_gen|Add1~43\ = CARRY((!\wavies[5].triangle_gen|Add1~41\) # (!\wavies[5].triangle_gen|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(22),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~41\,
	combout => \wavies[5].triangle_gen|Add1~42_combout\,
	cout => \wavies[5].triangle_gen|Add1~43\);

-- Location: LCFF_X29_Y21_N13
\wavies[5].triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(22));

-- Location: LCCOMB_X34_Y21_N30
\triangles[5][14]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][14]~67_combout\ = (\wavies[5].triangle_gen|count\(22) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(22),
	datad => \reader|buttons\(3),
	combout => \triangles[5][14]~67_combout\);

-- Location: LCCOMB_X34_Y21_N8
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = ((\triangles[5][16]~63_combout\ $ (\triangles[4][16]~62_combout\ $ (!\Add3~31\)))) # (GND)
-- \Add3~33\ = CARRY((\triangles[5][16]~63_combout\ & ((\triangles[4][16]~62_combout\) # (!\Add3~31\))) # (!\triangles[5][16]~63_combout\ & (\triangles[4][16]~62_combout\ & !\Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][16]~63_combout\,
	datab => \triangles[4][16]~62_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X34_Y21_N10
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\triangles[5][17]~61_combout\ & ((\triangles[4][17]~60_combout\ & (\Add3~33\ & VCC)) # (!\triangles[4][17]~60_combout\ & (!\Add3~33\)))) # (!\triangles[5][17]~61_combout\ & ((\triangles[4][17]~60_combout\ & (!\Add3~33\)) # 
-- (!\triangles[4][17]~60_combout\ & ((\Add3~33\) # (GND)))))
-- \Add3~35\ = CARRY((\triangles[5][17]~61_combout\ & (!\triangles[4][17]~60_combout\ & !\Add3~33\)) # (!\triangles[5][17]~61_combout\ & ((!\Add3~33\) # (!\triangles[4][17]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][17]~61_combout\,
	datab => \triangles[4][17]~60_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X34_Y21_N12
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = ((\triangles[5][18]~59_combout\ $ (\triangles[4][18]~58_combout\ $ (!\Add3~35\)))) # (GND)
-- \Add3~37\ = CARRY((\triangles[5][18]~59_combout\ & ((\triangles[4][18]~58_combout\) # (!\Add3~35\))) # (!\triangles[5][18]~59_combout\ & (\triangles[4][18]~58_combout\ & !\Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][18]~59_combout\,
	datab => \triangles[4][18]~58_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X34_Y21_N14
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\triangles[5][19]~57_combout\ & ((\triangles[4][19]~56_combout\ & (\Add3~37\ & VCC)) # (!\triangles[4][19]~56_combout\ & (!\Add3~37\)))) # (!\triangles[5][19]~57_combout\ & ((\triangles[4][19]~56_combout\ & (!\Add3~37\)) # 
-- (!\triangles[4][19]~56_combout\ & ((\Add3~37\) # (GND)))))
-- \Add3~39\ = CARRY((\triangles[5][19]~57_combout\ & (!\triangles[4][19]~56_combout\ & !\Add3~37\)) # (!\triangles[5][19]~57_combout\ & ((!\Add3~37\) # (!\triangles[4][19]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][19]~57_combout\,
	datab => \triangles[4][19]~56_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X34_Y23_N16
\Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = ((\Add3~40_combout\ $ (\Add2~40_combout\ $ (!\Add4~39\)))) # (GND)
-- \Add4~41\ = CARRY((\Add3~40_combout\ & ((\Add2~40_combout\) # (!\Add4~39\))) # (!\Add3~40_combout\ & (\Add2~40_combout\ & !\Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~40_combout\,
	datab => \Add2~40_combout\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X35_Y23_N16
\d[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[18]~36_combout\ = ((\Add5~40_combout\ $ (\Add4~40_combout\ $ (!\d[17]~35\)))) # (GND)
-- \d[18]~37\ = CARRY((\Add5~40_combout\ & ((\Add4~40_combout\) # (!\d[17]~35\))) # (!\Add5~40_combout\ & (\Add4~40_combout\ & !\d[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add4~40_combout\,
	datad => VCC,
	cin => \d[17]~35\,
	combout => \d[18]~36_combout\,
	cout => \d[18]~37\);

-- Location: LCCOMB_X36_Y23_N28
\i2s|data_shift~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~9_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\i2s|data_shift~5_combout\ & \d[18]~36_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(24)) # ((\i2s|data_shift~5_combout\ & \d[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(24),
	datac => \i2s|data_shift~5_combout\,
	datad => \d[18]~36_combout\,
	combout => \i2s|data_shift~9_combout\);

-- Location: LCFF_X36_Y23_N29
\i2s|data_shift[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~9_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(25));

-- Location: LCCOMB_X30_Y23_N6
\wavies[2].triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~36_combout\ = (\wavies[2].triangle_gen|count\(19) & (\wavies[2].triangle_gen|Add1~35\ $ (GND))) # (!\wavies[2].triangle_gen|count\(19) & (!\wavies[2].triangle_gen|Add1~35\ & VCC))
-- \wavies[2].triangle_gen|Add1~37\ = CARRY((\wavies[2].triangle_gen|count\(19) & !\wavies[2].triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(19),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~35\,
	combout => \wavies[2].triangle_gen|Add1~36_combout\,
	cout => \wavies[2].triangle_gen|Add1~37\);

-- Location: LCFF_X31_Y24_N25
\wavies[2].triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	sdata => \wavies[2].triangle_gen|Add1~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(19));

-- Location: LCCOMB_X30_Y23_N8
\wavies[2].triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~38_combout\ = (\wavies[2].triangle_gen|count\(20) & (!\wavies[2].triangle_gen|Add1~37\)) # (!\wavies[2].triangle_gen|count\(20) & ((\wavies[2].triangle_gen|Add1~37\) # (GND)))
-- \wavies[2].triangle_gen|Add1~39\ = CARRY((!\wavies[2].triangle_gen|Add1~37\) # (!\wavies[2].triangle_gen|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(20),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~37\,
	combout => \wavies[2].triangle_gen|Add1~38_combout\,
	cout => \wavies[2].triangle_gen|Add1~39\);

-- Location: LCFF_X30_Y23_N9
\wavies[2].triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(20));

-- Location: LCCOMB_X30_Y23_N14
\wavies[2].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~44_combout\ = (\wavies[2].triangle_gen|count\(23) & (\wavies[2].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[2].triangle_gen|count\(23) & (!\wavies[2].triangle_gen|Add1~43\ & VCC))
-- \wavies[2].triangle_gen|Add1~45\ = CARRY((\wavies[2].triangle_gen|count\(23) & !\wavies[2].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~43\,
	combout => \wavies[2].triangle_gen|Add1~44_combout\,
	cout => \wavies[2].triangle_gen|Add1~45\);

-- Location: LCFF_X30_Y23_N15
\wavies[2].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(23));

-- Location: LCCOMB_X30_Y23_N18
\wavies[2].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~48_combout\ = (\wavies[2].triangle_gen|count\(25) & (\wavies[2].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[2].triangle_gen|count\(25) & (!\wavies[2].triangle_gen|Add1~47\ & VCC))
-- \wavies[2].triangle_gen|Add1~49\ = CARRY((\wavies[2].triangle_gen|count\(25) & !\wavies[2].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~47\,
	combout => \wavies[2].triangle_gen|Add1~48_combout\,
	cout => \wavies[2].triangle_gen|Add1~49\);

-- Location: LCFF_X30_Y23_N19
\wavies[2].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(25));

-- Location: LCCOMB_X30_Y23_N22
\wavies[2].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~52_combout\ = (\wavies[2].triangle_gen|count\(27) & (\wavies[2].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[2].triangle_gen|count\(27) & (!\wavies[2].triangle_gen|Add1~51\ & VCC))
-- \wavies[2].triangle_gen|Add1~53\ = CARRY((\wavies[2].triangle_gen|count\(27) & !\wavies[2].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~51\,
	combout => \wavies[2].triangle_gen|Add1~52_combout\,
	cout => \wavies[2].triangle_gen|Add1~53\);

-- Location: LCFF_X30_Y23_N23
\wavies[2].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(27));

-- Location: LCCOMB_X30_Y23_N24
\wavies[2].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~54_combout\ = (\wavies[2].triangle_gen|count\(28) & (!\wavies[2].triangle_gen|Add1~53\)) # (!\wavies[2].triangle_gen|count\(28) & ((\wavies[2].triangle_gen|Add1~53\) # (GND)))
-- \wavies[2].triangle_gen|Add1~55\ = CARRY((!\wavies[2].triangle_gen|Add1~53\) # (!\wavies[2].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~53\,
	combout => \wavies[2].triangle_gen|Add1~54_combout\,
	cout => \wavies[2].triangle_gen|Add1~55\);

-- Location: LCCOMB_X31_Y23_N24
\wavies[2].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|count~1_combout\ = (\wavies[2].triangle_gen|Add1~56_combout\ & (((\wavies[2].triangle_gen|Add1~58_combout\)))) # (!\wavies[2].triangle_gen|Add1~56_combout\ & ((\wavies[2].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[2].triangle_gen|Add1~58_combout\))) # (!\wavies[2].triangle_gen|Add1~54_combout\ & (\wavies[2].triangle_gen|Add1~60_combout\ & !\wavies[2].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|Add1~60_combout\,
	datab => \wavies[2].triangle_gen|Add1~56_combout\,
	datac => \wavies[2].triangle_gen|Add1~54_combout\,
	datad => \wavies[2].triangle_gen|Add1~58_combout\,
	combout => \wavies[2].triangle_gen|count~1_combout\);

-- Location: LCFF_X31_Y23_N25
\wavies[2].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(30));

-- Location: LCCOMB_X30_Y23_N26
\wavies[2].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~56_combout\ = (\wavies[2].triangle_gen|count\(29) & (\wavies[2].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[2].triangle_gen|count\(29) & (!\wavies[2].triangle_gen|Add1~55\ & VCC))
-- \wavies[2].triangle_gen|Add1~57\ = CARRY((\wavies[2].triangle_gen|count\(29) & !\wavies[2].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~55\,
	combout => \wavies[2].triangle_gen|Add1~56_combout\,
	cout => \wavies[2].triangle_gen|Add1~57\);

-- Location: LCCOMB_X30_Y23_N28
\wavies[2].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~58_combout\ = (\wavies[2].triangle_gen|count\(30) & (!\wavies[2].triangle_gen|Add1~57\)) # (!\wavies[2].triangle_gen|count\(30) & ((\wavies[2].triangle_gen|Add1~57\) # (GND)))
-- \wavies[2].triangle_gen|Add1~59\ = CARRY((!\wavies[2].triangle_gen|Add1~57\) # (!\wavies[2].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[2].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[2].triangle_gen|Add1~57\,
	combout => \wavies[2].triangle_gen|Add1~58_combout\,
	cout => \wavies[2].triangle_gen|Add1~59\);

-- Location: LCCOMB_X31_Y23_N20
\wavies[2].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|count~3_combout\ = (!\wavies[2].triangle_gen|Add1~54_combout\ & ((\wavies[2].triangle_gen|Add1~60_combout\) # ((\wavies[2].triangle_gen|Add1~56_combout\) # (\wavies[2].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|Add1~60_combout\,
	datab => \wavies[2].triangle_gen|Add1~56_combout\,
	datac => \wavies[2].triangle_gen|Add1~54_combout\,
	datad => \wavies[2].triangle_gen|Add1~58_combout\,
	combout => \wavies[2].triangle_gen|count~3_combout\);

-- Location: LCFF_X31_Y23_N21
\wavies[2].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(28));

-- Location: LCCOMB_X31_Y23_N18
\wavies[2].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|count~2_combout\ = (\wavies[2].triangle_gen|Add1~56_combout\ & (((\wavies[2].triangle_gen|Add1~54_combout\)))) # (!\wavies[2].triangle_gen|Add1~56_combout\ & (!\wavies[2].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[2].triangle_gen|Add1~60_combout\) # (\wavies[2].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|Add1~60_combout\,
	datab => \wavies[2].triangle_gen|Add1~56_combout\,
	datac => \wavies[2].triangle_gen|Add1~54_combout\,
	datad => \wavies[2].triangle_gen|Add1~58_combout\,
	combout => \wavies[2].triangle_gen|count~2_combout\);

-- Location: LCFF_X31_Y23_N19
\wavies[2].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(29));

-- Location: LCCOMB_X33_Y23_N24
\triangles[2][21]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][21]~100_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(29),
	combout => \triangles[2][21]~100_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\triangles[3][21]~101_combout\ & ((\triangles[2][21]~100_combout\ & (\Add1~41\ & VCC)) # (!\triangles[2][21]~100_combout\ & (!\Add1~41\)))) # (!\triangles[3][21]~101_combout\ & ((\triangles[2][21]~100_combout\ & (!\Add1~41\)) # 
-- (!\triangles[2][21]~100_combout\ & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\triangles[3][21]~101_combout\ & (!\triangles[2][21]~100_combout\ & !\Add1~41\)) # (!\triangles[3][21]~101_combout\ & ((!\Add1~41\) # (!\triangles[2][21]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][21]~101_combout\,
	datab => \triangles[2][21]~100_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X33_Y23_N18
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add0~42_combout\ & ((\Add1~42_combout\ & (\Add2~41\ & VCC)) # (!\Add1~42_combout\ & (!\Add2~41\)))) # (!\Add0~42_combout\ & ((\Add1~42_combout\ & (!\Add2~41\)) # (!\Add1~42_combout\ & ((\Add2~41\) # (GND)))))
-- \Add2~43\ = CARRY((\Add0~42_combout\ & (!\Add1~42_combout\ & !\Add2~41\)) # (!\Add0~42_combout\ & ((!\Add2~41\) # (!\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add1~42_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X34_Y23_N18
\Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\Add3~42_combout\ & ((\Add2~42_combout\ & (\Add4~41\ & VCC)) # (!\Add2~42_combout\ & (!\Add4~41\)))) # (!\Add3~42_combout\ & ((\Add2~42_combout\ & (!\Add4~41\)) # (!\Add2~42_combout\ & ((\Add4~41\) # (GND)))))
-- \Add4~43\ = CARRY((\Add3~42_combout\ & (!\Add2~42_combout\ & !\Add4~41\)) # (!\Add3~42_combout\ & ((!\Add4~41\) # (!\Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add2~42_combout\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X35_Y23_N18
\d[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[19]~38_combout\ = (\Add5~42_combout\ & ((\Add4~42_combout\ & (\d[18]~37\ & VCC)) # (!\Add4~42_combout\ & (!\d[18]~37\)))) # (!\Add5~42_combout\ & ((\Add4~42_combout\ & (!\d[18]~37\)) # (!\Add4~42_combout\ & ((\d[18]~37\) # (GND)))))
-- \d[19]~39\ = CARRY((\Add5~42_combout\ & (!\Add4~42_combout\ & !\d[18]~37\)) # (!\Add5~42_combout\ & ((!\d[18]~37\) # (!\Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~42_combout\,
	datab => \Add4~42_combout\,
	datad => VCC,
	cin => \d[18]~37\,
	combout => \d[19]~38_combout\,
	cout => \d[19]~39\);

-- Location: LCCOMB_X36_Y23_N26
\i2s|data_shift~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~8_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\i2s|data_shift~5_combout\ & \d[19]~38_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(25)) # ((\i2s|data_shift~5_combout\ & \d[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(25),
	datac => \i2s|data_shift~5_combout\,
	datad => \d[19]~38_combout\,
	combout => \i2s|data_shift~8_combout\);

-- Location: LCFF_X36_Y23_N27
\i2s|data_shift[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~8_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(26));

-- Location: LCCOMB_X32_Y18_N14
\triangles[6][22]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][22]~3_combout\ = (\wavies[6].triangle_gen|count\(30) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(30),
	datac => \reader|buttons\(1),
	combout => \triangles[6][22]~3_combout\);

-- Location: LCCOMB_X31_Y18_N24
\wavies[6].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~54_combout\ = (\wavies[6].triangle_gen|count\(28) & (!\wavies[6].triangle_gen|Add1~53\)) # (!\wavies[6].triangle_gen|count\(28) & ((\wavies[6].triangle_gen|Add1~53\) # (GND)))
-- \wavies[6].triangle_gen|Add1~55\ = CARRY((!\wavies[6].triangle_gen|Add1~53\) # (!\wavies[6].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~53\,
	combout => \wavies[6].triangle_gen|Add1~54_combout\,
	cout => \wavies[6].triangle_gen|Add1~55\);

-- Location: LCCOMB_X31_Y18_N26
\wavies[6].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|Add1~56_combout\ = (\wavies[6].triangle_gen|count\(29) & (\wavies[6].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[6].triangle_gen|count\(29) & (!\wavies[6].triangle_gen|Add1~55\ & VCC))
-- \wavies[6].triangle_gen|Add1~57\ = CARRY((\wavies[6].triangle_gen|count\(29) & !\wavies[6].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[6].triangle_gen|Add1~55\,
	combout => \wavies[6].triangle_gen|Add1~56_combout\,
	cout => \wavies[6].triangle_gen|Add1~57\);

-- Location: LCCOMB_X32_Y18_N12
\wavies[6].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|count~1_combout\ = (\wavies[6].triangle_gen|Add1~56_combout\ & (((\wavies[6].triangle_gen|Add1~58_combout\)))) # (!\wavies[6].triangle_gen|Add1~56_combout\ & ((\wavies[6].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[6].triangle_gen|Add1~58_combout\))) # (!\wavies[6].triangle_gen|Add1~54_combout\ & (\wavies[6].triangle_gen|Add1~60_combout\ & !\wavies[6].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|Add1~60_combout\,
	datab => \wavies[6].triangle_gen|Add1~56_combout\,
	datac => \wavies[6].triangle_gen|Add1~54_combout\,
	datad => \wavies[6].triangle_gen|Add1~58_combout\,
	combout => \wavies[6].triangle_gen|count~1_combout\);

-- Location: LCFF_X32_Y18_N13
\wavies[6].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(30));

-- Location: LCCOMB_X32_Y18_N8
\wavies[6].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[6].triangle_gen|count~2_combout\ = (\wavies[6].triangle_gen|Add1~56_combout\ & (((\wavies[6].triangle_gen|Add1~54_combout\)))) # (!\wavies[6].triangle_gen|Add1~56_combout\ & (!\wavies[6].triangle_gen|Add1~54_combout\ & 
-- ((\wavies[6].triangle_gen|Add1~60_combout\) # (\wavies[6].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|Add1~60_combout\,
	datab => \wavies[6].triangle_gen|Add1~56_combout\,
	datac => \wavies[6].triangle_gen|Add1~54_combout\,
	datad => \wavies[6].triangle_gen|Add1~58_combout\,
	combout => \wavies[6].triangle_gen|count~2_combout\);

-- Location: LCFF_X32_Y18_N9
\wavies[6].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[6].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[6].triangle_gen|count\(29));

-- Location: LCCOMB_X32_Y18_N10
\triangles[6][21]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][21]~5_combout\ = (\wavies[6].triangle_gen|count\(29) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[6].triangle_gen|count\(29),
	datac => \reader|buttons\(1),
	combout => \triangles[6][21]~5_combout\);

-- Location: LCCOMB_X32_Y18_N6
\triangles[6][20]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[6][20]~7_combout\ = (\wavies[6].triangle_gen|count\(28) & \reader|buttons\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[6].triangle_gen|count\(28),
	datac => \reader|buttons\(1),
	combout => \triangles[6][20]~7_combout\);

-- Location: LCCOMB_X35_Y23_N20
\d[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[20]~40_combout\ = ((\Add4~44_combout\ $ (\Add5~44_combout\ $ (!\d[19]~39\)))) # (GND)
-- \d[20]~41\ = CARRY((\Add4~44_combout\ & ((\Add5~44_combout\) # (!\d[19]~39\))) # (!\Add4~44_combout\ & (\Add5~44_combout\ & !\d[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~44_combout\,
	datab => \Add5~44_combout\,
	datad => VCC,
	cin => \d[19]~39\,
	combout => \d[20]~40_combout\,
	cout => \d[20]~41\);

-- Location: LCCOMB_X34_Y23_N28
\i2s|data_shift~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~7_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\i2s|data_shift~5_combout\ & \d[20]~40_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(26)) # ((\i2s|data_shift~5_combout\ & \d[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(26),
	datac => \i2s|data_shift~5_combout\,
	datad => \d[20]~40_combout\,
	combout => \i2s|data_shift~7_combout\);

-- Location: LCFF_X34_Y23_N29
\i2s|data_shift[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~7_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(27));

-- Location: LCCOMB_X29_Y21_N14
\wavies[5].triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~44_combout\ = (\wavies[5].triangle_gen|count\(23) & (\wavies[5].triangle_gen|Add1~43\ $ (GND))) # (!\wavies[5].triangle_gen|count\(23) & (!\wavies[5].triangle_gen|Add1~43\ & VCC))
-- \wavies[5].triangle_gen|Add1~45\ = CARRY((\wavies[5].triangle_gen|count\(23) & !\wavies[5].triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(23),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~43\,
	combout => \wavies[5].triangle_gen|Add1~44_combout\,
	cout => \wavies[5].triangle_gen|Add1~45\);

-- Location: LCFF_X29_Y21_N15
\wavies[5].triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(23));

-- Location: LCCOMB_X29_Y21_N18
\wavies[5].triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~48_combout\ = (\wavies[5].triangle_gen|count\(25) & (\wavies[5].triangle_gen|Add1~47\ $ (GND))) # (!\wavies[5].triangle_gen|count\(25) & (!\wavies[5].triangle_gen|Add1~47\ & VCC))
-- \wavies[5].triangle_gen|Add1~49\ = CARRY((\wavies[5].triangle_gen|count\(25) & !\wavies[5].triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(25),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~47\,
	combout => \wavies[5].triangle_gen|Add1~48_combout\,
	cout => \wavies[5].triangle_gen|Add1~49\);

-- Location: LCFF_X29_Y21_N19
\wavies[5].triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(25));

-- Location: LCCOMB_X29_Y21_N22
\wavies[5].triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~52_combout\ = (\wavies[5].triangle_gen|count\(27) & (\wavies[5].triangle_gen|Add1~51\ $ (GND))) # (!\wavies[5].triangle_gen|count\(27) & (!\wavies[5].triangle_gen|Add1~51\ & VCC))
-- \wavies[5].triangle_gen|Add1~53\ = CARRY((\wavies[5].triangle_gen|count\(27) & !\wavies[5].triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(27),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~51\,
	combout => \wavies[5].triangle_gen|Add1~52_combout\,
	cout => \wavies[5].triangle_gen|Add1~53\);

-- Location: LCFF_X29_Y21_N23
\wavies[5].triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(27));

-- Location: LCCOMB_X29_Y21_N24
\wavies[5].triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~54_combout\ = (\wavies[5].triangle_gen|count\(28) & (!\wavies[5].triangle_gen|Add1~53\)) # (!\wavies[5].triangle_gen|count\(28) & ((\wavies[5].triangle_gen|Add1~53\) # (GND)))
-- \wavies[5].triangle_gen|Add1~55\ = CARRY((!\wavies[5].triangle_gen|Add1~53\) # (!\wavies[5].triangle_gen|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~53\,
	combout => \wavies[5].triangle_gen|Add1~54_combout\,
	cout => \wavies[5].triangle_gen|Add1~55\);

-- Location: LCCOMB_X30_Y21_N0
\wavies[5].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|count~2_combout\ = (\wavies[5].triangle_gen|Add1~54_combout\ & (((\wavies[5].triangle_gen|Add1~56_combout\)))) # (!\wavies[5].triangle_gen|Add1~54_combout\ & (!\wavies[5].triangle_gen|Add1~56_combout\ & 
-- ((\wavies[5].triangle_gen|Add1~60_combout\) # (\wavies[5].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|Add1~60_combout\,
	datab => \wavies[5].triangle_gen|Add1~54_combout\,
	datac => \wavies[5].triangle_gen|Add1~56_combout\,
	datad => \wavies[5].triangle_gen|Add1~58_combout\,
	combout => \wavies[5].triangle_gen|count~2_combout\);

-- Location: LCFF_X30_Y21_N1
\wavies[5].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(29));

-- Location: LCCOMB_X29_Y21_N26
\wavies[5].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~56_combout\ = (\wavies[5].triangle_gen|count\(29) & (\wavies[5].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[5].triangle_gen|count\(29) & (!\wavies[5].triangle_gen|Add1~55\ & VCC))
-- \wavies[5].triangle_gen|Add1~57\ = CARRY((\wavies[5].triangle_gen|count\(29) & !\wavies[5].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~55\,
	combout => \wavies[5].triangle_gen|Add1~56_combout\,
	cout => \wavies[5].triangle_gen|Add1~57\);

-- Location: LCCOMB_X30_Y21_N20
\wavies[5].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|count~1_combout\ = (\wavies[5].triangle_gen|Add1~54_combout\ & (((\wavies[5].triangle_gen|Add1~58_combout\)))) # (!\wavies[5].triangle_gen|Add1~54_combout\ & ((\wavies[5].triangle_gen|Add1~56_combout\ & 
-- ((\wavies[5].triangle_gen|Add1~58_combout\))) # (!\wavies[5].triangle_gen|Add1~56_combout\ & (\wavies[5].triangle_gen|Add1~60_combout\ & !\wavies[5].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|Add1~60_combout\,
	datab => \wavies[5].triangle_gen|Add1~54_combout\,
	datac => \wavies[5].triangle_gen|Add1~56_combout\,
	datad => \wavies[5].triangle_gen|Add1~58_combout\,
	combout => \wavies[5].triangle_gen|count~1_combout\);

-- Location: LCFF_X30_Y21_N21
\wavies[5].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(30));

-- Location: LCCOMB_X29_Y21_N28
\wavies[5].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~58_combout\ = (\wavies[5].triangle_gen|count\(30) & (!\wavies[5].triangle_gen|Add1~57\)) # (!\wavies[5].triangle_gen|count\(30) & ((\wavies[5].triangle_gen|Add1~57\) # (GND)))
-- \wavies[5].triangle_gen|Add1~59\ = CARRY((!\wavies[5].triangle_gen|Add1~57\) # (!\wavies[5].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[5].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[5].triangle_gen|Add1~57\,
	combout => \wavies[5].triangle_gen|Add1~58_combout\,
	cout => \wavies[5].triangle_gen|Add1~59\);

-- Location: LCCOMB_X29_Y21_N30
\wavies[5].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|Add1~60_combout\ = \wavies[5].triangle_gen|Add1~59\ $ (!\wavies[5].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[5].triangle_gen|count\(31),
	cin => \wavies[5].triangle_gen|Add1~59\,
	combout => \wavies[5].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X30_Y21_N2
\wavies[5].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[5].triangle_gen|count~0_combout\ = (\wavies[5].triangle_gen|Add1~60_combout\ & ((\wavies[5].triangle_gen|Add1~54_combout\) # ((\wavies[5].triangle_gen|Add1~58_combout\) # (\wavies[5].triangle_gen|Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[5].triangle_gen|Add1~54_combout\,
	datab => \wavies[5].triangle_gen|Add1~58_combout\,
	datac => \wavies[5].triangle_gen|Add1~60_combout\,
	datad => \wavies[5].triangle_gen|Add1~56_combout\,
	combout => \wavies[5].triangle_gen|count~0_combout\);

-- Location: LCFF_X30_Y21_N3
\wavies[5].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[5].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[5].triangle_gen|count\(31));

-- Location: LCCOMB_X30_Y22_N16
\triangles[5][23]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[5][23]~49_combout\ = (\wavies[5].triangle_gen|count\(31) & \reader|buttons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[5].triangle_gen|count\(31),
	datad => \reader|buttons\(3),
	combout => \triangles[5][23]~49_combout\);

-- Location: LCCOMB_X36_Y21_N26
\wavies[4].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~56_combout\ = (\wavies[4].triangle_gen|count\(29) & (\wavies[4].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[4].triangle_gen|count\(29) & (!\wavies[4].triangle_gen|Add1~55\ & VCC))
-- \wavies[4].triangle_gen|Add1~57\ = CARRY((\wavies[4].triangle_gen|count\(29) & !\wavies[4].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|count\(29),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~55\,
	combout => \wavies[4].triangle_gen|Add1~56_combout\,
	cout => \wavies[4].triangle_gen|Add1~57\);

-- Location: LCCOMB_X36_Y21_N28
\wavies[4].triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~58_combout\ = (\wavies[4].triangle_gen|count\(30) & (!\wavies[4].triangle_gen|Add1~57\)) # (!\wavies[4].triangle_gen|count\(30) & ((\wavies[4].triangle_gen|Add1~57\) # (GND)))
-- \wavies[4].triangle_gen|Add1~59\ = CARRY((!\wavies[4].triangle_gen|Add1~57\) # (!\wavies[4].triangle_gen|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[4].triangle_gen|Add1~57\,
	combout => \wavies[4].triangle_gen|Add1~58_combout\,
	cout => \wavies[4].triangle_gen|Add1~59\);

-- Location: LCCOMB_X37_Y21_N18
\wavies[4].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|count~1_combout\ = (\wavies[4].triangle_gen|Add1~54_combout\ & (((\wavies[4].triangle_gen|Add1~58_combout\)))) # (!\wavies[4].triangle_gen|Add1~54_combout\ & ((\wavies[4].triangle_gen|Add1~56_combout\ & 
-- ((\wavies[4].triangle_gen|Add1~58_combout\))) # (!\wavies[4].triangle_gen|Add1~56_combout\ & (\wavies[4].triangle_gen|Add1~60_combout\ & !\wavies[4].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|Add1~54_combout\,
	datab => \wavies[4].triangle_gen|Add1~56_combout\,
	datac => \wavies[4].triangle_gen|Add1~60_combout\,
	datad => \wavies[4].triangle_gen|Add1~58_combout\,
	combout => \wavies[4].triangle_gen|count~1_combout\);

-- Location: LCFF_X37_Y21_N19
\wavies[4].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(30));

-- Location: LCCOMB_X36_Y21_N30
\wavies[4].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|Add1~60_combout\ = \wavies[4].triangle_gen|count\(31) $ (!\wavies[4].triangle_gen|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(31),
	cin => \wavies[4].triangle_gen|Add1~59\,
	combout => \wavies[4].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X37_Y21_N8
\wavies[4].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|count~0_combout\ = (\wavies[4].triangle_gen|Add1~60_combout\ & ((\wavies[4].triangle_gen|Add1~54_combout\) # ((\wavies[4].triangle_gen|Add1~56_combout\) # (\wavies[4].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|Add1~54_combout\,
	datab => \wavies[4].triangle_gen|Add1~56_combout\,
	datac => \wavies[4].triangle_gen|Add1~60_combout\,
	datad => \wavies[4].triangle_gen|Add1~58_combout\,
	combout => \wavies[4].triangle_gen|count~0_combout\);

-- Location: LCFF_X37_Y21_N9
\wavies[4].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(31));

-- Location: LCCOMB_X37_Y21_N26
\triangles[4][23]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][23]~48_combout\ = (\wavies[4].triangle_gen|count\(31) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(31),
	datad => \reader|buttons\(2),
	combout => \triangles[4][23]~48_combout\);

-- Location: LCCOMB_X37_Y21_N14
\triangles[4][22]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][22]~50_combout\ = (\wavies[4].triangle_gen|count\(30) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(30),
	datad => \reader|buttons\(2),
	combout => \triangles[4][22]~50_combout\);

-- Location: LCCOMB_X37_Y21_N4
\wavies[4].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|count~2_combout\ = (\wavies[4].triangle_gen|Add1~54_combout\ & (\wavies[4].triangle_gen|Add1~56_combout\)) # (!\wavies[4].triangle_gen|Add1~54_combout\ & (!\wavies[4].triangle_gen|Add1~56_combout\ & 
-- ((\wavies[4].triangle_gen|Add1~60_combout\) # (\wavies[4].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|Add1~54_combout\,
	datab => \wavies[4].triangle_gen|Add1~56_combout\,
	datac => \wavies[4].triangle_gen|Add1~60_combout\,
	datad => \wavies[4].triangle_gen|Add1~58_combout\,
	combout => \wavies[4].triangle_gen|count~2_combout\);

-- Location: LCFF_X37_Y21_N5
\wavies[4].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(29));

-- Location: LCCOMB_X37_Y21_N24
\triangles[4][21]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][21]~52_combout\ = (\wavies[4].triangle_gen|count\(29) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wavies[4].triangle_gen|count\(29),
	datad => \reader|buttons\(2),
	combout => \triangles[4][21]~52_combout\);

-- Location: LCCOMB_X37_Y21_N6
\wavies[4].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[4].triangle_gen|count~3_combout\ = (!\wavies[4].triangle_gen|Add1~54_combout\ & ((\wavies[4].triangle_gen|Add1~56_combout\) # ((\wavies[4].triangle_gen|Add1~60_combout\) # (\wavies[4].triangle_gen|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[4].triangle_gen|Add1~54_combout\,
	datab => \wavies[4].triangle_gen|Add1~56_combout\,
	datac => \wavies[4].triangle_gen|Add1~60_combout\,
	datad => \wavies[4].triangle_gen|Add1~58_combout\,
	combout => \wavies[4].triangle_gen|count~3_combout\);

-- Location: LCFF_X37_Y21_N7
\wavies[4].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[4].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[4].triangle_gen|count\(28));

-- Location: LCCOMB_X35_Y21_N14
\triangles[4][20]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[4][20]~54_combout\ = (\wavies[4].triangle_gen|count\(28) & \reader|buttons\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[4].triangle_gen|count\(28),
	datad => \reader|buttons\(2),
	combout => \triangles[4][20]~54_combout\);

-- Location: LCCOMB_X34_Y21_N20
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = ((\triangles[5][22]~51_combout\ $ (\triangles[4][22]~50_combout\ $ (!\Add3~43\)))) # (GND)
-- \Add3~45\ = CARRY((\triangles[5][22]~51_combout\ & ((\triangles[4][22]~50_combout\) # (!\Add3~43\))) # (!\triangles[5][22]~51_combout\ & (\triangles[4][22]~50_combout\ & !\Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[5][22]~51_combout\,
	datab => \triangles[4][22]~50_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X34_Y21_N22
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = \triangles[5][23]~49_combout\ $ (\Add3~45\ $ (\triangles[4][23]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangles[5][23]~49_combout\,
	datad => \triangles[4][23]~48_combout\,
	cin => \Add3~45\,
	combout => \Add3~46_combout\);

-- Location: LCCOMB_X30_Y23_N30
\wavies[2].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|Add1~60_combout\ = \wavies[2].triangle_gen|Add1~59\ $ (!\wavies[2].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[2].triangle_gen|count\(31),
	cin => \wavies[2].triangle_gen|Add1~59\,
	combout => \wavies[2].triangle_gen|Add1~60_combout\);

-- Location: LCCOMB_X29_Y23_N16
\wavies[2].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[2].triangle_gen|count~0_combout\ = (\wavies[2].triangle_gen|Add1~60_combout\ & ((\wavies[2].triangle_gen|Add1~56_combout\) # ((\wavies[2].triangle_gen|Add1~58_combout\) # (\wavies[2].triangle_gen|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[2].triangle_gen|Add1~56_combout\,
	datab => \wavies[2].triangle_gen|Add1~58_combout\,
	datac => \wavies[2].triangle_gen|Add1~54_combout\,
	datad => \wavies[2].triangle_gen|Add1~60_combout\,
	combout => \wavies[2].triangle_gen|count~0_combout\);

-- Location: LCFF_X29_Y23_N17
\wavies[2].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[2].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[2].triangle_gen|count\(31));

-- Location: LCCOMB_X33_Y23_N28
\triangles[2][23]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][23]~96_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(31),
	combout => \triangles[2][23]~96_combout\);

-- Location: LCCOMB_X33_Y23_N30
\triangles[2][22]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[2][22]~98_combout\ = (\reader|buttons\(4) & \wavies[2].triangle_gen|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reader|buttons\(4),
	datad => \wavies[2].triangle_gen|count\(30),
	combout => \triangles[2][22]~98_combout\);

-- Location: LCCOMB_X32_Y23_N22
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = \triangles[3][23]~97_combout\ $ (\Add1~45\ $ (\triangles[2][23]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangles[3][23]~97_combout\,
	datad => \triangles[2][23]~96_combout\,
	cin => \Add1~45\,
	combout => \Add1~46_combout\);

-- Location: LCCOMB_X35_Y18_N24
\wavies[1].triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~56_combout\ = (\wavies[1].triangle_gen|count\(28) & (\wavies[1].triangle_gen|Add1~55\ $ (GND))) # (!\wavies[1].triangle_gen|count\(28) & (!\wavies[1].triangle_gen|Add1~55\ & VCC))
-- \wavies[1].triangle_gen|Add1~57\ = CARRY((\wavies[1].triangle_gen|count\(28) & !\wavies[1].triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(28),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~55\,
	combout => \wavies[1].triangle_gen|Add1~56_combout\,
	cout => \wavies[1].triangle_gen|Add1~57\);

-- Location: LCCOMB_X35_Y18_N28
\wavies[1].triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~60_combout\ = (\wavies[1].triangle_gen|count\(30) & (\wavies[1].triangle_gen|Add1~59\ $ (GND))) # (!\wavies[1].triangle_gen|count\(30) & (!\wavies[1].triangle_gen|Add1~59\ & VCC))
-- \wavies[1].triangle_gen|Add1~61\ = CARRY((\wavies[1].triangle_gen|count\(30) & !\wavies[1].triangle_gen|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|count\(30),
	datad => VCC,
	cin => \wavies[1].triangle_gen|Add1~59\,
	combout => \wavies[1].triangle_gen|Add1~60_combout\,
	cout => \wavies[1].triangle_gen|Add1~61\);

-- Location: LCCOMB_X34_Y18_N14
\wavies[1].triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|count~0_combout\ = (\wavies[1].triangle_gen|Add1~62_combout\ & ((\wavies[1].triangle_gen|Add1~58_combout\) # ((\wavies[1].triangle_gen|Add1~56_combout\) # (\wavies[1].triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|Add1~58_combout\,
	datab => \wavies[1].triangle_gen|Add1~62_combout\,
	datac => \wavies[1].triangle_gen|Add1~56_combout\,
	datad => \wavies[1].triangle_gen|Add1~60_combout\,
	combout => \wavies[1].triangle_gen|count~0_combout\);

-- Location: LCFF_X34_Y18_N15
\wavies[1].triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(31));

-- Location: LCCOMB_X35_Y18_N30
\wavies[1].triangle_gen|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|Add1~62_combout\ = \wavies[1].triangle_gen|Add1~61\ $ (\wavies[1].triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wavies[1].triangle_gen|count\(31),
	cin => \wavies[1].triangle_gen|Add1~61\,
	combout => \wavies[1].triangle_gen|Add1~62_combout\);

-- Location: LCCOMB_X34_Y18_N2
\wavies[1].triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|count~1_combout\ = (\wavies[1].triangle_gen|Add1~58_combout\ & (\wavies[1].triangle_gen|Add1~60_combout\)) # (!\wavies[1].triangle_gen|Add1~58_combout\ & ((\wavies[1].triangle_gen|Add1~60_combout\ & 
-- (\wavies[1].triangle_gen|Add1~56_combout\)) # (!\wavies[1].triangle_gen|Add1~60_combout\ & (!\wavies[1].triangle_gen|Add1~56_combout\ & \wavies[1].triangle_gen|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|Add1~58_combout\,
	datab => \wavies[1].triangle_gen|Add1~60_combout\,
	datac => \wavies[1].triangle_gen|Add1~56_combout\,
	datad => \wavies[1].triangle_gen|Add1~62_combout\,
	combout => \wavies[1].triangle_gen|count~1_combout\);

-- Location: LCFF_X34_Y18_N3
\wavies[1].triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(30));

-- Location: LCCOMB_X35_Y20_N28
\triangles[1][22]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][22]~147_combout\ = (\wavies[1].triangle_gen|count\(30) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(30),
	datad => \reader|buttons\(6),
	combout => \triangles[1][22]~147_combout\);

-- Location: LCCOMB_X34_Y18_N12
\wavies[1].triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|count~2_combout\ = (\wavies[1].triangle_gen|Add1~58_combout\ & (((\wavies[1].triangle_gen|Add1~56_combout\)))) # (!\wavies[1].triangle_gen|Add1~58_combout\ & (!\wavies[1].triangle_gen|Add1~56_combout\ & 
-- ((\wavies[1].triangle_gen|Add1~60_combout\) # (\wavies[1].triangle_gen|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|Add1~58_combout\,
	datab => \wavies[1].triangle_gen|Add1~60_combout\,
	datac => \wavies[1].triangle_gen|Add1~56_combout\,
	datad => \wavies[1].triangle_gen|Add1~62_combout\,
	combout => \wavies[1].triangle_gen|count~2_combout\);

-- Location: LCFF_X34_Y18_N13
\wavies[1].triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(29));

-- Location: LCCOMB_X34_Y18_N22
\triangles[1][21]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][21]~149_combout\ = (\reader|buttons\(6) & \wavies[1].triangle_gen|count\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|buttons\(6),
	datad => \wavies[1].triangle_gen|count\(29),
	combout => \triangles[1][21]~149_combout\);

-- Location: LCCOMB_X34_Y18_N20
\wavies[1].triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wavies[1].triangle_gen|count~3_combout\ = (!\wavies[1].triangle_gen|Add1~56_combout\ & ((\wavies[1].triangle_gen|Add1~58_combout\) # ((\wavies[1].triangle_gen|Add1~60_combout\) # (\wavies[1].triangle_gen|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wavies[1].triangle_gen|Add1~58_combout\,
	datab => \wavies[1].triangle_gen|Add1~60_combout\,
	datac => \wavies[1].triangle_gen|Add1~56_combout\,
	datad => \wavies[1].triangle_gen|Add1~62_combout\,
	combout => \wavies[1].triangle_gen|count~3_combout\);

-- Location: LCFF_X34_Y18_N21
\wavies[1].triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \wavies[1].triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wavies[1].triangle_gen|count\(28));

-- Location: LCCOMB_X34_Y18_N30
\triangles[1][20]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangles[1][20]~151_combout\ = (\wavies[1].triangle_gen|count\(28) & \reader|buttons\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wavies[1].triangle_gen|count\(28),
	datad => \reader|buttons\(6),
	combout => \triangles[1][20]~151_combout\);

-- Location: LCCOMB_X33_Y23_N22
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = \Add0~46_combout\ $ (\Add1~46_combout\ $ (\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add1~46_combout\,
	cin => \Add2~45\,
	combout => \Add2~46_combout\);

-- Location: LCCOMB_X34_Y23_N22
\Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = \Add3~46_combout\ $ (\Add4~45\ $ (\Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~46_combout\,
	datad => \Add2~46_combout\,
	cin => \Add4~45\,
	combout => \Add4~46_combout\);

-- Location: LCCOMB_X35_Y23_N22
\d[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[21]~42_combout\ = \Add5~46_combout\ $ (\d[20]~41\ $ (\Add4~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~46_combout\,
	datad => \Add4~46_combout\,
	cin => \d[20]~41\,
	combout => \d[21]~42_combout\);

-- Location: LCCOMB_X36_Y23_N18
\i2s|data_shift~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~6_combout\ = (\i2s|bitcount[0]~6_combout\ & (((\i2s|data_shift~5_combout\ & \d[21]~42_combout\)))) # (!\i2s|bitcount[0]~6_combout\ & ((\i2s|data_shift\(27)) # ((\i2s|data_shift~5_combout\ & \d[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount[0]~6_combout\,
	datab => \i2s|data_shift\(27),
	datac => \i2s|data_shift~5_combout\,
	datad => \d[21]~42_combout\,
	combout => \i2s|data_shift~6_combout\);

-- Location: LCFF_X36_Y23_N19
\i2s|data_shift[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~6_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(28));

-- Location: LCCOMB_X37_Y23_N28
\i2s|data_shift~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~4_combout\ = (!\i2s|bitcount[0]~6_combout\ & \i2s|data_shift\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s|bitcount[0]~6_combout\,
	datad => \i2s|data_shift\(28),
	combout => \i2s|data_shift~4_combout\);

-- Location: LCFF_X37_Y23_N29
\i2s|data_shift[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~4_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(29));

-- Location: LCCOMB_X37_Y23_N30
\i2s|data_shift~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~3_combout\ = (!\i2s|bitcount[0]~6_combout\ & \i2s|data_shift\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s|bitcount[0]~6_combout\,
	datad => \i2s|data_shift\(29),
	combout => \i2s|data_shift~3_combout\);

-- Location: LCFF_X37_Y23_N31
\i2s|data_shift[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~3_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(30));

-- Location: LCCOMB_X37_Y23_N16
\i2s|data_shift~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~2_combout\ = (!\i2s|bitcount[0]~6_combout\ & \i2s|data_shift\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s|bitcount[0]~6_combout\,
	datad => \i2s|data_shift\(30),
	combout => \i2s|data_shift~2_combout\);

-- Location: LCFF_X37_Y23_N17
\i2s|data_shift[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|data_shift~2_combout\,
	ena => \i2s|bitcount[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(31));

-- Location: LCCOMB_X36_Y24_N10
\i2s|LRCK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|LRCK~0_combout\ = (\r2|Equal0~6_combout\ & (\i2s|LRCK~regout\ $ (((!\i2s|Equal0~1_combout\ & !\i2s|always0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|always0~0_combout\,
	datac => \i2s|LRCK~regout\,
	datad => \r2|Equal0~6_combout\,
	combout => \i2s|LRCK~0_combout\);

-- Location: LCFF_X36_Y24_N11
\i2s|LRCK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \i2s|LRCK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|LRCK~regout\);

-- Location: LCCOMB_X64_Y19_N14
\reader|div|counter[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[0]~7_combout\ = \reader|div|counter\(0) $ (VCC)
-- \reader|div|counter[0]~8\ = CARRY(\reader|div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|div|counter\(0),
	datad => VCC,
	combout => \reader|div|counter[0]~7_combout\,
	cout => \reader|div|counter[0]~8\);

-- Location: LCCOMB_X64_Y19_N24
\reader|div|counter[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[5]~17_combout\ = (\reader|div|counter\(5) & (\reader|div|counter[4]~16\ & VCC)) # (!\reader|div|counter\(5) & (!\reader|div|counter[4]~16\))
-- \reader|div|counter[5]~18\ = CARRY((!\reader|div|counter\(5) & !\reader|div|counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reader|div|counter\(5),
	datad => VCC,
	cin => \reader|div|counter[4]~16\,
	combout => \reader|div|counter[5]~17_combout\,
	cout => \reader|div|counter[5]~18\);

-- Location: LCFF_X64_Y19_N25
\reader|div|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[5]~17_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(5));

-- Location: LCCOMB_X64_Y19_N0
\reader|div|counter[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[1]~22_combout\ = (\reader|div|counter\(3)) # ((\reader|div|counter\(5)) # (\reader|div|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|div|counter\(3),
	datac => \reader|div|counter\(5),
	datad => \reader|div|counter\(4),
	combout => \reader|div|counter[1]~22_combout\);

-- Location: LCCOMB_X64_Y19_N6
\reader|div|counter[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[1]~21_combout\ = (\reader|div|counter\(1)) # ((\reader|div|counter\(2)) # ((\reader|div|counter\(0)) # (\reader|div|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|div|counter\(1),
	datab => \reader|div|counter\(2),
	datac => \reader|div|counter\(0),
	datad => \reader|div|counter\(6),
	combout => \reader|div|counter[1]~21_combout\);

-- Location: LCCOMB_X64_Y19_N2
\reader|div|counter[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[1]~23_combout\ = ((!\reader|div|counter[1]~22_combout\ & !\reader|div|counter[1]~21_combout\)) # (!\r|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reader|div|counter[1]~22_combout\,
	datac => \r|Equal0~4_combout\,
	datad => \reader|div|counter[1]~21_combout\,
	combout => \reader|div|counter[1]~23_combout\);

-- Location: LCFF_X64_Y19_N15
\reader|div|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[0]~7_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(0));

-- Location: LCCOMB_X64_Y19_N18
\reader|div|counter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[2]~11_combout\ = (\reader|div|counter\(2) & ((GND) # (!\reader|div|counter[1]~10\))) # (!\reader|div|counter\(2) & (\reader|div|counter[1]~10\ $ (GND)))
-- \reader|div|counter[2]~12\ = CARRY((\reader|div|counter\(2)) # (!\reader|div|counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reader|div|counter\(2),
	datad => VCC,
	cin => \reader|div|counter[1]~10\,
	combout => \reader|div|counter[2]~11_combout\,
	cout => \reader|div|counter[2]~12\);

-- Location: LCFF_X64_Y19_N19
\reader|div|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[2]~11_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(2));

-- Location: LCCOMB_X64_Y19_N22
\reader|div|counter[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[4]~15_combout\ = (\reader|div|counter\(4) & ((GND) # (!\reader|div|counter[3]~14\))) # (!\reader|div|counter\(4) & (\reader|div|counter[3]~14\ $ (GND)))
-- \reader|div|counter[4]~16\ = CARRY((\reader|div|counter\(4)) # (!\reader|div|counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reader|div|counter\(4),
	datad => VCC,
	cin => \reader|div|counter[3]~14\,
	combout => \reader|div|counter[4]~15_combout\,
	cout => \reader|div|counter[4]~16\);

-- Location: LCFF_X64_Y19_N23
\reader|div|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[4]~15_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(4));

-- Location: LCCOMB_X64_Y19_N26
\reader|div|counter[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|counter[6]~19_combout\ = \reader|div|counter[5]~18\ $ (\reader|div|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reader|div|counter\(6),
	cin => \reader|div|counter[5]~18\,
	combout => \reader|div|counter[6]~19_combout\);

-- Location: LCFF_X64_Y19_N27
\reader|div|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5~clkctrl_outclk\,
	datain => \reader|div|counter[6]~19_combout\,
	sdata => VCC,
	sload => \reader|div|counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reader|div|counter\(6));

-- Location: LCCOMB_X64_Y19_N30
\reader|div|LessThan0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|div|LessThan0~combout\ = LCELL(!\reader|div|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reader|div|counter\(6),
	combout => \reader|div|LessThan0~combout\);

-- Location: LCCOMB_X33_Y21_N6
\reader|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder1~1_combout\ = (!\reader|state\(3) & (!\reader|state\(1) & !\reader|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(3),
	datac => \reader|state\(1),
	datad => \reader|state\(2),
	combout => \reader|Decoder1~1_combout\);

-- Location: LCCOMB_X37_Y21_N0
\reader|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|Decoder1~2_combout\ = (!\reader|state\(0) & (\reader|Decoder1~0_combout\ & (\reader|Decoder1~1_combout\ & !\reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(0),
	datab => \reader|Decoder1~0_combout\,
	datac => \reader|Decoder1~1_combout\,
	datad => \reader|state\(4),
	combout => \reader|Decoder1~2_combout\);

-- Location: LCCOMB_X35_Y21_N18
\reader|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|WideOr0~0_combout\ = \reader|state\(4) $ (((\reader|state\(2)) # ((\reader|state\(3)) # (\reader|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(2),
	datab => \reader|state\(3),
	datac => \reader|state\(1),
	datad => \reader|state\(4),
	combout => \reader|WideOr0~0_combout\);

-- Location: LCCOMB_X37_Y21_N22
\reader|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reader|WideOr0~1_combout\ = (\reader|state\(0) & (\reader|Decoder1~0_combout\ & \reader|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reader|state\(0),
	datab => \reader|Decoder1~0_combout\,
	datad => \reader|WideOr0~0_combout\,
	combout => \reader|WideOr0~1_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
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
	datain => \I2C_SDAT~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
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
	datain => \I2C_SCLK~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(1));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
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
	datain => \i2s|data_shift\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(2));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
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
	datain => \i2s|LRCK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
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
	datain => \i2s|div_256|ALT_INV_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
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
	datain => \reader|div|LessThan0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(7));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_XCK~I\ : cycloneii_io
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
	datain => \clk_12_5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_XCK);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NES_PS~I\ : cycloneii_io
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
	datain => \reader|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NES_PS);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NES_CK~I\ : cycloneii_io
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
	datain => \reader|WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NES_CK);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
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
	datain => \i2s|div_256|ALT_INV_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_BCLK);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
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
	datain => \i2s|LRCK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACLRCK);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_ADCLRCK~I\ : cycloneii_io
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
	datain => \i2s|LRCK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_ADCLRCK);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
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
	datain => \i2s|data_shift\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

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
	datain => \reader|buttons\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \reader|buttons\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \reader|buttons\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \reader|buttons\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \reader|buttons\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \reader|buttons\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \reader|buttons\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \reader|buttons\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));
END structure;


