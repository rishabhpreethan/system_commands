for file in `ls * .txt`; do
    cat $file >> ../allfiles.txt
done