" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" easy commands
nnoremap <space>w :w<CR>
nnoremap <space>s :source %<CR>
nnoremap <space>q :q<CR>
nnoremap <space><C-c> :q!<CR>

" plugs shortcuts
nnoremap  <C-b> :NERDTreeToggle<CR>
" Ctrl + 7 to toggle comment/uncomment
map <C-_> <Plug>NERDCommenterToggle
cnoreabbrev tree :NERDTreeRefreshRoot
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

" buffers
map <space>buf :Buffers<cr>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" run current file
nnoremap <space>node :!node %<cr>
nnoremap <space>py :!python3 %<cr>
nnoremap <space>cp :!g++ % -o %.bin && ./%.bin && rm ./%.bin<cr>
" static files live server
cnoreabbrev liveserver terminal /home/gonzalo90fa/node_modules/live-server/live-server.js
" Example: ./program.sh ./program /program.bin
cnoreabbrev run terminal ./%


"use <c-space> to trigger completion
"if &filetype == "javascript" || &filetype == "python"
"	inoremap <c-space> <C-x><C-u>
"else
	"inoremap <silent><expr> <c-space> coc#refresh()
"endif
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
							\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <C-t> :terminal<CR>

