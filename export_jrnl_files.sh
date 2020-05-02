#!/bin/bash
# Simple jrnl export script
# Requires jrnl to be installed and configured
# Does not git add, commit or push files.
# My setup is simple and uncomplicated. I don't need anything fancier.
# Automate jrnl name and path from ~/.jrnl-config. Git repo name and jrnl name are the same and must already exist. 
# Run in any working git repo to export all current journals files in md format. Script expects all repo enabled journals to be at the same level.
# eg (when pasting into crontab, be sure to verify tab separation)
##min    hour    mday    month   wday    command
#0       6,14,20 *       *       *       sh <your_path_to_/jrnl-rific>/export-jrnl-files.sh 2>&1

#cd path/to/jrnl/repos/parent/dir

#for j in $(jrnl -ls) ; do 
#    jrnl $j --export markdown -o ../$j/
#done

jrnl basename "$PWD" --export md -o "$PWD"
