" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.


" Link this file in ~/.vimrc with the following sentence: so ~/.vim/main-config.vim"

runtime! debian.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
let mapleader="/"
so ~/.config/nvim/maps.vim
" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode
set termguicolors
" Uncomment the following line to use the terminal background.
"hi! Normal guibg=NONE ctermbg=NONE



"au BufNewFile,BufRead *.html set filetype=htmldjango
"lua require'colorizer'.setup()

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set clipboard=unnamedplus
:let @+=42

set encoding=utf-8
set number
set relativenumber
set numberwidth=2
set ruler "mostrar numero de linea y columna"
set tabstop=4
set shiftwidth=4
set autoindent
set cursorline
set nowrap

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif


set wildmenu " vertical stack menu
set modifiable " :terminal and then write shell commands directly
