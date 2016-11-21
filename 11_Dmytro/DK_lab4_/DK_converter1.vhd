-----------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:09 10/09/2016 
-- Design Name: 
-- Module Name:    DK_converter1  - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DK_converter1  is
Port ( dk_clk : in STD_LOGIC;
dk_reset : in STD_LOGIC;
dk_a : in STD_LOGIC_VECTOR (15 downto 0);
dk_b : in STD_LOGIC_VECTOR (15 downto 0);
dk_y : out STD_LOGIC_VECTOR (15 downto 0));
end DK_converter1 ;
architecture Behavioral of DK_converter1 is
constant WIDTH: integer:=16;
signal dk_a0, dk_a1, dk_a2, dk_a3,dk_a4, dk_a5, dk_a6, dk_a7,dk_a8, dk_a9, dk_a10, dk_a11,dk_a12, dk_a13, dk_a14, dk_a15 : std_logic_vector(WIDTH-1 downto 0);
signal dk_b0, dk_b1, dk_b2, dk_b3,dk_b4, dk_b5, dk_b6, dk_b7,dk_b8, dk_b9, dk_b10, dk_b11,dk_b12, dk_b13, dk_b14, dk_b15 : std_logic_vector(WIDTH-1 downto 0);
signal dk_bv0, dk_bv1, dk_bv2, dk_bv3,dk_bv4, dk_bv5, dk_bv6, dk_bv7,dk_bv8, dk_bv9, dk_bv10, dk_bv11,dk_bv12, dk_bv13, dk_bv14,dk_bv15 : std_logic_vector(WIDTH - 1 downto 0);
signal dk_bp0, dk_bp1, dk_bp2, dk_bp3,dk_bp4, dk_bp5, dk_bp6, dk_bp7,dk_bp8, dk_bp9, dk_bp10, dk_bp11,dk_bp12, dk_bp13, dk_bp14,dk_bp15 : unsigned(2*WIDTH - 1 downto 0);
signal dk_pp0, dk_pp1, dk_pp2, dk_pp3, dk_pp4, dk_pp5, dk_pp6, dk_pp7,dk_pp8, dk_pp9, dk_pp10, dk_pp11,dk_pp12, dk_pp13, dk_pp14,dk_pp15 : unsigned(2*WIDTH - 1 downto 0);
begin
-- stage 0
dk_bv0 <= (others => dk_b(0));
dk_bp0 <= unsigned("0000000000000000" & (dk_bv0 and dk_a));
dk_pp0 <= dk_bp0;
dk_a0 <= dk_a;
dk_b0 <= dk_b;
-- stage 1
dk_bv1 <= (others => dk_b0(1));
dk_bp1 <= unsigned("000000000000000" & (dk_bv1 and dk_a0) & "0");
dk_pp1 <= dk_pp0 + dk_bp1;
dk_a1 <= dk_a0;
dk_b1 <= dk_b0;
-- stage 2
dk_bv2 <= (others => dk_b1(2));
dk_bp2 <= unsigned("00000000000000" & (dk_bv2 and dk_a1) & "00");
dk_pp2 <= dk_pp1 + dk_bp2;
dk_a2 <= dk_a1;
dk_b2 <= dk_b1;
-- stage 3
dk_bv3 <= (others => dk_b2(3));
dk_bp3 <= unsigned("0000000000000" & (dk_bv3 and dk_a2) & "000");
dk_pp3 <= dk_pp2 + dk_bp3;
dk_a3 <= dk_a2;
dk_b3 <= dk_b2;
-- stage 4
dk_bv4 <= (others => dk_b3(4));
dk_bp4 <= unsigned("000000000000" & (dk_bv4 and dk_a3) & "0000");
dk_pp4 <= dk_pp3 + dk_bp4;
dk_a4 <= dk_a3;
dk_b4 <= dk_b3;
-- stage 5
 dk_bv5 <= (others => dk_b4(5));   
 dk_bp5 <= unsigned("00000000000" & (dk_bv5 and dk_a4) & "00000"); 
 dk_pp5 <= dk_pp4 + dk_bp5; 
 dk_a5  <= dk_a4; 
 dk_b5  <= dk_b4; 


-- stage 6
 dk_bv6 <= (others => dk_b5(6));  
 dk_bp6 <= unsigned("0000000000" & (dk_bv6 and dk_a5) & "000000"); 
 dk_pp6 <= dk_pp5 + dk_bp6; 
 dk_a6  <= dk_a5; 
 dk_b6  <= dk_b5; 


-- stage 7
 dk_bv7 <= (others => dk_b6(7));   
 dk_bp7 <= unsigned("000000000" & (dk_bv7 and dk_a6) & "0000000"); 
 dk_pp7 <= dk_pp6 + dk_bp7;
 dk_a7  <= dk_a6; 
 dk_b7  <= dk_b6; 
 
 -- stage 8
 dk_bv8 <= (others => dk_b7(8));   
 dk_bp8 <= unsigned("00000000" & (dk_bv8 and dk_a7) & "00000000"); 
 dk_pp8 <= dk_pp7 + dk_bp8;
 dk_a8  <= dk_a7; 
 dk_b8  <= dk_b7; 
  -- stage 9
 dk_bv9 <= (others => dk_b8(9));   
 dk_bp9 <= unsigned("0000000" & (dk_bv9 and dk_a8) & "000000000"); 
 dk_pp9 <= dk_pp8 + dk_bp9;
 dk_a9  <= dk_a8; 
 dk_b9  <= dk_b8; 
 
   -- stage 10
 dk_bv10 <= (others => dk_b9(10));   
 dk_bp10 <= unsigned("000000" & (dk_bv10 and dk_a9) & "0000000000"); 
 dk_pp10 <= dk_pp9 + dk_bp10;
 dk_a10  <= dk_a9; 
 dk_b10  <= dk_b9; 

   -- stage 11
 dk_bv11 <= (others => dk_b10(11));   
 dk_bp11 <= unsigned("00000" & (dk_bv11 and dk_a10) & "00000000000"); 
 dk_pp11 <= dk_pp10 + dk_bp11;
  dk_a11  <= dk_a10; 
 dk_b11  <= dk_b10; 

    -- stage 12
 dk_bv12 <= (others => dk_b11(12));   
 dk_bp12 <= unsigned("0000" & (dk_bv12 and dk_a11) & "000000000000"); 
 dk_pp12 <= dk_pp11 + dk_bp12;
 dk_a12  <= dk_a11; 
 dk_b12 <= dk_b11;

   -- stage 13
 dk_bv13 <= (others => dk_b12(13));   
 dk_bp13 <= unsigned("000" & (dk_bv13 and dk_a12) & "0000000000000"); 
 dk_pp13 <= dk_pp12 + dk_bp13;
 dk_a13  <= dk_a12; 
 dk_b13 <= dk_b12;
    -- stage 14
 dk_bv14 <= (others => dk_b13(14));   
 dk_bp14 <= unsigned("00" & (dk_bv14 and dk_a13) &  "00000000000000"); 
 dk_pp14 <= dk_pp13 + dk_bp14;
 dk_a14  <= dk_a13; 
 dk_b14 <= dk_b13;

     -- stage 15
 dk_bv15 <= (others => dk_b14(15));   
 dk_bp15 <= unsigned("0" & (dk_bv15 and dk_a14) & "000000000000000"); 
 dk_pp15 <= dk_pp14 + dk_bp15;
 dk_a15  <= dk_a14; 
 dk_b15 <= dk_b14;

-- result
dk_y <= std_logic_vector(dk_pp15(15 downto 0));
end Behavioral;


