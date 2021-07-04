#!/bin/bash -e
#TODO: integrate this tool with fuzzy finders
PTH_TXT_FLS=~/common_procedures/text_files
ARG1=terminator
ARG2=git_commands
ARG3=vscode
ARG4=networking

echo " "
cat $PTH_TXT_FLS/intro.txt
echo " "

#TODO: programatically expand the possible arguments based on the number of .txt files
#set tab complete arguments
complete -W "$ARG1 $ARG2 $ARG3 $ARG4" common_procedures

#function for command to show reminders for common procedures
#TODO: Make this a for loop. Or integrate this in to fzf. Whichever is easier.
common_procedures() {
    # case $@ in
    #     --$ARG1)
    #       echo " "
    #       cat $PTH_TXT_FLS/$ARG1.txt
    #       echo " "
    #       ;;
    #     --$ARG2)
    #       echo " "
    #       cat $PTH_TXT_FLS/$ARG2.txt
    #       echo " "
    #       ;;
    #     --$ARG3)
    #       echo " "
    #       cat $PTH_TXT_FLS/$ARG3.txt
    #       echo " "
    #       ;;
    #     --$ARG4)
    #       echo " "
    #       cat $PTH_TXT_FLS/$ARG4.txt
    #       echo " "
    #       ;;
    # esac
    echo " "
    cat $PTH_TXT_FLS/$1.txt
    echo " "
}
