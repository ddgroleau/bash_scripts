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
echo "db	 Dotnet Build"
echo "lp	 LinqPad6"
)

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
"/c/Program Files (x86)/Microsoft Visual Studio/2019/Community/Common7/IDE/devenv.exe"
)

ssms () (
 "/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe"
)

vsc='"/c/Users/ddgro/AppData/Local/Programs/Microsoft_VS_Code/Code.exe"'

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

wow () (
 "/c/Program Files (x86)/World of Warcraft/World of Warcraft Launcher.exe"
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
