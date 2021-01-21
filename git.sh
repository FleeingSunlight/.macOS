cd "$(dirname $0)"
brew install git
mkdir -p ~/.config/git
ln -s $(pwd)/.config/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/.config/git/.gitconfig-fleeingsunlight ~/.config/git/.gitconfig-fleeingsunlight
ln -s $(pwd)/.config/git/.gitignore-macOS ~/.config/git/.gitignore-macOS
zsh
