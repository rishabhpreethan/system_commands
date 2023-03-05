# Write a bash script that accepts a few arguments(all numbers) and performs the 
# following functions.

# Prints the string Error if the number of arguments supplied is not equal to 2.
# If the number of arguments is equal to two, print their sum.

# Note: Avoid using single quotes in your script, use double quotes instead where possible.

# Testcases
# Type	Input	Output
# Public	1 2	3
# Public	1 2 3	Error


read -a arr
s=0
if [ ${#arr[@]} -eq 2 ]; then
    for i in ${arr[@]}; do
        s+=$i
    done
    echo $i
else
    echo "Error"
fi