----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:11 11/06/2016 
-- Design Name: 
-- Module Name:    MUX_32 - Behavioral 
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

entity MUX_20 is
    Port ( data1 : in  STD_LOGIC_VECTOR (19 downto 0);
           data2 : in  STD_LOGIC_VECTOR (19 downto 0);
           data_o : out  STD_LOGIC_VECTOR (19 downto 0);
           s0 : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end MUX_20;

architecture Behavioral of MUX_20 is

BEGIN
process(data1,data2,s0,CLK)
begin

 case s0 is

    when '0' => data_o <= data1;
    when '1' => data_o <= data2;
    when others => data_o <= "ZZZZZZZZZZZZZZZZZZZZ";
	 end case;

end process;

end Behavioral;