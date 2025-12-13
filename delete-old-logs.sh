#!/bin/bash

APP_LOGS_DIR=/home/ec2-user/app-logs
LOGSDIR=/home/ec2-user/shellscript-logs

DATE=$(date +%F_%H-%M-%S)
SCRIPT_NAME=$(basename "$0")
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

# create log directory automatically
mkdir -p "$LOGSDIR"

echo "Script started at $DATE" &>>"$LOGFILE"

# find and delete log files older than 14 days
find "$APP_LOGS_DIR" -name "*.log" -type f -mtime +14 | while read -r file
do
    echo "Deleting $file" &>>"$LOGFILE"
    rm -f "$file"
done

echo "Script completed at $(date +%F_%H-%M-%S)" &>>"$LOGFILE"
