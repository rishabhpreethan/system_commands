for i in {1..9}; do 
    echo $i
done | 
awk 'BEGIN { value=0; }
{ value += $1*$1; } 
END { print value; }'