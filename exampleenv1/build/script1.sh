#!/bin/bash

echo "updating system..."
sudo apt update && sudo apt upgrade -yy

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

echo "installing curl git zsh fonts-powerline terraform..."
sudo apt install curl git zsh fonts-powerline terraform -y






sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


sed -i 's/_THEME=.*/_THEME=\"powerlevel10k\/powerlevel10k\"/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

sed -i 's/plugins=.*/plugins=(emoji git web-search sudo history zsh_reload docker terraform kubectl dotnet zsh-syntax-highlighting zsh-autosuggestions zsh-completions)/g' ~/.zshrc


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
tput setaf 1; echo "IMPORTANT :"  
echo 'Get Firacode nerd font at https://www.nerdfonts.com'
echo 'Get Firacode nerd font at https://www.nerdfonts.com'
echo 'For vscode add this line into settings.json :    "terminal.integrated.fontFamily": "FiraCode Nerd Font Mono",'
echo 'Execute command: p10k configure'