library  ieee;
use ieee.std_logic_1164.all;

entity fsmgcd is
	port(RESET, CLK : in std_logic;
	    A, B : in integer;
	    GCD : out integer);
end fsmgcd;

architecture behavior of fsmgcd is
type state is (start, input, output, check, check1,updatee,  updatef);
signal current_state, next_state: state;
begin
state_register:Process(CLK, RESET)
BEGIN
	IF(RESET = '1') THEN
		current_state <= start;
	ELSIF(rising_edge(CLK)) THEN
		current_state <= next_state;
	END IF;
end process;
compute:Process(A, B, current_state)
variable e, f, g, h : integer;
begin
	case current_state IS 
		WHEN start =>
			next_state <= input;
		WHEN input =>
			e:= A;
			f:= B;
			next_state <= check;
		WHEN check =>
			if(e< f) THEN
				next_state <= updatee;
			else
				next_state <= updatef;
			END IF;
			next_state <= check1;
		WHEN  check1 =>
			while f /= 0 loop
				g:= e mod f;
				e:= f;
				f:= g;
			end loop;
			next_state <= output;
		WHEN updatee =>
			h:=e;
			e:=f;
			f:=h;
		when updatef =>
			e:=e;
			f:=f;
		WHEN output =>
			GCD <= 	e;
			next_state <= start;
		WHEN others =>
			next_state <= start;
	end case;
end process compute;
end behavior;

