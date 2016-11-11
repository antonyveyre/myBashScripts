#! /bin/bash
OLDIFS=$IFS
array=($(ls *\ *))
for fi in ${array[@]};
do
    mv $fi ${fi// /_}; # ${fi/ /_} replace only first space
done
IFS=$OLDIFS
