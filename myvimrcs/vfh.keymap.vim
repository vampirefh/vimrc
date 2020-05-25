nmap <F5> :w<cr>:Dispatch<cr>
nmap ~ :NERDTreeToggle<cr>

autocmd FileType cpp let b:dispatch = 'clang++ % -o %<.out && ./%<.out'
autocmd FileType cpp nnoremap <buffer> <F7> :w<cr>:Dispatch clang++ % -o %<.out <cr>

autocmd FileType python let b:dispatch = 'python3 %'
autocmd FileType python nnoremap <buffer> <F7> :w<cr>:! python3 % <cr>
autocmd FileType python map <buffer> <F3> :w<cr>:call Flake8()<cr>

autocmd FileType javascript let b:dispatch = 'node %'

autocmd FileType cs let b:dispatch = 'dotnet run'
autocmd FileType cs nnoremap <buffer> <F7> :w<cr>:Dispatch dotnet build <cr>

autocmd FileType go let b:dispatch = 'go build -o %<.goout % && ./%<.goout'
autocmd FileType go nnoremap <buffer> <F7> :w<cr>:Dispatch go build -o ./%<.goout %<cr>

nmap <F1> <nop>

