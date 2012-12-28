#!/bin/bash

# Setup git bash completion script
source ./git-completion.bash

# Copy vimrc file to ~/.vimrc
if [ -f ~/.vimrc  ];
then
  date_suffix=$(date +"%Y%m%d%H%M")
  mv ~/.vimrc ~/.vimrc.$date_suffix
fi
cp ./vimrc ~/.vimrc

# Copy irbc to ~/.irbc
if [ -f ~/.irbc  ];
then
  date_suffix=$(date +"%Y%m%d%H%M")
  mv ~/.irbc ~/.irbc.$date_suffix
fi
cp ./irbc ~/.irbc

# Copy gbranch to /usr/bin
sudo cp ./gbranch /usr/bin/gbranch
