call plug#begin()

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree Ctrl+n
Plug 'scrooloose/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' "Select, Space, (

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips' "snippets creator
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intelligence

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf' "find files and words in files ( fzf)
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion' "Go to word (Space + S)
Plug 'mhinz/vim-signify' "+ ---> added line; - ---> removed line;
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-repeat' "repeat no vim native function

call plug#end()
