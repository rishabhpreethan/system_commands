# Notes


### chmod codes:
* 0 : ---
* 1 : --x
* 2 : -w-
* 3 : -wx
* 4 : r--
* 5 : r-x
* 6 : rw-
* 7 : rwx
<br>


### Print strings to screen:
```
echo hello world
```
<br>


### Print values of variables:
```
echo $HOME
```
<br>


### Frequently used shell variables:
* $USERNAME
* $HOME
* $HOSTNAME
* $PWD
* $PATH
<br>


### Special shell variables:
* $0 : name of the shell
* $$ : process ID of the shell
* $? : return code of previously run program
* $- : flags set in the bash shell
<br>


### Process control(echo $$):
* & : run a job in the background
* fg : foreground
* coproc
* jobs : programs running in the background
* top : processes utilizing the cpu/hogging memory
* kill : kill processes
<br>


### Program exit codes(echo $?):
* 0 : success
* 1 : failure
* 2 : misuse
* 126 : command cannot be executed
* 127 : command not found
* 130 : processes killed using (ctrl + c)
* 137 : processes killed using (kill -9 <pid>)
<br>


### Flags set in bash(echo $-):
* h : locate and hash commands
* B : brace expansion enabled
* i : interactive mode
* m : job control enabled
* H : ! style history substitution enabled
* s : commands are read from stdin
* c : commands are read from arguments
<br>


### Creating a variable:
>eg : myvar="value"
* can mix alpha-numeric characters
* no space around the = sign
* cannot start with a number
<br>


### Using variable values:
```
echo $myvar
echo ${myvar}
echo "{myvar}_something"
```
<br>


### Removing variables:
```
unset myvar
```
<br>


### Removing the value of the variable
```
myvar=
```
<br>


### Test if a variable is set:
```
[[ -v myvar]]
echo$?
```
*   Return codes:
    * 0 : success (variable myvar is set)
    * 1 : failure (variable myvar is not set)
<br>


### Substitute default value:
```
echo ${myvar:="default text here"}
```
* Also the same as:
```
if myvar is set:
    display the value
else:
    display "default text here"
```
<br>


### List of variable names:
```
echo ${!H*}
```
* List of names of shell variables starting with 'H'
<br>


### Length of string:
```
echo ${#myvar}
```
* it will display the length of the string
* myvar is not set then display 0
<br>


### Slicing strings:
```
myvar="rishabh"
echo ${myvar:5:4}
```
```
O/P : 
bh
```
* starting at index 5
* display next 4 characters
<br>


### Remove matching pattern:
```
echo ${myvar#pattern}
```
* match once
```
echo ${myvar##pattern}
```
* match max possible
<br>


### Keep matching pattern:
```
echo ${myvar%pattern}
```
* match once
```
echo ${myvar%%pattern}
```
* match max possible
<br>


### Replace matching pattern:
```
echo ${myvar/pattern/string}
```
* match once and replace with the string
```
echo ${myvar//pattern/string}
```
* match max possible and replace with string
<br>


### Replace matching pattern by location:
```
echo ${myvar/#pattern/string}
```
* match at beginning and replace with string
```
echo ${myvar//pattern/string}
```
* match at end and replace with string
<br>


### Changing case of a string variable:
```
echo ${myvar,}
```
* change first char to lower case
```
echo ${myvar,,}
```
* change all chars to lower case
```
echo ${myvar^}
```
* change first char to upper case
```
echo ${myvar^^}
```
* change all chars to upper case
<br>


### Restricting value types:
```
declare -i myvar
```
* only integers assigned
```
declare -l myvar
```
* only lower case chars
```
decalre -u myvar
```
* only upper case chars
```
declare -r myvar
```
* variable is read only
<br>


### Remove restrinctions:
```
declare +i myvar
declare +l myvar
decalre +u myvar
```
```
declare +r myvar
```
* cant do this once it is read only
<br>


### Indexing arrays
* indexing of the array doesnt have to be contiguous
<br>

```
declare -a arr
```
* declare as an indexed array
<br>

```
$arr[0]="value"
```
* set value of element with index 0 in the array
<br>

```
echo ${arr[0]}
```
* display value of element with index 0
<br>

```
echo ${#arr[@]}
```
* length of the array
<br>

```
echo ${!arr[@]}
```
* display all indices used
<br>

```
echo ${arr[@]}
```
* display values of all elements
<br>

```
unset 'arr[2]'
```
* delete element with index 2
<br>

```
arr+=("value")
```
* append an element with "value" to the end of the array


### Associative arrays(Hashmap):
* index can be of any datatype
<br>

```
decalare -A hash
```
* declare hash as an associative array
<br>

```
$hash["a"]="value"
```
* set value of element with index as "a"
<br>

```
echo ${hash["a"]}
```
* value of element with index "a"
<br>

```
echo ${#hash[@]}
```
* number of elements
<br>

```
echo ${!hash[@]}
```
* display all indices used
<br>

```
echo ${hash[@]}
```
* display all values of the elements
<br>

```
unset 'hash["a"]'
```
* delete element with index "a"
<br>

# Week 3
<br>

### Executing multiple commands
>commandl; command2; command3;
* Each command will be executed one after other
<br>

>command1 && command2
* command2 will be executed only if command1 succeeds
<br>

>command1 || command2
* command2 will not be executed if command1 succeeds
<br>

### Running commands in subshells :
```
(ls; echo $BASH_SUBSHELL; (date; echo $BASH_SUBSHELL))

O/P :
# list of all directories
1                  # first subshell
Wednesday 15 February 2023 4:57:01 AM IST           #date
2                  # second subshell
```
<br>

### File descriptors :
<img src="/images/file_descriptors.png?raw=true" alt="File Descriptors" width="800" height="400" title="File descriptors">
<br>


### Combining commands :
> command > file1
* contents of file1 will be overwritten 
* new file1 will be created if it does not exist
<br>

> command >> file1
<img src="/images/combining_commands2.png?raw=true" width="800" height="400">
<br>
* contents will be appended to file1 (bottom of the file)
* file1 will be created it it does not exist
<br>

> command 2> file1
<img src="/images/combining_commands3.png?raw=true" width="800" height="400">
* used to store the error message into the file
* contents of file1 will be overwritten
* new file1 created if it does not exist
<br>

> command > file1 2> file2
<img src="/images/combining_commands1.png?raw=true" width="800" height="400">
* contents of file1 and file2 will be overwritten

> command < file1
<img src="/images/<.png?raw=true" width="800" height="400">
