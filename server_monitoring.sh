#! /bin/bash
set -e

logfile="/var/log/system_monitor/system_report_$(date +%F).log"

echo "System Monitoring Report - $(date)">> $logfile
echo "-----------------------------------------------" >> $logfile

echo "CPU and Memory usage:" >> $logfile
echo "-----------------------------------------------" >> $logfile
top -b -n1 | head -n 10 >>$logfile

echo "----------------------------------" >> $logfile
echo "Disk Usage:" >> $logfile
df -h >> $logfile

echo "----------------------------------" >> $logfile
echo "Directory Usage:" >> $logfile
du -sh /home/* >> $logfile

echo "----------------------------------" >> $logfile
