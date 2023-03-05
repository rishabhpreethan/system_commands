# Write a bash script that takes two integer values as input, and prints the 
# product table of first integer with all the integers from 1 to the value in 
# second argument as described in the format below.
# Let the first argument be 3 and the second argument be 4, then your script 
# should print.

# 3*1=3
# 3*2=6
# 3*3=9
# 3*4=12
# If the first argument is 12 and second argument is 3, then your script should print

# 12*1=12
# 12*2=24
# 12*3=36
# Note that there is no space between any numbers, * or = sign in each line. 
# And every product is printed on a new line.


# Note: Avoid using single quotes in your script, use double quotes instead 
# whereever possible.

# Testcases
#         Input	Output
# Public	3 4	    3*1=3
#                 3*2=6
#                 3*3=9
#                 3*4=12

# Public	12 3	12*1=12
#                 12*2=24
#                 12*3=36


n1=3
n2=4
for (( i=1; i<=$n2; i++ )); do
    ans=$((n1 * i))
    echo "$n1*$i=$ans"
done