# There are three files master.txt, half1.txt and half2.txt 
# in the current working directory. Add first 2 lines of 
# half1.txt to the file master.txt at the end(starting at a new line) 
# then append the last 3 lines of the file half2.txt 
# to the file master.txt at the end(starting at a new line). 
# Append the lines in the sequence mentioned.

head -n 2 half1.txt >> master.txt
tail -n 3 half2.txt >> master.txt