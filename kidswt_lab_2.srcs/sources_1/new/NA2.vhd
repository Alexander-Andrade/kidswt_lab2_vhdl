library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NA2 is
    Port (A, B :in std_logic;
          Y : out std_logic);
end NA2;

architecture Behavioral of NA2 is
begin
    Y <= (not (A and B));-- after 2 ns;
end Behavioral;
