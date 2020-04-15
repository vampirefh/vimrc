set nu
set nocompatible
set clipboard=unnamed

colorscheme harlequin 

"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

source ~/.vim_runtime/myvimrcs/vfh.keymap.vim
source ~/.vim_runtime/myvimrcs/vfh.ycmsetup.vim
source ~/.vim_runtime/myvimrcs/vfh.vundle.vim
