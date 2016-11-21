----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:27 11/21/2016 
-- Design Name: 
-- Module Name:    AB_register_36 - Behavioral 
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

ENTITY AB_register36 IS PORT(
    d   : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    ld  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)  -- output
);
END AB_register36;

ARCHITECTURE description OF AB_register36 IS

BEGIN
    process(clk)
    begin
	 	
	 if clr  = '1' then
				q <= (others => '0');
			end if;
      if rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
			
       end if;
    end process;
END description;
