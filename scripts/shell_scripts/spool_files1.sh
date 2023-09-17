#!/bin/bash

# Made by Ruben Lopez date: 11.05.2022


# this script do the following:
# for the current directory get a list of folder (ideally containing the dataset)
# then  make a new directory called "spool_XX"
# move the data from the folder to the new created "spool_XX" folder



dir_list=(`find $1 -maxdepth 1 -type d -iname "*m-[0-9][0-9]" | sort -n -t _ -k 2`)
# unset dir_list[0] # remove the first index as is the input directory


for i in "${!dir_list[@]}" # iterate over the index of the array of directories
do
  # mkdir $1/"spool_$i"
  # mv ${dir_list[$i]}/*  $1/"spool_$i"
  echo $"moving content from dir --->>>> ${dir_list[$i]} to new dir --->>> $1/spool_$i"
done

echo "you got ${#dir_list[@]} files moved"


# this loop check that the data is correctly copied to the right folder
# for i in "${!dir_list[@]}" # iterate over the index of the array
# do
#   touch ${dir_list[$i]}/"lalala_$i.txt"
# done
