#!/bin/bash

## """ Updates itself (especially the next bash script) 
##       then passes entered arguments to the next bash script """.

## requirements: 
##   1. git


## keep log as a variable
export fst="log : "


## cd to current dir 

# echo -e "$fst cd to self dir: $0\n"
cd $(dirname $0)

## update current dir from GitHub

# echo -e "$fst Self update (runner bash script)\n"

git fetch --all
git reset --hard origin/main -quiet


export cfn = $(echo "$1" | sed -E "s/.+\/([^\/]+)$/\1/")

echo $cfn

# bash m1.sh $@

# if [ $? -eq 0 ]; then
#    echo OK
#    echo "" | mail -s "OK - $hostname - $cfn" $MAILTO

# else
#    echo FAIL
#    echo "" | mail -s "FAIL - $hostname - $cfn" $MAILTO

# fi

# echo -e "\n\n\t\t\t***   FINISHED   ***\n\n"
