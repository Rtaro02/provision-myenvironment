if [ $# -ne 2 ]; then
    echo "Set arguments"
    echo "1st arg: git email address"
    echo "2nd arg: git user name"
    exit 1
fi

## Git Settings
EMAIL=$1
NAME=$2
cp .gitconfig ~/.
echo -e "\n[user]\n  email="$EMAIL"\n  name="$NAME"\n" >> ~/.gitconfig

# Vim Settings
cp .vimrc ~/.
## neobundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
## vim color
git clone https://github.com/w0ng/vim-hybrid.git
mkdir -p ~/.vim/colors/
cp vim-hybrid/colors/hybrid.vim ~/.vim/colors
rm -rf vim-hybrid

# tmux settings
## Install tool to use clipboard
uname=`uname`
if [ $uname = "Linux" ]; then
    sudo apt update
    sudo apt install -y xsel
fi

if [ $uname = "Darwin" ]; then
    brew update
    brew install reattach-to-user-namespace
fi
## Copy conf
cp .tmux.conf ~/.
