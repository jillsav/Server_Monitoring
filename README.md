# DevOps Environment Setup Assignment

This repository contains the implementation for the DevOps environment setup tasks assigned in the DevOps training program.

The goal of this project is to simulate the responsibilities of a DevOps engineer responsible for monitoring systems, managing user access, and implementing automated backups.

---

## Task : System Monitoring Setup

### Objective
Configure monitoring tools and create a basic reporting system to track server performance.

### Tools Used
- htop – interactive system monitoring
- top – batch monitoring for logging
- df – disk usage monitoring
- du – directory size monitoring

---

### Monitoring Script

Location:
root/server_monitoring.sh

This script performs the following actions:

1. Creates a monitoring log directory
2. Collects CPU and memory usage using `top`
3. Collects disk usage using `df -h`
4. Collects home directory disk usage using `du -sh`
5. Saves the output to a log file

Log files are stored in:

/var/log/system_monitor/

Example log file name:

system_report_YYYY-MM-DD.log

---

### Sample Output

A sample monitoring report can be found here:

logs_sample/system_report_sample.log

---

### How to Run the Script

Make the script executable:

chmod +x server_monitoring.sh

Run the script:

./server_monitoring.sh

---

### Example Output

The script generates a report similar to:

System Monitoring Report - DATE

CPU and Memory Usage  
Disk Usage  
Directory Usage
