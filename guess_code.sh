#!/usr/bin/env bash
# File: gues1func.sh
echo "Guess Number of files in the directory"
read g
no_of_files=$(ls | wc -l)
#let no_of_files=16
let "upp = $no_of_files + 2"
let "low = $no_of_files - 2"
function gues() {
  if [[ $no_of_files -eq $g ]]
  then
    echo "Congratulations!! You guessed it correcty "
  elif [[ $g -gt $upp ]]
   then
     echo "Too high! Take another guess"
     read g
     gues
  elif [[ $g -lt $low ]]
    then
      echo "Too low! Take another guess"
      read g
      gues
  else
    echo " Close!!! but, Guess it again"
    read g
    gues
  fi
}
gues
