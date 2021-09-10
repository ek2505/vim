" VIM Like IDE
" URL: https://github.com/zevs4231/vim/blob/master/vimrc
"

""" Vundle Plugin Manager """
set nocompatible
filetype off
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin('/etc/vim/plugins/vundle')

" Appearance
Plugin 'morhetz/gruvbox'                    " Colorscheme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Syntax highlighting
Plugin 'Absolight/vim-bind'
Plugin 'chr4/nginx.vim'
Plugin 'hdima/python-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/dhcpd.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'pearofducks/ansible-vim'

Plugin 'Shougo/neocomplete.vim'             " Vim completion
Plugin 'chilicuil/vim-sprunge'              " Pastebin service
Plugin 'easymotion/vim-easymotion'          " Easymotion navigation for vim
Plugin 'mhinz/vim-startify'                 " Start screen for vim
Plugin 'scrooloose/nerdtree'                " Sidebar for vim
Plugin 'tpope/vim-surround'                 " Vim text wrapper
Plugin 'vim-scripts/indentpython.vim'       " Python PEP8 indentation
Plugin 'vim-syntastic/syntastic'            " Vim syntax checking plugin

call vundle#end()
filetype plugin indent on

""" General """
autocmd BufEnter * set mouse=               " Disalbe mouse
set encoding=utf8                           " Default encoding
set history=1000                            " Long commands history
set autoread                                " Auto reRead file if it changed outside of vim
"Backups
set nobackup                                " Don't create backup files
set nowritebackup                           " Don't create backup files when file directly editing
set noswapfile                              " Don't create swp files
"Error bells
set noerrorbells                            " Don't beeping
set novisualbell                            " Don't flashing screen
set t_vb=                                   " No terminal code to display the visual bell
"Searching
set gdefault                                " Set default searching mask //g
set nohlsearch                              " Don't highlight matched pattern
set incsearch                               " Incremental search
set ignorecase                              " Case insensitive
set smartcase                               " Example: '/test' = 'Test' and 'test', but '/Test' = 'Test' only
"Splits
set splitright                              " Split from right side
set splitbelow                              " Split below of current file
"Performance
set lazyredraw                              " Avoid slow scrolling problem
set ttyfast                                 " Indicates a fast terminal connection
"Identation
set expandtab                               " Replace tabs to spaces
set tabstop=2                               " Number of spaces that a <Tab> in the file counts for.
set softtabstop=2                           " Number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=2                            " Number of spaces to use for each step of (auto)indent
set smarttab                                " With expandtab <Backspace> delete ident like a <Tab>
set autoindent                              " Copy indent from current line when starting a new line
set smartindent                             " Do smart autoindenting when starting a new line
"Line wraping
set textwidth=0                             " Disable max width of text in line
set wrapmargin=0                            " Disable wraping near right border
set wrap                                    " Break end of line
set linebreak                               " Don't break whole words
"Appearance
syntax enable                               " Trun on syntax highlighting
set background=dark
set t_Co=256                                " Set number of colors
let g:rehash256=1
colorscheme gruvbox
set cursorline                              " Highlight current line
set laststatus=2                            " Show statusline
set scrolloff=3                             " Keep cursor 3 lines away from screen border when scrolling
set modeline                                " Enable modeline
"Special chars
set listchars+=tab:▸\ ,trail:¬              " Show special chars when :set list
set listchars+=extends:+,eol:$
set listchars+=precedes:+
"Completion
set wildmenu                                " Command-line completion operates in an enhanced mode
set wildmode=longest,list,full              " Completion mode, menu size
"Motion
set backspace=indent,eol,start              " Backspace normaly delete over line breaks, auto-indent
set showmatch                               " Jump with % to a matching opening or closing parenthesis


""" Keybindings """
noremap <F5> :so /etc/vim/vimrc<CR>
noremap <F6> :tabe /etc/vim/vimrc<CR>:tabm 0<CR>
let mapleader=","
nnoremap <leader><space> :set hlsearch!<CR>
nnoremap <leader>,n :set relativenumber!<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-\> <C-w>v
nnoremap <C-up> <C-w>+
nnoremap <C-down> <C-w>-
nnoremap <C-left> <C-w><
nnoremap <C-right> <C-w>>
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>j :tabNext<CR>
nnoremap <leader>n :set number!<CR>
inoremap jj <ESC>
inoremap jf <ESC>
inoremap AA <C-o>A
inoremap II <C-o>I
vnoremap < <gv
vnoremap > >gv
nnoremap <leader>l :set list!<CR>
noremap <leader>,s :!sort<CR>
map <leader>y :w !xclip -i -sel c<CR><CR>
map <F11> :set invpaste<CR>
set pastetoggle=<F11>
ca w!! w !sudo tee "%"

""" Settings """
let g:plugin_path = expand("/etc/vim/settings/")
for plugin_config in [
    \'easymotion.vim',
    \'neocomplete.vim',
    \'sprunge.vim',
    \'nerdtree.vim',
    \'startify.vim',
    \'surround.vim',
    \'airline.vim',
    \'syntastic.vim',
    \'filetypes.vim',
    \'abbr.vim',
    \'markdown.vim',
    \'python_syntax.vim',
  \]
  exe 'source ' . g:plugin_path . plugin_config
endfor

""" Functions """
let g:func_path = expand("/etc/vim/functions/")
for f in [
    \"delete_trailing_whitespace.vim",
    \"restore_position.vim",
    \"change_enc.vim"
  \]
  exe 'source ' . g:func_path . f
endfor
