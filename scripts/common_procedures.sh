#!/bin/bash -e
#TODO: integrate this tool with fuzzy finders
#TODO: Add function to make adding a new procedure easy
PTH_TXT_FLS=~/__common_procedures/text_files
PTH_SCRIPTS=~/__common_procedures/scripts
#TODO: programatically expand this based on the number of .txt files (use array and for loop)
ARG1=git_commands
ARG2=networking
ARG3=ros
ARG4=terminator
ARG5=vscode
ARG6=ros_service


#Create tmp file for autocomplete function
tmpfile=$(mktemp /tmp/common_procedures.XXXXXXX)
#exec 3>"$tmpfile"
#exec 4<"$tmpfile"


echo " "
cat $PTH_TXT_FLS/intro
echo " "
#TODO: programatically expand the possible arguments based on the number of .txt files
#TODO: use 'complete -F _common_procedures' to dynamically show possible arguments based on previous arguments
#set tab complete arguments
#complete -W "$ARG1 $ARG2 $ARG3 $ARG4 $ARG5 $ARG6 --create --add" common_procedures
complete -F _common_procedures common_procedures

#function for command to show reminders for common procedures
common_procedures() {
    case $2 in
        --create)
          touch $PTH_TXT_FLS/$1
        ;;
        --add)
          echo "$3" >> $PTH_TXT_FLS/$1
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

_common_procedures() {

  array=$(python $PTH_SCRIPTS/auto_complete.py -a $PTH_TXT_FLS -b $@)
  
  COMPREPLY=( $( compgen -W "${array}" ) )
}