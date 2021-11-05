#!/bin/sh
BASEDIR=$(dirname $0)

which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi
 
brew install nvm 

ZSHRC=$HOME/.zshrc 
ZSHENV=$HOME/.zshenv 
VIM=$HOME/.vim

rm $ZSHRC
rm $ZSHENV
rm -rf $VIM

ln -s $BASEDIR/zsh/zshrc $ZSHRC
ln -s $BASEDIR/zsh/zshenv $ZSHENV
ln -s $BASEDIR/vim $VIM

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
