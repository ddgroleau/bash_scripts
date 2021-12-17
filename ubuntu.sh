#!/bin/bash

my-cmds () (
echo "Command    Tool"
echo "-------    -----------"
echo "ff         Firefox"
echo "gpo(arg)   Git Add, Commit, Push (Commit Message)"
echo "spotify    Spotify"
echo "code(arg)  VS Code (Directory)"
)

ff () (
    echo -e "\nOpening Firefox...\n"
    firefox & > /dev/null
)

spotify () (
    echo -e "\nOpening Spotify...\n"
    /bin/spotify 2>&1 &
)

gpo () (
    echo -e "\nCommitting and pushing your changes to current branch...\n"
    git add .
    git commit -m "$1"
    git push origin $(git branch --show-current)
    )

src () (
    source ~/.bashrc
)