#!/bin/bash

cd ~/repos/bash_scripts

sudo date > today.txt
git pull origin master
git add . &> /dev/null
git commit -m "Updated always-green.sh" --quiet
git push origin master --quiet

if [ $? -eq 0 ]
then 
    echo "Pushed new commit to GitHub remote origin."
else
    echo "Failed to push a new commit to GitHub remote origin."
fi

cd -
