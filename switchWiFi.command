#!/bin/bash
wifi=$(networksetup -getairportpower en1)
echo $wifi
if [[ $wifi == *"On"* ]]
  then
    networksetup -setairportpower en1 Off
  else
    networksetup -setairportpower en1 On
fi
exit 
