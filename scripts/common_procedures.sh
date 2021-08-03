#!/bin/bash
#TODO: integrate this tool with fuzzy finders
PTH_TXT_FLS=$HOME/__common_procedures/text_files
PTH_SCRIPTS=$HOME/__common_procedures/scripts
PTH_OPTIONS=$HOME/__common_procedures/options
#print intro text when opening terminal
echo " "
cat $PTH_TXT_FLS/intro
echo " "

#set tab complete arguments
#complete -W "$ARG1 $ARG2 $ARG3 $ARG4 $ARG5 $ARG6 --create --add" common_procedures
complete -o nospace -C _common_procedures common_procedures

#function for command to show reminders for common procedures
common_procedures() {
    case $2 in
        -c)
          touch $PTH_TXT_FLS/$1
          nano $PTH_TXT_FLS/$1
        ;;
        -e)
          #TODO: make --edit take in two args, command and an explanation
          #echo "$3" >> $PTH_TXT_FLS/$1
          nano $PTH_TXT_FLS/$1
          echo " "
          cat $PTH_TXT_FLS/$1
          echo " "   
        ;;
        *)
          echo " "
          cat $PTH_TXT_FLS/$1
          echo " "        
        ;;
    esac



}
#function to load tab complete arguments
_common_procedures() {

    cd $PTH_TXT_FLS
    printf "%s\n" "$2"*
    # cd $PTH_OPTIONS
    # printf "%s\n" "$3"*
    #TODO: https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion.html
}