#!/bin/bash

echo "------- INSTALLING HOMEBREW -------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

echo "------- INSTALLING BREW PACKAGES neovim ripgrep tmux git tig tmux-mem-cpu-load yarn -------"
brew update && brew upgrade && brew install neovim ripgrep tmux git tig tmux-mem-cpu-load yarn

echo "------- INSTALLING TPM (Tmux Plugin Manager) -------"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "------- DOWNLOADING .DOTFILES -------"
git clone https://github.com/iburgos72/.dotfiles.git ~/Documents/.dotfiles

echo "------- MOVING .DOTFILES -------"
cp -r ~/Documents/.dotfiles/nvim ~/.config
mkdir ~/.config/tmux/
cp ~/Documents/.dotfiles/.tmux.conf ~/
cp ~/Documents/.dotfiles/.p10k.zsh ~/
cp ~/Documents/.dotfiles/.zshrc ~/
cp ~/Documents/.dotfiles/.zprofile ~/

echo "------- INSTALLING PACKER.NVIM -------"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "------- INSTALLING NVM -------"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "------- INSTALLING NODE -------"
nvm install node

echo "------- INSTALLING OH MY ZSH -------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "------- INSTALLING POWERLEVEL10K -------"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# To download and install
# - Go 
# - Iterm2
# - Insomnia
# - Docker
# - DBeaver
# - Chrome
# - 1Password
#
# Verify node and go are installed or Mason won't install the language servers
#
# Once installed run
# $ nvim ~/.config/nvim/lua/navi/packer
#
# and run
# - :so
# - :PackerInstall
# - :PackerSync
# - :lua Colors()
#
# - configure iterm to have transparency and disable the keyboard shortcuts ^space in keyboard setings
# - toggle off "System Settings > Desktop & Dock > Close windows when quitting an application"
# - un-check "System Settings > Keyboards > Keyboard Shortcuts (button) > Input sources > disable the options"
# - only if you install java, uncomment the line in .zprofiles
