library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NAO3 is
    Port ( A, B, C, D : in std_logic;
           Y: out std_logic);
end NAO3;

architecture Behavioral of NAO3 is
begin
    Y <= not( A and (B or C or D));-- after 5 ns;
end Behavioral;
