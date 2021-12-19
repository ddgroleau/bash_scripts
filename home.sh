#!/bin/bash

man-bashrc () (
    echo "Command    Tool"
    echo "-------    -----------"
    echo "vs           Visual Studio"
    echo "ssms         SSMS"
    echo "code<arg>    Open Visual Studio Code to arg directory"
    echo "np           Notepad++"
    echo "snip         Snipping Tool"
    echo "edge         Microsoft Edge"
    echo "spotify      Spotify"
    echo "discord      Discord"
    echo "gpo<args>    Git add, commit, and push to current branch."
    echo "sql          Opens SQLite3"
    echo "db	       Dotnet Build"
    echo "lp	       LinqPad6"
    echo "code<arg>    VS Code to Directory(arg)"
    echo "figma        Figma"
    echo "repo         Navigate to Repos"
    echo "src          Reload bash_profile"
    echo "dockerx      Docker Desktop"
)

dockerx () (
    echo "Starting docker desktop..."
    sudo "/mnt/c/Program Files/Docker/Docker/Docker Desktop.exe" &> /dev/null &
)

src () (
    source ~/.bashrc
)

figma () (
    echo "Opening Figma..."
    sudo "/mnt/c/Users/ddgro/AppData/Local/Figma/Figma.exe" &> /dev/null &
)

alias repo="cd ~/repos"

lp () (
    echo "Opening LinqPad6..."
    sudo "/mnt/c/Program Files/LINQPad6/LINQPad6.exe" &> /dev/null &
)

db () (
    dotnet build
)

vs () (
    echo "Opening Visual Studio..."
    sudo "/mnt/c/Program Files/Microsoft Visual Studio/2022/Community/Common7/IDE/devenv.exe" &> /dev/null &
)

ssms () (
    echo "Opening SQL Server Management Studio..."
    sudo "/mnt/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe" &> /dev/null &
)

np () (
    echo "Opening Notepad++..."
    sudo "/mnt/c/Program Files (x86)/Notepad++/Notepad++.exe" &> /dev/null &
)

snip () (
    echo "Opening Snipping Tool..."
    sudo "/mnt/c/Windows/System32/SnippingTool.exe" &> /dev/null &
)

discord () (
    echo "Opening Discord..."
    sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/Update.exe" &> /dev/null &
    sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/app-1.0.9002/Discord.exe" &> /dev/null &
)

spotify () (
    echo "Opening Spotify..."
    sudo "/mnt/c/Users/ddgro/AppData/Roaming/Spotify/Spotify.exe" &> /dev/null &
)

edge () (
    echo "Opening Microsoft Edge..."
    sudo "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" &> /dev/null &
)

gpo () (
    echo -e "Committing and pushing your changes to current branch...\n"
    git add .
    git commit -m "$1"
    git push origin $(git branch --show-current)
)
