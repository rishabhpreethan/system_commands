# Notes



#### chmod codes:
* 0 : ---
* 1 : --x
* 2 : -w-
* 3 : -wx
* 4 : r--
* 5 : r-x
* 6 : rw-
* 7 : rwx


#### Print strings to screen:
> echo hello world


#### Print values of variables:
> echo $HOME


#### Frequently used shell variables:
* $USERNAME
* $HOME
* $HOSTNAME
* $PWD
* $PATH


#### Special shell variables:
* $0 : name of the shell
* $$ : process ID of the shell
* $? : return code of previously run program
* $- : flags set in the bash shell


#### Process control(echo $$):
* & : run a job in the background
* fg : foreground
* coproc
* jobs : programs running in the background
* top : processes utilizing the cpu/hogging memory
* kill : kill processes


#### Program exit codes(echo $?):
* 0 : success
* 1 : failure
* 2 : misuse
* 126 : command cannot be executed
* 127 : command not found
* 130 : processes killed using (ctrl + c)
* 137 : processes killed using (kill -9 <pid>)


#### Flags set in bash(echo $-):
* h : locate and hash commands
* B : brace expansion enabled
* i : interactive mode
* m : job control enabled
* H : ! style history substitution enabled
* s : commands are read from stdin
* c : commands are read from arguments


#### Creating a variable:
>eg : myvar="value"
* can mix alpha-numeric characters
* no space around the = sign
* cannot start with a number

#### Using variable values:
>echo $myvar<br>
>echo ${myvar}<br>
>echo "{myvar}_something"

#### Removing variables:
>unset myvar

#### Removing the value of the variable
>myvar=

#### Test if a variable is set:
>[[ -v myvar]]<br>
>echo$?
*   Return codes:
    * 0 : success (variable myvar is set)
    * 1 : failure (variable myvar is not set)

#### Substitute default value:
>echo ${myvar:="default text here"}
* Also the same as:
    >if myvar is set:<br>
    >   display the value<br>
    >else:<br>
    >   display "default text here"


####