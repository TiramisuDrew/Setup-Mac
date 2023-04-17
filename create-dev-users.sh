#!/bin/bash

GROUP_NAME="homebrew"
GROUP_REALNAME="Homebrew Group"

# Create the homebrew group if it doesn't exist
if ! dscl . -read /Groups/$GROUP_NAME &>/dev/null; then
  sudo dscl . -create /Groups/$GROUP_NAME
  sudo dscl . -create /Groups/$GROUP_NAME RealName "$GROUP_REALNAME"
fi

# Function to add a new user and add them to the homebrew group
add_user_to_group() {
  local username=$1
  local group=$2

  sudo sysadminctl -addUser $username
  sudo dscl . -append /Groups/$group GroupMembership $username
}

# Interactive loop for adding new users
while true; do
  echo "Choose an option:"
  echo "1. Add a new user"
  echo "2. Done"
  read -p "Enter your choice (1 or 2): " choice

  if [[ $choice -eq 1 ]]; then
    read -p "Enter the username for the new user: " new_username
    add_user_to_group $new_username $GROUP_NAME
    echo "User '$new_username' added to group '$GROUP_NAME'."
  elif [[ $choice -eq 2 ]]; then
    echo "Exiting."
    break
  else
    echo "Invalid choice. Please enter 1 or 2."
  fi
done