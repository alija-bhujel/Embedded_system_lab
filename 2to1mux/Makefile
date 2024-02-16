all: result.vcd

result.vcd: mux.vhdl muxTest.vhdl
	ghdl -a -fsynopsys mux.vhdl
	ghdl -a -fsynopsys muxTest.vhdl
	ghdl -e -fsynopsys multiplexer_tb
	ghdl -r -fsynopsys multiplexer_tb --vcd=result.vcd --stop-time=20us

clean:
	rm -rf result.vcd
