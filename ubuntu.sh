#!/bin/bash

man-bashrc () (
    echo "Command           Tool"
    echo "-------------     -----------"
    echo "ff (-o (arg))     Firefox (open to URL arg)"
    echo "gpo(arg)          Git Add, Commit, Push (Commit Message)"
    echo "spotify           Spotify"
    echo "code(arg)         VS Code (Directory)"
    echo "xampp(arg)        XAMPP (Start/Stop)"
)

ff () (
    if [[ $1=="-o" && "$2" ]] 
    then
        echo -e "\nOpening Firefox to page $2...\n"
        firefox "$2" &> /dev/null &
    elif [[ -n "$1" && -z "$2" ]]
    then
        echo -e "\nThere is an error in your -o argument. Try again.\n"
    else
        echo -e "\nOpening Firefox...\n"
        firefox &> /dev/null &
    fi
)

spotifyx () (
    echo -e "\nOpening Spotify...\n"
    spotify &> /dev/null &
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

xampp () (
   sudo /opt/lampp/lampp $1 
)

mysqlx () (
    sudo /bin/mysql-workbench & > /dev/null
)
