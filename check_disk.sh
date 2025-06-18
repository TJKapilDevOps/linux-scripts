#!/bin/bash

# ******************
# Title: Disk Usage Monitoring Script

# Function: This script will monitor the disk usage of the root (/) filesystem. 
# if usage exceeds a defined threshold (set to default 80%), it logs a warning message
# It gives a timestamp to /var/log/disk.usage.log.

# This script is useful for "AUTOMATING" disk space checks on production servers, allowing system admins or 
# devops engineers to catch low disk space issues before they cause failures or lead to downtime.

# ******************

# Defining a threshold limit, if limit is great than 80, we will print a warning. 
THRESHOLD=1

# Location of disk_usage.log"
LOG_FILE="/var/log/disk_usage.log"


# Extract the disk usage percent for root (/). And Strip the % sign
disk_usage=$(df -h '/' |grep '/' | awk '{print $5}' | sed 's/%//')

# If Else conditional checking, if cpu is greater than threshold, print a warnng message with the current date to disk_usage.log file

if [ "$disk_usage" -gt "$THRESHOLD" ]; then
 	echo "$(date): WARNING - Disk usage is at ${disk_usage}%, exceeding THRESHOLD  of         ${THRESHOLD}" >> $LOG_FILE
fi


