#!/bin/bash -e
#TODO: integrate this tool with fuzzy finders
#TODO: Add alias to make adding a new procedure easy
PTH_TXT_FLS=~/common_procedures/text_files
#TODO: programatically expand this based on the number of .txt files (use array and for loop)
ARG1=git_commands
ARG2=networking
ARG3=ros
ARG4=terminator
ARG5=vscode


echo " "
cat $PTH_TXT_FLS/intro.txt
echo " "

#TODO: programatically expand the possible arguments based on the number of .txt files
#set tab complete arguments
complete -W "$ARG1 $ARG2 $ARG3 $ARG4 $ARG5" common_procedures

#function for command to show reminders for common procedures
common_procedures() {
    echo " "
    cat $PTH_TXT_FLS/$1.txt
    echo " "
}
