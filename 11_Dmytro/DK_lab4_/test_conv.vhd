library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
 
entity DK_Conventer3 is 
    Port ( DK_clk : in  STD_LOGIC; 
           DK_reset : in  STD_LOGIC; 
           DK_a : in  STD_LOGIC_VECTOR (7 downto 0); 
           DK_b : in  STD_LOGIC_VECTOR (7 downto 0); 
           DK_y : out  STD_LOGIC_VECTOR (15 downto 0)); 
end DK_Conventer3; 
 
architecture Behavioral of DK_Conventer3 is 
 constant WIDTH: integer:=8;   
 signal DK_a1_reg, DK_a2_reg, DK_a3_reg, DK_a4_reg, DK_a5_reg, DK_a6_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_a0, DK_a1_next, DK_a2_next, DK_a3_next, DK_a4_next, DK_a5_next, DK_a6_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_b1_reg, DK_b2_reg, DK_b3_reg, DK_b4_reg, DK_b5_reg, DK_b6_reg: std_logic_vector(WIDTH-1 downto 0); 
 signal DK_b0, DK_b1_next, DK_b2_next, DK_b3_next, DK_b4_next, DK_b5_next, DK_b6_next : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_bv0, DK_bv1, DK_bv2, DK_bv3, DK_bv4, DK_bv5, DK_bv6, DK_bv7   : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_bp0, DK_bp1, DK_bp2, DK_bp3, DK_bp4, DK_bp5, DK_bp6, DK_bp7  : unsigned(2*WIDTH - 1 downto 0); 
 signal DK_pp1_reg, DK_pp2_reg, DK_pp3_reg, DK_pp4_reg, DK_pp5_reg, DK_pp6_reg, DK_pp7_reg : unsigned(2*WIDTH - 1 downto 0);   signal DK_pp0, DK_pp1_next, DK_pp2_next, DK_pp3_next, DK_pp4_next, DK_pp5_next, DK_pp6_next, DK_pp7_next: unsigned(2*WIDTH - 1 downto 0);
 
 
 signal DK_d1_reg, DK_d2_reg, DK_d3_reg, DK_d4_reg, DK_d5_reg, DK_d6_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_d0, DK_d1_next, DK_d2_next, DK_d3_next, DK_d4_next, DK_d5_next, DK_d6_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_dpp1_reg, DK_dpp2_reg, DK_dpp3_reg, DK_dpp4_reg, DK_dpp5_reg, DK_dpp6_reg, DK_dpp7_reg : unsigned(2*WIDTH - 1 downto 0);   signal DK_dpp0, DK_dpp1_next, DK_dpp2_next, DK_dpp3_next, DK_dpp4_next, DK_dpp5_next, DK_dpp6_next, DK_dpp7_next: unsigned(2*WIDTH - 1 downto 0);
 signal DK_dv0, DK_dv1, DK_dv2, DK_dv3, DK_dv4, DK_dv5, DK_dv6, DK_dv7   : std_logic_vector(WIDTH-1 downto 0); 
 signal DK_dp0, DK_dp1, DK_dp2, DK_dp3, DK_dp4, DK_dp5, DK_dp6, DK_dp7  : unsigned(2*WIDTH - 1 downto 0); 
 signal DK_w : unsigned (15 downto 0);
 
 
begin 
-- pipeline registers  
 process(DK_clk,DK_reset) 
 begin 
   if (DK_reset = '1') then 
     DK_pp1_reg   <= (others => '0'); 
     DK_pp2_reg   <= (others => '0'); 
     DK_pp3_reg   <= (others => '0'); 
     DK_pp4_reg   <= (others => '0'); 
     DK_pp5_reg   <= (others => '0'); 
     DK_pp6_reg   <= (others => '0'); 
     DK_pp7_reg   <= (others => '0'); 
     DK_a1_reg   <= (others => '0'); 
     DK_a2_reg   <= (others => '0'); 
     DK_a3_reg   <= (others => '0'); 
     DK_a4_reg   <= (others => '0'); 
     DK_a5_reg   <= (others => '0'); 
     DK_a6_reg   <= (others => '0');	  
     DK_b1_reg   <= (others => '0'); 
     DK_b2_reg   <= (others => '0'); 
     DK_b3_reg   <= (others => '0'); 
     DK_b4_reg   <= (others => '0'); 
     DK_b5_reg   <= (others => '0'); 
     DK_b6_reg   <= (others => '0');

	  DK_dpp1_reg   <= (others => '0'); 
     DK_dpp2_reg   <= (others => '0'); 
     DK_dpp3_reg   <= (others => '0'); 
     DK_dpp4_reg   <= (others => '0'); 
     DK_dpp5_reg   <= (others => '0'); 
     DK_dpp6_reg   <= (others => '0'); 
     DK_dpp7_reg   <= (others => '0'); 
	  DK_d1_reg   <= (others => '0'); 
     DK_d2_reg   <= (others => '0'); 
     DK_d3_reg   <= (others => '0'); 
     DK_d4_reg   <= (others => '0'); 
     DK_d5_reg   <= (others => '0'); 
     DK_d6_reg   <= (others => '0');	
	  
   elsif (DK_clk'event and DK_clk = '1') then 
     DK_pp1_reg   <= DK_pp1_next; 
     DK_pp2_reg   <= DK_pp2_next; 
     DK_pp3_reg   <= DK_pp3_next; 
     DK_pp4_reg   <= DK_pp4_next; 
     DK_pp5_reg   <= DK_pp5_next; 
     DK_pp6_reg   <= DK_pp6_next; 
     DK_pp7_reg   <= DK_pp7_next;  
     DK_a1_reg   <= DK_a1_next; 
     DK_a2_reg   <= DK_a2_next; 
     DK_a3_reg   <= DK_a3_next; 
     DK_a4_reg   <= DK_a4_next; 
     DK_a5_reg   <= DK_a5_next; 
     DK_a6_reg   <= DK_a6_next; 
     DK_b1_reg   <= DK_b1_next; 
     DK_b2_reg   <= DK_b2_next; 
     DK_b3_reg   <= DK_b3_next; 
     DK_b4_reg   <= DK_b4_next; 
     DK_b5_reg   <= DK_b5_next; 
     DK_b6_reg   <= DK_b6_next; 
     DK_dpp1_reg   <= DK_dpp1_next; 
     DK_dpp2_reg   <= DK_dpp2_next; 
     DK_dpp3_reg   <= DK_dpp3_next; 
     DK_dpp4_reg   <= DK_dpp4_next; 
     DK_dpp5_reg   <= DK_dpp5_next; 
     DK_dpp6_reg   <= DK_dpp6_next; 
     DK_dpp7_reg   <= DK_dpp7_next;  
	  DK_d1_reg   <= DK_d1_next; 
     DK_d2_reg   <= DK_d2_next; 
     DK_d3_reg   <= DK_d3_next; 
     DK_d4_reg   <= DK_d4_next; 
     DK_d5_reg   <= DK_d5_next; 
     DK_d6_reg   <= DK_d6_next; 
   end if; 
 end process; 
-- stage 0 & 1 for pipeline 
 DK_bv0 <= (others => DK_b(0)); 
 DK_bp0 <= unsigned("00000000" & (DK_bv0 and DK_a)); 
 DK_pp0 <= DK_bp0; 
 DK_a0  <= DK_a; 
 DK_b0  <= DK_b; 
 
 DK_bv1 <= (others => DK_b0(1)); 
 DK_bp1 <= unsigned("0000000" & (DK_bv1 and DK_a0) & "0"); 
 DK_pp1_next <= DK_pp0 + DK_bp1; 
 DK_a1_next  <= DK_a0; 
 DK_b1_next  <= DK_b0; 
 



 DK_dv1 <= (others => DK_d0(1)); 
 DK_dp1 <= unsigned("0000000" & (DK_dv1 and DK_d0) & "0"); 
 DK_dpp1_next <= DK_dpp0 + DK_dp1; 
 DK_d1_next  <= DK_d0;  

-- stage 2 
 DK_bv2 <= (others => DK_b1_reg(2)); 
 DK_bp2 <= unsigned("000000" & (DK_bv2 and DK_a1_reg) & "00"); 
 DK_pp2_next <= DK_pp1_reg + DK_bp2; 
 DK_a2_next  <= DK_a1_reg; 
 DK_b2_next  <= DK_b1_reg;   
 
 DK_dv2 <= (others => DK_d1_reg(2)); 
 DK_dp2 <= unsigned("000000" & (DK_dv2 and DK_d1_reg) & "00"); 
 DK_dpp2_next <= DK_dpp1_reg + DK_dp2; 
 DK_d2_next  <= DK_d1_reg; 

-- stage 3 
 DK_bv3 <= (others => DK_b2_reg(3));   DK_bp3 <= unsigned("00000" & (DK_bv3 and DK_a2_reg) & "000"); 
 DK_pp3_next <= DK_pp2_reg + DK_bp3; 
 DK_a3_next  <= DK_a2_reg; 
 DK_b3_next  <= DK_b2_reg; 
 
 DK_dv3 <= (others => DK_d2_reg(3));   DK_dp3 <= unsigned("00000" & (DK_dv3 and DK_d2_reg) & "000"); 
 DK_dpp3_next <= DK_dpp2_reg + DK_dp3; 
 DK_d3_next  <= DK_d2_reg; 

-- stage 4 
 DK_bv4 <= (others => DK_b3_reg(4)); 
 DK_bp4 <= unsigned("0000" & (DK_bv4 and DK_a3_reg) & "0000"); 
 DK_pp4_next <= DK_pp3_reg + DK_bp4;
 DK_a4_next  <= DK_a3_reg; 
 DK_b4_next  <= DK_b3_reg; 
 
 DK_dv4 <= (others => DK_d3_reg(4)); 
 DK_dp4 <= unsigned("0000" & (DK_dv4 and DK_d3_reg) & "0000"); 
 DK_dpp4_next <= DK_dpp3_reg + DK_dp4;
 DK_d4_next  <= DK_d3_reg; 

-- stage 5
 DK_bv5 <= (others => DK_b4_reg(5));   DK_bp5 <= unsigned("000" & (DK_bv5 and DK_a4_reg) & "00000"); 
 DK_pp5_next <= DK_pp4_reg + DK_bp5; 
 DK_a5_next  <= DK_a4_reg; 
 DK_b5_next  <= DK_b4_reg; 
 
 DK_dv5 <= (others => DK_d4_reg(5));   DK_dp5 <= unsigned("000" & (DK_dv5 and DK_d4_reg) & "00000"); 
 DK_dpp5_next <= DK_dpp4_reg + DK_dp5; 
 DK_d5_next  <= DK_d4_reg;

-- stage 6
 DK_bv6 <= (others => DK_b5_reg(6));   DK_bp6 <= unsigned("00" & (DK_bv6 and DK_a5_reg) & "000000"); 
 DK_pp6_next <= DK_pp5_reg + DK_bp6; 
 DK_a6_next  <= DK_a5_reg; 
 DK_b6_next  <= DK_b5_reg; 
 
 DK_dv6 <= (others => DK_d5_reg(6));   DK_dp6 <= unsigned("00" & (DK_dv6 and DK_d5_reg) & "000000"); 
 DK_dpp6_next <= DK_dpp5_reg + DK_dp6; 
 DK_d6_next  <= DK_d5_reg;

-- stage 7
 DK_bv7 <= (others => DK_b6_reg(7));   DK_bp7 <= unsigned("0" & (DK_bv7 and DK_a6_reg) & "0000000"); 
 DK_pp7_next <= DK_pp6_reg + DK_bp7;
 
 DK_dv7 <= (others => DK_d6_reg(7));   DK_dp7 <= unsigned("0" & (DK_dv7 and DK_d6_reg) & "0000000"); 
 DK_dpp7_next <= DK_dpp6_reg + DK_dp7;
 DK_w <= DK_pp7_next+DK_dpp7_next;
-- result 
  
 DK_y <= std_logic_vector(DK_w); 

end Behavioral;  
