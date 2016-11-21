--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : AB_not_conv_scheme.vhf
-- /___/   /\     Timestamp : 11/22/2016 01:03:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Dima/Desktop/AB_lab4/ipcore_dir -intstyle ise -family virtex7 -flat -suppress -vhdl C:/Users/Dima/Desktop/AB_lab4/AB_not_conv_scheme.vhf -w C:/Users/Dima/Desktop/AB_lab4/AB_not_conv_scheme.sch
--Design Name: AB_not_conv_scheme
--Device: virtex7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AB_not_conv_scheme is
   port ( AB_A       : in    std_logic_vector (7 downto 0); 
          AB_B       : in    std_logic_vector (7 downto 0); 
          AB_C       : in    std_logic_vector (7 downto 0); 
          AB_const_5 : in    std_logic_vector (7 downto 0); 
          AB_D       : in    std_logic_vector (7 downto 0); 
          CLK        : in    std_logic; 
          ZERO       : in    std_logic_vector (3 downto 0); 
          AB_RES     : out   std_logic_vector (19 downto 0); 
          CU         : out   std_logic_vector (19 downto 0));
end AB_not_conv_scheme;

architecture BEHAVIORAL of AB_not_conv_scheme is
   attribute BOX_TYPE   : string ;
   signal ADDER_OUT             : std_logic_vector (19 downto 0);
   signal const_buf             : std_logic_vector (19 downto 0);
   signal MUL_OUT_ADDER_B       : std_logic_vector (19 downto 0);
   signal MUX1_OUT              : std_logic_vector (19 downto 0);
   signal MUX2_OUT              : std_logic_vector (19 downto 0);
   signal MUX3_OUT              : std_logic_vector (19 downto 0);
   signal MUX4_OUT              : std_logic_vector (19 downto 0);
   signal MUX5_OUT              : std_logic_vector (19 downto 0);
   signal RAM1_OUT              : std_logic_vector (19 downto 0);
   signal RAM2_OUT_ADDER_A      : std_logic_vector (19 downto 0);
   signal RAM3_OUT              : std_logic_vector (19 downto 0);
   signal RAM4_OUT              : std_logic_vector (19 downto 0);
   signal XLXN_52               : std_logic_vector (3 downto 0);
   signal XLXN_55               : std_logic;
   signal XLXN_57               : std_logic;
   signal XLXN_59               : std_logic;
   signal XLXN_61               : std_logic;
   signal XLXN_100              : std_logic_vector (19 downto 0);
   signal XLXN_102              : std_logic_vector (19 downto 0);
   signal XLXN_105              : std_logic_vector (19 downto 0);
   signal XLXN_107              : std_logic_vector (19 downto 0);
   signal CU_DUMMY              : std_logic_vector (19 downto 0);
   signal XLXI_2_CLK_openSignal : std_logic;
   component ROM_AB
      port ( CLK : in    std_logic; 
             A   : in    std_logic_vector (3 downto 0); 
             D   : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_Counter
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component MUX_20
      port ( s0     : in    std_logic; 
             CLK    : in    std_logic; 
             data1  : in    std_logic_vector (19 downto 0); 
             data2  : in    std_logic_vector (19 downto 0); 
             data_o : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_RAM
      port ( WE  : in    std_logic; 
             CE  : in    std_logic; 
             OE  : in    std_logic; 
             CLK : in    std_logic; 
             A   : in    std_logic_vector (3 downto 0); 
             DI  : in    std_logic_vector (19 downto 0); 
             DQ  : out   std_logic_vector (19 downto 0));
   end component;
   
   component MUL_20
      port ( a   : in    std_logic_vector (19 downto 0); 
             b   : in    std_logic_vector (19 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_ADDER_16_32
      port ( a   : in    std_logic_vector (19 downto 0); 
             b   : in    std_logic_vector (19 downto 0); 
             clk : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (19 downto 0));
   end component;
   
   component AB_register20
      port ( ld  : in    std_logic; 
             clr : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (19 downto 0); 
             q   : out   std_logic_vector (19 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUS_8_20_CONV
      port ( data_in  : in    std_logic_vector (7 downto 0); 
             data_out : out   std_logic_vector (19 downto 0));
   end component;
   
begin
   CU(19 downto 0) <= CU_DUMMY(19 downto 0);
   XLXI_2 : ROM_AB
      port map (A(3 downto 0)=>XLXN_52(3 downto 0),
                CLK=>XLXI_2_CLK_openSignal,
                D(19 downto 0)=>CU_DUMMY(19 downto 0));
   
   XLXI_9 : AB_Counter
      port map (clk=>CLK,
                q(3 downto 0)=>XLXN_52(3 downto 0));
   
   XLXI_11 : MUX_20
      port map (CLK=>CLK,
                data1(19 downto 0)=>XLXN_107(19 downto 0),
                data2(19 downto 0)=>MUL_OUT_ADDER_B(19 downto 0),
                s0=>CU_DUMMY(17),
                data_o(19 downto 0)=>MUX3_OUT(19 downto 0));
   
   XLXI_12 : MUX_20
      port map (CLK=>CLK,
                data1(19 downto 0)=>XLXN_105(19 downto 0),
                data2(19 downto 0)=>MUL_OUT_ADDER_B(19 downto 0),
                s0=>CU_DUMMY(16),
                data_o(19 downto 0)=>MUX4_OUT(19 downto 0));
   
   XLXI_13 : AB_RAM
      port map (A(3 downto 0)=>CU_DUMMY(11 downto 8),
                CE=>XLXN_61,
                CLK=>CLK,
                DI(19 downto 0)=>MUX3_OUT(19 downto 0),
                OE=>CU_DUMMY(15),
                WE=>XLXN_61,
                DQ(19 downto 0)=>RAM1_OUT(19 downto 0));
   
   XLXI_14 : AB_RAM
      port map (A(3 downto 0)=>CU_DUMMY(7 downto 4),
                CE=>XLXN_59,
                CLK=>CLK,
                DI(19 downto 0)=>MUX4_OUT(19 downto 0),
                OE=>CU_DUMMY(14),
                WE=>XLXN_59,
                DQ(19 downto 0)=>RAM2_OUT_ADDER_A(19 downto 0));
   
   XLXI_15 : AB_RAM
      port map (A(3 downto 0)=>ZERO(3 downto 0),
                CE=>XLXN_57,
                CLK=>CLK,
                DI(19 downto 0)=>XLXN_100(19 downto 0),
                OE=>CU_DUMMY(13),
                WE=>XLXN_57,
                DQ(19 downto 0)=>RAM3_OUT(19 downto 0));
   
   XLXI_16 : AB_RAM
      port map (A(3 downto 0)=>ZERO(3 downto 0),
                CE=>XLXN_55,
                CLK=>CLK,
                DI(19 downto 0)=>XLXN_102(19 downto 0),
                OE=>CU_DUMMY(12),
                WE=>XLXN_55,
                DQ(19 downto 0)=>RAM4_OUT(19 downto 0));
   
   XLXI_27 : MUL_20
      port map (a(19 downto 0)=>MUX1_OUT(19 downto 0),
                b(19 downto 0)=>MUX2_OUT(19 downto 0),
                clk=>CLK,
                p(19 downto 0)=>MUL_OUT_ADDER_B(19 downto 0));
   
   XLXI_28 : AB_ADDER_16_32
      port map (a(19 downto 0)=>RAM2_OUT_ADDER_A(19 downto 0),
                b(19 downto 0)=>MUL_OUT_ADDER_B(19 downto 0),
                ce=>CU_DUMMY(2),
                clk=>CLK,
                s(19 downto 0)=>ADDER_OUT(19 downto 0));
   
   XLXI_29 : MUX_20
      port map (CLK=>CLK,
                data1(19 downto 0)=>MUX5_OUT(19 downto 0),
                data2(19 downto 0)=>RAM2_OUT_ADDER_A(19 downto 0),
                s0=>CU_DUMMY(19),
                data_o(19 downto 0)=>MUX1_OUT(19 downto 0));
   
   XLXI_30 : MUX_20
      port map (CLK=>CLK,
                data1(19 downto 0)=>RAM1_OUT(19 downto 0),
                data2(19 downto 0)=>RAM4_OUT(19 downto 0),
                s0=>CU_DUMMY(18),
                data_o(19 downto 0)=>MUX2_OUT(19 downto 0));
   
   XLXI_55 : AB_register20
      port map (clk=>CLK,
                clr=>CU_DUMMY(0),
                d(19 downto 0)=>ADDER_OUT(19 downto 0),
                ld=>CU_DUMMY(1),
                q(19 downto 0)=>AB_RES(19 downto 0));
   
   XLXI_56 : VCC
      port map (P=>XLXN_55);
   
   XLXI_58 : VCC
      port map (P=>XLXN_57);
   
   XLXI_59 : VCC
      port map (P=>XLXN_59);
   
   XLXI_60 : VCC
      port map (P=>XLXN_61);
   
   XLXI_64 : MUX_20
      port map (CLK=>CLK,
                data1(19 downto 0)=>const_buf(19 downto 0),
                data2(19 downto 0)=>RAM3_OUT(19 downto 0),
                s0=>CU_DUMMY(3),
                data_o(19 downto 0)=>MUX5_OUT(19 downto 0));
   
   XLXI_65 : BUS_8_20_CONV
      port map (data_in(7 downto 0)=>AB_const_5(7 downto 0),
                data_out(19 downto 0)=>const_buf(19 downto 0));
   
   XLXI_66 : BUS_8_20_CONV
      port map (data_in(7 downto 0)=>AB_C(7 downto 0),
                data_out(19 downto 0)=>XLXN_100(19 downto 0));
   
   XLXI_67 : BUS_8_20_CONV
      port map (data_in(7 downto 0)=>AB_D(7 downto 0),
                data_out(19 downto 0)=>XLXN_102(19 downto 0));
   
   XLXI_69 : BUS_8_20_CONV
      port map (data_in(7 downto 0)=>AB_B(7 downto 0),
                data_out(19 downto 0)=>XLXN_105(19 downto 0));
   
   XLXI_70 : BUS_8_20_CONV
      port map (data_in(7 downto 0)=>AB_A(7 downto 0),
                data_out(19 downto 0)=>XLXN_107(19 downto 0));
   
end BEHAVIORAL;


