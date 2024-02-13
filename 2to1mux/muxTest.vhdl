library ieee;
use ieee.std_logic_1164.all;

entity multiplexer_tb is
end multiplexer_tb;

architecture tb_architecture of multiplexer_tb is
    signal Input_0_sig, Input_1_sig, Selector_sig, Output_sig: std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin
    -- Component instantiation
    DUT : entity work.multiplexer
        port map (
            Input_0 => Input_0_sig,
            Input_1 => Input_1_sig,
            Selector => Selector_sig,
            Output => Output_sig
        );

    -- Stimulus process
    stimulus_process : process
    begin
        -- Test case 1
        Input_0_sig <= '0';
        Input_1_sig <= '0';
        Selector_sig <= '0';
        wait for CLK_PERIOD;

        -- Test case 2
        Input_0_sig <= '1';
        Input_1_sig <= '0';
        Selector_sig <= '0';
        wait for CLK_PERIOD;

        -- Test case 3
        Input_0_sig <= '0';
        Input_1_sig <= '1';
        Selector_sig <= '1';
        wait for CLK_PERIOD;

        -- Test case 4
        Input_0_sig <= '1';
        Input_1_sig <= '1';
        Selector_sig <= '1';
        wait for CLK_PERIOD;

        -- Add more test cases as needed

        wait;
    end process;
end tb_architecture;
