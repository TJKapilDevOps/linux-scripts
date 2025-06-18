# Disk Usage Monitoring Script
#
# This script monitors the disk usage of the root (/) filesystem.
# If usage exceeds a defined threshold (default: 80%), it logs a warning message
# with a timestamp to /var/log/disk_usage.log.
#
# This is useful for automating disk space checks on production servers,
# allowing system administrators or DevOps engineers to catch low disk space
# issues before they cause failures or downtime.
