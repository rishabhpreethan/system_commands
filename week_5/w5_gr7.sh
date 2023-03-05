# Write a bash script that prints the sum of all even numbers of an array of 
# numbers. The array variable is named as number_arr

# Testcases
#         Input	                                Output
# Public	2 4 7 8	                                14
# Public	11 34 442 146 451 348 123 44 66	        1080


array=( 2 4 7 8 )
s=0
for i in ${number_arr[@]}; do
    if [ $((i%2)) -eq 0 ]; then
        let s+=$i
    fi
done
echo $s