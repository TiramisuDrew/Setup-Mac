# Setup-Mac
Setup-Mac is a collection of scripts that automate the installation of essential developer tools and applications on a Mac, making it easier to get started with development work after a fresh installation of macOS. The scripts are intended to be executed after a factory reset or fresh installation of macOS.

## Scripts
- **setup-mac.sh**: Automates the installation of essential developer tools and applications.
- **create_dev_users.sh**: Creates the 'homebrew' group and allows you to interactively add new users with membership in the 'homebrew' group.

## Requirements
Before running the Setup-Mac scripts, you will need to ensure that your Mac has the following prerequisites:

- A fresh installation of macOS
- A stable internet connection


## Usage
To use the Setup-Mac scripts, simply clone this repository to your Mac and navigate to the root of the repository in Terminal.

### setup-mac.sh
Run the following command:

```bash
./setup-mac.sh
```

The script will prompt you for your admin password and will then proceed to update and upgrade your macOS installation, install Homebrew, and then install a number of essential development tools and applications, including Git, nvm, zsh, Visual Studio Code, Obsidian, Iterm2, .NET Core SDK, and more.

Once the script has finished executing, you will have a fully functional development environment on your Mac, ready to use for your projects.

### create_dev_users.sh
Run the following command:

```bash
./create_dev_users.sh
```

The script will create a 'homebrew' group (if it doesn't already exist) and then enter an interactive loop to add new users. The user can choose to add a new user or exit the loop by selecting the appropriate option.

## Contributing
If you have any suggestions or improvements for the Setup-Mac scripts, feel free to create a pull request or open an issue in the repository. I welcome any feedback or contributions!

## License
This repository is licensed under the MIT License. See LICENSE for more information.