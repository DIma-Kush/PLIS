-- Vhdl test bench created from schematic D:\Xilinx\backups\6\AB_lab4\AB_conv_scheme.sch - Mon Nov 21 17:41:27 2016
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
ENTITY AB_conv_scheme_AB_conv_scheme_sch_tb IS
END AB_conv_scheme_AB_conv_scheme_sch_tb;
ARCHITECTURE behavioral OF AB_conv_scheme_AB_conv_scheme_sch_tb IS 

   COMPONENT AB_conv_scheme
   PORT( AB_const_5	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_A	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_B	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_C	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AB_D	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CE	:	IN	STD_LOGIC; 
          CLR	:	IN	STD_LOGIC; 
          AB_RES	:	OUT	STD_LOGIC_VECTOR (19 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL AB_const_5	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000101";
   SIGNAL AB_A	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL AB_B	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL AB_C	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL AB_D	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL CE	:	STD_LOGIC;
   SIGNAL CLR	:	STD_LOGIC;
   SIGNAL AB_RES	:	STD_LOGIC_VECTOR (19 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
constant clk_c : time := 10 ns;
		SIGNAL  buf:  integer := 0;
BEGIN

   UUT: AB_conv_scheme PORT MAP(
		AB_const_5 => AB_const_5, 
		AB_A => AB_A, 
		AB_B => AB_B, 
		AB_C => AB_C, 
		AB_D => AB_D, 
		CE => CE, 
		CLR => CLR, 
		AB_RES => AB_RES, 
		CLK => CLK
   );
RESET: process
begin
CLR <= '1';
wait for clk_c;
CLR <= '0';
wait;
end process;

LOADABLE: process
begin 
CE <= '0';
wait for 45ns;
CE <= '1';
wait;
end process;
CLK_process :process
	begin
	buf <= buf + 1;
	AB_A <= std_logic_vector(to_unsigned(buf+1,AB_A'length)); 
	AB_B <= std_logic_vector(to_unsigned(buf+2,AB_B'length)); 
	AB_C <= std_logic_vector(to_unsigned(buf+3,AB_C'length));
	AB_D <= std_logic_vector(to_unsigned(buf+4,AB_D'length));
	CLK <= '0';
	wait for clk_c/2;
	CLK <= '1';
	wait for clk_c/2;
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
