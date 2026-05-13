LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY JK_FF IS PORT( RST: IN STD_LOGIC;
        CLK: IN STD_LOGIC;
        J: IN STD_LOGIC;
        K: IN STD_LOGIC;
        Q: OUT STD_LOGIC;
        QN: OUT STD_LOGIC
);
END ENTITY JK_FF;

ARCHITECTURE JK_FF_BEH OF JK_FF IS
SIGNAL s_Q: STD_LOGIC;
BEGIN
        PROCESS(CLK, RST)
        BEGIN
        IF(RST = '0') THEN
                IF (CLK'EVENT AND CLK = '1') THEN
                        IF(J = '0' AND K = '0') THEN s_Q <= s_Q;
                        ELSIF(J = '0' AND K = '1') THEN s_Q <= '0';
                        ELSIF(J = '1' AND K = '0') THEN s_Q <= '1';
                        ELSE s_Q <= NOT s_Q;
                   END IF;
                END IF;
        ELSE s_Q <= '0';
        END IF;
        END PROCESS;
        Q <= s_Q;
        QN <= NOT s_Q;
END JK_FF_BEH;
