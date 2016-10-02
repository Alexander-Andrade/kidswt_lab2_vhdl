library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NAOA2_Test is
end NAOA2_Test;

architecture Behavioral of NAOA2_Test is
    
    component NAOA2 is
        Port (A, B, C, D : in std_logic;
              Y : out std_logic);
    end component;
    
    signal in_vec : std_logic_vector(3 downto 0);
    signal Y : std_logic := '0';
begin
    uut : NAOA2 port map(A => in_vec(0), B => in_vec(1), C => in_vec(2), D => in_vec(3), Y => Y);
    
    process
        begin
            for i in 0 to 15 loop
                in_vec <= std_logic_vector(to_unsigned(i, in_vec'length));
                wait for 10 ns;
            end loop;
    end process;
end Behavioral;
