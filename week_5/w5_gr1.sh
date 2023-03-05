# Write a bash script which takes one argument as the name of a file and prints 
# Yes if the file has read permission only for the owner and no other permissions 
# for owner or other users, else do not print anything. The file given in the 
# argument will be present in the current working directory.


#!/bin/bash
filename=$1
if [ -r $filename ] && [ ! -w $filename ] && [ ! -x $filename ]; then
  echo "Yes"
fi