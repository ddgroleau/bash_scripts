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
    sudo "/mnt/c/Program Files/Firefox Developer Edition/firefox.exe" &> /dev/null &
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
