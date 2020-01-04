# dotfiles

Add the terminal app (e.g. Terminal.app, iTerm2)
System Preferences -> Privacy -> Full Disk Access

- brew.sh

- devenv.sh

- Setup github properly

# Dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Caps Lock remapping

System Preferences > Keyboard > Modifier Keys... > Caps Lock Key: Control
