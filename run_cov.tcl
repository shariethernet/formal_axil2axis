# ---jasper TCL

analyze -sv \
		axil2axis_cov.v +define+FORMAL\
		sfifo.v	\
		skidbuffer.v

analyze -sva \
		faxil_slave_cov.v

elaborate -top axil2axis

clock S_AXI_ACLK
reset ~S_AXI_ARESETN

get_design_info
set_prove_orchestration on
prove -all
report
