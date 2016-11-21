----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:22:46 11/06/2016 
-- Design Name: 
-- Module Name:    DK_ROM - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_arith.ALL;

entity ROM_DK is
	port(
		CLK : in STD_LOGIC;
		A : in std_logic_vector(3 downto 0);
		D : out STD_LOGIC_VECTOR(23 downto 0)
		);
end ROM_DK;

architecture ROM_DK of ROM_DK is
begin
	process (A)
		variable A_temp:integer;
	begin	   
		A_temp:= conv_integer(A(3 downto 0));	
				case A_temp is
					when 0 => D <= x"000000";	   				   				
					when 1 => D <= x"020000";	   				   				
					when 2 => D <= x"421000";     
					when 3 => D <= x"471002";     
					when 4 => D <= x"251102";
					when 5 => D <= x"961100";
					when 6 => D <= x"9A1115";  	  			
					when 7 => D <= x"9A1112";  	  			
					when 8 => D <= x"8F0111";  	  			
					when 9 => D <= x"040105";				
					when 10 => D <=x"040105";				
					when others => D <= "ZZZZZZZZZZZZZZZZZZZZZZZZ";
				end case;			
	end process;
end ROM_DK;
