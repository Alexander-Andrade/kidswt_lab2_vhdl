library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAOA2 is
    Port (A, B, C, D : in std_logic;
          Y : out std_logic);
end NAOA2;

architecture Behavioral of NAOA2 is
begin
    Y <= not (A and (B or (C and D)));-- after 4 ns;
end Behavioral;
