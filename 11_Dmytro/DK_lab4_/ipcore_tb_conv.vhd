-- Vhdl test bench created from schematic D:\Xilinx\DK_lab4_\DK_sch.sch - Fri Oct 21 19:38:38 2016
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
          DK_D	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          CLR	:	IN	STD_LOGIC; 
          ZERO	:	IN	STD_LOGIC; 
          ONE	:	IN	STD_LOGIC; 
          DK_A	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DK_B	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          C	:	IN	STD_LOGIC; 
          DK_OUT2	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL DK_C	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL CE	:	STD_LOGIC := '1';
   SIGNAL DK_D	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL CLR	:	STD_LOGIC := '0' ;
   SIGNAL ZERO	:	STD_LOGIC := '0';
   SIGNAL ONE	:	STD_LOGIC := '1';
   SIGNAL DK_A	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DK_B	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL C	:	STD_LOGIC;
   SIGNAL DK_OUT2	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
constant clk_c : time := 10 ns;
		SIGNAL  buf:  integer := 0;

BEGIN

   UUT: DK_sch PORT MAP(
		DK_C => DK_C, 
		CE => CE, 
		DK_D => DK_D, 
		ZERO => ZERO, 
		ONE => ONE, 
		C => C, 
		DK_OUT2 => DK_OUT2, 
		CLR => CLR, 
		DK_A => DK_A, 
		DK_B => DK_B
   );
CLC_process :process

	begin
			buf <= buf + 1;
	DK_C <= std_logic_vector(to_unsigned(1,DK_C'length)); 
	DK_D <= std_logic_vector(to_unsigned(25,DK_D'length)); 
	DK_A <= std_logic_vector(to_unsigned(2,DK_A'length));
	DK_B <= std_logic_vector(to_unsigned(1,DK_B'length));
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
