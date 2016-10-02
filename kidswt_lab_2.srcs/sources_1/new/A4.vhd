library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity A4 is
    Port (A,B,C,D : in std_logic;
          Y : out std_logic);
end A4;

architecture Behavioral of A4 is
begin
    Y <= (A and B and C and D);-- after 4 ns;
end Behavioral;
