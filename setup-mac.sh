#!/bin/bash

# Update and upgrade macOS
echo "Updating and upgrading macOS..."
sudo softwareupdate -i -a
xcode-select --install

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Configure aliases
read -p "Enter the default username for Homebrew: " default_username
sed "s/USERNAME_PLACEHOLDER/$default_username/" aliases.zsh > aliases_temp.zsh
mv aliases_temp.zsh ~/.oh-my-zsh/custom/aliases.zsh
source ~/.oh-my-zsh/custom/aliases.zsh

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure Homebrew environment
echo "Configuring Homebrew environment..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

# Install essential development tools
echo "Installing essential development tools..."
brew install git
brew install nvm
brew install zsh
brew install mas
brew install angular-cli
brew install nvm

# Configure nvm environment
echo "Configuring nvm environment..."
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Install development applications
echo "Installing development applications..."
brew install --cask dotnet-sdk
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask github
brew install --cask insomnia

# Install productivity applications
echo "Installing productivity applications..."
brew install --cask obsidian

# Install development tools from Mac App Store
echo "Installing development tools from Mac App Store..."
mas install 497799835  # Xcode
open "/Applications/Xcode.app"
mas install 640199958  # Apple Developer
open "/Applications/Developer.app"

echo "Finished installing all tools and applications!"
