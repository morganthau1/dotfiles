#!/bin/bash

# Check if the script is invoked with sudo
if [ "$(id -u)" != 0 ]; then
    echo "Please run this script with sudo."
    exit 1
fi

# Get the invoking user
ME=$SUDO_USER
echo $SUDO_USER

# Define the user's home directory
USER_HOME=$(eval echo ~$ME)

# Check for apt package manager
if ! command -v apt &> /dev/null; then
    echo "apt package manager not found. This script is for Ubuntu Linux."
    exit 1
fi

# Install required packages
apt update
apt install -y dnsutils nmap awscli wget git

# Install Vundle for Vim
git clone https://github.com/VundleVim/Vundle.vim.git "$USER_HOME/.vim/bundle/Vundle.vim"

# Download and install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O "$USER_HOME/miniconda.sh"
bash "$USER_HOME/miniconda.sh" -b -p "$USER_HOME/miniconda"

# Define variables for paths
DOTFILES_DIR="$USER_HOME/dotfiles"
GITFILES_DIR="$DOTFILES_DIR/gitfiles"
SSH_DIR="$DOTFILES_DIR/ssh"

# Copy .gitconfig and .bashrc to repository if they exist
if [ -e .gitconfig ]; then
    cp .gitconfig "$GITFILES_DIR/.gitconfig"
fi

if [ -e .bashrc ]; then
    cp .bashrc "$DOTFILES_DIR/bashrc"
fi

# Create symbolic links to ~/.gitconfig and ~/.bashrc
if [ -e "$GITFILES_DIR/.gitconfig" ]; then
    ln -sf "$GITFILES_DIR/.gitconfig" "$USER_HOME/.gitconfig"
fi

if [ -e "$DOTFILES_DIR/bashrc" ]; then
    ln -sf "$DOTFILES_DIR/bashrc" "$USER_HOME/.bashrc"
fi

# Check if ~/.ssh folder exists, if not create it
if [ ! -d "$USER_HOME/.ssh" ]; then
    mkdir "$USER_HOME/.ssh"
fi

# Copy ~/.ssh/authorized_keys to repository if it exists
if [ -e "$SSH_DIR/authorized_keys" ]; then
    cp "$SSH_DIR/authorized_keys" "$USER_HOME/.ssh/authorized_keys"
fi

# Create symbolic link to ~/.ssh/authorized_keys
if [ -e "$SSH_DIR/authorized_keys" ]; then
    ln -sf "$SSH_DIR/authorized_keys" "$USER_HOME/.ssh/authorized_keys"
fi

# Copy vimrc to repository
cp vimrc "$DOTFILES_DIR/vimrc"

# Create symbolic link to ~/.vimrc
ln -sf "$DOTFILES_DIR/vimrc" "$USER_HOME/.vimrc"

# Reload .bashrc
source "$USER_HOME/.bashrc"

# Exit script
exit 0

