# Write a command that runs in a child shell,
# prints "hello" and exits with the exit code 179.

subshell(){
    echo "hello"
    echo "179"
    exit 179
}
subshell