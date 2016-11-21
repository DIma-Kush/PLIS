-- Vhdl test bench created from schematic C:\Users\Dima\Desktop\AB_lab4\AB_not_conv_scheme.sch - Mon Nov 21 23:28:48 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY AB_not_conv_scheme_AB_not_conv_scheme_sch_tb IS
END AB_not_conv_scheme_AB_not_conv_scheme_sch_tb;
ARCHITECTURE behavioral OF AB_not_conv_scheme_AB_not_conv_scheme_sch_tb IS 

   COMPONENT AB_not_conv_scheme
   PORT( AB_A	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_B	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_C	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_D	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_const_5	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_RES	:	OUT	STD_LOGIC_VECTOR (19 DOWNTO 0); 
          CU	:	OUT	STD_LOGIC_VECTOR (19 DOWNTO 0); 
          ZERO	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0) ; 
          CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL AB_A	:	STD_LOGIC_VECTOR (7 DOWNTO 0) ;
   SIGNAL AB_B	:	STD_LOGIC_VECTOR (7 DOWNTO 0) ;
   SIGNAL AB_C	:	STD_LOGIC_VECTOR (7 DOWNTO 0) ;
   SIGNAL AB_D	:	STD_LOGIC_VECTOR (7 DOWNTO 0) ;
   SIGNAL AB_const_5	:	STD_LOGIC_VECTOR (7 DOWNTO 0) :=x"05";
   SIGNAL AB_RES	:	STD_LOGIC_VECTOR (19 DOWNTO 0);
   SIGNAL CU	:	STD_LOGIC_VECTOR (19 DOWNTO 0);
   SIGNAL ZERO	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";
   SIGNAL CLK	:	STD_LOGIC;
constant clk_c : time := 1000 ns;
	SIGNAL  buf:  integer := 0;
BEGIN

   UUT: AB_not_conv_scheme PORT MAP(
		AB_A => AB_A, 
		AB_B => AB_B, 
		AB_C => AB_C, 
		AB_D => AB_D, 
		AB_const_5 => AB_const_5, 
		AB_RES => AB_RES, 
		CU => CU, 
		ZERO => ZERO, 
		CLK => CLK
   );
Data_process : process
	begin
	
	buf <= buf + 1;
	AB_A <= std_logic_vector(to_unsigned(buf+1,AB_A'length)); 
	AB_B <= std_logic_vector(to_unsigned(buf+2,AB_B'length)); 
	AB_C <= std_logic_vector(to_unsigned(buf+3,AB_C'length));
	AB_D <= std_logic_vector(to_unsigned(buf+4,AB_D'length));
	wait for 10.000000 us;
	end process;
CLC_process :process

	begin
	CLK <= '1';
	wait for clk_c/2;
		
	CLK <= '0';
	wait for clk_c/2;
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
