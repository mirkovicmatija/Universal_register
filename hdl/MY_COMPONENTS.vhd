LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

PACKAGE MY_COMPONENTS IS 

component MUX4_1 IS port ( 
    A0 : IN STD_LOGIC; 
    A1 : IN STD_LOGIC; 
    A2 : IN STD_LOGIC; 
    A3 : IN STD_LOGIC;
    S0 : IN STD_LOGIC; 
    S1 : IN STD_LOGIC;
    Z: OUT STD_LOGIC);
end component;     

component JK_FF IS port ( 
    RST: IN STD_LOGIC;
    CLK: IN STD_LOGIC;
    J: IN STD_LOGIC;
    K: IN STD_LOGIC;
    Q: OUT STD_LOGIC;
    QN: OUT STD_LOGIC);
end component;  

END MY_COMPONENTS;