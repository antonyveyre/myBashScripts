#!/bin/bash
for file in `find /home/pi/sms/inbox/*`
do
  cmd=`cat "$file"`
  [[ "$file" =~ (\+[[:digit:]]*) ]] && phone="${BASH_REMATCH[1]}"

  if [[ "$cmd" == [iI][pP] ]] && [[ "$phone" == *"+33651173462"* ]]
    then
    curl ident.me > /home/pi/sms/outbox/OUT"$phone".txt
  else
    echo "le numero $phone a transmis le message suivant: $cmd" >> /home/pi/sms/outbox/OUT+33651173462.txt
  fi
  mv $file ~
done
