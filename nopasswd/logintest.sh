#! /usr/bin/expect

# Usage $0 host user passwd

spawn ssh-copy-id [lindex $argv 1]@[lindex $argv 0]

#expect "yes/no" {
#       send "yes\r"
#       expect "*?assword" {
#              send "[lindex $argv 2]\r"
#       }
#}

expect "assword:" {
              send "Zl^Xt1Qb*D2018@cloud\r"
       }

interact
