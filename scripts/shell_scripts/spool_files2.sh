#!/bin/bash
# Made by Ruben Lopez date: 11.05.2022


# this script do the following:

# list the directories containing time_stamp for files
# list the ".sif" files (must be the same length as the directories)
# rename the .sif files to their original folder names that contains the timestamp

input_dir=$1
sufix_file=$2



# dir_list=(`find $1 -type d -maxdepth 1 | tail -n+2 | sort -n -t _ -k 2 | rev |  cut -d "/" -f 1 | rev`)
dir_list=(`find $1 -maxdepth 1 -type d -iname "*m-[0-9][0-9]" | tail -n+2 | sort -n -t _ -k 2 | rev |  cut -d "/" -f 1 | rev`)
# unset dir_list[0]
file_lists=(`find $1 -maxdepth 1 -type f -iname "*.sif"| sort -n -t _ -k 2`) # the actual pattern is "#.sif" but it can be anything

echo "lenth of dir_list: ${#dir_list[@]}" # check that the arrays have the same length
echo "lenth of file_lists: ${#file_lists[@]}" # check that the arrays have the same length

for i in "${!file_lists[@]}";
# for ((i=0; i<${#file_lists[@]}; ++i));
do
  # remane the .sif files with the names of the folders
  echo "you are renaming the file --->>>> ${file_lists[$i]} to file --->>>> $1/"${dir_list[$i]}".sif"
  # mv ${file_lists[$i]}  $1/"${dir_list[$i]}.sif"
done

echo "you got ${#dir_list[@]} files moved"
