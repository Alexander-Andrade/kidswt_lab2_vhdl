library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NO2_Test is
end NO2_Test;
--nand
architecture Behavioral of NO2_Test is
    component NO2 is
    Port (A, B : in std_logic;
          Y : out std_logic);
    end component;
    signal A : std_logic:= '0';
    signal B : std_logic:= '0';
    signal Y : std_logic:= '0'; 
begin
    uut : NO2 port map(A=>A, B=>B, Y=>Y);
    
    process
    begin
    
    A <= '0';
    B <= '0';
    wait for 10 ns;
    if Y = '0' then
        report "NO2 Error: Y must be 1"
        severity error;
    end if; 
    
    A <= '0';
    B <= '1';
    wait for 10 ns;
    if Y = '0' then
        report "NO2 Error: Y must be 1"
        severity error;
    end if; 
    
    A <= '0';
    B <= '1';
    wait for 10 ns;
    if Y = '0' then
        report "NO2 Error: Y must be 1"
        severity error;
    end if; 
    
    A <= '1';
    B <= '1';
    wait for 10 ns;
    if Y = '1' then
        report "NO2 Error: Y must be 0"
        severity error;
    else 
            report "NO2 Error: Good"
            severity note;
    end if; 
    
    end process;
end Behavioral;
