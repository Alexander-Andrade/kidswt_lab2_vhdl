library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_scheme is
    Port (x1,x2,x3,x4 : in std_logic;
          y1,y2,y3,y4 : out std_logic);
end full_scheme;

architecture Behavioral of full_scheme is
    component NO2 is
        Port (A, B : in std_logic;
              Y : out std_logic);
    end component; 
    
    component A2 is
        Port (A, B : in std_logic;
              Y : out std_logic);
    end component;
    
    component A4 is
        Port (A,B,C,D : in std_logic;
              Y : out std_logic);
    end component;
    
    component N is
        Port ( A: in std_logic;
               Y: out std_logic);
    end component;
    
    component NA2 is
        Port (A, B :in std_logic;
              Y : out std_logic);
    end component;
    
    component NAO3 is
        Port ( A, B, C, D : in std_logic;
               Y: out std_logic);
    end component;
    
    component NAOA2 is
        Port (A, B, C, D : in std_logic;
              Y : out std_logic);
    end component;
    
    component NO3A2 is
        Port (A,B,D,C : in std_logic;
              Y : out std_logic);
    end component;
    
    signal a : std_logic := '0';
    signal b_vec : std_logic_vector(3 downto 1) := ('0','0','0');
    signal c_vec : std_logic_vector(7 downto 1) := ('0', '0', '0', '0', '0', '0', '0');
    signal d_vec : std_logic_vector(4 downto 1) := ('0', '0', '0', '0');
    signal e_vec : std_logic_vector(3 downto 1) := ('0', '0', '0');
begin
    a1 : NO2 port map(A => x3, B => x1, Y => a);
    
    b1 : A2 port map(A => x1, B => x3, Y => b_vec(1));
    b2 : N port map(A => a, Y => b_vec(2));
    b3 : N port map(A => e_vec(3), Y => b_vec(3));
    
    c1 : N port map(A => b_vec(1), Y => c_vec(1));
    c2 : N port map(A => b_vec(3), Y => c_vec(2));
    c3 : N port map(A => b_vec(2), Y => c_vec(3));
    c4 : N port map(A => x3, Y => c_vec(4));
    c5 : N port map(A => x4, Y => c_vec(5));
    c6 : N port map(A => b_vec(3), Y => c_vec(6));
    c7 : N port map(A => x2, Y => c_vec(7));
    
    d1 : N port map(A => c_vec(1), Y => d_vec(1));
    d2 : NAOA2 port map (A => c_vec(2), B => c_vec(3), C => x1, D => x3, Y => d_vec(2));
    d3 : NA2 port map (A => c_vec(4), B => x2, Y => d_vec(3));
    d4 : NO3A2 port map (A => c_vec(5), B => c_vec(6), C => b_vec(2), D => c_vec(7), Y => d_vec(4));
    
    e1 : NAO3 port map(A => d_vec(2), B => d_vec(1), C => c_vec(5), D => d_vec(4), Y => e_vec(1));
    e2 : A4 port map(A => c_vec(5), B => b_vec(3), C => c_vec(1), D => b_vec(1), Y => e_vec(2));
    e3 : NAO3 port map(A => d_vec(3), B => x2, C => c_vec(4), D => x4, Y => e_vec(3));
    
    y1 <= e_vec(1);
    y2 <= d_vec(4);
    y3 <= e_vec(2);
    y4 <= e_vec(3);
    
end Behavioral;
