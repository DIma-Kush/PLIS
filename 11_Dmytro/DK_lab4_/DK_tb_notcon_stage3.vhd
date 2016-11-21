-- Vhdl test bench created from schematic D:\Xilinx\DK_lab4_\DK_sch.sch - Sun Oct 16 15:14:04 2016
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
   PORT( DK_C	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          CE	:	IN	STD_LOGIC; 
          C	:	IN	STD_LOGIC; 
          DK_D	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          CLR	:	IN	STD_LOGIC; 
          ZERO	:	IN	STD_LOGIC; 
          ONE	:	IN	STD_LOGIC; 
          DK_A	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_OUT	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL DK_C	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL CE	:	STD_LOGIC := '1';
   SIGNAL C	:	STD_LOGIC;
   SIGNAL DK_D	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL CLR	:	STD_LOGIC := '0' ;
   SIGNAL ZERO	:	STD_LOGIC := '0';
   SIGNAL ONE	:	STD_LOGIC := '1';
   SIGNAL DK_A	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_OUT	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
constant clk_c : time := 10 ns;
		SIGNAL  buf:  integer := 0;
BEGIN

   UUT: DK_sch PORT MAP(
		DK_C => DK_C, 
		CE => CE, 
		C => C, 
		DK_D => DK_D, 
		CLR => CLR, 
		ZERO => ZERO, 
		ONE => ONE, 
		DK_A => DK_A, 
		DK_OUT => DK_OUT
   );
CLC_process :process

	begin
			buf <= buf + 1;
	DK_C <= std_logic_vector(to_unsigned(5,DK_C'length)); 
	DK_D <= std_logic_vector(to_unsigned(1000,DK_D'length)); 
	DK_A <= std_logic_vector(to_unsigned(2,DK_A'length));
	C <= '0';
	wait for clk_c/2;

	C <= '1';

	wait for clk_c/2;
 
	end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
