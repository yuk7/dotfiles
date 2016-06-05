#! /bin/sh
DIR=$(cd $(dirname $0); pwd)
cd $DIR
ln -sf $DIR/bashrc ~/.bashrc
