rm -r .config

mkdir -p .config/nvim
cp -r ~/.config/nvim/lua .config/nvim/lua
cp -r ~/.config/tmux .config/tmux
cp -r ~/.config/alacritty .config/alacritty
cp ~/.config/nvim/init.lua .config/nvim
