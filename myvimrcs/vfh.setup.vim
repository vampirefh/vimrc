let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

autocmd FileType cpp let b:dispatch = 'clang++ % -o %<.out && ./%<.out'
autocmd FileType cpp nnoremap <buffer> <F7> :w<cr>:Dispatch clang++ % -o %<.out <cr>
autocmd FileType python let b:dispatch = 'python3 %'
autocmd FileType python nnoremap <buffer> <F7> :w<cr>:! python3 % <cr>
autocmd FileType python map <buffer> <F3> :w<cr>:call Flake8()<cr>
autocmd FileType javascript let b:dispatch = 'node %'
autocmd FileType cs let b:dispatch = 'dotnet run'
autocmd FileType cs nnoremap <buffer> <F7> :w<cr>:Dispatch dotnet build <cr>
