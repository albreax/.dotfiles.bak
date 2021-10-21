#!/bin/sh
BASEDIR=$(dirname $0)

ZSHRC=$HOME/.zshrc 
ZSHENV=$HOME/.zshenv 
VIM=$HOME/.vim

rm $ZSHRC
rm $ZSHENV
rm -rf $VIM

ln -s $BASEDIR/zsh/zshrc $ZSHRC
ln -s $BASEDIR/zsh/zshenv $ZSHENV
ln -s $BASEDIR/vim $VIM