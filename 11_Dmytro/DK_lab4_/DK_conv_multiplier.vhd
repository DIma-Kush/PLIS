----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:17 10/09/2016 
-- Design Name: 
-- Module Name:    DK_conv_multiplier - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
 
entity dk_pipeline_mult is 
    Port ( dk_clk : in  STD_LOGIC; 
           dk_reset : in  STD_LOGIC; 
           dk_a : in  STD_LOGIC_VECTOR (15 downto 0); 
           dk_b : in  STD_LOGIC_VECTOR (15 downto 0); 
			 
			  dk_d : in  STD_LOGIC_VECTOR (15 downto 0);
           dk_y : out  STD_LOGIC_VECTOR (31 downto 0)); 
end dk_pipeline_mult; 
 
architecture Behavioral of dk_pipeline_mult is 
 constant WIDTH: integer:=16;   
 signal dk_a1_reg, dk_a2_reg, dk_a3_reg, dk_a4_reg, dk_a5_reg, dk_a6_reg, dk_a7_reg, dk_a8_reg,dk_a9_reg, dk_a10_reg, dk_a11_reg, dk_a12_reg, dk_a13_reg, dk_a14_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_a0, dk_a1_next, dk_a2_next, dk_a3_next, dk_a4_next, dk_a5_next, dk_a6_next,dk_a7_next,dk_a8_next,dk_a9_next,dk_a10_next,dk_a11_next, dk_a12_next, dk_a13_next, dk_a14_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_b1_reg, dk_b2_reg, dk_b3_reg, dk_b4_reg, dk_b5_reg, dk_b6_reg,dk_b7_reg,dk_b8_reg,dk_b9_reg,dk_b10_reg,dk_b11_reg,dk_b12_reg,dk_b13_reg,dk_b14_reg: std_logic_vector(WIDTH-1 downto 0); 
 signal dk_b0, dk_b1_next, dk_b2_next, dk_b3_next, dk_b4_next, dk_b5_next, dk_b6_next,dk_b7_next,dk_b8_next,dk_b9_next,dk_b10_next,dk_b11_next,dk_b12_next,dk_b13_next,dk_b14_next : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_bv0, dk_bv1, dk_bv2, dk_bv3, dk_bv4, dk_bv5, dk_bv6, dk_bv7,dk_bv8,dk_bv9,dk_bv10,dk_bv11,dk_bv12,dk_bv13,dk_bv14,dk_bv15    : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_bp0, dk_bp1, dk_bp2, dk_bp3, dk_bp4, dk_bp5, dk_bp6, dk_bp7,dk_bp8,dk_bp9,dk_bp10,dk_bp11,dk_bp12,dk_bp13,dk_bp14,dk_bp15  : unsigned(2*WIDTH - 1 downto 0); 
 signal dk_pp1_reg, dk_pp2_reg, dk_pp3_reg, dk_pp4_reg, dk_pp5_reg, dk_pp6_reg, dk_pp7_reg,dk_pp8_reg,dk_pp9_reg,dk_pp10_reg,dk_pp11_reg,dk_pp12_reg,dk_pp13_reg,dk_pp14_reg,dk_pp15_reg : unsigned(2*WIDTH - 1 downto 0);   
 signal dk_pp0, dk_pp1_next, dk_pp2_next, dk_pp3_next, dk_pp4_next, dk_pp5_next, dk_pp6_next, dk_pp7_next,dk_pp8_next,dk_pp9_next,dk_pp10_next,dk_pp11_next,dk_pp12_next,dk_pp13_next,dk_pp14_next,dk_pp15_next: unsigned(2*WIDTH - 1 downto 0);
 
 
 signal dk_d1_reg, dk_d2_reg, dk_d3_reg, dk_d4_reg, dk_d5_reg, dk_d6_reg,dk_d7_reg,dk_d8_reg,dk_d9_reg,dk_d10_reg,dk_d11_reg,dk_d12_reg,dk_d13_reg,dk_d14_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_d0, dk_d1_next, dk_d2_next, dk_d3_next, dk_d4_next, dk_d5_next, dk_d6_next,dk_d7_next,dk_d8_next,dk_d9_next,dk_d10_next,dk_d11_next,dk_d12_next,dk_d13_next,dk_d14_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_dpp1_reg, dk_dpp2_reg, dk_dpp3_reg, dk_dpp4_reg, dk_dpp5_reg, dk_dpp6_reg, dk_dpp7_reg,dk_dpp8_reg,dk_dpp9_reg,dk_dpp10_reg,dk_dpp11_reg,dk_dpp12_reg,dk_dpp13_reg,dk_dpp14_reg,dk_dpp15_reg : unsigned(2*WIDTH - 1 downto 0); 
 signal dk_dpp0, dk_dpp1_next, dk_dpp2_next, dk_dpp3_next, dk_dpp4_next, dk_dpp5_next, dk_dpp6_next, dk_dpp7_next,dk_dpp8_next,dk_dpp9_next,dk_dpp10_next,dk_dpp11_next,dk_dpp12_next,dk_dpp13_next,dk_dpp14_next,dk_dpp15_next: unsigned(2*WIDTH - 1 downto 0);
 signal dk_dv0, dk_dv1, dk_dv2, dk_dv3, dk_dv4, dk_dv5, dk_dv6, dk_dv7 ,dk_dv8,dk_dv9,dk_dv10,dk_dv11,dk_dv12,dk_dv13,dk_dv14,dk_dv15  : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_dp0, dk_dp1, dk_dp2, dk_dp3, dk_dp4, dk_dp5, dk_dp6, dk_dp7, dk_dp8, dk_dp9, dk_dp10, dk_dp11, dk_dp12, dk_dp13, dk_dp14, dk_dp15 : unsigned(2*WIDTH - 1 downto 0); 
 signal dk_w : unsigned (31 downto 0);
 
 
begin 
-- pipeline registers  
 process(dk_clk,dk_reset) 
 begin 
   if (dk_reset = '1') then 
     dk_pp1_reg   <= (others => '0'); 
     dk_pp2_reg   <= (others => '0'); 
     dk_pp3_reg   <= (others => '0'); 
     dk_pp4_reg   <= (others => '0'); 
     dk_pp5_reg   <= (others => '0'); 
     dk_pp6_reg   <= (others => '0'); 
     dk_pp7_reg   <= (others => '0'); 
	  dk_pp8_reg   <= (others => '0'); 
	  dk_pp9_reg   <= (others => '0'); 
	  dk_pp10_reg   <= (others => '0'); 
	  dk_pp11_reg   <= (others => '0'); 
	  dk_pp12_reg   <= (others => '0'); 
	  dk_pp13_reg   <= (others => '0'); 
	  dk_pp14_reg   <= (others => '0'); 
	  dk_pp15_reg   <= (others => '0'); 
	  
     dk_a1_reg   <= (others => '0'); 
     dk_a2_reg   <= (others => '0'); 
     dk_a3_reg   <= (others => '0'); 
     dk_a4_reg   <= (others => '0'); 
     dk_a5_reg   <= (others => '0'); 
     dk_a6_reg   <= (others => '0');
	  dk_a7_reg   <= (others => '0');
	  dk_a8_reg   <= (others => '0');
	  dk_a9_reg   <= (others => '0');
	  dk_a10_reg   <= (others => '0');
	  dk_a11_reg   <= (others => '0');
	  dk_a12_reg   <= (others => '0');
	  dk_a13_reg   <= (others => '0');
	  dk_a14_reg   <= (others => '0');

     dk_b1_reg   <= (others => '0'); 
     dk_b2_reg   <= (others => '0'); 
     dk_b3_reg   <= (others => '0'); 
     dk_b4_reg   <= (others => '0'); 
     dk_b5_reg   <= (others => '0'); 
     dk_b6_reg   <= (others => '0');
	  dk_b7_reg   <= (others => '0');
	  dk_b8_reg   <= (others => '0');
	  dk_b9_reg   <= (others => '0');
	  dk_b10_reg   <= (others => '0');
	  dk_b11_reg   <= (others => '0');
	  dk_b12_reg   <= (others => '0');
	  dk_b13_reg   <= (others => '0');
	  dk_b14_reg   <= (others => '0');
	

	  dk_dpp1_reg   <= (others => '0'); 
     dk_dpp2_reg   <= (others => '0'); 
     dk_dpp3_reg   <= (others => '0'); 
     dk_dpp4_reg   <= (others => '0'); 
     dk_dpp5_reg   <= (others => '0'); 
     dk_dpp6_reg   <= (others => '0'); 
     dk_dpp7_reg   <= (others => '0'); 
	  dk_dpp8_reg   <= (others => '0'); 
     dk_dpp9_reg   <= (others => '0'); 
     dk_dpp10_reg   <= (others => '0'); 
     dk_dpp11_reg   <= (others => '0'); 
     dk_dpp12_reg   <= (others => '0'); 
     dk_dpp13_reg   <= (others => '0'); 
     dk_dpp14_reg   <= (others => '0');
	  
	  dk_d1_reg   <= (others => '0'); 
     dk_d2_reg   <= (others => '0'); 
     dk_d3_reg   <= (others => '0'); 
     dk_d4_reg   <= (others => '0'); 
     dk_d5_reg   <= (others => '0'); 
     dk_d6_reg   <= (others => '0');
  dk_d7_reg   <= (others => '0'); 
     dk_d8_reg   <= (others => '0'); 
     dk_d9_reg   <= (others => '0'); 
     dk_d10_reg   <= (others => '0'); 
     dk_d11_reg   <= (others => '0'); 
     dk_d12_reg   <= (others => '0');	 
     dk_d13_reg   <= (others => '0');	 
     dk_d14_reg   <= (others => '0');	 	  
	  
   elsif (dk_clk'event and dk_clk = '1') then 
     dk_pp1_reg   <= dk_pp1_next; 
     dk_pp2_reg   <= dk_pp2_next; 
     dk_pp3_reg   <= dk_pp3_next; 
     dk_pp4_reg   <= dk_pp4_next; 
     dk_pp5_reg   <= dk_pp5_next; 
     dk_pp6_reg   <= dk_pp6_next; 
     dk_pp7_reg   <= dk_pp7_next;  
	     dk_pp8_reg   <= dk_pp8_next; 
     dk_pp9_reg   <= dk_pp9_next; 
     dk_pp10_reg   <= dk_pp10_next; 
     dk_pp11_reg   <= dk_pp11_next; 
     dk_pp12_reg   <= dk_pp12_next; 
     dk_pp13_reg   <= dk_pp13_next; 
     dk_pp14_reg   <= dk_pp14_next; 
	     dk_pp15_reg   <= dk_pp15_next; 
	  
     dk_a1_reg   <= dk_a1_next; 
     dk_a2_reg   <= dk_a2_next; 
     dk_a3_reg   <= dk_a3_next; 
     dk_a4_reg   <= dk_a4_next; 
     dk_a5_reg   <= dk_a5_next; 
     dk_a6_reg   <= dk_a6_next; 
	  dk_a7_reg   <= dk_a7_next; 
     dk_a8_reg   <= dk_a8_next; 
     dk_a9_reg   <= dk_a9_next; 
     dk_a10_reg   <= dk_a10_next; 
     dk_a11_reg   <= dk_a11_next; 
     dk_a12_reg   <= dk_a12_next; 
	      dk_a13_reg   <= dk_a13_next; 
     dk_a14_reg   <= dk_a14_next;
	  
	  
     dk_b1_reg   <= dk_b1_next; 
     dk_b2_reg   <= dk_b2_next; 
     dk_b3_reg   <= dk_b3_next; 
     dk_b4_reg   <= dk_b4_next; 
     dk_b5_reg   <= dk_b5_next; 
     dk_b6_reg   <= dk_b6_next; 
	  dk_b7_reg   <= dk_b7_next; 
     dk_b8_reg   <= dk_b8_next; 
     dk_b9_reg   <= dk_b9_next; 
     dk_b10_reg   <= dk_b10_next; 
     dk_b11_reg   <= dk_b11_next; 
     dk_b12_reg   <= dk_b12_next;
	   dk_b13_reg   <= dk_b13_next; 
     dk_b14_reg   <= dk_b14_next; 
  

     dk_dpp1_reg   <= dk_dpp1_next; 
     dk_dpp2_reg   <= dk_dpp2_next; 
     dk_dpp3_reg   <= dk_dpp3_next; 
     dk_dpp4_reg   <= dk_dpp4_next; 
     dk_dpp5_reg   <= dk_dpp5_next; 
     dk_dpp6_reg   <= dk_dpp6_next; 
     dk_dpp7_reg   <= dk_dpp7_next; 
     dk_dpp8_reg   <= dk_dpp8_next; 
     dk_dpp9_reg   <= dk_dpp9_next; 
     dk_dpp10_reg   <= dk_dpp10_next; 
     dk_dpp11_reg   <= dk_dpp11_next; 
     dk_dpp12_reg   <= dk_dpp12_next; 
     dk_dpp13_reg   <= dk_dpp13_next; 
     dk_dpp14_reg   <= dk_dpp14_next; 
   dk_dpp15_reg   <= dk_dpp15_next;
	  
	  dk_d1_reg   <= dk_d1_next; 
     dk_d2_reg   <= dk_d2_next; 
     dk_d3_reg   <= dk_d3_next; 
     dk_d4_reg   <= dk_d4_next; 
     dk_d5_reg   <= dk_d5_next; 
     dk_d6_reg   <= dk_d6_next; 
	   dk_d7_reg   <= dk_d7_next; 
     dk_d8_reg   <= dk_d8_next; 
     dk_d9_reg   <= dk_d9_next; 
     dk_d10_reg   <= dk_d10_next; 
     dk_d11_reg   <= dk_d11_next; 
     dk_d12_reg   <= dk_d12_next; 
	      dk_d13_reg   <= dk_d13_next; 
     dk_d14_reg   <= dk_d14_next; 
   end if; 
 end process; 
-- stage 0 & 1 for pipeline 
 dk_bv0 <= (others => dk_b(0)); 
 dk_bp0 <= unsigned("0000000000000000" & (dk_bv0 and dk_a)); 
 dk_pp0 <= dk_bp0; 
 dk_a0  <= dk_a; 
 dk_b0  <= dk_b; 
 
 dk_bv1 <= (others => dk_b0(1)); 
 dk_bp1 <= unsigned("000000000000000" & (dk_bv1 and dk_a0) & "0"); 
 dk_pp1_next <= dk_pp0 + dk_bp1; 
 dk_a1_next  <= dk_a0; 
 dk_b1_next  <= dk_b0; 
 
 dk_dv0 <= (others => dk_d(0)); 
 dk_dp0 <= unsigned("0000000000000000" & (dk_dv0 and dk_d)); 
 dk_dpp0 <= dk_dp0; 
 dk_d0  <= dk_d; 


 dk_dv1 <= (others => dk_d0(1)); 
 dk_dp1 <= unsigned("000000000000000" & (dk_dv1 and dk_d0) & "0"); 
 dk_dpp1_next <= dk_dpp0 + dk_dp1; 
 dk_d1_next  <= dk_d0;  

-- stage 2 
 dk_bv2 <= (others => dk_b1_reg(2)); 
 dk_bp2 <= unsigned("00000000000000" & (dk_bv2 and dk_a1_reg) & "00"); 
 dk_pp2_next <= dk_pp1_reg + dk_bp2; 
 dk_a2_next  <= dk_a1_reg; 
 dk_b2_next  <= dk_b1_reg;   
 
 dk_dv2 <= (others => dk_d1_reg(2)); 
 dk_dp2 <= unsigned("00000000000000" & (dk_dv2 and dk_d1_reg) & "00"); 
 dk_dpp2_next <= dk_dpp1_reg + dk_dp2; 
 dk_d2_next  <= dk_d1_reg; 

-- stage 3 
 dk_bv3 <= (others => dk_b2_reg(3));   
 dk_bp3 <= unsigned("0000000000000" & (dk_bv3 and dk_a2_reg) & "000"); 
 dk_pp3_next <= dk_pp2_reg + dk_bp3; 
 dk_a3_next  <= dk_a2_reg; 
 dk_b3_next  <= dk_b2_reg; 
 
 dk_dv3 <= (others => dk_d2_reg(3));   
 dk_dp3 <= unsigned("0000000000000" & (dk_dv3 and dk_d2_reg) & "000"); 
 dk_dpp3_next <= dk_dpp2_reg + dk_dp3; 
 dk_d3_next  <= dk_d2_reg; 

-- stage 4 
 dk_bv4 <= (others => dk_b3_reg(4)); 
 dk_bp4 <= unsigned("000000000000" & (dk_bv4 and dk_a3_reg) & "0000"); 
 dk_pp4_next <= dk_pp3_reg + dk_bp4;
 dk_a4_next  <= dk_a3_reg; 
 dk_b4_next  <= dk_b3_reg; 
 
 dk_dv4 <= (others => dk_d3_reg(4)); 
 dk_dp4 <= unsigned("000000000000" & (dk_dv4 and dk_d3_reg) & "0000"); 
 dk_dpp4_next <= dk_dpp3_reg + dk_dp4;
 dk_d4_next  <= dk_d3_reg; 

-- stage 5
 dk_bv5 <= (others => dk_b4_reg(5));   
 dk_bp5 <= unsigned("00000000000" & (dk_bv5 and dk_a4_reg) & "00000"); 
 dk_pp5_next <= dk_pp4_reg + dk_bp5; 
 dk_a5_next  <= dk_a4_reg; 
 dk_b5_next  <= dk_b4_reg; 
 
 dk_dv5 <= (others => dk_d4_reg(5));   
 dk_dp5 <= unsigned("00000000000" & (dk_dv5 and dk_d4_reg) & "00000"); 
 dk_dpp5_next <= dk_dpp4_reg + dk_dp5; 
 dk_d5_next  <= dk_d4_reg;

-- stage 6
 dk_bv6 <= (others => dk_b5_reg(6));  
 dk_bp6 <= unsigned("0000000000" & (dk_bv6 and dk_a5_reg) & "000000"); 
 dk_pp6_next <= dk_pp5_reg + dk_bp6; 
 dk_a6_next  <= dk_a5_reg; 
 dk_b6_next  <= dk_b5_reg; 
 
 dk_dv6 <= (others => dk_d5_reg(6));   
 dk_dp6 <= unsigned("0000000000" & (dk_dv6 and dk_d5_reg) & "000000"); 
 dk_dpp6_next <= dk_dpp5_reg + dk_dp6; 
 dk_d6_next  <= dk_d5_reg;

-- stage 7
 dk_bv7 <= (others => dk_b6_reg(7));   
 dk_bp7 <= unsigned("000000000" & (dk_bv7 and dk_a6_reg) & "0000000"); 
 dk_pp7_next <= dk_pp6_reg + dk_bp7;
 
 dk_dv7 <= (others => dk_d6_reg(7));   
 dk_dp7 <= unsigned("000000000" & (dk_dv7 and dk_d6_reg) & "0000000"); 
 dk_dpp7_next <= dk_dpp6_reg + dk_dp7;

 
 -- stage 8
 dk_bv8 <= (others => dk_b7_reg(8));   
 dk_bp8 <= unsigned("00000000" & (dk_bv8 and dk_a7_reg) & "00000000"); 
 dk_pp8_next <= dk_pp7_reg + dk_bp8;
 
 dk_dv8 <= (others => dk_d7_reg(8));   
 dk_dp8 <= unsigned("00000000" & (dk_dv8 and dk_d7_reg) & "00000000"); 
 dk_dpp8_next <= dk_dpp7_reg + dk_dp8;

  -- stage 9
 dk_bv9 <= (others => dk_b8_reg(9));   
 dk_bp9 <= unsigned("0000000" & (dk_bv9 and dk_a8_reg) & "000000000"); 
 dk_pp9_next <= dk_pp8_reg + dk_bp9;
 
 dk_dv9 <= (others => dk_d8_reg(9));   
 dk_dp9 <= unsigned("0000000" & (dk_dv9 and dk_d8_reg) & "000000000"); 
 dk_dpp9_next <= dk_dpp8_reg + dk_dp9;
 
   -- stage 10
 dk_bv10 <= (others => dk_b9_reg(10));   
 dk_bp10 <= unsigned("000000" & (dk_bv10 and dk_a9_reg) & "0000000000"); 
 dk_pp10_next <= dk_pp9_reg + dk_bp10;
 
 dk_dv10 <= (others => dk_d9_reg(10));   
 dk_dp10 <= unsigned("000000" & (dk_dv10 and dk_d9_reg) & "0000000000"); 
 dk_dpp10_next <= dk_dpp9_reg + dk_dp10;

   -- stage 11
 dk_bv11 <= (others => dk_b10_reg(11));   
 dk_bp11 <= unsigned("00000" & (dk_bv11 and dk_a10_reg) & "00000000000"); 
 dk_pp11_next <= dk_pp10_reg + dk_bp11;
 
 dk_dv11 <= (others => dk_d10_reg(10));   
 dk_dp11 <= unsigned("00000" & (dk_dv11 and dk_d10_reg) & "00000000000"); 
 dk_dpp11_next <= dk_dpp10_reg + dk_dp11;

    -- stage 12
 dk_bv12 <= (others => dk_b11_reg(12));   
 dk_bp12 <= unsigned("0000" & (dk_bv12 and dk_a11_reg) & "000000000000"); 
 dk_pp12_next <= dk_pp11_reg + dk_bp12;
 
 dk_dv12 <= (others => dk_d11_reg(11));   
 dk_dp12 <= unsigned("0000" & (dk_dv12 and dk_d11_reg) & "000000000000"); 
 dk_dpp12_next <= dk_dpp11_reg + dk_dp12;

   -- stage 13
 dk_bv13 <= (others => dk_b12_reg(13));   
 dk_bp13 <= unsigned("000" & (dk_bv13 and dk_a12_reg) & "0000000000000"); 
 dk_pp13_next <= dk_pp12_reg + dk_bp13;
 
 dk_dv13 <= (others => dk_d12_reg(12));   
 dk_dp13 <= unsigned("000" & (dk_dv13 and dk_d12_reg) & "0000000000000"); 
 dk_dpp13_next <= dk_dpp12_reg + dk_dp13;

    -- stage 14
 dk_bv14 <= (others => dk_b13_reg(14));   
 dk_bp14 <= unsigned("00" & (dk_bv14 and dk_a13_reg) &  "00000000000000"); 
 dk_pp14_next <= dk_pp13_reg + dk_bp14;
 
 dk_dv14 <= (others => dk_d13_reg(13));   
 dk_dp14 <= unsigned("00" & (dk_dv14 and dk_d13_reg) & "00000000000000"); 
 dk_dpp14_next <= dk_dpp13_reg + dk_dp14;

     -- stage 15
 dk_bv15 <= (others => dk_b14_reg(15));   
 dk_bp15 <= unsigned("0" & (dk_bv15 and dk_a14_reg) & "000000000000000"); 
 dk_pp15_next <= dk_pp14_reg + dk_bp15;
 
 dk_dv15 <= (others => dk_d14_reg(14));   
 dk_dp15 <= unsigned("0" & (dk_dv15 and dk_d14_reg) & "000000000000000"); 
 dk_dpp15_next <= dk_dpp14_reg + dk_dp15;
 dk_w <= dk_pp15_next+dk_dpp15_next;
-- result 
  
 dk_y <= std_logic_vector(dk_w); 

end Behavioral;  


