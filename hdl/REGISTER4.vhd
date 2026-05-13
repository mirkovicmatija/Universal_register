LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.MY_COMPONENTS.all;

ENTITY REGISTER4 IS PORT (
    CLK, RST, lin, rin, S0, S1 : IN STD_LOGIC;
    data_in: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_out: out STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END entity REGISTER4;

architecture REGISTER4_BEH OF REGISTER4 is 

   

signal C0,C1,C2,C3: STD_LOGIC;
signal E0,E1,E2,E3: STD_LOGIC;

begin

    MX1: entity work.MUX4_1 port map(data_out(0), data_out(1), lin, data_in(0), S0, S1, C0);
    MX2: entity work.MUX4_1 port map(data_out(1), data_out(2), data_out(0), data_in(1), S0, S1, C1);
    MX3: entity work.MUX4_1 port map(data_out(2), data_out(3), data_out(1), data_in(2), S0, S1, C2);
    MX4: entity work.MUX4_1 port map(data_out(3), rin, data_out(2), data_in(3), S0, S1, C3);

    JKFF1: entity work.JK_FF port map(RST, CLK, C0, NOT C0, data_out(0), E0);
    JKFF2: entity work.JK_FF port map(RST, CLK, C1, NOT C1, data_out(1), E1); 
    JKFF3: entity work.JK_FF port map(RST, CLK, C2, NOT C2, data_out(2), E2); 
    JKFF4: entity work.JK_FF port map(RST, CLK, C3, NOT C3, data_out(3), E3);  


end REGISTER4_BEH;