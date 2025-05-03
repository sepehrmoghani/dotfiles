#!/bin/bash

echo "==== DOTFILES SETUP STARTED ===="

# Install Homebrew if missing
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

# Install Git if missing
if ! command -v git &> /dev/null
then
    echo "Installing Git..."
    brew install git
else
    echo "Git already installed."
fi

# Install Python3 if missing
if ! command -v python3 &> /dev/null
then
    echo "Installing Python3..."
    brew install python
else
    echo "Python3 already installed."
fi

# Git global config
git config --global user.name "Sepehr Moghani"
git config --global user.email "sepehr@example.com"

# Symlink dotfiles (optional, can skip if you manually copy)
ln -sf "$PWD/.gitconfig" ~/.gitconfig
ln -sf "$PWD/.zshrc" ~/.zshrc

echo "==== SETUP COMPLETED ===="
echo "Restart your terminal or run 'source ~/.zshrc' to apply changes."
