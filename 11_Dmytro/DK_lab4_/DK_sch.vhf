--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DK_sch.vhf
-- /___/   /\     Timestamp : 11/13/2016 20:17:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath D:/Xilinx/backups/6/DK_lab4_/ipcore_dir -intstyle ise -family virtex7 -flat -suppress -vhdl D:/Xilinx/backups/6/DK_lab4_/DK_sch.vhf -w D:/Xilinx/backups/6/DK_lab4_/DK_sch.sch
--Design Name: DK_sch
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

entity DK_sch is
   port ( CE       : in    std_logic; 
          CLK      : in    std_logic; 
          DK_A     : in    std_logic_vector (7 downto 0); 
          DK_B     : in    std_logic_vector (7 downto 0); 
          DK_C     : in    std_logic_vector (7 downto 0); 
          DK_D     : in    std_logic_vector (7 downto 0); 
          ZERO     : in    std_logic_vector (3 downto 0); 
          ZERO_bit : in    std_logic; 
          CU_bus   : out   std_logic_vector (23 downto 0); 
          DK_RES   : out   std_logic_vector (31 downto 0));
end DK_sch;

architecture BEHAVIORAL of DK_sch is
   signal ADDER_OUT         : std_logic_vector (31 downto 0);
   signal MUL_OUT_RAM2_RAM4 : std_logic_vector (31 downto 0);
   signal MUX1_MUL_A        : std_logic_vector (31 downto 0);
   signal MUX2              : std_logic_vector (31 downto 0);
   signal MUX3              : std_logic_vector (31 downto 0);
   signal MUX4              : std_logic_vector (31 downto 0);
   signal RAM1              : std_logic_vector (31 downto 0);
   signal RAM2              : std_logic_vector (31 downto 0);
   signal RAM3_MUL_B        : std_logic_vector (31 downto 0);
   signal RAM4              : std_logic_vector (31 downto 0);
   signal XLXN_90           : std_logic_vector (3 downto 0);
   signal XLXN_91           : std_logic_vector (31 downto 0);
   signal XLXN_92           : std_logic_vector (31 downto 0);
   signal XLXN_93           : std_logic_vector (31 downto 0);
   signal XLXN_94           : std_logic_vector (31 downto 0);
   signal CU_bus_DUMMY      : std_logic_vector (23 downto 0);
   component DK_counter
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component MUL32
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             clk : in    std_logic; 
             p   : out   std_logic_vector (31 downto 0));
   end component;
   
   component ROM_DK
      port ( CLK : in    std_logic; 
             A   : in    std_logic_vector (3 downto 0); 
             D   : out   std_logic_vector (23 downto 0));
   end component;
   
   component BUS_8_32_CONV
      port ( in_sig  : in    std_logic_vector (7 downto 0); 
             out_sig : out   std_logic_vector (31 downto 0));
   end component;
   
   component ADDER_32
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             clk : in    std_logic; 
             add : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (31 downto 0));
   end component;
   
   component DK_register32
      port ( ld  : in    std_logic; 
             clr : in    std_logic; 
             clk : in    std_logic; 
             d   : in    std_logic_vector (31 downto 0); 
             q   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX_32
      port ( s0     : in    std_logic; 
             data1  : in    std_logic_vector (31 downto 0); 
             data2  : in    std_logic_vector (31 downto 0); 
             data_o : out   std_logic_vector (31 downto 0); 
             CLK    : in    std_logic);
   end component;
   
   component RAM_32
      port ( WE  : in    std_logic; 
             CE  : in    std_logic; 
             OE  : in    std_logic; 
             A   : in    std_logic_vector (3 downto 0); 
             DI  : in    std_logic_vector (31 downto 0); 
             DQ  : out   std_logic_vector (31 downto 0); 
             CLK : in    std_logic);
   end component;
   
begin
   CU_bus(23 downto 0) <= CU_bus_DUMMY(23 downto 0);
   CNT : DK_counter
      port map (clk=>CLK,
                q(3 downto 0)=>XLXN_90(3 downto 0));
   
   MUL : MUL32
      port map (a(31 downto 0)=>MUX1_MUL_A(31 downto 0),
                b(31 downto 0)=>RAM3_MUL_B(31 downto 0),
                clk=>CLK,
                p(31 downto 0)=>MUL_OUT_RAM2_RAM4(31 downto 0));
   
   ROM : ROM_DK
      port map (A(3 downto 0)=>XLXN_90(3 downto 0),
                CLK=>CLK,
                D(23 downto 0)=>CU_bus_DUMMY(23 downto 0));
   
   XLXI_9 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>DK_A(7 downto 0),
                out_sig(31 downto 0)=>XLXN_91(31 downto 0));
   
   XLXI_10 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>DK_C(7 downto 0),
                out_sig(31 downto 0)=>XLXN_92(31 downto 0));
   
   XLXI_12 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>DK_B(7 downto 0),
                out_sig(31 downto 0)=>XLXN_93(31 downto 0));
   
   XLXI_13 : BUS_8_32_CONV
      port map (in_sig(7 downto 0)=>DK_D(7 downto 0),
                out_sig(31 downto 0)=>XLXN_94(31 downto 0));
   
   XLXI_15 : ADDER_32
      port map (a(31 downto 0)=>RAM4(31 downto 0),
                add=>CU_bus_DUMMY(0),
                b(31 downto 0)=>RAM2(31 downto 0),
                ce=>CE,
                clk=>CLK,
                s(31 downto 0)=>ADDER_OUT(31 downto 0));
   
   XLXI_17 : DK_register32
      port map (clk=>CLK,
                clr=>CU_bus_DUMMY(1),
                d(31 downto 0)=>ADDER_OUT(31 downto 0),
                ld=>CU_bus_DUMMY(2),
                q(31 downto 0)=>DK_RES(31 downto 0));
   
   XLXI_18 : MUX_32
      port map (CLK=>CLK,
                data1(31 downto 0)=>RAM3_MUL_B(31 downto 0),
                data2(31 downto 0)=>RAM1(31 downto 0),
                s0=>CU_bus_DUMMY(23),
                data_o(31 downto 0)=>MUX1_MUL_A(31 downto 0));
   
   XLXI_19 : MUX_32
      port map (CLK=>CLK,
                data1(31 downto 0)=>XLXN_93(31 downto 0),
                data2(31 downto 0)=>MUL_OUT_RAM2_RAM4(31 downto 0),
                s0=>CU_bus_DUMMY(22),
                data_o(31 downto 0)=>MUX2(31 downto 0));
   
   XLXI_20 : MUX_32
      port map (CLK=>CLK,
                data1(31 downto 0)=>XLXN_92(31 downto 0),
                data2(31 downto 0)=>ADDER_OUT(31 downto 0),
                s0=>CU_bus_DUMMY(21),
                data_o(31 downto 0)=>MUX3(31 downto 0));
   
   XLXI_21 : MUX_32
      port map (CLK=>CLK,
                data1(31 downto 0)=>XLXN_94(31 downto 0),
                data2(31 downto 0)=>MUL_OUT_RAM2_RAM4(31 downto 0),
                s0=>CU_bus_DUMMY(20),
                data_o(31 downto 0)=>MUX4(31 downto 0));
   
   XLXI_26 : RAM_32
      port map (A(3 downto 0)=>ZERO(3 downto 0),
                CE=>CE,
                CLK=>CLK,
                DI(31 downto 0)=>XLXN_91(31 downto 0),
                OE=>CU_bus_DUMMY(19),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM1(31 downto 0));
   
   XLXI_27 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(15 downto 12),
                CE=>CE,
                CLK=>CLK,
                DI(31 downto 0)=>MUX2(31 downto 0),
                OE=>CU_bus_DUMMY(18),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM2(31 downto 0));
   
   XLXI_30 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(11 downto 8),
                CE=>CE,
                CLK=>CLK,
                DI(31 downto 0)=>MUX3(31 downto 0),
                OE=>CU_bus_DUMMY(17),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM3_MUL_B(31 downto 0));
   
   XLXI_34 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(7 downto 4),
                CE=>CE,
                CLK=>CLK,
                DI(31 downto 0)=>MUX4(31 downto 0),
                OE=>CU_bus_DUMMY(16),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM4(31 downto 0));
   
end BEHAVIORAL;


