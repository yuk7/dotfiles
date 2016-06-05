#! /bin/sh
DIR=$(cd $(dirname $0); pwd)
cd $DIR
ln -sf $DIR/_git/gitconfig ~/.gitconfig
ln -sf $DIR/_bash/bashrc ~/.bashrc
