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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/22/2024 16:00:44"

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

ENTITY 	CPU IS
    PORT (
	First4 : OUT std_logic_vector(1 TO 7);
	Results : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	res : IN std_logic;
	Enable : IN std_logic;
	data_in : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Last4 : OUT std_logic_vector(1 TO 7);
	Sign : OUT std_logic_vector(1 TO 7);
	StudenN : OUT std_logic_vector(1 TO 7);
	Student : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(0 TO 7)
	);
END CPU;

-- Design Ports Information
-- First4[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- First4[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[7]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[4]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[3]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Results[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[5]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Last4[7]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[7]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[1]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[2]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[5]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- StudenN[7]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Student[3]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Student[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Student[1]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Student[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- res	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_First4 : std_logic_vector(1 TO 7);
SIGNAL ww_Results : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Last4 : std_logic_vector(1 TO 7);
SIGNAL ww_Sign : std_logic_vector(1 TO 7);
SIGNAL ww_StudenN : std_logic_vector(1 TO 7);
SIGNAL ww_Student : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(0 TO 7);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \res~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~3_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \res~combout\ : std_logic;
SIGNAL \res~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|yfsm.s7~regout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s0~regout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s1~regout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s2~regout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s3~regout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s4~regout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s5~regout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|yfsm.s6~regout\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|WideOr1~combout\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Result[7]~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~8_combout\ : std_logic;
SIGNAL \Enable~combout\ : std_logic;
SIGNAL \inst5|Result[7]~0_combout\ : std_logic;
SIGNAL \inst|inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~4_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Mux3~5_combout\ : std_logic;
SIGNAL \inst5|Mux3~6_combout\ : std_logic;
SIGNAL \inst5|Mux3~7_combout\ : std_logic;
SIGNAL \inst5|Mux3~9_combout\ : std_logic;
SIGNAL \inst5|Mux1~4_combout\ : std_logic;
SIGNAL \inst5|Mux1~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|Mux1~5_combout\ : std_logic;
SIGNAL \inst5|Mux1~6_combout\ : std_logic;
SIGNAL \inst5|Mux1~7_combout\ : std_logic;
SIGNAL \inst5|Mux1~9_combout\ : std_logic;
SIGNAL \inst5|Mux2~3_combout\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst5|Mux2~5_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~4_combout\ : std_logic;
SIGNAL \inst5|Mux0~5_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst5|Mux4~2_combout\ : std_logic;
SIGNAL \inst5|Mux4~4_combout\ : std_logic;
SIGNAL \inst5|Mux4~5_combout\ : std_logic;
SIGNAL \inst5|Mux5~8_combout\ : std_logic;
SIGNAL \inst5|Mux5~4_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Mux5~5_combout\ : std_logic;
SIGNAL \inst5|Mux5~6_combout\ : std_logic;
SIGNAL \inst5|Mux5~7_combout\ : std_logic;
SIGNAL \inst5|Mux5~9_combout\ : std_logic;
SIGNAL \inst5|Mux6~3_combout\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst5|Mux6~2_combout\ : std_logic;
SIGNAL \inst5|Mux6~4_combout\ : std_logic;
SIGNAL \inst5|Mux6~5_combout\ : std_logic;
SIGNAL \inst|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~8_combout\ : std_logic;
SIGNAL \inst5|Mux7~7_combout\ : std_logic;
SIGNAL \inst5|Mux7~9_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~5_combout\ : std_logic;
SIGNAL \inst|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~3_combout\ : std_logic;
SIGNAL \inst|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~4_combout\ : std_logic;
SIGNAL \inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|Mux7~2_combout\ : std_logic;
SIGNAL \inst5|Mux7~6_combout\ : std_logic;
SIGNAL \inst5|Mux7~10_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|WideOr3~combout\ : std_logic;
SIGNAL \inst6|Mux0~8_combout\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \inst6|Mux0~9_combout\ : std_logic;
SIGNAL \inst6|Mux5~4_combout\ : std_logic;
SIGNAL \inst|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Result\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

First4 <= ww_First4;
Results <= ww_Results;
ww_clk <= clk;
ww_res <= res;
ww_Enable <= Enable;
ww_data_in <= data_in;
ww_A <= A;
ww_B <= B;
Last4 <= ww_Last4;
Sign <= ww_Sign;
StudenN <= ww_StudenN;
Student <= ww_Student;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\res~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \res~combout\);
\inst|inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|inst|Mux3~0_combout\;
\inst1|ALT_INV_WideOr3~combout\ <= NOT \inst1|WideOr3~combout\;
\inst8|ALT_INV_Mux6~0_combout\ <= NOT \inst8|Mux6~0_combout\;
\inst5|ALT_INV_Result\(3) <= NOT \inst5|Result\(3);
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;

-- Location: LCCOMB_X20_Y32_N20
\inst5|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (\inst5|Add1~3\)))) # (GND)
-- \inst5|Add1~5\ = CARRY((\inst2|Q\(2) & ((!\inst5|Add1~3\) # (!\inst3|Q\(2)))) # (!\inst2|Q\(2) & (!\inst3|Q\(2) & !\inst5|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X20_Y32_N0
\inst5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = (\inst2|Q\(0) & (\inst3|Q\(0) $ (VCC))) # (!\inst2|Q\(0) & (\inst3|Q\(0) & VCC))
-- \inst5|Add0~1\ = CARRY((\inst2|Q\(0) & \inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X20_Y32_N2
\inst5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (\inst5|Add0~1\ & VCC)) # (!\inst3|Q\(1) & (!\inst5|Add0~1\)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst5|Add0~1\)) # (!\inst3|Q\(1) & ((\inst5|Add0~1\) # (GND)))))
-- \inst5|Add0~3\ = CARRY((\inst2|Q\(1) & (!\inst3|Q\(1) & !\inst5|Add0~1\)) # (!\inst2|Q\(1) & ((!\inst5|Add0~1\) # (!\inst3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X20_Y32_N10
\inst5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (\inst5|Add0~9\ & VCC)) # (!\inst2|Q\(5) & (!\inst5|Add0~9\)))) # (!\inst3|Q\(5) & ((\inst2|Q\(5) & (!\inst5|Add0~9\)) # (!\inst2|Q\(5) & ((\inst5|Add0~9\) # (GND)))))
-- \inst5|Add0~11\ = CARRY((\inst3|Q\(5) & (!\inst2|Q\(5) & !\inst5|Add0~9\)) # (!\inst3|Q\(5) & ((!\inst5|Add0~9\) # (!\inst2|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCFF_X20_Y32_N21
\inst2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(2));

-- Location: LCFF_X20_Y32_N19
\inst2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(1));

-- Location: LCFF_X20_Y32_N11
\inst3|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(5));

-- Location: LCCOMB_X21_Y32_N10
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (\inst5|Result[7]~1_combout\ & !\inst|inst1|Mux1~1_combout\)) # (!\inst2|Q\(5) & (\inst5|Result[7]~1_combout\ $ (!\inst|inst1|Mux1~1_combout\))))) # (!\inst3|Q\(5) & (\inst5|Result[7]~1_combout\ $ 
-- (((!\inst|inst1|Mux1~1_combout\) # (!\inst2|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y32_N6
\inst5|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~3_combout\ = ((\inst5|Result[7]~0_combout\) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y32_N10
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (\inst5|Result[7]~1_combout\ & !\inst|inst1|Mux1~1_combout\)) # (!\inst3|Q\(1) & (\inst5|Result[7]~1_combout\ $ (!\inst|inst1|Mux1~1_combout\))))) # (!\inst2|Q\(1) & (\inst5|Result[7]~1_combout\ $ 
-- (((!\inst|inst1|Mux1~1_combout\) # (!\inst3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCCOMB_X22_Y32_N18
\inst1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|yfsm.s6~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s6~regout\ & (\inst1|yfsm.s7~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s6~regout\,
	datac => \inst1|yfsm.s7~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector7~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\res~I\ : cycloneii_io
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
	padio => ww_res,
	combout => \res~combout\);

-- Location: CLKCTRL_G1
\res~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \res~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \res~clkctrl_outclk\);

-- Location: LCFF_X22_Y32_N19
\inst1|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector7~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s7~regout\);

-- Location: LCCOMB_X22_Y32_N10
\inst1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|yfsm.s7~regout\ & ((!\data_in~combout\))) # (!\inst1|yfsm.s7~regout\ & ((\inst1|yfsm.s0~regout\) # (\data_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s7~regout\,
	datac => \inst1|yfsm.s0~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LCFF_X22_Y32_N11
\inst1|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector0~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s0~regout\);

-- Location: LCCOMB_X22_Y32_N0
\inst1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|yfsm.s0~regout\ & (\inst1|yfsm.s1~regout\ & !\data_in~combout\)) # (!\inst1|yfsm.s0~regout\ & ((\data_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s0~regout\,
	datac => \inst1|yfsm.s1~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCFF_X22_Y32_N1
\inst1|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector1~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s1~regout\);

-- Location: LCCOMB_X22_Y32_N4
\inst1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|yfsm.s1~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s1~regout\ & (\inst1|yfsm.s2~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s1~regout\,
	datac => \inst1|yfsm.s2~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: LCFF_X22_Y32_N5
\inst1|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector2~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s2~regout\);

-- Location: LCCOMB_X22_Y32_N30
\inst1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|yfsm.s2~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s2~regout\ & (\inst1|yfsm.s3~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s2~regout\,
	datac => \inst1|yfsm.s3~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LCFF_X22_Y32_N31
\inst1|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector3~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s3~regout\);

-- Location: LCCOMB_X22_Y32_N22
\inst1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|yfsm.s3~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s3~regout\ & (\inst1|yfsm.s4~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s3~regout\,
	datac => \inst1|yfsm.s4~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector4~0_combout\);

-- Location: LCFF_X22_Y32_N23
\inst1|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector4~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s4~regout\);

-- Location: LCCOMB_X22_Y32_N26
\inst1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|yfsm.s4~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s4~regout\ & (\inst1|yfsm.s5~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s4~regout\,
	datac => \inst1|yfsm.s5~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LCFF_X22_Y32_N27
\inst1|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector5~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s5~regout\);

-- Location: LCCOMB_X22_Y32_N20
\inst1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|yfsm.s5~regout\ & ((\data_in~combout\))) # (!\inst1|yfsm.s5~regout\ & (\inst1|yfsm.s6~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s5~regout\,
	datac => \inst1|yfsm.s6~regout\,
	datad => \data_in~combout\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCFF_X22_Y32_N21
\inst1|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Selector6~0_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|yfsm.s6~regout\);

-- Location: LCCOMB_X22_Y32_N28
\inst1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = ((\inst1|yfsm.s2~regout\) # ((\inst1|yfsm.s6~regout\) # (\inst1|yfsm.s4~regout\))) # (!\inst1|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s0~regout\,
	datab => \inst1|yfsm.s2~regout\,
	datac => \inst1|yfsm.s6~regout\,
	datad => \inst1|yfsm.s4~regout\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X22_Y32_N6
\inst1|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~combout\ = ((\inst1|yfsm.s4~regout\) # ((\inst1|yfsm.s1~regout\) # (\inst1|yfsm.s5~regout\))) # (!\inst1|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s0~regout\,
	datab => \inst1|yfsm.s4~regout\,
	datac => \inst1|yfsm.s1~regout\,
	datad => \inst1|yfsm.s5~regout\,
	combout => \inst1|WideOr1~combout\);

-- Location: LCCOMB_X22_Y32_N8
\inst|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = (\inst1|yfsm.s0~regout\ & (!\inst1|yfsm.s3~regout\ & (!\inst1|yfsm.s2~regout\ & !\inst1|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s0~regout\,
	datab => \inst1|yfsm.s3~regout\,
	datac => \inst1|yfsm.s2~regout\,
	datad => \inst1|yfsm.s1~regout\,
	combout => \inst|inst3~0_combout\);

-- Location: LCCOMB_X23_Y32_N10
\inst|inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux0~0_combout\ = (\Enable~combout\ & (!\inst1|WideOr2~0_combout\ & (!\inst1|WideOr1~combout\ & \inst|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst1|Mux0~0_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X20_Y32_N25
\inst2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(4));

-- Location: LCCOMB_X22_Y32_N14
\inst5|Result[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Result[7]~1_combout\ = (\Enable~combout\ & (\inst|inst3~0_combout\ & (\inst1|WideOr2~0_combout\ $ (\inst1|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst|inst3~0_combout\,
	datad => \inst1|WideOr1~combout\,
	combout => \inst5|Result[7]~1_combout\);

-- Location: LCCOMB_X22_Y32_N16
\inst|inst1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux1~1_combout\ = (\Enable~combout\ & (\inst|inst3~0_combout\ & \inst1|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datac => \inst|inst3~0_combout\,
	datad => \inst1|WideOr2~0_combout\,
	combout => \inst|inst1|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y32_N30
\inst5|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~8_combout\ = (\inst|inst1|Mux1~1_combout\ & ((\inst5|Result[7]~1_combout\) # ((!\inst3|Q\(4) & !\inst2|Q\(4))))) # (!\inst|inst1|Mux1~1_combout\ & (((!\inst5|Result[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst|inst1|Mux1~1_combout\,
	datac => \inst2|Q\(4),
	datad => \inst5|Result[7]~1_combout\,
	combout => \inst5|Mux3~8_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable~I\ : cycloneii_io
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
	padio => ww_Enable,
	combout => \Enable~combout\);

-- Location: LCCOMB_X19_Y32_N28
\inst5|Result[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Result[7]~0_combout\ = (\Enable~combout\ & (!\inst1|WideOr2~0_combout\ & !\inst|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst1|WideOr2~0_combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst5|Result[7]~0_combout\);

-- Location: LCCOMB_X19_Y32_N26
\inst|inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Mux0~1_combout\ = (\Enable~combout\ & (!\inst|inst3~0_combout\ & !\inst1|WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst|inst3~0_combout\,
	datad => \inst1|WideOr1~combout\,
	combout => \inst|inst|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y32_N20
\inst5|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~4_combout\ = (((!\inst3|Q\(4) & \inst5|Result[7]~0_combout\)) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux3~4_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X20_Y32_N9
\inst3|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X20_Y32_N23
\inst2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X20_Y32_N5
\inst3|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X20_Y32_N3
\inst3|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X20_Y32_N1
\inst3|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(0));

-- Location: LCCOMB_X20_Y32_N4
\inst5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (!\inst5|Add0~3\)))) # (GND)
-- \inst5|Add0~5\ = CARRY((\inst2|Q\(2) & ((\inst3|Q\(2)) # (!\inst5|Add0~3\))) # (!\inst2|Q\(2) & (\inst3|Q\(2) & !\inst5|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X20_Y32_N6
\inst5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst3|Q\(3) & ((\inst2|Q\(3) & (\inst5|Add0~5\ & VCC)) # (!\inst2|Q\(3) & (!\inst5|Add0~5\)))) # (!\inst3|Q\(3) & ((\inst2|Q\(3) & (!\inst5|Add0~5\)) # (!\inst2|Q\(3) & ((\inst5|Add0~5\) # (GND)))))
-- \inst5|Add0~7\ = CARRY((\inst3|Q\(3) & (!\inst2|Q\(3) & !\inst5|Add0~5\)) # (!\inst3|Q\(3) & ((!\inst5|Add0~5\) # (!\inst2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X20_Y32_N8
\inst5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = ((\inst2|Q\(4) $ (\inst3|Q\(4) $ (!\inst5|Add0~7\)))) # (GND)
-- \inst5|Add0~9\ = CARRY((\inst2|Q\(4) & ((\inst3|Q\(4)) # (!\inst5|Add0~7\))) # (!\inst2|Q\(4) & (\inst3|Q\(4) & !\inst5|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X20_Y32_N16
\inst5|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = (\inst2|Q\(0) & ((GND) # (!\inst3|Q\(0)))) # (!\inst2|Q\(0) & (\inst3|Q\(0) $ (GND)))
-- \inst5|Add1~1\ = CARRY((\inst2|Q\(0)) # (!\inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X20_Y32_N18
\inst5|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst5|Add1~1\)) # (!\inst3|Q\(1) & (\inst5|Add1~1\ & VCC)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & ((\inst5|Add1~1\) # (GND))) # (!\inst3|Q\(1) & (!\inst5|Add1~1\))))
-- \inst5|Add1~3\ = CARRY((\inst2|Q\(1) & (\inst3|Q\(1) & !\inst5|Add1~1\)) # (!\inst2|Q\(1) & ((\inst3|Q\(1)) # (!\inst5|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X20_Y32_N22
\inst5|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst3|Q\(3) & ((\inst2|Q\(3) & (!\inst5|Add1~5\)) # (!\inst2|Q\(3) & ((\inst5|Add1~5\) # (GND))))) # (!\inst3|Q\(3) & ((\inst2|Q\(3) & (\inst5|Add1~5\ & VCC)) # (!\inst2|Q\(3) & (!\inst5|Add1~5\))))
-- \inst5|Add1~7\ = CARRY((\inst3|Q\(3) & ((!\inst5|Add1~5\) # (!\inst2|Q\(3)))) # (!\inst3|Q\(3) & (!\inst2|Q\(3) & !\inst5|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X20_Y32_N24
\inst5|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = ((\inst2|Q\(4) $ (\inst3|Q\(4) $ (\inst5|Add1~7\)))) # (GND)
-- \inst5|Add1~9\ = CARRY((\inst2|Q\(4) & ((!\inst5|Add1~7\) # (!\inst3|Q\(4)))) # (!\inst2|Q\(4) & (!\inst3|Q\(4) & !\inst5|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X19_Y32_N2
\inst5|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~5_combout\ = (\inst|inst|Mux0~1_combout\) # ((\inst5|Result[7]~0_combout\ & ((\inst5|Add1~8_combout\))) # (!\inst5|Result[7]~0_combout\ & (\inst5|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~0_combout\,
	datab => \inst|inst|Mux0~1_combout\,
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|Mux3~5_combout\);

-- Location: LCCOMB_X19_Y32_N0
\inst5|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~6_combout\ = (\inst5|Mux3~8_combout\ & ((\inst|inst1|Mux1~1_combout\) # ((\inst5|Mux3~4_combout\ & \inst5|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux1~1_combout\,
	datab => \inst5|Mux3~8_combout\,
	datac => \inst5|Mux3~4_combout\,
	datad => \inst5|Mux3~5_combout\,
	combout => \inst5|Mux3~6_combout\);

-- Location: LCCOMB_X19_Y32_N10
\inst5|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~7_combout\ = (\inst3|Q\(4) & (\inst5|Mux3~6_combout\ $ (((\inst5|Result[7]~1_combout\ & \inst2|Q\(4)))))) # (!\inst3|Q\(4) & (\inst5|Mux3~6_combout\ & ((\inst2|Q\(4)) # (!\inst5|Result[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst5|Result[7]~1_combout\,
	datac => \inst2|Q\(4),
	datad => \inst5|Mux3~6_combout\,
	combout => \inst5|Mux3~7_combout\);

-- Location: LCCOMB_X19_Y32_N8
\inst5|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~9_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst3|Q\(4)) # ((\inst2|Q\(4))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst|inst1|Mux0~0_combout\,
	datac => \inst2|Q\(4),
	datad => \inst5|Mux3~7_combout\,
	combout => \inst5|Mux3~9_combout\);

-- Location: LCFF_X19_Y32_N9
\inst5|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux3~9_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X20_Y32_N29
\inst2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X20_Y32_N13
\inst3|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(6));

-- Location: LCCOMB_X18_Y32_N18
\inst5|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~4_combout\ = (((!\inst3|Q\(6) & \inst5|Result[7]~0_combout\)) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datac => \inst|inst|Mux0~1_combout\,
	datad => \inst5|Result[7]~0_combout\,
	combout => \inst5|Mux1~4_combout\);

-- Location: LCCOMB_X18_Y32_N14
\inst5|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~8_combout\ = (\inst5|Result[7]~1_combout\ & (((\inst|inst1|Mux1~1_combout\)))) # (!\inst5|Result[7]~1_combout\ & (((!\inst3|Q\(6) & !\inst2|Q\(6))) # (!\inst|inst1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux1~8_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X20_Y32_N27
\inst2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(5));

-- Location: LCCOMB_X20_Y32_N12
\inst5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (!\inst5|Add0~11\)))) # (GND)
-- \inst5|Add0~13\ = CARRY((\inst3|Q\(6) & ((\inst2|Q\(6)) # (!\inst5|Add0~11\))) # (!\inst3|Q\(6) & (\inst2|Q\(6) & !\inst5|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X20_Y32_N26
\inst5|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (!\inst5|Add1~9\)) # (!\inst2|Q\(5) & ((\inst5|Add1~9\) # (GND))))) # (!\inst3|Q\(5) & ((\inst2|Q\(5) & (\inst5|Add1~9\ & VCC)) # (!\inst2|Q\(5) & (!\inst5|Add1~9\))))
-- \inst5|Add1~11\ = CARRY((\inst3|Q\(5) & ((!\inst5|Add1~9\) # (!\inst2|Q\(5)))) # (!\inst3|Q\(5) & (!\inst2|Q\(5) & !\inst5|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X20_Y32_N28
\inst5|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (\inst5|Add1~11\)))) # (GND)
-- \inst5|Add1~13\ = CARRY((\inst3|Q\(6) & (\inst2|Q\(6) & !\inst5|Add1~11\)) # (!\inst3|Q\(6) & ((\inst2|Q\(6)) # (!\inst5|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X19_Y32_N24
\inst5|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~5_combout\ = (\inst|inst|Mux0~1_combout\) # ((\inst5|Result[7]~0_combout\ & ((\inst5|Add1~12_combout\))) # (!\inst5|Result[7]~0_combout\ & (\inst5|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~0_combout\,
	datab => \inst|inst|Mux0~1_combout\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|Add1~12_combout\,
	combout => \inst5|Mux1~5_combout\);

-- Location: LCCOMB_X18_Y32_N8
\inst5|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~6_combout\ = (\inst5|Mux1~8_combout\ & ((\inst|inst1|Mux1~1_combout\) # ((\inst5|Mux1~4_combout\ & \inst5|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux1~1_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux1~8_combout\,
	datad => \inst5|Mux1~5_combout\,
	combout => \inst5|Mux1~6_combout\);

-- Location: LCCOMB_X18_Y32_N30
\inst5|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~7_combout\ = (\inst3|Q\(6) & (\inst5|Mux1~6_combout\ $ (((\inst2|Q\(6) & \inst5|Result[7]~1_combout\))))) # (!\inst3|Q\(6) & (\inst5|Mux1~6_combout\ & ((\inst2|Q\(6)) # (!\inst5|Result[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datac => \inst5|Mux1~6_combout\,
	datad => \inst5|Result[7]~1_combout\,
	combout => \inst5|Mux1~7_combout\);

-- Location: LCCOMB_X18_Y32_N16
\inst5|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~9_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst2|Q\(6)) # ((\inst3|Q\(6))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux0~0_combout\,
	datab => \inst2|Q\(6),
	datac => \inst3|Q\(6),
	datad => \inst5|Mux1~7_combout\,
	combout => \inst5|Mux1~9_combout\);

-- Location: LCFF_X18_Y32_N17
\inst5|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux1~9_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(6));

-- Location: LCCOMB_X21_Y32_N20
\inst5|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~3_combout\ = ((\inst5|Result[7]~0_combout\) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(5),
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y32_N12
\inst5|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = (\inst5|Result[7]~0_combout\ & ((\inst5|Add1~10_combout\))) # (!\inst5|Result[7]~0_combout\ & (\inst5|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst5|Add1~10_combout\,
	combout => \inst5|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y32_N6
\inst5|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~2_combout\ = (\inst|inst1|Mux1~1_combout\ & (\inst5|Mux2~0_combout\)) # (!\inst|inst1|Mux1~1_combout\ & ((\inst|inst|Mux0~1_combout\ & (\inst5|Mux2~0_combout\)) # (!\inst|inst|Mux0~1_combout\ & ((\inst5|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux2~0_combout\,
	datab => \inst|inst1|Mux1~1_combout\,
	datac => \inst|inst|Mux0~1_combout\,
	datad => \inst5|Mux2~1_combout\,
	combout => \inst5|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y32_N26
\inst5|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~4_combout\ = (\inst5|Result[7]~1_combout\ & (\inst5|Mux2~0_combout\)) # (!\inst5|Result[7]~1_combout\ & (((\inst5|Mux2~3_combout\ & \inst5|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux2~0_combout\,
	datab => \inst5|Result[7]~1_combout\,
	datac => \inst5|Mux2~3_combout\,
	datad => \inst5|Mux2~2_combout\,
	combout => \inst5|Mux2~4_combout\);

-- Location: LCCOMB_X21_Y32_N16
\inst5|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~5_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst3|Q\(5)) # ((\inst2|Q\(5))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datac => \inst|inst1|Mux0~0_combout\,
	datad => \inst5|Mux2~4_combout\,
	combout => \inst5|Mux2~5_combout\);

-- Location: LCFF_X21_Y32_N17
\inst5|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux2~5_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(5));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X19_Y32_N19
\inst2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(7));

-- Location: LCCOMB_X18_Y32_N4
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst3|Q\(7) & ((\inst2|Q\(7) & (\inst5|Result[7]~1_combout\ & !\inst|inst1|Mux1~1_combout\)) # (!\inst2|Q\(7) & (\inst5|Result[7]~1_combout\ $ (!\inst|inst1|Mux1~1_combout\))))) # (!\inst3|Q\(7) & (\inst5|Result[7]~1_combout\ $ 
-- (((!\inst|inst1|Mux1~1_combout\) # (!\inst2|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst2|Q\(7),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X20_Y32_N15
\inst3|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(7));

-- Location: LCCOMB_X20_Y32_N30
\inst5|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = \inst3|Q\(7) $ (\inst5|Add1~13\ $ (!\inst2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(7),
	datad => \inst2|Q\(7),
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\);

-- Location: LCCOMB_X19_Y32_N16
\inst5|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst|inst|Mux0~1_combout\ & (((\inst5|Mux0~0_combout\)))) # (!\inst|inst|Mux0~1_combout\ & (((\inst5|Add1~14_combout\)) # (!\inst5|Result[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~0_combout\,
	datab => \inst|inst|Mux0~1_combout\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Add1~14_combout\,
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y32_N14
\inst5|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = \inst3|Q\(7) $ (\inst5|Add0~13\ $ (\inst2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(7),
	datad => \inst2|Q\(7),
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\);

-- Location: LCCOMB_X19_Y32_N18
\inst5|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\inst5|Result[7]~0_combout\) # ((\inst|inst|Mux0~1_combout\ & (!\inst2|Q\(7))) # (!\inst|inst|Mux0~1_combout\ & ((\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~0_combout\,
	datab => \inst|inst|Mux0~1_combout\,
	datac => \inst2|Q\(7),
	datad => \inst5|Add0~14_combout\,
	combout => \inst5|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y32_N22
\inst5|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~3_combout\ = (\inst5|Result[7]~1_combout\ & (((\inst5|Mux0~0_combout\)))) # (!\inst5|Result[7]~1_combout\ & ((\inst|inst1|Mux1~1_combout\ & (\inst5|Mux0~0_combout\)) # (!\inst|inst1|Mux1~1_combout\ & ((\inst5|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~1_combout\,
	datab => \inst|inst1|Mux1~1_combout\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Mux0~2_combout\,
	combout => \inst5|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y32_N12
\inst5|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~4_combout\ = (\inst5|Mux0~3_combout\ & ((\inst5|Result[7]~1_combout\) # ((\inst|inst1|Mux1~1_combout\) # (\inst5|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result[7]~1_combout\,
	datab => \inst|inst1|Mux1~1_combout\,
	datac => \inst5|Mux0~1_combout\,
	datad => \inst5|Mux0~3_combout\,
	combout => \inst5|Mux0~4_combout\);

-- Location: LCCOMB_X19_Y32_N14
\inst5|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~5_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst3|Q\(7)) # ((\inst2|Q\(7))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst2|Q\(7),
	datac => \inst|inst1|Mux0~0_combout\,
	datad => \inst5|Mux0~4_combout\,
	combout => \inst5|Mux0~5_combout\);

-- Location: LCFF_X19_Y32_N15
\inst5|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux0~5_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(7));

-- Location: LCCOMB_X37_Y35_N0
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst5|Result\(7) & (\inst5|Result\(6) & (\inst5|Result\(4) $ (!\inst5|Result\(5))))) # (!\inst5|Result\(7) & (!\inst5|Result\(5) & (\inst5|Result\(4) $ (\inst5|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datab => \inst5|Result\(6),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(7),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y35_N18
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst5|Result\(6) & (!\inst5|Result\(7) & (\inst5|Result\(4) $ (\inst5|Result\(5))))) # (!\inst5|Result\(6) & (((\inst5|Result\(5) & \inst5|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datab => \inst5|Result\(6),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(7),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y35_N8
\inst7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (!\inst5|Result\(4) & (\inst5|Result\(5) & (\inst5|Result\(6) $ (!\inst5|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datab => \inst5|Result\(6),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(7),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y35_N2
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst5|Result\(4) & (\inst5|Result\(5) $ (!\inst5|Result\(6)))) # (!\inst5|Result\(4) & (!\inst5|Result\(5) & \inst5|Result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(6),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y35_N16
\inst7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst5|Result\(4)) # ((!\inst5|Result\(5) & \inst5|Result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(6),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y35_N22
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst5|Result\(5) & ((\inst5|Result\(6) & ((\inst5|Result\(4)) # (\inst5|Result\(7)))) # (!\inst5|Result\(6) & ((!\inst5|Result\(7)))))) # (!\inst5|Result\(5) & (\inst5|Result\(4) & ((\inst5|Result\(7)) # (!\inst5|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datab => \inst5|Result\(6),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(7),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y35_N12
\inst7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst5|Result\(4) & (\inst5|Result\(6) $ ((\inst5|Result\(5))))) # (!\inst5|Result\(4) & ((\inst5|Result\(6)) # ((\inst5|Result\(5)) # (\inst5|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(4),
	datab => \inst5|Result\(6),
	datac => \inst5|Result\(5),
	datad => \inst5|Result\(7),
	combout => \inst7|Mux6~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X20_Y32_N7
\inst3|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(3));

-- Location: LCCOMB_X18_Y32_N2
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst2|Q\(3) & ((\inst3|Q\(3) & (\inst5|Result[7]~1_combout\ & !\inst|inst1|Mux1~1_combout\)) # (!\inst3|Q\(3) & (\inst5|Result[7]~1_combout\ $ (!\inst|inst1|Mux1~1_combout\))))) # (!\inst2|Q\(3) & (\inst5|Result[7]~1_combout\ $ 
-- (((!\inst|inst1|Mux1~1_combout\) # (!\inst3|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y32_N6
\inst5|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = (\inst5|Result[7]~0_combout\ & (\inst5|Add1~6_combout\)) # (!\inst5|Result[7]~0_combout\ & ((\inst5|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~6_combout\,
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst5|Add0~6_combout\,
	combout => \inst5|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y32_N20
\inst5|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~2_combout\ = (\inst|inst1|Mux1~1_combout\ & (\inst5|Mux4~0_combout\)) # (!\inst|inst1|Mux1~1_combout\ & ((\inst|inst|Mux0~1_combout\ & (\inst5|Mux4~0_combout\)) # (!\inst|inst|Mux0~1_combout\ & ((\inst5|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux1~1_combout\,
	datab => \inst5|Mux4~0_combout\,
	datac => \inst|inst|Mux0~1_combout\,
	datad => \inst5|Mux4~1_combout\,
	combout => \inst5|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y32_N0
\inst5|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~4_combout\ = (\inst5|Result[7]~1_combout\ & (((\inst5|Mux4~0_combout\)))) # (!\inst5|Result[7]~1_combout\ & (\inst5|Mux4~3_combout\ & ((\inst5|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux4~3_combout\,
	datab => \inst5|Mux4~0_combout\,
	datac => \inst5|Mux4~2_combout\,
	datad => \inst5|Result[7]~1_combout\,
	combout => \inst5|Mux4~4_combout\);

-- Location: LCCOMB_X18_Y32_N26
\inst5|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~5_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst3|Q\(3)) # ((\inst2|Q\(3))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux0~0_combout\,
	datab => \inst3|Q\(3),
	datac => \inst2|Q\(3),
	datad => \inst5|Mux4~4_combout\,
	combout => \inst5|Mux4~5_combout\);

-- Location: LCFF_X18_Y32_N27
\inst5|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux4~5_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(3));

-- Location: LCCOMB_X21_Y32_N14
\inst5|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~8_combout\ = (\inst5|Result[7]~1_combout\ & (((\inst|inst1|Mux1~1_combout\)))) # (!\inst5|Result[7]~1_combout\ & (((!\inst2|Q\(2) & !\inst3|Q\(2))) # (!\inst|inst1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst5|Result[7]~1_combout\,
	datac => \inst3|Q\(2),
	datad => \inst|inst1|Mux1~1_combout\,
	combout => \inst5|Mux5~8_combout\);

-- Location: LCCOMB_X21_Y32_N24
\inst5|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~4_combout\ = (((!\inst3|Q\(2) & \inst5|Result[7]~0_combout\)) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux5~4_combout\);

-- Location: LCCOMB_X21_Y32_N30
\inst5|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~5_combout\ = (\inst|inst|Mux0~1_combout\) # ((\inst5|Result[7]~0_combout\ & (\inst5|Add1~4_combout\)) # (!\inst5|Result[7]~0_combout\ & ((\inst5|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~4_combout\,
	datab => \inst5|Add0~4_combout\,
	datac => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux5~5_combout\);

-- Location: LCCOMB_X21_Y32_N0
\inst5|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~6_combout\ = (\inst5|Mux5~8_combout\ & ((\inst|inst1|Mux1~1_combout\) # ((\inst5|Mux5~4_combout\ & \inst5|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Mux1~1_combout\,
	datab => \inst5|Mux5~8_combout\,
	datac => \inst5|Mux5~4_combout\,
	datad => \inst5|Mux5~5_combout\,
	combout => \inst5|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y32_N18
\inst5|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~7_combout\ = (\inst2|Q\(2) & (\inst5|Mux5~6_combout\ $ (((\inst3|Q\(2) & \inst5|Result[7]~1_combout\))))) # (!\inst2|Q\(2) & (\inst5|Mux5~6_combout\ & ((\inst3|Q\(2)) # (!\inst5|Result[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst5|Mux5~6_combout\,
	combout => \inst5|Mux5~7_combout\);

-- Location: LCCOMB_X21_Y32_N2
\inst5|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~9_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst2|Q\(2)) # ((\inst3|Q\(2))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datac => \inst|inst1|Mux0~0_combout\,
	datad => \inst5|Mux5~7_combout\,
	combout => \inst5|Mux5~9_combout\);

-- Location: LCFF_X21_Y32_N3
\inst5|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux5~9_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(2));

-- Location: LCCOMB_X18_Y32_N22
\inst5|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~3_combout\ = ((\inst5|Result[7]~0_combout\) # (!\inst|inst|Mux0~1_combout\)) # (!\inst2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst5|Result[7]~0_combout\,
	datad => \inst|inst|Mux0~1_combout\,
	combout => \inst5|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y32_N4
\inst5|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = (\inst5|Result[7]~0_combout\ & ((\inst5|Add1~2_combout\))) # (!\inst5|Result[7]~0_combout\ & (\inst5|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datac => \inst5|Add1~2_combout\,
	datad => \inst5|Result[7]~0_combout\,
	combout => \inst5|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y32_N28
\inst5|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~2_combout\ = (\inst|inst1|Mux1~1_combout\ & (\inst5|Mux6~0_combout\)) # (!\inst|inst1|Mux1~1_combout\ & ((\inst|inst|Mux0~1_combout\ & (\inst5|Mux6~0_combout\)) # (!\inst|inst|Mux0~1_combout\ & ((\inst5|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~0_combout\,
	datab => \inst|inst1|Mux1~1_combout\,
	datac => \inst|inst|Mux0~1_combout\,
	datad => \inst5|Mux6~1_combout\,
	combout => \inst5|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y32_N12
\inst5|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~4_combout\ = (\inst5|Result[7]~1_combout\ & (\inst5|Mux6~0_combout\)) # (!\inst5|Result[7]~1_combout\ & (((\inst5|Mux6~3_combout\ & \inst5|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~0_combout\,
	datab => \inst5|Mux6~3_combout\,
	datac => \inst5|Result[7]~1_combout\,
	datad => \inst5|Mux6~2_combout\,
	combout => \inst5|Mux6~4_combout\);

-- Location: LCCOMB_X18_Y32_N24
\inst5|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~5_combout\ = (\inst|inst1|Mux0~0_combout\ & ((\inst2|Q\(1)) # ((\inst3|Q\(1))))) # (!\inst|inst1|Mux0~0_combout\ & (((\inst5|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datac => \inst|inst1|Mux0~0_combout\,
	datad => \inst5|Mux6~4_combout\,
	combout => \inst5|Mux6~5_combout\);

-- Location: LCFF_X18_Y32_N25
\inst5|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux6~5_combout\,
	aclr => \res~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(1));

-- Location: LCCOMB_X23_Y32_N30
\inst|inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux3~0_combout\ = (\inst1|WideOr2~0_combout\ & (\Enable~combout\ & (\inst1|WideOr1~combout\ & \inst|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \Enable~combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y32_N4
\inst|inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Mux2~0_combout\ = (!\inst|inst3~0_combout\ & (\Enable~combout\ & (\inst1|WideOr1~combout\ & !\inst1|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~0_combout\,
	datab => \Enable~combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst1|WideOr2~0_combout\,
	combout => \inst|inst|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y32_N6
\inst|inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Mux1~0_combout\ = (\inst1|WideOr2~0_combout\ & (\Enable~combout\ & (!\inst1|WideOr1~combout\ & !\inst|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \Enable~combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y32_N20
\inst5|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~8_combout\ = (\inst|inst|Mux2~0_combout\ & (((\inst5|Add1~0_combout\ & !\inst|inst|Mux1~0_combout\)))) # (!\inst|inst|Mux2~0_combout\ & (!\inst2|Q\(0) & ((\inst|inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst5|Add1~0_combout\,
	datac => \inst|inst|Mux2~0_combout\,
	datad => \inst|inst|Mux1~0_combout\,
	combout => \inst5|Mux7~8_combout\);

-- Location: LCCOMB_X24_Y32_N30
\inst5|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~7_combout\ = ((\inst1|WideOr2~0_combout\) # (!\inst|inst3~0_combout\)) # (!\Enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst1|WideOr2~0_combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst5|Mux7~7_combout\);

-- Location: LCCOMB_X23_Y32_N26
\inst5|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~9_combout\ = (!\inst|inst|Mux0~0_combout\ & (!\inst|inst1|Mux3~0_combout\ & (\inst5|Mux7~8_combout\ & \inst5|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Mux0~0_combout\,
	datab => \inst|inst1|Mux3~0_combout\,
	datac => \inst5|Mux7~8_combout\,
	datad => \inst5|Mux7~7_combout\,
	combout => \inst5|Mux7~9_combout\);

-- Location: LCCOMB_X23_Y32_N24
\inst5|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = ((\inst|inst3~0_combout\ $ (!\inst1|WideOr1~combout\)) # (!\inst1|WideOr2~0_combout\)) # (!\Enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~0_combout\,
	datab => \Enable~combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst1|WideOr2~0_combout\,
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y32_N24
\inst5|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~5_combout\ = (\Enable~combout\ & (\inst1|WideOr2~0_combout\ $ (((\inst|inst3~0_combout\) # (\inst1|WideOr1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \inst|inst3~0_combout\,
	datac => \Enable~combout\,
	datad => \inst1|WideOr1~combout\,
	combout => \inst5|Mux7~5_combout\);

-- Location: LCCOMB_X23_Y32_N0
\inst|inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux2~0_combout\ = (\Enable~combout\ & (!\inst1|WideOr2~0_combout\ & (\inst1|WideOr1~combout\ & \inst|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y32_N14
\inst5|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~3_combout\ = (\inst|inst1|Mux2~0_combout\ & (\inst2|Q\(0) & (\inst3|Q\(0) & !\inst|inst1|Mux0~0_combout\))) # (!\inst|inst1|Mux2~0_combout\ & (\inst|inst1|Mux0~0_combout\ & ((\inst2|Q\(0)) # (\inst3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst|inst1|Mux2~0_combout\,
	datac => \inst3|Q\(0),
	datad => \inst|inst1|Mux0~0_combout\,
	combout => \inst5|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y32_N12
\inst|inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Mux0~0_combout\ = (\Enable~combout\ & (!\inst1|WideOr2~0_combout\ & (!\inst1|WideOr1~combout\ & !\inst|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst1|WideOr1~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y32_N8
\inst5|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~4_combout\ = (!\inst|inst1|Mux3~0_combout\ & (\inst5|Mux7~3_combout\ & !\inst|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|Mux3~0_combout\,
	datac => \inst5|Mux7~3_combout\,
	datad => \inst|inst|Mux0~0_combout\,
	combout => \inst5|Mux7~4_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X20_Y32_N17
\inst2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \res~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(0));

-- Location: LCCOMB_X23_Y32_N18
\inst5|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = (\inst2|Q\(0) & ((\inst3|Q\(0)) # (!\inst|inst|Mux0~0_combout\))) # (!\inst2|Q\(0) & (\inst3|Q\(0) & !\inst|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(0),
	datac => \inst3|Q\(0),
	datad => \inst|inst|Mux0~0_combout\,
	combout => \inst5|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y32_N28
\inst5|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~2_combout\ = (\inst|inst|Mux0~0_combout\ & (!\inst|inst1|Mux3~0_combout\ & ((!\inst5|Mux7~1_combout\)))) # (!\inst|inst|Mux0~0_combout\ & ((\inst|inst1|Mux3~0_combout\ & ((!\inst5|Mux7~1_combout\))) # (!\inst|inst1|Mux3~0_combout\ & 
-- (\inst5|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Mux0~0_combout\,
	datab => \inst|inst1|Mux3~0_combout\,
	datac => \inst5|Result\(0),
	datad => \inst5|Mux7~1_combout\,
	combout => \inst5|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y32_N22
\inst5|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~6_combout\ = (\inst5|Mux7~5_combout\ & (\inst|inst3~0_combout\ & (\inst5|Mux7~4_combout\))) # (!\inst5|Mux7~5_combout\ & (((\inst5|Mux7~4_combout\) # (\inst5|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~0_combout\,
	datab => \inst5|Mux7~5_combout\,
	datac => \inst5|Mux7~4_combout\,
	datad => \inst5|Mux7~2_combout\,
	combout => \inst5|Mux7~6_combout\);

-- Location: LCCOMB_X23_Y32_N16
\inst5|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~10_combout\ = (\inst5|Mux7~0_combout\ & (((\inst5|Mux7~9_combout\) # (\inst5|Mux7~6_combout\)))) # (!\inst5|Mux7~0_combout\ & (\inst5|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~0_combout\,
	datab => \inst5|Mux7~9_combout\,
	datac => \inst5|Mux7~0_combout\,
	datad => \inst5|Mux7~6_combout\,
	combout => \inst5|Mux7~10_combout\);

-- Location: LCFF_X23_Y32_N17
\inst5|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst5|Mux7~10_combout\,
	aclr => \res~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Result\(0));

-- Location: LCCOMB_X24_Y32_N0
\inst8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst5|Result\(3) & (\inst5|Result\(2) & (\inst5|Result\(1) $ (!\inst5|Result\(0))))) # (!\inst5|Result\(3) & (!\inst5|Result\(1) & (\inst5|Result\(2) $ (\inst5|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(1),
	datab => \inst5|Result\(3),
	datac => \inst5|Result\(2),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y32_N26
\inst8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst5|Result\(3) & (\inst5|Result\(1) & (!\inst5|Result\(2)))) # (!\inst5|Result\(3) & (\inst5|Result\(2) & (\inst5|Result\(1) $ (\inst5|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(1),
	datab => \inst5|Result\(3),
	datac => \inst5|Result\(2),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y32_N12
\inst8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst5|Result\(1) & (!\inst5|Result\(0) & (\inst5|Result\(3) $ (!\inst5|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(1),
	datab => \inst5|Result\(3),
	datac => \inst5|Result\(2),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y32_N2
\inst8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst5|Result\(2) & (\inst5|Result\(1) $ (!\inst5|Result\(0)))) # (!\inst5|Result\(2) & (!\inst5|Result\(1) & \inst5|Result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Result\(2),
	datac => \inst5|Result\(1),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y32_N16
\inst8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst5|Result\(0)) # ((\inst5|Result\(2) & !\inst5|Result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Result\(2),
	datac => \inst5|Result\(1),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y32_N10
\inst8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst5|Result\(1) & ((\inst5|Result\(3) & (\inst5|Result\(2))) # (!\inst5|Result\(3) & ((\inst5|Result\(0)) # (!\inst5|Result\(2)))))) # (!\inst5|Result\(1) & (\inst5|Result\(0) & ((\inst5|Result\(3)) # (!\inst5|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(1),
	datab => \inst5|Result\(3),
	datac => \inst5|Result\(2),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y32_N28
\inst8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst5|Result\(1) & (((!\inst5|Result\(0)) # (!\inst5|Result\(2))))) # (!\inst5|Result\(1) & ((\inst5|Result\(2)) # ((\inst5|Result\(3) & !\inst5|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Result\(1),
	datab => \inst5|Result\(3),
	datac => \inst5|Result\(2),
	datad => \inst5|Result\(0),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y32_N12
\inst1|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr3~combout\ = (\inst1|yfsm.s3~regout\) # ((\inst1|yfsm.s2~regout\) # (\inst1|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|yfsm.s3~regout\,
	datac => \inst1|yfsm.s2~regout\,
	datad => \inst1|yfsm.s5~regout\,
	combout => \inst1|WideOr3~combout\);

-- Location: LCCOMB_X21_Y32_N28
\inst6|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~8_combout\ = (!\inst1|WideOr3~combout\ & ((\inst1|yfsm.s6~regout\) # ((\inst1|yfsm.s1~regout\) # (\inst1|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s6~regout\,
	datab => \inst1|yfsm.s1~regout\,
	datac => \inst1|WideOr3~combout\,
	datad => \inst1|yfsm.s4~regout\,
	combout => \inst6|Mux0~8_combout\);

-- Location: LCCOMB_X21_Y32_N8
\inst1|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~combout\ = (\inst1|yfsm.s6~regout\) # ((\inst1|yfsm.s4~regout\) # (\inst1|yfsm.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s6~regout\,
	datab => \inst1|yfsm.s4~regout\,
	datad => \inst1|yfsm.s1~regout\,
	combout => \inst1|WideOr4~combout\);

-- Location: LCCOMB_X21_Y32_N22
\inst6|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~9_combout\ = (!\inst1|WideOr4~combout\ & ((\inst1|yfsm.s5~regout\) # ((\inst1|yfsm.s3~regout\) # (\inst1|yfsm.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s5~regout\,
	datab => \inst1|yfsm.s3~regout\,
	datac => \inst1|WideOr4~combout\,
	datad => \inst1|yfsm.s2~regout\,
	combout => \inst6|Mux0~9_combout\);

-- Location: LCCOMB_X21_Y32_N4
\inst6|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~4_combout\ = (\inst1|yfsm.s5~regout\) # ((\inst1|yfsm.s3~regout\) # ((\inst1|WideOr4~combout\) # (\inst1|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|yfsm.s5~regout\,
	datab => \inst1|yfsm.s3~regout\,
	datac => \inst1|WideOr4~combout\,
	datad => \inst1|yfsm.s2~regout\,
	combout => \inst6|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y32_N2
\inst|inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux1~0_combout\ = (\inst1|WideOr2~0_combout\ & (\inst|inst3~0_combout\ & (\Enable~combout\ & !\inst1|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \inst|inst3~0_combout\,
	datac => \Enable~combout\,
	datad => \inst1|WideOr1~combout\,
	combout => \inst|inst1|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y32_N2
\inst|inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Mux3~0_combout\ = (((\inst|inst3~0_combout\) # (!\Enable~combout\)) # (!\inst1|WideOr1~combout\)) # (!\inst1|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \inst1|WideOr1~combout\,
	datac => \Enable~combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst|Mux3~0_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[1]~I\ : cycloneii_io
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
	datain => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[2]~I\ : cycloneii_io
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
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[3]~I\ : cycloneii_io
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
	datain => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[4]~I\ : cycloneii_io
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
	datain => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(4));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[5]~I\ : cycloneii_io
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
	datain => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(5));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[6]~I\ : cycloneii_io
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
	datain => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(6));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\First4[7]~I\ : cycloneii_io
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
	datain => \inst7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_First4(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[7]~I\ : cycloneii_io
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
	datain => \inst5|Result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(7));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[6]~I\ : cycloneii_io
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
	datain => \inst5|Result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[5]~I\ : cycloneii_io
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
	datain => \inst5|Result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(5));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[4]~I\ : cycloneii_io
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
	datain => \inst5|Result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(4));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[3]~I\ : cycloneii_io
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
	datain => \inst5|Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[2]~I\ : cycloneii_io
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
	datain => \inst5|Result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[1]~I\ : cycloneii_io
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
	datain => \inst5|Result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Results[0]~I\ : cycloneii_io
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
	datain => \inst5|Result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Results(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[1]~I\ : cycloneii_io
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
	datain => \inst8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[2]~I\ : cycloneii_io
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
	datain => \inst8|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[3]~I\ : cycloneii_io
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
	datain => \inst8|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[4]~I\ : cycloneii_io
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
	datain => \inst8|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(4));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[5]~I\ : cycloneii_io
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
	datain => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[6]~I\ : cycloneii_io
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
	datain => \inst8|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(6));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Last4[7]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Last4(7));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[7]~I\ : cycloneii_io
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
	datain => \inst5|ALT_INV_Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(7));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[1]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(1));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[2]~I\ : cycloneii_io
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
	padio => ww_StudenN(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[3]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[4]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(4));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[5]~I\ : cycloneii_io
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
	datain => \inst1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[6]~I\ : cycloneii_io
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
	datain => \inst6|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(6));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\StudenN[7]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_StudenN(7));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Student[3]~I\ : cycloneii_io
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
	padio => ww_Student(3));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Student[2]~I\ : cycloneii_io
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
	padio => ww_Student(2));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Student[1]~I\ : cycloneii_io
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
	datain => \inst1|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Student(1));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Student[0]~I\ : cycloneii_io
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
	datain => \inst1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Student(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cycloneii_io
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
	datain => \inst|inst1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cycloneii_io
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
	datain => \inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[2]~I\ : cycloneii_io
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
	datain => \inst|inst1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[3]~I\ : cycloneii_io
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
	datain => \inst|inst1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[4]~I\ : cycloneii_io
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
	datain => \inst|inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(4));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[5]~I\ : cycloneii_io
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
	datain => \inst|inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(5));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[6]~I\ : cycloneii_io
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
	datain => \inst|inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[7]~I\ : cycloneii_io
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
	datain => \inst|inst|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(7));
END structure;


