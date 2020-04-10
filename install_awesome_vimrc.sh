#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/myvimrcs/vfh.vim
catch
endtry' > ~/.vimrc

echo 'set -g default-command "reattach-to-user-namespace -l zsh"
' > ~/.tmux.conf

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
echo "For complete use, the Vundle installation process must be done manually."
echo "  * git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
echo "Finally, you need to build YouCompleteMe. (see https://github.com/ycm-core/YouCompleteMe)"

