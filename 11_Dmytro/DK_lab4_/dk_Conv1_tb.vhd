-- Vhdl test bench created from schematic D:\Xilinx\DK_lab4_\DK_sch.sch - Sun Oct 16 14:08:18 2016
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
          DK_C	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_RESET	:	IN	STD_LOGIC; 
          DK_OUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL DK_CLK	:	STD_LOGIC;
   SIGNAL DK_C	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_RESET	:	STD_LOGIC;
   SIGNAL DK_OUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

   UUT: DK_sch PORT MAP(
		DK_CLK => DK_CLK, 
		DK_C => DK_C, 
		DK_RESET => DK_RESET, 
		DK_OUT => DK_OUT
   );
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
