echo "select a middle one"
select i in {1..10}; do
    case $i in
        1|2|3) echo "you picked a small number";;
        8|9|10) echo "you pickked a big number";;
        4|5|6|7) echo "you picked the right number"
                break;;
    esac
done
echo "selection completed with $i"