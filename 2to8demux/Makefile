all: result.vcd

result.vcd: 2to8demux.vhdl 2to8demuxtest.vhdl
	ghdl -a -fsynopsys 2to8demux.vhdl
	ghdl -a -fsynopsys 2to8demuxtest.vhdl
	ghdl -e -fsynopsys demultiplexer_tb
	ghdl -r -fsynopsys demultiplexer_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
