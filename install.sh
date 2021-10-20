#!/bin/sh
BASEDIR=$(dirname $0)

ZSHRC=$HOME/.zshrc 
ZSHENV=$HOME/.zshenv 

rm $ZSHRC
rm $ZSHENV

ln -s $BASEDIR/zsh/zshrc $ZSHRC
ln -s $BASEDIR/zsh/zshenv $ZSHENV