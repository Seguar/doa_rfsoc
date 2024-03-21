onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /win_avg_tb/aclk
add wave -noupdate -radix decimal /win_avg_tb/m0r
add wave -noupdate -radix decimal /win_avg_tb/m1r
add wave -noupdate -radix decimal /win_avg_tb/m2r
add wave -noupdate -radix decimal /win_avg_tb/m3r
add wave -noupdate -radix decimal /win_avg_tb/m4r
add wave -noupdate -radix decimal /win_avg_tb/m5r
add wave -noupdate -radix decimal /win_avg_tb/m6r
add wave -noupdate -radix decimal /win_avg_tb/m7r
add wave -noupdate -radix decimal /win_avg_tb/m8r
add wave -noupdate -radix decimal /win_avg_tb/m9r
add wave -noupdate -radix decimal /win_avg_tb/m0i
add wave -noupdate -radix decimal /win_avg_tb/m1i
add wave -noupdate -radix decimal /win_avg_tb/m2i
add wave -noupdate -radix decimal /win_avg_tb/m3i
add wave -noupdate -radix decimal /win_avg_tb/m4i
add wave -noupdate -radix decimal /win_avg_tb/m5i
add wave -noupdate -radix decimal /win_avg_tb/m6i
add wave -noupdate -radix decimal /win_avg_tb/m7i
add wave -noupdate -radix decimal /win_avg_tb/m8i
add wave -noupdate -radix decimal /win_avg_tb/m9i
add wave -noupdate -radix decimal /win_avg_tb/win_len
add wave -noupdate -radix binary /win_avg_tb/axis_di
add wave -noupdate -radix binary /win_avg_tb/axis_vo
add wave -noupdate -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_i_s(0) -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_i_s(0).real -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(0).imag -radix binary}}} {/win_avg_tb/win_avg_inst/iq_data_i_s(1) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(2) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(3) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(4) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(5) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(6) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(7) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(8) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(9) -radix binary}} -subitemconfig {/win_avg_tb/win_avg_inst/iq_data_i_s(0) {-height 15 -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_i_s(0).real -radix binary} {/win_avg_tb/win_avg_inst/iq_data_i_s(0).imag -radix binary}} -expand} /win_avg_tb/win_avg_inst/iq_data_i_s(0).real {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(0).imag {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(1) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(2) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(3) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(4) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(5) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(6) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(7) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(8) {-height 15 -radix binary} /win_avg_tb/win_avg_inst/iq_data_i_s(9) {-height 15 -radix binary}} /win_avg_tb/win_avg_inst/iq_data_i_s
add wave -noupdate -radix binary /win_avg_tb/win_avg_inst/iq_data_div_s
add wave -noupdate -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_acc_s(0) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(1) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(2) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(3) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(4) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(5) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(6) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(7) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(8) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_acc_s(9) -radix binary}} -subitemconfig {/win_avg_tb/win_avg_inst/iq_data_acc_s(0) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(1) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(2) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(3) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(4) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(5) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(6) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(7) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(8) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_acc_s(9) {-radix binary}} /win_avg_tb/win_avg_inst/iq_data_acc_s
add wave -noupdate -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_out_s(0) -radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_out_s(0).real -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(0).imag -radix binary}}} {/win_avg_tb/win_avg_inst/iq_data_out_s(1) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(2) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(3) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(4) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(5) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(6) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(7) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(8) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(9) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(10) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(11) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(12) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(13) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(14) -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(15) -radix binary}} -subitemconfig {/win_avg_tb/win_avg_inst/iq_data_out_s(0) {-radix binary -childformat {{/win_avg_tb/win_avg_inst/iq_data_out_s(0).real -radix binary} {/win_avg_tb/win_avg_inst/iq_data_out_s(0).imag -radix binary}} -expand} /win_avg_tb/win_avg_inst/iq_data_out_s(0).real {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(0).imag {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(1) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(2) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(3) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(4) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(5) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(6) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(7) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(8) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(9) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(10) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(11) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(12) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(13) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(14) {-radix binary} /win_avg_tb/win_avg_inst/iq_data_out_s(15) {-radix binary}} /win_avg_tb/win_avg_inst/iq_data_out_s
add wave -noupdate -radix binary -childformat {{{/win_avg_tb/axis_do[63]} -radix binary} {{/win_avg_tb/axis_do[62]} -radix binary} {{/win_avg_tb/axis_do[61]} -radix binary} {{/win_avg_tb/axis_do[60]} -radix binary} {{/win_avg_tb/axis_do[59]} -radix binary} {{/win_avg_tb/axis_do[58]} -radix binary} {{/win_avg_tb/axis_do[57]} -radix binary} {{/win_avg_tb/axis_do[56]} -radix binary} {{/win_avg_tb/axis_do[55]} -radix binary} {{/win_avg_tb/axis_do[54]} -radix binary} {{/win_avg_tb/axis_do[53]} -radix binary} {{/win_avg_tb/axis_do[52]} -radix binary} {{/win_avg_tb/axis_do[51]} -radix binary} {{/win_avg_tb/axis_do[50]} -radix binary} {{/win_avg_tb/axis_do[49]} -radix binary} {{/win_avg_tb/axis_do[48]} -radix binary} {{/win_avg_tb/axis_do[47]} -radix binary} {{/win_avg_tb/axis_do[46]} -radix binary} {{/win_avg_tb/axis_do[45]} -radix binary} {{/win_avg_tb/axis_do[44]} -radix binary} {{/win_avg_tb/axis_do[43]} -radix binary} {{/win_avg_tb/axis_do[42]} -radix binary} {{/win_avg_tb/axis_do[41]} -radix binary} {{/win_avg_tb/axis_do[40]} -radix binary} {{/win_avg_tb/axis_do[39]} -radix binary} {{/win_avg_tb/axis_do[38]} -radix binary} {{/win_avg_tb/axis_do[37]} -radix binary} {{/win_avg_tb/axis_do[36]} -radix binary} {{/win_avg_tb/axis_do[35]} -radix binary} {{/win_avg_tb/axis_do[34]} -radix binary} {{/win_avg_tb/axis_do[33]} -radix binary} {{/win_avg_tb/axis_do[32]} -radix binary} {{/win_avg_tb/axis_do[31]} -radix binary} {{/win_avg_tb/axis_do[30]} -radix binary} {{/win_avg_tb/axis_do[29]} -radix binary} {{/win_avg_tb/axis_do[28]} -radix binary} {{/win_avg_tb/axis_do[27]} -radix binary} {{/win_avg_tb/axis_do[26]} -radix binary} {{/win_avg_tb/axis_do[25]} -radix binary} {{/win_avg_tb/axis_do[24]} -radix binary} {{/win_avg_tb/axis_do[23]} -radix binary} {{/win_avg_tb/axis_do[22]} -radix binary} {{/win_avg_tb/axis_do[21]} -radix binary} {{/win_avg_tb/axis_do[20]} -radix binary} {{/win_avg_tb/axis_do[19]} -radix binary} {{/win_avg_tb/axis_do[18]} -radix binary} {{/win_avg_tb/axis_do[17]} -radix binary} {{/win_avg_tb/axis_do[16]} -radix binary} {{/win_avg_tb/axis_do[15]} -radix binary} {{/win_avg_tb/axis_do[14]} -radix binary} {{/win_avg_tb/axis_do[13]} -radix binary} {{/win_avg_tb/axis_do[12]} -radix binary} {{/win_avg_tb/axis_do[11]} -radix binary} {{/win_avg_tb/axis_do[10]} -radix binary} {{/win_avg_tb/axis_do[9]} -radix binary} {{/win_avg_tb/axis_do[8]} -radix binary} {{/win_avg_tb/axis_do[7]} -radix binary} {{/win_avg_tb/axis_do[6]} -radix binary} {{/win_avg_tb/axis_do[5]} -radix binary} {{/win_avg_tb/axis_do[4]} -radix binary} {{/win_avg_tb/axis_do[3]} -radix binary} {{/win_avg_tb/axis_do[2]} -radix binary} {{/win_avg_tb/axis_do[1]} -radix binary} {{/win_avg_tb/axis_do[0]} -radix binary}} -subitemconfig {{/win_avg_tb/axis_do[63]} {-radix binary} {/win_avg_tb/axis_do[62]} {-radix binary} {/win_avg_tb/axis_do[61]} {-radix binary} {/win_avg_tb/axis_do[60]} {-radix binary} {/win_avg_tb/axis_do[59]} {-radix binary} {/win_avg_tb/axis_do[58]} {-radix binary} {/win_avg_tb/axis_do[57]} {-radix binary} {/win_avg_tb/axis_do[56]} {-radix binary} {/win_avg_tb/axis_do[55]} {-radix binary} {/win_avg_tb/axis_do[54]} {-radix binary} {/win_avg_tb/axis_do[53]} {-radix binary} {/win_avg_tb/axis_do[52]} {-radix binary} {/win_avg_tb/axis_do[51]} {-radix binary} {/win_avg_tb/axis_do[50]} {-radix binary} {/win_avg_tb/axis_do[49]} {-radix binary} {/win_avg_tb/axis_do[48]} {-radix binary} {/win_avg_tb/axis_do[47]} {-radix binary} {/win_avg_tb/axis_do[46]} {-radix binary} {/win_avg_tb/axis_do[45]} {-radix binary} {/win_avg_tb/axis_do[44]} {-radix binary} {/win_avg_tb/axis_do[43]} {-radix binary} {/win_avg_tb/axis_do[42]} {-radix binary} {/win_avg_tb/axis_do[41]} {-radix binary} {/win_avg_tb/axis_do[40]} {-radix binary} {/win_avg_tb/axis_do[39]} {-radix binary} {/win_avg_tb/axis_do[38]} {-radix binary} {/win_avg_tb/axis_do[37]} {-radix binary} {/win_avg_tb/axis_do[36]} {-radix binary} {/win_avg_tb/axis_do[35]} {-radix binary} {/win_avg_tb/axis_do[34]} {-radix binary} {/win_avg_tb/axis_do[33]} {-radix binary} {/win_avg_tb/axis_do[32]} {-radix binary} {/win_avg_tb/axis_do[31]} {-radix binary} {/win_avg_tb/axis_do[30]} {-radix binary} {/win_avg_tb/axis_do[29]} {-radix binary} {/win_avg_tb/axis_do[28]} {-radix binary} {/win_avg_tb/axis_do[27]} {-radix binary} {/win_avg_tb/axis_do[26]} {-radix binary} {/win_avg_tb/axis_do[25]} {-radix binary} {/win_avg_tb/axis_do[24]} {-radix binary} {/win_avg_tb/axis_do[23]} {-radix binary} {/win_avg_tb/axis_do[22]} {-radix binary} {/win_avg_tb/axis_do[21]} {-radix binary} {/win_avg_tb/axis_do[20]} {-radix binary} {/win_avg_tb/axis_do[19]} {-radix binary} {/win_avg_tb/axis_do[18]} {-radix binary} {/win_avg_tb/axis_do[17]} {-radix binary} {/win_avg_tb/axis_do[16]} {-radix binary} {/win_avg_tb/axis_do[15]} {-radix binary} {/win_avg_tb/axis_do[14]} {-radix binary} {/win_avg_tb/axis_do[13]} {-radix binary} {/win_avg_tb/axis_do[12]} {-radix binary} {/win_avg_tb/axis_do[11]} {-radix binary} {/win_avg_tb/axis_do[10]} {-radix binary} {/win_avg_tb/axis_do[9]} {-radix binary} {/win_avg_tb/axis_do[8]} {-radix binary} {/win_avg_tb/axis_do[7]} {-radix binary} {/win_avg_tb/axis_do[6]} {-radix binary} {/win_avg_tb/axis_do[5]} {-radix binary} {/win_avg_tb/axis_do[4]} {-radix binary} {/win_avg_tb/axis_do[3]} {-radix binary} {/win_avg_tb/axis_do[2]} {-radix binary} {/win_avg_tb/axis_do[1]} {-radix binary} {/win_avg_tb/axis_do[0]} {-radix binary}} /win_avg_tb/axis_do
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {122 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 309
configure wave -valuecolwidth 52
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {155 ps}