#!/bin/bash

cd ~
echo "Current dir: `pwd`"
if [ -d ".SweetGit" ]; then
  rm -Rf .SweetGit
fi
git clone https://github.com/ogranada/Sweet .SweetGit
cd .SweetGit
./config.sh
cd ~
rm -Rf .Sweetgit

