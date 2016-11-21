#!/bin/bash
for file in `find /home/pi/sms/inbox/*`
do
  cmd=`cat "$file"`
  [[ "$file" =~ (\+[[:digit:]]*) ]] && phone="${BASH_REMATCH[1]}"
  echo "$phone"
  case $cmd in
  [iI][pP])
      echo "good case"
      curl ident.me > /home/pi/sms/outbox/OUT"$phone".txt
      #rm -f $file
      ;;
  esac
done
