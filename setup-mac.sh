#!/bin/bash

# Update and upgrade OS
echo "Updating and upgrading macOS..."
sudo softwareupdate -i -a
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ensure Homebrew is in the PATH
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Update Homebrew
brew update

# Install essential development tools
echo "Installing essential development tools..."
brew install git
brew install nvm
brew install zsh
brew install --cask dotnet-sdk
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask iterm2

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat aliases.zsh >> ~/.oh-my-zsh/custom/aliases.zsh

# Install mas CLI (Mac App Store)
echo "Installing mas CLI..."
brew install mas

# Install Xcode
echo "Installing Xcode..."
mas install 497799835
open "/Applications/Xcode.app"

# Install Apple Developer
echo "Installing Apple Developer"
mas install 640199958
open "/Applications/Developer.app"

echo "Finished installing all tools and applications!"
