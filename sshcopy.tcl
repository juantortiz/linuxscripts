#!/usr/bin/expect
set nombre_archivo [lindex $argv 0]
set nombre_in_archivo [lindex $argv 1]

set fp [open $nombre_in_archivo]
set file_data [read $fp]

if {$nombre_archivo == null} 
    { $nombre_archivo="/root/"}

spawn ssh-keygen -b 4092 -t rsa -f $nombre_archivo -q -N ""



    