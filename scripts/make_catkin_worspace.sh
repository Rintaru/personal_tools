#!/bin/bash
mk_catkin_ws(){  
  if [ $# -eq 0 ]
    then
      echo "mk_catkin_ws needs an arg!"
    else
      if [ -e "$1" ]; then
          echo "$1 exists, use a different dir name."
      else
          mkdir -v -p $1/src
      fi
  fi 

}