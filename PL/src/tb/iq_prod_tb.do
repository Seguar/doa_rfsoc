onerror {resume}
quietly virtual signal -install /iq_prod_tb/dut/m0 { /iq_prod_tb/dut/m0/m_axis_dout_tdata(63 downto 32)} m0_i
quietly virtual signal -install /iq_prod_tb/dut/m0 { /iq_prod_tb/dut/m0/m_axis_dout_tdata(31 downto 0)} m0_r
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d(31 downto 16)} i0
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d(15 downto 0)} r0
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/m0_d(31 downto 0)} r0_2
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d(29 downto 16)} i0_red
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d(13 downto 0)} r0_red
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d_c(31 downto 16)} c0dci
quietly virtual signal -install /iq_prod_tb/dut { /iq_prod_tb/dut/c0_d_c(15 downto 0)} c0dcr
quietly WaveActivateNextPane {} 0
add wave -noupdate /iq_prod_tb/aclk
add wave -noupdate /iq_prod_tb/axis_di0
add wave -noupdate /iq_prod_tb/axis_dq0
add wave -noupdate /iq_prod_tb/axis_di1
add wave -noupdate /iq_prod_tb/axis_dq1
add wave -noupdate /iq_prod_tb/axis_di2
add wave -noupdate /iq_prod_tb/axis_dq2
add wave -noupdate /iq_prod_tb/axis_di3
add wave -noupdate /iq_prod_tb/axis_dq3
add wave -noupdate /iq_prod_tb/axis_do0
add wave -noupdate /iq_prod_tb/dut/m0/m0_i
add wave -noupdate -radix decimal -childformat {{/iq_prod_tb/dut/m0/m0_r(31) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(30) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(29) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(28) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(27) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(26) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(25) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(24) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(23) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(22) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(21) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(20) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(19) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(18) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(17) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(16) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(15) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(14) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(13) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(12) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(11) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(10) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(9) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(8) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(7) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(6) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(5) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(4) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(3) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(2) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(1) -radix decimal} {/iq_prod_tb/dut/m0/m0_r(0) -radix decimal}} -subitemconfig {/iq_prod_tb/dut/m0/m_axis_dout_tdata(31) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(30) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(29) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(28) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(27) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(26) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(25) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(24) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(23) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(22) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(21) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(20) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(19) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(18) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(17) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(16) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(15) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(14) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(13) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(12) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(11) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(10) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(9) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(8) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(7) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(6) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(5) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(4) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(3) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(2) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(1) {-radix decimal} /iq_prod_tb/dut/m0/m_axis_dout_tdata(0) {-radix decimal}} /iq_prod_tb/dut/m0/m0_r
add wave -noupdate -radix decimal /iq_prod_tb/dut/i0_red
add wave -noupdate -radix decimal -childformat {{/iq_prod_tb/dut/i0(31) -radix decimal} {/iq_prod_tb/dut/i0(30) -radix decimal} {/iq_prod_tb/dut/i0(29) -radix decimal} {/iq_prod_tb/dut/i0(28) -radix decimal} {/iq_prod_tb/dut/i0(27) -radix decimal} {/iq_prod_tb/dut/i0(26) -radix decimal} {/iq_prod_tb/dut/i0(25) -radix decimal} {/iq_prod_tb/dut/i0(24) -radix decimal} {/iq_prod_tb/dut/i0(23) -radix decimal} {/iq_prod_tb/dut/i0(22) -radix decimal} {/iq_prod_tb/dut/i0(21) -radix decimal} {/iq_prod_tb/dut/i0(20) -radix decimal} {/iq_prod_tb/dut/i0(19) -radix decimal} {/iq_prod_tb/dut/i0(18) -radix decimal} {/iq_prod_tb/dut/i0(17) -radix decimal} {/iq_prod_tb/dut/i0(16) -radix decimal}} -subitemconfig {/iq_prod_tb/dut/c0_d(31) {-radix decimal} /iq_prod_tb/dut/c0_d(30) {-radix decimal} /iq_prod_tb/dut/c0_d(29) {-radix decimal} /iq_prod_tb/dut/c0_d(28) {-radix decimal} /iq_prod_tb/dut/c0_d(27) {-radix decimal} /iq_prod_tb/dut/c0_d(26) {-radix decimal} /iq_prod_tb/dut/c0_d(25) {-radix decimal} /iq_prod_tb/dut/c0_d(24) {-radix decimal} /iq_prod_tb/dut/c0_d(23) {-radix decimal} /iq_prod_tb/dut/c0_d(22) {-radix decimal} /iq_prod_tb/dut/c0_d(21) {-radix decimal} /iq_prod_tb/dut/c0_d(20) {-radix decimal} /iq_prod_tb/dut/c0_d(19) {-radix decimal} /iq_prod_tb/dut/c0_d(18) {-radix decimal} /iq_prod_tb/dut/c0_d(17) {-radix decimal} /iq_prod_tb/dut/c0_d(16) {-radix decimal}} /iq_prod_tb/dut/i0
add wave -noupdate -radix decimal /iq_prod_tb/dut/r0_red
add wave -noupdate -radix decimal -childformat {{/iq_prod_tb/dut/r0(15) -radix decimal} {/iq_prod_tb/dut/r0(14) -radix decimal} {/iq_prod_tb/dut/r0(13) -radix decimal} {/iq_prod_tb/dut/r0(12) -radix decimal} {/iq_prod_tb/dut/r0(11) -radix decimal} {/iq_prod_tb/dut/r0(10) -radix decimal} {/iq_prod_tb/dut/r0(9) -radix decimal} {/iq_prod_tb/dut/r0(8) -radix decimal} {/iq_prod_tb/dut/r0(7) -radix decimal} {/iq_prod_tb/dut/r0(6) -radix decimal} {/iq_prod_tb/dut/r0(5) -radix decimal} {/iq_prod_tb/dut/r0(4) -radix decimal} {/iq_prod_tb/dut/r0(3) -radix decimal} {/iq_prod_tb/dut/r0(2) -radix decimal} {/iq_prod_tb/dut/r0(1) -radix decimal} {/iq_prod_tb/dut/r0(0) -radix decimal}} -subitemconfig {/iq_prod_tb/dut/c0_d(15) {-radix decimal} /iq_prod_tb/dut/c0_d(14) {-radix decimal} /iq_prod_tb/dut/c0_d(13) {-radix decimal} /iq_prod_tb/dut/c0_d(12) {-radix decimal} /iq_prod_tb/dut/c0_d(11) {-radix decimal} /iq_prod_tb/dut/c0_d(10) {-radix decimal} /iq_prod_tb/dut/c0_d(9) {-radix decimal} /iq_prod_tb/dut/c0_d(8) {-radix decimal} /iq_prod_tb/dut/c0_d(7) {-radix decimal} /iq_prod_tb/dut/c0_d(6) {-radix decimal} /iq_prod_tb/dut/c0_d(5) {-radix decimal} /iq_prod_tb/dut/c0_d(4) {-radix decimal} /iq_prod_tb/dut/c0_d(3) {-radix decimal} /iq_prod_tb/dut/c0_d(2) {-radix decimal} /iq_prod_tb/dut/c0_d(1) {-radix decimal} /iq_prod_tb/dut/c0_d(0) {-radix decimal}} /iq_prod_tb/dut/r0
add wave -noupdate /iq_prod_tb/dut/c0_d
add wave -noupdate -radix decimal /iq_prod_tb/dut/r0_2
add wave -noupdate -radix hexadecimal /iq_prod_tb/dut/m0_d
add wave -noupdate /iq_prod_tb/dut/c0dci
add wave -noupdate /iq_prod_tb/dut/c0dcr
add wave -noupdate /iq_prod_tb/dut/c0_d_c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {114322 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 199
configure wave -valuecolwidth 100
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
WaveRestoreZoom {24 ps} {69 ps}
