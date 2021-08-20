#!/usr/bin/env bash
# File: guessinggame.sh
# Arguments: None
# program will continuously ask the user to guess the number of files 
# in the current directory, until they guess the correct number. 
# The user will be informed if their guess is too high or too low. 
# Once the user guesses the correct number of files in the current 
# directory they should be congratulated.

# find the number of files
#numfiles=$(find . -type f | wc -l)
#echo $numfiles

function numfiles {
	num=$(find . -type f | wc -l)
	echo $num
}


#numf=$(numfiles)
#echo "$numf"
flag=true
count=0
while [[ $flag = true ]]
do
  echo "$count::enter a number:"
  read number
  if [[ $number -lt $(numfiles) ]]
  then 
	  echo "$number is lower than file count"
  elif [[ $number -gt $(numfiles) ]]	  
  then
     echo "$number is greater than file count"
  else
     echo "Congratulations! $number is equal to the file count"
     let flag=false     
  fi
  let count=$count+1
done


