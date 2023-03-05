# Write a bash script that reads a value from the standard input stream and 
# prints PNUM if the value is a postive number or 0; prints NNUM if it is a 
# negative number; else print STRING.

# Testcases
#         Input	Output
# Public	1 2	    3
# Public	1	    Error
# Public	1 2	    3
# Public	1 2 3	Error


read var
if [ $var -gt 0 ]; then
    echo "PNUM"
elif [ $var -lt 0 ]; then
    echo "NNUM"
else
    echo "STRING"
fi