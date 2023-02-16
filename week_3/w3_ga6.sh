# The script test will print some text to the standard output, 
# it can be run similar to any other command and does not accept any 
# arguments.

# Your task is to print the output after running test on the screen 
# and also append the output at the end(starting at new line) 
# of the file log.  File log is located in the current working directory.

# Hint: To solve it in one line check the man page of tee command for 
# appending to the file. 

test | tee -a log