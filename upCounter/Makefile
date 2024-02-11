all: result.vcd

result.vcd: upCounter.vhdl upCountertest.vhdl
	ghdl -a upCounter.vhdl
	ghdl -a upCountertest.vhdl
	ghdl -e upCountertest
	ghdl -r upCountertest --vcd=result.vcd --stop-time=2000ns

clean:
	rm -rf result.vcd work-obj93.cf
