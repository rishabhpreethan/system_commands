ls -l
for file in `ls`; do
    d=`ls -l $file`
    echo $file: ${d:0:10}
done