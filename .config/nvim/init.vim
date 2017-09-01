set nocompatible
filetype off

let s:editor_root=expand("~/.config/nvim/")
set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.config/nvim/bundle/vlime/vim/

call vundle#begin(s:editor_root . 'bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'l04m33/vlime', {'rtp': 'vim/'}
Plugin 'kovisoft/paredit'
Plugin 'beigebrucewayne/hacked_ayu.vim'
call vundle#end()
filetype plugin indent on

set termguicolors
set background=dark
colorscheme hacked_ayu

nmap <left>    :3wincmd <<cr>
nmap <right>   :3wincmd ><cr>
nmap <up>      :3wincmd +<cr>
nmap <down>    :3wincmd -<cr>
nmap <C-left>  :wincmd l<cr>
nmap <C-right> :wincmd h<cr>
nmap <C-up>    :wincmd k<cr>
nmap <C-down>  :wincmd j<cr>
