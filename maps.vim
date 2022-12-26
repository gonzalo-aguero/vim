" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" easy commands
nnoremap <space>w :w<CR>
nnoremap <space>s :source %<CR>
nnoremap <space>q :q<CR>
nnoremap <space>Q :q!<CR>

" shorter commands
cnoreabbrev tree NERDTreeToggle

" plugs shortcuts
nnoremap  <C-b> :NERDTreeToggle<CR>
" Ctrl + 7 to toggle comment/uncomment
map <C-_> <Plug>NERDCommenterToggle
map <space>p :Files<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" tabs navigator
map <space>h :tabprevious<cr>
map <space>l :tabnext<cr>

" buffers
map <space>buf :Buffers<cr>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" run current file (.js)
nnoremap <Leader>x :!node %<cr>

" use <c-space> to trigger completion
"if &filetype == "javascript" || &filetype == "python"
"	inoremap <c-space> <C-x><C-u>
"else
	inoremap <silent><expr> <c-space> coc#refresh()
"endif

nnoremap <C-t> :terminal<CR>
