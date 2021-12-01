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
echo "spotify    Spotify"
echo "discord    Discord"
echo "gpo<args>  Git add, commit, and push to current branch."
echo "sql        Opens SQLite3"
echo "db         Dotnet Build"
echo "lp         LinqPad6"
echo "code<arg>  VS Code to Directory(arg)"
echo "figma      Figma"
echo "$repo      Navigate to Repos"
echo "src        Reload .bashrc"
)

src () (
source ~/.bashrc
)

figma () (
echo "Opening Figma..."
"/c/Users/ddgro/AppData/Local/Figma/Figma.exe"
)

repo="cd /c/users/ddgro/source/repos"

lp () (
"/c/Program Files/LINQPad6/LINQPad6.exe"
)

db () (
dotnet build
)

sql () (
echo "Opening SQLite3..."
sqlite3
)
vs () (
sudo "/c/Program Files/Microsoft Visual Studio/2022/Community/Common7/IDE/devenv.exe"
)

ssms () (
sudo "/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe"
)

vsc () (
"/c/Users/ddgro/AppData/Local/Programs/Microsoft VS Code/Code.exe"
)

np () (
"/c/Program Files (x86)/Notepad++/Notepad++.exe"
)

snip () (
"/c/Windows/System32/SnippingTool.exe"
)

discord () (
"/c/Users/ddgro/AppData/Local/Discord/Update.exe"
"/c/Users/ddgro/AppData/Local/Discord/app-1.0.9002/Discord.exe"
)

spotify () (
"/c/Users/ddgro/AppData/Roaming/Spotify/Spotify.exe"
)

edge () (
"/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
)

gpo () (
git add .
git commit -m "$1"
git push origin $(git branch --show-current)
)
