#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew update && brew upgrade && brew install neovim ripgrep tmux git tig tmux-mem-cpu-load

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/iburgos72/.dotfiles.git ~/Documents/.dotfiles

cp -r ~/Documents/.dotfiles/nvim ~/.config
mkdir ~/.config/tmux/
cp ~/Documents/.dotfiles/.tmux.conf ~/
cp ~/Documents/.dotfiles/.p10k.zsh ~/

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

nvm install node

# Once installed run
# $ nvim ~/.config/nvim/lua/navi/packer
#
# and run
# - :so
# - :PackerInstall
# - :PackerSync
# - :lua Colors()
#
# To download and install
# - Go 
# - Iterm
# - Postman
# - docker
# - DBeaver
# - Chrome
# - 1Password
#
# - configure iterm to have transparency
# - toggle off "System Settings > Desktop & Dock > Close windows when quitting an application"
# - un-check "System Settings > Keyboards > Keyboard Shortcuts (button) > Input sources > disable the options"
