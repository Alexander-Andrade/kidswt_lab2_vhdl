library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_scheme_test is
end full_scheme_test;

architecture Behavioral of full_scheme_test is
    component full_scheme is
        Port (x1,x2,x3,x4 : in std_logic;
              y1,y2,y3,y4 : out std_logic);
    end component;
    
    signal x : std_logic_vector(4 downto 1);
    signal y : std_logic_vector(4 downto 1);
begin
    uut : full_scheme port map(x1 => x(1), x2 => x(2), x3 => x(3), x4 => x(4), y1 => y(1), y2 => y(2), y3 => y(3), y4 => y(4));

    process
    begin
        for i in 0 to 15 loop
            x <= std_logic_vector(to_unsigned(i, x'length));
            wait for 10 ns;
        end loop;
    end process;
end Behavioral;
