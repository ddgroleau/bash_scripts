
#!/bin/bash

my-cmds () (
echo "Command    Tool"
echo "-------    -------------------------"
echo "vs         Visual Studio"
echo "ssms       SSMS"
echo "vsc        Visual Studio Code"
echo "np         Notepad++"
echo "snip       Snipping Tool"
echo "edge       Microsoft Edge"
echo "rdc        Remote Desktop Connection"
echo "fz         FileZilla"
echo "kp         KeePass2"
echo "zoom       Zoom"
echo "teams      Teams"
echo "tkt<arg>   Open Ticket Directory"
echo "email      Outlook"
echo "xl         Velocity.xlsx File"
echo "mysql      MySQL Workbench"
echo "gpo<args>  Git Add, Commit & Push to Current Branch."
echo "lp	 LinqPad6"
echo "wamp       WAMP"
)

wamp () (
"/c/Users/groleaud/source/repos/Workspaces/WholeHealthLiving/wampmanager.exe"
)

lp () (
"/c/Program Files/LINQPad6/LINQPad6.exe"
)

gpo () (
git add .
git commit -m "$1"
git push origin $(git branch --show-current)
)

edge () (
"/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
)

np () (
"/c/Program Files (x86)/Notepad++/Notepad++.exe"
)

snip () (
"/c/Windows/System32/SnippingTool.exe"
)

vsc () (
"/c/Users/groleaud/AppData/Local/Programs/Microsoft VS Code/Code.exe"
)

vs () (
"/c/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/devenv.exe"
)

ssms () (
"/c/Program Files (x86)/Microsoft SQL Server Management Studio 18/Common7/IDE/Ssms.exe"
)

rdc () (
"/c/Windows/System32/mstsc.exe"
)

fz () (
"/c/Program Files/FileZilla FTP Client/filezilla.exe"
)

kp () (
"/c/Program Files (x86)/KeePass Password Safe 2/KeePass.exe"
)

zoom () (
"/c/Program Files (x86)/Zoom/bin/Zoom.exe"
)

teams () (
"/c/Users/groleaud/AppData/Local/Microsoft/Teams/Update.exe"
"/c/Users/groleaud/AppData/Local/Microsoft/Teams/current/Teams.exe"
)

tkt () (

    tktnum=$1
    directory="/c/users/groleaud/onedrive - tivity health/documents/tickets/$1"

    if [[ -d "$directory" ]] 
    then
        explorer.exe `wslpath -w "$directory"`
    else
        mkdir "$directory"
        explorer.exe `wslpath -w "$directory"`
    fi
)

email () (
"/c/Program Files/Microsoft Office/root/Office16/OUTLOOK.EXE"
)

xl () (
explorer.exe "/c/users/groleaud/OneDrive - Tivity Health/Documents/dev/Velocity.xlsx"
)

mysql () (
"/c/Program Files/MySQL/MySQL Workbench 8.0/MySQLWorkbench.exe"
)

afk () (
echo "Caffeine is running... "
"/c/Program Files/Caffeine/caffeine64.exe"
echo "Caffeine stopped."
)

