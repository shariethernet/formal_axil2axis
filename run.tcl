# ---jasper TCL

analyze -sv \
		axil2axis.v +define+FORMAL\
		sfifo.v	\
		skidbuffer.v

analyze -sva \
		faxil_slave.v\
		sfifo.v

elaborate -top axil2axis

clock S_AXI_ACLK
reset ~S_AXI_ARESETN

get_design_info

prove -all
report
