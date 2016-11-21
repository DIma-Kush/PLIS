-- Vhdl test bench created from schematic D:\Xilinx\DK_lab4_\DK_sch.sch - Sun Oct 16 00:49:57 2016
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
ENTITY DK_sch_DK_sch_sch_tb IS
END DK_sch_DK_sch_sch_tb;
ARCHITECTURE behavioral OF DK_sch_DK_sch_sch_tb IS 

   COMPONENT DK_sch
   PORT( DK_CLK	:	IN	STD_LOGIC; 
          DK_RES	:	IN	STD_LOGIC; 
          DK_C	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_OUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL DK_CLK	:	STD_LOGIC;
   SIGNAL DK_RES	:	STD_LOGIC;
   SIGNAL DK_C	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_OUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
constant clk_c : time := 10 ns;
		SIGNAL  buf:  integer := 0;
BEGIN

   UUT: DK_sch PORT MAP(
		DK_CLK => DK_CLK, 
		DK_RES => DK_RES, 
		DK_C => DK_C, , 
		DK_OUT => DK_OUT
   );
CLC_process :process

	begin
	
	buf <= buf + 1;
	DK_C <= std_logic_vector(to_unsigned(buf,DK_C'length)); 
	
	DK_CLK <= '0';
	wait for clk_c/2;
--
	DK_CLK <= '1';
	wait for clk_c/2;
	----
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
