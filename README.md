# VIM dotfiles

## Installation

```bash
# Clone repo
git clone https://github.com/zevs4231/vim.git /var/local/vim
#git clone git@github.com:zevs4231/vim.git /var/local/vim

# Delete default global vimrc config (as root or sudo)
sudo rm -rf /etc/vim*

# Create symlink
sudo ln -s /var/local/vim /etc/vim

# For Arch Linux
sudo ln -s /var/local/vim/vimrc /etc/vimrc

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git /etc/vim/bundle/Vundle.vim
vim +PluginInstall +qall

```
