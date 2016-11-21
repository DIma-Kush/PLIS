-- Vhdl test bench created from schematic D:\Xilinx\backups\6\DK_lab4_\DK_sch.sch - Mon Nov 07 20:33:36 2016
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
   PORT( ZERO	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0)  ; 
			ZERO_bit: IN STD_LOGIC;
			 CE	:	IN	STD_LOGIC;
          DK_D	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          DK_C	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          DK_B	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CU_bus	:	INOUT	STD_LOGIC_VECTOR (23 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          
          DK_A	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          DK_RES	:	INOUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
			 
   END COMPONENT;

   SIGNAL ZERO	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";
	SIGNAL ZERO_bit: STD_LOGIC := '0';
	SIGNAL CE: STD_LOGIC := '1';
   SIGNAL DK_D	:	STD_LOGIC_VECTOR (7 DOWNTO 0) :=x"19";
   SIGNAL DK_C	:	STD_LOGIC_VECTOR (7 DOWNTO 0) :=x"04";
   SIGNAL DK_B	:	STD_LOGIC_VECTOR (7 DOWNTO 0) :=x"01";
   SIGNAL CU_bus	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL DK_A	:	STD_LOGIC_VECTOR (7 DOWNTO 0):=x"02";
   SIGNAL DK_RES	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
constant clk_c : time := 1000 ns;
BEGIN

   UUT: DK_sch PORT MAP(
		ZERO => ZERO, 
		ZERO_bit => ZERO_bit,
		DK_D => DK_D,
		CE => CE, 		
		DK_C => DK_C, 
		DK_B => DK_B, 
		CU_bus => CU_bus, 
		CLK => CLK, 
		DK_A => DK_A, 
		DK_RES => DK_RES
   );
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
