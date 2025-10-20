#!/bin/tclsh
# maintainer: Pooja Jain

dbset db pg
dbset bm TPC-C

diset tpcc pg_duration 20
diset tpcc pg_driver timed

customscript /tmp/repo/K20_algos/script.tcl

set vu [ numberOfCPUs ]
set virtual_users [expr {$vu+1} ]
puts "TEST STARTED"
vuset vu  $virtual_users
vucreate
tcstart
tcstatus
set jobid [ vurun ]
vudestroy
tcstop
puts "TEST COMPLETE"
set of [ open /tmp/mysql_tprocc w ]
puts $of $jobid
close $of