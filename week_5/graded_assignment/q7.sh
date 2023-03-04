read var
function operate()
{
    temp=$1
    temp=${temp%.*}
    echo $temp
}

echo $(operate $var)


# I/P:
# 45.53

# O/P:
# 45