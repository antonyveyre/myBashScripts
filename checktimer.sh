#! /bin/bash

[ -f newAlarm ] && rm newAlarm

line = ""


while [ ${#line} -ne 4 ]

do
  echo "enter alarm time in format HHMM"
  read line

done

echo $line 

#h=$(date +%H) 
#m=$(date +%M -d "+1 minute")
#if [ $m == 59 ] do h="expr $h+1"


h=${line:0:2}
m=${line: -2}

echo $h 
echo $m

echo "$m $h * * * /usr/local/bin/alarm" > newAlarm # fill newAlarm file with echo string
crontab newAlarm # add newAlarm file in corntab
read stop # whait user input to stop mpg123

ps -A | grep mpg123 | kill -9 $(awk '{print $1}') # finde process by name ("mpg123") and kill it
