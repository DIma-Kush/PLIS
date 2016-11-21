--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : AB_conv_scheme.vhf
-- /___/   /\     Timestamp : 11/21/2016 19:09:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath D:/Xilinx/backups/6/AB_lab4/ipcore_dir -intstyle ise -family virtex7 -flat -suppress -vhdl D:/Xilinx/backups/6/AB_lab4/AB_conv_scheme.vhf -w D:/Xilinx/backups/6/AB_lab4/AB_conv_scheme.sch
--Design Name: AB_conv_scheme
--Device: virtex7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD16CE_HXILINX_AB_conv_scheme -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD16CE_HXILINX_AB_conv_scheme is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(15 downto 0)
    );
end FD16CE_HXILINX_AB_conv_scheme;

architecture Behavioral of FD16CE_HXILINX_AB_conv_scheme is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL FD8CE_HXILINX_AB_conv_scheme -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_AB_conv_scheme is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_AB_conv_scheme;

architecture Behavioral of FD8CE_HXILINX_AB_conv_scheme is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AB_conv_scheme is
   port ( AB_A       : in    std_logic_vector (7 downto 0); 
          AB_B       : in    std_logic_vector (7 downto 0); 
          AB_C       : in    std_logic_vector (7 downto 0); 
          AB_const_5 : in    std_logic_vector (7 downto 0); 
          AB_D       : in    std_logic_vector (7 downto 0); 
          CE         : in    std_logic; 
          CLK        : in    std_logic; 
          CLR        : in    std_logic; 
          AB_RES     : out   std_logic_vector (19 downto 0));
end AB_conv_scheme;

architecture BEHAVIORAL of AB_conv_scheme is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ADD_A      : std_logic_vector (19 downto 0);
   signal ADD_B      : std_logic_vector (19 downto 0);
   signal ADD_OUT    : std_logic_vector (19 downto 0);
   signal B_stage1   : std_logic_vector (7 downto 0);
   signal C_stage1   : std_logic_vector (7 downto 0);
   signal C_stage2   : std_logic_vector (7 downto 0);
   signal D_stage1   : std_logic_vector (7 downto 0);
   signal D_stage2   : std_logic_vector (7 downto 0);
   signal MUL1_A     : std_logic_vector (7 downto 0);
   signal MUL1_B     : std_logic_vector (7 downto 0);
   signal MUL1_OUT   : std_logic_vector (15 downto 0);
   signal MUL2_A     : std_logic_vector (15 downto 0);
   signal MUL2_B     : std_logic_vector (15 downto 0);
   signal MUL2_OUT   : std_logic_vector (19 downto 0);
   signal MUL3_A     : std_logic_vector (7 downto 0);
   signal MUL3_B     : std_logic_vector (7 downto 0);
   signal MUL3_OUT   : std_logic_vector (15 downto 0);
   signal XLXN_73    : std_logic;
   signal XLXN_74    : std_logic;
   signal XLXN_75    : std_logic;
   signal XLXN_76    : std_logic;
   signal XLXN_77    : std_logic;
   signal XLXN_78    : std_logic;
   signal XLXN_79    : std_logic;
   signal XLXN_80    : std_logic;
   signal XLXN_81    : std_logic;
   signal XLXN_82    : std_logic;
   signal XLXN_118   : std_logic;
   signal XLXN_119   : std_logic;
   signal XLXN_121   : std_logic;
   signal XLXN_122   : std_logic;
   signal XLXN_124   : std_logic;
   signal XLXN_125   : std_logic;
   signal XLXN_137   : std_logic;
   signal XLXN_138   : std_logic;
   signal XLXN_174   : std_logic;
   signal XLXN_175   : std_logic;
   signal XLXN_193   : std_logic;
   signal XLXN_207   : std_logic_vector (15 downto 0);
   signal XLXN_209   : std_logic;
   signal XLXN_211   : std_logic;
   signal XLXN_212   : std_logic_vector (7 downto 0);
   signal XLXN_213   : std_logic_vector (7 downto 0);
   signal XLXN_239   : std_logic;
   signal XLXN_240   : std_logic;
   signal XLXN_241   : std_logic;
   signal XLXN_242   : std_logic;
   component FD8CE_HXILINX_AB_conv_scheme
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AB_MUL_8_16
      port ( a   : in    std_logic_vector (7 downto 0); 
             b   : in    std_logic_vector (7 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (15 downto 0));
   end component;
   
   component FD16CE_HXILINX_AB_conv_scheme
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUS_8_16_CONV
      port ( data_in  : in    std_logic_vector (7 downto 0); 
             data_out : out   std_logic_vector (15 downto 0));
   end component;
   
   component AB_MUL_16_16
      port ( a   : in    std_logic_vector (15 downto 0); 
             b   : in    std_logic_vector (15 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_register20
      port ( ld  : in    std_logic; 
             clr : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (19 downto 0); 
             q   : out   std_logic_vector (19 downto 0));
   end component;
   
   component BUS_16_20_CONV
      port ( in_sig  : in    std_logic_vector (15 downto 0); 
             out_sig : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_ADDER_16_32
      port ( a   : in    std_logic_vector (19 downto 0); 
             b   : in    std_logic_vector (19 downto 0); 
             clk : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (19 downto 0));
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_1";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_2";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_3";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_4";
   attribute HU_SET of XLXI_60 : label is "XLXI_60_6";
   attribute HU_SET of XLXI_63 : label is "XLXI_63_7";
   attribute HU_SET of XLXI_66 : label is "XLXI_66_8";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_5";
   attribute HU_SET of XLXI_108 : label is "XLXI_108_9";
   attribute HU_SET of XLXI_132 : label is "XLXI_132_10";
   attribute HU_SET of XLXI_144 : label is "XLXI_144_12";
   attribute HU_SET of XLXI_147 : label is "XLXI_147_11";
begin
   XLXI_5 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_74,
                CLR=>XLXN_73,
                D(7 downto 0)=>AB_const_5(7 downto 0),
                Q(7 downto 0)=>MUL1_A(7 downto 0));
   
   XLXI_10 : GND
      port map (G=>XLXN_73);
   
   XLXI_11 : VCC
      port map (P=>XLXN_74);
   
   XLXI_12 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_76,
                CLR=>XLXN_75,
                D(7 downto 0)=>AB_A(7 downto 0),
                Q(7 downto 0)=>MUL1_B(7 downto 0));
   
   XLXI_13 : GND
      port map (G=>XLXN_75);
   
   XLXI_14 : VCC
      port map (P=>XLXN_76);
   
   XLXI_15 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_78,
                CLR=>XLXN_77,
                D(7 downto 0)=>AB_B(7 downto 0),
                Q(7 downto 0)=>B_stage1(7 downto 0));
   
   XLXI_16 : GND
      port map (G=>XLXN_77);
   
   XLXI_17 : VCC
      port map (P=>XLXN_78);
   
   XLXI_18 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_80,
                CLR=>XLXN_79,
                D(7 downto 0)=>AB_C(7 downto 0),
                Q(7 downto 0)=>C_stage1(7 downto 0));
   
   XLXI_19 : GND
      port map (G=>XLXN_79);
   
   XLXI_20 : VCC
      port map (P=>XLXN_80);
   
   XLXI_21 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_82,
                CLR=>XLXN_81,
                D(7 downto 0)=>AB_D(7 downto 0),
                Q(7 downto 0)=>D_stage1(7 downto 0));
   
   XLXI_22 : GND
      port map (G=>XLXN_81);
   
   XLXI_23 : VCC
      port map (P=>XLXN_82);
   
   XLXI_39 : AB_MUL_8_16
      port map (a(7 downto 0)=>MUL1_A(7 downto 0),
                b(7 downto 0)=>MUL1_B(7 downto 0),
                clk=>CLK,
                p(15 downto 0)=>MUL1_OUT(15 downto 0));
   
   XLXI_58 : GND
      port map (G=>XLXN_118);
   
   XLXI_59 : VCC
      port map (P=>XLXN_119);
   
   XLXI_60 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_122,
                CLR=>XLXN_121,
                D(7 downto 0)=>C_stage1(7 downto 0),
                Q(7 downto 0)=>C_stage2(7 downto 0));
   
   XLXI_61 : GND
      port map (G=>XLXN_121);
   
   XLXI_62 : VCC
      port map (P=>XLXN_122);
   
   XLXI_63 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_125,
                CLR=>XLXN_124,
                D(7 downto 0)=>D_stage1(7 downto 0),
                Q(7 downto 0)=>D_stage2(7 downto 0));
   
   XLXI_64 : GND
      port map (G=>XLXN_124);
   
   XLXI_65 : VCC
      port map (P=>XLXN_125);
   
   XLXI_66 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_119,
                CLR=>XLXN_118,
                D(7 downto 0)=>B_stage1(7 downto 0),
                Q(7 downto 0)=>XLXN_212(7 downto 0));
   
   XLXI_76 : VCC
      port map (P=>XLXN_138);
   
   XLXI_78 : GND
      port map (G=>XLXN_137);
   
   XLXI_79 : FD16CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_138,
                CLR=>XLXN_137,
                D(15 downto 0)=>MUL1_OUT(15 downto 0),
                Q(15 downto 0)=>MUL2_A(15 downto 0));
   
   XLXI_91 : BUS_8_16_CONV
      port map (data_in(7 downto 0)=>XLXN_213(7 downto 0),
                data_out(15 downto 0)=>MUL2_B(15 downto 0));
   
   XLXI_104 : AB_MUL_8_16
      port map (a(7 downto 0)=>MUL3_A(7 downto 0),
                b(7 downto 0)=>MUL3_B(7 downto 0),
                clk=>CLK,
                p(15 downto 0)=>MUL3_OUT(15 downto 0));
   
   XLXI_108 : FD16CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_175,
                CLR=>XLXN_174,
                D(15 downto 0)=>MUL3_OUT(15 downto 0),
                Q(15 downto 0)=>XLXN_207(15 downto 0));
   
   XLXI_109 : VCC
      port map (P=>XLXN_175);
   
   XLXI_110 : GND
      port map (G=>XLXN_174);
   
   XLXI_128 : VCC
      port map (P=>XLXN_193);
   
   XLXI_132 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_211,
                CLR=>XLXN_209,
                D(7 downto 0)=>XLXN_212(7 downto 0),
                Q(7 downto 0)=>XLXN_213(7 downto 0));
   
   XLXI_133 : VCC
      port map (P=>XLXN_211);
   
   XLXI_134 : GND
      port map (G=>XLXN_209);
   
   XLXI_135 : AB_MUL_16_16
      port map (a(15 downto 0)=>MUL2_A(15 downto 0),
                b(15 downto 0)=>MUL2_B(15 downto 0),
                clk=>CLK,
                p(19 downto 0)=>MUL2_OUT(19 downto 0));
   
   XLXI_136 : AB_register20
      port map (clk=>CLK,
                clr=>CLR,
                d(19 downto 0)=>MUL2_OUT(19 downto 0),
                ld=>CE,
                q(19 downto 0)=>ADD_A(19 downto 0));
   
   XLXI_138 : AB_register20
      port map (clk=>CLK,
                clr=>CLR,
                d(19 downto 0)=>ADD_OUT(19 downto 0),
                ld=>CE,
                q(19 downto 0)=>AB_RES(19 downto 0));
   
   XLXI_139 : BUS_16_20_CONV
      port map (in_sig(15 downto 0)=>XLXN_207(15 downto 0),
                out_sig(19 downto 0)=>ADD_B(19 downto 0));
   
   XLXI_141 : AB_ADDER_16_32
      port map (a(19 downto 0)=>ADD_A(19 downto 0),
                b(19 downto 0)=>ADD_B(19 downto 0),
                ce=>XLXN_193,
                clk=>CLK,
                s(19 downto 0)=>ADD_OUT(19 downto 0));
   
   XLXI_144 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_240,
                CLR=>XLXN_239,
                D(7 downto 0)=>D_stage2(7 downto 0),
                Q(7 downto 0)=>MUL3_B(7 downto 0));
   
   XLXI_145 : VCC
      port map (P=>XLXN_240);
   
   XLXI_146 : GND
      port map (G=>XLXN_239);
   
   XLXI_147 : FD8CE_HXILINX_AB_conv_scheme
      port map (C=>CLK,
                CE=>XLXN_242,
                CLR=>XLXN_241,
                D(7 downto 0)=>C_stage2(7 downto 0),
                Q(7 downto 0)=>MUL3_A(7 downto 0));
   
   XLXI_148 : VCC
      port map (P=>XLXN_242);
   
   XLXI_149 : GND
      port map (G=>XLXN_241);
   
end BEHAVIORAL;


