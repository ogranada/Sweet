#!/bin/bash

cd ~
echo "Current dir: `pwd`"
if [ -d ".SweetGit" ]; then
  rm -Rf .SweetGit
fi
git clone https://github.com/ogranada/Sweet .SweetGit
cd .SweetGit
echo "Configure vim..."
./config.sh
echo "Done..."
cd ~
rm -Rf .Sweetgit

