#!/bin/bash

man-bashrc () (
    echo "Command           Tool"
    echo "-------------     -----------"
    echo "ff (-o (arg))     Firefox (open to URL arg)"
    echo "gpo (arg)         Git Add, Commit, Push (Commit Message)"
    echo "spotify           Spotify"
    echo "code (arg)        VS Code (Directory)"
    echo "rider             Open Rider IDE"
    echo "intellij          Open IntelliJ IDE"
)

spotifyx () (
    echo -e "\nOpening Spotify...\n"
    spotify &> /dev/null &
)

gpo () (
    echo -e "\nCommitting and pushing your changes to current branch...\n"
    git commit -am "$1"
    git push origin $(git branch --show-current)
)

alias ff="firefox &> /dev/null &"

alias src="source ~/.bashrc"

# Rider IDE
export PATH="/usr/bin/rider/bin":$PATH;
alias rider="rider.sh & > /dev/null";

#IntelliJ IDE
export PATH="/usr/bin/intellij/bin":$PATH;
alias intellij="idea.sh & > /dev/null";

#Add 'dotnet' to PATH
export PATH="~/.dotnet":$PATH;
