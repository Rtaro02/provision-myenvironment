# gitconfig

if [ $# -ne 2 ]; then
    echo "Set arguments"
    echo "1st arg: git email address"
    echo "2nd arg: git user name"
    exit 1
fi

EMAIL=$1
NAME=$2

cp .gitconfig ~/.

echo -e "\n[user]\n  email="$EMAIL"\n  name="$NAME"\n" >> ~/.gitconfig

# vim
cp .vimrc ~/.
cp .tmux.conf ~/.

git clone https://github.com/w0ng/vim-hybrid.git
mkdir -p ~/.vim/colors/
cp vim-hybrid/colors/hybrid.vim ~/.vim/colors
rm -rf vim-hybrid
