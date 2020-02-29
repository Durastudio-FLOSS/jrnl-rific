#!/bin/bash
# Simple jrnl export script
# Requires jrnl to be installed and configured
# Does not git add, commit or push files.
# Automate jrnl name and path from ~/.jrnl-config. Git repo and jrnl have same string.
# Run from repository via cron, ascends one directory called 'GIT' and exports jrnl files.
# eg (when pasting into crontab, be sure to verify tab separation)
##min    hour    mday    month   wday    command
#0       6,14,20 *       *       *       sh <your_path_to_/jrnl-rific>/export-jrnl-files.sh 2>&1

for j in $(jrnl -ls) ; do 
    jrnl $j --export txt -o ../$j/
done
