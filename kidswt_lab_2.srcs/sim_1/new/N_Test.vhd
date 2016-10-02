library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity N_Test is
end N_Test;

architecture Behavioral of N_Test is
    component N is
        Port ( A: in std_logic;
               Y: out std_logic);
    end component;
    signal A : std_logic := '0';
    signal Y : std_logic := '0';
begin
    uut : N port map(A => A, Y=>Y);
    
    process
    begin
        A <= '0';
        wait for 7 ns;
        if Y = '0' then
            report "Inverter Error: Y must be 0"
            severity error;
        end if;
        A <= '1';
        wait for 10 ns;
        if Y = '1' then
            report "Inverter Error: Y must be 1"
            severity error;
        end if;
    end process;
end Behavioral;
