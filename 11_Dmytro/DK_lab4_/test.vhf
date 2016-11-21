--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : test.vhf
-- /___/   /\     Timestamp : 10/15/2016 23:43:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family virtex7 -flat -suppress -vhdl D:/Xilinx/DK_lab4_/test.vhf -w D:/Xilinx/DK_lab4_/test.sch
--Design Name: test
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

entity test is
   port ( DK_A     : in    std_logic_vector (7 downto 0); 
          DK_B     : in    std_logic_vector (7 downto 0); 
          DK_CLK   : in    std_logic; 
          DK_D     : in    std_logic_vector (7 downto 0); 
          DK_RESET : in    std_logic; 
          DK_OUT   : out   std_logic_vector (15 downto 0));
end test;

architecture BEHAVIORAL of test is
   component dk_pipeline_mult2
      port ( dk_clk   : in    std_logic; 
             dk_reset : in    std_logic; 
             dk_a     : in    std_logic_vector (7 downto 0); 
             dk_b     : in    std_logic_vector (7 downto 0); 
             dk_d     : in    std_logic_vector (7 downto 0); 
             dk_y     : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_7 : dk_pipeline_mult2
      port map (dk_a(7 downto 0)=>DK_A(7 downto 0),
                dk_b(7 downto 0)=>DK_B(7 downto 0),
                dk_clk=>DK_CLK,
                dk_d(7 downto 0)=>DK_D(7 downto 0),
                dk_reset=>DK_RESET,
                dk_y(15 downto 0)=>DK_OUT(15 downto 0));
   
end BEHAVIORAL;


