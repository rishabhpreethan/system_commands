ls -l | 
egrep -v "^d" | 
awk '{ sum += $5; }; 
END { print sum; }'