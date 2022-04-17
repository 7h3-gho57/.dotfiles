set termguicolors
let ayucolor="dark"
colorscheme ayu

scriptencoding utf-8

" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> :m Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" set shiftwidth=2
" set softtabstop=2

autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python3 "%"<CR>
