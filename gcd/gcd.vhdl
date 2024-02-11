library ieee;
use ieee.std_logic_1164.all;

entity fsmgcd is
    port(
        RESET, CLK : in std_logic;
        A, B : in integer;
        GCD : out integer
    );
end fsmgcd;

architecture behavior of fsmgcd is
    type state is (start, input, output, check, check1, updatex, updatey);
    signal current_state, next_state: state;
begin
    state_register: process(CLK, RESET)
    begin
        if RESET = '1' then
            current_state <= start;
        elsif rising_edge(CLK) then
            current_state <= next_state;
        end if;
    end process state_register;

    compute: process(A, B, current_state)
        variable x_var, y_var, r_var, p_var : integer;
    begin
        case current_state is
            when start =>
                next_state <= input;
            when input =>
                x_var := A;
                y_var := B;
                next_state <= check;
            when check =>
                if x_var < y_var then
                    next_state <= updatex;
                else
                    next_state <= updatey;
                end if;
                next_state <= check1;
            when check1 =>
                while y_var /= 0 loop
                    r_var := x_var mod y_var;
                    x_var := y_var;
                    y_var := r_var;
                end loop;
                next_state <= output;
            when updatex =>
                p_var := x_var;
                x_var := y_var;
                y_var := p_var;
            when updatey =>
                x_var := x_var;
                y_var := y_var;
            when output =>
                GCD <= x_var;
                next_state <= start;
            when others =>
                next_state <= start;
        end case;
    end process compute;
end behavior;
