#!/bin/tclsh

customscript /tmp/repo/ignore/test.tcl
vuset vu vcpu
puts "SCHEMA BUILD STARTED"
vurun
puts "SCHEMA BUILD COMPLETED"