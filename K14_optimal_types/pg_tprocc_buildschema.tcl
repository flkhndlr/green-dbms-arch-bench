#!/bin/tclsh

customscript /tmp/repo/K14_optimal_types/test.tcl
vuset vu vcpu
puts "SCHEMA BUILD STARTED"
vurun
puts "SCHEMA BUILD COMPLETED"