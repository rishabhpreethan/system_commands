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

* contents will be appended to file1 (bottom of the file)
* file1 will be created it it does not exist
<br>

> command 2> file1
<img src="/images/combining_commands3.png?raw=true" width="800" height="400">

* used to store the error message into file1
* contents of file1 will be overwritten
* new file1 created if it does not exist
<br>

> command > file1 2> file2
<img src="/images/combining_commands1.png?raw=true" width="800" height="400">
<br>

> command < file1
<img src="/images/<.png?raw=true" width="800" height="400">
<br>

> command > file1 2>&1
<img src="/images/redirections1.png?raw=true" width="800" height="400">
<br>


#### Pipe
> command1 | command2
<img src="/images/|.png?raw=true" width="800" height="400">
<br>

> command1 | command2 > file1
<img src="/images/|>.png?raw=true" width="800" height="400">

* contents of file1 will be overwritten
<br>

> /dev/null
* a sink for output to be discarded
* use : silent and clean scripts
<br>

> command > file1 2> /dev/null
<img src="/images/redirections2.png?raw=true" width="800" height="400">
<br>

>command | tee file1
<img src="/images/tee.png?raw=true" width="800" height="400">
<br>


### Package types
<img src="/images/package_types.png?raw=true" width="800" height="400">
<br>


### Type of os
```
lsb_release -a
```
<br>


### Type of kernel
```
uname -a
```
<br>


### Inquiring package db
* Search packages for a keyword:
```
apt-cache search keyword
```
* List all packages:
```
apt-cache pkgnames
```
* Display package records of a package:
```
apt-cache show -a package
```
<br>


### Package priorities
* required: essential to proper functioning of the system
* important : provides functionality that enables the system to run well
* standard : included in a standard system installation
* optional : can omit if you do not have enough storage
* extra : could conflict with packages with higher priority, has specialized requirements, install only if needed
<br>


### Special characters (BRE & ERE)
* . : Any single character except null or newline
* \* : Zero or more of the preceding character / expression
* [] : Any of the enclosed characters; hyphen (-) indicates character range
* ^ : Anchor for beginning of line or negation of enclosed characters
* $ : Anchor for end of line
* \ : Escape special characters
<br>


### Special characters (BRE)
* \{n,m\} : Range of occurances of preceding pattern at least n and utmost m times
* \( \) : Grouping of regular expressions
<br>


### Special characters (ERE)
* {n,m} : Range of occurances of preceding pattern at least n and utmost m times
* () : Grouping of regular expressions
* + : One or more of preceding character / expression
* ? : Zero or one of preceding character / expression
* | : Logical OR over the patterns
<br>


### Character classes 
* [[:print :]] - Printable
* [[:alnum:]] - Alphanumeric
* [[:alpha: ]] - Alphabetic
* [[:lower :]] - Lower case
* [[:upper :]] - Upper case
* [[:digit:]] - Decimal digits
* [[:blank:]] - Space / Tab
* [[:space:]] - Whitespace
* [[:punct :]] - Punctuation
* [[:xdigit:]] - Hexadecimal
* [[:graph:]] - Non-space
* [[:cntrl:]] - Control characters
<br>


### BRE operator precedence
* [..] [==] [::] char collation                 |   HIGHEST
* \metachar                                     |
* [ ] Bracket expansion                         |
* \( \) \n subexpresions and backreferences     |
* \* \{ \} Repetition of preceding              |
single char regex                               |
* Concatenation                                 |
* A $ anchors                                   V   LOWEST
<br>


### ERE operator precedence
* [..] [==] [::] char collation                 |   HIGHEST
* \metachar                                     |
* [ ] Bracket expansion                         |
* ( ) grouping                                  |
* + ? { } Repetition of preceding regex         |
* Concatenation                                 |
* A $ anchors                                   |
* | alternation                                 V   LOWEST
<br>


### ed
* Show the Prompt P
* Command Format :                  [addr[, addr]]cmd[params]
* commands for location :           2 $ % + ; /RE/
* commands for editing :            f p a C d j S mu
* exectute a shell command :        !command
* edit a file :                     e filename
* read file contents into buffer :  r filename
* read command output into buffer : r ! command
* write buffer to filename :        w filename
* quit :                            q
<br>


### Shell script arguments
* $0 : name of the shell program
* $# : number fo arguments passed
* $1 or !{1} : first argument
* ${11} : eleventh argument
* $* or $@ : all arguments at once
* "S*" : all arguments as a single string
* "$@" : all arguments as separate strings
<br>


### Command substitution
```
var=`command`
```
```
var=$(command)
```
* command is executed and the output is substituted
* Here the variable var will be assigned with that output
<br>


### for do loop
```
for var in list
do
    commands
done
```
OR 
```
for var in list; do
    commands
done
```
* commands are executed once for each item in the list
* space is the field delimiters
* set IFS if required (field separator)
<br>



### while do loop
```
while condition; do
    commands
done
```
* commands are executed only if condition returns true
<br>



### until do loop
```
until condition; do
    commands
done
```
* commands are executed only if condition returns false
<br>


### switch case
```
case var in 
    pattern1) commands;;
    pattern2) commands;;
    *) commands;;               <!-- default -->
    esac
```
<br>


### if else
```
if condition; then
    commands
fi
```
##### Conditions
* test expression : ```test -e file```
* [ exprn ] : ```[ -e file ]```
* [[ exprn ]] : ```[ $ver == 5.* ]```
* (( exprn )) : ```(( $v ** 2 > 10 ))```
* command : ```wc -l file```
* pipeline : ```who|grep "joy" > /dev/null```
> ! : for negation
<br>


### Test numeric comparisons
```$n1 -eq $n2``` : Check if n1 is equal to n2<br>
```$n1 -ge $n2``` : Check if n1 is greater than or equal to n2<br>
```$n1 -gt $n2``` : Check if n1 is greater than to n2<br>
```$n1 -le $n2``` : Check if n1 is lesser than orequal to n2<br>
```$n1 -lt $n2``` : Check if n1 is lesser than to n2<br>
```$n1 -ne $n2``` : Check if n1 is not equal to n2<br>
<br>


### Test string comparisons
```$str1 = $str2``` : Check if str1 is the same as str2<br>
```$str1 != $str2``` : Check if str1 is not the same as str2<br>
```$str1 < $str2``` : Check if str1 is less than str2<br>
```$str1 > $str2``` : Check if str1 is greater than str2<br>
```-n $str1``` : Check if str1 has length greater than zero<br>
```-z $str1``` : Check if str1 has length equal to zero<br>
<br>


### Unary file comparisons
```-e file``` : Check if the file exists<br>
```-d file``` : Check if the file exists and is a directory<br>
```-f file``` : Check if the file exists and is a file<br>
```-r file``` : Check if the file exists and is readable<br>
```-s file``` : Check if the file exists and is not empty<br>
```-w file``` : Check if the file exists and is writable<br>
```-x file``` : Check if the file exists and is executable<br>
```-O file``` : Check if the file exists and is owned by the current user<br>
```-g file``` : Check if the file exists and default group is same as that of the current user
<br>
<br>


### Binary file comparisons
```file1 -nt file2``` : Check if file1 is newer than file2<br>
```file1 -ot file2``` : Check if file1 is older than file2<br>
<br>


### Functions
```
myfunc()
{
    commands
}
```
* call
```myfunc```
* commands are executed eachtime myfunc is called
* definitions must be before the calls
<br>


### Debugging
```set -x ./myscrip.sh```
```bash -x ./myscrip.sh```
* prints the command before executing it
* place the set -x inside the script
<br>


### Combining conditions
```[ $a -gt 3 ] && [ $a -gt 7 ]```
```[ $a -gt 3 ] || [ $a -gt 7 ]```
<br>


### Shell arithmetic
* let
    ```let a = $1 + 5```
* expr
    ```expr $a +20```
    ```b=$( expr $a +20 )```
* $[ expression ]
    ```$[ $a +10 ]```
* $(( expression ))
    ```
    b=$(($a+10))
    (( b++ ))
    ```
<br>


### eval
```
eval my-arg
```
* execute argument as a shell command
* combines arguments into a single string
* returns control to the shell with exit status
<br>


### getopts
```
while getopts "ab:c" options; do
    case "${options}" in
        b)
            barg=${OPTARG}
            echo accepted; -b $barg;;
        c)
            carg=${OPTARG}
            echo accepted; -b $carg;;
        a)
            echo accepted: -a;;
        *)
            echo Usage: -a -b barg -c carg;;
    esac
done
```
* this script can be invoked with only three options a,b,c
* the options b and c will take arguments
<br>


### select loop
##### Text menu
```
echo "select a middle one"
select i in {1..10}; do
    case $i in
        1|2|3) echo you picked a small number;;
        8|9|10) echo you pickked a big number;;
        4|5|6|7) echo you picked the right number
                break;;
    esac
echo selection completed with $i
```
<br>



### bash prompts
* PS1 : primary prompt string : $
* PS2 : secondary prompt for multi-line input : >
* PS3 : prompt string in select loops : #?
* PS4 : prompt string for execution trace : +
<br>


### Escape sequences
* \A - Current time in 24-hour as hh:mm
* \d - Date in "weekday month day" format
* \h - Hostname upto first period
* \H - Complete hostname
* \s - Name of the shell
* \t - Current time in 24-hour as hh:mm:ss
* \T - Current time in 12-hour as hh:mm:ss
* \u - Current users username
* \w - Current directory
* \W - Basename of current directory
* \\# - Current command number
* \\$ - if uid is 0, # else $
* \\@ - Current time in 12-hour am/pm
* \\\ - A literal \ character
<br>


### Python command line ( >>> )
* ps1 and ps2 are defined in the module sys
* Change sys.ps1 and sys.ps2 if needed
* Override __str__ method to have dynamic prompt
<br>


### Utilities
* find - locating files and processing them
* tar, gzip etc - packaging collections of files
* make - conditional actions
<br>



### find
> find [pathname] [conditions]
* ```-name``` : pattern to match filenames
* ```-type``` : file type code, eg - c for charater file, d for directory, l for symbolic link etc.
* ```-atime``` : file accessed +n(more than n), -n(less than n) days ago
* ```-ctime``` : file changed +n(more than n), -n(less than n) days ago
* ```-regex``` : regular expression for pattern of filenames, combine with -regextype posix-basic, posix-egrep etc.
* ```-exec``` : command to run using {} as place holder for filename
* ```-print``` : print the full path name of matching files
<br>


### file packaging
* deep file hierarchies
* large number of tiny files
* ```tar``` : collect a file hierarchy into a single file
* ```gzip``` : compress a file
* Apllications : backup, file sharing, reduce disc utilization
<br>


### Possibilities
* tar, zip
* compress (ncompress), gzip (ncompress), bzip2 (bzip2), x2 (xz-utils), 7z (p7zip-full)
* Tarballs like bundle.tgz for package + compress
* Time and memory required to shrink/expand vs size ration
* Portability
* Unique names using timestamp, process ID etc., for backup tarballs
<br>


### make
> make -f make.file
```
# comments
TMP_FILES = * .o *.aux

.PHONY : clean

target : prerequisites
    recipie $(OPTION_NAME)
clean :
    rm -f $(TMP_FILES)
```
<br>


### cron
* service to run scripts automatically at scheduled times
* Tools : at, crontab, anacron, logrotate
* Script locations : /etc/crontab, /etc/cron.d, /etc/cron.hourly, /etc/cron.daily, /etc/cron.weekly, /etc/cron.monthly
<br>


### Startup scripts
* Startup scrpits : /etc/init/, /etc/init.d
* Runlevel scripts

| Sr no. | Script | Function |
| --- | --- | --- |
| 0 | /etc/rc0.d | Shutdown and power off |
| 1 | /etc/rc1.d | Single user mode |
| 2 | /etc/rc2.d | Non GUI multi-user mode w/o networking |
| 3 | /etc/rc3.d | Non GUI multi-user mode with networking |
| 4 | /etc/rc4.d | Non GUI multi-user mode for special purposes |
| 5 | /etc/rc5.d | GUI multi-user mode with networking |
| 6 | /etc/rc6.d | Shutdown and reboot |

<br>


# Stream editor sed
<br>

### Introduction
* It is a programming language
* sed is an abbreviation for stream editor
It is a part of POSIX
* sed precedes awk
<br>


### Execution model
* input stream is a set of lines
* each line is a sequence of characters
* two data buffers are maintained: active pattern space and auxiliary hold space
* for each line of input an execution cycle is performed loading the line into the pattern space
* during each cycle, all the statements in the script are executed in the sequence for matching address pattern for actions specified with the options provided
<br>


### usage
* single line at the command line
```sed -e 's/hello/world/g' input.txt```
* script interpreted by sed
```sed -f ./myscript.sed input txt```
<br>


### sed statements
> :label    address pattern     action      options
* ```address pattern``` - address, address,range, negation !
* ```action``` - single character action, same as "ed" or "ex"
* ```options``` - depends on the action
<br>


### grouping commands
```{ cmd; cmd; }```

### address
* selecting by numbers : ```5```, ```$```, ```%```, ```1~3```
* selecting by text matching :  ```/regexp/```
* range addresses : ```/regexp1/```, ```/regexp2/```, ```/regexp/, +4```, ```5,15```, ```/regexp/, ~2```, ```5, /regexp/```
<br>


### actions
* ```p``` : print the pattern space
* ```d``` : delete the pattern space
* ```s``` : substitute using regex match - ```s/pattern/replacement/g```
* ```=``` : print current input line number, \n
* ```#``` : comment
* ```i``` : insert above current line
* ```a``` : append below current line
* ```c``` : change current line
<br>


### programming
* ```b label``` : branch unconditionally to label
* ```:label``` :specify location of label for branch command
* ```N``` : add a new line to the pattern space and append next line of input into it
* ```q``` : exit sed without processing any more commands or input lines
* ```t label``` : branch to label only if there was a successful substitution was made
* ```T label``` : branch to label only if there was no successful substitution was made
* ```w filename``` : write pattern space to filename
* ```x``` : exchange the contents fo gold and pattern spaces
<br>


### bash + sed
* including sed inside shell script
* heredoc feature
* use with other shell scripts on command line using pipe
<br>


### 