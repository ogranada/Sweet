#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET=~/.sweetvim

if [ ! -d $TARGET ]; then
    echo "Creating target folder...";
    mkdir $TARGET;
fi

echo "Copy files..."
cp vimrc ~/.vimrc
cp $DIR/sweet_config.vim $TARGET
cp $DIR/sweet_features.vim $TARGET
cp $DIR/sweet_bundles.vim $TARGET
cp $DIR/sweet_kbdmaps.vim $TARGET
cp $DIR/sweet_user_bundles.vim ~/.sweet_user_bundles.vim
cp $DIR/sweet_user_kbdmaps.vim ~/.sweet_user_kbdmaps.vim
echo "Files copied..."
echo "Done..."


