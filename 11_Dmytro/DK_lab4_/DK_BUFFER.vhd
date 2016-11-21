----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:59 11/06/2016 
-- Design Name: 
-- Module Name:    DK_BUFFER - Behavioral 
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

entity DK_BUF is
  port(
   DIR : in STD_LOGIC;
   OE : in STD_LOGIC;
   A : inout STD_LOGIC_VECTOR(31 downto 0);
   B : inout STD_LOGIC_VECTOR(31 downto 0)
      );
end DK_BUF;

architecture DK_BUF of DK_BUF is
begin
process(OE,DIR)
begin
if OE='0' and DIR='0' then
A<=B;
elsif  OE='0' and DIR='1' then
B<=A;
else  A<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";B<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end if;
end process;
end DK_BUF;


