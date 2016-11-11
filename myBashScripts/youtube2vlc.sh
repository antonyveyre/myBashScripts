#! /bin/bash
xclip -o | sed -n 's/.*src=[\x27"]\([^\x27"]*\)[\x27"].*/\1\n/p' | xargs cvlc



#sed -n 's/.*src=[\x27"]\([^\x27"]*\)[\x27"].*/\1\n/p'
