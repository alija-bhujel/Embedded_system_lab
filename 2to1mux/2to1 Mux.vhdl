library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
    port (
        Input_0, Input_1, Selector: in std_logic;
        Output: out std_logic
    );
end multiplexer;

architecture mux_architecture of multiplexer is
begin
    Output <= ((not Selector) and Input_0) or (Selector and Input_1);
end mux_architecture;
