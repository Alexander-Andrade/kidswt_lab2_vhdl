library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NO2 is
    Port (A, B : in std_logic;
          Y : out std_logic);
end NO2;

architecture Behavioral of NO2 is
begin
    Y <= not (A or B); -- after 3 ns;
end Behavioral;
