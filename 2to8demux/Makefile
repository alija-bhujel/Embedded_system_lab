all: result.vcd

result.vcd: 2to8demux.vhdl 2to8demuxtest.vhdl
	ghdl -a -fsynopsys 2to8demux.vhdl
	ghdl -a -fsynopsys 2to8demuxtest.vhdl
	ghdl -e -fsynopsys demux_test
	ghdl -r -fsynopsys demux_test --vcd=result.vcd

clean:
	rm -rf result.vcd
