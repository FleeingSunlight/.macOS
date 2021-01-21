cd "$(dirname $0)"
mkdir -p ~/.config/nvim
mkdir -p ~/.config/bat
ln -s $(pwd)/.config/bat/config ~/.config/bat/config
ln -s $(pwd)/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s $(pwd)/.zshrc ~/.zshrc
