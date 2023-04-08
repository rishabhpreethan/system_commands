for i in {1..10}; do
    for j in {1..10}; do
        echo $i, $j >> numbers.txt
    done
done

awk 'BEGIN { FS=",";value=0; }
{ value += $1*$2; }
END { print value; }' numbers.txt