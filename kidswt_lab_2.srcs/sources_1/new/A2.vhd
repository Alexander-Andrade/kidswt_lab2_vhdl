library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity A2 is
    Port (A, B : in std_logic;
          Y : out std_logic);
end A2;

architecture Behavioral of A2 is

begin
    Y <= (A and B);-- after 2 ns;
end Behavioral;
