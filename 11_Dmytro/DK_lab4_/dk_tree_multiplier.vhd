library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
 
entity dk_pipeline_mult is 
    Port ( dk_clk : in  STD_LOGIC; 
           dk_reset : in  STD_LOGIC; 
           dk_a : in  STD_LOGIC_VECTOR (7 downto 0); 
           dk_b : in  STD_LOGIC_VECTOR (7 downto 0); 
			 
			  dk_d : in  STD_LOGIC_VECTOR (7 downto 0);
           dk_y : out  STD_LOGIC_VECTOR (15 downto 0)); 
end dk_pipeline_mult; 
 
architecture Behavioral of dk_pipeline_mult is 
 constant WIDTH: integer:=8;   
 signal dk_a1_reg, dk_a2_reg, dk_a3_reg, dk_a4_reg, dk_a5_reg, dk_a6_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_a0, dk_a1_next, dk_a2_next, dk_a3_next, dk_a4_next, dk_a5_next, dk_a6_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_b1_reg, dk_b2_reg, dk_b3_reg, dk_b4_reg, dk_b5_reg, dk_b6_reg: std_logic_vector(WIDTH-1 downto 0); 
 signal dk_b0, dk_b1_next, dk_b2_next, dk_b3_next, dk_b4_next, dk_b5_next, dk_b6_next : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_bv0, dk_bv1, dk_bv2, dk_bv3, dk_bv4, dk_bv5, dk_bv6, dk_bv7   : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_bp0, dk_bp1, dk_bp2, dk_bp3, dk_bp4, dk_bp5, dk_bp6, dk_bp7  : unsigned(2*WIDTH - 1 downto 0); 
 signal dk_pp1_reg, dk_pp2_reg, dk_pp3_reg, dk_pp4_reg, dk_pp5_reg, dk_pp6_reg, dk_pp7_reg : unsigned(2*WIDTH - 1 downto 0);   signal dk_pp0, dk_pp1_next, dk_pp2_next, dk_pp3_next, dk_pp4_next, dk_pp5_next, dk_pp6_next, dk_pp7_next: unsigned(2*WIDTH - 1 downto 0);
 
 
 signal dk_d1_reg, dk_d2_reg, dk_d3_reg, dk_d4_reg, dk_d5_reg, dk_d6_reg : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_d0, dk_d1_next, dk_d2_next, dk_d3_next, dk_d4_next, dk_d5_next, dk_d6_next  : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_dpp1_reg, dk_dpp2_reg, dk_dpp3_reg, dk_dpp4_reg, dk_dpp5_reg, dk_dpp6_reg, dk_dpp7_reg : unsigned(2*WIDTH - 1 downto 0);   signal dk_dpp0, dk_dpp1_next, dk_dpp2_next, dk_dpp3_next, dk_dpp4_next, dk_dpp5_next, dk_dpp6_next, dk_dpp7_next: unsigned(2*WIDTH - 1 downto 0);
 signal dk_dv0, dk_dv1, dk_dv2, dk_dv3, dk_dv4, dk_dv5, dk_dv6, dk_dv7   : std_logic_vector(WIDTH-1 downto 0); 
 signal dk_dp0, dk_dp1, dk_dp2, dk_dp3, dk_dp4, dk_dp5, dk_dp6, dk_dp7  : unsigned(2*WIDTH - 1 downto 0); 
 signal dk_w : unsigned (15 downto 0);
 
 
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
     dk_a1_reg   <= (others => '0'); 
     dk_a2_reg   <= (others => '0'); 
     dk_a3_reg   <= (others => '0'); 
     dk_a4_reg   <= (others => '0'); 
     dk_a5_reg   <= (others => '0'); 
     dk_a6_reg   <= (others => '0');	  
     dk_b1_reg   <= (others => '0'); 
     dk_b2_reg   <= (others => '0'); 
     dk_b3_reg   <= (others => '0'); 
     dk_b4_reg   <= (others => '0'); 
     dk_b5_reg   <= (others => '0'); 
     dk_b6_reg   <= (others => '0');

	  dk_dpp1_reg   <= (others => '0'); 
     dk_dpp2_reg   <= (others => '0'); 
     dk_dpp3_reg   <= (others => '0'); 
     dk_dpp4_reg   <= (others => '0'); 
     dk_dpp5_reg   <= (others => '0'); 
     dk_dpp6_reg   <= (others => '0'); 
     dk_dpp7_reg   <= (others => '0'); 
	  dk_d1_reg   <= (others => '0'); 
     dk_d2_reg   <= (others => '0'); 
     dk_d3_reg   <= (others => '0'); 
     dk_d4_reg   <= (others => '0'); 
     dk_d5_reg   <= (others => '0'); 
     dk_d6_reg   <= (others => '0');	
	  
   elsif (dk_clk'event and dk_clk = '1') then 
     dk_pp1_reg   <= dk_pp1_next; 
     dk_pp2_reg   <= dk_pp2_next; 
     dk_pp3_reg   <= dk_pp3_next; 
     dk_pp4_reg   <= dk_pp4_next; 
     dk_pp5_reg   <= dk_pp5_next; 
     dk_pp6_reg   <= dk_pp6_next; 
     dk_pp7_reg   <= dk_pp7_next;  
     dk_a1_reg   <= dk_a1_next; 
     dk_a2_reg   <= dk_a2_next; 
     dk_a3_reg   <= dk_a3_next; 
     dk_a4_reg   <= dk_a4_next; 
     dk_a5_reg   <= dk_a5_next; 
     dk_a6_reg   <= dk_a6_next; 
     dk_b1_reg   <= dk_b1_next; 
     dk_b2_reg   <= dk_b2_next; 
     dk_b3_reg   <= dk_b3_next; 
     dk_b4_reg   <= dk_b4_next; 
     dk_b5_reg   <= dk_b5_next; 
     dk_b6_reg   <= dk_b6_next; 
     dk_dpp1_reg   <= dk_dpp1_next; 
     dk_dpp2_reg   <= dk_dpp2_next; 
     dk_dpp3_reg   <= dk_dpp3_next; 
     dk_dpp4_reg   <= dk_dpp4_next; 
     dk_dpp5_reg   <= dk_dpp5_next; 
     dk_dpp6_reg   <= dk_dpp6_next; 
     dk_dpp7_reg   <= dk_dpp7_next;  
	  dk_d1_reg   <= dk_d1_next; 
     dk_d2_reg   <= dk_d2_next; 
     dk_d3_reg   <= dk_d3_next; 
     dk_d4_reg   <= dk_d4_next; 
     dk_d5_reg   <= dk_d5_next; 
     dk_d6_reg   <= dk_d6_next; 
   end if; 
 end process; 
-- stage 0 & 1 for pipeline 
 dk_bv0 <= (others => dk_b(0)); 
 dk_bp0 <= unsigned("00000000" & (dk_bv0 and dk_a)); 
 dk_pp0 <= dk_bp0; 
 dk_a0  <= dk_a; 
 dk_b0  <= dk_b; 
 
 dk_bv1 <= (others => dk_b0(1)); 
 dk_bp1 <= unsigned("0000000" & (dk_bv1 and dk_a0) & "0"); 
 dk_pp1_next <= dk_pp0 + dk_bp1; 
 dk_a1_next  <= dk_a0; 
 dk_b1_next  <= dk_b0; 
 
 dk_dv0 <= (others => dk_d(0)); 
 dk_dp0 <= unsigned("00000000" & (dk_dv0 and dk_d)); 
 dk_dpp0 <= dk_dp0; 
 dk_d0  <= dk_d; 


 dk_dv1 <= (others => dk_d0(1)); 
 dk_dp1 <= unsigned("0000000" & (dk_dv1 and dk_d0) & "0"); 
 dk_dpp1_next <= dk_dpp0 + dk_dp1; 
 dk_d1_next  <= dk_d0;  

-- stage 2 
 dk_bv2 <= (others => dk_b1_reg(2)); 
 dk_bp2 <= unsigned("000000" & (dk_bv2 and dk_a1_reg) & "00"); 
 dk_pp2_next <= dk_pp1_reg + dk_bp2; 
 dk_a2_next  <= dk_a1_reg; 
 dk_b2_next  <= dk_b1_reg;   
 
 dk_dv2 <= (others => dk_d1_reg(2)); 
 dk_dp2 <= unsigned("000000" & (dk_dv2 and dk_d1_reg) & "00"); 
 dk_dpp2_next <= dk_dpp1_reg + dk_dp2; 
 dk_d2_next  <= dk_d1_reg; 

-- stage 3 
 dk_bv3 <= (others => dk_b2_reg(3));   dk_bp3 <= unsigned("00000" & (dk_bv3 and dk_a2_reg) & "000"); 
 dk_pp3_next <= dk_pp2_reg + dk_bp3; 
 dk_a3_next  <= dk_a2_reg; 
 dk_b3_next  <= dk_b2_reg; 
 
 dk_dv3 <= (others => dk_d2_reg(3));   dk_dp3 <= unsigned("00000" & (dk_dv3 and dk_d2_reg) & "000"); 
 dk_dpp3_next <= dk_dpp2_reg + dk_dp3; 
 dk_d3_next  <= dk_d2_reg; 

-- stage 4 
 dk_bv4 <= (others => dk_b3_reg(4)); 
 dk_bp4 <= unsigned("0000" & (dk_bv4 and dk_a3_reg) & "0000"); 
 dk_pp4_next <= dk_pp3_reg + dk_bp4;
 dk_a4_next  <= dk_a3_reg; 
 dk_b4_next  <= dk_b3_reg; 
 
 dk_dv4 <= (others => dk_d3_reg(4)); 
 dk_dp4 <= unsigned("0000" & (dk_dv4 and dk_d3_reg) & "0000"); 
 dk_dpp4_next <= dk_dpp3_reg + dk_dp4;
 dk_d4_next  <= dk_d3_reg; 

-- stage 5
 dk_bv5 <= (others => dk_b4_reg(5));   dk_bp5 <= unsigned("000" & (dk_bv5 and dk_a4_reg) & "00000"); 
 dk_pp5_next <= dk_pp4_reg + dk_bp5; 
 dk_a5_next  <= dk_a4_reg; 
 dk_b5_next  <= dk_b4_reg; 
 
 dk_dv5 <= (others => dk_d4_reg(5));   dk_dp5 <= unsigned("000" & (dk_dv5 and dk_d4_reg) & "00000"); 
 dk_dpp5_next <= dk_dpp4_reg + dk_dp5; 
 dk_d5_next  <= dk_d4_reg;

-- stage 6
 dk_bv6 <= (others => dk_b5_reg(6));   dk_bp6 <= unsigned("00" & (dk_bv6 and dk_a5_reg) & "000000"); 
 dk_pp6_next <= dk_pp5_reg + dk_bp6; 
 dk_a6_next  <= dk_a5_reg; 
 dk_b6_next  <= dk_b5_reg; 
 
 dk_dv6 <= (others => dk_d5_reg(6));   dk_dp6 <= unsigned("00" & (dk_dv6 and dk_d5_reg) & "000000"); 
 dk_dpp6_next <= dk_dpp5_reg + dk_dp6; 
 dk_d6_next  <= dk_d5_reg;

-- stage 7
 dk_bv7 <= (others => dk_b6_reg(7));   dk_bp7 <= unsigned("0" & (dk_bv7 and dk_a6_reg) & "0000000"); 
 dk_pp7_next <= dk_pp6_reg + dk_bp7;
 
 dk_dv7 <= (others => dk_d6_reg(7));   dk_dp7 <= unsigned("0" & (dk_dv7 and dk_d6_reg) & "0000000"); 
 dk_dpp7_next <= dk_dpp6_reg + dk_dp7;
 dk_w <= dk_pp7_next+dk_dpp7_next;
-- result 
  
 dk_y <= std_logic_vector(dk_w); 

end Behavioral;  