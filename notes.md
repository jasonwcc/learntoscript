---
Install either chrome or use Microsoft Edge
Connect to MS Teams
- https://teams.live.com/meet/9538347223211

Do assessment (30 minutes)
- https://forms.office.com/r/29x4YT789H

Github
- https://github.com/jasonwcc/learntoscript

scripting
- commands inside script
- do not compile
- cannot run everywhere

vs
programming
- instructions /source code inside program file
- source code must be compiled into machine readable
- run anywhere (WORM)
- declare variable (int, string, float)
- control resources consumption



ls -l -t -r = ls -ltr = ls -lrt
ls --long --all --
cmd /?


Voon - 16GB
Naz - 32GB
SY - 4GB
IA - 8GB
Iz - 8 GB


dynamic runtime
- kernel / OS will create file
- non-persistent



RH, Oracle Linux, Fedora Core
- rpm, dnf (online repo)

Ubunt, Debian,
- apt



script.ksh
cmd1 - failed to execute
cmd2
cmd3



1. Create VM
- CPU, Memory (VM), Disk, Network
Windows - 4GB
Oracle Linux VM  - 1 GB
2. Customize the VM
- add 1 x SCSI disk (20GB)
- add 2 x NVMe disks (10GB)
- add NAT network device
3. Set root password to "cangetin"


student / student

Security best practices
first login (local / remote)
- always logon as non-root user
su (switch to root)
- never execute any initialiazation script profile)
- always enabled
su - (switch to root completely)
- completely login user (if any initialization script profile, it will execute)
vs
sudo  (switch to root and execute commands, switch out)
- must onfigure with /etc/sudoers
- or member of the wheel group



student - member of wheel group
- sudo login as root 
- enable student to execute all commands
ali


User, group and password
/etc/passwd : user account information (primary group membership)
/etc/shadow : user's hashed (md5, sha256, sha512) password and settings. salt/seed
/etc/group : show all groups information and user as secondary group membership

user can belong
- 1 primary group (-g)
  : own newly file/directory 
  : apply permission
  : if want change permanently, use root to usermod -g
and
- upto 15 secondary groups (-G)
  : swap primary using "newgrp" command
  : apply permission

chgrp 

useradd jason
default primary group : use back its own user name
default shell : bash 
default uid : running number
default home : /home/username

useradd -g sales -G operation,finance -u 99999 -s /bin/ksh -d /anotherdir/pete.wong  peter
Customize primary, secondary 

userdel 



cat -n /etc/passwd
-v
-t
-e


more
tail
head
vim

yaml
- automation orchestation

xml

json
toml

cp -p (preserved)
- copy new file

mv
- move
- rename
cd /
rm -fr *
rmdir

absolute vs relative path
cat /etc/
soft 
- used as a shortcut
- point to original using absolute path
- can be created across different file system / partition / disk
vs hardlink
- used as backup
- point to original using inode
- must be created within same file system / partition / disk as the original file






Day 1 - Tasks
1. Delete all irrelevant users and groups
2. Create 2 groups group101 and group102
3. Create following users with respective setting
user1 
- primary : group101
- secondary : group102
- uid : 2500
- home directory : /salesdir
user2
- primary : group102
- secondary : group101
- uid : 3500
- home directory : /operationdir
4. Make sure to create user home in the correct main directory
5. Assign "cangetin" as password to both user

https://forms.office.com/Pages/ResponsePage.aspx?id=oyt4z26SBEqefqovbhjzTW-KYMT-Z8xAoV_dPJKY65tUNTVCQjVZTjhMR1pEWVlQWElRT0M3RUtFVi4u


Day 1 - Review
https://forms.office.com/r/wjYuDat2Pg

Day 2 - Tasks / Assignments
1. Create a simple script and called it /scripts/day2-assignment.sh. 
2. The script will perform following tasks
a. Get 3 numbers during script execution
b. Add these three numbers into a variable called total
c. Divide the total variable by 3 and save the result into a variable called average
d. Display following message
   "Total is <value from total variable>"
   "Average is <value from average variable>"
3. Ensure above script file has 750 permission mode
4. Collect package information on bash package and save result into /scripts/files/bash-info.md file
 

yum repositories / apt --> dnf 
- central packages location (web server) / online 

dnf -y search ksh








PS1
PS2
PS3 - select
PS4 - debug msg

exit code/status
0 - cmd succesfully executed
1-255 - cmd has failed to executed

Quoting characters
' ' messaging but special characters like !@#$%^&*() will not be treated special
" " messaging 
` ` back tick


/etc/profile
- all users and all shells

/etc/bashrc
- all users that use only bash shell

~/.bashrc
- individual user and specifically to bash shell

~/.profile (linux this file not created)
- individual user but apply to shells 


set -xv
set -x # set xtrace / turn on debug
== set -o xtrace
set -v # set verbose / more details information'
set +xv # turn off both xtrace and verbose
set -o # list all options


noclobber	off	--> on
- means can override (default)

noclobber	on	--> off
- means cannot override (cannot use  single >)


noglob 		off	--> on
- default
- treat some metacharacters as wildcard


noglob		on 	--> off
: set -o noglob = set -f
- do not treat some metacharacters as wildcard

0101
0011 xor
-----
1001

192.168.10.10/24


decimal - base 10 (0 - 9)
binary  - base 2 (0 1
octal   - base 8 (0-7) syslog
hexidecimal - base 16 (0 - 9, a - f)


Arithmetric
if all shells
var1=100
x=$(expr $var1 \* 22)

if ksh
let var1=100
let x=$var1*22

bash 
var1=100
(( x=var1*22 ))




Disks
interface - disk
- IDE
- SATA / NL-SAS - HDD
- SAS - SSD/HDD
- FC - SSD/HDD
- NVMe - SSD

/dev/sda split into multiple applications
/dev/sda5 1G (xfs)	- /data1
/dev/sda6 1G (xfs)	- /data2
/dev/sda7 5G (xfs)	- /html

/dev/nvme0n1 - OS installed

/dev/nvme0n2 split into multiple application
500M (xfs)	- /email1	
500M (ext4)	- /email2
1G   (xfs)	- /testing


4x Primary - for OS
1x Extended - for logical
15x Logical -


https://forms.office.com/r/AwTApYAmHZ



grep
fgrep : fixed string grep
egrep : expression grep . multiple criteria grep
pgrep : grep processes


find lines starts with s or w and ends with number between 7-9
sed -n '/^[sw].*[7-9]$/p' data.file


find students scoring 6th column >=.80 and from northwest and northeast region


Ali	1000.50
Kelvin	999.99

printf "%10s %7.2f " $1,$2
 
Based data.file 6th column
A - >= 90 
B - 50-89
F - <50


Day 3 - Assignment : 
objective:  create a script
1. ask 2 numbers
2. if non-numerical value or 0 is entered - error msg "Invalid number, empty or zero detected"
4. if no error - Multiply those 2 numbers and display the result
5. Post ur answer at https://forms.office.com/r/PtJqs7t5Sd

Day 4 Review :
https://forms.office.com/r/9MbrASyn8t


while [[ condition = true ]]
do
   commands
done

until [[ condition = false ]]
do
  command
done

for user in ali murthi chong sam peter
do
  cmd1
  if murthi ... file
  then 
     exit
  else
    cmd2
    cmd3
  fi
  
  cmd4

done

cmd5
cmd6





Day 4 - Assignment:
Tasks
1. Using employees.db, create script to check on each employee's age. If it is over 30 years old then say "Employee-name is a senior staff else say "Employee-name is junior staff"

2. Create a script called create.user.sh to create user
- the script will ask for username
- if the username provided start with any special symbols/metacharacters, the script should abort and display error message saying "Username should not starts with metacharacters"

3. Delete user accounts with UID between 5000 and 60000
- Also make sure to delete their home directory

https://forms.office.com/r/gMFVU1LEV3

Day 2 - Tasks / Assignments
1. Create a simple script and called it /scripts/day2-assignment.sh. 
2. The script will perform following tasks
a. Get 3 numbers during script execution
b. Add these three numbers into a variable called total
c. Divide the total variable by 3 and save the result into a variable called average
d. Display following message
   "Total is <value from total variable>"
   "Average is <value from average variable>"
3. Ensure above script file has 750 permission mode
4. Collect package information on bash package and save result into /scripts/files/bash-info.md file

Day 5 - Review (Day 2 - Tasks / Assignments)
1. Make sure scripts folder is in /
2. Make sure it is own by root
3. Make sure all objectives in Day 2 - Tasks is completed - accurately
4. Backup /scripts folder content into /backup/2023/trainocate/day2-scripts.tar.gz

 


Day 5 - Tasks / Assignment
1. With the employee.awk file created in Day 2 - Assignment, create a script and named it searchbydept.sh so that

1a. Ask user which dept to generate the report.

1b. if dept no match, then display message  "<whatever user enter> dept not found"

1c. if user press ctrl+z, it will list all departments uniquely example :
ctrl+z
List of available departments:
Directors
Sales
Training
Press enter to continue

2. All data must be dynamically queried from the employees.db

https://forms.office.com/r/Z1EJQ460Mf



















...
