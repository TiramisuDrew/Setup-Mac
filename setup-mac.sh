#!/bin/bash

# Update and upgrade OS
echo "Updating and upgrading macOS..."
sudo softwareupdate -i -a
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

brew update

# Install essential development tools
echo "Installing essential development tools..."
brew install git
brew install nvm
brew install zsh
brew install mas
brew install nvm

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Install .NET Core SDK
echo "Installing .NET Core SDK"
brew install --cask dotnet-sdk

# Install Visual Studio Code
echo "Installing Visual Studio Code"
brew install --cask visual-studio-code

# Install Obsidian
echo "Installing Obsidian"
brew install --cask obsidian

# Install Iterm2
echo "Installing Iterm2"
brew install --cask iterm2
brew install --cask github

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat aliases.zsh >> ~/.oh-my-zsh/custom/aliases.zsh

# Install Xcode
echo "Installing Xcode..."
mas install 497799835
open "/Applications/Xcode.app"

# Install Apple Developer
echo "Installing Apple Developer"
mas install 640199958
open "/Applications/Developer.app"

echo "Finished installing all tools and applications!"
