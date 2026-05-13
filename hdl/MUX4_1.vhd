LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY MUX4_1 IS PORT(
    A0, A1, A2, A3 : IN STD_LOGIC;
    S0, S1 : IN STD_LOGIC;
    Z: OUT STD_LOGIC
);
END ENTITY MUX4_1;

ARCHITECTURE MUX4_1_BEH OF  MUX4_1 IS
BEGIN
        PROCESS(A0, A1, A2, A3, S0, S1)
        BEGIN
        IF (S0 = '0' and S1 = '0') THEN Z <= A0;
        ELSIF (S0 = '1' and S1 = '0') THEN Z <= A1;
        ELSIF (S0 = '0' and S1 = '1') THEN Z <= A2;
        ELSE Z <= A3;
        END IF;
        END PROCESS;
END  MUX4_1_BEH;