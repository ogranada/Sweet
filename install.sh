#!/bin/bash

cd ~
echo "Current dir: `pwd`"
git clone https://github.com/ogranada/Sweet .SweetGit
cd .SweetGit
./config.sh
cd ..
rm -Rf .Sweetgit

