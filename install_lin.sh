#! /bin/sh
DIR=$(cd $(dirname $0); pwd)
cd $DIR
ln -sf $DIR/gitconfig ~/.gitconfig
ln -sf $DIR/bashrc ~/.bashrc
