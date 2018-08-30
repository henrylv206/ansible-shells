#! /usr/bin/expect

# Usage $0 host user passwd

spawn ssh [lindex $argv 1]@[lindex $argv 0] passwd

expect "密码" {
       send "[lindex $argv 2]\r"
       expect "密码" {
              send "[lindex $argv 2]\r"
       }
}


interact
