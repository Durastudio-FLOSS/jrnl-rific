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

#define subfolder name
SUB="journal"

#if current directory is journal, export default jrnl (no name specified)
#else export a jrnl file configured (jrn.yaml) with the same name as the current directory
if [ $(basename $PWD) == "journal" ]; then
   JRNL=""
else
   JRNL=$(basename $PWD)
fi

#if subdirectory previously defined as "journal" exists in current location, export to that dir
#else, export to current directory
if [ -d ./$SUB ] ; then 
  JRNLDIR="/$SUB"
fi

jrnl $JRNL --export md -o "$PWD$JRNLDIR"

# Ask user to push changes. Git repo must be functional.
echo "Do you wish to push local changes? (Press 1 for Yes, 2 for No)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) git add . && git commit -m "Updated jrnl entries" && git push; break;;
        No ) exit;;
    esac
done
