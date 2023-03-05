# Write a bash script that takes a number as an argument and prints "Yes" if the 
# number is a prime number, else prints "No".

# Testcases
#         Input	Output
# Public	2	    Yes
# Public	4	    No

read n
if [$n <= 1]; then
    echo 
for i in {2..$((n-1))}; do
    if [ $((n%i)) -eq 0 ]; then
        echo "No"
    fi
done
echo "Yes"