#!/bin/bash

#df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6 " " $1}'
#df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6}' | cut -d "%" -f1

DISK_THRESHOLD=1
DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6 " " $1}')
message=""

while IFS= read line;
do
    usage=$(echo $line | cut -d "%" -f1)
    partition=$(echo $DISK_USAGE | cut -d " " -f2)
    echo "usage: $usage"
    echo "partition: $partition"
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk usage on $partition: $usage%\n"
    fi
done <<< "$DISK_USAGE"

echo "message: $message"

echo -e "$message" | mail -s "High Disk Usage" info@joindevops.com

#disk,memory,cpu --> any of this or all
