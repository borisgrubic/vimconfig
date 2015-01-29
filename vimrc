"" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocp
call pathogen#infect()
silent! call pathogen#helptags()

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
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
" if has("autocmd")
"  filetype plugin indent on
" endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch        " highlight search results
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"added by Boris
" set nowrap
set nu                                  " display numbers
set nowrap                              " don't wrap text
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wildmode=longest,list,full
set wildmenu

set ruler " show cursor position

set nobackup
set noswapfile

set lines=50

nmap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :TlistToggle<CR>

imap jj <ESC>
nmap <silent> ,/ :nohlsearch<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set pastetoggle=<F2>

set splitbelow " split new horizontal below current
set splitright " split new vertical right

" set foldmethod=indent " set folding on

set t_Co=256
colors wombat256

let mapleader=","
let g:CommandTTagIncludeFilenames=1
let g:Tlist_GainFocus_On_ToggleOpen=1
let g:Tlist_Use_Right_Window=1

filetype plugin indent on

let Tlist_Ctags_Cmd="~/vim/bundle/taglist/"

let g:ctrlp_working_path_mode = ''

set cursorline

nnoremap <silent> <leader>i :JavaImport<cr>
nnoremap <silent> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <cr> :JavaSearchContext<cr>

set completeopt=longest,menuone

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

