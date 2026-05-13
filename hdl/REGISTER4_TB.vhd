LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY REGISTER4_TB IS 
END ENTITY;

ARCHITECTURE REGISTER4_TB_beh OF REGISTER4_TB IS COMPONENT REGISTER4 IS PORT (
  CLK, RST, lin, rin, S0, S1 : IN STD_LOGIC;
  data_in: IN STD_LOGIC_VECTOR(3 downto 0); 
  data_out: OUT STD_LOGIC_VECTOR(3 downto 0) 
);
END COMPONENT;


SIGNAL s_clk, s_lin, s_rin, s_S0, s_S1 : STD_LOGIC;
SIGNAL s_data_in, s_data_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL flag : STD_LOGIC := '0';
SIGNAL s_rst : STD_LOGIC := '0';

BEGIN
    
    DUT: REGISTER4 PORT MAP(
        CLK  => s_clk,
        RST  => s_rst,
        S0 => s_S0,
        S1 => s_s1,
        lin  => s_lin,
        rin  => s_rin,
        data_in  => s_data_in,
        data_out  => s_data_out
        );


    CLK: PROCESS BEGIN
        IF (flag = '1') THEN
            WAIT;
        END IF;
        s_clk <= '0';
        WAIT FOR 5 ns;
        s_clk <= '1';
        WAIT FOR 5 ns;
    END PROCESS;

    STIMULI : PROCESS BEGIN
		flag <= '0';
        WAIT FOR 20 ns;

        s_S0 <= '0';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

        s_S0 <= '1';
        s_S1 <= '1';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;
--Testiranje siftovanja udesno 
        s_S0 <= '1';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

         s_S0 <= '1';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

           s_S0 <= '1';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

         s_S0 <= '1';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

        s_S0 <= '0';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

--Testiranje siftovanja udesno
        s_S0 <= '0';
        s_S1 <= '1';
        s_lin <= '0';
        s_rin <= '0';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

         s_S0 <= '0';
        s_S1 <= '1';
        s_lin <= '0';
        s_rin <= '0';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

          s_S0 <= '0';
        s_S1 <= '1';
        s_lin <= '0';
        s_rin <= '0';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

          s_S0 <= '0';
        s_S1 <= '1';
        s_lin <= '0';
        s_rin <= '0';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

            s_S0 <= '0';
        s_S1 <= '0';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0000";
		WAIT FOR 20 ns;

          s_S0 <= '1';
        s_S1 <= '1';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "1001";
		WAIT FOR 20 ns;


          s_S0 <= '1';
        s_S1 <= '1';
        s_lin <= '1';
        s_rin <= '1';
		s_data_in <= "0110";
		WAIT FOR 20 ns;



       
		flag <= '1';
		WAIT;
	END PROCESS;



END ARCHITECTURE;