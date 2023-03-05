# Write a bash script that takes any number of inputs(all numbers) and prints 
# the maximum and minimum value from all the inputs in the format Maximum: 
# max | Minimum: min, where max is the maximum value and min is the minimum value.
# Note: Avoid using single quotes in your script, use double quotes instead 
# where possible.

# Testcases
#           Input               Output
# Public	1 2 3 4	            Maximum: 4 | Minimum: 1
# Public	0 0 0 0 0 0 0	    Maximum: 0 | Minimum: 0


read -a arr

h=${arr[0]}
l=${arr[0]}

for i in "${arr[@]}"; do
    echo $i
    if [[ "$i" -gt "$h" ]]; then
    	 h="$i"
    fi
    if [[ "$i" -lt "$l" ]]; then 
    	 l="$i"
    fi
done
echo "max: $h | min: $l"