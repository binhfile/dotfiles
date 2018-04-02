## Develop

```bash
apt install -y gcc g++ make cmake autoconf
apt install -y python3 python3-dev zsh
```

## Install Powerline font

```bash
cd Documents
git clone https://github.com/powerline/fonts
cd fonts/
./install.sh
```
## Gnome Terminal Theme

```bash
cd Documents
git clone https://github.com/arcticicestudio/nord-gnome-terminal
cd nord-gnome-terminal
./nord.sh
# reboot
# change "Profile when lauching new terminal" to "Nord"
" change Font to "Source Code Pro" 12px
```

## ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# ~/.zshrc
# ZSH_THEME="powerlevel9k/powerlevel9k"
```
## Vim

```bash
# for vim 8.0
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim
#  :PlugUpdate
```

## i3

```bash
# nautilus for i3
gsettings set org.gnome.desktop.background show-desktop-icons false
```
