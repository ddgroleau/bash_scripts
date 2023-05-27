#!/bin/bash

cd ~/repos/bash_scripts

sudo "always-green " >> always-green.txt
git pull origin master --force
git commit -am "Updated always-green.txt" --quiet
git push origin master --quiet --force

if [ $? -eq 0 ]
then 
    echo "Pushed new commit to GitHub remote origin."
else
    echo "Failed to push a new commit to GitHub remote origin."
fi

cd -
