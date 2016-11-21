----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:16 11/06/2016 
-- Design Name: 
-- Module Name:    RAM32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
							  					   -------------------------------------------------------------------------------
--
-- Title       : RAM_2k_8
-- Design      : kc_lab3
-- Author      : Microsoft
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : RAM_2k_8.vhd
-- Generated   : Sun May 18 21:20:27 2014
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {RAM_2k_8} architecture {RAM_2k_8}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.std_logic_unsigned.all;

entity RAM_32 is
	 port(
		 WE : in STD_LOGIC;
		 CE : in STD_LOGIC;
		 OE : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 DI : in STD_LOGIC_VECTOR(31 downto 0);
		 DQ : out STD_LOGIC_VECTOR(31 downto 0);
		 CLK : in STD_LOGIC
	     );
end RAM_32;

--}} End of automatically maintained section

architecture RAM_32 of RAM_32 is
type MEM_2K_4 is array (0 to 15) of std_logic_vector(31 downto 0);
signal RAM_MEM:MEM_2K_4;
begin	   				
	process(OE,WE,A,CLK)
begin			  
 
			if OE='1' then
		DQ<=RAM_MEM(conv_integer(A));
		
	else	
		RAM_MEM(conv_integer(A))<=DI; 
	
	end if;
	
end process;

	
end RAM_32;
