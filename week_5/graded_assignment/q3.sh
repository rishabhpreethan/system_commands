number=3
if [$(number % 3) -eq 0]; then              #error
    echo hi

elif [ $((number % 3)) -eq 0 ]; then
    echo hello

elif [ $(($number % 3)) -e 0]; then
    echo rishabh

elif [number % 3 -eq 0]; then
    echo 20
fi