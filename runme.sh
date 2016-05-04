show_help() {
cat << EOF
Usage: [-hvnt] 
    -h          display this help and exit
    -a          run all 
    -v          perform vim udpate
    -n          perform nvim udpate
    -t          perform tmux udpate
EOF
}

run_all() { run_vim; run_nvim; run_tmux;}

run_vim() {
  echo "linking vim"
  rm -f ~/.vimrc
  rm -rf ~/.vim
  ln -s ${PWD}/vimrc ~/.vimrc 
  ln -s ${PWD}/vim ~/.vim 
}

run_nvim() {
  echo "linking nvim"
  #if [ ! -d ~/.config/ ]; then
  echo ">ensuring '~/.config' exists"
  if [ ! -d ~/.config ]; then
    echo ">'~/.config' doesnt exist; creating folder..."
    mkdir ~/.config
  fi
  rm -rf ~/.config/nvim
  ln -s ${PWD}/nvim ~/.config/nvim
  ln -s ${PWD}/vimrc ~/.config/nvim/init.vim
}

run_tmux() {
  echo "linking tmux.conf"
  rm -f ~/.tmux.conf
  ln -s ${PWD}/tmux.conf ~/.tmux.conf 

  echo ">setup vim with pluginstall"
  vim +PlugClean +qall
  vim +PlugInstall +qall

  echo ">setup tmux with tmux-plugins"
  rm -rf ~/.tmux/plugins/tpm
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  tmux source ~/.tmux.conf
}


while getopts "havnt" opt; do
  case "$opt" in
    a) run_all; exit 0;;
    h) show_help; exit 0;;
    v) run_vim;;
    n) run_nvim;;  
    t) run_tmux;;
  esac
done

if [ $OPTIND -eq 1 ]; then show_help; fi

