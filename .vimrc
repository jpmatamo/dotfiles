set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Plugin 'morhetz/gruvbox'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/command-t'

filetype plugin indent on 
set t_Co=256
set bg=dark
inoremap jk <esc> 
" set color scheme
colorscheme gruvbox
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'
" set line numbers
set nu
" set syntax on
syntax on
" set ruler
set ruler
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" in normal mode F11 will save the file
nmap <F11> :w<CR>
" in insert mode F11 will exit insert, save, enters insert again
imap <F11> <ESC>:w<CR>i
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
set pastetoggle=<F2>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
