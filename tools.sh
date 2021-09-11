#!/bin/bash

my-cmds () (
echo "Command    Tool"
echo "-------    -----------"
echo "vs         Visual Studio"
echo "ssms       SSMS"
echo "vsc        Visual Studio Code"
echo "np         Notepad++"
echo "snip       Snipping Tool"
echo "edge       Microsoft Edge"
echo "wow        World of Warcraft"
echo "spotify    Spotify"
echo "discord    Discord"
echo "gpo<args>  Git add, commit, and push to current branch."
echo "sql        Opens SQLite3"
)

sql () (
echo "Opening SQLite3..."
sqlite3
)

vs () (
sudo "/mnt/c/Program Files (x86)/Microsoft Visual Studio/2019/Community/Common7/IDE/devenv.exe"
)

ssms () (
sudo "/mnt/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe"
)

vsc='"/mnt/c/Users/ddgro/AppData/Local/Programs/Microsoft_VS_Code/Code.exe"'

np () (
sudo "/mnt/c/Program Files (x86)/Notepad++/Notepad++.exe"
)

snip () (
sudo "/mnt/c/Windows/System32/SnippingTool.exe"
)

discord () (
sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/Update.exe"
sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/app-1.0.9002/Discord.exe"
)

wow () (
sudo "/mnt/c/Program Files (x86)/World of Warcraft/World of Warcraft Launcher.exe"
)

spotify () (
sudo "/mnt/c/Users/ddgro/AppData/Roaming/Spotify/Spotify.exe"
)

edge () (
sudo "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
)

gpo () (
git add .
git commit -m "$1"
git push origin $(git branch --show-current)
)
