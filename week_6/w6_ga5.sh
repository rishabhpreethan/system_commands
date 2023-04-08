# Given some raw programming files, we want them to adhere to the 
# company guidelines. Write a sed script that will run for all ".sh" 
# files in the current directory and print the contents after 
# performing the following actions. You just need to write the sed 
# script, running that for all the files will be taken care of by our 
# driver bash script.

# Insert a copyright message at the start of the file(before the 
# first line) as "# Copyright IITM 2022"(Note that there is a space after #).
# Insert a copyright message at the end of the file(after the last 
# line) as "# Copyright IITM 2022".
# Insert a line "# START FUNCTION" before the starting of a function 
# and a line "# END FUNCTION" at the end of the function. Check GrPA 4 
# for more details on identifying function boundaries. Use the same logic here.
# Change the function "background_sleep" to "inactive_sleep". So 
# replace all the occurrences of the word "background_sleep" in any 
# line with "inactive_sleep". Assume that these keywords are used only 
# in context of a function and nothing else.
# Also, the function "active_sleep" is deprecated and we do not have 
# an immediate replacement. So insert a line "# TODO:DEPRECATED" before 
# the function "active_sleep" and in every instance. i.e. before every line containing the word "active_sleep".
# After every 10th line (in line numbers 10, 20, 30,... ) add a line 
# with four hashes such as "####" after applying all the above actions.

# Perform all the above actions in the order given from top to bottom.

# For example, for the input file
# echo Hello
# EOF
# analysis.sh
# script() {
#   sum=0
#   for i in $(cat result); do
#     while read hash name; do 
#       if [ $i == $hash ]; then
#         inv=$(grep INVESTMENT $name)
#         inv=${inv//INVESTMENT $/}
#         sum=$((sum+inv))
#       fi
#     done < map
#   done
#   echo $sum
# }

# mkdir data

# read fnos
# for (( i=0; i<fnos; i++ )); do
#   read line 
#   echo $line | cut -d ":" -f 2- | tr '#' '\n' > ./data/${line%%:*}
# done

# read mnos
# for (( i=0; i<mnos; i++ )); do
#   read line 
#   echo $line  >> map
# done

# read rnos
# for (( i=0; i<rnos; i++ )); do
#   read line 
#   echo $line  >> result
# done
# script

# Output should be

# # Copyright IITM 2022
# echo Hello
# EOF
# analysis.sh
# # START FUNCTION
# script() {
#   sum=0
#   for i in $(cat result); do
#     while read hash name; do 
#       if [ $i == $hash ]; then
#         inv=$(grep INVESTMENT $name)
# ####
#         inv=${inv//INVESTMENT $/}
#         sum=$((sum+inv))
#       fi
#     done < map
#   done
#   echo $sum
# }
# # END FUNCTION

# mkdir data
# ####

# read fnos
# for (( i=0; i<fnos; i++ )); do
#   read line 
#   echo $line | cut -d ":" -f 2- | tr '#' '\n' > ./data/${line%%:*}
# done

# read mnos
# for (( i=0; i<mnos; i++ )); do
# ####
#   read line 
#   echo $line  >> map
# done

# read rnos
# for (( i=0; i<rnos; i++ )); do
#   read line 
#   echo $line  >> result
# done
# ####
# script
# # Copyright IITM 2022