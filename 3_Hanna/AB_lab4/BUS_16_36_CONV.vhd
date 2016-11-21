----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:09:05 11/09/2016 
-- Design Name: 
-- Module Name:    BUS_8_32_CONV - Behavioral 
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

entity BUS_16_36_CONV is
    Port ( in_sig : in  STD_LOGIC_VECTOR (15 downto 0);
           out_sig : out  STD_LOGIC_VECTOR (35 downto 0));
end BUS_16_36_CONV;

architecture Behavioral of BUS_16_36_CONV is

begin
	out_sig <= "00000000000000000000" & in_sig;

end Behavioral;

