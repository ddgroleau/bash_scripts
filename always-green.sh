#!/bin/bash

cd ~/repos/bash_scripts

uuidgen > uuid.txt
git pull origin master --force
git commit -am "Updated uuid.txt" --quiet
git push origin master --quiet --force

if [ $? -eq 0 ]
then 
    echo "Pushed new commit to GitHub remote origin."
else
    echo "Failed to push a new commit to GitHub remote origin."
fi

cd -
