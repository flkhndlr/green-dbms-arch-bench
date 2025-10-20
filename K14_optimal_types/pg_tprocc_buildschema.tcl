#!/bin/tclsh



set vu [ numberOfCPUs ]
set virtual_users [expr {$vu+1} ]
customscript /tmp/repo/K14_optimal_types/creation.tcl
vuset vu $virtual_users
puts "SCHEMA BUILD STARTED"
vurun
puts "SCHEMA BUILD COMPLETED"