set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'othree/html5.vim'
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"set guifont=Menlo:h15
set guifont=SFMono-Regular:h13

syntax enable

"set background=dark
"set background=light

"set background=dark
"colorscheme material-theme

"let g:zenburn_high_Contrast=1
"colorscheme zenburn

"colorscheme github
"colorscheme mirodark 

set background=dark
colorscheme railscasts

set number                      " line numbers
if has("gui_running")	          " if macvim
    set guioptions=egmrt        " hide toolbar
    set guioptions-=r           " hide scroolbar
endif

set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set nohlsearch                 " turn off highlight searches, but:
                               " Turn hlsearch off/on with CTRL-N (http://www.8t8.us/vim/vim.html)
:map <silent> <C-N> :se invhlsearch<CR>
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" I know how to save, swap file is annoying
set nobackup
set noswapfile

" Forgot to sudo, w!!
cmap w!! w !sudo tee % >/dev/null

"" split window navigation
"full screen was screwing with column setup
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
"map <C-J> <C-W>j
"map <C-K> <C-W>k

map <C-H> <C-W>h
map <C-L> <C-W>l
set wmh=0

"function! WinMove(key) 
"  let t:curwin = winnr()
"  exec "wincmd ".a:key
"  if (t:curwin == winnr()) "we havent moved
"    if (match(a:key,'[jk]')) "were we going up/down
"      wincmd v
"    else 
"      wincmd s
"    endif
"    exec "wincmd ".a:key
"  endif
"endfunction

"function! MaximizeToggle()
"  if exists("s:maximize_session")
"    exec "source " . s:maximize_session
"    call delete(s:maximize_session)
"    unlet s:maximize_session
"    let &hidden=s:maximize_hidden_save
"    unlet s:maximize_hidden_save
"  else
"    let s:maximize_hidden_save = &hidden
"    let s:maximize_session = tempname()
"    set hidden
"    exec "mksession! " . s:maximize_session
"    only
"  endif
"endfunction

"nnoremap <C-M> :call MaximizeToggle ()<CR>
"map <silent> <C-H> :call WinMove('h')<cr>
"map <silent> <C-K> :call WinMove('k')<cr>
"map <silent> <C-L> :call WinMove('l')<cr>
"map <silent> <C-J> :call WinMove('j')<cr>

"" map ; to : saving many key strokes
nnoremap ; :

"" set php file types to include html so snippets work
"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html

"FILETYPES
set autoindent
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 " Ruby
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 " PHP
autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 " X?HTML & XML
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 " CSS
autocmd FileType less setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 " LESS
autocmd BufRead,BufNewFile *.blade.php set filetype=html


"Reselect text after indententation
vnoremap < <gv
vnoremap > >gv


" speed up ctrlp
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
