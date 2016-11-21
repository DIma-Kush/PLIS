--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DK_sch_drc.vhf
-- /___/   /\     Timestamp : 11/12/2016 11:34:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: D:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath D:/Xilinx/backups/6/DK_lab4_/ipcore_dir -intstyle ise -family virtex7 -flat -suppress -vhdl DK_sch_drc.vhf -w D:/Xilinx/backups/6/DK_lab4_/DK_sch.sch
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
   port ( CLK      : in    std_logic; 
          DK_A     : in    std_logic_vector (31 downto 0); 
          DK_B     : in    std_logic_vector (31 downto 0); 
          DK_C     : in    std_logic_vector (31 downto 0); 
          DK_D     : in    std_logic_vector (31 downto 0); 
          ZERO     : in    std_logic_vector (3 downto 0); 
          ZERO_bit : in    std_logic; 
          CU_bus   : out   std_logic_vector (23 downto 0); 
          DK_RES   : inout std_logic_vector (31 downto 0));
end DK_sch;

architecture BEHAVIORAL of DK_sch is
   signal MUL_OUT               : std_logic_vector (31 downto 0);
   signal MUX1                  : std_logic_vector (31 downto 0);
   signal MUX2                  : std_logic_vector (31 downto 0);
   signal MUX3                  : std_logic_vector (31 downto 0);
   signal MUX4                  : std_logic_vector (31 downto 0);
   signal RAM1                  : std_logic_vector (31 downto 0);
   signal RAM2                  : std_logic_vector (31 downto 0);
   signal RAM3                  : std_logic_vector (31 downto 0);
   signal RAM4                  : std_logic_vector (31 downto 0);
   signal XLXN_90               : std_logic_vector (3 downto 0);
   signal CU_bus_DUMMY          : std_logic_vector (23 downto 0);
   signal ADDSUB_ce_openSignal  : std_logic;
   signal ADDSUB_clk_openSignal : std_logic;
   signal MUL_clk_openSignal    : std_logic;
   signal XLXI_2_CE_openSignal  : std_logic;
   signal XLXI_3_CE_openSignal  : std_logic;
   signal XLXI_5_CE_openSignal  : std_logic;
   signal XLXI_7_CE_openSignal  : std_logic;
   component ADDER_32
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             clk : in    std_logic; 
             add : in    std_logic; 
             ce  : in    std_logic; 
             s   : out   std_logic_vector (31 downto 0));
   end component;
   
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
   
   component MUX_32
      port ( s0     : in    std_logic; 
             data1  : in    std_logic_vector (31 downto 0); 
             data2  : in    std_logic_vector (31 downto 0); 
             data_o : out   std_logic_vector (31 downto 0));
   end component;
   
   component ROM_DK
      port ( CLK : in    std_logic; 
             A   : in    std_logic_vector (3 downto 0); 
             D   : out   std_logic_vector (23 downto 0));
   end component;
   
   component RAM_32
      port ( WE : in    std_logic; 
             CE : in    std_logic; 
             OE : in    std_logic; 
             A  : in    std_logic_vector (3 downto 0); 
             DI : in    std_logic_vector (31 downto 0); 
             DQ : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   CU_bus(23 downto 0) <= CU_bus_DUMMY(23 downto 0);
   ADDSUB : ADDER_32
      port map (a(31 downto 0)=>RAM2(31 downto 0),
                add=>CU_bus_DUMMY(0),
                b(31 downto 0)=>RAM4(31 downto 0),
                ce=>ADDSUB_ce_openSignal,
                clk=>ADDSUB_clk_openSignal,
                s(31 downto 0)=>DK_RES(31 downto 0));
   
   CNT : DK_counter
      port map (clk=>CLK,
                q(3 downto 0)=>XLXN_90(3 downto 0));
   
   MUL : MUL32
      port map (a(31 downto 0)=>MUX1(31 downto 0),
                b(31 downto 0)=>RAM3(31 downto 0),
                clk=>MUL_clk_openSignal,
                p(31 downto 0)=>MUL_OUT(31 downto 0));
   
   MUX111 : MUX_32
      port map (data1(31 downto 0)=>RAM3(31 downto 0),
                data2(31 downto 0)=>RAM1(31 downto 0),
                s0=>CU_bus_DUMMY(23),
                data_o(31 downto 0)=>MUX1(31 downto 0));
   
   MUX211 : MUX_32
      port map (data1(31 downto 0)=>DK_B(31 downto 0),
                data2(31 downto 0)=>MUL_OUT(31 downto 0),
                s0=>CU_bus_DUMMY(22),
                data_o(31 downto 0)=>MUX2(31 downto 0));
   
   MUX311 : MUX_32
      port map (data1(31 downto 0)=>DK_C(31 downto 0),
                data2(31 downto 0)=>DK_RES(31 downto 0),
                s0=>CU_bus_DUMMY(21),
                data_o(31 downto 0)=>MUX3(31 downto 0));
   
   MUX411 : MUX_32
      port map (data1(31 downto 0)=>DK_D(31 downto 0),
                data2(31 downto 0)=>MUL_OUT(31 downto 0),
                s0=>CU_bus_DUMMY(20),
                data_o(31 downto 0)=>MUX4(31 downto 0));
   
   ROM : ROM_DK
      port map (A(3 downto 0)=>XLXN_90(3 downto 0),
                CLK=>CLK,
                D(23 downto 0)=>CU_bus_DUMMY(23 downto 0));
   
   XLXI_2 : RAM_32
      port map (A(3 downto 0)=>ZERO(3 downto 0),
                CE=>XLXI_2_CE_openSignal,
                DI(31 downto 0)=>DK_A(31 downto 0),
                OE=>CU_bus_DUMMY(19),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM1(31 downto 0));
   
   XLXI_3 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(15 downto 12),
                CE=>XLXI_3_CE_openSignal,
                DI(31 downto 0)=>MUX2(31 downto 0),
                OE=>CU_bus_DUMMY(18),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM2(31 downto 0));
   
   XLXI_5 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(11 downto 8),
                CE=>XLXI_5_CE_openSignal,
                DI(31 downto 0)=>MUX3(31 downto 0),
                OE=>CU_bus_DUMMY(17),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM3(31 downto 0));
   
   XLXI_7 : RAM_32
      port map (A(3 downto 0)=>CU_bus_DUMMY(7 downto 4),
                CE=>XLXI_7_CE_openSignal,
                DI(31 downto 0)=>MUX4(31 downto 0),
                OE=>CU_bus_DUMMY(16),
                WE=>ZERO_bit,
                DQ(31 downto 0)=>RAM4(31 downto 0));
   
end BEHAVIORAL;


