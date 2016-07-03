#!/bin/bash

cd ~
echo "Current dir: `pwd`"
if [ -d ".SweetGit" ]; then
  rm -Rf .SweetGit
fi
git clone https://github.com/ogranada/Sweet .SweetGit
cd .SweetGit
echo "Configuring vim..."
./config.sh
echo "Configuration finished..."
cd ~
rm -Rf .Sweetgit

