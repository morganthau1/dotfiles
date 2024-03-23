DotFiles Assignment
----------------------------
For this assignment I used the following sources. Cloning this repository and chmod-ing <br>
the script will allow you to install my preferred dotfiles and the pre-requisite programs. <br>
This script utilizes the customized bashrc, vimrc, gitfiles, and ssh file/folder content.

This Script:
- Verifies if the script is invoked with sudo
- Retrieves the invoking user
- Defines the user's home directory
- Checks for the presence of apt package manager
- Installs necessary packages (dnsutils, nmap, awscli, wget, git)
- Installs Vundle for Vim
- Downloads and installs Miniconda
- Defines variables for paths
- Copies .gitconfig and .bashrc to repository if they exist
- Creates symbolic links to ~/.gitconfig and ~/.bashrc
- Checks for existence of ~/.ssh folder, creates if absent
- Copies ~/.ssh/authorized_keys to repository if it exists
- Creates symbolic link to ~/.ssh/authorized_keys
- Copies vimrc to repository
- Creates symbolic link to ~/.vimrc
- Reloads .bashrc
- Exits the script

**Sources:**<br>
[OpenAI ChatGPT](chat.openai.com) <br>
[VimAwesome NerdTree Plugin](https://vimawesome.com/plugin/nerdtree-red) <br>
[VimAwesome JellyBeans Plugin](https://vimawesome.com/plugin/jellybeans-vim) <br>

[Script Proof](https://raidermailwright-my.sharepoint.com/:v:/g/personal/newhouse_11_wright_edu/EbJqWmqjy05IhbZR4LxnYqABjuB5vRzHdgjBkd5m-gI3LQ?e=NupJFm&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)
