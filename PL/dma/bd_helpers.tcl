# Helpers for recreating the doa_mts block design from the boot HWH.

proc latest_vlnv {vln} {
  set defs [lsort -dictionary [get_ipdefs -all $vln:*]]
  if {[llength $defs] == 0} { error "IP $vln not in catalog" }
  return [lindex $defs end]
}

proc _same_value {a b} {
  if {$a eq $b} { return 1 }
  if {[string is double -strict $a] && [string is double -strict $b]} {
    return [expr {abs(double($a) - double($b)) <= 1e-9 * (abs(double($a)) + 1.0)}]
  }
  if {[string tolower $a] eq [string tolower $b]} { return 1 }
  return 0
}

# Apply HWH parameters to one cell. Only CONFIG.<name> properties that exist on
# the cell and differ are set; read-only or rejected values are reported.
proc apply_hwh_params {cell params {passes 3}} {
  set obj [get_bd_cells $cell]
  set rejected {}
  for {set pass 0} {$pass < $passes} {incr pass} {
    set have [list_property $obj CONFIG.*]
    set todo {}
    foreach {k v} $params {
      if {[lsearch -exact $have CONFIG.$k] < 0} { continue }
      set cur [get_property CONFIG.$k $obj]
      if {![_same_value $cur $v]} { lappend todo CONFIG.$k $v }
    }
    if {[llength $todo] == 0} { return {} }
    if {[catch {set_property -dict $todo $obj} err]} {
      set rejected {}
      foreach {k v} $todo {
        if {[catch {set_property $k $v $obj} e2]} { lappend rejected $k $v }
      }
    } else {
      set rejected {}
    }
  }
  # report what is still different
  set left {}
  set have [list_property $obj CONFIG.*]
  foreach {k v} $params {
    if {[lsearch -exact $have CONFIG.$k] < 0} { continue }
    set cur [get_property CONFIG.$k $obj]
    if {![_same_value $cur $v]} { lappend left "$k=($cur!=$v)" }
  }
  if {[llength $left]} { puts "HWHPARAM $cell still differs: $left" }
  return $left
}

proc apply_all_hwh_params {hwh_params {skip_ps 0}} {
  # PS first: its clocks and ports drive parameter propagation of the others
  set cells [dict keys $hwh_params]
  set ordered [concat [lsearch -all -inline $cells zynq_ultra_ps_e*] [lsearch -all -inline -not $cells zynq_ultra_ps_e*]]
  foreach c $ordered {
    set vlnv [get_property VLNV [get_bd_cells $c]]
    if {[string match *zynq_ultra_ps_e* $vlnv]} {
      if {$skip_ps} { continue }
      apply_ps_params $c [dict get $hwh_params $c]
    } else {
      apply_hwh_params $c [dict get $hwh_params $c]
    }
  }
}

# ---- connections across hierarchy levels -------------------------------------
proc _hier_of {pinpath} {
  # pinpath = h1/h2/cell/pin  -> h1/h2  ("" at the root)
  set parts [split $pinpath /]
  return [join [lrange $parts 0 end-2] /]
}

proc _common_hier {hiers} {
  set common [split [lindex $hiers 0] /]
  foreach h [lrange $hiers 1 end] {
    set p [split $h /]
    set n 0
    while {$n < [llength $common] && $n < [llength $p] && [lindex $common $n] eq [lindex $p $n]} { incr n }
    set common [lrange $common 0 [expr {$n - 1}]]
  }
  return [join $common /]
}

proc _unique_pin_name {hier base intf} {
  set name $base
  set i 0
  while {1} {
    set full [expr {$hier eq "" ? $name : "$hier/$name"}]
    if {$intf} { set hit [get_bd_intf_pins -quiet /$full] } else { set hit [get_bd_pins -quiet /$full] }
    if {$hit eq ""} { return $name }
    incr i
    set name ${base}_$i
  }
}

# Lift a pin from its hierarchy up to level $top, creating boundary pins.
proc _lift_pin {pinpath top base intf} {
  set cur $pinpath
  set h [_hier_of $cur]
  while {$h ne $top} {
    set name [_unique_pin_name $h $base $intf]
    if {$intf} {
      set obj [get_bd_intf_pins /$cur]
      create_bd_intf_pin -mode [get_property MODE $obj] -vlnv [get_property VLNV $obj] /$h/$name
      connect_bd_intf_net [get_bd_intf_pins /$cur] [get_bd_intf_pins /$h/$name]
    } else {
      set obj [get_bd_pins /$cur]
      set args [list -dir [get_property DIR $obj]]
      set l [get_property LEFT $obj]; set r [get_property RIGHT $obj]
      if {$l ne "" && $r ne ""} { lappend args -from $l -to $r }
      set t [get_property TYPE $obj]
      if {$t in {clk rst intr ce data}} { lappend args -type $t }
      create_bd_pin {*}$args /$h/$name
      connect_bd_net [get_bd_pins /$cur] [get_bd_pins /$h/$name]
    }
    set cur $h/$name
    set h [_hier_of $cur]
  }
  return $cur
}

proc xconnect_intf {net p1 p2} {
  set top [_common_hier [list [_hier_of $p1] [_hier_of $p2]]]
  set a [_lift_pin $p1 $top $net 1]
  set b [_lift_pin $p2 $top $net 1]
  connect_bd_intf_net -intf_net $net [get_bd_intf_pins /$a] [get_bd_intf_pins /$b]
}

proc xconnect_net {net args} {
  set hiers {}
  foreach p $args { lappend hiers [_hier_of $p] }
  set top [_common_hier $hiers]
  set lifted {}
  foreach p $args { lappend lifted [get_bd_pins /[_lift_pin $p $top $net 0]] }
  connect_bd_net -net $net {*}$lifted
}

# Zynq UltraScale+ PS: the 2022.2 write_bd_tcl PS block (ps_config.tcl) in one
# -dict, then the remaining HWH differences in one -dict; what still differs is
# reported (PS-side clocks of unused peripherals do not affect the PL image).
proc apply_ps_params {cell params} {
  set obj [get_bd_cells $cell]
  apply_ps_2022_dict $obj
  set have [list_property $obj CONFIG.*]
  set todo {}
  foreach {k v} $params {
    if {[lsearch -exact $have CONFIG.$k] < 0} { continue }
    if {[_same_value [get_property CONFIG.$k $obj] $v]} { continue }
    lappend todo CONFIG.$k $v
  }
  puts "PSPARAM [expr {[llength $todo]/2}] differences after the 2022.2 PS block: $todo"
  if {[llength $todo] && [catch {set_property -dict $todo $obj} err]} {
    puts "PSPARAM remaining -dict refused: $err"
  }
  apply_hwh_params $cell $params 0
}
