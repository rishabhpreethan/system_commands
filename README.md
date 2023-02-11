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


### Indexing arrays
* indexing of the array doesnt have to be contiguous
```
declare -a arr
```
* declare as an indexed array
```
$arr[0]="value"
```
* set value of element with index 0 in the array
```
echo ${arr[0]}
```
* display value of element with index 0
```
echo ${#arr[@]}
```
* length of the array
```
echo ${!arr[@]}
```
* display all indices used
```
echo ${arr[@]}
```
* display values of all elements
<br>

```
unset 'arr[2]'
```
<br>

* delete element with index 2
```
arr+=("value")
```
* append an element with "value" to the end of the array


### Associative arrays(Hashmap):
* index can be of any datatype<br>
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