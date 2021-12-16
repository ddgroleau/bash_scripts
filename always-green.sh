cd ~/repos/bash_scripts
sudo date > today.txt
git add . &> /dev/null
git commit -m "Updated always-green.sh" --quiet
git push origin master --quiet
cd -

echo "Pushed new commit to GitHub remote origin."
