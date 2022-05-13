#!/bin/sh
BASEDIR=$(dirname $0)

which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi
 
brew install bat
brew install tldr
brew install exa

ZSHRC=$HOME/.zshrc 
ZSHENV=$HOME/.zshenv 
VIM=$HOME/.vim
TMUX=$HOME/.tmux.config

rm $ZSHRC
rm $ZSHENV
rm -rf $VIM
rm $TMUX

ln -s $BASEDIR/zsh/zshrc $ZSHRC
ln -s $BASEDIR/zsh/zshenv $ZSHENV
ln -s $BASEDIR/vim $VIM
ln -s $BASEDIR/tmux/.tmux.config $TMUX

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
