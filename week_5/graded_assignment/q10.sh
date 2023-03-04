1.  for ((i=2,j=10;i<11 && j<60; i+=2,j+=10)); do
        echo $i,$j
    done

2.  for ((i=2,j=10 ; i<11 ; i+=2,j+=10)); do
        echo $i,$j
    done

3.  # for ((i=2 ; i<11 ; i+=2)); do                     #wrong O/P
    #     for ((j=10 ; j<51 ; j+=10)); do
    #         echo $i,$j
    #     done
    # done

4.  # for ((i=2,j=10;i<11 || j<60; )); do               #wrong O/P
    #     echo $i,$j                                    #infinite loop
    #     j+=10
    # done

5.  for ((i=2,j=10;i<11 || j<60; )); do
        echo $i,$j
        ((j+=10))
        ((i+=2))
    done