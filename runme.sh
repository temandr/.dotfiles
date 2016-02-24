echo "linking vimrc"
rm -f ~/.vimrc
rm -rf ~/.vim
ln -s ${PWD}/vimrc ~/.vimrc 
ln -s ${PWD}/vim ~/.vim 

echo "linking tmux.conf"
rm -f ~/.tmux.conf
ln -s ${PWD}/tmux.conf ~/.tmux.conf 

echo "Setup vim with pluginstall"
vim +PlugClean +qall
vim +PlugInstall +qall


