#!/bin/bash

system_check(){
	echo "===Starting health check==="
	echo "Date: $(date)"
	echo "UpTime: $(uptime)"
	echo "Disk Usage: "
	df -h | grep -v tmpfs
	echo "Memory usage: "
	free -h
}

system_check
