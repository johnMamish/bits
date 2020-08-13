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

-- DATE "08/11/2020 10:49:30"

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

ENTITY 	pitchshift IS
    PORT (
	CLOCK_50 : IN std_logic;
	I2C_SCLK : INOUT std_logic;
	I2C_SDAT : INOUT std_logic;
	NES_PS : OUT std_logic;
	NES_CK : OUT std_logic;
	NES_DO : IN std_logic;
	AUD_XCK : OUT std_logic;
	AUD_BCLK : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_ADCLRCK : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(32 DOWNTO 0)
	);
END pitchshift;

-- Design Ports Information
-- I2C_SCLK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NES_PS	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NES_CK	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_XCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NES_DO	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pitchshift IS
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
SIGNAL ww_NES_PS : std_logic;
SIGNAL ww_NES_CK : std_logic;
SIGNAL ww_NES_DO : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(32 DOWNTO 0);
SIGNAL \controller_reader|div|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2s|LRCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_12_5_divider|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller_reader|state[6]~21_combout\ : std_logic;
SIGNAL \resetter|Add0~4_combout\ : std_logic;
SIGNAL \resetter|Add0~14_combout\ : std_logic;
SIGNAL \resetter|Add0~26_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[2]~11_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~0_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~1\ : std_logic;
SIGNAL \triangle_gen|Add1~2_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~3\ : std_logic;
SIGNAL \triangle_gen|Add1~4_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~5\ : std_logic;
SIGNAL \triangle_gen|Add1~6_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~7\ : std_logic;
SIGNAL \triangle_gen|Add1~8_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~9\ : std_logic;
SIGNAL \triangle_gen|Add1~10_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~11\ : std_logic;
SIGNAL \triangle_gen|Add1~12_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~13\ : std_logic;
SIGNAL \triangle_gen|Add1~14_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~15\ : std_logic;
SIGNAL \triangle_gen|Add1~16_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~17\ : std_logic;
SIGNAL \triangle_gen|Add1~18_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~19\ : std_logic;
SIGNAL \triangle_gen|Add1~20_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~21\ : std_logic;
SIGNAL \triangle_gen|Add1~22_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~23\ : std_logic;
SIGNAL \triangle_gen|Add1~24_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~25\ : std_logic;
SIGNAL \triangle_gen|Add1~26_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~27\ : std_logic;
SIGNAL \triangle_gen|Add1~28_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~29\ : std_logic;
SIGNAL \triangle_gen|Add1~30_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~31\ : std_logic;
SIGNAL \triangle_gen|Add1~32_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~33\ : std_logic;
SIGNAL \triangle_gen|Add1~34_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~35\ : std_logic;
SIGNAL \triangle_gen|Add1~36_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~37\ : std_logic;
SIGNAL \triangle_gen|Add1~38_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~39\ : std_logic;
SIGNAL \triangle_gen|Add1~40_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~41\ : std_logic;
SIGNAL \triangle_gen|Add1~42_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~43\ : std_logic;
SIGNAL \triangle_gen|Add1~44_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~45\ : std_logic;
SIGNAL \triangle_gen|Add1~46_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~47\ : std_logic;
SIGNAL \triangle_gen|Add1~48_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~49\ : std_logic;
SIGNAL \triangle_gen|Add1~50_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~51\ : std_logic;
SIGNAL \triangle_gen|Add1~52_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~53\ : std_logic;
SIGNAL \triangle_gen|Add1~54_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~55\ : std_logic;
SIGNAL \triangle_gen|Add1~56_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~57\ : std_logic;
SIGNAL \triangle_gen|Add1~58_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~59\ : std_logic;
SIGNAL \triangle_gen|Add1~60_combout\ : std_logic;
SIGNAL \triangle_gen|Add1~61\ : std_logic;
SIGNAL \triangle_gen|Add1~62_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~24_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~26_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~28_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~30_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|start_flag_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[6]~29_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[14]~46\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[15]~47_combout\ : std_logic;
SIGNAL \resetter|Equal0~1_combout\ : std_logic;
SIGNAL \i2s|data_shift~3_combout\ : std_logic;
SIGNAL \controller_reader|Selector0~0_combout\ : std_logic;
SIGNAL \controller_reader|Selector0~1_combout\ : std_logic;
SIGNAL \controller_reader|Selector0~2_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~0_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~1_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~2_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~3_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[4]~3_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~4_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~5_combout\ : std_logic;
SIGNAL \controller_reader|Decoder0~6_combout\ : std_logic;
SIGNAL \clk_12_5_divider|counter~1_combout\ : std_logic;
SIGNAL \i2s|div_256|counter~1_combout\ : std_logic;
SIGNAL \i2s|data_shift~4_combout\ : std_logic;
SIGNAL \triangle_gen|count~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add1~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux0~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux0~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector37~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~4_combout\ : std_logic;
SIGNAL \i2s|data_shift~5_combout\ : std_logic;
SIGNAL \triangle_gen|count~1_combout\ : std_logic;
SIGNAL \triangle_gen|count~2_combout\ : std_logic;
SIGNAL \triangle_gen|count~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector21~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector36~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[14]~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~13_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[6]~19_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~36_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~37_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~38_combout\ : std_logic;
SIGNAL \i2s|data_shift~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector37~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_next~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~13_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~17_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~27_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~33_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~23_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector59~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~39_combout\ : std_logic;
SIGNAL \i2s|data_shift~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|start_flag_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|start_flag_reg~1_combout\ : std_logic;
SIGNAL \i2s|data_shift~8_combout\ : std_logic;
SIGNAL \i2s|data_shift~9_combout\ : std_logic;
SIGNAL \i2s|data_shift~10_combout\ : std_logic;
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
SIGNAL \wm8731_init|i2c_init|cmd_start_next~15_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~17_combout\ : std_logic;
SIGNAL \i2s|data_shift~27_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \i2s|LRCK~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~feeder_combout\ : std_logic;
SIGNAL \I2C_SCLK~0\ : std_logic;
SIGNAL \I2C_SDAT~0\ : std_logic;
SIGNAL \resetter|Add0~0_combout\ : std_logic;
SIGNAL \resetter|Add0~8_combout\ : std_logic;
SIGNAL \resetter|Equal0~2_combout\ : std_logic;
SIGNAL \resetter|Add0~28_combout\ : std_logic;
SIGNAL \resetter|Equal0~3_combout\ : std_logic;
SIGNAL \resetter|Add0~24_combout\ : std_logic;
SIGNAL \resetter|Equal0~0_combout\ : std_logic;
SIGNAL \resetter|Equal0~4_combout\ : std_logic;
SIGNAL \resetter|reset_count~0_combout\ : std_logic;
SIGNAL \resetter|Add0~1\ : std_logic;
SIGNAL \resetter|Add0~2_combout\ : std_logic;
SIGNAL \resetter|Add0~3\ : std_logic;
SIGNAL \resetter|Add0~5\ : std_logic;
SIGNAL \resetter|Add0~6_combout\ : std_logic;
SIGNAL \resetter|Add0~7\ : std_logic;
SIGNAL \resetter|Add0~9\ : std_logic;
SIGNAL \resetter|Add0~10_combout\ : std_logic;
SIGNAL \resetter|Add0~11\ : std_logic;
SIGNAL \resetter|Add0~12_combout\ : std_logic;
SIGNAL \resetter|Add0~13\ : std_logic;
SIGNAL \resetter|Add0~15\ : std_logic;
SIGNAL \resetter|Add0~16_combout\ : std_logic;
SIGNAL \resetter|Add0~17\ : std_logic;
SIGNAL \resetter|Add0~18_combout\ : std_logic;
SIGNAL \resetter|Add0~19\ : std_logic;
SIGNAL \resetter|Add0~20_combout\ : std_logic;
SIGNAL \resetter|Add0~21\ : std_logic;
SIGNAL \resetter|Add0~22_combout\ : std_logic;
SIGNAL \resetter|Add0~23\ : std_logic;
SIGNAL \resetter|Add0~25\ : std_logic;
SIGNAL \resetter|Add0~27\ : std_logic;
SIGNAL \resetter|Add0~29\ : std_logic;
SIGNAL \resetter|Add0~30_combout\ : std_logic;
SIGNAL \resetter|Add0~31\ : std_logic;
SIGNAL \resetter|Add0~32_combout\ : std_logic;
SIGNAL \clk_12_5_divider|counter~0_combout\ : std_logic;
SIGNAL \clk_12_5_divider|out~0_combout\ : std_logic;
SIGNAL \clk_12_5_divider|out~regout\ : std_logic;
SIGNAL \clk_12_5_divider|out~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~30_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_i_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_i_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_scl_next~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_scl_next~1_combout\ : std_logic;
SIGNAL \resetter|Equal0~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_scl_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~31_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~42_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|cmd_ready_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|cmd_ready_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~15_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~16_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~11\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~26_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~28_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal2~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~19_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~26_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~19_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~1\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~3\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|data_in_ready_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|data_in_ready_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~17_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_valid_reg~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_valid_reg~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_valid_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_valid_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_1~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_1~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~35_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg[6]~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg[6]~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~5\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~29_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~30_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~16_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~15_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~36_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~19_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~21_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal7~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal5~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal1~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal1~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal3~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~21_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~25_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal7~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal4~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_next~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_valid_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[0]~16_combout\ : std_logic;
SIGNAL \resetter|Equal0~5_wirecell_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|Equal0~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[0]~17\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[1]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[1]~19\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[2]~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|pulse~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[2]~21\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[3]~23_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[3]~24\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[4]~25_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[4]~26\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[5]~27_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|Equal0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[5]~28\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[6]~30\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[7]~31_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[7]~32\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[8]~34\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[9]~35_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[9]~36\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[10]~38\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[11]~39_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[11]~40\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[12]~42\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[13]~43_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[13]~44\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[14]~45_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[12]~41_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|Equal0~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[10]~37_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|count[8]~33_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|Equal0~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|always0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal0~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_2~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_2~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next.STATE_TABLE_2~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~31_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~38_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~32_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~37_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~34_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg~24_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_ptr_reg[0]~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|address_reg~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~7\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~9\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Add0~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_ptr_reg~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~23_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~24_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data~25_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal3~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector11~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Equal7~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_next~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|state_next~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_next~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_next~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_write_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_start_bit~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|sda_i_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|sda_i_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|last_sda_i_reg~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|last_sda_i_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bus_active_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bus_active_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector14~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~28_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector26~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_address_reg[6]~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector25~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector16~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~30_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|data_reg[6]~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~26_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~29_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~27_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_stop_next~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_stop_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|mode_stop_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector12~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector12~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector24~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[3]~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[3]~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector23~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector22~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector37~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector37~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg~25_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector26~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~29_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~40_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|bit_count_reg[0]~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|addr_reg[6]~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector27~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector28~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector24~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~13_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~11_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_next~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cmd_start_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|always0~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector20~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[2]~26_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[2]~27_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~30_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[0]~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~1\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[1]~28_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~3\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~5\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~6_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~33_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[3]~24_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[3]~25_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[12]~29_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[7]~18_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~7\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[4]~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[4]~23_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~9\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[5]~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[5]~21_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~11\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~13\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~15\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~17\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~19\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~20_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[10]~15_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~21\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~22_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[11]~14_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[9]~16_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[13]~12_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[15]~10_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~23\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~25\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~27\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~29\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~31\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~32_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[16]~9_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add2~16_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|delay_reg[8]~17_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|LessThan2~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~41_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~34_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~35_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|scl_o_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_next~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg~32_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~7_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector27~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector30~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector29~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux1~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_reg[4]~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector32~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_reg[5]~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector31~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux1~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector35~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Add1~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|data_out_reg[2]~feeder_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector34~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector33~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux1~2_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux1~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~1_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|cur_address_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector29~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|Selector30~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux0~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Mux0~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~3_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~4_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~5_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|Selector38~8_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|sda_o_reg~0_combout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|sda_o_reg~regout\ : std_logic;
SIGNAL \controller_reader|state[0]~10\ : std_logic;
SIGNAL \controller_reader|state[1]~11_combout\ : std_logic;
SIGNAL \controller_reader|state[1]~12\ : std_logic;
SIGNAL \controller_reader|state[2]~13_combout\ : std_logic;
SIGNAL \controller_reader|state[2]~14\ : std_logic;
SIGNAL \controller_reader|state[3]~15_combout\ : std_logic;
SIGNAL \controller_reader|Decoder1~1_combout\ : std_logic;
SIGNAL \controller_reader|state[0]~9_combout\ : std_logic;
SIGNAL \controller_reader|state[3]~16\ : std_logic;
SIGNAL \controller_reader|state[4]~17_combout\ : std_logic;
SIGNAL \controller_reader|state[4]~18\ : std_logic;
SIGNAL \controller_reader|state[5]~19_combout\ : std_logic;
SIGNAL \controller_reader|state[5]~20\ : std_logic;
SIGNAL \controller_reader|state[6]~22\ : std_logic;
SIGNAL \controller_reader|state[7]~24\ : std_logic;
SIGNAL \controller_reader|state[8]~25_combout\ : std_logic;
SIGNAL \controller_reader|state[7]~23_combout\ : std_logic;
SIGNAL \controller_reader|Decoder1~0_combout\ : std_logic;
SIGNAL \controller_reader|Decoder1~2_combout\ : std_logic;
SIGNAL \controller_reader|WideOr0~0_combout\ : std_logic;
SIGNAL \controller_reader|WideOr0~1_combout\ : std_logic;
SIGNAL \i2s|div_256|counter~0_combout\ : std_logic;
SIGNAL \i2s|div_256|out~0_combout\ : std_logic;
SIGNAL \i2s|div_256|out~regout\ : std_logic;
SIGNAL \i2s|bck_prev~0_combout\ : std_logic;
SIGNAL \i2s|bck_prev~regout\ : std_logic;
SIGNAL \i2s|always0~0_combout\ : std_logic;
SIGNAL \i2s|bitcount[0]~8_combout\ : std_logic;
SIGNAL \i2s|bitcount[0]~9\ : std_logic;
SIGNAL \i2s|bitcount[1]~11\ : std_logic;
SIGNAL \i2s|bitcount[2]~12_combout\ : std_logic;
SIGNAL \i2s|bitcount[5]~7_combout\ : std_logic;
SIGNAL \i2s|bitcount[2]~13\ : std_logic;
SIGNAL \i2s|bitcount[3]~14_combout\ : std_logic;
SIGNAL \i2s|bitcount[3]~15\ : std_logic;
SIGNAL \i2s|bitcount[4]~16_combout\ : std_logic;
SIGNAL \i2s|bitcount[4]~17\ : std_logic;
SIGNAL \i2s|bitcount[5]~18_combout\ : std_logic;
SIGNAL \i2s|Equal0~1_combout\ : std_logic;
SIGNAL \i2s|bitcount[5]~6_combout\ : std_logic;
SIGNAL \i2s|bitcount[1]~10_combout\ : std_logic;
SIGNAL \i2s|Equal0~0_combout\ : std_logic;
SIGNAL \i2s|LRCK~0_combout\ : std_logic;
SIGNAL \i2s|LRCK~regout\ : std_logic;
SIGNAL \i2s|data_shift[31]~2_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[0]~7_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[1]~9_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[6]~21_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[4]~15_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[6]~22_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[6]~23_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[0]~8\ : std_logic;
SIGNAL \controller_reader|div|counter[1]~10\ : std_logic;
SIGNAL \controller_reader|div|counter[2]~12\ : std_logic;
SIGNAL \controller_reader|div|counter[3]~13_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[3]~14\ : std_logic;
SIGNAL \controller_reader|div|counter[4]~16\ : std_logic;
SIGNAL \controller_reader|div|counter[5]~17_combout\ : std_logic;
SIGNAL \controller_reader|div|counter[5]~18\ : std_logic;
SIGNAL \controller_reader|div|counter[6]~19_combout\ : std_logic;
SIGNAL \controller_reader|div|out~0_combout\ : std_logic;
SIGNAL \controller_reader|div|out~regout\ : std_logic;
SIGNAL \controller_reader|div|out~clkctrl_outclk\ : std_logic;
SIGNAL \controller_reader|buttons~0_combout\ : std_logic;
SIGNAL \controller_reader|Decoder1~3_combout\ : std_logic;
SIGNAL \controller_reader|buttons[3]~1_combout\ : std_logic;
SIGNAL \NES_DO~combout\ : std_logic;
SIGNAL \controller_reader|WideOr1~0_combout\ : std_logic;
SIGNAL \controller_reader|WideOr1~1_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[1]~0_combout\ : std_logic;
SIGNAL \controller_reader|buttons~2_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[2]~1_combout\ : std_logic;
SIGNAL \controller_reader|buttons~3_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[3]~2_combout\ : std_logic;
SIGNAL \controller_reader|buttons~4_combout\ : std_logic;
SIGNAL \controller_reader|buttons~5_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[5]~4_combout\ : std_logic;
SIGNAL \controller_reader|buttons~6_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[6]~5_combout\ : std_logic;
SIGNAL \controller_reader|buttons~7_combout\ : std_logic;
SIGNAL \controller_reader|buttons_latch_next[7]~6_combout\ : std_logic;
SIGNAL \controller_reader|buttons~8_combout\ : std_logic;
SIGNAL \AUD_ADCDAT~combout\ : std_logic;
SIGNAL \wm8731_init|i2c_init|init_data_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|init_data.raddr_a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|data_ptr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|data_out_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|cur_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|cmd_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init|address_ptr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wm8731_init|i2c_init_start_pulse|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \wm8731_init|i2c_master|delay_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \wm8731_init|i2c_master|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wm8731_init|i2c_master|bit_count_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wm8731_init|i2c_master|addr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \controller_reader|state\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controller_reader|buttons_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller_reader|buttons\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller_reader|div|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \triangle_gen|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2s|data_shift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2s|bitcount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i2s|div_256|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_12_5_divider|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \resetter|reset_count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \wm8731_init|i2c_master|ALT_INV_scl_o_reg~regout\ : std_logic;
SIGNAL \wm8731_init|i2c_master|ALT_INV_sda_o_reg~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
NES_PS <= ww_NES_PS;
NES_CK <= ww_NES_CK;
ww_NES_DO <= NES_DO;
AUD_XCK <= ww_AUD_XCK;
AUD_BCLK <= ww_AUD_BCLK;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
LEDR <= ww_LEDR;
GPIO_0 <= ww_GPIO_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controller_reader|div|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controller_reader|div|out~regout\);

\i2s|LRCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i2s|LRCK~regout\);

\clk_12_5_divider|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_12_5_divider|out~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\wm8731_init|i2c_master|ALT_INV_scl_o_reg~regout\ <= NOT \wm8731_init|i2c_master|scl_o_reg~regout\;
\wm8731_init|i2c_master|ALT_INV_sda_o_reg~regout\ <= NOT \wm8731_init|i2c_master|sda_o_reg~regout\;

-- Location: LCFF_X54_Y17_N25
\controller_reader|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[6]~21_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(6));

-- Location: LCCOMB_X54_Y17_N24
\controller_reader|state[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[6]~21_combout\ = (\controller_reader|state\(6) & (\controller_reader|state[5]~20\ $ (GND))) # (!\controller_reader|state\(6) & (!\controller_reader|state[5]~20\ & VCC))
-- \controller_reader|state[6]~22\ = CARRY((\controller_reader|state\(6) & !\controller_reader|state[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(6),
	datad => VCC,
	cin => \controller_reader|state[5]~20\,
	combout => \controller_reader|state[6]~21_combout\,
	cout => \controller_reader|state[6]~22\);

-- Location: LCFF_X50_Y20_N13
\i2s|data_shift[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~3_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(30));

-- Location: LCFF_X54_Y17_N1
\controller_reader|buttons_latch[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|Selector0~2_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(0));

-- Location: LCFF_X58_Y17_N3
\controller_reader|buttons_latch[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[4]~3_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(4));

-- Location: LCCOMB_X53_Y17_N20
\resetter|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~4_combout\ = (\resetter|reset_count\(2) & (\resetter|Add0~3\ $ (GND))) # (!\resetter|reset_count\(2) & (!\resetter|Add0~3\ & VCC))
-- \resetter|Add0~5\ = CARRY((\resetter|reset_count\(2) & !\resetter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(2),
	datad => VCC,
	cin => \resetter|Add0~3\,
	combout => \resetter|Add0~4_combout\,
	cout => \resetter|Add0~5\);

-- Location: LCCOMB_X53_Y17_N30
\resetter|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~14_combout\ = (\resetter|reset_count\(7) & (!\resetter|Add0~13\)) # (!\resetter|reset_count\(7) & ((\resetter|Add0~13\) # (GND)))
-- \resetter|Add0~15\ = CARRY((!\resetter|Add0~13\) # (!\resetter|reset_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(7),
	datad => VCC,
	cin => \resetter|Add0~13\,
	combout => \resetter|Add0~14_combout\,
	cout => \resetter|Add0~15\);

-- Location: LCCOMB_X53_Y16_N10
\resetter|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~26_combout\ = (\resetter|reset_count\(13) & (!\resetter|Add0~25\)) # (!\resetter|reset_count\(13) & ((\resetter|Add0~25\) # (GND)))
-- \resetter|Add0~27\ = CARRY((!\resetter|Add0~25\) # (!\resetter|reset_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(13),
	datad => VCC,
	cin => \resetter|Add0~25\,
	combout => \resetter|Add0~26_combout\,
	cout => \resetter|Add0~27\);

-- Location: LCFF_X50_Y20_N19
\i2s|data_shift[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~4_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(29));

-- Location: LCFF_X57_Y18_N13
\controller_reader|div|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[2]~11_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(2));

-- Location: LCCOMB_X57_Y18_N12
\controller_reader|div|counter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[2]~11_combout\ = (\controller_reader|div|counter\(2) & ((GND) # (!\controller_reader|div|counter[1]~10\))) # (!\controller_reader|div|counter\(2) & (\controller_reader|div|counter[1]~10\ $ (GND)))
-- \controller_reader|div|counter[2]~12\ = CARRY((\controller_reader|div|counter\(2)) # (!\controller_reader|div|counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|div|counter\(2),
	datad => VCC,
	cin => \controller_reader|div|counter[1]~10\,
	combout => \controller_reader|div|counter[2]~11_combout\,
	cout => \controller_reader|div|counter[2]~12\);

-- Location: LCFF_X50_Y20_N9
\i2s|data_shift[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~5_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(28));

-- Location: LCCOMB_X49_Y21_N0
\triangle_gen|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~0_combout\ = \triangle_gen|count\(0) $ (VCC)
-- \triangle_gen|Add1~1\ = CARRY(\triangle_gen|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(0),
	datad => VCC,
	combout => \triangle_gen|Add1~0_combout\,
	cout => \triangle_gen|Add1~1\);

-- Location: LCCOMB_X49_Y21_N2
\triangle_gen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~2_combout\ = (\triangle_gen|count\(1) & (\triangle_gen|Add1~1\ & VCC)) # (!\triangle_gen|count\(1) & (!\triangle_gen|Add1~1\))
-- \triangle_gen|Add1~3\ = CARRY((!\triangle_gen|count\(1) & !\triangle_gen|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(1),
	datad => VCC,
	cin => \triangle_gen|Add1~1\,
	combout => \triangle_gen|Add1~2_combout\,
	cout => \triangle_gen|Add1~3\);

-- Location: LCCOMB_X49_Y21_N4
\triangle_gen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~4_combout\ = (\triangle_gen|count\(2) & ((GND) # (!\triangle_gen|Add1~3\))) # (!\triangle_gen|count\(2) & (\triangle_gen|Add1~3\ $ (GND)))
-- \triangle_gen|Add1~5\ = CARRY((\triangle_gen|count\(2)) # (!\triangle_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(2),
	datad => VCC,
	cin => \triangle_gen|Add1~3\,
	combout => \triangle_gen|Add1~4_combout\,
	cout => \triangle_gen|Add1~5\);

-- Location: LCCOMB_X49_Y21_N6
\triangle_gen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~6_combout\ = (\triangle_gen|count\(3) & (!\triangle_gen|Add1~5\)) # (!\triangle_gen|count\(3) & ((\triangle_gen|Add1~5\) # (GND)))
-- \triangle_gen|Add1~7\ = CARRY((!\triangle_gen|Add1~5\) # (!\triangle_gen|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(3),
	datad => VCC,
	cin => \triangle_gen|Add1~5\,
	combout => \triangle_gen|Add1~6_combout\,
	cout => \triangle_gen|Add1~7\);

-- Location: LCCOMB_X49_Y21_N8
\triangle_gen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~8_combout\ = (\triangle_gen|count\(4) & ((GND) # (!\triangle_gen|Add1~7\))) # (!\triangle_gen|count\(4) & (\triangle_gen|Add1~7\ $ (GND)))
-- \triangle_gen|Add1~9\ = CARRY((\triangle_gen|count\(4)) # (!\triangle_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(4),
	datad => VCC,
	cin => \triangle_gen|Add1~7\,
	combout => \triangle_gen|Add1~8_combout\,
	cout => \triangle_gen|Add1~9\);

-- Location: LCCOMB_X49_Y21_N10
\triangle_gen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~10_combout\ = (\triangle_gen|count\(5) & (!\triangle_gen|Add1~9\)) # (!\triangle_gen|count\(5) & ((\triangle_gen|Add1~9\) # (GND)))
-- \triangle_gen|Add1~11\ = CARRY((!\triangle_gen|Add1~9\) # (!\triangle_gen|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(5),
	datad => VCC,
	cin => \triangle_gen|Add1~9\,
	combout => \triangle_gen|Add1~10_combout\,
	cout => \triangle_gen|Add1~11\);

-- Location: LCCOMB_X49_Y21_N12
\triangle_gen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~12_combout\ = (\triangle_gen|count\(6) & (\triangle_gen|Add1~11\ $ (GND))) # (!\triangle_gen|count\(6) & (!\triangle_gen|Add1~11\ & VCC))
-- \triangle_gen|Add1~13\ = CARRY((\triangle_gen|count\(6) & !\triangle_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(6),
	datad => VCC,
	cin => \triangle_gen|Add1~11\,
	combout => \triangle_gen|Add1~12_combout\,
	cout => \triangle_gen|Add1~13\);

-- Location: LCCOMB_X49_Y21_N14
\triangle_gen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~14_combout\ = (\triangle_gen|count\(7) & (\triangle_gen|Add1~13\ & VCC)) # (!\triangle_gen|count\(7) & (!\triangle_gen|Add1~13\))
-- \triangle_gen|Add1~15\ = CARRY((!\triangle_gen|count\(7) & !\triangle_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(7),
	datad => VCC,
	cin => \triangle_gen|Add1~13\,
	combout => \triangle_gen|Add1~14_combout\,
	cout => \triangle_gen|Add1~15\);

-- Location: LCCOMB_X49_Y21_N16
\triangle_gen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~16_combout\ = (\triangle_gen|count\(8) & ((GND) # (!\triangle_gen|Add1~15\))) # (!\triangle_gen|count\(8) & (\triangle_gen|Add1~15\ $ (GND)))
-- \triangle_gen|Add1~17\ = CARRY((\triangle_gen|count\(8)) # (!\triangle_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(8),
	datad => VCC,
	cin => \triangle_gen|Add1~15\,
	combout => \triangle_gen|Add1~16_combout\,
	cout => \triangle_gen|Add1~17\);

-- Location: LCCOMB_X49_Y21_N18
\triangle_gen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~18_combout\ = (\triangle_gen|count\(9) & (!\triangle_gen|Add1~17\)) # (!\triangle_gen|count\(9) & ((\triangle_gen|Add1~17\) # (GND)))
-- \triangle_gen|Add1~19\ = CARRY((!\triangle_gen|Add1~17\) # (!\triangle_gen|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(9),
	datad => VCC,
	cin => \triangle_gen|Add1~17\,
	combout => \triangle_gen|Add1~18_combout\,
	cout => \triangle_gen|Add1~19\);

-- Location: LCCOMB_X49_Y21_N20
\triangle_gen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~20_combout\ = (\triangle_gen|count\(10) & (\triangle_gen|Add1~19\ $ (GND))) # (!\triangle_gen|count\(10) & (!\triangle_gen|Add1~19\ & VCC))
-- \triangle_gen|Add1~21\ = CARRY((\triangle_gen|count\(10) & !\triangle_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(10),
	datad => VCC,
	cin => \triangle_gen|Add1~19\,
	combout => \triangle_gen|Add1~20_combout\,
	cout => \triangle_gen|Add1~21\);

-- Location: LCCOMB_X49_Y21_N22
\triangle_gen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~22_combout\ = (\triangle_gen|count\(11) & (\triangle_gen|Add1~21\ & VCC)) # (!\triangle_gen|count\(11) & (!\triangle_gen|Add1~21\))
-- \triangle_gen|Add1~23\ = CARRY((!\triangle_gen|count\(11) & !\triangle_gen|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(11),
	datad => VCC,
	cin => \triangle_gen|Add1~21\,
	combout => \triangle_gen|Add1~22_combout\,
	cout => \triangle_gen|Add1~23\);

-- Location: LCCOMB_X49_Y21_N24
\triangle_gen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~24_combout\ = (\triangle_gen|count\(12) & (\triangle_gen|Add1~23\ $ (GND))) # (!\triangle_gen|count\(12) & (!\triangle_gen|Add1~23\ & VCC))
-- \triangle_gen|Add1~25\ = CARRY((\triangle_gen|count\(12) & !\triangle_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(12),
	datad => VCC,
	cin => \triangle_gen|Add1~23\,
	combout => \triangle_gen|Add1~24_combout\,
	cout => \triangle_gen|Add1~25\);

-- Location: LCCOMB_X49_Y21_N26
\triangle_gen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~26_combout\ = (\triangle_gen|count\(13) & (\triangle_gen|Add1~25\ & VCC)) # (!\triangle_gen|count\(13) & (!\triangle_gen|Add1~25\))
-- \triangle_gen|Add1~27\ = CARRY((!\triangle_gen|count\(13) & !\triangle_gen|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(13),
	datad => VCC,
	cin => \triangle_gen|Add1~25\,
	combout => \triangle_gen|Add1~26_combout\,
	cout => \triangle_gen|Add1~27\);

-- Location: LCCOMB_X49_Y21_N28
\triangle_gen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~28_combout\ = (\triangle_gen|count\(14) & (\triangle_gen|Add1~27\ $ (GND))) # (!\triangle_gen|count\(14) & (!\triangle_gen|Add1~27\ & VCC))
-- \triangle_gen|Add1~29\ = CARRY((\triangle_gen|count\(14) & !\triangle_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(14),
	datad => VCC,
	cin => \triangle_gen|Add1~27\,
	combout => \triangle_gen|Add1~28_combout\,
	cout => \triangle_gen|Add1~29\);

-- Location: LCCOMB_X49_Y21_N30
\triangle_gen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~30_combout\ = (\triangle_gen|count\(15) & (!\triangle_gen|Add1~29\)) # (!\triangle_gen|count\(15) & ((\triangle_gen|Add1~29\) # (GND)))
-- \triangle_gen|Add1~31\ = CARRY((!\triangle_gen|Add1~29\) # (!\triangle_gen|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(15),
	datad => VCC,
	cin => \triangle_gen|Add1~29\,
	combout => \triangle_gen|Add1~30_combout\,
	cout => \triangle_gen|Add1~31\);

-- Location: LCCOMB_X49_Y20_N0
\triangle_gen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~32_combout\ = (\triangle_gen|count\(16) & ((GND) # (!\triangle_gen|Add1~31\))) # (!\triangle_gen|count\(16) & (\triangle_gen|Add1~31\ $ (GND)))
-- \triangle_gen|Add1~33\ = CARRY((\triangle_gen|count\(16)) # (!\triangle_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(16),
	datad => VCC,
	cin => \triangle_gen|Add1~31\,
	combout => \triangle_gen|Add1~32_combout\,
	cout => \triangle_gen|Add1~33\);

-- Location: LCCOMB_X49_Y20_N2
\triangle_gen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~34_combout\ = (\triangle_gen|count\(17) & (\triangle_gen|Add1~33\ & VCC)) # (!\triangle_gen|count\(17) & (!\triangle_gen|Add1~33\))
-- \triangle_gen|Add1~35\ = CARRY((!\triangle_gen|count\(17) & !\triangle_gen|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(17),
	datad => VCC,
	cin => \triangle_gen|Add1~33\,
	combout => \triangle_gen|Add1~34_combout\,
	cout => \triangle_gen|Add1~35\);

-- Location: LCCOMB_X49_Y20_N4
\triangle_gen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~36_combout\ = (\triangle_gen|count\(18) & (\triangle_gen|Add1~35\ $ (GND))) # (!\triangle_gen|count\(18) & (!\triangle_gen|Add1~35\ & VCC))
-- \triangle_gen|Add1~37\ = CARRY((\triangle_gen|count\(18) & !\triangle_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(18),
	datad => VCC,
	cin => \triangle_gen|Add1~35\,
	combout => \triangle_gen|Add1~36_combout\,
	cout => \triangle_gen|Add1~37\);

-- Location: LCCOMB_X49_Y20_N6
\triangle_gen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~38_combout\ = (\triangle_gen|count\(19) & (\triangle_gen|Add1~37\ & VCC)) # (!\triangle_gen|count\(19) & (!\triangle_gen|Add1~37\))
-- \triangle_gen|Add1~39\ = CARRY((!\triangle_gen|count\(19) & !\triangle_gen|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(19),
	datad => VCC,
	cin => \triangle_gen|Add1~37\,
	combout => \triangle_gen|Add1~38_combout\,
	cout => \triangle_gen|Add1~39\);

-- Location: LCCOMB_X49_Y20_N8
\triangle_gen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~40_combout\ = (\triangle_gen|count\(20) & (\triangle_gen|Add1~39\ $ (GND))) # (!\triangle_gen|count\(20) & (!\triangle_gen|Add1~39\ & VCC))
-- \triangle_gen|Add1~41\ = CARRY((\triangle_gen|count\(20) & !\triangle_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(20),
	datad => VCC,
	cin => \triangle_gen|Add1~39\,
	combout => \triangle_gen|Add1~40_combout\,
	cout => \triangle_gen|Add1~41\);

-- Location: LCCOMB_X49_Y20_N10
\triangle_gen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~42_combout\ = (\triangle_gen|count\(21) & (!\triangle_gen|Add1~41\)) # (!\triangle_gen|count\(21) & ((\triangle_gen|Add1~41\) # (GND)))
-- \triangle_gen|Add1~43\ = CARRY((!\triangle_gen|Add1~41\) # (!\triangle_gen|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(21),
	datad => VCC,
	cin => \triangle_gen|Add1~41\,
	combout => \triangle_gen|Add1~42_combout\,
	cout => \triangle_gen|Add1~43\);

-- Location: LCCOMB_X49_Y20_N12
\triangle_gen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~44_combout\ = (\triangle_gen|count\(22) & (\triangle_gen|Add1~43\ $ (GND))) # (!\triangle_gen|count\(22) & (!\triangle_gen|Add1~43\ & VCC))
-- \triangle_gen|Add1~45\ = CARRY((\triangle_gen|count\(22) & !\triangle_gen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(22),
	datad => VCC,
	cin => \triangle_gen|Add1~43\,
	combout => \triangle_gen|Add1~44_combout\,
	cout => \triangle_gen|Add1~45\);

-- Location: LCCOMB_X49_Y20_N14
\triangle_gen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~46_combout\ = (\triangle_gen|count\(23) & (!\triangle_gen|Add1~45\)) # (!\triangle_gen|count\(23) & ((\triangle_gen|Add1~45\) # (GND)))
-- \triangle_gen|Add1~47\ = CARRY((!\triangle_gen|Add1~45\) # (!\triangle_gen|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(23),
	datad => VCC,
	cin => \triangle_gen|Add1~45\,
	combout => \triangle_gen|Add1~46_combout\,
	cout => \triangle_gen|Add1~47\);

-- Location: LCCOMB_X49_Y20_N16
\triangle_gen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~48_combout\ = (\triangle_gen|count\(24) & (\triangle_gen|Add1~47\ $ (GND))) # (!\triangle_gen|count\(24) & (!\triangle_gen|Add1~47\ & VCC))
-- \triangle_gen|Add1~49\ = CARRY((\triangle_gen|count\(24) & !\triangle_gen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(24),
	datad => VCC,
	cin => \triangle_gen|Add1~47\,
	combout => \triangle_gen|Add1~48_combout\,
	cout => \triangle_gen|Add1~49\);

-- Location: LCCOMB_X49_Y20_N18
\triangle_gen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~50_combout\ = (\triangle_gen|count\(25) & (!\triangle_gen|Add1~49\)) # (!\triangle_gen|count\(25) & ((\triangle_gen|Add1~49\) # (GND)))
-- \triangle_gen|Add1~51\ = CARRY((!\triangle_gen|Add1~49\) # (!\triangle_gen|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(25),
	datad => VCC,
	cin => \triangle_gen|Add1~49\,
	combout => \triangle_gen|Add1~50_combout\,
	cout => \triangle_gen|Add1~51\);

-- Location: LCCOMB_X49_Y20_N20
\triangle_gen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~52_combout\ = (\triangle_gen|count\(26) & (\triangle_gen|Add1~51\ $ (GND))) # (!\triangle_gen|count\(26) & (!\triangle_gen|Add1~51\ & VCC))
-- \triangle_gen|Add1~53\ = CARRY((\triangle_gen|count\(26) & !\triangle_gen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(26),
	datad => VCC,
	cin => \triangle_gen|Add1~51\,
	combout => \triangle_gen|Add1~52_combout\,
	cout => \triangle_gen|Add1~53\);

-- Location: LCCOMB_X49_Y20_N22
\triangle_gen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~54_combout\ = (\triangle_gen|count\(27) & (!\triangle_gen|Add1~53\)) # (!\triangle_gen|count\(27) & ((\triangle_gen|Add1~53\) # (GND)))
-- \triangle_gen|Add1~55\ = CARRY((!\triangle_gen|Add1~53\) # (!\triangle_gen|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(27),
	datad => VCC,
	cin => \triangle_gen|Add1~53\,
	combout => \triangle_gen|Add1~54_combout\,
	cout => \triangle_gen|Add1~55\);

-- Location: LCCOMB_X49_Y20_N24
\triangle_gen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~56_combout\ = (\triangle_gen|count\(28) & (\triangle_gen|Add1~55\ $ (GND))) # (!\triangle_gen|count\(28) & (!\triangle_gen|Add1~55\ & VCC))
-- \triangle_gen|Add1~57\ = CARRY((\triangle_gen|count\(28) & !\triangle_gen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(28),
	datad => VCC,
	cin => \triangle_gen|Add1~55\,
	combout => \triangle_gen|Add1~56_combout\,
	cout => \triangle_gen|Add1~57\);

-- Location: LCCOMB_X49_Y20_N26
\triangle_gen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~58_combout\ = (\triangle_gen|count\(29) & (!\triangle_gen|Add1~57\)) # (!\triangle_gen|count\(29) & ((\triangle_gen|Add1~57\) # (GND)))
-- \triangle_gen|Add1~59\ = CARRY((!\triangle_gen|Add1~57\) # (!\triangle_gen|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|count\(29),
	datad => VCC,
	cin => \triangle_gen|Add1~57\,
	combout => \triangle_gen|Add1~58_combout\,
	cout => \triangle_gen|Add1~59\);

-- Location: LCCOMB_X49_Y20_N28
\triangle_gen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~60_combout\ = (\triangle_gen|count\(30) & (\triangle_gen|Add1~59\ $ (GND))) # (!\triangle_gen|count\(30) & (!\triangle_gen|Add1~59\ & VCC))
-- \triangle_gen|Add1~61\ = CARRY((\triangle_gen|count\(30) & !\triangle_gen|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen|count\(30),
	datad => VCC,
	cin => \triangle_gen|Add1~59\,
	combout => \triangle_gen|Add1~60_combout\,
	cout => \triangle_gen|Add1~61\);

-- Location: LCCOMB_X49_Y20_N30
\triangle_gen|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|Add1~62_combout\ = \triangle_gen|Add1~61\ $ (\triangle_gen|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \triangle_gen|count\(31),
	cin => \triangle_gen|Add1~61\,
	combout => \triangle_gen|Add1~62_combout\);

-- Location: LCFF_X53_Y18_N15
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_next~9_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\);

-- Location: LCFF_X48_Y20_N29
\i2s|data_shift[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~6_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(27));

-- Location: LCFF_X53_Y18_N5
\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|state_next~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_master|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_2~regout\);

-- Location: LCFF_X51_Y19_N7
\wm8731_init|i2c_init|state_reg.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|state_reg~23_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_init|state_reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\);

-- Location: LCCOMB_X50_Y17_N20
\wm8731_init|i2c_master|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~4_combout\ = (\wm8731_init|i2c_master|delay_reg\(2) & ((GND) # (!\wm8731_init|i2c_master|Add2~3\))) # (!\wm8731_init|i2c_master|delay_reg\(2) & (\wm8731_init|i2c_master|Add2~3\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~5\ = CARRY((\wm8731_init|i2c_master|delay_reg\(2)) # (!\wm8731_init|i2c_master|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(2),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~3\,
	combout => \wm8731_init|i2c_master|Add2~4_combout\,
	cout => \wm8731_init|i2c_master|Add2~5\);

-- Location: LCCOMB_X50_Y17_N28
\wm8731_init|i2c_master|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~12_combout\ = (\wm8731_init|i2c_master|delay_reg\(6) & ((GND) # (!\wm8731_init|i2c_master|Add2~11\))) # (!\wm8731_init|i2c_master|delay_reg\(6) & (\wm8731_init|i2c_master|Add2~11\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~13\ = CARRY((\wm8731_init|i2c_master|delay_reg\(6)) # (!\wm8731_init|i2c_master|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(6),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~11\,
	combout => \wm8731_init|i2c_master|Add2~12_combout\,
	cout => \wm8731_init|i2c_master|Add2~13\);

-- Location: LCCOMB_X50_Y17_N30
\wm8731_init|i2c_master|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~14_combout\ = (\wm8731_init|i2c_master|delay_reg\(7) & (\wm8731_init|i2c_master|Add2~13\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(7) & (!\wm8731_init|i2c_master|Add2~13\))
-- \wm8731_init|i2c_master|Add2~15\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(7) & !\wm8731_init|i2c_master|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(7),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~13\,
	combout => \wm8731_init|i2c_master|Add2~14_combout\,
	cout => \wm8731_init|i2c_master|Add2~15\);

-- Location: LCCOMB_X50_Y16_N2
\wm8731_init|i2c_master|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~18_combout\ = (\wm8731_init|i2c_master|delay_reg\(9) & (\wm8731_init|i2c_master|Add2~17\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(9) & (!\wm8731_init|i2c_master|Add2~17\))
-- \wm8731_init|i2c_master|Add2~19\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(9) & !\wm8731_init|i2c_master|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(9),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~17\,
	combout => \wm8731_init|i2c_master|Add2~18_combout\,
	cout => \wm8731_init|i2c_master|Add2~19\);

-- Location: LCCOMB_X50_Y16_N8
\wm8731_init|i2c_master|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~24_combout\ = (\wm8731_init|i2c_master|delay_reg\(12) & ((GND) # (!\wm8731_init|i2c_master|Add2~23\))) # (!\wm8731_init|i2c_master|delay_reg\(12) & (\wm8731_init|i2c_master|Add2~23\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~25\ = CARRY((\wm8731_init|i2c_master|delay_reg\(12)) # (!\wm8731_init|i2c_master|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(12),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~23\,
	combout => \wm8731_init|i2c_master|Add2~24_combout\,
	cout => \wm8731_init|i2c_master|Add2~25\);

-- Location: LCCOMB_X50_Y16_N10
\wm8731_init|i2c_master|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~26_combout\ = (\wm8731_init|i2c_master|delay_reg\(13) & (\wm8731_init|i2c_master|Add2~25\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(13) & (!\wm8731_init|i2c_master|Add2~25\))
-- \wm8731_init|i2c_master|Add2~27\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(13) & !\wm8731_init|i2c_master|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(13),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~25\,
	combout => \wm8731_init|i2c_master|Add2~26_combout\,
	cout => \wm8731_init|i2c_master|Add2~27\);

-- Location: LCCOMB_X50_Y16_N12
\wm8731_init|i2c_master|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~28_combout\ = (\wm8731_init|i2c_master|delay_reg\(14) & ((GND) # (!\wm8731_init|i2c_master|Add2~27\))) # (!\wm8731_init|i2c_master|delay_reg\(14) & (\wm8731_init|i2c_master|Add2~27\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~29\ = CARRY((\wm8731_init|i2c_master|delay_reg\(14)) # (!\wm8731_init|i2c_master|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(14),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~27\,
	combout => \wm8731_init|i2c_master|Add2~28_combout\,
	cout => \wm8731_init|i2c_master|Add2~29\);

-- Location: LCCOMB_X50_Y16_N14
\wm8731_init|i2c_master|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~30_combout\ = (\wm8731_init|i2c_master|delay_reg\(15) & (\wm8731_init|i2c_master|Add2~29\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(15) & (!\wm8731_init|i2c_master|Add2~29\))
-- \wm8731_init|i2c_master|Add2~31\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(15) & !\wm8731_init|i2c_master|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(15),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~29\,
	combout => \wm8731_init|i2c_master|Add2~30_combout\,
	cout => \wm8731_init|i2c_master|Add2~31\);

-- Location: LCFF_X54_Y18_N3
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector59~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\);

-- Location: LCFF_X48_Y20_N3
\i2s|data_shift[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~7_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(26));

-- Location: LCFF_X51_Y19_N29
\wm8731_init|i2c_init|start_flag_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|start_flag_reg~1_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|start_flag_reg~regout\);

-- Location: LCFF_X50_Y19_N13
\wm8731_init|i2c_init_start_pulse|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[6]~29_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(6));

-- Location: LCFF_X50_Y19_N31
\wm8731_init|i2c_init_start_pulse|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[15]~47_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(15));

-- Location: LCCOMB_X55_Y19_N20
\wm8731_init|i2c_init|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~8_combout\ = (\wm8731_init|i2c_init|address_reg\(4) & (\wm8731_init|i2c_init|Add0~7\ $ (GND))) # (!\wm8731_init|i2c_init|address_reg\(4) & (!\wm8731_init|i2c_init|Add0~7\ & VCC))
-- \wm8731_init|i2c_init|Add0~9\ = CARRY((\wm8731_init|i2c_init|address_reg\(4) & !\wm8731_init|i2c_init|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|address_reg\(4),
	datad => VCC,
	cin => \wm8731_init|i2c_init|Add0~7\,
	combout => \wm8731_init|i2c_init|Add0~8_combout\,
	cout => \wm8731_init|i2c_init|Add0~9\);

-- Location: LCFF_X50_Y20_N3
\i2s|data_shift[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~8_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(25));

-- Location: LCCOMB_X50_Y19_N12
\wm8731_init|i2c_init_start_pulse|count[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[6]~29_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(6) & (\wm8731_init|i2c_init_start_pulse|count[5]~28\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(6) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[5]~28\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[6]~30\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(6) & !\wm8731_init|i2c_init_start_pulse|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(6),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[5]~28\,
	combout => \wm8731_init|i2c_init_start_pulse|count[6]~29_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[6]~30\);

-- Location: LCCOMB_X50_Y19_N28
\wm8731_init|i2c_init_start_pulse|count[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[14]~45_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(14) & (\wm8731_init|i2c_init_start_pulse|count[13]~44\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(14) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[13]~44\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[14]~46\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(14) & !\wm8731_init|i2c_init_start_pulse|count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(14),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[13]~44\,
	combout => \wm8731_init|i2c_init_start_pulse|count[14]~45_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[14]~46\);

-- Location: LCCOMB_X50_Y19_N30
\wm8731_init|i2c_init_start_pulse|count[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[15]~47_combout\ = \wm8731_init|i2c_init_start_pulse|count[14]~46\ $ (\wm8731_init|i2c_init_start_pulse|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init_start_pulse|count\(15),
	cin => \wm8731_init|i2c_init_start_pulse|count[14]~46\,
	combout => \wm8731_init|i2c_init_start_pulse|count[15]~47_combout\);

-- Location: LCFF_X50_Y20_N1
\i2s|data_shift[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~9_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(24));

-- Location: LCFF_X50_Y20_N23
\i2s|data_shift[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~10_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(23));

-- Location: LCFF_X50_Y20_N25
\i2s|data_shift[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~11_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(22));

-- Location: LCFF_X50_Y20_N27
\i2s|data_shift[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~12_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(21));

-- Location: LCFF_X50_Y20_N17
\i2s|data_shift[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~13_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(20));

-- Location: LCFF_X50_Y20_N15
\i2s|data_shift[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~14_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(19));

-- Location: LCFF_X50_Y20_N21
\i2s|data_shift[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~15_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(18));

-- Location: LCFF_X50_Y20_N11
\i2s|data_shift[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~16_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(17));

-- Location: LCFF_X50_Y20_N5
\i2s|data_shift[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~17_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(16));

-- Location: LCFF_X48_Y20_N13
\i2s|data_shift[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~18_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(15));

-- Location: LCFF_X50_Y21_N17
\i2s|data_shift[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~19_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(14));

-- Location: LCFF_X50_Y21_N27
\i2s|data_shift[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~20_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(13));

-- Location: LCFF_X50_Y21_N9
\i2s|data_shift[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~21_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(12));

-- Location: LCFF_X50_Y21_N19
\i2s|data_shift[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~22_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(11));

-- Location: LCFF_X50_Y21_N5
\i2s|data_shift[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~23_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(10));

-- Location: LCFF_X50_Y21_N3
\i2s|data_shift[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~24_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(9));

-- Location: LCFF_X50_Y21_N29
\i2s|data_shift[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~25_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(8));

-- Location: LCFF_X50_Y21_N23
\i2s|data_shift[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift~26_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(7));

-- Location: LCFF_X53_Y17_N31
\resetter|reset_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(7));

-- Location: LCCOMB_X53_Y17_N6
\resetter|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~1_combout\ = (\resetter|reset_count\(7) & (!\resetter|reset_count\(6) & (\resetter|reset_count\(5) & !\resetter|reset_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(7),
	datab => \resetter|reset_count\(6),
	datac => \resetter|reset_count\(5),
	datad => \resetter|reset_count\(8),
	combout => \resetter|Equal0~1_combout\);

-- Location: LCFF_X53_Y17_N21
\resetter|reset_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(2));

-- Location: LCFF_X53_Y16_N11
\resetter|reset_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(13));

-- Location: LCFF_X53_Y17_N3
\clk_12_5_divider|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clk_12_5_divider|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_12_5_divider|counter\(0));

-- Location: LCFF_X51_Y20_N11
\i2s|div_256|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|div_256|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|div_256|counter\(0));

-- Location: LCFF_X50_Y20_N31
\triangle_gen|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(31));

-- Location: LCCOMB_X50_Y20_N12
\i2s|data_shift~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~3_combout\ = (\i2s|Equal0~0_combout\ & (\i2s|data_shift\(29))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(29))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|data_shift\(29),
	datac => \i2s|Equal0~1_combout\,
	datad => \triangle_gen|count\(31),
	combout => \i2s|data_shift~3_combout\);

-- Location: LCCOMB_X54_Y17_N2
\controller_reader|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Selector0~0_combout\ = (\controller_reader|state\(3)) # ((\controller_reader|state\(4)) # (\controller_reader|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(4),
	datad => \controller_reader|state\(0),
	combout => \controller_reader|Selector0~0_combout\);

-- Location: LCCOMB_X54_Y17_N10
\controller_reader|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Selector0~1_combout\ = (\controller_reader|Decoder1~0_combout\ & (!\controller_reader|state\(1) & !\controller_reader|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|Decoder1~0_combout\,
	datac => \controller_reader|state\(1),
	datad => \controller_reader|Selector0~0_combout\,
	combout => \controller_reader|Selector0~1_combout\);

-- Location: LCCOMB_X54_Y17_N0
\controller_reader|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Selector0~2_combout\ = (\controller_reader|state\(2) & (((\controller_reader|buttons_latch\(0))))) # (!\controller_reader|state\(2) & ((\controller_reader|Selector0~1_combout\ & (\NES_DO~combout\)) # 
-- (!\controller_reader|Selector0~1_combout\ & ((\controller_reader|buttons_latch\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(0),
	datad => \controller_reader|Selector0~1_combout\,
	combout => \controller_reader|Selector0~2_combout\);

-- Location: LCCOMB_X58_Y17_N26
\controller_reader|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~0_combout\ = (\controller_reader|state\(2) & (!\controller_reader|state\(3) & (!\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~0_combout\);

-- Location: LCCOMB_X58_Y17_N20
\controller_reader|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~1_combout\ = (\controller_reader|state\(2) & (!\controller_reader|state\(3) & (\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~1_combout\);

-- Location: LCCOMB_X58_Y17_N22
\controller_reader|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~2_combout\ = (!\controller_reader|state\(2) & (\controller_reader|state\(3) & (!\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~2_combout\);

-- Location: LCCOMB_X58_Y17_N12
\controller_reader|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~3_combout\ = (!\controller_reader|state\(2) & (\controller_reader|state\(3) & (\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~3_combout\);

-- Location: LCCOMB_X58_Y17_N2
\controller_reader|buttons_latch_next[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[4]~3_combout\ = (\controller_reader|Decoder0~3_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(4)))))) # 
-- (!\controller_reader|Decoder0~3_combout\ & (((\controller_reader|buttons_latch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~3_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(4),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[4]~3_combout\);

-- Location: LCCOMB_X58_Y17_N10
\controller_reader|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~4_combout\ = (\controller_reader|state\(2) & (\controller_reader|state\(3) & (!\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~4_combout\);

-- Location: LCCOMB_X58_Y17_N8
\controller_reader|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~5_combout\ = (\controller_reader|state\(2) & (\controller_reader|state\(3) & (\controller_reader|state\(1) & !\controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~5_combout\);

-- Location: LCCOMB_X58_Y17_N6
\controller_reader|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder0~6_combout\ = (!\controller_reader|state\(2) & (!\controller_reader|state\(3) & (!\controller_reader|state\(1) & \controller_reader|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(1),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|Decoder0~6_combout\);

-- Location: LCCOMB_X53_Y17_N2
\clk_12_5_divider|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_12_5_divider|counter~1_combout\ = ((!\resetter|Equal0~4_combout\) # (!\clk_12_5_divider|counter\(0))) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \clk_12_5_divider|counter\(0),
	datad => \resetter|Equal0~4_combout\,
	combout => \clk_12_5_divider|counter~1_combout\);

-- Location: LCCOMB_X51_Y20_N10
\i2s|div_256|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|div_256|counter~1_combout\ = ((!\resetter|Equal0~4_combout\) # (!\i2s|div_256|counter\(0))) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \i2s|div_256|counter\(0),
	datad => \resetter|Equal0~4_combout\,
	combout => \i2s|div_256|counter~1_combout\);

-- Location: LCFF_X50_Y20_N29
\triangle_gen|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(30));

-- Location: LCCOMB_X50_Y20_N18
\i2s|data_shift~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~4_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(28))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(28))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(28),
	datad => \triangle_gen|count\(30),
	combout => \i2s|data_shift~4_combout\);

-- Location: LCFF_X48_Y20_N7
\triangle_gen|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(28));

-- Location: LCFF_X49_Y20_N23
\triangle_gen|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(27));

-- Location: LCFF_X49_Y20_N21
\triangle_gen|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(26));

-- Location: LCFF_X49_Y20_N19
\triangle_gen|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(25));

-- Location: LCFF_X49_Y20_N17
\triangle_gen|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(24));

-- Location: LCFF_X49_Y20_N15
\triangle_gen|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(23));

-- Location: LCFF_X49_Y20_N13
\triangle_gen|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(22));

-- Location: LCFF_X49_Y20_N11
\triangle_gen|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(21));

-- Location: LCFF_X49_Y20_N9
\triangle_gen|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(20));

-- Location: LCFF_X49_Y20_N7
\triangle_gen|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(19));

-- Location: LCFF_X49_Y20_N5
\triangle_gen|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(18));

-- Location: LCFF_X49_Y20_N3
\triangle_gen|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(17));

-- Location: LCFF_X49_Y20_N1
\triangle_gen|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(16));

-- Location: LCFF_X49_Y21_N31
\triangle_gen|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(15));

-- Location: LCFF_X49_Y21_N29
\triangle_gen|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(14));

-- Location: LCFF_X49_Y21_N27
\triangle_gen|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(13));

-- Location: LCFF_X49_Y21_N25
\triangle_gen|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(12));

-- Location: LCFF_X49_Y21_N23
\triangle_gen|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(11));

-- Location: LCFF_X49_Y21_N21
\triangle_gen|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(10));

-- Location: LCFF_X49_Y21_N19
\triangle_gen|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(9));

-- Location: LCFF_X49_Y21_N17
\triangle_gen|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(8));

-- Location: LCFF_X49_Y21_N15
\triangle_gen|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(7));

-- Location: LCFF_X49_Y21_N13
\triangle_gen|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(6));

-- Location: LCFF_X49_Y21_N11
\triangle_gen|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(5));

-- Location: LCFF_X49_Y21_N9
\triangle_gen|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(4));

-- Location: LCFF_X49_Y21_N7
\triangle_gen|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(3));

-- Location: LCFF_X49_Y21_N5
\triangle_gen|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(2));

-- Location: LCFF_X49_Y21_N3
\triangle_gen|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(1));

-- Location: LCFF_X49_Y21_N1
\triangle_gen|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(0));

-- Location: LCFF_X50_Y20_N7
\triangle_gen|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i2s|LRCK~clkctrl_outclk\,
	datain => \triangle_gen|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \triangle_gen|count\(29));

-- Location: LCCOMB_X50_Y20_N30
\triangle_gen|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|count~0_combout\ = (\triangle_gen|Add1~62_combout\ & ((\triangle_gen|Add1~56_combout\) # ((\triangle_gen|Add1~58_combout\) # (\triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|Add1~56_combout\,
	datab => \triangle_gen|Add1~58_combout\,
	datac => \triangle_gen|Add1~62_combout\,
	datad => \triangle_gen|Add1~60_combout\,
	combout => \triangle_gen|count~0_combout\);

-- Location: LCFF_X53_Y20_N13
\wm8731_init|i2c_master|bit_count_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector21~0_combout\,
	ena => \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|bit_count_reg\(3));

-- Location: LCFF_X57_Y20_N3
\wm8731_init|i2c_master|data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector36~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(0));

-- Location: LCCOMB_X53_Y20_N20
\wm8731_init|i2c_master|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add1~1_combout\ = (\wm8731_init|i2c_master|bit_count_reg\(0)) # (\wm8731_init|i2c_master|bit_count_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_master|bit_count_reg\(0),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Add1~1_combout\);

-- Location: LCCOMB_X55_Y20_N10
\wm8731_init|i2c_master|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux0~0_combout\ = (!\wm8731_init|i2c_master|bit_count_reg\(0) & ((\wm8731_init|i2c_master|bit_count_reg\(1) & ((\wm8731_init|i2c_master|addr_reg\(4)))) # (!\wm8731_init|i2c_master|bit_count_reg\(1) & 
-- (\wm8731_init|i2c_master|addr_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|addr_reg\(6),
	datab => \wm8731_init|i2c_master|bit_count_reg\(1),
	datac => \wm8731_init|i2c_master|addr_reg\(4),
	datad => \wm8731_init|i2c_master|bit_count_reg\(0),
	combout => \wm8731_init|i2c_master|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y20_N16
\wm8731_init|i2c_master|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux0~1_combout\ = (\wm8731_init|i2c_master|Mux0~0_combout\) # ((\wm8731_init|i2c_master|bit_count_reg\(0) & (\wm8731_init|i2c_master|addr_reg\(5) & \wm8731_init|i2c_master|bit_count_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(0),
	datab => \wm8731_init|i2c_master|Mux0~0_combout\,
	datac => \wm8731_init|i2c_master|addr_reg\(5),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y20_N26
\wm8731_init|i2c_master|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux0~2_combout\ = (\wm8731_init|i2c_master|bit_count_reg\(0) & (((\wm8731_init|i2c_master|addr_reg\(3)) # (\wm8731_init|i2c_master|bit_count_reg\(1))))) # (!\wm8731_init|i2c_master|bit_count_reg\(0) & 
-- (\wm8731_init|i2c_master|addr_reg\(2) & ((!\wm8731_init|i2c_master|bit_count_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(0),
	datab => \wm8731_init|i2c_master|addr_reg\(2),
	datac => \wm8731_init|i2c_master|addr_reg\(3),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Mux0~2_combout\);

-- Location: LCCOMB_X54_Y20_N26
\wm8731_init|i2c_master|Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~2_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ & ((\wm8731_init|i2c_master|bit_count_reg\(3)) # ((\wm8731_init|i2c_master|bit_count_reg\(2)) # (\wm8731_init|i2c_master|bit_count_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(3),
	datab => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datac => \wm8731_init|i2c_master|bit_count_reg\(2),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Selector38~2_combout\);

-- Location: LCCOMB_X55_Y20_N24
\wm8731_init|i2c_master|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~0_combout\ = (\wm8731_init|i2c_master|addr_reg\(0) & (\wm8731_init|i2c_init|cmd_address_reg\(0) & (\wm8731_init|i2c_init|cmd_address_reg\(1) $ (!\wm8731_init|i2c_master|addr_reg\(1))))) # 
-- (!\wm8731_init|i2c_master|addr_reg\(0) & (!\wm8731_init|i2c_init|cmd_address_reg\(0) & (\wm8731_init|i2c_init|cmd_address_reg\(1) $ (!\wm8731_init|i2c_master|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|addr_reg\(0),
	datab => \wm8731_init|i2c_init|cmd_address_reg\(1),
	datac => \wm8731_init|i2c_master|addr_reg\(1),
	datad => \wm8731_init|i2c_init|cmd_address_reg\(0),
	combout => \wm8731_init|i2c_master|always0~0_combout\);

-- Location: LCCOMB_X53_Y20_N18
\wm8731_init|i2c_master|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector37~1_combout\ = (\wm8731_init|i2c_master|Selector37~0_combout\ & ((\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\) # (\wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|Selector37~0_combout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \wm8731_init|i2c_master|Selector37~1_combout\);

-- Location: LCFF_X51_Y17_N19
\wm8731_init|i2c_master|delay_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[14]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(14));

-- Location: LCFF_X51_Y17_N27
\wm8731_init|i2c_master|delay_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(12));

-- Location: LCFF_X51_Y17_N5
\wm8731_init|i2c_master|delay_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(6));

-- Location: LCCOMB_X53_Y18_N20
\wm8731_init|i2c_master|scl_o_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_o_reg~0_combout\ = (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\ & (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\ & 
-- (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & !\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	combout => \wm8731_init|i2c_master|scl_o_reg~0_combout\);

-- Location: LCFF_X57_Y18_N23
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~36_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\);

-- Location: LCFF_X54_Y18_N11
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~37_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\);

-- Location: LCFF_X57_Y18_N29
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~38_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\);

-- Location: LCCOMB_X57_Y18_N6
\wm8731_init|i2c_master|delay_reg[12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~4_combout\ = (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\ & (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\ & 
-- !\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_2~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_4~regout\,
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_3~regout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~4_combout\);

-- Location: LCCOMB_X50_Y20_N8
\i2s|data_shift~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~5_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(27))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(27))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(27),
	datad => \triangle_gen|count\(29),
	combout => \i2s|data_shift~5_combout\);

-- Location: LCCOMB_X50_Y20_N28
\triangle_gen|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|count~1_combout\ = (\triangle_gen|Add1~56_combout\ & (((\triangle_gen|Add1~60_combout\)))) # (!\triangle_gen|Add1~56_combout\ & ((\triangle_gen|Add1~58_combout\ & ((\triangle_gen|Add1~60_combout\))) # (!\triangle_gen|Add1~58_combout\ & 
-- (\triangle_gen|Add1~62_combout\ & !\triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|Add1~56_combout\,
	datab => \triangle_gen|Add1~58_combout\,
	datac => \triangle_gen|Add1~62_combout\,
	datad => \triangle_gen|Add1~60_combout\,
	combout => \triangle_gen|count~1_combout\);

-- Location: LCCOMB_X48_Y20_N6
\triangle_gen|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|count~2_combout\ = (!\triangle_gen|Add1~56_combout\ & ((\triangle_gen|Add1~58_combout\) # ((\triangle_gen|Add1~60_combout\) # (\triangle_gen|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|Add1~58_combout\,
	datab => \triangle_gen|Add1~60_combout\,
	datac => \triangle_gen|Add1~56_combout\,
	datad => \triangle_gen|Add1~62_combout\,
	combout => \triangle_gen|count~2_combout\);

-- Location: LCCOMB_X50_Y20_N6
\triangle_gen|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \triangle_gen|count~3_combout\ = (\triangle_gen|Add1~56_combout\ & (\triangle_gen|Add1~58_combout\)) # (!\triangle_gen|Add1~56_combout\ & (!\triangle_gen|Add1~58_combout\ & ((\triangle_gen|Add1~62_combout\) # (\triangle_gen|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen|Add1~56_combout\,
	datab => \triangle_gen|Add1~58_combout\,
	datac => \triangle_gen|Add1~62_combout\,
	datad => \triangle_gen|Add1~60_combout\,
	combout => \triangle_gen|count~3_combout\);

-- Location: LCCOMB_X53_Y20_N12
\wm8731_init|i2c_master|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector21~0_combout\ = (\wm8731_init|i2c_master|bit_count_reg[0]~0_combout\) # (\wm8731_init|i2c_master|bit_count_reg\(3) $ (((!\wm8731_init|i2c_master|Add1~1_combout\ & !\wm8731_init|i2c_master|bit_count_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add1~1_combout\,
	datab => \wm8731_init|i2c_master|bit_count_reg\(2),
	datac => \wm8731_init|i2c_master|bit_count_reg\(3),
	datad => \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\,
	combout => \wm8731_init|i2c_master|Selector21~0_combout\);

-- Location: LCFF_X57_Y20_N21
\wm8731_init|i2c_init|data_out_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|init_data_reg\(1),
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(1));

-- Location: LCFF_X57_Y20_N19
\wm8731_init|i2c_init|data_out_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|init_data_reg\(0),
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(0));

-- Location: LCCOMB_X57_Y20_N2
\wm8731_init|i2c_master|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector36~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_reg\(0),
	combout => \wm8731_init|i2c_master|Selector36~0_combout\);

-- Location: LCFF_X54_Y20_N13
\wm8731_init|i2c_init|cur_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~2_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(0));

-- Location: LCCOMB_X56_Y17_N20
\wm8731_init|i2c_init|cmd_start_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~9_combout\ = (!\wm8731_init|i2c_init|data_out_valid_reg~regout\ & (!\wm8731_init|i2c_init|init_data_reg\(8) & !\wm8731_init|i2c_init|cmd_valid_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~9_combout\);

-- Location: LCCOMB_X51_Y17_N18
\wm8731_init|i2c_master|delay_reg[14]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[14]~11_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(14))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ & (\wm8731_init|i2c_master|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~28_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(14),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[14]~11_combout\);

-- Location: LCCOMB_X51_Y17_N26
\wm8731_init|i2c_master|delay_reg[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~13_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(12))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|Add2~24_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~24_combout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(12),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~13_combout\);

-- Location: LCCOMB_X51_Y17_N4
\wm8731_init|i2c_master|delay_reg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[6]~19_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(6))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ 
-- & (\wm8731_init|i2c_master|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~12_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(6),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[6]~19_combout\);

-- Location: LCCOMB_X53_Y18_N30
\wm8731_init|i2c_master|phy_state_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~8_combout\ = (\wm8731_init|i2c_master|Selector26~0_combout\ & (\wm8731_init|i2c_master|phy_state_next~2_combout\ & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & 
-- \wm8731_init|i2c_master|phy_state_next~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector26~0_combout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~3_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~8_combout\);

-- Location: LCCOMB_X57_Y18_N22
\wm8731_init|i2c_master|phy_state_reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~36_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_START_1~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~36_combout\);

-- Location: LCFF_X50_Y18_N19
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~feeder_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\);

-- Location: LCCOMB_X54_Y18_N10
\wm8731_init|i2c_master|phy_state_reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~37_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\ & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~regout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~37_combout\);

-- Location: LCFF_X57_Y18_N1
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~39_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\);

-- Location: LCCOMB_X57_Y18_N28
\wm8731_init|i2c_master|phy_state_reg~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~38_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_3~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~38_combout\);

-- Location: LCCOMB_X48_Y20_N28
\i2s|data_shift~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~6_combout\ = (\i2s|Equal0~0_combout\ & (\i2s|data_shift\(26))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(26))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|data_shift\(26),
	datac => \i2s|Equal0~1_combout\,
	datad => \triangle_gen|count\(28),
	combout => \i2s|data_shift~6_combout\);

-- Location: LCCOMB_X53_Y20_N28
\wm8731_init|i2c_master|Selector37~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector37~3_combout\ = (!\wm8731_init|i2c_master|bit_count_reg\(3) & (!\wm8731_init|i2c_master|bit_count_reg\(2) & !\wm8731_init|i2c_master|bit_count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(3),
	datab => \wm8731_init|i2c_master|bit_count_reg\(2),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Selector37~3_combout\);

-- Location: LCCOMB_X53_Y18_N4
\wm8731_init|i2c_master|state_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_next~0_combout\ = (\wm8731_init|i2c_master|Selector37~3_combout\ & (\wm8731_init|i2c_master|Selector37~0_combout\ & \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|Selector37~3_combout\,
	datac => \wm8731_init|i2c_master|Selector37~0_combout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	combout => \wm8731_init|i2c_master|state_next~0_combout\);

-- Location: LCFF_X55_Y17_N3
\wm8731_init|i2c_init|address_ptr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~4_combout\,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(1));

-- Location: LCFF_X53_Y19_N23
\wm8731_init|i2c_init|address_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(5));

-- Location: LCFF_X54_Y19_N3
\wm8731_init|i2c_init|data_ptr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~8_combout\,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(6));

-- Location: LCFF_X54_Y19_N9
\wm8731_init|i2c_init|data_ptr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~9_combout\,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(5));

-- Location: LCFF_X55_Y17_N19
\wm8731_init|i2c_init|address_ptr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~10_combout\,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(2));

-- Location: LCFF_X55_Y17_N21
\wm8731_init|i2c_init|address_ptr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~11_combout\,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(3));

-- Location: LCCOMB_X56_Y19_N24
\wm8731_init|i2c_init|init_data.raddr_a[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & ((\wm8731_init|i2c_init|address_reg\(3)) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_ptr_reg\(3) & !\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_reg\(3),
	datab => \wm8731_init|i2c_init|address_ptr_reg\(3),
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\);

-- Location: LCCOMB_X53_Y19_N30
\wm8731_init|i2c_init|init_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~13_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & !\wm8731_init|i2c_init|init_data.raddr_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~13_combout\);

-- Location: LCCOMB_X53_Y19_N10
\wm8731_init|i2c_init|init_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~17_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & (!\wm8731_init|i2c_init|init_data.raddr_a\(1) & (\wm8731_init|i2c_init|init_data.raddr_a\(4) $ (\wm8731_init|i2c_init|init_data.raddr_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	combout => \wm8731_init|i2c_init|init_data~17_combout\);

-- Location: LCCOMB_X57_Y19_N12
\wm8731_init|i2c_init|init_data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~27_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0)) # ((\wm8731_init|i2c_init|init_data.raddr_a\(4) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) $ (!\wm8731_init|i2c_init|init_data.raddr_a\(2)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(4) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3)) # (\wm8731_init|i2c_init|init_data.raddr_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|init_data~27_combout\);

-- Location: LCCOMB_X57_Y19_N10
\wm8731_init|i2c_init|init_data~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~33_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0) & ((\wm8731_init|i2c_init|init_data.raddr_a\(4) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) $ (!\wm8731_init|i2c_init|init_data.raddr_a\(2)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(4) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3)) # (\wm8731_init|i2c_init|init_data.raddr_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|init_data~33_combout\);

-- Location: LCCOMB_X59_Y19_N6
\wm8731_init|i2c_init|state_reg~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~18_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\) # ((!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\ & !\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \wm8731_init|i2c_init|state_reg~18_combout\);

-- Location: LCCOMB_X54_Y20_N12
\wm8731_init|i2c_init|cur_address_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~2_combout\ = (\wm8731_init|i2c_init|init_data_reg\(0) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~2_combout\);

-- Location: LCCOMB_X51_Y19_N12
\wm8731_init|i2c_init|state_reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~22_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\wm8731_init|i2c_init|Equal3~1_combout\)))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & (\wm8731_init|i2c_init|Equal3~1_combout\)) # (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & ((!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|Equal3~1_combout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	combout => \wm8731_init|i2c_init|state_reg~22_combout\);

-- Location: LCCOMB_X51_Y19_N6
\wm8731_init|i2c_init|state_reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~23_combout\ = (\wm8731_init|i2c_init|state_reg~22_combout\ & (((!\wm8731_init|i2c_init|always0~0_combout\ & \wm8731_init|i2c_init|state_reg~26_combout\)))) # (!\wm8731_init|i2c_init|state_reg~22_combout\ & 
-- (((!\wm8731_init|i2c_init|state_reg~26_combout\)) # (!\wm8731_init|i2c_init|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg~22_combout\,
	datab => \wm8731_init|i2c_init|Equal3~1_combout\,
	datac => \wm8731_init|i2c_init|always0~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg~26_combout\,
	combout => \wm8731_init|i2c_init|state_reg~23_combout\);

-- Location: LCCOMB_X54_Y18_N2
\wm8731_init|i2c_master|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector59~0_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\) # ((\wm8731_init|i2c_master|Selector20~0_combout\ & !\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datab => \wm8731_init|i2c_master|Selector20~0_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	combout => \wm8731_init|i2c_master|Selector59~0_combout\);

-- Location: LCCOMB_X57_Y18_N0
\wm8731_init|i2c_master|phy_state_reg~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~39_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~39_combout\);

-- Location: LCCOMB_X48_Y20_N2
\i2s|data_shift~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~7_combout\ = (\i2s|Equal0~0_combout\ & (\i2s|data_shift\(25))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(25))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|data_shift\(25),
	datac => \i2s|Equal0~1_combout\,
	datad => \triangle_gen|count\(27),
	combout => \i2s|data_shift~7_combout\);

-- Location: LCCOMB_X51_Y19_N18
\wm8731_init|i2c_init|start_flag_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|start_flag_reg~0_combout\ = (\wm8731_init|i2c_init|start_flag_reg~regout\) # ((!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\ & (!\wm8731_init|i2c_init|data_out_valid_reg~regout\ & !\wm8731_init|i2c_init|cmd_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|start_flag_reg~regout\,
	combout => \wm8731_init|i2c_init|start_flag_reg~0_combout\);

-- Location: LCCOMB_X51_Y19_N28
\wm8731_init|i2c_init|start_flag_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|start_flag_reg~1_combout\ = (\wm8731_init|i2c_init_start_pulse|Equal0~3_combout\ & (\wm8731_init|i2c_init|start_flag_reg~0_combout\ & (\wm8731_init|i2c_init_start_pulse|pulse~0_combout\ $ 
-- (!\wm8731_init|i2c_init_start_pulse|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\,
	datab => \wm8731_init|i2c_init_start_pulse|pulse~0_combout\,
	datac => \wm8731_init|i2c_init_start_pulse|count\(2),
	datad => \wm8731_init|i2c_init|start_flag_reg~0_combout\,
	combout => \wm8731_init|i2c_init|start_flag_reg~1_combout\);

-- Location: LCCOMB_X50_Y20_N2
\i2s|data_shift~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~8_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(24))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & ((\i2s|data_shift\(24)))) # (!\i2s|Equal0~1_combout\ & (\triangle_gen|count\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \triangle_gen|count\(26),
	datad => \i2s|data_shift\(24),
	combout => \i2s|data_shift~8_combout\);

-- Location: LCCOMB_X50_Y20_N0
\i2s|data_shift~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~9_combout\ = (\i2s|Equal0~0_combout\ & (\i2s|data_shift\(23))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(23))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|data_shift\(23),
	datac => \i2s|Equal0~1_combout\,
	datad => \triangle_gen|count\(25),
	combout => \i2s|data_shift~9_combout\);

-- Location: LCCOMB_X50_Y20_N22
\i2s|data_shift~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~10_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(22))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(22))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(22),
	datad => \triangle_gen|count\(24),
	combout => \i2s|data_shift~10_combout\);

-- Location: LCCOMB_X50_Y20_N24
\i2s|data_shift~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~11_combout\ = (\i2s|Equal0~0_combout\ & (\i2s|data_shift\(21))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(21))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|data_shift\(21),
	datac => \i2s|Equal0~1_combout\,
	datad => \triangle_gen|count\(23),
	combout => \i2s|data_shift~11_combout\);

-- Location: LCCOMB_X50_Y20_N26
\i2s|data_shift~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~12_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(20))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(20))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(20),
	datad => \triangle_gen|count\(22),
	combout => \i2s|data_shift~12_combout\);

-- Location: LCCOMB_X50_Y20_N16
\i2s|data_shift~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~13_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(19))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & ((\i2s|data_shift\(19)))) # (!\i2s|Equal0~1_combout\ & (\triangle_gen|count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \triangle_gen|count\(21),
	datad => \i2s|data_shift\(19),
	combout => \i2s|data_shift~13_combout\);

-- Location: LCCOMB_X50_Y20_N14
\i2s|data_shift~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~14_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(18))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(18))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(18),
	datad => \triangle_gen|count\(20),
	combout => \i2s|data_shift~14_combout\);

-- Location: LCCOMB_X50_Y20_N20
\i2s|data_shift~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~15_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(17))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(17))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(17),
	datab => \i2s|Equal0~1_combout\,
	datac => \triangle_gen|count\(19),
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|data_shift~15_combout\);

-- Location: LCCOMB_X50_Y20_N10
\i2s|data_shift~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~16_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(16))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(16))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(16),
	datac => \triangle_gen|count\(18),
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|data_shift~16_combout\);

-- Location: LCCOMB_X50_Y20_N4
\i2s|data_shift~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~17_combout\ = (\i2s|Equal0~0_combout\ & (((\i2s|data_shift\(15))))) # (!\i2s|Equal0~0_combout\ & ((\i2s|Equal0~1_combout\ & (\i2s|data_shift\(15))) # (!\i2s|Equal0~1_combout\ & ((\triangle_gen|count\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~0_combout\,
	datab => \i2s|Equal0~1_combout\,
	datac => \i2s|data_shift\(15),
	datad => \triangle_gen|count\(17),
	combout => \i2s|data_shift~17_combout\);

-- Location: LCCOMB_X48_Y20_N12
\i2s|data_shift~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~18_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(14))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(14))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(14),
	datab => \i2s|Equal0~1_combout\,
	datac => \triangle_gen|count\(16),
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|data_shift~18_combout\);

-- Location: LCCOMB_X50_Y21_N16
\i2s|data_shift~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~19_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(13))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(13))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(13),
	datac => \triangle_gen|count\(15),
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|data_shift~19_combout\);

-- Location: LCCOMB_X50_Y21_N26
\i2s|data_shift~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~20_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(12))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(12))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(12),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(14),
	combout => \i2s|data_shift~20_combout\);

-- Location: LCCOMB_X50_Y21_N8
\i2s|data_shift~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~21_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(11))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(11))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(11),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(13),
	combout => \i2s|data_shift~21_combout\);

-- Location: LCCOMB_X50_Y21_N18
\i2s|data_shift~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~22_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(10))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(10))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(10),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(12),
	combout => \i2s|data_shift~22_combout\);

-- Location: LCCOMB_X50_Y21_N4
\i2s|data_shift~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~23_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(9))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(9))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(9),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(11),
	combout => \i2s|data_shift~23_combout\);

-- Location: LCCOMB_X50_Y21_N2
\i2s|data_shift~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~24_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(8))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(8))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(8),
	datac => \triangle_gen|count\(10),
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|data_shift~24_combout\);

-- Location: LCCOMB_X50_Y21_N28
\i2s|data_shift~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~25_combout\ = (\i2s|Equal0~1_combout\ & (\i2s|data_shift\(7))) # (!\i2s|Equal0~1_combout\ & ((\i2s|Equal0~0_combout\ & (\i2s|data_shift\(7))) # (!\i2s|Equal0~0_combout\ & ((\triangle_gen|count\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|data_shift\(7),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(9),
	combout => \i2s|data_shift~25_combout\);

-- Location: LCCOMB_X50_Y21_N22
\i2s|data_shift~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~26_combout\ = (\i2s|bck_prev~regout\ & ((\i2s|div_256|out~regout\ & (\i2s|data_shift\(7))) # (!\i2s|div_256|out~regout\ & ((\i2s|data_shift~27_combout\))))) # (!\i2s|bck_prev~regout\ & (((\i2s|data_shift\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bck_prev~regout\,
	datab => \i2s|div_256|out~regout\,
	datac => \i2s|data_shift\(7),
	datad => \i2s|data_shift~27_combout\,
	combout => \i2s|data_shift~26_combout\);

-- Location: LCCOMB_X56_Y17_N10
\wm8731_init|i2c_init|cmd_start_next~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~15_combout\ = (\wm8731_init|i2c_init|cmd_valid_reg~regout\) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\) # ((\wm8731_init|i2c_init|data_out_valid_reg~regout\) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\,
	datac => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~15_combout\);

-- Location: LCCOMB_X53_Y18_N14
\wm8731_init|i2c_master|phy_state_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~9_combout\ = (\wm8731_init|i2c_master|phy_state_next~8_combout\) # ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & ((\wm8731_init|i2c_master|LessThan2~5_combout\) # 
-- (\wm8731_init|i2c_master|delay_scl_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datab => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~8_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~9_combout\);

-- Location: LCCOMB_X53_Y19_N22
\wm8731_init|i2c_init|address_reg~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~17_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_init|init_data.raddr_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|Equal0~4_combout\,
	datac => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	combout => \wm8731_init|i2c_init|address_reg~17_combout\);

-- Location: LCCOMB_X50_Y21_N0
\i2s|data_shift~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift~27_combout\ = (!\i2s|bitcount\(5) & (\i2s|bitcount\(4) & (!\i2s|Equal0~0_combout\ & \triangle_gen|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(5),
	datab => \i2s|bitcount\(4),
	datac => \i2s|Equal0~0_combout\,
	datad => \triangle_gen|count\(8),
	combout => \i2s|data_shift~27_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X50_Y18_N18
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~feeder_combout\ = \wm8731_init|i2c_master|phy_state_reg~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_master|phy_state_reg~33_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_2~feeder_combout\);

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
	datain => \wm8731_init|i2c_master|ALT_INV_scl_o_reg~regout\,
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
	datain => \wm8731_init|i2c_master|ALT_INV_sda_o_reg~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => I2C_SDAT,
	combout => \I2C_SDAT~0\);

-- Location: LCCOMB_X53_Y17_N16
\resetter|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~0_combout\ = \resetter|reset_count\(0) $ (VCC)
-- \resetter|Add0~1\ = CARRY(\resetter|reset_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(0),
	datad => VCC,
	combout => \resetter|Add0~0_combout\,
	cout => \resetter|Add0~1\);

-- Location: LCCOMB_X53_Y17_N24
\resetter|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~8_combout\ = (\resetter|reset_count\(4) & (\resetter|Add0~7\ $ (GND))) # (!\resetter|reset_count\(4) & (!\resetter|Add0~7\ & VCC))
-- \resetter|Add0~9\ = CARRY((\resetter|reset_count\(4) & !\resetter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(4),
	datad => VCC,
	cin => \resetter|Add0~7\,
	combout => \resetter|Add0~8_combout\,
	cout => \resetter|Add0~9\);

-- Location: LCFF_X53_Y17_N25
\resetter|reset_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(4));

-- Location: LCCOMB_X53_Y17_N8
\resetter|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~2_combout\ = (!\resetter|reset_count\(2) & (!\resetter|reset_count\(3) & (!\resetter|reset_count\(4) & !\resetter|reset_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(2),
	datab => \resetter|reset_count\(3),
	datac => \resetter|reset_count\(4),
	datad => \resetter|reset_count\(1),
	combout => \resetter|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y16_N12
\resetter|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~28_combout\ = (\resetter|reset_count\(14) & (\resetter|Add0~27\ $ (GND))) # (!\resetter|reset_count\(14) & (!\resetter|Add0~27\ & VCC))
-- \resetter|Add0~29\ = CARRY((\resetter|reset_count\(14) & !\resetter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(14),
	datad => VCC,
	cin => \resetter|Add0~27\,
	combout => \resetter|Add0~28_combout\,
	cout => \resetter|Add0~29\);

-- Location: LCFF_X53_Y16_N13
\resetter|reset_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(14));

-- Location: LCCOMB_X53_Y17_N14
\resetter|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~3_combout\ = (!\resetter|reset_count\(13) & (!\resetter|reset_count\(0) & (!\resetter|reset_count\(14) & \resetter|reset_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(13),
	datab => \resetter|reset_count\(0),
	datac => \resetter|reset_count\(14),
	datad => \resetter|reset_count\(15),
	combout => \resetter|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y16_N8
\resetter|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~24_combout\ = (\resetter|reset_count\(12) & (\resetter|Add0~23\ $ (GND))) # (!\resetter|reset_count\(12) & (!\resetter|Add0~23\ & VCC))
-- \resetter|Add0~25\ = CARRY((\resetter|reset_count\(12) & !\resetter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(12),
	datad => VCC,
	cin => \resetter|Add0~23\,
	combout => \resetter|Add0~24_combout\,
	cout => \resetter|Add0~25\);

-- Location: LCFF_X53_Y16_N9
\resetter|reset_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(12));

-- Location: LCCOMB_X53_Y16_N22
\resetter|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~0_combout\ = (\resetter|reset_count\(9) & (!\resetter|reset_count\(12) & (\resetter|reset_count\(10) & !\resetter|reset_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(9),
	datab => \resetter|reset_count\(12),
	datac => \resetter|reset_count\(10),
	datad => \resetter|reset_count\(11),
	combout => \resetter|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y17_N12
\resetter|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~4_combout\ = (\resetter|Equal0~1_combout\ & (\resetter|Equal0~2_combout\ & (\resetter|Equal0~3_combout\ & \resetter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~1_combout\,
	datab => \resetter|Equal0~2_combout\,
	datac => \resetter|Equal0~3_combout\,
	datad => \resetter|Equal0~0_combout\,
	combout => \resetter|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y17_N0
\resetter|reset_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|reset_count~0_combout\ = (\resetter|Add0~0_combout\ & ((!\resetter|Equal0~4_combout\) # (!\resetter|reset_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \resetter|Add0~0_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \resetter|reset_count~0_combout\);

-- Location: LCFF_X53_Y17_N1
\resetter|reset_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|reset_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(0));

-- Location: LCCOMB_X53_Y17_N18
\resetter|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~2_combout\ = (\resetter|reset_count\(1) & (!\resetter|Add0~1\)) # (!\resetter|reset_count\(1) & ((\resetter|Add0~1\) # (GND)))
-- \resetter|Add0~3\ = CARRY((!\resetter|Add0~1\) # (!\resetter|reset_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(1),
	datad => VCC,
	cin => \resetter|Add0~1\,
	combout => \resetter|Add0~2_combout\,
	cout => \resetter|Add0~3\);

-- Location: LCFF_X53_Y17_N19
\resetter|reset_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(1));

-- Location: LCCOMB_X53_Y17_N22
\resetter|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~6_combout\ = (\resetter|reset_count\(3) & (!\resetter|Add0~5\)) # (!\resetter|reset_count\(3) & ((\resetter|Add0~5\) # (GND)))
-- \resetter|Add0~7\ = CARRY((!\resetter|Add0~5\) # (!\resetter|reset_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(3),
	datad => VCC,
	cin => \resetter|Add0~5\,
	combout => \resetter|Add0~6_combout\,
	cout => \resetter|Add0~7\);

-- Location: LCFF_X53_Y17_N23
\resetter|reset_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(3));

-- Location: LCCOMB_X53_Y17_N26
\resetter|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~10_combout\ = (\resetter|reset_count\(5) & (!\resetter|Add0~9\)) # (!\resetter|reset_count\(5) & ((\resetter|Add0~9\) # (GND)))
-- \resetter|Add0~11\ = CARRY((!\resetter|Add0~9\) # (!\resetter|reset_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(5),
	datad => VCC,
	cin => \resetter|Add0~9\,
	combout => \resetter|Add0~10_combout\,
	cout => \resetter|Add0~11\);

-- Location: LCFF_X53_Y17_N27
\resetter|reset_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(5));

-- Location: LCCOMB_X53_Y17_N28
\resetter|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~12_combout\ = (\resetter|reset_count\(6) & (\resetter|Add0~11\ $ (GND))) # (!\resetter|reset_count\(6) & (!\resetter|Add0~11\ & VCC))
-- \resetter|Add0~13\ = CARRY((\resetter|reset_count\(6) & !\resetter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(6),
	datad => VCC,
	cin => \resetter|Add0~11\,
	combout => \resetter|Add0~12_combout\,
	cout => \resetter|Add0~13\);

-- Location: LCFF_X53_Y17_N29
\resetter|reset_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(6));

-- Location: LCCOMB_X53_Y16_N0
\resetter|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~16_combout\ = (\resetter|reset_count\(8) & (\resetter|Add0~15\ $ (GND))) # (!\resetter|reset_count\(8) & (!\resetter|Add0~15\ & VCC))
-- \resetter|Add0~17\ = CARRY((\resetter|reset_count\(8) & !\resetter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(8),
	datad => VCC,
	cin => \resetter|Add0~15\,
	combout => \resetter|Add0~16_combout\,
	cout => \resetter|Add0~17\);

-- Location: LCFF_X53_Y16_N1
\resetter|reset_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(8));

-- Location: LCCOMB_X53_Y16_N2
\resetter|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~18_combout\ = (\resetter|reset_count\(9) & (!\resetter|Add0~17\)) # (!\resetter|reset_count\(9) & ((\resetter|Add0~17\) # (GND)))
-- \resetter|Add0~19\ = CARRY((!\resetter|Add0~17\) # (!\resetter|reset_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(9),
	datad => VCC,
	cin => \resetter|Add0~17\,
	combout => \resetter|Add0~18_combout\,
	cout => \resetter|Add0~19\);

-- Location: LCFF_X53_Y16_N3
\resetter|reset_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(9));

-- Location: LCCOMB_X53_Y16_N4
\resetter|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~20_combout\ = (\resetter|reset_count\(10) & (\resetter|Add0~19\ $ (GND))) # (!\resetter|reset_count\(10) & (!\resetter|Add0~19\ & VCC))
-- \resetter|Add0~21\ = CARRY((\resetter|reset_count\(10) & !\resetter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(10),
	datad => VCC,
	cin => \resetter|Add0~19\,
	combout => \resetter|Add0~20_combout\,
	cout => \resetter|Add0~21\);

-- Location: LCFF_X53_Y16_N5
\resetter|reset_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(10));

-- Location: LCCOMB_X53_Y16_N6
\resetter|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~22_combout\ = (\resetter|reset_count\(11) & (!\resetter|Add0~21\)) # (!\resetter|reset_count\(11) & ((\resetter|Add0~21\) # (GND)))
-- \resetter|Add0~23\ = CARRY((!\resetter|Add0~21\) # (!\resetter|reset_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(11),
	datad => VCC,
	cin => \resetter|Add0~21\,
	combout => \resetter|Add0~22_combout\,
	cout => \resetter|Add0~23\);

-- Location: LCFF_X53_Y16_N7
\resetter|reset_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(11));

-- Location: LCCOMB_X53_Y16_N14
\resetter|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~30_combout\ = (\resetter|reset_count\(15) & (!\resetter|Add0~29\)) # (!\resetter|reset_count\(15) & ((\resetter|Add0~29\) # (GND)))
-- \resetter|Add0~31\ = CARRY((!\resetter|Add0~29\) # (!\resetter|reset_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(15),
	datad => VCC,
	cin => \resetter|Add0~29\,
	combout => \resetter|Add0~30_combout\,
	cout => \resetter|Add0~31\);

-- Location: LCFF_X53_Y16_N15
\resetter|reset_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(15));

-- Location: LCCOMB_X53_Y16_N16
\resetter|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Add0~32_combout\ = \resetter|reset_count\(16) $ (!\resetter|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	cin => \resetter|Add0~31\,
	combout => \resetter|Add0~32_combout\);

-- Location: LCFF_X53_Y16_N17
\resetter|reset_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \resetter|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resetter|reset_count\(16));

-- Location: LCCOMB_X53_Y17_N4
\clk_12_5_divider|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_12_5_divider|counter~0_combout\ = ((\clk_12_5_divider|counter\(0) $ (!\clk_12_5_divider|counter\(1))) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_12_5_divider|counter\(0),
	datab => \resetter|reset_count\(16),
	datac => \clk_12_5_divider|counter\(1),
	datad => \resetter|Equal0~4_combout\,
	combout => \clk_12_5_divider|counter~0_combout\);

-- Location: LCFF_X53_Y17_N5
\clk_12_5_divider|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clk_12_5_divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_12_5_divider|counter\(1));

-- Location: LCCOMB_X53_Y17_N10
\clk_12_5_divider|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_12_5_divider|out~0_combout\ = (!\clk_12_5_divider|counter\(1) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_12_5_divider|counter\(1),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \clk_12_5_divider|out~0_combout\);

-- Location: LCFF_X53_Y17_N11
\clk_12_5_divider|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clk_12_5_divider|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_12_5_divider|out~regout\);

-- Location: CLKCTRL_G5
\clk_12_5_divider|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_12_5_divider|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_12_5_divider|out~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y18_N28
\wm8731_init|i2c_master|phy_state_reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~30_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\ & (\resetter|Equal0~4_combout\ & \resetter|reset_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_1~regout\,
	datac => \resetter|Equal0~4_combout\,
	datad => \resetter|reset_count\(16),
	combout => \wm8731_init|i2c_master|phy_state_reg~30_combout\);

-- Location: LCCOMB_X53_Y18_N24
\wm8731_init|i2c_master|scl_i_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_i_reg~0_combout\ = !\I2C_SCLK~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C_SCLK~0\,
	combout => \wm8731_init|i2c_master|scl_i_reg~0_combout\);

-- Location: LCFF_X53_Y18_N25
\wm8731_init|i2c_master|scl_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|scl_i_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|scl_i_reg~regout\);

-- Location: LCCOMB_X53_Y18_N28
\wm8731_init|i2c_master|delay_scl_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_scl_next~0_combout\ = (\wm8731_init|i2c_master|delay_scl_reg~regout\ & (\wm8731_init|i2c_master|scl_i_reg~regout\ & !\wm8731_init|i2c_master|scl_o_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datac => \wm8731_init|i2c_master|scl_i_reg~regout\,
	datad => \wm8731_init|i2c_master|scl_o_reg~regout\,
	combout => \wm8731_init|i2c_master|delay_scl_next~0_combout\);

-- Location: LCCOMB_X53_Y18_N22
\wm8731_init|i2c_master|delay_scl_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_scl_next~1_combout\ = (\wm8731_init|i2c_master|delay_scl_next~0_combout\) # ((!\wm8731_init|i2c_master|scl_o_reg~0_combout\ & (!\wm8731_init|i2c_master|delay_scl_reg~regout\ & !\wm8731_init|i2c_master|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|scl_o_reg~0_combout\,
	datab => \wm8731_init|i2c_master|delay_scl_next~0_combout\,
	datac => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datad => \wm8731_init|i2c_master|LessThan2~5_combout\,
	combout => \wm8731_init|i2c_master|delay_scl_next~1_combout\);

-- Location: LCCOMB_X54_Y17_N4
\resetter|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~5_combout\ = (!\resetter|Equal0~4_combout\) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \resetter|Equal0~5_combout\);

-- Location: LCFF_X53_Y18_N23
\wm8731_init|i2c_master|delay_scl_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_scl_next~1_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_scl_reg~regout\);

-- Location: LCCOMB_X54_Y18_N12
\wm8731_init|i2c_master|phy_state_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~2_combout\ = (!\wm8731_init|i2c_master|delay_scl_reg~regout\ & !\wm8731_init|i2c_master|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~2_combout\);

-- Location: LCCOMB_X55_Y18_N12
\wm8731_init|i2c_master|phy_state_reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~31_combout\ = (\wm8731_init|i2c_master|phy_state_next~2_combout\ & ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # ((!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & 
-- !\wm8731_init|i2c_master|Selector20~0_combout\)))) # (!\wm8731_init|i2c_master|phy_state_next~2_combout\ & (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|Selector20~0_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~31_combout\);

-- Location: LCCOMB_X56_Y18_N6
\wm8731_init|i2c_master|phy_state_reg~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~42_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & !\wm8731_init|i2c_master|phy_state_reg~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_master|phy_state_reg~31_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~42_combout\);

-- Location: LCFF_X56_Y18_N7
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\);

-- Location: LCCOMB_X56_Y18_N20
\wm8731_init|i2c_master|Selector38~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~6_combout\ = (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	combout => \wm8731_init|i2c_master|Selector38~6_combout\);

-- Location: LCCOMB_X55_Y18_N8
\wm8731_init|i2c_master|cmd_ready_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|cmd_ready_reg~0_combout\ = (!\wm8731_init|i2c_master|bit_count_reg[0]~5_combout\ & (!\wm8731_init|i2c_master|phy_start_bit~0_combout\ & (!\wm8731_init|i2c_master|Selector38~6_combout\ & !\resetter|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg[0]~5_combout\,
	datab => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	datac => \wm8731_init|i2c_master|Selector38~6_combout\,
	datad => \resetter|Equal0~5_combout\,
	combout => \wm8731_init|i2c_master|cmd_ready_reg~0_combout\);

-- Location: LCFF_X55_Y18_N9
\wm8731_init|i2c_master|cmd_ready_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|cmd_ready_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|cmd_ready_reg~regout\);

-- Location: LCCOMB_X56_Y19_N18
\wm8731_init|i2c_init|data_ptr_reg~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~12_combout\ = (\wm8731_init|i2c_init|Add0~8_combout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Add0~8_combout\,
	datab => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~12_combout\);

-- Location: LCCOMB_X56_Y18_N30
\wm8731_init|i2c_init|address_reg~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~15_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & \wm8731_init|i2c_init|init_data.raddr_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	combout => \wm8731_init|i2c_init|address_reg~15_combout\);

-- Location: LCFF_X56_Y18_N31
\wm8731_init|i2c_init|address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(0));

-- Location: LCCOMB_X55_Y19_N12
\wm8731_init|i2c_init|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~0_combout\ = \wm8731_init|i2c_init|address_reg\(0) $ (VCC)
-- \wm8731_init|i2c_init|Add0~1\ = CARRY(\wm8731_init|i2c_init|address_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|address_reg\(0),
	datad => VCC,
	combout => \wm8731_init|i2c_init|Add0~0_combout\,
	cout => \wm8731_init|i2c_init|Add0~1\);

-- Location: LCCOMB_X55_Y17_N0
\wm8731_init|i2c_init|data_ptr_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~7_combout\ = (\wm8731_init|i2c_init|Add0~0_combout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|Add0~0_combout\,
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~7_combout\);

-- Location: LCFF_X55_Y17_N1
\wm8731_init|i2c_init|address_ptr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_ptr_reg~7_combout\,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(0));

-- Location: LCCOMB_X54_Y18_N26
\wm8731_init|i2c_init|address_reg~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~16_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_init|init_data.raddr_a\(6) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|address_reg~16_combout\);

-- Location: LCFF_X54_Y18_N27
\wm8731_init|i2c_init|address_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(6));

-- Location: LCCOMB_X55_Y19_N22
\wm8731_init|i2c_init|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~10_combout\ = (\wm8731_init|i2c_init|address_reg\(5) & (!\wm8731_init|i2c_init|Add0~9\)) # (!\wm8731_init|i2c_init|address_reg\(5) & ((\wm8731_init|i2c_init|Add0~9\) # (GND)))
-- \wm8731_init|i2c_init|Add0~11\ = CARRY((!\wm8731_init|i2c_init|Add0~9\) # (!\wm8731_init|i2c_init|address_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_reg\(5),
	datad => VCC,
	cin => \wm8731_init|i2c_init|Add0~9\,
	combout => \wm8731_init|i2c_init|Add0~10_combout\,
	cout => \wm8731_init|i2c_init|Add0~11\);

-- Location: LCCOMB_X55_Y19_N24
\wm8731_init|i2c_init|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~12_combout\ = \wm8731_init|i2c_init|Add0~11\ $ (!\wm8731_init|i2c_init|address_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|address_reg\(6),
	cin => \wm8731_init|i2c_init|Add0~11\,
	combout => \wm8731_init|i2c_init|Add0~12_combout\);

-- Location: LCCOMB_X54_Y19_N2
\wm8731_init|i2c_init|data_ptr_reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~8_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_init|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_init|Add0~12_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~8_combout\);

-- Location: LCFF_X54_Y19_N21
\wm8731_init|i2c_init|address_ptr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~8_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(6));

-- Location: LCCOMB_X54_Y19_N20
\wm8731_init|i2c_init|init_data.raddr_a[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & ((\wm8731_init|i2c_init|address_reg\(6)) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_ptr_reg\(6) & !\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_reg\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datac => \wm8731_init|i2c_init|address_ptr_reg\(6),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\);

-- Location: LCCOMB_X54_Y19_N26
\wm8731_init|i2c_init|init_data.raddr_a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(6) = (\wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\ & ((\wm8731_init|i2c_init|data_ptr_reg\(6)) # ((!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\ & (((\wm8731_init|i2c_init|Add0~12_combout\ & \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_ptr_reg\(6),
	datab => \wm8731_init|i2c_init|Add0~12_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[6]~17_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(6));

-- Location: LCCOMB_X57_Y19_N0
\wm8731_init|i2c_init|init_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~10_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(4) & (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & \wm8731_init|i2c_init|init_data.raddr_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	combout => \wm8731_init|i2c_init|init_data~10_combout\);

-- Location: LCCOMB_X57_Y19_N18
\wm8731_init|i2c_init|init_data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~26_combout\ = (\wm8731_init|i2c_init|init_data~16_combout\ & (\wm8731_init|i2c_init|init_data.raddr_a\(0) & (\wm8731_init|i2c_init|init_data.raddr_a\(1) & \wm8731_init|i2c_init|init_data~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data~16_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datad => \wm8731_init|i2c_init|init_data~10_combout\,
	combout => \wm8731_init|i2c_init|init_data~26_combout\);

-- Location: LCCOMB_X57_Y19_N24
\wm8731_init|i2c_init|init_data~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~28_combout\ = (\wm8731_init|i2c_init|init_data~26_combout\) # ((\wm8731_init|i2c_init|init_data~27_combout\ & (\wm8731_init|i2c_init|init_data.raddr_a\(1) & \wm8731_init|i2c_init|init_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data~27_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data~14_combout\,
	datad => \wm8731_init|i2c_init|init_data~26_combout\,
	combout => \wm8731_init|i2c_init|init_data~28_combout\);

-- Location: LCFF_X57_Y19_N25
\wm8731_init|i2c_init|init_data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~28_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(0));

-- Location: LCCOMB_X58_Y19_N18
\wm8731_init|i2c_init|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal2~0_combout\ = ((!\wm8731_init|i2c_init|Equal3~0_combout\) # (!\wm8731_init|i2c_init|init_data_reg\(3))) # (!\wm8731_init|i2c_init|init_data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|init_data_reg\(3),
	datad => \wm8731_init|i2c_init|Equal3~0_combout\,
	combout => \wm8731_init|i2c_init|Equal2~0_combout\);

-- Location: LCCOMB_X58_Y19_N22
\wm8731_init|i2c_init|state_reg~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~19_combout\ = (\wm8731_init|i2c_init|Equal2~0_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & ((!\wm8731_init|i2c_init|Equal0~0_combout\))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & 
-- (!\wm8731_init|i2c_init|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal4~0_combout\,
	datab => \wm8731_init|i2c_init|Equal2~0_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datad => \wm8731_init|i2c_init|Equal0~0_combout\,
	combout => \wm8731_init|i2c_init|state_reg~19_combout\);

-- Location: LCCOMB_X51_Y19_N0
\wm8731_init|i2c_init|state_reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~26_combout\ = (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|state_reg~19_combout\) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \wm8731_init|i2c_init|state_reg~19_combout\,
	combout => \wm8731_init|i2c_init|state_reg~26_combout\);

-- Location: LCFF_X57_Y19_N27
\wm8731_init|i2c_init|init_data_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~38_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(5));

-- Location: LCCOMB_X51_Y19_N2
\wm8731_init|i2c_init|address_reg~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~19_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_init|init_data.raddr_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	combout => \wm8731_init|i2c_init|address_reg~19_combout\);

-- Location: LCFF_X51_Y19_N3
\wm8731_init|i2c_init|address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(3));

-- Location: LCCOMB_X56_Y19_N4
\wm8731_init|i2c_init|init_data.raddr_a[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_reg\(2)) # (\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (\wm8731_init|i2c_init|address_ptr_reg\(2) & ((!\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_ptr_reg\(2),
	datab => \wm8731_init|i2c_init|address_reg\(2),
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\);

-- Location: LCCOMB_X54_Y18_N0
\wm8731_init|i2c_init|address_reg~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~14_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & \wm8731_init|i2c_init|init_data.raddr_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|address_reg~14_combout\);

-- Location: LCFF_X54_Y18_N1
\wm8731_init|i2c_init|address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(1));

-- Location: LCCOMB_X55_Y19_N14
\wm8731_init|i2c_init|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~2_combout\ = (\wm8731_init|i2c_init|address_reg\(1) & (!\wm8731_init|i2c_init|Add0~1\)) # (!\wm8731_init|i2c_init|address_reg\(1) & ((\wm8731_init|i2c_init|Add0~1\) # (GND)))
-- \wm8731_init|i2c_init|Add0~3\ = CARRY((!\wm8731_init|i2c_init|Add0~1\) # (!\wm8731_init|i2c_init|address_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|address_reg\(1),
	datad => VCC,
	cin => \wm8731_init|i2c_init|Add0~1\,
	combout => \wm8731_init|i2c_init|Add0~2_combout\,
	cout => \wm8731_init|i2c_init|Add0~3\);

-- Location: LCCOMB_X55_Y19_N16
\wm8731_init|i2c_init|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~4_combout\ = (\wm8731_init|i2c_init|address_reg\(2) & (\wm8731_init|i2c_init|Add0~3\ $ (GND))) # (!\wm8731_init|i2c_init|address_reg\(2) & (!\wm8731_init|i2c_init|Add0~3\ & VCC))
-- \wm8731_init|i2c_init|Add0~5\ = CARRY((\wm8731_init|i2c_init|address_reg\(2) & !\wm8731_init|i2c_init|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|address_reg\(2),
	datad => VCC,
	cin => \wm8731_init|i2c_init|Add0~3\,
	combout => \wm8731_init|i2c_init|Add0~4_combout\,
	cout => \wm8731_init|i2c_init|Add0~5\);

-- Location: LCCOMB_X55_Y17_N18
\wm8731_init|i2c_init|data_ptr_reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~10_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_init|Add0~4_combout\ & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_init|Add0~4_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~10_combout\);

-- Location: LCCOMB_X56_Y18_N28
\wm8731_init|i2c_master|data_in_ready_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|data_in_ready_reg~4_combout\ = (\wm8731_init|i2c_master|Selector16~0_combout\ & (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & !\wm8731_init|i2c_master|Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector16~0_combout\,
	datab => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_master|Selector38~6_combout\,
	combout => \wm8731_init|i2c_master|data_in_ready_reg~4_combout\);

-- Location: LCFF_X56_Y18_N29
\wm8731_init|i2c_master|data_in_ready_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|data_in_ready_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_in_ready_reg~regout\);

-- Location: LCCOMB_X59_Y19_N0
\wm8731_init|i2c_init|state_reg~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~17_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\) # (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \wm8731_init|i2c_init|state_reg~17_combout\);

-- Location: LCCOMB_X58_Y20_N30
\wm8731_init|i2c_init|data_out_valid_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_valid_reg~6_combout\ = (!\wm8731_init|i2c_init|cmd_valid_reg~regout\ & (!\wm8731_init|i2c_init|data_out_valid_reg~regout\ & (\wm8731_init|i2c_init|init_data_reg\(8) & \wm8731_init|i2c_init|state_reg~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datab => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|state_reg~17_combout\,
	combout => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\);

-- Location: LCCOMB_X55_Y18_N18
\wm8731_init|i2c_init|data_out_valid_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_valid_reg~5_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~6_combout\) # ((!\wm8731_init|i2c_master|data_in_ready_reg~regout\ & \wm8731_init|i2c_init|data_out_valid_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|data_in_ready_reg~regout\,
	datac => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	combout => \wm8731_init|i2c_init|data_out_valid_reg~5_combout\);

-- Location: LCFF_X55_Y18_N19
\wm8731_init|i2c_init|data_out_valid_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_out_valid_reg~5_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_valid_reg~regout\);

-- Location: LCCOMB_X56_Y18_N0
\wm8731_init|i2c_init|data_out_valid_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_valid_reg~4_combout\ = (!\wm8731_init|i2c_init|cmd_valid_reg~regout\ & !\wm8731_init|i2c_init|data_out_valid_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	combout => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\);

-- Location: LCCOMB_X57_Y17_N4
\wm8731_init|i2c_init|state_next.STATE_TABLE_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\ = (((\wm8731_init|i2c_init|init_data_reg\(0) & \wm8731_init|i2c_init|init_data_reg\(3))) # (!\wm8731_init|i2c_init|Equal3~0_combout\)) # (!\wm8731_init|i2c_init|data_out_valid_reg~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(0),
	datab => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datad => \wm8731_init|i2c_init|Equal3~0_combout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\);

-- Location: LCCOMB_X57_Y19_N28
\wm8731_init|i2c_init|state_next.STATE_TABLE_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_1~1_combout\ = (!\wm8731_init|i2c_init|Equal2~0_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\) # 
-- (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \wm8731_init|i2c_init|Equal2~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~1_combout\);

-- Location: LCCOMB_X57_Y17_N0
\wm8731_init|i2c_init|state_next.STATE_TABLE_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_1~2_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & ((\wm8731_init|i2c_init|state_next.STATE_TABLE_1~1_combout\) # ((\wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\ & 
-- \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\)))) # (!\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & (\wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\ & (\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~0_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datad => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~1_combout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~2_combout\);

-- Location: LCFF_X57_Y17_N1
\wm8731_init|i2c_init|state_reg.STATE_TABLE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|state_next.STATE_TABLE_1~2_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\);

-- Location: LCCOMB_X53_Y19_N20
\wm8731_init|i2c_init|init_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~12_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(5) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3)) # ((\wm8731_init|i2c_init|init_data.raddr_a\(2)) # (\wm8731_init|i2c_init|init_data.raddr_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	combout => \wm8731_init|i2c_init|init_data~12_combout\);

-- Location: LCCOMB_X53_Y19_N6
\wm8731_init|i2c_init|init_data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~35_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & (!\wm8731_init|i2c_init|init_data.raddr_a\(1) & (!\wm8731_init|i2c_init|init_data~12_combout\ & !\wm8731_init|i2c_init|init_data.raddr_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data~12_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	combout => \wm8731_init|i2c_init|init_data~35_combout\);

-- Location: LCFF_X53_Y19_N7
\wm8731_init|i2c_init|init_data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~35_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(7));

-- Location: LCCOMB_X59_Y19_N14
\wm8731_init|i2c_init|data_ptr_reg[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg[6]~5_combout\ = (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\ & ((\wm8731_init|i2c_init|init_data_reg\(8)) # ((\wm8731_init|i2c_init|init_data_reg\(7)) # (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(8),
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \wm8731_init|i2c_init|init_data_reg\(7),
	combout => \wm8731_init|i2c_init|data_ptr_reg[6]~5_combout\);

-- Location: LCCOMB_X58_Y19_N30
\wm8731_init|i2c_init|data_ptr_reg[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg[6]~6_combout\ = (\wm8731_init|i2c_init|Equal2~0_combout\) # ((!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & 
-- \wm8731_init|i2c_init|data_ptr_reg[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg[6]~5_combout\,
	datad => \wm8731_init|i2c_init|Equal2~0_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg[6]~6_combout\);

-- Location: LCCOMB_X54_Y19_N10
\wm8731_init|i2c_init|data_ptr_reg[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\ = (((\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & !\wm8731_init|i2c_init|data_ptr_reg[6]~6_combout\)) # (!\resetter|reset_count\(16))) # (!\resetter|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg[6]~6_combout\,
	datad => \resetter|reset_count\(16),
	combout => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\);

-- Location: LCFF_X56_Y19_N15
\wm8731_init|i2c_init|data_ptr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~10_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(2));

-- Location: LCCOMB_X56_Y19_N14
\wm8731_init|i2c_init|init_data.raddr_a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(2) = (\wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\ & (((\wm8731_init|i2c_init|data_ptr_reg\(2)) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\ & (\wm8731_init|i2c_init|Add0~4_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Add0~4_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[2]~19_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg\(2),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(2));

-- Location: LCCOMB_X57_Y19_N14
\wm8731_init|i2c_init|address_reg~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~20_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & \wm8731_init|i2c_init|init_data.raddr_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|address_reg~20_combout\);

-- Location: LCFF_X57_Y19_N15
\wm8731_init|i2c_init|address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(2));

-- Location: LCCOMB_X55_Y19_N18
\wm8731_init|i2c_init|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Add0~6_combout\ = (\wm8731_init|i2c_init|address_reg\(3) & (!\wm8731_init|i2c_init|Add0~5\)) # (!\wm8731_init|i2c_init|address_reg\(3) & ((\wm8731_init|i2c_init|Add0~5\) # (GND)))
-- \wm8731_init|i2c_init|Add0~7\ = CARRY((!\wm8731_init|i2c_init|Add0~5\) # (!\wm8731_init|i2c_init|address_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|address_reg\(3),
	datad => VCC,
	cin => \wm8731_init|i2c_init|Add0~5\,
	combout => \wm8731_init|i2c_init|Add0~6_combout\,
	cout => \wm8731_init|i2c_init|Add0~7\);

-- Location: LCCOMB_X55_Y17_N20
\wm8731_init|i2c_init|data_ptr_reg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~11_combout\ = (\wm8731_init|i2c_init|Add0~6_combout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|Add0~6_combout\,
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~11_combout\);

-- Location: LCFF_X56_Y19_N7
\wm8731_init|i2c_init|data_ptr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~11_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(3));

-- Location: LCCOMB_X56_Y19_N6
\wm8731_init|i2c_init|init_data.raddr_a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(3) = (\wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\ & (((\wm8731_init|i2c_init|data_ptr_reg\(3)) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\ & (\wm8731_init|i2c_init|Add0~6_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[3]~20_combout\,
	datab => \wm8731_init|i2c_init|Add0~6_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(3));

-- Location: LCCOMB_X57_Y19_N2
\wm8731_init|i2c_init|init_data~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~29_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0)) # ((\wm8731_init|i2c_init|init_data.raddr_a\(4) & (!\wm8731_init|i2c_init|init_data.raddr_a\(3) & !\wm8731_init|i2c_init|init_data.raddr_a\(2))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(4) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) & \wm8731_init|i2c_init|init_data.raddr_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|init_data~29_combout\);

-- Location: LCCOMB_X57_Y19_N30
\wm8731_init|i2c_init|init_data~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~30_combout\ = (\wm8731_init|i2c_init|init_data~26_combout\) # ((\wm8731_init|i2c_init|init_data.raddr_a\(1) & (\wm8731_init|i2c_init|init_data~29_combout\ & \wm8731_init|i2c_init|init_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datab => \wm8731_init|i2c_init|init_data~29_combout\,
	datac => \wm8731_init|i2c_init|init_data~14_combout\,
	datad => \wm8731_init|i2c_init|init_data~26_combout\,
	combout => \wm8731_init|i2c_init|init_data~30_combout\);

-- Location: LCFF_X57_Y19_N31
\wm8731_init|i2c_init|init_data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~30_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(6));

-- Location: LCCOMB_X56_Y19_N16
\wm8731_init|i2c_init|init_data.raddr_a[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(1) & (!\wm8731_init|i2c_init|init_data_reg\(5) & !\wm8731_init|i2c_init|init_data_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(1),
	datac => \wm8731_init|i2c_init|init_data_reg\(5),
	datad => \wm8731_init|i2c_init|init_data_reg\(6),
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\);

-- Location: LCCOMB_X56_Y19_N2
\wm8731_init|i2c_init|init_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~16_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(2) & !\wm8731_init|i2c_init|init_data.raddr_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	combout => \wm8731_init|i2c_init|init_data~16_combout\);

-- Location: LCCOMB_X53_Y19_N4
\wm8731_init|i2c_init|init_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~15_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0) & (!\wm8731_init|i2c_init|init_data.raddr_a\(1) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) $ (!\wm8731_init|i2c_init|init_data.raddr_a\(2))))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & (\wm8731_init|i2c_init|init_data.raddr_a\(1) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) $ (\wm8731_init|i2c_init|init_data.raddr_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|init_data~15_combout\);

-- Location: LCCOMB_X53_Y19_N26
\wm8731_init|i2c_init|init_data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~36_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & (\wm8731_init|i2c_init|init_data~15_combout\ & !\wm8731_init|i2c_init|init_data.raddr_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data~15_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	combout => \wm8731_init|i2c_init|init_data~36_combout\);

-- Location: LCCOMB_X53_Y19_N16
\wm8731_init|i2c_init|init_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~18_combout\ = (\wm8731_init|i2c_init|init_data~36_combout\) # ((\wm8731_init|i2c_init|init_data~17_combout\ & (\wm8731_init|i2c_init|init_data.raddr_a\(0) & \wm8731_init|i2c_init|init_data~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data~17_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data~16_combout\,
	datad => \wm8731_init|i2c_init|init_data~36_combout\,
	combout => \wm8731_init|i2c_init|init_data~18_combout\);

-- Location: LCFF_X53_Y19_N17
\wm8731_init|i2c_init|init_data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~18_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(2));

-- Location: LCCOMB_X53_Y19_N8
\wm8731_init|i2c_init|init_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~19_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & (((!\wm8731_init|i2c_init|init_data.raddr_a\(3)) # (!\wm8731_init|i2c_init|init_data.raddr_a\(1))) # (!\wm8731_init|i2c_init|init_data.raddr_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	combout => \wm8731_init|i2c_init|init_data~19_combout\);

-- Location: LCCOMB_X53_Y19_N18
\wm8731_init|i2c_init|init_data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~20_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(4) & (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & (\wm8731_init|i2c_init|init_data.raddr_a\(3) & \wm8731_init|i2c_init|init_data.raddr_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	combout => \wm8731_init|i2c_init|init_data~20_combout\);

-- Location: LCCOMB_X53_Y19_N28
\wm8731_init|i2c_init|init_data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~21_combout\ = (\wm8731_init|i2c_init|init_data~20_combout\) # ((!\wm8731_init|i2c_init|init_data.raddr_a\(4) & (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & \wm8731_init|i2c_init|init_data~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data~16_combout\,
	datad => \wm8731_init|i2c_init|init_data~20_combout\,
	combout => \wm8731_init|i2c_init|init_data~21_combout\);

-- Location: LCCOMB_X53_Y19_N2
\wm8731_init|i2c_init|init_data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~22_combout\ = (\wm8731_init|i2c_init|init_data~13_combout\ & ((\wm8731_init|i2c_init|init_data~21_combout\) # ((\wm8731_init|i2c_init|init_data~14_combout\ & \wm8731_init|i2c_init|init_data~19_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data~13_combout\ & (\wm8731_init|i2c_init|init_data~14_combout\ & (\wm8731_init|i2c_init|init_data~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data~13_combout\,
	datab => \wm8731_init|i2c_init|init_data~14_combout\,
	datac => \wm8731_init|i2c_init|init_data~19_combout\,
	datad => \wm8731_init|i2c_init|init_data~21_combout\,
	combout => \wm8731_init|i2c_init|init_data~22_combout\);

-- Location: LCFF_X53_Y19_N3
\wm8731_init|i2c_init|init_data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~22_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(4));

-- Location: LCCOMB_X53_Y19_N12
\wm8731_init|i2c_init|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal7~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(7) & (!\wm8731_init|i2c_init|init_data_reg\(8) & (!\wm8731_init|i2c_init|init_data_reg\(2) & !\wm8731_init|i2c_init|init_data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(7),
	datab => \wm8731_init|i2c_init|init_data_reg\(8),
	datac => \wm8731_init|i2c_init|init_data_reg\(2),
	datad => \wm8731_init|i2c_init|init_data_reg\(4),
	combout => \wm8731_init|i2c_init|Equal7~0_combout\);

-- Location: LCCOMB_X56_Y19_N12
\wm8731_init|i2c_init|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal5~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(3) & (\wm8731_init|i2c_init|init_data_reg\(0) & (\wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\ & \wm8731_init|i2c_init|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\,
	datad => \wm8731_init|i2c_init|Equal7~0_combout\,
	combout => \wm8731_init|i2c_init|Equal5~0_combout\);

-- Location: LCCOMB_X57_Y19_N16
\wm8731_init|i2c_init|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal1~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(3) & (\wm8731_init|i2c_init|init_data_reg\(0) & \wm8731_init|i2c_init|init_data_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \wm8731_init|i2c_init|init_data_reg\(0),
	datad => \wm8731_init|i2c_init|init_data_reg\(6),
	combout => \wm8731_init|i2c_init|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y19_N12
\wm8731_init|i2c_init|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal1~1_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(5) & (!\wm8731_init|i2c_init|init_data_reg\(1) & (\wm8731_init|i2c_init|Equal1~0_combout\ & \wm8731_init|i2c_init|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(5),
	datab => \wm8731_init|i2c_init|init_data_reg\(1),
	datac => \wm8731_init|i2c_init|Equal1~0_combout\,
	datad => \wm8731_init|i2c_init|Equal7~0_combout\,
	combout => \wm8731_init|i2c_init|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y19_N30
\wm8731_init|i2c_init|cmd_write_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~2_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(7) & (!\wm8731_init|i2c_init|init_data_reg\(8) & !\wm8731_init|i2c_init|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(7),
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|Equal1~1_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~2_combout\);

-- Location: LCCOMB_X58_Y19_N6
\wm8731_init|i2c_init|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal3~1_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(0) & (!\wm8731_init|i2c_init|init_data_reg\(3) & \wm8731_init|i2c_init|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|init_data_reg\(3),
	datad => \wm8731_init|i2c_init|Equal3~0_combout\,
	combout => \wm8731_init|i2c_init|Equal3~1_combout\);

-- Location: LCCOMB_X58_Y19_N16
\wm8731_init|i2c_init|state_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next~1_combout\ = ((!\wm8731_init|i2c_init|Equal3~1_combout\ & \wm8731_init|i2c_init|Equal2~0_combout\)) # (!\wm8731_init|i2c_init|cmd_write_reg~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	datac => \wm8731_init|i2c_init|Equal3~1_combout\,
	datad => \wm8731_init|i2c_init|Equal2~0_combout\,
	combout => \wm8731_init|i2c_init|state_next~1_combout\);

-- Location: LCCOMB_X59_Y19_N4
\wm8731_init|i2c_init|state_reg~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~20_combout\ = (\wm8731_init|i2c_init|state_reg~18_combout\ & (((\wm8731_init|i2c_init|Equal5~0_combout\)) # (!\wm8731_init|i2c_init|state_reg~17_combout\))) # (!\wm8731_init|i2c_init|state_reg~18_combout\ & 
-- (\wm8731_init|i2c_init|state_reg~17_combout\ & ((\wm8731_init|i2c_init|state_next~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg~18_combout\,
	datab => \wm8731_init|i2c_init|state_reg~17_combout\,
	datac => \wm8731_init|i2c_init|Equal5~0_combout\,
	datad => \wm8731_init|i2c_init|state_next~1_combout\,
	combout => \wm8731_init|i2c_init|state_reg~20_combout\);

-- Location: LCCOMB_X51_Y19_N8
\wm8731_init|i2c_init|state_reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~21_combout\ = (\wm8731_init|i2c_init|state_reg~26_combout\ & ((\wm8731_init|i2c_init|state_reg~20_combout\ & (!\wm8731_init|i2c_init|always0~0_combout\)) # (!\wm8731_init|i2c_init|state_reg~20_combout\ & 
-- ((\wm8731_init|i2c_init|Equal5~0_combout\))))) # (!\wm8731_init|i2c_init|state_reg~26_combout\ & (((\wm8731_init|i2c_init|state_reg~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|always0~0_combout\,
	datab => \wm8731_init|i2c_init|state_reg~26_combout\,
	datac => \wm8731_init|i2c_init|Equal5~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg~20_combout\,
	combout => \wm8731_init|i2c_init|state_reg~21_combout\);

-- Location: LCCOMB_X54_Y19_N4
\wm8731_init|i2c_init|state_reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~25_combout\ = (((!\wm8731_init|i2c_init|cmd_valid_reg~regout\ & !\wm8731_init|i2c_init|data_out_valid_reg~regout\)) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datab => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|state_reg~25_combout\);

-- Location: LCFF_X51_Y19_N9
\wm8731_init|i2c_init|state_reg.STATE_RUN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|state_reg~21_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_init|state_reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\);

-- Location: LCCOMB_X58_Y19_N14
\wm8731_init|i2c_init|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal7~1_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(6) & (\wm8731_init|i2c_init|init_data_reg\(0) & (!\wm8731_init|i2c_init|init_data_reg\(3) & \wm8731_init|i2c_init|init_data_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(6),
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|init_data_reg\(3),
	datad => \wm8731_init|i2c_init|init_data_reg\(1),
	combout => \wm8731_init|i2c_init|Equal7~1_combout\);

-- Location: LCCOMB_X58_Y19_N10
\wm8731_init|i2c_init|cmd_write_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~3_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|init_data_reg\(5)) # ((!\wm8731_init|i2c_init|Equal7~0_combout\) # (!\wm8731_init|i2c_init|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(5),
	datac => \wm8731_init|i2c_init|Equal7~1_combout\,
	datad => \wm8731_init|i2c_init|Equal7~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~3_combout\);

-- Location: LCCOMB_X56_Y20_N14
\wm8731_init|i2c_init|cmd_valid_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~5_combout\ = (\wm8731_init|i2c_init|state_next~0_combout\ & (\wm8731_init|i2c_init|Equal1~1_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\) # (\wm8731_init|i2c_init|cmd_write_reg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_next~0_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|Equal1~1_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~3_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~5_combout\);

-- Location: LCCOMB_X56_Y19_N26
\wm8731_init|i2c_init|init_data.raddr_a[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(3) & (!\wm8731_init|i2c_init|init_data_reg\(0) & (\wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\ & \wm8731_init|i2c_init|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~2_combout\,
	datad => \wm8731_init|i2c_init|Equal7~0_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\);

-- Location: LCCOMB_X54_Y19_N22
\wm8731_init|i2c_init|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal4~0_combout\ = (\wm8731_init|i2c_init|init_data_reg\(3) & (\wm8731_init|i2c_init|Equal3~0_combout\ & !\wm8731_init|i2c_init|init_data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \wm8731_init|i2c_init|Equal3~0_combout\,
	datad => \wm8731_init|i2c_init|init_data_reg\(0),
	combout => \wm8731_init|i2c_init|Equal4~0_combout\);

-- Location: LCCOMB_X56_Y17_N26
\wm8731_init|i2c_init|init_data.raddr_a[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & ((\wm8731_init|i2c_init|init_data_reg\(8)) # (!\wm8731_init|i2c_init|init_data_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|init_data_reg\(7),
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\);

-- Location: LCCOMB_X56_Y17_N28
\wm8731_init|i2c_init|cmd_valid_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~2_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\) # ((!\wm8731_init|i2c_init|init_data_reg\(8) & (!\wm8731_init|i2c_init|init_data_reg\(7) & \wm8731_init|i2c_init|cmd_write_reg~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(8),
	datab => \wm8731_init|i2c_init|init_data_reg\(7),
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~3_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~2_combout\);

-- Location: LCCOMB_X56_Y17_N30
\wm8731_init|i2c_init|cmd_valid_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~3_combout\ = (!\wm8731_init|i2c_init|Equal5~0_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\) # ((!\wm8731_init|i2c_init|Equal4~0_combout\ & \wm8731_init|i2c_init|cmd_valid_next~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal5~0_combout\,
	datab => \wm8731_init|i2c_init|Equal4~0_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\,
	datad => \wm8731_init|i2c_init|cmd_valid_next~2_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~3_combout\);

-- Location: LCCOMB_X56_Y20_N12
\wm8731_init|i2c_init|cmd_valid_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~4_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & ((\wm8731_init|i2c_init|cmd_valid_next~3_combout\) # ((\wm8731_init|i2c_init|state_next~0_combout\ & 
-- \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_next~0_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\,
	datad => \wm8731_init|i2c_init|cmd_valid_next~3_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~4_combout\);

-- Location: LCCOMB_X56_Y20_N0
\wm8731_init|i2c_init|cmd_valid_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~6_combout\ = (\wm8731_init|i2c_init|cmd_valid_next~5_combout\) # ((\wm8731_init|i2c_init|cmd_valid_next~4_combout\) # ((\wm8731_init|i2c_init|state_reg~17_combout\ & \wm8731_init|i2c_init|init_data_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg~17_combout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(8),
	datac => \wm8731_init|i2c_init|cmd_valid_next~5_combout\,
	datad => \wm8731_init|i2c_init|cmd_valid_next~4_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~6_combout\);

-- Location: LCCOMB_X56_Y20_N8
\wm8731_init|i2c_init|cmd_valid_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_valid_next~7_combout\ = (\wm8731_init|i2c_init|cmd_valid_reg~regout\ & (((!\wm8731_init|i2c_master|cmd_ready_reg~regout\)))) # (!\wm8731_init|i2c_init|cmd_valid_reg~regout\ & (!\wm8731_init|i2c_init|data_out_valid_reg~regout\ & 
-- ((\wm8731_init|i2c_init|cmd_valid_next~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datab => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|cmd_valid_next~6_combout\,
	combout => \wm8731_init|i2c_init|cmd_valid_next~7_combout\);

-- Location: LCFF_X56_Y20_N9
\wm8731_init|i2c_init|cmd_valid_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_valid_next~7_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_valid_reg~regout\);

-- Location: LCCOMB_X50_Y19_N0
\wm8731_init|i2c_init_start_pulse|count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[0]~16_combout\ = \wm8731_init|i2c_init_start_pulse|count\(0) $ (VCC)
-- \wm8731_init|i2c_init_start_pulse|count[0]~17\ = CARRY(\wm8731_init|i2c_init_start_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(0),
	datad => VCC,
	combout => \wm8731_init|i2c_init_start_pulse|count[0]~16_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[0]~17\);

-- Location: LCCOMB_X51_Y19_N26
\resetter|Equal0~5_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \resetter|Equal0~5_wirecell_combout\ = !\resetter|Equal0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \resetter|Equal0~5_combout\,
	combout => \resetter|Equal0~5_wirecell_combout\);

-- Location: LCCOMB_X51_Y19_N16
\wm8731_init|i2c_init_start_pulse|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|Equal0~4_combout\ = ((\wm8731_init|i2c_init_start_pulse|count\(1)) # (!\wm8731_init|i2c_init_start_pulse|count\(2))) # (!\wm8731_init|i2c_init_start_pulse|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(0),
	datac => \wm8731_init|i2c_init_start_pulse|count\(2),
	datad => \wm8731_init|i2c_init_start_pulse|count\(1),
	combout => \wm8731_init|i2c_init_start_pulse|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y19_N22
\wm8731_init|i2c_init_start_pulse|count[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\ = (((\wm8731_init|i2c_init_start_pulse|Equal0~3_combout\ & !\wm8731_init|i2c_init_start_pulse|Equal0~4_combout\)) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\,
	datab => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_init_start_pulse|Equal0~4_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\);

-- Location: LCFF_X50_Y19_N1
\wm8731_init|i2c_init_start_pulse|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[0]~16_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(0));

-- Location: LCCOMB_X50_Y19_N2
\wm8731_init|i2c_init_start_pulse|count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[1]~18_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(1) & (!\wm8731_init|i2c_init_start_pulse|count[0]~17\)) # (!\wm8731_init|i2c_init_start_pulse|count\(1) & ((\wm8731_init|i2c_init_start_pulse|count[0]~17\) 
-- # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[1]~19\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[0]~17\) # (!\wm8731_init|i2c_init_start_pulse|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(1),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[0]~17\,
	combout => \wm8731_init|i2c_init_start_pulse|count[1]~18_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[1]~19\);

-- Location: LCCOMB_X49_Y19_N0
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

-- Location: LCFF_X50_Y19_N3
\wm8731_init|i2c_init_start_pulse|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[1]~18_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(1));

-- Location: LCCOMB_X50_Y19_N4
\wm8731_init|i2c_init_start_pulse|count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[2]~20_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(2) & (\wm8731_init|i2c_init_start_pulse|count[1]~19\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(2) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[1]~19\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[2]~21\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(2) & !\wm8731_init|i2c_init_start_pulse|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(2),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[1]~19\,
	combout => \wm8731_init|i2c_init_start_pulse|count[2]~20_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[2]~21\);

-- Location: LCFF_X50_Y19_N5
\wm8731_init|i2c_init_start_pulse|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[2]~20_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(2));

-- Location: LCCOMB_X51_Y19_N14
\wm8731_init|i2c_init_start_pulse|pulse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|pulse~0_combout\ = (!\wm8731_init|i2c_init_start_pulse|count\(0) & !\wm8731_init|i2c_init_start_pulse|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init_start_pulse|count\(0),
	datad => \wm8731_init|i2c_init_start_pulse|count\(1),
	combout => \wm8731_init|i2c_init_start_pulse|pulse~0_combout\);

-- Location: LCCOMB_X50_Y19_N6
\wm8731_init|i2c_init_start_pulse|count[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[3]~23_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(3) & (!\wm8731_init|i2c_init_start_pulse|count[2]~21\)) # (!\wm8731_init|i2c_init_start_pulse|count\(3) & ((\wm8731_init|i2c_init_start_pulse|count[2]~21\) 
-- # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[3]~24\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[2]~21\) # (!\wm8731_init|i2c_init_start_pulse|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(3),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[2]~21\,
	combout => \wm8731_init|i2c_init_start_pulse|count[3]~23_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[3]~24\);

-- Location: LCFF_X50_Y19_N7
\wm8731_init|i2c_init_start_pulse|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[3]~23_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(3));

-- Location: LCCOMB_X50_Y19_N8
\wm8731_init|i2c_init_start_pulse|count[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[4]~25_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(4) & (\wm8731_init|i2c_init_start_pulse|count[3]~24\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(4) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[3]~24\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[4]~26\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(4) & !\wm8731_init|i2c_init_start_pulse|count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(4),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[3]~24\,
	combout => \wm8731_init|i2c_init_start_pulse|count[4]~25_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[4]~26\);

-- Location: LCFF_X50_Y19_N9
\wm8731_init|i2c_init_start_pulse|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[4]~25_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(4));

-- Location: LCCOMB_X50_Y19_N10
\wm8731_init|i2c_init_start_pulse|count[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[5]~27_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(5) & (!\wm8731_init|i2c_init_start_pulse|count[4]~26\)) # (!\wm8731_init|i2c_init_start_pulse|count\(5) & ((\wm8731_init|i2c_init_start_pulse|count[4]~26\) 
-- # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[5]~28\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[4]~26\) # (!\wm8731_init|i2c_init_start_pulse|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(5),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[4]~26\,
	combout => \wm8731_init|i2c_init_start_pulse|count[5]~27_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[5]~28\);

-- Location: LCFF_X50_Y19_N11
\wm8731_init|i2c_init_start_pulse|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[5]~27_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(5));

-- Location: LCCOMB_X51_Y19_N4
\wm8731_init|i2c_init_start_pulse|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|Equal0~0_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(6) & (!\wm8731_init|i2c_init_start_pulse|count\(3) & (\wm8731_init|i2c_init_start_pulse|count\(4) & !\wm8731_init|i2c_init_start_pulse|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(6),
	datab => \wm8731_init|i2c_init_start_pulse|count\(3),
	datac => \wm8731_init|i2c_init_start_pulse|count\(4),
	datad => \wm8731_init|i2c_init_start_pulse|count\(5),
	combout => \wm8731_init|i2c_init_start_pulse|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y19_N14
\wm8731_init|i2c_init_start_pulse|count[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[7]~31_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(7) & (!\wm8731_init|i2c_init_start_pulse|count[6]~30\)) # (!\wm8731_init|i2c_init_start_pulse|count\(7) & ((\wm8731_init|i2c_init_start_pulse|count[6]~30\) 
-- # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[7]~32\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[6]~30\) # (!\wm8731_init|i2c_init_start_pulse|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(7),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[6]~30\,
	combout => \wm8731_init|i2c_init_start_pulse|count[7]~31_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[7]~32\);

-- Location: LCFF_X50_Y19_N15
\wm8731_init|i2c_init_start_pulse|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[7]~31_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(7));

-- Location: LCCOMB_X50_Y19_N16
\wm8731_init|i2c_init_start_pulse|count[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[8]~33_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(8) & (\wm8731_init|i2c_init_start_pulse|count[7]~32\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(8) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[7]~32\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[8]~34\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(8) & !\wm8731_init|i2c_init_start_pulse|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(8),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[7]~32\,
	combout => \wm8731_init|i2c_init_start_pulse|count[8]~33_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[8]~34\);

-- Location: LCCOMB_X50_Y19_N18
\wm8731_init|i2c_init_start_pulse|count[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[9]~35_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(9) & (!\wm8731_init|i2c_init_start_pulse|count[8]~34\)) # (!\wm8731_init|i2c_init_start_pulse|count\(9) & ((\wm8731_init|i2c_init_start_pulse|count[8]~34\) 
-- # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[9]~36\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[8]~34\) # (!\wm8731_init|i2c_init_start_pulse|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(9),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[8]~34\,
	combout => \wm8731_init|i2c_init_start_pulse|count[9]~35_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[9]~36\);

-- Location: LCFF_X50_Y19_N19
\wm8731_init|i2c_init_start_pulse|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[9]~35_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(9));

-- Location: LCCOMB_X50_Y19_N20
\wm8731_init|i2c_init_start_pulse|count[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[10]~37_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(10) & (\wm8731_init|i2c_init_start_pulse|count[9]~36\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(10) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[9]~36\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[10]~38\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(10) & !\wm8731_init|i2c_init_start_pulse|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(10),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[9]~36\,
	combout => \wm8731_init|i2c_init_start_pulse|count[10]~37_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[10]~38\);

-- Location: LCCOMB_X50_Y19_N22
\wm8731_init|i2c_init_start_pulse|count[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[11]~39_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(11) & (!\wm8731_init|i2c_init_start_pulse|count[10]~38\)) # (!\wm8731_init|i2c_init_start_pulse|count\(11) & 
-- ((\wm8731_init|i2c_init_start_pulse|count[10]~38\) # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[11]~40\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[10]~38\) # (!\wm8731_init|i2c_init_start_pulse|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(11),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[10]~38\,
	combout => \wm8731_init|i2c_init_start_pulse|count[11]~39_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[11]~40\);

-- Location: LCFF_X50_Y19_N23
\wm8731_init|i2c_init_start_pulse|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[11]~39_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(11));

-- Location: LCCOMB_X50_Y19_N24
\wm8731_init|i2c_init_start_pulse|count[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[12]~41_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(12) & (\wm8731_init|i2c_init_start_pulse|count[11]~40\ $ (GND))) # (!\wm8731_init|i2c_init_start_pulse|count\(12) & 
-- (!\wm8731_init|i2c_init_start_pulse|count[11]~40\ & VCC))
-- \wm8731_init|i2c_init_start_pulse|count[12]~42\ = CARRY((\wm8731_init|i2c_init_start_pulse|count\(12) & !\wm8731_init|i2c_init_start_pulse|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(12),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[11]~40\,
	combout => \wm8731_init|i2c_init_start_pulse|count[12]~41_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[12]~42\);

-- Location: LCCOMB_X50_Y19_N26
\wm8731_init|i2c_init_start_pulse|count[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|count[13]~43_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(13) & (!\wm8731_init|i2c_init_start_pulse|count[12]~42\)) # (!\wm8731_init|i2c_init_start_pulse|count\(13) & 
-- ((\wm8731_init|i2c_init_start_pulse|count[12]~42\) # (GND)))
-- \wm8731_init|i2c_init_start_pulse|count[13]~44\ = CARRY((!\wm8731_init|i2c_init_start_pulse|count[12]~42\) # (!\wm8731_init|i2c_init_start_pulse|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init_start_pulse|count\(13),
	datad => VCC,
	cin => \wm8731_init|i2c_init_start_pulse|count[12]~42\,
	combout => \wm8731_init|i2c_init_start_pulse|count[13]~43_combout\,
	cout => \wm8731_init|i2c_init_start_pulse|count[13]~44\);

-- Location: LCFF_X50_Y19_N27
\wm8731_init|i2c_init_start_pulse|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[13]~43_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(13));

-- Location: LCFF_X50_Y19_N29
\wm8731_init|i2c_init_start_pulse|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[14]~45_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(14));

-- Location: LCFF_X50_Y19_N25
\wm8731_init|i2c_init_start_pulse|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[12]~41_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(12));

-- Location: LCCOMB_X51_Y19_N20
\wm8731_init|i2c_init_start_pulse|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|Equal0~2_combout\ = (!\wm8731_init|i2c_init_start_pulse|count\(11) & (\wm8731_init|i2c_init_start_pulse|count\(14) & (!\wm8731_init|i2c_init_start_pulse|count\(13) & !\wm8731_init|i2c_init_start_pulse|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(11),
	datab => \wm8731_init|i2c_init_start_pulse|count\(14),
	datac => \wm8731_init|i2c_init_start_pulse|count\(13),
	datad => \wm8731_init|i2c_init_start_pulse|count\(12),
	combout => \wm8731_init|i2c_init_start_pulse|Equal0~2_combout\);

-- Location: LCFF_X50_Y19_N21
\wm8731_init|i2c_init_start_pulse|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[10]~37_combout\,
	sdata => \~GND~combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(10));

-- Location: LCFF_X50_Y19_N17
\wm8731_init|i2c_init_start_pulse|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init_start_pulse|count[8]~33_combout\,
	sdata => \resetter|Equal0~5_wirecell_combout\,
	sload => \wm8731_init|i2c_init_start_pulse|count[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init_start_pulse|count\(8));

-- Location: LCCOMB_X51_Y19_N30
\wm8731_init|i2c_init_start_pulse|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|Equal0~1_combout\ = (!\wm8731_init|i2c_init_start_pulse|count\(7) & (\wm8731_init|i2c_init_start_pulse|count\(9) & (!\wm8731_init|i2c_init_start_pulse|count\(10) & \wm8731_init|i2c_init_start_pulse|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(7),
	datab => \wm8731_init|i2c_init_start_pulse|count\(9),
	datac => \wm8731_init|i2c_init_start_pulse|count\(10),
	datad => \wm8731_init|i2c_init_start_pulse|count\(8),
	combout => \wm8731_init|i2c_init_start_pulse|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y19_N10
\wm8731_init|i2c_init_start_pulse|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\ = (\wm8731_init|i2c_init_start_pulse|count\(15) & (\wm8731_init|i2c_init_start_pulse|Equal0~0_combout\ & (\wm8731_init|i2c_init_start_pulse|Equal0~2_combout\ & 
-- \wm8731_init|i2c_init_start_pulse|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init_start_pulse|count\(15),
	datab => \wm8731_init|i2c_init_start_pulse|Equal0~0_combout\,
	datac => \wm8731_init|i2c_init_start_pulse|Equal0~2_combout\,
	datad => \wm8731_init|i2c_init_start_pulse|Equal0~1_combout\,
	combout => \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y19_N24
\wm8731_init|i2c_init|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|always0~0_combout\ = (\wm8731_init|i2c_init|start_flag_reg~regout\) # ((\wm8731_init|i2c_init_start_pulse|count\(2) $ (\wm8731_init|i2c_init_start_pulse|pulse~0_combout\)) # (!\wm8731_init|i2c_init_start_pulse|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|start_flag_reg~regout\,
	datab => \wm8731_init|i2c_init_start_pulse|count\(2),
	datac => \wm8731_init|i2c_init_start_pulse|pulse~0_combout\,
	datad => \wm8731_init|i2c_init_start_pulse|Equal0~3_combout\,
	combout => \wm8731_init|i2c_init|always0~0_combout\);

-- Location: LCCOMB_X55_Y19_N2
\wm8731_init|i2c_init|init_data.raddr_a[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~22_combout\ = (!\wm8731_init|i2c_init|cmd_valid_reg~regout\ & (!\wm8731_init|i2c_init|data_out_valid_reg~regout\ & ((\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\) # 
-- (!\wm8731_init|i2c_init|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datac => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|always0~0_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~22_combout\);

-- Location: LCCOMB_X55_Y19_N10
\wm8731_init|i2c_init|init_data.raddr_a[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~7_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & ((!\wm8731_init|i2c_init|Equal1~1_combout\))) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & (!\wm8731_init|i2c_init|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \wm8731_init|i2c_init|Equal5~0_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\,
	datad => \wm8731_init|i2c_init|Equal1~1_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~7_combout\);

-- Location: LCCOMB_X55_Y19_N8
\wm8731_init|i2c_init|init_data.raddr_a[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~7_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\ & 
-- !\wm8731_init|i2c_init|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \wm8731_init|i2c_init|Equal4~0_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~4_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~7_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\);

-- Location: LCCOMB_X58_Y19_N8
\wm8731_init|i2c_init|init_data.raddr_a[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~9_combout\ = (\wm8731_init|i2c_init|cmd_write_reg~3_combout\ & ((\wm8731_init|i2c_init|init_data_reg\(3) $ (!\wm8731_init|i2c_init|init_data_reg\(0))) # (!\wm8731_init|i2c_init|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|Equal3~0_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~3_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~9_combout\);

-- Location: LCCOMB_X55_Y19_N6
\wm8731_init|i2c_init|init_data.raddr_a[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & (\wm8731_init|i2c_init|cmd_write_reg~2_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\) # 
-- (\wm8731_init|i2c_init|init_data.raddr_a[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~9_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\);

-- Location: LCCOMB_X55_Y19_N4
\wm8731_init|i2c_init|init_data.raddr_a[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\ & (\wm8731_init|i2c_init|init_data.raddr_a[0]~22_combout\ & (!\wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\ & 
-- !\wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~22_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\);

-- Location: LCCOMB_X55_Y19_N28
\wm8731_init|i2c_init|init_data.raddr_a[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\) # (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\);

-- Location: LCCOMB_X55_Y17_N2
\wm8731_init|i2c_init|data_ptr_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~4_combout\ = (\wm8731_init|i2c_init|Add0~2_combout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|Add0~2_combout\,
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~4_combout\);

-- Location: LCFF_X54_Y19_N25
\wm8731_init|i2c_init|data_ptr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~4_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(1));

-- Location: LCCOMB_X54_Y19_N0
\wm8731_init|i2c_init|init_data.raddr_a[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_reg\(1)) # (\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (\wm8731_init|i2c_init|address_ptr_reg\(1) & ((!\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_ptr_reg\(1),
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datac => \wm8731_init|i2c_init|address_reg\(1),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\);

-- Location: LCCOMB_X54_Y19_N24
\wm8731_init|i2c_init|init_data.raddr_a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(1) = (\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\ & ((\wm8731_init|i2c_init|data_ptr_reg\(1)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\ & (\wm8731_init|i2c_init|Add0~2_combout\)))) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\ & (((\wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Add0~2_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg\(1),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[1]~15_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(1));

-- Location: LCCOMB_X53_Y19_N14
\wm8731_init|i2c_init|init_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~9_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(2) & (!\wm8731_init|i2c_init|init_data.raddr_a\(3) & (\wm8731_init|i2c_init|init_data.raddr_a\(1) $ (\wm8731_init|i2c_init|init_data.raddr_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	combout => \wm8731_init|i2c_init|init_data~9_combout\);

-- Location: LCCOMB_X53_Y19_N24
\wm8731_init|i2c_init|init_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~8_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & (\wm8731_init|i2c_init|init_data.raddr_a\(0) $ (\wm8731_init|i2c_init|init_data.raddr_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~8_combout\);

-- Location: LCCOMB_X53_Y19_N0
\wm8731_init|i2c_init|init_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~11_combout\ = (\wm8731_init|i2c_init|init_data~8_combout\) # ((\wm8731_init|i2c_init|init_data~9_combout\ & \wm8731_init|i2c_init|init_data~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data~9_combout\,
	datac => \wm8731_init|i2c_init|init_data~8_combout\,
	datad => \wm8731_init|i2c_init|init_data~10_combout\,
	combout => \wm8731_init|i2c_init|init_data~11_combout\);

-- Location: LCFF_X53_Y19_N1
\wm8731_init|i2c_init|init_data_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~11_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(8));

-- Location: LCCOMB_X59_Y19_N30
\wm8731_init|i2c_init|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal0~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(8) & \wm8731_init|i2c_init|init_data_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|init_data_reg\(7),
	combout => \wm8731_init|i2c_init|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y17_N28
\wm8731_init|i2c_init|state_next.STATE_TABLE_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_2~1_combout\ = (!\wm8731_init|i2c_init|Equal0~0_combout\ & (((!\wm8731_init|i2c_init|init_data_reg\(0) & \wm8731_init|i2c_init|init_data_reg\(3))) # (!\wm8731_init|i2c_init|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(0),
	datab => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \wm8731_init|i2c_init|Equal3~0_combout\,
	datad => \wm8731_init|i2c_init|Equal0~0_combout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~1_combout\);

-- Location: LCCOMB_X54_Y19_N6
\wm8731_init|i2c_init|init_data.raddr_a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\ = (((\wm8731_init|i2c_init|init_data_reg\(0)) # (!\wm8731_init|i2c_init|Equal3~0_combout\)) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\)) # (!\wm8731_init|i2c_init|init_data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|Equal3~0_combout\,
	datad => \wm8731_init|i2c_init|init_data_reg\(0),
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\);

-- Location: LCCOMB_X57_Y17_N10
\wm8731_init|i2c_init|state_next.STATE_TABLE_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_2~0_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & (((\wm8731_init|i2c_init|Equal4~0_combout\ & \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\)) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal4~0_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datac => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~0_combout\);

-- Location: LCCOMB_X57_Y17_N30
\wm8731_init|i2c_init|state_next.STATE_TABLE_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next.STATE_TABLE_2~2_combout\ = (\wm8731_init|i2c_init|state_next.STATE_TABLE_2~0_combout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & ((\wm8731_init|i2c_init|state_next.STATE_TABLE_2~1_combout\) # 
-- (!\wm8731_init|i2c_init|data_out_valid_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~1_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datad => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~0_combout\,
	combout => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~2_combout\);

-- Location: LCFF_X57_Y17_N31
\wm8731_init|i2c_init|state_reg.STATE_TABLE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|state_next.STATE_TABLE_2~2_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\);

-- Location: LCCOMB_X56_Y17_N4
\wm8731_init|i2c_init|init_data.raddr_a[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & (!\wm8731_init|i2c_init|init_data_reg\(8) & \wm8731_init|i2c_init|init_data_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \wm8731_init|i2c_init|init_data_reg\(8),
	datad => \wm8731_init|i2c_init|init_data_reg\(7),
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\);

-- Location: LCCOMB_X55_Y19_N26
\wm8731_init|i2c_init|init_data.raddr_a[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~12_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\ & (\wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\ & (\wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\))) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\ & ((\wm8731_init|i2c_init|always0~0_combout\) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\ & \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~6_combout\,
	datad => \wm8731_init|i2c_init|always0~0_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~12_combout\);

-- Location: LCCOMB_X55_Y19_N30
\wm8731_init|i2c_init|init_data.raddr_a[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ = ((\wm8731_init|i2c_init|init_data.raddr_a[0]~12_combout\) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\) # (\wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\))) # 
-- (!\wm8731_init|i2c_init|data_out_valid_reg~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~12_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~8_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~10_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\);

-- Location: LCCOMB_X56_Y19_N28
\wm8731_init|i2c_init|init_data.raddr_a[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & ((\wm8731_init|i2c_init|address_reg\(0)) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_ptr_reg\(0) & !\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_reg\(0),
	datab => \wm8731_init|i2c_init|address_ptr_reg\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\);

-- Location: LCFF_X56_Y19_N23
\wm8731_init|i2c_init|data_ptr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~7_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(0));

-- Location: LCCOMB_X56_Y19_N22
\wm8731_init|i2c_init|init_data.raddr_a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(0) = (\wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\ & (((\wm8731_init|i2c_init|data_ptr_reg\(0)) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\ & (\wm8731_init|i2c_init|Add0~0_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Add0~0_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~16_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg\(0),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(0));

-- Location: LCCOMB_X56_Y19_N20
\wm8731_init|i2c_init|init_data~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~31_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3) & (\wm8731_init|i2c_init|init_data.raddr_a\(2) & !\wm8731_init|i2c_init|init_data.raddr_a\(4))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(3) & (!\wm8731_init|i2c_init|init_data.raddr_a\(2) & \wm8731_init|i2c_init|init_data.raddr_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	combout => \wm8731_init|i2c_init|init_data~31_combout\);

-- Location: LCCOMB_X57_Y19_N26
\wm8731_init|i2c_init|init_data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~38_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & (\wm8731_init|i2c_init|init_data~31_combout\ & \wm8731_init|i2c_init|init_data.raddr_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data~31_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~38_combout\);

-- Location: LCCOMB_X57_Y19_N8
\wm8731_init|i2c_init|init_data~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~32_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & (!\wm8731_init|i2c_init|init_data.raddr_a\(6) & !\wm8731_init|i2c_init|init_data.raddr_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~32_combout\);

-- Location: LCCOMB_X57_Y19_N6
\wm8731_init|i2c_init|init_data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~37_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(2) & (!\wm8731_init|i2c_init|init_data.raddr_a\(3) & (!\wm8731_init|i2c_init|init_data.raddr_a\(1) & \wm8731_init|i2c_init|init_data~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	datad => \wm8731_init|i2c_init|init_data~10_combout\,
	combout => \wm8731_init|i2c_init|init_data~37_combout\);

-- Location: LCCOMB_X57_Y19_N4
\wm8731_init|i2c_init|init_data~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~34_combout\ = (\wm8731_init|i2c_init|init_data~38_combout\) # ((\wm8731_init|i2c_init|init_data~37_combout\) # ((!\wm8731_init|i2c_init|init_data~33_combout\ & \wm8731_init|i2c_init|init_data~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data~33_combout\,
	datab => \wm8731_init|i2c_init|init_data~38_combout\,
	datac => \wm8731_init|i2c_init|init_data~32_combout\,
	datad => \wm8731_init|i2c_init|init_data~37_combout\,
	combout => \wm8731_init|i2c_init|init_data~34_combout\);

-- Location: LCFF_X57_Y19_N5
\wm8731_init|i2c_init|init_data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~34_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(3));

-- Location: LCCOMB_X57_Y17_N6
\wm8731_init|i2c_init|state_reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_reg~24_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(0) & (\wm8731_init|i2c_init|init_data_reg\(3) & (\wm8731_init|i2c_init|Equal3~0_combout\ & !\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(0),
	datab => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \wm8731_init|i2c_init|Equal3~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \wm8731_init|i2c_init|state_reg~24_combout\);

-- Location: LCCOMB_X56_Y17_N16
\wm8731_init|i2c_init|address_ptr_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_ptr_reg[0]~0_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~regout\) # ((\wm8731_init|i2c_init|cmd_valid_reg~regout\) # ((!\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\ & 
-- !\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datad => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	combout => \wm8731_init|i2c_init|address_ptr_reg[0]~0_combout\);

-- Location: LCCOMB_X55_Y17_N10
\wm8731_init|i2c_init|address_ptr_reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\ = (\resetter|Equal0~5_combout\) # ((!\wm8731_init|i2c_init|address_ptr_reg[0]~0_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\) # (\wm8731_init|i2c_init|state_reg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\,
	datab => \wm8731_init|i2c_init|state_reg~24_combout\,
	datac => \resetter|Equal0~5_combout\,
	datad => \wm8731_init|i2c_init|address_ptr_reg[0]~0_combout\,
	combout => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\);

-- Location: LCFF_X56_Y19_N1
\wm8731_init|i2c_init|address_ptr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~12_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(4));

-- Location: LCCOMB_X56_Y19_N0
\wm8731_init|i2c_init|init_data.raddr_a[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & ((\wm8731_init|i2c_init|address_reg\(4)) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_ptr_reg\(4) & !\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datab => \wm8731_init|i2c_init|address_reg\(4),
	datac => \wm8731_init|i2c_init|address_ptr_reg\(4),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\);

-- Location: LCFF_X56_Y19_N31
\wm8731_init|i2c_init|data_ptr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~12_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_ptr_reg[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_ptr_reg\(4));

-- Location: LCCOMB_X56_Y19_N30
\wm8731_init|i2c_init|init_data.raddr_a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(4) = (\wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\ & (((\wm8731_init|i2c_init|data_ptr_reg\(4)) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\ & (\wm8731_init|i2c_init|Add0~8_combout\ & ((\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Add0~8_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[4]~21_combout\,
	datac => \wm8731_init|i2c_init|data_ptr_reg\(4),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(4));

-- Location: LCCOMB_X57_Y19_N20
\wm8731_init|i2c_init|address_reg~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|address_reg~18_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_init|init_data.raddr_a\(4) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|address_reg~18_combout\);

-- Location: LCFF_X57_Y19_N21
\wm8731_init|i2c_init|address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|address_reg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_reg\(4));

-- Location: LCCOMB_X54_Y19_N8
\wm8731_init|i2c_init|data_ptr_reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_ptr_reg~9_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_init|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_init|Add0~10_combout\,
	combout => \wm8731_init|i2c_init|data_ptr_reg~9_combout\);

-- Location: LCFF_X54_Y19_N15
\wm8731_init|i2c_init|address_ptr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|data_ptr_reg~9_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_init|address_ptr_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|address_ptr_reg\(5));

-- Location: LCCOMB_X54_Y19_N14
\wm8731_init|i2c_init|init_data.raddr_a[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & ((\wm8731_init|i2c_init|address_reg\(5)) # ((\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\ & (((\wm8731_init|i2c_init|address_ptr_reg\(5) & !\wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|address_reg\(5),
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~13_combout\,
	datac => \wm8731_init|i2c_init|address_ptr_reg\(5),
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~11_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\);

-- Location: LCCOMB_X54_Y19_N28
\wm8731_init|i2c_init|init_data.raddr_a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data.raddr_a\(5) = (\wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\ & ((\wm8731_init|i2c_init|data_ptr_reg\(5)) # ((!\wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\)))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\ & (((\wm8731_init|i2c_init|Add0~10_combout\ & \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_ptr_reg\(5),
	datab => \wm8731_init|i2c_init|Add0~10_combout\,
	datac => \wm8731_init|i2c_init|init_data.raddr_a[5]~18_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a[0]~14_combout\,
	combout => \wm8731_init|i2c_init|init_data.raddr_a\(5));

-- Location: LCCOMB_X54_Y19_N18
\wm8731_init|i2c_init|init_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~14_combout\ = (!\wm8731_init|i2c_init|init_data.raddr_a\(5) & !\wm8731_init|i2c_init|init_data.raddr_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(5),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(6),
	combout => \wm8731_init|i2c_init|init_data~14_combout\);

-- Location: LCCOMB_X56_Y19_N8
\wm8731_init|i2c_init|init_data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~23_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(4) & (!\wm8731_init|i2c_init|init_data.raddr_a\(1) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3)) # (!\wm8731_init|i2c_init|init_data.raddr_a\(2))))) # 
-- (!\wm8731_init|i2c_init|init_data.raddr_a\(4) & ((\wm8731_init|i2c_init|init_data.raddr_a\(3) & (!\wm8731_init|i2c_init|init_data.raddr_a\(2))) # (!\wm8731_init|i2c_init|init_data.raddr_a\(3) & (\wm8731_init|i2c_init|init_data.raddr_a\(2) & 
-- \wm8731_init|i2c_init|init_data.raddr_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(3),
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(4),
	datac => \wm8731_init|i2c_init|init_data.raddr_a\(2),
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~23_combout\);

-- Location: LCCOMB_X56_Y19_N10
\wm8731_init|i2c_init|init_data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~24_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0) & (\wm8731_init|i2c_init|init_data~23_combout\ & !\wm8731_init|i2c_init|init_data.raddr_a\(1))) # (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & 
-- (!\wm8731_init|i2c_init|init_data~23_combout\ & \wm8731_init|i2c_init|init_data.raddr_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datac => \wm8731_init|i2c_init|init_data~23_combout\,
	datad => \wm8731_init|i2c_init|init_data.raddr_a\(1),
	combout => \wm8731_init|i2c_init|init_data~24_combout\);

-- Location: LCCOMB_X55_Y19_N0
\wm8731_init|i2c_init|init_data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|init_data~25_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a\(0) & (\wm8731_init|i2c_init|init_data~14_combout\ & (\wm8731_init|i2c_init|init_data~24_combout\))) # (!\wm8731_init|i2c_init|init_data.raddr_a\(0) & 
-- ((\wm8731_init|i2c_init|init_data~37_combout\) # ((\wm8731_init|i2c_init|init_data~14_combout\ & !\wm8731_init|i2c_init|init_data~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a\(0),
	datab => \wm8731_init|i2c_init|init_data~14_combout\,
	datac => \wm8731_init|i2c_init|init_data~24_combout\,
	datad => \wm8731_init|i2c_init|init_data~37_combout\,
	combout => \wm8731_init|i2c_init|init_data~25_combout\);

-- Location: LCFF_X55_Y19_N1
\wm8731_init|i2c_init|init_data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|init_data~25_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|init_data_reg\(1));

-- Location: LCCOMB_X54_Y19_N16
\wm8731_init|i2c_init|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal3~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(6) & (!\wm8731_init|i2c_init|init_data_reg\(1) & (!\wm8731_init|i2c_init|init_data_reg\(5) & \wm8731_init|i2c_init|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(6),
	datab => \wm8731_init|i2c_init|init_data_reg\(1),
	datac => \wm8731_init|i2c_init|init_data_reg\(5),
	datad => \wm8731_init|i2c_init|Equal7~0_combout\,
	combout => \wm8731_init|i2c_init|Equal3~0_combout\);

-- Location: LCCOMB_X58_Y19_N24
\wm8731_init|i2c_init|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector11~0_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & !\wm8731_init|i2c_init|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \wm8731_init|i2c_init|Equal3~0_combout\,
	combout => \wm8731_init|i2c_init|Selector11~0_combout\);

-- Location: LCFF_X58_Y19_N25
\wm8731_init|i2c_init|state_reg.STATE_TABLE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector11~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_init|state_reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\);

-- Location: LCCOMB_X58_Y19_N28
\wm8731_init|i2c_init|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Equal7~2_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(5) & (\wm8731_init|i2c_init|Equal7~0_combout\ & \wm8731_init|i2c_init|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(5),
	datac => \wm8731_init|i2c_init|Equal7~0_combout\,
	datad => \wm8731_init|i2c_init|Equal7~1_combout\,
	combout => \wm8731_init|i2c_init|Equal7~2_combout\);

-- Location: LCCOMB_X59_Y19_N16
\wm8731_init|i2c_init|cmd_write_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_next~0_combout\ = (\wm8731_init|i2c_init|cmd_write_reg~2_combout\ & (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal7~2_combout\)))) # (!\wm8731_init|i2c_init|cmd_write_reg~2_combout\ & 
-- ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\) # ((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \wm8731_init|i2c_init|Equal7~2_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_next~0_combout\);

-- Location: LCCOMB_X57_Y20_N18
\wm8731_init|i2c_init|state_next~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|state_next~0_combout\ = (!\wm8731_init|i2c_init|init_data_reg\(7) & !\wm8731_init|i2c_init|init_data_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(7),
	datad => \wm8731_init|i2c_init|init_data_reg\(8),
	combout => \wm8731_init|i2c_init|state_next~0_combout\);

-- Location: LCCOMB_X57_Y19_N22
\wm8731_init|i2c_init|cmd_write_reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~9_combout\ = ((\wm8731_init|i2c_init|state_next~0_combout\ & ((\wm8731_init|i2c_init|Equal7~2_combout\) # (!\wm8731_init|i2c_init|Equal1~1_combout\)))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal1~1_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|state_next~0_combout\,
	datad => \wm8731_init|i2c_init|Equal7~2_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~9_combout\);

-- Location: LCCOMB_X58_Y19_N26
\wm8731_init|i2c_init|cmd_write_reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~10_combout\ = (\wm8731_init|i2c_init|Equal0~0_combout\) # ((\wm8731_init|i2c_init|cmd_write_reg~9_combout\ & ((\wm8731_init|i2c_init|cmd_write_reg~2_combout\) # (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~9_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~10_combout\);

-- Location: LCCOMB_X58_Y19_N2
\wm8731_init|i2c_init|cmd_write_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~6_combout\ = (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((!\wm8731_init|i2c_init|Equal2~0_combout\))) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \wm8731_init|i2c_init|Equal0~0_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datad => \wm8731_init|i2c_init|Equal2~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~6_combout\);

-- Location: LCCOMB_X58_Y19_N20
\wm8731_init|i2c_init|cmd_write_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~4_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\) # ((\wm8731_init|i2c_init|cmd_write_reg~3_combout\ & 
-- \wm8731_init|i2c_init|cmd_write_reg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~3_combout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~4_combout\);

-- Location: LCCOMB_X58_Y19_N12
\wm8731_init|i2c_init|cmd_write_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~5_combout\ = (\wm8731_init|i2c_init|cmd_write_reg~4_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (!\wm8731_init|i2c_init|Equal4~0_combout\)) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|Equal4~0_combout\,
	datac => \wm8731_init|i2c_init|cmd_write_reg~4_combout\,
	datad => \wm8731_init|i2c_init|Equal2~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~5_combout\);

-- Location: LCCOMB_X58_Y19_N0
\wm8731_init|i2c_init|cmd_write_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~7_combout\ = (!\wm8731_init|i2c_init|cmd_write_reg~6_combout\ & (\wm8731_init|i2c_init|cmd_write_reg~5_combout\ & ((!\wm8731_init|i2c_init|Equal4~0_combout\) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~6_combout\,
	datac => \wm8731_init|i2c_init|Equal4~0_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~5_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~7_combout\);

-- Location: LCCOMB_X58_Y19_N4
\wm8731_init|i2c_init|cmd_write_reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~8_combout\ = ((!\wm8731_init|i2c_init|cmd_write_reg~7_combout\ & ((!\wm8731_init|i2c_init|cmd_write_reg~2_combout\) # (!\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\)))) # (!\wm8731_init|i2c_init|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~2_combout\,
	datac => \wm8731_init|i2c_init|Equal3~1_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~7_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~8_combout\);

-- Location: LCCOMB_X59_Y18_N2
\wm8731_init|i2c_init|cmd_write_reg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_reg~11_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~regout\) # ((\wm8731_init|i2c_init|cmd_valid_reg~regout\) # ((\wm8731_init|i2c_init|cmd_write_reg~10_combout\ & \wm8731_init|i2c_init|cmd_write_reg~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~10_combout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~8_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_reg~11_combout\);

-- Location: LCCOMB_X59_Y18_N28
\wm8731_init|i2c_init|cmd_write_next~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_next~1_combout\ = (\wm8731_init|i2c_init|init_data_reg\(8) & (\wm8731_init|i2c_init|cmd_write_next~0_combout\ & !\wm8731_init|i2c_init|cmd_write_reg~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(8),
	datac => \wm8731_init|i2c_init|cmd_write_next~0_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~11_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_next~1_combout\);

-- Location: LCCOMB_X56_Y18_N10
\wm8731_init|i2c_master|always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~5_combout\ = (\wm8731_init|i2c_init|cmd_valid_reg~regout\ & \wm8731_init|i2c_master|cmd_ready_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	combout => \wm8731_init|i2c_master|always0~5_combout\);

-- Location: LCCOMB_X59_Y18_N0
\wm8731_init|i2c_init|cmd_write_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_write_next~2_combout\ = (\wm8731_init|i2c_master|always0~5_combout\) # ((\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & ((!\wm8731_init|i2c_init|cmd_write_reg~8_combout\) # 
-- (!\wm8731_init|i2c_init|cmd_write_reg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|cmd_write_reg~10_combout\,
	datac => \wm8731_init|i2c_master|always0~5_combout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~8_combout\,
	combout => \wm8731_init|i2c_init|cmd_write_next~2_combout\);

-- Location: LCFF_X59_Y18_N29
\wm8731_init|i2c_init|cmd_write_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_write_next~1_combout\,
	ena => \wm8731_init|i2c_init|cmd_write_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_write_reg~regout\);

-- Location: LCCOMB_X55_Y18_N22
\wm8731_init|i2c_master|phy_start_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_start_bit~0_combout\ = (\wm8731_init|i2c_master|cmd_ready_reg~regout\ & (\wm8731_init|i2c_init|cmd_write_reg~regout\ & \wm8731_init|i2c_init|cmd_valid_reg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_write_reg~regout\,
	datad => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	combout => \wm8731_init|i2c_master|phy_start_bit~0_combout\);

-- Location: LCCOMB_X53_Y18_N18
\wm8731_init|i2c_master|sda_i_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|sda_i_reg~0_combout\ = !\I2C_SDAT~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C_SDAT~0\,
	combout => \wm8731_init|i2c_master|sda_i_reg~0_combout\);

-- Location: LCFF_X53_Y18_N19
\wm8731_init|i2c_master|sda_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|sda_i_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|sda_i_reg~regout\);

-- Location: LCCOMB_X53_Y18_N2
\wm8731_init|i2c_master|last_sda_i_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|last_sda_i_reg~feeder_combout\ = \wm8731_init|i2c_master|sda_i_reg~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_master|sda_i_reg~regout\,
	combout => \wm8731_init|i2c_master|last_sda_i_reg~feeder_combout\);

-- Location: LCFF_X53_Y18_N3
\wm8731_init|i2c_master|last_sda_i_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|last_sda_i_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|last_sda_i_reg~regout\);

-- Location: LCCOMB_X53_Y18_N8
\wm8731_init|i2c_master|bus_active_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bus_active_reg~0_combout\ = (\wm8731_init|i2c_master|scl_i_reg~regout\ & (((\wm8731_init|i2c_master|bus_active_reg~regout\)))) # (!\wm8731_init|i2c_master|scl_i_reg~regout\ & ((\wm8731_init|i2c_master|last_sda_i_reg~regout\ & 
-- (\wm8731_init|i2c_master|bus_active_reg~regout\ & \wm8731_init|i2c_master|sda_i_reg~regout\)) # (!\wm8731_init|i2c_master|last_sda_i_reg~regout\ & ((\wm8731_init|i2c_master|bus_active_reg~regout\) # (\wm8731_init|i2c_master|sda_i_reg~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|scl_i_reg~regout\,
	datab => \wm8731_init|i2c_master|last_sda_i_reg~regout\,
	datac => \wm8731_init|i2c_master|bus_active_reg~regout\,
	datad => \wm8731_init|i2c_master|sda_i_reg~regout\,
	combout => \wm8731_init|i2c_master|bus_active_reg~0_combout\);

-- Location: LCFF_X53_Y18_N9
\wm8731_init|i2c_master|bus_active_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|bus_active_reg~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|bus_active_reg~regout\);

-- Location: LCCOMB_X55_Y18_N0
\wm8731_init|i2c_master|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector14~0_combout\ = (\wm8731_init|i2c_master|bus_active_reg~regout\ & ((\wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\) # ((!\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\ & 
-- \wm8731_init|i2c_master|phy_start_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|bus_active_reg~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datad => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	combout => \wm8731_init|i2c_master|Selector14~0_combout\);

-- Location: LCCOMB_X54_Y18_N20
\wm8731_init|i2c_master|state_reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~28_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # (((!\resetter|reset_count\(16)) # (!\resetter|Equal0~4_combout\)) # (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datac => \resetter|Equal0~4_combout\,
	datad => \resetter|reset_count\(16),
	combout => \wm8731_init|i2c_master|state_reg~28_combout\);

-- Location: LCFF_X55_Y18_N1
\wm8731_init|i2c_master|state_reg.STATE_START_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector14~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_master|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\);

-- Location: LCCOMB_X55_Y18_N14
\wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\ = (!\wm8731_init|i2c_master|bus_active_reg~regout\ & ((\wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\) # ((!\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\ & 
-- \wm8731_init|i2c_master|phy_start_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datac => \wm8731_init|i2c_master|bus_active_reg~regout\,
	datad => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	combout => \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\);

-- Location: LCCOMB_X54_Y20_N24
\wm8731_init|i2c_init|cur_address_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~6_combout\ = (\wm8731_init|i2c_init|init_data_reg\(4) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(4),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~6_combout\);

-- Location: LCCOMB_X54_Y20_N0
\wm8731_init|i2c_init|cur_address_reg[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\ = (((\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\)) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|init_data.raddr_a[0]~5_combout\,
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\);

-- Location: LCFF_X54_Y20_N25
\wm8731_init|i2c_init|cur_address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~6_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(4));

-- Location: LCCOMB_X55_Y20_N18
\wm8731_init|i2c_init|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector26~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & (\wm8731_init|i2c_init|init_data_reg\(4))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- ((\wm8731_init|i2c_init|cur_address_reg\(4)))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|init_data_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(4),
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cur_address_reg\(4),
	combout => \wm8731_init|i2c_init|Selector26~0_combout\);

-- Location: LCCOMB_X57_Y20_N22
\wm8731_init|i2c_init|cmd_address_reg[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_address_reg[6]~3_combout\ = ((\wm8731_init|i2c_init|init_data_reg\(8)) # ((!\wm8731_init|i2c_init|Equal7~2_combout\ & !\wm8731_init|i2c_init|init_data_reg\(7)))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|Equal7~2_combout\,
	datac => \wm8731_init|i2c_init|init_data_reg\(7),
	datad => \wm8731_init|i2c_init|init_data_reg\(8),
	combout => \wm8731_init|i2c_init|cmd_address_reg[6]~3_combout\);

-- Location: LCCOMB_X54_Y20_N18
\wm8731_init|i2c_init|cmd_address_reg[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~4_combout\ & (((\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & \wm8731_init|i2c_init|Equal0~0_combout\)) # 
-- (!\wm8731_init|i2c_init|cmd_address_reg[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~4_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cmd_address_reg[6]~3_combout\,
	combout => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\);

-- Location: LCFF_X55_Y20_N19
\wm8731_init|i2c_init|cmd_address_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector26~0_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(4));

-- Location: LCCOMB_X54_Y20_N2
\wm8731_init|i2c_init|cur_address_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~5_combout\ = (\wm8731_init|i2c_init|init_data_reg\(5) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(5),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~5_combout\);

-- Location: LCFF_X54_Y20_N3
\wm8731_init|i2c_init|cur_address_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~5_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(5));

-- Location: LCCOMB_X55_Y20_N6
\wm8731_init|i2c_init|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector25~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & (\wm8731_init|i2c_init|init_data_reg\(5))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- ((\wm8731_init|i2c_init|cur_address_reg\(5)))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|init_data_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(5),
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cur_address_reg\(5),
	combout => \wm8731_init|i2c_init|Selector25~0_combout\);

-- Location: LCFF_X55_Y20_N7
\wm8731_init|i2c_init|cmd_address_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector25~0_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(5));

-- Location: LCCOMB_X56_Y18_N18
\wm8731_init|i2c_master|bit_count_reg[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\ = (!\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_2~regout\ & (((\wm8731_init|i2c_master|data_in_ready_reg~regout\ & \wm8731_init|i2c_init|data_out_valid_reg~regout\)) # 
-- (!\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_2~regout\,
	datab => \wm8731_init|i2c_master|data_in_ready_reg~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\);

-- Location: LCCOMB_X55_Y18_N6
\wm8731_init|i2c_master|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector16~0_combout\ = ((\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\wm8731_init|i2c_master|always0~4_combout\ & \wm8731_init|i2c_master|phy_start_bit~0_combout\))) # 
-- (!\wm8731_init|i2c_master|bit_count_reg[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \wm8731_init|i2c_master|always0~4_combout\,
	datac => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	datad => \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\,
	combout => \wm8731_init|i2c_master|Selector16~0_combout\);

-- Location: LCCOMB_X53_Y18_N16
\wm8731_init|i2c_master|state_reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~30_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_master|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datac => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_master|Selector16~0_combout\,
	combout => \wm8731_init|i2c_master|state_reg~30_combout\);

-- Location: LCFF_X53_Y18_N17
\wm8731_init|i2c_master|state_reg.STATE_WRITE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|state_reg~30_combout\,
	ena => \wm8731_init|i2c_master|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\);

-- Location: LCCOMB_X56_Y18_N22
\wm8731_init|i2c_master|data_reg[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|data_reg[6]~0_combout\ = (\wm8731_init|i2c_init|data_out_valid_reg~regout\ & (\wm8731_init|i2c_master|data_in_ready_reg~regout\ & (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & 
-- !\wm8731_init|i2c_master|Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_valid_reg~regout\,
	datab => \wm8731_init|i2c_master|data_in_ready_reg~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_master|Selector38~6_combout\,
	combout => \wm8731_init|i2c_master|data_reg[6]~0_combout\);

-- Location: LCCOMB_X56_Y20_N16
\wm8731_init|i2c_master|state_reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~26_combout\ = (\wm8731_init|i2c_master|data_reg[6]~0_combout\) # ((\wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\ & ((\wm8731_init|i2c_master|Selector38~6_combout\) # 
-- (!\wm8731_init|i2c_master|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector37~0_combout\,
	datab => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datad => \wm8731_init|i2c_master|Selector38~6_combout\,
	combout => \wm8731_init|i2c_master|state_reg~26_combout\);

-- Location: LCFF_X56_Y20_N17
\wm8731_init|i2c_master|state_reg.STATE_WRITE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|state_reg~26_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\);

-- Location: LCCOMB_X56_Y18_N14
\wm8731_init|i2c_master|state_reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~29_combout\ = (!\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\ & (((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & !\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\)) # 
-- (!\wm8731_init|i2c_master|phy_start_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	combout => \wm8731_init|i2c_master|state_reg~29_combout\);

-- Location: LCCOMB_X55_Y18_N16
\wm8731_init|i2c_master|state_reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~27_combout\ = (!\wm8731_init|i2c_master|state_reg~29_combout\ & (!\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|Selector38~6_combout\) # (!\wm8731_init|i2c_master|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector38~6_combout\,
	datab => \wm8731_init|i2c_master|state_reg~29_combout\,
	datac => \wm8731_init|i2c_master|Selector26~0_combout\,
	datad => \resetter|Equal0~5_combout\,
	combout => \wm8731_init|i2c_master|state_reg~27_combout\);

-- Location: LCFF_X55_Y18_N17
\wm8731_init|i2c_master|state_reg.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|state_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\);

-- Location: LCCOMB_X59_Y18_N10
\wm8731_init|i2c_init|cmd_stop_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_stop_next~2_combout\ = (!\wm8731_init|i2c_init|cmd_write_reg~11_combout\ & (((!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & !\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\)) # 
-- (!\wm8731_init|i2c_init|init_data_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(8),
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~11_combout\,
	combout => \wm8731_init|i2c_init|cmd_stop_next~2_combout\);

-- Location: LCFF_X59_Y18_N11
\wm8731_init|i2c_init|cmd_stop_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_stop_next~2_combout\,
	ena => \wm8731_init|i2c_init|cmd_write_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_stop_reg~regout\);

-- Location: LCFF_X56_Y18_N21
\wm8731_init|i2c_master|mode_stop_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_stop_reg~regout\,
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|mode_stop_reg~regout\);

-- Location: LCCOMB_X56_Y18_N4
\wm8731_init|i2c_master|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector12~0_combout\ = ((!\wm8731_init|i2c_init|cmd_stop_reg~regout\ & (\wm8731_init|i2c_init|cmd_valid_reg~regout\ & !\wm8731_init|i2c_init|cmd_write_reg~regout\))) # (!\wm8731_init|i2c_master|cmd_ready_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	datab => \wm8731_init|i2c_init|cmd_stop_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_init|cmd_write_reg~regout\,
	combout => \wm8731_init|i2c_master|Selector12~0_combout\);

-- Location: LCCOMB_X55_Y18_N30
\wm8731_init|i2c_master|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector12~1_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\ & (((\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & \wm8731_init|i2c_master|Selector12~0_combout\)) # 
-- (!\wm8731_init|i2c_master|mode_stop_reg~regout\))) # (!\wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\ & (((\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & \wm8731_init|i2c_master|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	datab => \wm8731_init|i2c_master|mode_stop_reg~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datad => \wm8731_init|i2c_master|Selector12~0_combout\,
	combout => \wm8731_init|i2c_master|Selector12~1_combout\);

-- Location: LCFF_X55_Y18_N31
\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector12~1_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_master|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\);

-- Location: LCCOMB_X56_Y18_N24
\wm8731_init|i2c_master|bit_count_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\) # (((\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\) # (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\)) # 
-- (!\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datab => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\);

-- Location: LCCOMB_X56_Y20_N2
\wm8731_init|i2c_master|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector24~0_combout\ = (!\wm8731_init|i2c_master|bit_count_reg[0]~0_combout\ & !\wm8731_init|i2c_master|bit_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\,
	datac => \wm8731_init|i2c_master|bit_count_reg\(0),
	combout => \wm8731_init|i2c_master|Selector24~0_combout\);

-- Location: LCCOMB_X56_Y18_N8
\wm8731_init|i2c_master|bit_count_reg[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[3]~2_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\) # ((\wm8731_init|i2c_master|bus_active_reg~regout\ & ((\wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\) # 
-- (!\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bus_active_reg~regout\,
	datab => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_START_WAIT~regout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[3]~2_combout\);

-- Location: LCCOMB_X55_Y18_N4
\wm8731_init|i2c_master|bit_count_reg[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[3]~3_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (!\wm8731_init|i2c_master|always0~4_combout\ & ((\wm8731_init|i2c_master|phy_start_bit~0_combout\)))) # 
-- (!\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (((\wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\) # (\wm8731_init|i2c_master|phy_start_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \wm8731_init|i2c_master|always0~4_combout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	datad => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[3]~3_combout\);

-- Location: LCCOMB_X55_Y18_N2
\wm8731_init|i2c_master|bit_count_reg[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\ = (!\wm8731_init|i2c_master|Selector38~6_combout\ & (!\wm8731_init|i2c_master|bit_count_reg[3]~2_combout\ & (\wm8731_init|i2c_master|bit_count_reg[3]~3_combout\ & 
-- \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector38~6_combout\,
	datab => \wm8731_init|i2c_master|bit_count_reg[3]~2_combout\,
	datac => \wm8731_init|i2c_master|bit_count_reg[3]~3_combout\,
	datad => \wm8731_init|i2c_master|bit_count_reg[3]~1_combout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\);

-- Location: LCFF_X56_Y20_N3
\wm8731_init|i2c_master|bit_count_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector24~0_combout\,
	ena => \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|bit_count_reg\(0));

-- Location: LCCOMB_X56_Y20_N28
\wm8731_init|i2c_master|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector23~2_combout\ = (!\wm8731_init|i2c_master|bit_count_reg[0]~0_combout\ & (\wm8731_init|i2c_master|bit_count_reg\(1) $ (!\wm8731_init|i2c_master|bit_count_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\,
	datac => \wm8731_init|i2c_master|bit_count_reg\(1),
	datad => \wm8731_init|i2c_master|bit_count_reg\(0),
	combout => \wm8731_init|i2c_master|Selector23~2_combout\);

-- Location: LCFF_X56_Y20_N29
\wm8731_init|i2c_master|bit_count_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector23~2_combout\,
	ena => \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|bit_count_reg\(1));

-- Location: LCCOMB_X53_Y20_N30
\wm8731_init|i2c_master|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector22~2_combout\ = (!\wm8731_init|i2c_master|bit_count_reg[0]~0_combout\ & (\wm8731_init|i2c_master|bit_count_reg\(2) $ (((!\wm8731_init|i2c_master|bit_count_reg\(0) & !\wm8731_init|i2c_master|bit_count_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg[0]~0_combout\,
	datab => \wm8731_init|i2c_master|bit_count_reg\(0),
	datac => \wm8731_init|i2c_master|bit_count_reg\(2),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Selector22~2_combout\);

-- Location: LCFF_X53_Y20_N31
\wm8731_init|i2c_master|bit_count_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector22~2_combout\,
	ena => \wm8731_init|i2c_master|bit_count_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|bit_count_reg\(2));

-- Location: LCCOMB_X53_Y20_N2
\wm8731_init|i2c_master|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector37~0_combout\ = (!\wm8731_init|i2c_master|bit_count_reg\(3) & (!\wm8731_init|i2c_master|bit_count_reg\(2) & (!\wm8731_init|i2c_master|bit_count_reg\(0) & !\wm8731_init|i2c_master|bit_count_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(3),
	datab => \wm8731_init|i2c_master|bit_count_reg\(2),
	datac => \wm8731_init|i2c_master|bit_count_reg\(0),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Selector37~0_combout\);

-- Location: LCCOMB_X55_Y18_N24
\wm8731_init|i2c_master|Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector37~2_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\ & \wm8731_init|i2c_master|Selector37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datac => \wm8731_init|i2c_master|Selector37~0_combout\,
	combout => \wm8731_init|i2c_master|Selector37~2_combout\);

-- Location: LCFF_X55_Y18_N25
\wm8731_init|i2c_master|state_reg.STATE_WRITE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector37~2_combout\,
	sclr => \resetter|Equal0~5_combout\,
	ena => \wm8731_init|i2c_master|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\);

-- Location: LCCOMB_X56_Y18_N26
\wm8731_init|i2c_master|state_reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_reg~25_combout\ = (\wm8731_init|i2c_master|cmd_ready_reg~regout\ & (((!\wm8731_init|i2c_init|cmd_write_reg~regout\ & \wm8731_init|i2c_init|cmd_stop_reg~regout\)) # (!\wm8731_init|i2c_init|cmd_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_write_reg~regout\,
	datab => \wm8731_init|i2c_init|cmd_stop_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	combout => \wm8731_init|i2c_master|state_reg~25_combout\);

-- Location: LCCOMB_X56_Y18_N16
\wm8731_init|i2c_master|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector26~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & ((\wm8731_init|i2c_master|state_reg~25_combout\) # ((\wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\ & 
-- \wm8731_init|i2c_master|mode_stop_reg~regout\)))) # (!\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\ & (\wm8731_init|i2c_master|mode_stop_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_3~regout\,
	datac => \wm8731_init|i2c_master|mode_stop_reg~regout\,
	datad => \wm8731_init|i2c_master|state_reg~25_combout\,
	combout => \wm8731_init|i2c_master|Selector26~0_combout\);

-- Location: LCCOMB_X56_Y20_N26
\wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\ = (\wm8731_init|i2c_master|Selector38~6_combout\ & (((\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\)))) # (!\wm8731_init|i2c_master|Selector38~6_combout\ & 
-- ((\wm8731_init|i2c_master|Selector20~0_combout\) # ((!\wm8731_init|i2c_master|Selector37~0_combout\ & \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector37~0_combout\,
	datab => \wm8731_init|i2c_master|Selector20~0_combout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datad => \wm8731_init|i2c_master|Selector38~6_combout\,
	combout => \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\);

-- Location: LCFF_X56_Y20_N27
\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~1_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\);

-- Location: LCCOMB_X55_Y18_N10
\wm8731_init|i2c_master|phy_state_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~3_combout\ = (!\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\ & (!\wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\ & !\wm8731_init|i2c_master|Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	datad => \wm8731_init|i2c_master|Selector20~0_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~3_combout\);

-- Location: LCCOMB_X54_Y18_N14
\wm8731_init|i2c_master|phy_state_reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~29_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (((!\wm8731_init|i2c_master|Selector26~0_combout\ & \wm8731_init|i2c_master|phy_state_next~3_combout\)) # 
-- (!\wm8731_init|i2c_master|phy_state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \wm8731_init|i2c_master|Selector26~0_combout\,
	datac => \wm8731_init|i2c_master|phy_state_next~3_combout\,
	datad => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~29_combout\);

-- Location: LCCOMB_X54_Y18_N24
\wm8731_init|i2c_master|phy_state_reg~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~40_combout\ = (\wm8731_init|i2c_master|phy_state_reg~29_combout\) # ((!\wm8731_init|i2c_master|delay_reg[12]~4_combout\ & (!\wm8731_init|i2c_master|LessThan2~5_combout\ & 
-- !\wm8731_init|i2c_master|delay_scl_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~4_combout\,
	datab => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg~29_combout\,
	datad => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~40_combout\);

-- Location: LCFF_X54_Y18_N25
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~40_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\);

-- Location: LCCOMB_X56_Y18_N2
\wm8731_init|i2c_master|bit_count_reg[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|bit_count_reg[0]~5_combout\ = (!\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_IDLE~regout\,
	combout => \wm8731_init|i2c_master|bit_count_reg[0]~5_combout\);

-- Location: LCCOMB_X56_Y18_N12
\wm8731_init|i2c_master|addr_reg[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|addr_reg[6]~4_combout\ = (\wm8731_init|i2c_master|phy_start_bit~0_combout\ & (!\wm8731_init|i2c_master|bit_count_reg[0]~5_combout\ & ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # 
-- (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|bit_count_reg[0]~5_combout\,
	combout => \wm8731_init|i2c_master|addr_reg[6]~4_combout\);

-- Location: LCFF_X55_Y20_N17
\wm8731_init|i2c_master|addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(5),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(5));

-- Location: LCFF_X55_Y20_N11
\wm8731_init|i2c_master|addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(4),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(4));

-- Location: LCCOMB_X55_Y20_N22
\wm8731_init|i2c_master|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~2_combout\ = (\wm8731_init|i2c_init|cmd_address_reg\(5) & (\wm8731_init|i2c_master|addr_reg\(5) & (\wm8731_init|i2c_init|cmd_address_reg\(4) $ (!\wm8731_init|i2c_master|addr_reg\(4))))) # 
-- (!\wm8731_init|i2c_init|cmd_address_reg\(5) & (!\wm8731_init|i2c_master|addr_reg\(5) & (\wm8731_init|i2c_init|cmd_address_reg\(4) $ (!\wm8731_init|i2c_master|addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_address_reg\(5),
	datab => \wm8731_init|i2c_init|cmd_address_reg\(4),
	datac => \wm8731_init|i2c_master|addr_reg\(5),
	datad => \wm8731_init|i2c_master|addr_reg\(4),
	combout => \wm8731_init|i2c_master|always0~2_combout\);

-- Location: LCCOMB_X54_Y20_N22
\wm8731_init|i2c_init|cur_address_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~4_combout\ = (\wm8731_init|i2c_init|init_data_reg\(3) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~4_combout\);

-- Location: LCFF_X54_Y20_N23
\wm8731_init|i2c_init|cur_address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~4_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(3));

-- Location: LCCOMB_X54_Y20_N8
\wm8731_init|i2c_init|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector27~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & (\wm8731_init|i2c_init|init_data_reg\(3))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- ((\wm8731_init|i2c_init|cur_address_reg\(3)))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|init_data_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(3),
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cur_address_reg\(3),
	combout => \wm8731_init|i2c_init|Selector27~0_combout\);

-- Location: LCCOMB_X55_Y20_N0
\wm8731_init|i2c_init|cmd_address_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_address_reg[3]~feeder_combout\ = \wm8731_init|i2c_init|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|Selector27~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_address_reg[3]~feeder_combout\);

-- Location: LCFF_X55_Y20_N1
\wm8731_init|i2c_init|cmd_address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_address_reg[3]~feeder_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(3));

-- Location: LCFF_X55_Y20_N27
\wm8731_init|i2c_master|addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(3),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(3));

-- Location: LCCOMB_X54_Y20_N10
\wm8731_init|i2c_init|cur_address_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~3_combout\ = (\wm8731_init|i2c_init|init_data_reg\(2) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(2),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~3_combout\);

-- Location: LCFF_X54_Y20_N11
\wm8731_init|i2c_init|cur_address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~3_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(2));

-- Location: LCCOMB_X54_Y20_N16
\wm8731_init|i2c_init|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector28~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & (\wm8731_init|i2c_init|init_data_reg\(2))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- ((\wm8731_init|i2c_init|cur_address_reg\(2)))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|init_data_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(2),
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cur_address_reg\(2),
	combout => \wm8731_init|i2c_init|Selector28~0_combout\);

-- Location: LCCOMB_X55_Y20_N20
\wm8731_init|i2c_init|cmd_address_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_address_reg[2]~feeder_combout\ = \wm8731_init|i2c_init|Selector28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|Selector28~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_address_reg[2]~feeder_combout\);

-- Location: LCFF_X55_Y20_N21
\wm8731_init|i2c_init|cmd_address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_address_reg[2]~feeder_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(2));

-- Location: LCFF_X55_Y20_N9
\wm8731_init|i2c_master|addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(2),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(2));

-- Location: LCCOMB_X55_Y20_N8
\wm8731_init|i2c_master|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~1_combout\ = (\wm8731_init|i2c_init|cmd_address_reg\(2) & (\wm8731_init|i2c_master|addr_reg\(2) & (\wm8731_init|i2c_master|addr_reg\(3) $ (!\wm8731_init|i2c_init|cmd_address_reg\(3))))) # 
-- (!\wm8731_init|i2c_init|cmd_address_reg\(2) & (!\wm8731_init|i2c_master|addr_reg\(2) & (\wm8731_init|i2c_master|addr_reg\(3) $ (!\wm8731_init|i2c_init|cmd_address_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_address_reg\(2),
	datab => \wm8731_init|i2c_master|addr_reg\(3),
	datac => \wm8731_init|i2c_master|addr_reg\(2),
	datad => \wm8731_init|i2c_init|cmd_address_reg\(3),
	combout => \wm8731_init|i2c_master|always0~1_combout\);

-- Location: LCCOMB_X54_Y20_N14
\wm8731_init|i2c_init|cur_address_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~7_combout\ = (\wm8731_init|i2c_init|init_data_reg\(6) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data_reg\(6),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~7_combout\);

-- Location: LCFF_X54_Y20_N15
\wm8731_init|i2c_init|cur_address_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~7_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(6));

-- Location: LCCOMB_X55_Y20_N14
\wm8731_init|i2c_init|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector24~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & (\wm8731_init|i2c_init|init_data_reg\(6))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- ((\wm8731_init|i2c_init|cur_address_reg\(6)))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|init_data_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(6),
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|cur_address_reg\(6),
	combout => \wm8731_init|i2c_init|Selector24~0_combout\);

-- Location: LCFF_X55_Y20_N15
\wm8731_init|i2c_init|cmd_address_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector24~0_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(6));

-- Location: LCFF_X55_Y20_N29
\wm8731_init|i2c_master|addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(6),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(6));

-- Location: LCCOMB_X56_Y20_N24
\wm8731_init|i2c_init|cmd_start_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~7_combout\ = (!\wm8731_init|i2c_init|Equal1~1_combout\ & (\wm8731_init|i2c_init|cmd_start_reg~regout\ & ((!\wm8731_init|i2c_master|cmd_ready_reg~regout\) # (!\wm8731_init|i2c_init|cmd_valid_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal1~1_combout\,
	datab => \wm8731_init|i2c_init|cmd_start_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~7_combout\);

-- Location: LCCOMB_X56_Y20_N20
\wm8731_init|i2c_init|cmd_start_next~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~13_combout\ = (\wm8731_init|i2c_init|init_data_reg\(8)) # ((\wm8731_init|i2c_init|init_data_reg\(7)) # ((!\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & \wm8731_init|i2c_init|cmd_start_next~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\,
	datab => \wm8731_init|i2c_init|init_data_reg\(8),
	datac => \wm8731_init|i2c_init|cmd_start_next~7_combout\,
	datad => \wm8731_init|i2c_init|init_data_reg\(7),
	combout => \wm8731_init|i2c_init|cmd_start_next~13_combout\);

-- Location: LCCOMB_X56_Y20_N22
\wm8731_init|i2c_init|cmd_start_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~8_combout\ = (\wm8731_init|i2c_init|Equal7~2_combout\) # ((\wm8731_init|i2c_init|cmd_start_next~7_combout\ & ((\wm8731_init|i2c_init|Equal5~0_combout\) # (\wm8731_init|i2c_init|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|Equal5~0_combout\,
	datab => \wm8731_init|i2c_init|Equal7~2_combout\,
	datac => \wm8731_init|i2c_init|cmd_start_next~7_combout\,
	datad => \wm8731_init|i2c_init|Equal4~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~8_combout\);

-- Location: LCCOMB_X56_Y20_N18
\wm8731_init|i2c_init|cmd_start_next~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~14_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\wm8731_init|i2c_init|cmd_start_next~13_combout\) # (\wm8731_init|i2c_init|cmd_start_next~8_combout\)))) # 
-- (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (\wm8731_init|i2c_init|state_reg.STATE_RUN~regout\ & (\wm8731_init|i2c_init|cmd_start_next~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_RUN~regout\,
	datac => \wm8731_init|i2c_init|cmd_start_next~13_combout\,
	datad => \wm8731_init|i2c_init|cmd_start_next~8_combout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~14_combout\);

-- Location: LCCOMB_X56_Y17_N14
\wm8731_init|i2c_init|cmd_start_next~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~10_combout\ = (\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & (\wm8731_init|i2c_init|Equal5~0_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\) # 
-- (\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\)))) # (!\wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|init_data.raddr_a[0]~3_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datac => \wm8731_init|i2c_init|Equal5~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_2~regout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~10_combout\);

-- Location: LCCOMB_X56_Y17_N18
\wm8731_init|i2c_init|cmd_start_next~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~11_combout\ = (\wm8731_init|i2c_init|cmd_start_next~15_combout\) # ((\wm8731_init|i2c_init|cmd_start_next~10_combout\) # ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\ & 
-- \wm8731_init|i2c_init|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_start_next~15_combout\,
	datab => \wm8731_init|i2c_init|state_reg.STATE_TABLE_1~regout\,
	datac => \wm8731_init|i2c_init|cmd_start_next~10_combout\,
	datad => \wm8731_init|i2c_init|Equal4~0_combout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~11_combout\);

-- Location: LCCOMB_X56_Y20_N10
\wm8731_init|i2c_init|cmd_start_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~6_combout\ = (\wm8731_init|i2c_init|cmd_start_reg~regout\ & ((!\wm8731_init|i2c_master|cmd_ready_reg~regout\) # (!\wm8731_init|i2c_init|cmd_valid_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|cmd_start_reg~regout\,
	datac => \wm8731_init|i2c_init|cmd_valid_reg~regout\,
	datad => \wm8731_init|i2c_master|cmd_ready_reg~regout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~6_combout\);

-- Location: LCCOMB_X56_Y20_N30
\wm8731_init|i2c_init|cmd_start_next~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cmd_start_next~12_combout\ = (\wm8731_init|i2c_init|cmd_start_next~14_combout\ & ((\wm8731_init|i2c_init|cmd_start_next~9_combout\) # ((\wm8731_init|i2c_init|cmd_start_next~6_combout\)))) # 
-- (!\wm8731_init|i2c_init|cmd_start_next~14_combout\ & (((\wm8731_init|i2c_init|cmd_start_next~11_combout\ & \wm8731_init|i2c_init|cmd_start_next~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cmd_start_next~9_combout\,
	datab => \wm8731_init|i2c_init|cmd_start_next~14_combout\,
	datac => \wm8731_init|i2c_init|cmd_start_next~11_combout\,
	datad => \wm8731_init|i2c_init|cmd_start_next~6_combout\,
	combout => \wm8731_init|i2c_init|cmd_start_next~12_combout\);

-- Location: LCFF_X56_Y20_N31
\wm8731_init|i2c_init|cmd_start_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cmd_start_next~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_start_reg~regout\);

-- Location: LCCOMB_X55_Y20_N28
\wm8731_init|i2c_master|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~3_combout\ = (!\wm8731_init|i2c_init|cmd_start_reg~regout\ & (\wm8731_init|i2c_init|cmd_address_reg\(6) $ (!\wm8731_init|i2c_master|addr_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|cmd_address_reg\(6),
	datac => \wm8731_init|i2c_master|addr_reg\(6),
	datad => \wm8731_init|i2c_init|cmd_start_reg~regout\,
	combout => \wm8731_init|i2c_master|always0~3_combout\);

-- Location: LCCOMB_X55_Y20_N4
\wm8731_init|i2c_master|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|always0~4_combout\ = (\wm8731_init|i2c_master|always0~0_combout\ & (\wm8731_init|i2c_master|always0~2_combout\ & (\wm8731_init|i2c_master|always0~1_combout\ & \wm8731_init|i2c_master|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|always0~0_combout\,
	datab => \wm8731_init|i2c_master|always0~2_combout\,
	datac => \wm8731_init|i2c_master|always0~1_combout\,
	datad => \wm8731_init|i2c_master|always0~3_combout\,
	combout => \wm8731_init|i2c_master|always0~4_combout\);

-- Location: LCCOMB_X55_Y18_N28
\wm8731_init|i2c_master|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector20~0_combout\ = (\wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\) # ((\wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\ & (\wm8731_init|i2c_master|phy_start_bit~0_combout\ & 
-- !\wm8731_init|i2c_master|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|state_reg.STATE_ACTIVE_WRITE~regout\,
	datab => \wm8731_init|i2c_master|phy_start_bit~0_combout\,
	datac => \wm8731_init|i2c_master|state_next.STATE_ADDRESS_1~0_combout\,
	datad => \wm8731_init|i2c_master|always0~4_combout\,
	combout => \wm8731_init|i2c_master|Selector20~0_combout\);

-- Location: LCCOMB_X54_Y18_N18
\wm8731_init|i2c_master|phy_state_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~5_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (!\wm8731_init|i2c_master|delay_scl_reg~regout\ & (!\wm8731_init|i2c_master|LessThan2~5_combout\ & 
-- !\wm8731_init|i2c_master|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datad => \wm8731_init|i2c_master|Selector20~0_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~5_combout\);

-- Location: LCCOMB_X53_Y18_N26
\wm8731_init|i2c_master|phy_state_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~6_combout\ = (\wm8731_init|i2c_master|Selector27~0_combout\ & ((\wm8731_init|i2c_master|phy_state_next~5_combout\) # ((!\wm8731_init|i2c_master|phy_state_next~2_combout\ & 
-- \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))) # (!\wm8731_init|i2c_master|Selector27~0_combout\ & (!\wm8731_init|i2c_master|phy_state_next~2_combout\ & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector27~0_combout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~5_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~6_combout\);

-- Location: LCFF_X53_Y18_N27
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_next~6_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\);

-- Location: LCCOMB_X51_Y17_N2
\wm8731_init|i2c_master|delay_reg[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[2]~26_combout\ = (!\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|LessThan2~5_combout\ & (\wm8731_init|i2c_master|Add2~4_combout\)) # (!\wm8731_init|i2c_master|LessThan2~5_combout\ & 
-- ((!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~4_combout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datad => \resetter|Equal0~5_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[2]~26_combout\);

-- Location: LCCOMB_X51_Y17_N30
\wm8731_init|i2c_master|delay_reg[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[2]~27_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg\(2))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & ((\wm8731_init|i2c_master|delay_reg[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(2),
	datad => \wm8731_init|i2c_master|delay_reg[2]~26_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[2]~27_combout\);

-- Location: LCFF_X51_Y17_N31
\wm8731_init|i2c_master|delay_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(2));

-- Location: LCCOMB_X50_Y17_N16
\wm8731_init|i2c_master|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~0_combout\ = \wm8731_init|i2c_master|delay_reg\(0) $ (VCC)
-- \wm8731_init|i2c_master|Add2~1\ = CARRY(\wm8731_init|i2c_master|delay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(0),
	datad => VCC,
	combout => \wm8731_init|i2c_master|Add2~0_combout\,
	cout => \wm8731_init|i2c_master|Add2~1\);

-- Location: LCCOMB_X55_Y18_N26
\wm8731_init|i2c_master|delay_reg[12]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~5_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & (((\wm8731_init|i2c_master|Selector26~0_combout\)))) # (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & 
-- (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & ((\wm8731_init|i2c_master|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datac => \wm8731_init|i2c_master|Selector26~0_combout\,
	datad => \wm8731_init|i2c_master|Selector20~0_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~5_combout\);

-- Location: LCCOMB_X55_Y18_N20
\wm8731_init|i2c_master|delay_reg[12]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~6_combout\ = (!\wm8731_init|i2c_master|delay_reg[12]~5_combout\ & (((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & \wm8731_init|i2c_master|phy_state_next~3_combout\)) # 
-- (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~5_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~3_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~6_combout\);

-- Location: LCCOMB_X54_Y18_N16
\wm8731_init|i2c_master|delay_reg[12]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~7_combout\ = (!\wm8731_init|i2c_master|LessThan2~5_combout\ & (((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # (\wm8731_init|i2c_master|delay_reg[12]~6_combout\)) # 
-- (!\wm8731_init|i2c_master|delay_reg[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~4_combout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datad => \wm8731_init|i2c_master|delay_reg[12]~6_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~7_combout\);

-- Location: LCCOMB_X51_Y17_N6
\wm8731_init|i2c_master|delay_reg[12]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~30_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & ((\wm8731_init|i2c_master|delay_scl_reg~regout\) # (\wm8731_init|i2c_master|delay_reg[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	datac => \wm8731_init|i2c_master|delay_reg[12]~7_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~30_combout\);

-- Location: LCCOMB_X51_Y17_N28
\wm8731_init|i2c_master|delay_reg[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[0]~8_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(0))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ 
-- & (\wm8731_init|i2c_master|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~0_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(0),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[0]~8_combout\);

-- Location: LCFF_X51_Y17_N29
\wm8731_init|i2c_master|delay_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(0));

-- Location: LCCOMB_X50_Y17_N18
\wm8731_init|i2c_master|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~2_combout\ = (\wm8731_init|i2c_master|delay_reg\(1) & (\wm8731_init|i2c_master|Add2~1\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(1) & (!\wm8731_init|i2c_master|Add2~1\))
-- \wm8731_init|i2c_master|Add2~3\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(1) & !\wm8731_init|i2c_master|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(1),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~1\,
	combout => \wm8731_init|i2c_master|Add2~2_combout\,
	cout => \wm8731_init|i2c_master|Add2~3\);

-- Location: LCCOMB_X51_Y17_N24
\wm8731_init|i2c_master|delay_reg[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[1]~28_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(1))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ 
-- & (\wm8731_init|i2c_master|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~2_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(1),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[1]~28_combout\);

-- Location: LCFF_X51_Y17_N25
\wm8731_init|i2c_master|delay_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(1));

-- Location: LCCOMB_X50_Y17_N22
\wm8731_init|i2c_master|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~6_combout\ = (\wm8731_init|i2c_master|delay_reg\(3) & (\wm8731_init|i2c_master|Add2~5\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(3) & (!\wm8731_init|i2c_master|Add2~5\))
-- \wm8731_init|i2c_master|Add2~7\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(3) & !\wm8731_init|i2c_master|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(3),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~5\,
	combout => \wm8731_init|i2c_master|Add2~6_combout\,
	cout => \wm8731_init|i2c_master|Add2~7\);

-- Location: LCCOMB_X50_Y17_N6
\wm8731_init|i2c_master|phy_state_reg~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~33_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~33_combout\);

-- Location: LCCOMB_X50_Y17_N10
\wm8731_init|i2c_master|delay_reg[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[3]~24_combout\ = (\wm8731_init|i2c_master|LessThan2~5_combout\ & ((\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|phy_state_reg~33_combout\))) # (!\resetter|Equal0~5_combout\ & 
-- (\wm8731_init|i2c_master|Add2~6_combout\)))) # (!\wm8731_init|i2c_master|LessThan2~5_combout\ & (((\wm8731_init|i2c_master|phy_state_reg~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datab => \wm8731_init|i2c_master|Add2~6_combout\,
	datac => \resetter|Equal0~5_combout\,
	datad => \wm8731_init|i2c_master|phy_state_reg~33_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[3]~24_combout\);

-- Location: LCCOMB_X50_Y17_N14
\wm8731_init|i2c_master|delay_reg[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[3]~25_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg\(3))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & ((\wm8731_init|i2c_master|delay_reg[3]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(3),
	datad => \wm8731_init|i2c_master|delay_reg[3]~24_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[3]~25_combout\);

-- Location: LCFF_X50_Y17_N15
\wm8731_init|i2c_master|delay_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(3));

-- Location: LCCOMB_X50_Y17_N8
\wm8731_init|i2c_master|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~4_combout\ = (\wm8731_init|i2c_master|delay_reg\(4)) # ((\wm8731_init|i2c_master|delay_reg\(2)) # ((\wm8731_init|i2c_master|delay_reg\(3)) # (\wm8731_init|i2c_master|delay_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(4),
	datab => \wm8731_init|i2c_master|delay_reg\(2),
	datac => \wm8731_init|i2c_master|delay_reg\(3),
	datad => \wm8731_init|i2c_master|delay_reg\(1),
	combout => \wm8731_init|i2c_master|LessThan2~4_combout\);

-- Location: LCCOMB_X51_Y17_N20
\wm8731_init|i2c_master|delay_reg[12]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[12]~29_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_master|LessThan2~5_combout\ & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[12]~29_combout\);

-- Location: LCCOMB_X51_Y17_N22
\wm8731_init|i2c_master|delay_reg[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[7]~18_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(7))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|Add2~14_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~14_combout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(7),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[7]~18_combout\);

-- Location: LCFF_X51_Y17_N23
\wm8731_init|i2c_master|delay_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(7));

-- Location: LCCOMB_X50_Y17_N24
\wm8731_init|i2c_master|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~8_combout\ = (\wm8731_init|i2c_master|delay_reg\(4) & ((GND) # (!\wm8731_init|i2c_master|Add2~7\))) # (!\wm8731_init|i2c_master|delay_reg\(4) & (\wm8731_init|i2c_master|Add2~7\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~9\ = CARRY((\wm8731_init|i2c_master|delay_reg\(4)) # (!\wm8731_init|i2c_master|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(4),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~7\,
	combout => \wm8731_init|i2c_master|Add2~8_combout\,
	cout => \wm8731_init|i2c_master|Add2~9\);

-- Location: LCCOMB_X49_Y17_N24
\wm8731_init|i2c_master|delay_reg[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[4]~22_combout\ = (!\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|LessThan2~5_combout\ & ((\wm8731_init|i2c_master|Add2~8_combout\))) # (!\wm8731_init|i2c_master|LessThan2~5_combout\ & 
-- (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_WRITE_BIT_1~regout\,
	datab => \wm8731_init|i2c_master|Add2~8_combout\,
	datac => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datad => \resetter|Equal0~5_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[4]~22_combout\);

-- Location: LCCOMB_X50_Y17_N0
\wm8731_init|i2c_master|delay_reg[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[4]~23_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg\(4))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & ((\wm8731_init|i2c_master|delay_reg[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(4),
	datad => \wm8731_init|i2c_master|delay_reg[4]~22_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[4]~23_combout\);

-- Location: LCFF_X50_Y17_N1
\wm8731_init|i2c_master|delay_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(4));

-- Location: LCCOMB_X50_Y17_N26
\wm8731_init|i2c_master|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~10_combout\ = (\wm8731_init|i2c_master|delay_reg\(5) & (\wm8731_init|i2c_master|Add2~9\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(5) & (!\wm8731_init|i2c_master|Add2~9\))
-- \wm8731_init|i2c_master|Add2~11\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(5) & !\wm8731_init|i2c_master|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(5),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~9\,
	combout => \wm8731_init|i2c_master|Add2~10_combout\,
	cout => \wm8731_init|i2c_master|Add2~11\);

-- Location: LCCOMB_X50_Y17_N12
\wm8731_init|i2c_master|delay_reg[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[5]~20_combout\ = (\wm8731_init|i2c_master|LessThan2~5_combout\ & ((\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|phy_state_reg~33_combout\))) # (!\resetter|Equal0~5_combout\ & 
-- (\wm8731_init|i2c_master|Add2~10_combout\)))) # (!\wm8731_init|i2c_master|LessThan2~5_combout\ & (((\wm8731_init|i2c_master|phy_state_reg~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datab => \wm8731_init|i2c_master|Add2~10_combout\,
	datac => \resetter|Equal0~5_combout\,
	datad => \wm8731_init|i2c_master|phy_state_reg~33_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[5]~20_combout\);

-- Location: LCCOMB_X50_Y17_N4
\wm8731_init|i2c_master|delay_reg[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[5]~21_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg\(5))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & ((\wm8731_init|i2c_master|delay_reg[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(5),
	datad => \wm8731_init|i2c_master|delay_reg[5]~20_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[5]~21_combout\);

-- Location: LCFF_X50_Y17_N5
\wm8731_init|i2c_master|delay_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(5));

-- Location: LCCOMB_X50_Y16_N0
\wm8731_init|i2c_master|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~16_combout\ = (\wm8731_init|i2c_master|delay_reg\(8) & ((GND) # (!\wm8731_init|i2c_master|Add2~15\))) # (!\wm8731_init|i2c_master|delay_reg\(8) & (\wm8731_init|i2c_master|Add2~15\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~17\ = CARRY((\wm8731_init|i2c_master|delay_reg\(8)) # (!\wm8731_init|i2c_master|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(8),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~15\,
	combout => \wm8731_init|i2c_master|Add2~16_combout\,
	cout => \wm8731_init|i2c_master|Add2~17\);

-- Location: LCCOMB_X50_Y16_N4
\wm8731_init|i2c_master|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~20_combout\ = (\wm8731_init|i2c_master|delay_reg\(10) & ((GND) # (!\wm8731_init|i2c_master|Add2~19\))) # (!\wm8731_init|i2c_master|delay_reg\(10) & (\wm8731_init|i2c_master|Add2~19\ $ (GND)))
-- \wm8731_init|i2c_master|Add2~21\ = CARRY((\wm8731_init|i2c_master|delay_reg\(10)) # (!\wm8731_init|i2c_master|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(10),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~19\,
	combout => \wm8731_init|i2c_master|Add2~20_combout\,
	cout => \wm8731_init|i2c_master|Add2~21\);

-- Location: LCCOMB_X51_Y17_N10
\wm8731_init|i2c_master|delay_reg[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[10]~15_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(10))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ & (\wm8731_init|i2c_master|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~20_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(10),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[10]~15_combout\);

-- Location: LCFF_X51_Y17_N11
\wm8731_init|i2c_master|delay_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(10));

-- Location: LCCOMB_X50_Y16_N6
\wm8731_init|i2c_master|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~22_combout\ = (\wm8731_init|i2c_master|delay_reg\(11) & (\wm8731_init|i2c_master|Add2~21\ & VCC)) # (!\wm8731_init|i2c_master|delay_reg\(11) & (!\wm8731_init|i2c_master|Add2~21\))
-- \wm8731_init|i2c_master|Add2~23\ = CARRY((!\wm8731_init|i2c_master|delay_reg\(11) & !\wm8731_init|i2c_master|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|delay_reg\(11),
	datad => VCC,
	cin => \wm8731_init|i2c_master|Add2~21\,
	combout => \wm8731_init|i2c_master|Add2~22_combout\,
	cout => \wm8731_init|i2c_master|Add2~23\);

-- Location: LCCOMB_X51_Y17_N16
\wm8731_init|i2c_master|delay_reg[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[11]~14_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(11))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ & (\wm8731_init|i2c_master|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~22_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(11),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[11]~14_combout\);

-- Location: LCFF_X51_Y17_N17
\wm8731_init|i2c_master|delay_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(11));

-- Location: LCCOMB_X50_Y18_N12
\wm8731_init|i2c_master|delay_reg[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[9]~16_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(9))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|Add2~18_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~18_combout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(9),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[9]~16_combout\);

-- Location: LCFF_X50_Y18_N13
\wm8731_init|i2c_master|delay_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(9));

-- Location: LCCOMB_X50_Y16_N24
\wm8731_init|i2c_master|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~1_combout\ = (\wm8731_init|i2c_master|delay_reg\(9)) # (\wm8731_init|i2c_master|delay_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_master|delay_reg\(9),
	datad => \wm8731_init|i2c_master|delay_reg\(10),
	combout => \wm8731_init|i2c_master|LessThan2~1_combout\);

-- Location: LCCOMB_X51_Y17_N8
\wm8731_init|i2c_master|delay_reg[13]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[13]~12_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(13))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|Add2~26_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~26_combout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(13),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[13]~12_combout\);

-- Location: LCFF_X51_Y17_N9
\wm8731_init|i2c_master|delay_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(13));

-- Location: LCCOMB_X51_Y17_N0
\wm8731_init|i2c_master|delay_reg[15]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[15]~10_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(15))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|Add2~30_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add2~30_combout\,
	datab => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(15),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[15]~10_combout\);

-- Location: LCFF_X51_Y17_N1
\wm8731_init|i2c_master|delay_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(15));

-- Location: LCCOMB_X50_Y16_N16
\wm8731_init|i2c_master|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add2~32_combout\ = \wm8731_init|i2c_master|delay_reg\(16) $ (\wm8731_init|i2c_master|Add2~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(16),
	cin => \wm8731_init|i2c_master|Add2~31\,
	combout => \wm8731_init|i2c_master|Add2~32_combout\);

-- Location: LCCOMB_X51_Y17_N14
\wm8731_init|i2c_master|delay_reg[16]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[16]~9_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(16))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & 
-- (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ & (\wm8731_init|i2c_master|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~32_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(16),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[16]~9_combout\);

-- Location: LCFF_X51_Y17_N15
\wm8731_init|i2c_master|delay_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(16));

-- Location: LCCOMB_X50_Y16_N22
\wm8731_init|i2c_master|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~0_combout\ = (\wm8731_init|i2c_master|delay_reg\(14)) # ((\wm8731_init|i2c_master|delay_reg\(13)) # ((\wm8731_init|i2c_master|delay_reg\(16)) # (\wm8731_init|i2c_master|delay_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(14),
	datab => \wm8731_init|i2c_master|delay_reg\(13),
	datac => \wm8731_init|i2c_master|delay_reg\(16),
	datad => \wm8731_init|i2c_master|delay_reg\(15),
	combout => \wm8731_init|i2c_master|LessThan2~0_combout\);

-- Location: LCCOMB_X50_Y16_N26
\wm8731_init|i2c_master|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~2_combout\ = (\wm8731_init|i2c_master|delay_reg\(12)) # ((\wm8731_init|i2c_master|delay_reg\(11)) # ((\wm8731_init|i2c_master|LessThan2~1_combout\) # (\wm8731_init|i2c_master|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(12),
	datab => \wm8731_init|i2c_master|delay_reg\(11),
	datac => \wm8731_init|i2c_master|LessThan2~1_combout\,
	datad => \wm8731_init|i2c_master|LessThan2~0_combout\,
	combout => \wm8731_init|i2c_master|LessThan2~2_combout\);

-- Location: LCCOMB_X51_Y17_N12
\wm8731_init|i2c_master|delay_reg[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|delay_reg[8]~17_combout\ = (\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (((\wm8731_init|i2c_master|delay_reg\(8))))) # (!\wm8731_init|i2c_master|delay_reg[12]~30_combout\ & (\wm8731_init|i2c_master|delay_reg[12]~29_combout\ 
-- & (\wm8731_init|i2c_master|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~29_combout\,
	datab => \wm8731_init|i2c_master|Add2~16_combout\,
	datac => \wm8731_init|i2c_master|delay_reg\(8),
	datad => \wm8731_init|i2c_master|delay_reg[12]~30_combout\,
	combout => \wm8731_init|i2c_master|delay_reg[8]~17_combout\);

-- Location: LCFF_X51_Y17_N13
\wm8731_init|i2c_master|delay_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|delay_reg[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|delay_reg\(8));

-- Location: LCCOMB_X50_Y17_N2
\wm8731_init|i2c_master|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~3_combout\ = (\wm8731_init|i2c_master|delay_reg\(6)) # ((\wm8731_init|i2c_master|delay_reg\(5)) # ((\wm8731_init|i2c_master|delay_reg\(8)) # (\wm8731_init|i2c_master|delay_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(6),
	datab => \wm8731_init|i2c_master|delay_reg\(5),
	datac => \wm8731_init|i2c_master|delay_reg\(8),
	datad => \wm8731_init|i2c_master|delay_reg\(7),
	combout => \wm8731_init|i2c_master|LessThan2~3_combout\);

-- Location: LCCOMB_X50_Y16_N28
\wm8731_init|i2c_master|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|LessThan2~5_combout\ = (\wm8731_init|i2c_master|delay_reg\(0)) # ((\wm8731_init|i2c_master|LessThan2~4_combout\) # ((\wm8731_init|i2c_master|LessThan2~2_combout\) # (\wm8731_init|i2c_master|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg\(0),
	datab => \wm8731_init|i2c_master|LessThan2~4_combout\,
	datac => \wm8731_init|i2c_master|LessThan2~2_combout\,
	datad => \wm8731_init|i2c_master|LessThan2~3_combout\,
	combout => \wm8731_init|i2c_master|LessThan2~5_combout\);

-- Location: LCCOMB_X54_Y18_N22
\wm8731_init|i2c_master|phy_state_reg~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~41_combout\ = (((!\wm8731_init|i2c_master|LessThan2~5_combout\ & !\wm8731_init|i2c_master|delay_scl_reg~regout\)) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \wm8731_init|i2c_master|LessThan2~5_combout\,
	datac => \resetter|Equal0~4_combout\,
	datad => \wm8731_init|i2c_master|delay_scl_reg~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~41_combout\);

-- Location: LCFF_X54_Y18_N29
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~30_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\);

-- Location: LCCOMB_X54_Y18_N30
\wm8731_init|i2c_master|phy_state_reg~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~34_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\ & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~34_combout\);

-- Location: LCFF_X54_Y18_N31
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~34_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\);

-- Location: LCCOMB_X53_Y18_N12
\wm8731_init|i2c_master|phy_state_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~7_combout\ = (\wm8731_init|i2c_master|Selector37~1_combout\ & ((\wm8731_init|i2c_master|phy_state_next~5_combout\) # ((!\wm8731_init|i2c_master|phy_state_next~2_combout\ & 
-- \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)))) # (!\wm8731_init|i2c_master|Selector37~1_combout\ & (!\wm8731_init|i2c_master|phy_state_next~2_combout\ & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector37~1_combout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	datad => \wm8731_init|i2c_master|phy_state_next~5_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~7_combout\);

-- Location: LCFF_X53_Y18_N13
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_next~7_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\);

-- Location: LCCOMB_X57_Y18_N26
\wm8731_init|i2c_master|phy_state_reg~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~35_combout\ = (\resetter|Equal0~4_combout\ & (\resetter|reset_count\(16) & \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_1~regout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~35_combout\);

-- Location: LCFF_X57_Y18_N27
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~35_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\);

-- Location: LCCOMB_X54_Y18_N4
\wm8731_init|i2c_master|scl_o_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_o_reg~2_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\) # ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\) # 
-- ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\) # (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datad => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_READ_BIT_2~regout\,
	combout => \wm8731_init|i2c_master|scl_o_reg~2_combout\);

-- Location: LCCOMB_X54_Y18_N8
\wm8731_init|i2c_master|scl_o_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_o_reg~3_combout\ = ((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\) # ((\wm8731_init|i2c_master|scl_o_reg~2_combout\) # (!\wm8731_init|i2c_master|phy_state_next~2_combout\))) # 
-- (!\wm8731_init|i2c_master|delay_reg[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|delay_reg[12]~4_combout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_3~regout\,
	datac => \wm8731_init|i2c_master|scl_o_reg~2_combout\,
	datad => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	combout => \wm8731_init|i2c_master|scl_o_reg~3_combout\);

-- Location: LCCOMB_X53_Y18_N10
\wm8731_init|i2c_master|scl_o_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_o_reg~1_combout\ = (\resetter|Equal0~5_combout\) # ((\wm8731_init|i2c_master|phy_state_next~2_combout\ & ((!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\) # (!\wm8731_init|i2c_master|scl_o_reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|scl_o_reg~0_combout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datad => \resetter|Equal0~5_combout\,
	combout => \wm8731_init|i2c_master|scl_o_reg~1_combout\);

-- Location: LCCOMB_X53_Y18_N6
\wm8731_init|i2c_master|scl_o_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|scl_o_reg~4_combout\ = (!\wm8731_init|i2c_master|scl_o_reg~1_combout\ & ((\wm8731_init|i2c_master|scl_o_reg~regout\) # (!\wm8731_init|i2c_master|scl_o_reg~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|scl_o_reg~3_combout\,
	datac => \wm8731_init|i2c_master|scl_o_reg~regout\,
	datad => \wm8731_init|i2c_master|scl_o_reg~1_combout\,
	combout => \wm8731_init|i2c_master|scl_o_reg~4_combout\);

-- Location: LCFF_X53_Y18_N7
\wm8731_init|i2c_master|scl_o_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|scl_o_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|scl_o_reg~regout\);

-- Location: LCCOMB_X53_Y18_N0
\wm8731_init|i2c_master|phy_state_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_next~4_combout\ = (\wm8731_init|i2c_master|phy_state_next~2_combout\ & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & ((\wm8731_init|i2c_master|Selector20~0_combout\)))) # 
-- (!\wm8731_init|i2c_master|phy_state_next~2_combout\ & (((\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	datad => \wm8731_init|i2c_master|Selector20~0_combout\,
	combout => \wm8731_init|i2c_master|phy_state_next~4_combout\);

-- Location: LCFF_X53_Y18_N1
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_next~4_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\);

-- Location: LCCOMB_X54_Y18_N6
\wm8731_init|i2c_master|phy_state_reg~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|phy_state_reg~32_combout\ = (\resetter|reset_count\(16) & (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\ & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_1~regout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_master|phy_state_reg~32_combout\);

-- Location: LCFF_X54_Y18_N7
\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|phy_state_reg~32_combout\,
	ena => \wm8731_init|i2c_master|phy_state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\);

-- Location: LCCOMB_X53_Y20_N26
\wm8731_init|i2c_master|Selector38~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~7_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\) # ((\wm8731_init|i2c_master|Selector38~6_combout\ & (!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\ & 
-- !\wm8731_init|i2c_master|sda_o_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector38~6_combout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_REPEATED_START_2~regout\,
	datac => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_STOP_2~regout\,
	datad => \wm8731_init|i2c_master|sda_o_reg~regout\,
	combout => \wm8731_init|i2c_master|Selector38~7_combout\);

-- Location: LCCOMB_X53_Y20_N0
\wm8731_init|i2c_master|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector27~0_combout\ = (!\wm8731_init|i2c_master|Selector37~0_combout\ & ((\wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\) # (\wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|Selector37~0_combout\,
	datac => \wm8731_init|i2c_master|state_reg.STATE_ADDRESS_1~regout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \wm8731_init|i2c_master|Selector27~0_combout\);

-- Location: LCFF_X57_Y20_N17
\wm8731_init|i2c_init|data_out_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|init_data_reg\(6),
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(6));

-- Location: LCCOMB_X57_Y20_N16
\wm8731_init|i2c_master|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector30~0_combout\ = (\wm8731_init|i2c_init|data_out_reg\(6) & \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_init|i2c_init|data_out_reg\(6),
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \wm8731_init|i2c_master|Selector30~0_combout\);

-- Location: LCFF_X57_Y20_N25
\wm8731_init|i2c_master|data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_master|Selector30~0_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(6));

-- Location: LCFF_X57_Y20_N23
\wm8731_init|i2c_init|data_out_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|init_data_reg\(7),
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(7));

-- Location: LCCOMB_X57_Y20_N30
\wm8731_init|i2c_master|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector29~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_reg\(7),
	combout => \wm8731_init|i2c_master|Selector29~0_combout\);

-- Location: LCFF_X57_Y20_N31
\wm8731_init|i2c_master|data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector29~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(7));

-- Location: LCCOMB_X57_Y20_N24
\wm8731_init|i2c_master|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux1~0_combout\ = (\wm8731_init|i2c_master|bit_count_reg\(0) & (((\wm8731_init|i2c_master|data_reg\(6))) # (!\wm8731_init|i2c_master|bit_count_reg\(1)))) # (!\wm8731_init|i2c_master|bit_count_reg\(0) & 
-- (!\wm8731_init|i2c_master|bit_count_reg\(1) & ((\wm8731_init|i2c_master|data_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(0),
	datab => \wm8731_init|i2c_master|bit_count_reg\(1),
	datac => \wm8731_init|i2c_master|data_reg\(6),
	datad => \wm8731_init|i2c_master|data_reg\(7),
	combout => \wm8731_init|i2c_master|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y20_N10
\wm8731_init|i2c_init|data_out_reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_reg[4]~feeder_combout\ = \wm8731_init|i2c_init|init_data_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|init_data_reg\(4),
	combout => \wm8731_init|i2c_init|data_out_reg[4]~feeder_combout\);

-- Location: LCFF_X57_Y20_N11
\wm8731_init|i2c_init|data_out_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_out_reg[4]~feeder_combout\,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(4));

-- Location: LCCOMB_X57_Y20_N26
\wm8731_init|i2c_master|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector32~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_reg\(4),
	combout => \wm8731_init|i2c_master|Selector32~0_combout\);

-- Location: LCFF_X57_Y20_N27
\wm8731_init|i2c_master|data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector32~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(4));

-- Location: LCCOMB_X58_Y20_N24
\wm8731_init|i2c_init|data_out_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_reg[5]~feeder_combout\ = \wm8731_init|i2c_init|init_data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|init_data_reg\(5),
	combout => \wm8731_init|i2c_init|data_out_reg[5]~feeder_combout\);

-- Location: LCFF_X58_Y20_N25
\wm8731_init|i2c_init|data_out_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_out_reg[5]~feeder_combout\,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(5));

-- Location: LCCOMB_X57_Y20_N4
\wm8731_init|i2c_master|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector31~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_reg\(5),
	combout => \wm8731_init|i2c_master|Selector31~0_combout\);

-- Location: LCFF_X57_Y20_N5
\wm8731_init|i2c_master|data_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector31~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(5));

-- Location: LCCOMB_X56_Y20_N4
\wm8731_init|i2c_master|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux1~1_combout\ = (\wm8731_init|i2c_master|Add1~0_combout\ & ((\wm8731_init|i2c_master|Mux1~0_combout\ & (\wm8731_init|i2c_master|data_reg\(4))) # (!\wm8731_init|i2c_master|Mux1~0_combout\ & 
-- ((\wm8731_init|i2c_master|data_reg\(5)))))) # (!\wm8731_init|i2c_master|Add1~0_combout\ & (\wm8731_init|i2c_master|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add1~0_combout\,
	datab => \wm8731_init|i2c_master|Mux1~0_combout\,
	datac => \wm8731_init|i2c_master|data_reg\(4),
	datad => \wm8731_init|i2c_master|data_reg\(5),
	combout => \wm8731_init|i2c_master|Mux1~1_combout\);

-- Location: LCCOMB_X57_Y20_N28
\wm8731_init|i2c_master|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector35~0_combout\ = (\wm8731_init|i2c_init|data_out_reg\(1) & \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|data_out_reg\(1),
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	combout => \wm8731_init|i2c_master|Selector35~0_combout\);

-- Location: LCFF_X57_Y20_N29
\wm8731_init|i2c_master|data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector35~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(1));

-- Location: LCCOMB_X56_Y20_N6
\wm8731_init|i2c_master|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Add1~0_combout\ = \wm8731_init|i2c_master|bit_count_reg\(1) $ (\wm8731_init|i2c_master|bit_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|bit_count_reg\(1),
	datad => \wm8731_init|i2c_master|bit_count_reg\(0),
	combout => \wm8731_init|i2c_master|Add1~0_combout\);

-- Location: LCCOMB_X57_Y20_N0
\wm8731_init|i2c_init|data_out_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|data_out_reg[2]~feeder_combout\ = \wm8731_init|i2c_init|init_data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_init|i2c_init|init_data_reg\(2),
	combout => \wm8731_init|i2c_init|data_out_reg[2]~feeder_combout\);

-- Location: LCFF_X57_Y20_N1
\wm8731_init|i2c_init|data_out_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|data_out_reg[2]~feeder_combout\,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(2));

-- Location: LCCOMB_X57_Y20_N14
\wm8731_init|i2c_master|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector34~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datad => \wm8731_init|i2c_init|data_out_reg\(2),
	combout => \wm8731_init|i2c_master|Selector34~0_combout\);

-- Location: LCFF_X57_Y20_N13
\wm8731_init|i2c_master|data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_master|Selector34~0_combout\,
	sload => VCC,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(2));

-- Location: LCFF_X57_Y20_N15
\wm8731_init|i2c_init|data_out_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|init_data_reg\(3),
	sload => VCC,
	ena => \wm8731_init|i2c_init|data_out_valid_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|data_out_reg\(3));

-- Location: LCCOMB_X57_Y20_N6
\wm8731_init|i2c_master|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector33~0_combout\ = (\wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\ & \wm8731_init|i2c_init|data_out_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|state_reg.STATE_WRITE_1~regout\,
	datac => \wm8731_init|i2c_init|data_out_reg\(3),
	combout => \wm8731_init|i2c_master|Selector33~0_combout\);

-- Location: LCFF_X57_Y20_N7
\wm8731_init|i2c_master|data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|Selector33~0_combout\,
	ena => \wm8731_init|i2c_master|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|data_reg\(3));

-- Location: LCCOMB_X57_Y20_N12
\wm8731_init|i2c_master|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux1~2_combout\ = (\wm8731_init|i2c_master|bit_count_reg\(0) & (((\wm8731_init|i2c_master|data_reg\(2))) # (!\wm8731_init|i2c_master|bit_count_reg\(1)))) # (!\wm8731_init|i2c_master|bit_count_reg\(0) & 
-- (!\wm8731_init|i2c_master|bit_count_reg\(1) & ((\wm8731_init|i2c_master|data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|bit_count_reg\(0),
	datab => \wm8731_init|i2c_master|bit_count_reg\(1),
	datac => \wm8731_init|i2c_master|data_reg\(2),
	datad => \wm8731_init|i2c_master|data_reg\(3),
	combout => \wm8731_init|i2c_master|Mux1~2_combout\);

-- Location: LCCOMB_X57_Y20_N8
\wm8731_init|i2c_master|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux1~3_combout\ = (\wm8731_init|i2c_master|Add1~0_combout\ & ((\wm8731_init|i2c_master|Mux1~2_combout\ & (\wm8731_init|i2c_master|data_reg\(0))) # (!\wm8731_init|i2c_master|Mux1~2_combout\ & 
-- ((\wm8731_init|i2c_master|data_reg\(1)))))) # (!\wm8731_init|i2c_master|Add1~0_combout\ & (((\wm8731_init|i2c_master|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|data_reg\(0),
	datab => \wm8731_init|i2c_master|data_reg\(1),
	datac => \wm8731_init|i2c_master|Add1~0_combout\,
	datad => \wm8731_init|i2c_master|Mux1~2_combout\,
	combout => \wm8731_init|i2c_master|Mux1~3_combout\);

-- Location: LCCOMB_X53_Y20_N4
\wm8731_init|i2c_master|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~0_combout\ = (\wm8731_init|i2c_master|Add1~1_combout\ & ((\wm8731_init|i2c_master|bit_count_reg\(2) & (\wm8731_init|i2c_master|Mux1~1_combout\)) # (!\wm8731_init|i2c_master|bit_count_reg\(2) & 
-- ((\wm8731_init|i2c_master|Mux1~3_combout\))))) # (!\wm8731_init|i2c_master|Add1~1_combout\ & ((\wm8731_init|i2c_master|bit_count_reg\(2) & ((\wm8731_init|i2c_master|Mux1~3_combout\))) # (!\wm8731_init|i2c_master|bit_count_reg\(2) & 
-- (\wm8731_init|i2c_master|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Add1~1_combout\,
	datab => \wm8731_init|i2c_master|bit_count_reg\(2),
	datac => \wm8731_init|i2c_master|Mux1~1_combout\,
	datad => \wm8731_init|i2c_master|Mux1~3_combout\,
	combout => \wm8731_init|i2c_master|Selector38~0_combout\);

-- Location: LCCOMB_X53_Y20_N8
\wm8731_init|i2c_master|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~1_combout\ = (!\wm8731_init|i2c_master|Selector37~0_combout\ & (\wm8731_init|i2c_master|Selector38~0_combout\ & \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_master|Selector37~0_combout\,
	datac => \wm8731_init|i2c_master|Selector38~0_combout\,
	datad => \wm8731_init|i2c_master|state_reg.STATE_WRITE_2~regout\,
	combout => \wm8731_init|i2c_master|Selector38~1_combout\);

-- Location: LCCOMB_X54_Y20_N4
\wm8731_init|i2c_init|cur_address_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|cur_address_reg~0_combout\ = (\wm8731_init|i2c_init|init_data_reg\(1) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_init|i2c_init|init_data_reg\(1),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \wm8731_init|i2c_init|cur_address_reg~0_combout\);

-- Location: LCFF_X54_Y20_N5
\wm8731_init|i2c_init|cur_address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|cur_address_reg~0_combout\,
	ena => \wm8731_init|i2c_init|cur_address_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cur_address_reg\(1));

-- Location: LCCOMB_X55_Y20_N2
\wm8731_init|i2c_init|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector29~0_combout\ = (\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|Equal0~0_combout\ & ((\wm8731_init|i2c_init|init_data_reg\(1)))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & 
-- (\wm8731_init|i2c_init|cur_address_reg\(1))))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & (((\wm8731_init|i2c_init|init_data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	datab => \wm8731_init|i2c_init|cur_address_reg\(1),
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|init_data_reg\(1),
	combout => \wm8731_init|i2c_init|Selector29~0_combout\);

-- Location: LCFF_X55_Y20_N3
\wm8731_init|i2c_init|cmd_address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector29~0_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(1));

-- Location: LCFF_X55_Y20_N25
\wm8731_init|i2c_master|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(1),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(1));

-- Location: LCCOMB_X55_Y20_N30
\wm8731_init|i2c_init|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_init|Selector30~0_combout\ = (\wm8731_init|i2c_init|Equal0~0_combout\ & (((\wm8731_init|i2c_init|init_data_reg\(0))))) # (!\wm8731_init|i2c_init|Equal0~0_combout\ & ((\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & 
-- (\wm8731_init|i2c_init|cur_address_reg\(0))) # (!\wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\ & ((\wm8731_init|i2c_init|init_data_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_init|cur_address_reg\(0),
	datab => \wm8731_init|i2c_init|init_data_reg\(0),
	datac => \wm8731_init|i2c_init|Equal0~0_combout\,
	datad => \wm8731_init|i2c_init|state_reg.STATE_TABLE_3~regout\,
	combout => \wm8731_init|i2c_init|Selector30~0_combout\);

-- Location: LCFF_X55_Y20_N31
\wm8731_init|i2c_init|cmd_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_init|Selector30~0_combout\,
	ena => \wm8731_init|i2c_init|cmd_address_reg[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_init|cmd_address_reg\(0));

-- Location: LCFF_X55_Y20_N13
\wm8731_init|i2c_master|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	sdata => \wm8731_init|i2c_init|cmd_address_reg\(0),
	sload => VCC,
	ena => \wm8731_init|i2c_master|addr_reg[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|addr_reg\(0));

-- Location: LCCOMB_X55_Y20_N12
\wm8731_init|i2c_master|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux0~3_combout\ = (\wm8731_init|i2c_master|Mux0~2_combout\ & ((\wm8731_init|i2c_master|addr_reg\(1)) # ((!\wm8731_init|i2c_master|bit_count_reg\(1))))) # (!\wm8731_init|i2c_master|Mux0~2_combout\ & 
-- (((\wm8731_init|i2c_master|addr_reg\(0) & \wm8731_init|i2c_master|bit_count_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Mux0~2_combout\,
	datab => \wm8731_init|i2c_master|addr_reg\(1),
	datac => \wm8731_init|i2c_master|addr_reg\(0),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Mux0~3_combout\);

-- Location: LCCOMB_X54_Y20_N28
\wm8731_init|i2c_master|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Mux0~4_combout\ = (\wm8731_init|i2c_master|Mux0~1_combout\ & ((\wm8731_init|i2c_master|Mux0~3_combout\) # (\wm8731_init|i2c_master|bit_count_reg\(2) $ (!\wm8731_init|i2c_master|bit_count_reg\(1))))) # 
-- (!\wm8731_init|i2c_master|Mux0~1_combout\ & (\wm8731_init|i2c_master|Mux0~3_combout\ & (\wm8731_init|i2c_master|bit_count_reg\(2) $ (\wm8731_init|i2c_master|bit_count_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Mux0~1_combout\,
	datab => \wm8731_init|i2c_master|Mux0~3_combout\,
	datac => \wm8731_init|i2c_master|bit_count_reg\(2),
	datad => \wm8731_init|i2c_master|bit_count_reg\(1),
	combout => \wm8731_init|i2c_master|Mux0~4_combout\);

-- Location: LCCOMB_X53_Y20_N24
\wm8731_init|i2c_master|Selector38~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~3_combout\ = (\wm8731_init|i2c_master|Selector27~0_combout\ & ((\wm8731_init|i2c_master|Selector38~1_combout\) # ((\wm8731_init|i2c_master|Selector38~2_combout\ & \wm8731_init|i2c_master|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector38~2_combout\,
	datab => \wm8731_init|i2c_master|Selector27~0_combout\,
	datac => \wm8731_init|i2c_master|Selector38~1_combout\,
	datad => \wm8731_init|i2c_master|Mux0~4_combout\,
	combout => \wm8731_init|i2c_master|Selector38~3_combout\);

-- Location: LCCOMB_X53_Y20_N10
\wm8731_init|i2c_master|Selector38~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~4_combout\ = (!\wm8731_init|i2c_master|Selector27~0_combout\ & ((\wm8731_init|i2c_master|Selector37~1_combout\) # ((!\wm8731_init|i2c_master|Selector26~0_combout\ & !\wm8731_init|i2c_master|sda_o_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector37~1_combout\,
	datab => \wm8731_init|i2c_master|Selector27~0_combout\,
	datac => \wm8731_init|i2c_master|Selector26~0_combout\,
	datad => \wm8731_init|i2c_master|sda_o_reg~regout\,
	combout => \wm8731_init|i2c_master|Selector38~4_combout\);

-- Location: LCCOMB_X53_Y20_N14
\wm8731_init|i2c_master|Selector38~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~5_combout\ = (\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\ & ((\wm8731_init|i2c_master|Selector20~0_combout\) # ((\wm8731_init|i2c_master|Selector38~3_combout\) # 
-- (\wm8731_init|i2c_master|Selector38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|Selector20~0_combout\,
	datab => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_ACTIVE~regout\,
	datac => \wm8731_init|i2c_master|Selector38~3_combout\,
	datad => \wm8731_init|i2c_master|Selector38~4_combout\,
	combout => \wm8731_init|i2c_master|Selector38~5_combout\);

-- Location: LCCOMB_X53_Y20_N6
\wm8731_init|i2c_master|Selector38~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|Selector38~8_combout\ = (\wm8731_init|i2c_master|Selector38~7_combout\) # ((\wm8731_init|i2c_master|Selector38~5_combout\) # ((!\wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\ & 
-- !\wm8731_init|i2c_master|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_init|i2c_master|phy_state_reg.PHY_STATE_IDLE~regout\,
	datab => \wm8731_init|i2c_master|Selector38~7_combout\,
	datac => \wm8731_init|i2c_master|Selector38~5_combout\,
	datad => \wm8731_init|i2c_master|Selector20~0_combout\,
	combout => \wm8731_init|i2c_master|Selector38~8_combout\);

-- Location: LCCOMB_X53_Y20_N22
\wm8731_init|i2c_master|sda_o_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wm8731_init|i2c_master|sda_o_reg~0_combout\ = (!\resetter|Equal0~5_combout\ & ((\wm8731_init|i2c_master|phy_state_next~2_combout\ & ((!\wm8731_init|i2c_master|Selector38~8_combout\))) # (!\wm8731_init|i2c_master|phy_state_next~2_combout\ & 
-- (\wm8731_init|i2c_master|sda_o_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~5_combout\,
	datab => \wm8731_init|i2c_master|phy_state_next~2_combout\,
	datac => \wm8731_init|i2c_master|sda_o_reg~regout\,
	datad => \wm8731_init|i2c_master|Selector38~8_combout\,
	combout => \wm8731_init|i2c_master|sda_o_reg~0_combout\);

-- Location: LCFF_X53_Y20_N23
\wm8731_init|i2c_master|sda_o_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \wm8731_init|i2c_master|sda_o_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wm8731_init|i2c_master|sda_o_reg~regout\);

-- Location: LCCOMB_X54_Y17_N12
\controller_reader|state[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[0]~9_combout\ = \controller_reader|state\(0) $ (VCC)
-- \controller_reader|state[0]~10\ = CARRY(\controller_reader|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(0),
	datad => VCC,
	combout => \controller_reader|state[0]~9_combout\,
	cout => \controller_reader|state[0]~10\);

-- Location: LCCOMB_X54_Y17_N14
\controller_reader|state[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[1]~11_combout\ = (\controller_reader|state\(1) & (!\controller_reader|state[0]~10\)) # (!\controller_reader|state\(1) & ((\controller_reader|state[0]~10\) # (GND)))
-- \controller_reader|state[1]~12\ = CARRY((!\controller_reader|state[0]~10\) # (!\controller_reader|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(1),
	datad => VCC,
	cin => \controller_reader|state[0]~10\,
	combout => \controller_reader|state[1]~11_combout\,
	cout => \controller_reader|state[1]~12\);

-- Location: LCFF_X54_Y17_N15
\controller_reader|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[1]~11_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(1));

-- Location: LCCOMB_X54_Y17_N16
\controller_reader|state[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[2]~13_combout\ = (\controller_reader|state\(2) & (\controller_reader|state[1]~12\ $ (GND))) # (!\controller_reader|state\(2) & (!\controller_reader|state[1]~12\ & VCC))
-- \controller_reader|state[2]~14\ = CARRY((\controller_reader|state\(2) & !\controller_reader|state[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datad => VCC,
	cin => \controller_reader|state[1]~12\,
	combout => \controller_reader|state[2]~13_combout\,
	cout => \controller_reader|state[2]~14\);

-- Location: LCFF_X54_Y17_N17
\controller_reader|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[2]~13_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(2));

-- Location: LCCOMB_X54_Y17_N18
\controller_reader|state[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[3]~15_combout\ = (\controller_reader|state\(3) & (!\controller_reader|state[2]~14\)) # (!\controller_reader|state\(3) & ((\controller_reader|state[2]~14\) # (GND)))
-- \controller_reader|state[3]~16\ = CARRY((!\controller_reader|state[2]~14\) # (!\controller_reader|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(3),
	datad => VCC,
	cin => \controller_reader|state[2]~14\,
	combout => \controller_reader|state[3]~15_combout\,
	cout => \controller_reader|state[3]~16\);

-- Location: LCFF_X54_Y17_N19
\controller_reader|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[3]~15_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(3));

-- Location: LCCOMB_X54_Y17_N8
\controller_reader|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder1~1_combout\ = (!\controller_reader|state\(1) & (!\controller_reader|state\(2) & !\controller_reader|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(1),
	datac => \controller_reader|state\(2),
	datad => \controller_reader|state\(3),
	combout => \controller_reader|Decoder1~1_combout\);

-- Location: LCFF_X54_Y17_N13
\controller_reader|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[0]~9_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(0));

-- Location: LCCOMB_X54_Y17_N20
\controller_reader|state[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[4]~17_combout\ = (\controller_reader|state\(4) & (\controller_reader|state[3]~16\ $ (GND))) # (!\controller_reader|state\(4) & (!\controller_reader|state[3]~16\ & VCC))
-- \controller_reader|state[4]~18\ = CARRY((\controller_reader|state\(4) & !\controller_reader|state[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(4),
	datad => VCC,
	cin => \controller_reader|state[3]~16\,
	combout => \controller_reader|state[4]~17_combout\,
	cout => \controller_reader|state[4]~18\);

-- Location: LCFF_X54_Y17_N21
\controller_reader|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[4]~17_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(4));

-- Location: LCCOMB_X54_Y17_N22
\controller_reader|state[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[5]~19_combout\ = (\controller_reader|state\(5) & (!\controller_reader|state[4]~18\)) # (!\controller_reader|state\(5) & ((\controller_reader|state[4]~18\) # (GND)))
-- \controller_reader|state[5]~20\ = CARRY((!\controller_reader|state[4]~18\) # (!\controller_reader|state\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(5),
	datad => VCC,
	cin => \controller_reader|state[4]~18\,
	combout => \controller_reader|state[5]~19_combout\,
	cout => \controller_reader|state[5]~20\);

-- Location: LCFF_X54_Y17_N23
\controller_reader|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[5]~19_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(5));

-- Location: LCCOMB_X54_Y17_N26
\controller_reader|state[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[7]~23_combout\ = (\controller_reader|state\(7) & (!\controller_reader|state[6]~22\)) # (!\controller_reader|state\(7) & ((\controller_reader|state[6]~22\) # (GND)))
-- \controller_reader|state[7]~24\ = CARRY((!\controller_reader|state[6]~22\) # (!\controller_reader|state\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(7),
	datad => VCC,
	cin => \controller_reader|state[6]~22\,
	combout => \controller_reader|state[7]~23_combout\,
	cout => \controller_reader|state[7]~24\);

-- Location: LCCOMB_X54_Y17_N28
\controller_reader|state[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|state[8]~25_combout\ = \controller_reader|state[7]~24\ $ (!\controller_reader|state\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller_reader|state\(8),
	cin => \controller_reader|state[7]~24\,
	combout => \controller_reader|state[8]~25_combout\);

-- Location: LCFF_X54_Y17_N29
\controller_reader|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[8]~25_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(8));

-- Location: LCFF_X54_Y17_N27
\controller_reader|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|state[7]~23_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|state\(7));

-- Location: LCCOMB_X54_Y17_N30
\controller_reader|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder1~0_combout\ = (!\controller_reader|state\(6) & (!\controller_reader|state\(8) & (!\controller_reader|state\(5) & !\controller_reader|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(6),
	datab => \controller_reader|state\(8),
	datac => \controller_reader|state\(5),
	datad => \controller_reader|state\(7),
	combout => \controller_reader|Decoder1~0_combout\);

-- Location: LCCOMB_X55_Y17_N8
\controller_reader|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder1~2_combout\ = (\controller_reader|Decoder1~1_combout\ & (!\controller_reader|state\(0) & (!\controller_reader|state\(4) & \controller_reader|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder1~1_combout\,
	datab => \controller_reader|state\(0),
	datac => \controller_reader|state\(4),
	datad => \controller_reader|Decoder1~0_combout\,
	combout => \controller_reader|Decoder1~2_combout\);

-- Location: LCCOMB_X54_Y17_N6
\controller_reader|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|WideOr0~0_combout\ = \controller_reader|state\(4) $ (((\controller_reader|state\(2)) # ((\controller_reader|state\(1)) # (\controller_reader|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(2),
	datab => \controller_reader|state\(1),
	datac => \controller_reader|state\(4),
	datad => \controller_reader|state\(3),
	combout => \controller_reader|WideOr0~0_combout\);

-- Location: LCCOMB_X56_Y17_N24
\controller_reader|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|WideOr0~1_combout\ = (\controller_reader|WideOr0~0_combout\ & (\controller_reader|Decoder1~0_combout\ & \controller_reader|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|WideOr0~0_combout\,
	datac => \controller_reader|Decoder1~0_combout\,
	datad => \controller_reader|state\(0),
	combout => \controller_reader|WideOr0~1_combout\);

-- Location: LCCOMB_X51_Y20_N4
\i2s|div_256|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|div_256|counter~0_combout\ = ((\i2s|div_256|counter\(0) $ (!\i2s|div_256|counter\(1))) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|div_256|counter\(0),
	datab => \resetter|reset_count\(16),
	datac => \i2s|div_256|counter\(1),
	datad => \resetter|Equal0~4_combout\,
	combout => \i2s|div_256|counter~0_combout\);

-- Location: LCFF_X51_Y20_N5
\i2s|div_256|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|div_256|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|div_256|counter\(1));

-- Location: LCCOMB_X51_Y20_N12
\i2s|div_256|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|div_256|out~0_combout\ = (\resetter|reset_count\(16) & (!\i2s|div_256|counter\(1) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \i2s|div_256|counter\(1),
	datad => \resetter|Equal0~4_combout\,
	combout => \i2s|div_256|out~0_combout\);

-- Location: LCFF_X51_Y20_N13
\i2s|div_256|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|div_256|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|div_256|out~regout\);

-- Location: LCCOMB_X51_Y20_N30
\i2s|bck_prev~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bck_prev~0_combout\ = (\i2s|div_256|out~regout\ & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|div_256|out~regout\,
	datab => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \i2s|bck_prev~0_combout\);

-- Location: LCFF_X51_Y20_N31
\i2s|bck_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bck_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bck_prev~regout\);

-- Location: LCCOMB_X51_Y20_N16
\i2s|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|always0~0_combout\ = (\i2s|div_256|out~regout\) # (!\i2s|bck_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s|bck_prev~regout\,
	datad => \i2s|div_256|out~regout\,
	combout => \i2s|always0~0_combout\);

-- Location: LCCOMB_X51_Y20_N18
\i2s|bitcount[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[0]~8_combout\ = \i2s|bitcount\(0) $ (VCC)
-- \i2s|bitcount[0]~9\ = CARRY(\i2s|bitcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(0),
	datad => VCC,
	combout => \i2s|bitcount[0]~8_combout\,
	cout => \i2s|bitcount[0]~9\);

-- Location: LCCOMB_X51_Y20_N20
\i2s|bitcount[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[1]~10_combout\ = (\i2s|bitcount\(1) & (!\i2s|bitcount[0]~9\)) # (!\i2s|bitcount\(1) & ((\i2s|bitcount[0]~9\) # (GND)))
-- \i2s|bitcount[1]~11\ = CARRY((!\i2s|bitcount[0]~9\) # (!\i2s|bitcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(1),
	datad => VCC,
	cin => \i2s|bitcount[0]~9\,
	combout => \i2s|bitcount[1]~10_combout\,
	cout => \i2s|bitcount[1]~11\);

-- Location: LCCOMB_X51_Y20_N22
\i2s|bitcount[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[2]~12_combout\ = (\i2s|bitcount\(2) & (\i2s|bitcount[1]~11\ $ (GND))) # (!\i2s|bitcount\(2) & (!\i2s|bitcount[1]~11\ & VCC))
-- \i2s|bitcount[2]~13\ = CARRY((\i2s|bitcount\(2) & !\i2s|bitcount[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(2),
	datad => VCC,
	cin => \i2s|bitcount[1]~11\,
	combout => \i2s|bitcount[2]~12_combout\,
	cout => \i2s|bitcount[2]~13\);

-- Location: LCCOMB_X51_Y20_N0
\i2s|bitcount[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[5]~7_combout\ = (((!\i2s|div_256|out~regout\ & \i2s|bck_prev~regout\)) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|div_256|out~regout\,
	datab => \resetter|reset_count\(16),
	datac => \i2s|bck_prev~regout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \i2s|bitcount[5]~7_combout\);

-- Location: LCFF_X51_Y20_N23
\i2s|bitcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[2]~12_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(2));

-- Location: LCCOMB_X51_Y20_N24
\i2s|bitcount[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[3]~14_combout\ = (\i2s|bitcount\(3) & (!\i2s|bitcount[2]~13\)) # (!\i2s|bitcount\(3) & ((\i2s|bitcount[2]~13\) # (GND)))
-- \i2s|bitcount[3]~15\ = CARRY((!\i2s|bitcount[2]~13\) # (!\i2s|bitcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(3),
	datad => VCC,
	cin => \i2s|bitcount[2]~13\,
	combout => \i2s|bitcount[3]~14_combout\,
	cout => \i2s|bitcount[3]~15\);

-- Location: LCFF_X51_Y20_N25
\i2s|bitcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[3]~14_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(3));

-- Location: LCCOMB_X51_Y20_N26
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

-- Location: LCFF_X51_Y20_N27
\i2s|bitcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[4]~16_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(4));

-- Location: LCCOMB_X51_Y20_N28
\i2s|bitcount[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[5]~18_combout\ = \i2s|bitcount[4]~17\ $ (\i2s|bitcount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2s|bitcount\(5),
	cin => \i2s|bitcount[4]~17\,
	combout => \i2s|bitcount[5]~18_combout\);

-- Location: LCFF_X51_Y20_N29
\i2s|bitcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[5]~18_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(5));

-- Location: LCCOMB_X51_Y20_N8
\i2s|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|Equal0~1_combout\ = (\i2s|bitcount\(5)) # (!\i2s|bitcount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s|bitcount\(4),
	datad => \i2s|bitcount\(5),
	combout => \i2s|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y20_N14
\i2s|bitcount[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|bitcount[5]~6_combout\ = (((!\i2s|Equal0~1_combout\ & !\i2s|Equal0~0_combout\)) # (!\resetter|reset_count\(16))) # (!\resetter|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datac => \i2s|Equal0~1_combout\,
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|bitcount[5]~6_combout\);

-- Location: LCFF_X51_Y20_N19
\i2s|bitcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[0]~8_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(0));

-- Location: LCFF_X51_Y20_N21
\i2s|bitcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|bitcount[1]~10_combout\,
	sclr => \i2s|bitcount[5]~6_combout\,
	ena => \i2s|bitcount[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|bitcount\(1));

-- Location: LCCOMB_X51_Y20_N2
\i2s|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|Equal0~0_combout\ = (((!\i2s|bitcount\(3)) # (!\i2s|bitcount\(1))) # (!\i2s|bitcount\(0))) # (!\i2s|bitcount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|bitcount\(2),
	datab => \i2s|bitcount\(0),
	datac => \i2s|bitcount\(1),
	datad => \i2s|bitcount\(3),
	combout => \i2s|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y20_N16
\i2s|LRCK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|LRCK~0_combout\ = \i2s|LRCK~regout\ $ (((!\i2s|Equal0~1_combout\ & (!\i2s|always0~0_combout\ & !\i2s|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|Equal0~1_combout\,
	datab => \i2s|always0~0_combout\,
	datac => \i2s|LRCK~regout\,
	datad => \i2s|Equal0~0_combout\,
	combout => \i2s|LRCK~0_combout\);

-- Location: LCFF_X53_Y20_N17
\i2s|LRCK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|LRCK~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|LRCK~regout\);

-- Location: LCCOMB_X51_Y20_N6
\i2s|data_shift[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2s|data_shift[31]~2_combout\ = (\i2s|bitcount[5]~7_combout\ & (\i2s|data_shift\(30) & (!\i2s|bitcount[5]~6_combout\))) # (!\i2s|bitcount[5]~7_combout\ & (((\i2s|data_shift\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s|data_shift\(30),
	datab => \i2s|bitcount[5]~6_combout\,
	datac => \i2s|data_shift\(31),
	datad => \i2s|bitcount[5]~7_combout\,
	combout => \i2s|data_shift[31]~2_combout\);

-- Location: LCFF_X51_Y20_N7
\i2s|data_shift[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \i2s|data_shift[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2s|data_shift\(31));

-- Location: LCCOMB_X57_Y18_N8
\controller_reader|div|counter[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[0]~7_combout\ = \controller_reader|div|counter\(0) $ (VCC)
-- \controller_reader|div|counter[0]~8\ = CARRY(\controller_reader|div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|div|counter\(0),
	datad => VCC,
	combout => \controller_reader|div|counter[0]~7_combout\,
	cout => \controller_reader|div|counter[0]~8\);

-- Location: LCCOMB_X57_Y18_N10
\controller_reader|div|counter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[1]~9_combout\ = (\controller_reader|div|counter\(1) & (\controller_reader|div|counter[0]~8\ & VCC)) # (!\controller_reader|div|counter\(1) & (!\controller_reader|div|counter[0]~8\))
-- \controller_reader|div|counter[1]~10\ = CARRY((!\controller_reader|div|counter\(1) & !\controller_reader|div|counter[0]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|div|counter\(1),
	datad => VCC,
	cin => \controller_reader|div|counter[0]~8\,
	combout => \controller_reader|div|counter[1]~9_combout\,
	cout => \controller_reader|div|counter[1]~10\);

-- Location: LCFF_X57_Y18_N11
\controller_reader|div|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[1]~9_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(1));

-- Location: LCCOMB_X57_Y18_N4
\controller_reader|div|counter[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[6]~21_combout\ = (\controller_reader|div|counter\(2)) # ((\controller_reader|div|counter\(1)) # ((\controller_reader|div|counter\(6)) # (\controller_reader|div|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|div|counter\(2),
	datab => \controller_reader|div|counter\(1),
	datac => \controller_reader|div|counter\(6),
	datad => \controller_reader|div|counter\(0),
	combout => \controller_reader|div|counter[6]~21_combout\);

-- Location: LCCOMB_X57_Y18_N16
\controller_reader|div|counter[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[4]~15_combout\ = (\controller_reader|div|counter\(4) & ((GND) # (!\controller_reader|div|counter[3]~14\))) # (!\controller_reader|div|counter\(4) & (\controller_reader|div|counter[3]~14\ $ (GND)))
-- \controller_reader|div|counter[4]~16\ = CARRY((\controller_reader|div|counter\(4)) # (!\controller_reader|div|counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|div|counter\(4),
	datad => VCC,
	cin => \controller_reader|div|counter[3]~14\,
	combout => \controller_reader|div|counter[4]~15_combout\,
	cout => \controller_reader|div|counter[4]~16\);

-- Location: LCFF_X57_Y18_N17
\controller_reader|div|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[4]~15_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(4));

-- Location: LCCOMB_X57_Y18_N2
\controller_reader|div|counter[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[6]~22_combout\ = (\controller_reader|div|counter\(5)) # ((\controller_reader|div|counter\(4)) # (\controller_reader|div|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|div|counter\(5),
	datac => \controller_reader|div|counter\(4),
	datad => \controller_reader|div|counter\(3),
	combout => \controller_reader|div|counter[6]~22_combout\);

-- Location: LCCOMB_X57_Y18_N24
\controller_reader|div|counter[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[6]~23_combout\ = (((!\controller_reader|div|counter[6]~21_combout\ & !\controller_reader|div|counter[6]~22_combout\)) # (!\resetter|reset_count\(16))) # (!\resetter|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|Equal0~4_combout\,
	datab => \resetter|reset_count\(16),
	datac => \controller_reader|div|counter[6]~21_combout\,
	datad => \controller_reader|div|counter[6]~22_combout\,
	combout => \controller_reader|div|counter[6]~23_combout\);

-- Location: LCFF_X57_Y18_N9
\controller_reader|div|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[0]~7_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(0));

-- Location: LCCOMB_X57_Y18_N14
\controller_reader|div|counter[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[3]~13_combout\ = (\controller_reader|div|counter\(3) & (\controller_reader|div|counter[2]~12\ & VCC)) # (!\controller_reader|div|counter\(3) & (!\controller_reader|div|counter[2]~12\))
-- \controller_reader|div|counter[3]~14\ = CARRY((!\controller_reader|div|counter\(3) & !\controller_reader|div|counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|div|counter\(3),
	datad => VCC,
	cin => \controller_reader|div|counter[2]~12\,
	combout => \controller_reader|div|counter[3]~13_combout\,
	cout => \controller_reader|div|counter[3]~14\);

-- Location: LCFF_X57_Y18_N15
\controller_reader|div|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[3]~13_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(3));

-- Location: LCCOMB_X57_Y18_N18
\controller_reader|div|counter[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[5]~17_combout\ = (\controller_reader|div|counter\(5) & (\controller_reader|div|counter[4]~16\ & VCC)) # (!\controller_reader|div|counter\(5) & (!\controller_reader|div|counter[4]~16\))
-- \controller_reader|div|counter[5]~18\ = CARRY((!\controller_reader|div|counter\(5) & !\controller_reader|div|counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|div|counter\(5),
	datad => VCC,
	cin => \controller_reader|div|counter[4]~16\,
	combout => \controller_reader|div|counter[5]~17_combout\,
	cout => \controller_reader|div|counter[5]~18\);

-- Location: LCFF_X57_Y18_N19
\controller_reader|div|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[5]~17_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(5));

-- Location: LCCOMB_X57_Y18_N20
\controller_reader|div|counter[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|counter[6]~19_combout\ = \controller_reader|div|counter[5]~18\ $ (\controller_reader|div|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller_reader|div|counter\(6),
	cin => \controller_reader|div|counter[5]~18\,
	combout => \controller_reader|div|counter[6]~19_combout\);

-- Location: LCFF_X57_Y18_N21
\controller_reader|div|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|counter[6]~19_combout\,
	sdata => VCC,
	sload => \controller_reader|div|counter[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|counter\(6));

-- Location: LCCOMB_X64_Y19_N30
\controller_reader|div|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|div|out~0_combout\ = (\resetter|reset_count\(16) & (\resetter|Equal0~4_combout\ & !\controller_reader|div|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetter|reset_count\(16),
	datac => \resetter|Equal0~4_combout\,
	datad => \controller_reader|div|counter\(6),
	combout => \controller_reader|div|out~0_combout\);

-- Location: LCFF_X64_Y19_N31
\controller_reader|div|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_12_5_divider|out~clkctrl_outclk\,
	datain => \controller_reader|div|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|div|out~regout\);

-- Location: CLKCTRL_G6
\controller_reader|div|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controller_reader|div|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controller_reader|div|out~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y17_N26
\controller_reader|buttons~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~0_combout\ = (!\controller_reader|buttons_latch\(0) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|buttons_latch\(0),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~0_combout\);

-- Location: LCCOMB_X55_Y17_N14
\controller_reader|Decoder1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|Decoder1~3_combout\ = (\controller_reader|state\(4) & (\controller_reader|state\(0) & (\controller_reader|Decoder1~0_combout\ & \controller_reader|Decoder1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(4),
	datab => \controller_reader|state\(0),
	datac => \controller_reader|Decoder1~0_combout\,
	datad => \controller_reader|Decoder1~1_combout\,
	combout => \controller_reader|Decoder1~3_combout\);

-- Location: LCCOMB_X55_Y17_N4
\controller_reader|buttons[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons[3]~1_combout\ = ((\controller_reader|Decoder1~3_combout\) # (!\resetter|Equal0~4_combout\)) # (!\resetter|reset_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datac => \controller_reader|Decoder1~3_combout\,
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons[3]~1_combout\);

-- Location: LCFF_X55_Y17_N27
\controller_reader|buttons[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~0_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(0));

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

-- Location: LCCOMB_X58_Y17_N0
\controller_reader|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|WideOr1~0_combout\ = (\controller_reader|state\(3) & (((!\controller_reader|state\(4))))) # (!\controller_reader|state\(3) & ((\controller_reader|state\(2) & ((!\controller_reader|state\(4)))) # (!\controller_reader|state\(2) & 
-- (!\controller_reader|state\(1) & \controller_reader|state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|state\(1),
	datab => \controller_reader|state\(3),
	datac => \controller_reader|state\(2),
	datad => \controller_reader|state\(4),
	combout => \controller_reader|WideOr1~0_combout\);

-- Location: LCCOMB_X58_Y17_N30
\controller_reader|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|WideOr1~1_combout\ = (!\controller_reader|state\(0) & (\controller_reader|Decoder1~0_combout\ & \controller_reader|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|state\(0),
	datac => \controller_reader|Decoder1~0_combout\,
	datad => \controller_reader|WideOr1~0_combout\,
	combout => \controller_reader|WideOr1~1_combout\);

-- Location: LCCOMB_X58_Y17_N4
\controller_reader|buttons_latch_next[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[1]~0_combout\ = (\controller_reader|Decoder0~0_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(1)))))) # 
-- (!\controller_reader|Decoder0~0_combout\ & (((\controller_reader|buttons_latch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~0_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(1),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[1]~0_combout\);

-- Location: LCFF_X58_Y17_N5
\controller_reader|buttons_latch[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[1]~0_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(1));

-- Location: LCCOMB_X55_Y17_N24
\controller_reader|buttons~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~2_combout\ = (\resetter|reset_count\(16) & (!\controller_reader|buttons_latch\(1) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \controller_reader|buttons_latch\(1),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~2_combout\);

-- Location: LCFF_X55_Y17_N25
\controller_reader|buttons[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~2_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(1));

-- Location: LCCOMB_X58_Y17_N14
\controller_reader|buttons_latch_next[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[2]~1_combout\ = (\controller_reader|Decoder0~1_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(2)))))) # 
-- (!\controller_reader|Decoder0~1_combout\ & (((\controller_reader|buttons_latch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~1_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(2),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[2]~1_combout\);

-- Location: LCFF_X58_Y17_N15
\controller_reader|buttons_latch[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[2]~1_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(2));

-- Location: LCCOMB_X55_Y17_N22
\controller_reader|buttons~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~3_combout\ = (\resetter|reset_count\(16) & (!\controller_reader|buttons_latch\(2) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetter|reset_count\(16),
	datab => \controller_reader|buttons_latch\(2),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~3_combout\);

-- Location: LCFF_X55_Y17_N23
\controller_reader|buttons[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~3_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(2));

-- Location: LCCOMB_X58_Y17_N16
\controller_reader|buttons_latch_next[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[3]~2_combout\ = (\controller_reader|Decoder0~2_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(3)))))) # 
-- (!\controller_reader|Decoder0~2_combout\ & (((\controller_reader|buttons_latch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~2_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(3),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[3]~2_combout\);

-- Location: LCFF_X58_Y17_N17
\controller_reader|buttons_latch[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[3]~2_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(3));

-- Location: LCCOMB_X55_Y17_N12
\controller_reader|buttons~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~4_combout\ = (!\controller_reader|buttons_latch\(3) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|buttons_latch\(3),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~4_combout\);

-- Location: LCFF_X55_Y17_N13
\controller_reader|buttons[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~4_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(3));

-- Location: LCCOMB_X55_Y17_N6
\controller_reader|buttons~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~5_combout\ = (!\controller_reader|buttons_latch\(4) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|buttons_latch\(4),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~5_combout\);

-- Location: LCFF_X55_Y17_N7
\controller_reader|buttons[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~5_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(4));

-- Location: LCCOMB_X58_Y17_N24
\controller_reader|buttons_latch_next[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[5]~4_combout\ = (\controller_reader|Decoder0~4_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(5)))))) # 
-- (!\controller_reader|Decoder0~4_combout\ & (((\controller_reader|buttons_latch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~4_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(5),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[5]~4_combout\);

-- Location: LCFF_X58_Y17_N25
\controller_reader|buttons_latch[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[5]~4_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(5));

-- Location: LCCOMB_X55_Y17_N16
\controller_reader|buttons~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~6_combout\ = (!\controller_reader|buttons_latch\(5) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|buttons_latch\(5),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~6_combout\);

-- Location: LCFF_X55_Y17_N17
\controller_reader|buttons[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~6_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(5));

-- Location: LCCOMB_X58_Y17_N18
\controller_reader|buttons_latch_next[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[6]~5_combout\ = (\controller_reader|Decoder0~5_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(6)))))) # 
-- (!\controller_reader|Decoder0~5_combout\ & (((\controller_reader|buttons_latch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~5_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(6),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[6]~5_combout\);

-- Location: LCFF_X58_Y17_N19
\controller_reader|buttons_latch[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[6]~5_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(6));

-- Location: LCCOMB_X55_Y17_N30
\controller_reader|buttons~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~7_combout\ = (!\controller_reader|buttons_latch\(6) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|buttons_latch\(6),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~7_combout\);

-- Location: LCFF_X55_Y17_N31
\controller_reader|buttons[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~7_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(6));

-- Location: LCCOMB_X58_Y17_N28
\controller_reader|buttons_latch_next[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons_latch_next[7]~6_combout\ = (\controller_reader|Decoder0~6_combout\ & ((\controller_reader|WideOr1~1_combout\ & (\NES_DO~combout\)) # (!\controller_reader|WideOr1~1_combout\ & ((\controller_reader|buttons_latch\(7)))))) # 
-- (!\controller_reader|Decoder0~6_combout\ & (((\controller_reader|buttons_latch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_reader|Decoder0~6_combout\,
	datab => \NES_DO~combout\,
	datac => \controller_reader|buttons_latch\(7),
	datad => \controller_reader|WideOr1~1_combout\,
	combout => \controller_reader|buttons_latch_next[7]~6_combout\);

-- Location: LCFF_X58_Y17_N29
\controller_reader|buttons_latch[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons_latch_next[7]~6_combout\,
	sclr => \resetter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons_latch\(7));

-- Location: LCCOMB_X55_Y17_N28
\controller_reader|buttons~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller_reader|buttons~8_combout\ = (!\controller_reader|buttons_latch\(7) & (\resetter|reset_count\(16) & \resetter|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_reader|buttons_latch\(7),
	datac => \resetter|reset_count\(16),
	datad => \resetter|Equal0~4_combout\,
	combout => \controller_reader|buttons~8_combout\);

-- Location: LCFF_X55_Y17_N29
\controller_reader|buttons[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controller_reader|div|out~clkctrl_outclk\,
	datain => \controller_reader|buttons~8_combout\,
	ena => \controller_reader|buttons[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller_reader|buttons\(7));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
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
	padio => ww_AUD_ADCDAT,
	combout => \AUD_ADCDAT~combout\);

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
	datain => \controller_reader|Decoder1~2_combout\,
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
	datain => \controller_reader|WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NES_CK);

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
	datain => \clk_12_5_divider|out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_XCK);

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
	datain => \i2s|div_256|out~regout\,
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
	datain => \controller_reader|buttons\(0),
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
	datain => \controller_reader|buttons\(1),
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
	datain => \controller_reader|buttons\(2),
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
	datain => \controller_reader|buttons\(3),
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
	datain => \controller_reader|buttons\(4),
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
	datain => \controller_reader|buttons\(5),
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
	datain => \controller_reader|buttons\(6),
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
	datain => \controller_reader|buttons\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
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
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
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
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
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
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
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
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
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
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
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
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
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
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
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
	padio => ww_LEDR(17));

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
	datain => \clk_12_5_divider|out~regout\,
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
	datain => \i2s|div_256|out~regout\,
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
	datain => \i2s|LRCK~regout\,
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
	datain => \i2s|data_shift\(31),
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
	datain => \i2s|LRCK~regout\,
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
	datain => \AUD_ADCDAT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(11));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(14));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(15));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(17));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(19));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(22));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(23));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(25));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(26));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(27));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(28));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(30));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(31));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[32]~I\ : cycloneii_io
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
	padio => ww_GPIO_0(32));
END structure;


