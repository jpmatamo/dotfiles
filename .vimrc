set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'wincent/command-t'
Plugin 'christoomey/vim-tmux-navigator' 

filetype plugin indent on 
set t_Co=256
set bg=dark
inoremap jk <esc> 
:nnoremap <space> za
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
nnoremap <space> za
set pastetoggle=<F2>
"Enable mouse for Tmux and Vim
set ttyfast
set mouse=a
set ttymouse=xterm2

" Easier split navigations
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally#easier-split-navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call vundle#end()

" set color scheme
colorscheme gruvbox

