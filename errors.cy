##################################################
WHAT WAS IMPOSSIBLE....... TO BE RESOLVED.........
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
##################################################
import os 'os'
os.stdin.streamLines() as line:
##################################################
Thanks for providing readfq2. 
It helped me narrow down the perf bottleneck quickly. 
readLine was meant for getting the user input from the command line 
and not bulk reads from stdin. 
For that reason, I deprecated readLine in favor of getInput. 
As for bulk reads on std.in you can do the following now in readfq2:


import os 'os'

--- minimal parse. don't use object or fastq
---  '@+>' is  64 / 43 / 62
func is_fastx(chr) bool:
    if chr == 64:
        return true
    if chr == 62:
        return true
    return false
n     = 0
slen  = 0
qlen  = 0
for os.stdin.streamLines() as line:
    if is_fastx(line.charAt(0)):
        n    += 1
    else:
        slen += line.len()

print 'There are {slen} bases from {n} records in this file.'

##################################################
[error] v0.2
--------------------------------------------   
t = readLine()
print '{t}'
[error]
--------------------------------------------    
readLine is deprecated since 0.1: Use getInput() instead.
panic: error.EndOfStream
/judge/Main.cy:2:5 main:
t = readLine()
    ^
##################################################
[error]
--------------------------------------------    
panic: error.EndOfStream
/judge/Main.cy:2:5 main:
t = getInput()
    ^
--------------------------------------------   
t = getInput()
print '{t}'
##################################################
[error]
--------------------------------------------    
panic: error.EndOfStream
/judge/Main.cy:2:5 main:
v = getInput().utf8().split(' ')
    ^
--------------------------------------------    
v = getInput().utf8().split(' ')
n = int(v[0])
w = int(v[1])
t = int(n/w)
print '{t}'
##################################################
