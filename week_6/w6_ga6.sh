# project is a directory present in the current working directory that 
# has some text files. Write a Bash script that takes all files with 
# the extension .h to create a tarball named headers.tar. Then compress 
# the tarball with gzip named as headers.tar.gz without losing the headers.tar file.


tar -cf headers.tar project/*.h
gzip -c headers.tar > headers.tar.gz