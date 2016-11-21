
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

entity ROM_AB is
	port(
		CLK : in STD_LOGIC;
		A : in std_logic_vector(3 downto 0);
		D : out STD_LOGIC_VECTOR(19 downto 0)
		);
end ROM_AB;

architecture ROM_AB of ROM_AB is
begin
	process (A)
		variable A_temp:integer;
	begin	   
		A_temp:= conv_integer(A(3 downto 0));	
				case A_temp is
--					when 0 => D <= x"000002";	   				   				
--					when 1 => D <= x"020002";	   				   				
--					when 2 => D <= x"421000";     
--					when 3 => D <= x"471006";     
--					when 4 => D <= x"251102";
--					when 5 => D <= x"861100";
--					when 6 => D <= x"9A1111";  	  			
--					when 7 => D <= x"9A1112";  	  			
--					when 8 => D <= x"8F0111";  	  			
--					when 9 => D <= x"000105";				
--					when 10 => D <=x"000105";

					when 0 => D <= x"00001";
					when 1 => D <= x"28001";
					when 2 => D <= x"28000";
					when 3 => D <= x"24000";
					when 4 => D <= x"BC000";
					when 5 => D <= x"BB008";
					when 6 => D <= x"7F00C";
					when 7 => D <= x"7F00C";
					when 8 => D <= x"7F00E";
					when 9 => D <= x"7F00E";
					when others => D <= "ZZZZZZZZZZZZZZZZZZZZ";
				end case;			
	end process;
end ROM_AB;
