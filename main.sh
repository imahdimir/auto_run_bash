#!/bin/bash

# """ Updates itself (especially the next bash script) 
#       then passes entered arguments to the next bash script """.
# 
# requirements: 
#   1. git

export fst="\n  LOG:"

echo -e "$fst cd to self dir\n"
cd $(dirname $0)

echo -e "$fst Self Update\n"
git fetch --all
git reset --hard origin/main

bash m1.sh $@
if [ $? -eq 0 ]; then
   echo OK
else
   echo FAIL
fi

echo -e "\n\n\t\t\t***   FINISHED   ***\n\n"