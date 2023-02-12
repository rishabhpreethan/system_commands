# Print to the output containing the name of the shell being used,
# its PID and the flags in the following format 
# "Shell:<shell>|PID:<pid>|Flags:<flags>".
# There are no spaces in the string.

echo "Shell:$SHELL|PID:$$|Flags:$-"