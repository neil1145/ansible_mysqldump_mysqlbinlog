#!/bin/bash

# Define paths
PLAYBOOK_PATH="./backup_mysqldump_binlogs.yml"
LOG_PATH="/var/log/ansible_backup.log"

# Run the playbook
ansible-playbook $PLAYBOOK_PATH >> $LOG_PATH 2>&1

# Check if the playbook execution was successful
if [ $? -eq 0 ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup successful" >> $LOG_PATH
else
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup failed" >> $LOG_PATH
fi

