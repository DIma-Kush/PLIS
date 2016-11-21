library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity DK_Conventer2 is
Port ( DK_reset : in STD_LOGIC;
DK_a : in STD_LOGIC_VECTOR (7 downto 0);
DK_b : in STD_LOGIC_VECTOR (7 downto 0);
DK_y : out STD_LOGIC_VECTOR (15 downto 0));
end DK_Conventer2;
architecture Behavioral of DK_Conventer2 is
constant WIDTH: integer:=16;
signal DK_bv0, DK_bv1, DK_bv2, DK_bv3, DK_bv4, DK_bv5, DK_bv6, DK_bv7 : std_logic_vector(WIDTH - 1 downto 0);
signal DK_bp0, DK_bp1, DK_bp2, DK_bp3, DK_bp4, DK_bp5, DK_bp6, DK_bp7 : unsigned(2*WIDTH - 1 downto 0);
signal DK_pp01_reg, DK_pp23_reg, DK_pp45_reg, DK_pp67_reg, DK_pp0123_reg, DK_pp4567_reg, DK_pp01234567_reg : unsigned(2*WIDTH - 1 downto 0);
signal DK_pp01_next, DK_pp23_next, DK_pp45_next, DK_pp67_next, DK_pp0123_next, DK_pp4567_next, DK_pp01234567_next : unsigned(2*WIDTH - 1 downto 0);
begin
-- pipeline registers

--stage 1 - bit product -
DK_bv0 <= (others => DK_b(0));
DK_bp0 <= unsigned("00000000" & (DK_bv0 and DK_a));
DK_bv1 <= (others => DK_b(1));
DK_bp1 <= unsigned("0000000" & (DK_bv1 and DK_a) & "0");
DK_bv2 <= (others => DK_b(2));
DK_bp2 <= unsigned("000000" & (DK_bv2 and DK_a) & "00");
DK_bv3 <= (others => DK_b(3));
DK_bp3 <= unsigned("00000" & (DK_bv3 and DK_a) & "000");
DK_bv4 <= (others => DK_b(4));
DK_bp4 <= unsigned("0000" & (DK_bv4 and DK_a) & "0000");
DK_bv5 <= (others => DK_b(5));
DK_bp5 <= unsigned("000" & (DK_bv5 and DK_a) & "00000");
DK_bv6 <= (others => DK_b(6));
DK_bp6 <= unsigned("00" & (DK_bv6 and DK_a) & "000000");
DK_bv7 <= (others => DK_b(7));
DK_bp7 <= unsigned("0" & (DK_bv7 and DK_a) & "0000000");
-- adder
DK_pp01_next <= DK_bp0 + DK_bp1;
DK_pp23_next <= DK_bp2 + DK_bp3;
DK_pp45_next <= DK_bp4 + DK_bp5;
DK_pp67_next <= DK_bp6 + DK_bp7;
-- stage 2
DK_pp0123_next <= DK_pp01_next + DK_pp23_next;
DK_pp4567_next <= DK_pp45_next + DK_pp67_next;

-- stage 3
DK_pp01234567_next <= DK_pp0123_next + DK_pp4567_next;
DK_y <= std_logic_vector(DK_pp01234567_next(15 downto 0));
end Behavioral;
