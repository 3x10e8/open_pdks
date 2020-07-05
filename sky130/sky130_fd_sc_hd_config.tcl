set current_folder [file dirname [file normalize [info script]]]
# Technology lib

set ::env(LIB_SYNTH) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lib/$::env(PDK_VARIANT)/sky130_fd_sc_hd_tt_1.80v_25C.lib"
set ::env(LIB_MAX) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lib/$::env(PDK_VARIANT)/sky130_fd_sc_hd_ff_1.95v_-40C.lib"
set ::env(LIB_MIN) "$::env(PDK_ROOT)$::env(PDK)/libs.ref/lib/$::env(PDK_VARIANT)/sky130_fd_sc_hd_ss_1.60v_100C.lib"


set ::env(LIB_TYPICAL) $::env(LIB_SYNTH)

# welltap and endcap cells
set ::env(FP_WELLTAP_CELL) "sky130_fd_sc_hd_tapvpwrvgnd_1"
set ::env(FP_ENDCAP_CELL) "sky130_fd_sc_hd_decap_3"

# defaults (can be overridden by designs):
set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_hd_inv_8"
#capacitance : 0.017653;
set ::env(SYNTH_DRIVING_CELL_PIN) "Y"
# update these
set ::env(SYNTH_CAP_LOAD) "17.65" ; # femtofarad _inv_8 pin A cap
set ::env(SYNTH_MIN_BUF_PORT) "sky130_fd_sc_hd_buf_2 A X"
set ::env(SYNTH_TIEHI_PORT) "sky130_fd_sc_hd_conb_1 HI"
set ::env(SYNTH_TIELO_PORT) "sky130_fd_sc_hd_conb_1 LO"

# cts defaults
set ::env(CTS_ROOT_BUFFER) sky130_fd_sc_hd_clkbuf_16
set ::env(CELL_CLK_PORT) CLK

# Placement defaults
set ::env(PL_LIB) $::env(LIB_TYPICAL)

# Fillcell insertion
set ::env(FILL_CELL) "sky130_fd_sc_hd_decap_ sky130_fd_sc_hd_fill_"

set ::env(CELL_PAD) 2
set ::env(CELL_PAD_EXECLUDE) "$::env(PDK_VARIANT)_tap* $::env(PDK_VARIANT)_decap* $::env(PDK_VARIANT)_fill*"

set ::env(ROOT_CLK_BUFFER) $::env(PDK_VARIANT)_clkbuf_16
set ::env(CLK_BUFFER) $::env(PDK_VARIANT)_clkbuf_4
set ::env(CLK_BUFFER_INPUT) A
set ::env(CLK_BUFFER_OUTPUT) X
