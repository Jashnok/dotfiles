#!/usr/bin/env bash

symlink() {
    local source="$1" destination="$2"
    [ ! -e "$destination" ] && ln -s "$PWD/$source" "$destination"
    [ ! -L "$destination" ] && echo "File at path "$destination" already exists" 1>&2
}

home() {
    local path="$1"
    symlink "$path" "$HOME/$path"
}

# install xcode-select and homebrew 
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew cask install iterm2
# update iterm2 settings
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
zsh --version
brew install git
brew install vim

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

home ".dotfiles"
home ".gitconfig"
home ".zshrc"
home ".vimrc"

brew install bash
brew install wget
brew install htop
brew install neofetch
brew install tree
brew install lnav

brew cask install visual-studio-code
brew cask install google-chrome
brew cask install homebrew/cask-fonts/font-jetbrains-mono
brew cask install adoptopenjdk8
brew cask install alfred
brew cask install avibrazil-rdm
brew cask install bartender
brew cask install discord-canary
brew cask install intel-power-gadget
brew cask install kite
brew cask install minecraft
brew cask install openconnect-gui
brew cask install pixel-picker
brew cask install spectacle
brew cask install steam
brew cask install teamspeak-client
brew cask install transmit
brew cask install zoomus
brew cask install 1password
brew cask install appcleaner
brew cask install docker
brew cask install ferdi
brew cask install jetbrains-toolbox
brew cask install krita
brew cask install homebrew/cask-drivers/logitech-options
brew cask install microsoft-office
brew cask install scroll-reverser
brew cask install spotify
brew cask install vlc

# Link Vscode settings
symlink ".vscode/Library/Application\ Support/Code/User" "$HOME/Library/Application\ Support/Code/User"

while read line; do code --install-extension "$line";done < ./vscode-extensions.txt

# workspace
mkdir ~/workspace

# nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
npm install -g lite-server eslint