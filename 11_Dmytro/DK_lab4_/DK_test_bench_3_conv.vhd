-- Vhdl test bench created from schematic D:\Xilinx\DK_lab4_\DK_Conv_Scheme.sch - Sat Oct 15 23:25:58 2016
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
ENTITY DK_Conv_Scheme_DK_Conv_Scheme_sch_tb IS
END DK_Conv_Scheme_DK_Conv_Scheme_sch_tb;
ARCHITECTURE behavioral OF DK_Conv_Scheme_DK_Conv_Scheme_sch_tb IS 

   COMPONENT DK_Conv_Scheme
   PORT( DK_CLK	:	IN	STD_LOGIC; 
          DK_RESET	:	IN	STD_LOGIC; 
          DK_A	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_B	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_D	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_OUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL DK_CLK	:	STD_LOGIC;
   SIGNAL DK_RESET	:	STD_LOGIC;
   SIGNAL DK_A	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_B	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_D	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_OUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	constant clk_c : time := 10 ns;
		SIGNAL  buf:  integer := 0;
BEGIN

   UUT: DK_Conv_Scheme PORT MAP(
		DK_CLK => DK_CLK, 
		DK_RESET => DK_RESET, 
		DK_A => DK_A, 
		DK_B => DK_B, 
		DK_D => DK_D, 
		DK_OUT => DK_OUT
   );
CLC_process :process

	begin
	
	
	DK_CLK <= '0';
	wait for clk_c/2;
--
	DK_CLK <= '1';
	wait for clk_c/2;
	buf <= buf + 1;
	DK_A <= std_logic_vector(to_unsigned(buf,DK_A'length)); 
	DK_B <= std_logic_vector(to_unsigned(buf+3,DK_B'length)); 
	DK_D <= "0000000000000101";
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
