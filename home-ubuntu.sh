
#!/bin/bash

my-cmds () (
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
echo "$repo        Navigate to Repos"
echo "src          Reload bash_profile"
echo "docker-x     Docker Desktop"
)

docker-x () (
echo "Starting docker desktop..."
sudo "/mnt/c/Program Files/Docker/Docker/Docker Desktop.exe" & > /dev/null
)

src () (
source ~/.bash_profile
)

figma () (
echo "Opening Figma..."
"/mnt/c/Users/ddgro/AppData/Local/Figma/Figma.exe" & > /dev/null
)

repo="cd ~/repos"

lp () (
echo "Opening LinqPad6..."
"/mnt/c/Program Files/LINQPad6/LINQPad6.exe" & > /dev/null
)

db () (
dotnet build
)

sql () (
echo "Opening SQLite3..."
sqlite3
)

vs () (
sudo "/mnt/c/Program Files/Microsoft Visual Studio/2022/Community/Common7/IDE/devenv.exe" & > /dev/null
)

ssms () (
sudo "/mnt/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe" & > /dev/null
)

np () (
sudo "/mnt/c/Program Files (x86)/Notepad++/Notepad++.exe" & > /dev/null
)

snip () (
sudo "/mnt/c/Windows/System32/SnippingTool.exe" & > /dev/null
)

discord () (
sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/Update.exe" & > /dev/null
sudo "/mnt/c/Users/ddgro/AppData/Local/Discord/app-1.0.9002/Discord.exe" & > /dev/null
)

spotify () (
sudo "/mnt/c/Users/ddgro/AppData/Roaming/Spotify/Spotify.exe" & > /dev/null
)

edge () (
sudo "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" & > /dev/null
)

gpo () (
git add .
git commit -m "$1"
git push origin $(git branch --show-current)
)
