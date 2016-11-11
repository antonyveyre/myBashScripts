#! /bin/bash

echo "repo url :"
read repourl
echo "# myBashScripts" >> README.md
git init
git add .
git commit -m "first commit"
git remote add origin $repourl
git push -u origin master