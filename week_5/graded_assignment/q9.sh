1.  wc -w paragraph

2.  wc -w < pragraph

3.  sum=0;
    for i in $(cat paragraph); do
        ((sum++));
    done;
    echo $sum