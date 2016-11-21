--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DK_Conv_Scheme.vhf
-- /___/   /\     Timestamp : 11/14/2016 18:41:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath D:/Xilinx/backups/6/DK_lab4_/ipcore_dir -intstyle ise -family virtex7 -flat -suppress -vhdl D:/Xilinx/backups/6/DK_lab4_/DK_Conv_Scheme.vhf -w D:/Xilinx/backups/6/DK_lab4_/DK_Conv_Scheme.sch
--Design Name: DK_Conv_Scheme
--Device: virtex7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD16CE_HXILINX_DK_Conv_Scheme -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD16CE_HXILINX_DK_Conv_Scheme is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(15 downto 0)
    );
end FD16CE_HXILINX_DK_Conv_Scheme;

architecture Behavioral of FD16CE_HXILINX_DK_Conv_Scheme is

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

----- CELL FD8CE_HXILINX_DK_Conv_Scheme -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_DK_Conv_Scheme is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_DK_Conv_Scheme;

architecture Behavioral of FD8CE_HXILINX_DK_Conv_Scheme is

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

entity DK_Conv_Scheme is
   port ( C       : in    std_logic; 
          CE      : in    std_logic; 
          CLR     : in    std_logic; 
          DK_A    : in    std_logic_vector (7 downto 0); 
          DK_B    : in    std_logic_vector (7 downto 0); 
          DK_C    : in    std_logic_vector (7 downto 0); 
          DK_D    : in    std_logic_vector (7 downto 0); 
          ONE     : in    std_logic; 
          ZERO    : in    std_logic; 
          DK_OUT2 : out   std_logic_vector (31 downto 0));
end DK_Conv_Scheme;

architecture BEHAVIORAL of DK_Conv_Scheme is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal ADDER_A             : std_logic_vector (31 downto 0);
   signal ADDER_B             : std_logic_vector (31 downto 0);
   signal ADDER_OUT           : std_logic_vector (31 downto 0);
   signal buf_A_stage1        : std_logic_vector (7 downto 0);
   signal buf_A_stage2        : std_logic_vector (7 downto 0);
   signal buf_A_stage3        : std_logic_vector (7 downto 0);
   signal buf_B_stage1        : std_logic_vector (7 downto 0);
   signal buf_B_stage2        : std_logic_vector (7 downto 0);
   signal buf_B_stage3        : std_logic_vector (7 downto 0);
   signal buf_B_stage4        : std_logic_vector (7 downto 0);
   signal buf_C_stage0        : std_logic_vector (15 downto 0);
   signal buf_d_stage1        : std_logic_vector (7 downto 0);
   signal c_mul_c             : std_logic_vector (15 downto 0);
   signal from_buf_to_sub_C   : std_logic_vector (15 downto 0);
   signal from_buf_to_sub_D   : std_logic_vector (7 downto 0);
   signal from_mul_one_to_buf : std_logic_vector (15 downto 0);
   signal MUL2_A              : std_logic_vector (31 downto 0);
   signal MUL2_B              : std_logic_vector (31 downto 0);
   signal MUL2_OUT            : std_logic_vector (31 downto 0);
   signal SUB_A               : std_logic_vector (31 downto 0);
   signal SUB_B               : std_logic_vector (31 downto 0);
   signal SUB_OUT             : std_logic_vector (31 downto 0);
   signal XLXN_2              : std_logic;
   signal XLXN_3              : std_logic;
   signal XLXN_4              : std_logic;
   signal XLXN_5              : std_logic;
   signal XLXN_6              : std_logic;
   signal XLXN_7              : std_logic;
   signal XLXN_8              : std_logic;
   signal XLXN_9              : std_logic;
   signal XLXN_10             : std_logic;
   signal XLXN_11             : std_logic;
   signal XLXN_13             : std_logic;
   signal XLXN_14             : std_logic;
   signal XLXN_15             : std_logic;
   signal XLXN_16             : std_logic;
   signal XLXN_17             : std_logic;
   signal XLXN_19             : std_logic;
   signal XLXN_20             : std_logic;
   signal XLXN_22             : std_logic;
   signal XLXN_23             : std_logic;
   signal XLXN_24             : std_logic;
   signal XLXN_25             : std_logic;
   signal XLXN_26             : std_logic;
   signal XLXN_27             : std_logic;
   signal XLXN_31             : std_logic;
   signal XLXN_32             : std_logic;
   signal XLXN_33             : std_logic;
   component FD16CE_HXILINX_DK_Conv_Scheme
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component mult_Core
      port ( a   : in    std_logic_vector (15 downto 0); 
             b   : in    std_logic_vector (15 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (15 downto 0));
   end component;
   
   component MUL32
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (31 downto 0));
   end component;
   
   component ADDER_32
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             clk : in    std_logic; 
             add : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUS_8_16_CONV
      port ( data_in  : in    std_logic_vector (7 downto 0); 
             data_out : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUS_16_32_CONV
      port ( data_in  : in    std_logic_vector (15 downto 0); 
             data_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component FD8CE_HXILINX_DK_Conv_Scheme
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUS_8_32_CONV
      port ( in_sig  : in    std_logic_vector (7 downto 0); 
             out_sig : out   std_logic_vector (31 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component DK_register32
      port ( ld  : in    std_logic; 
             clr : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (31 downto 0); 
             q   : out   std_logic_vector (31 downto 0));
   end component;
   
   attribute HU_SET of buf_c_mul_c : label is "buf_c_mul_c_0";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_1";
   attribute HU_SET of XLXI_253 : label is "XLXI_253_2";
   attribute HU_SET of XLXI_254 : label is "XLXI_254_3";
   attribute HU_SET of XLXI_255 : label is "XLXI_255_4";
   attribute HU_SET of XLXI_256 : label is "XLXI_256_5";
   attribute HU_SET of XLXI_257 : label is "XLXI_257_6";
   attribute HU_SET of XLXI_258 : label is "XLXI_258_7";
   attribute HU_SET of XLXI_259 : label is "XLXI_259_8";
   attribute HU_SET of XLXI_260 : label is "XLXI_260_9";
   attribute HU_SET of XLXI_261 : label is "XLXI_261_10";
begin
   buf_c_mul_c : FD16CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_2,
                CLR=>XLXN_33,
                D(15 downto 0)=>from_mul_one_to_buf(15 downto 0),
                Q(15 downto 0)=>from_buf_to_sub_C(15 downto 0));
   
   XLXI_76 : mult_Core
      port map (a(15 downto 0)=>c_mul_c(15 downto 0),
                b(15 downto 0)=>c_mul_c(15 downto 0),
                clk=>C,
                p(15 downto 0)=>from_mul_one_to_buf(15 downto 0));
   
   XLXI_79 : FD16CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_3,
                CLR=>XLXN_32,
                D(15 downto 0)=>buf_C_stage0(15 downto 0),
                Q(15 downto 0)=>c_mul_c(15 downto 0));
   
   XLXI_199 : MUL32
      port map (a(31 downto 0)=>MUL2_A(31 downto 0),
                b(31 downto 0)=>MUL2_B(31 downto 0),
                clk=>C,
                p(31 downto 0)=>MUL2_OUT(31 downto 0));
   
   XLXI_200 : ADDER_32
      port map (a(31 downto 0)=>ADDER_A(31 downto 0),
                add=>ONE,
                b(31 downto 0)=>ADDER_B(31 downto 0),
                ce=>XLXN_14,
                clk=>C,
                s(31 downto 0)=>ADDER_OUT(31 downto 0));
   
   XLXI_234 : BUS_8_16_CONV
      port map (data_in(7 downto 0)=>DK_C(7 downto 0),
                data_out(15 downto 0)=>buf_C_stage0(15 downto 0));
   
   XLXI_244 : BUS_16_32_CONV
      port map (data_in(15 downto 0)=>from_buf_to_sub_C(15 downto 0),
                data_out(31 downto 0)=>SUB_A(31 downto 0));
   
   XLXI_252 : ADDER_32
      port map (a(31 downto 0)=>SUB_B(31 downto 0),
                add=>ZERO,
                b(31 downto 0)=>SUB_A(31 downto 0),
                ce=>XLXN_13,
                clk=>C,
                s(31 downto 0)=>SUB_OUT(31 downto 0));
   
   XLXI_253 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_4,
                CLR=>XLXN_20,
                D(7 downto 0)=>DK_D(7 downto 0),
                Q(7 downto 0)=>buf_d_stage1(7 downto 0));
   
   XLXI_254 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_17,
                CLR=>XLXN_19,
                D(7 downto 0)=>buf_d_stage1(7 downto 0),
                Q(7 downto 0)=>from_buf_to_sub_D(7 downto 0));
   
   XLXI_255 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_5,
                CLR=>XLXN_23,
                D(7 downto 0)=>DK_A(7 downto 0),
                Q(7 downto 0)=>buf_A_stage1(7 downto 0));
   
   XLXI_256 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_15,
                CLR=>XLXN_22,
                D(7 downto 0)=>buf_A_stage1(7 downto 0),
                Q(7 downto 0)=>buf_A_stage2(7 downto 0));
   
   XLXI_257 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_16,
                CLR=>XLXN_31,
                D(7 downto 0)=>buf_A_stage2(7 downto 0),
                Q(7 downto 0)=>buf_A_stage3(7 downto 0));
   
   XLXI_258 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_6,
                CLR=>XLXN_24,
                D(7 downto 0)=>DK_B(7 downto 0),
                Q(7 downto 0)=>buf_B_stage1(7 downto 0));
   
   XLXI_259 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_7,
                CLR=>XLXN_25,
                D(7 downto 0)=>buf_B_stage1(7 downto 0),
                Q(7 downto 0)=>buf_B_stage2(7 downto 0));
   
   XLXI_260 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_8,
                CLR=>XLXN_26,
                D(7 downto 0)=>buf_B_stage2(7 downto 0),
                Q(7 downto 0)=>buf_B_stage3(7 downto 0));
   
   XLXI_261 : FD8CE_HXILINX_DK_Conv_Scheme
      port map (C=>C,
                CE=>XLXN_9,
                CLR=>XLXN_27,
                D(7 downto 0)=>buf_B_stage3(7 downto 0),
                Q(7 downto 0)=>buf_B_stage4(7 downto 0));
   
   XLXI_262 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>buf_B_stage4(7 downto 0),
                out_sig(31 downto 0)=>ADDER_A(31 downto 0));
   
   XLXI_263 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>from_buf_to_sub_D(7 downto 0),
                out_sig(31 downto 0)=>SUB_B(31 downto 0));
   
   XLXI_265 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>buf_A_stage3(7 downto 0),
                out_sig(31 downto 0)=>MUL2_B(31 downto 0));
   
   XLXI_266 : VCC
      port map (P=>XLXN_2);
   
   XLXI_267 : VCC
      port map (P=>XLXN_3);
   
   XLXI_269 : VCC
      port map (P=>XLXN_4);
   
   XLXI_270 : VCC
      port map (P=>XLXN_5);
   
   XLXI_271 : VCC
      port map (P=>XLXN_6);
   
   XLXI_272 : VCC
      port map (P=>XLXN_7);
   
   XLXI_273 : VCC
      port map (P=>XLXN_8);
   
   XLXI_275 : VCC
      port map (P=>XLXN_9);
   
   XLXI_276 : VCC
      port map (P=>XLXN_10);
   
   XLXI_277 : VCC
      port map (P=>XLXN_11);
   
   XLXI_279 : VCC
      port map (P=>XLXN_13);
   
   XLXI_280 : VCC
      port map (P=>XLXN_14);
   
   XLXI_281 : VCC
      port map (P=>XLXN_15);
   
   XLXI_282 : VCC
      port map (P=>XLXN_16);
   
   XLXI_283 : VCC
      port map (P=>XLXN_17);
   
   XLXI_284 : GND
      port map (G=>XLXN_19);
   
   XLXI_286 : GND
      port map (G=>XLXN_20);
   
   XLXI_287 : GND
      port map (G=>XLXN_24);
   
   XLXI_288 : GND
      port map (G=>XLXN_25);
   
   XLXI_289 : GND
      port map (G=>XLXN_23);
   
   XLXI_290 : GND
      port map (G=>XLXN_22);
   
   XLXI_291 : GND
      port map (G=>XLXN_26);
   
   XLXI_292 : GND
      port map (G=>XLXN_27);
   
   XLXI_295 : GND
      port map (G=>XLXN_31);
   
   XLXI_297 : GND
      port map (G=>XLXN_32);
   
   XLXI_298 : GND
      port map (G=>XLXN_33);
   
   XLXI_301 : DK_register32
      port map (clk=>C,
                clr=>CLR,
                d(31 downto 0)=>ADDER_OUT(31 downto 0),
                ld=>CE,
                q(31 downto 0)=>DK_OUT2(31 downto 0));
   
   XLXI_302 : DK_register32
      port map (clk=>C,
                clr=>CLR,
                d(31 downto 0)=>MUL2_OUT(31 downto 0),
                ld=>XLXN_10,
                q(31 downto 0)=>ADDER_B(31 downto 0));
   
   XLXI_303 : DK_register32
      port map (clk=>C,
                clr=>CLR,
                d(31 downto 0)=>SUB_OUT(31 downto 0),
                ld=>XLXN_11,
                q(31 downto 0)=>MUL2_A(31 downto 0));
   
end BEHAVIORAL;


