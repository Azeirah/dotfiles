set nocompatible
filetype off

let s:editor_root=expand("~/.config/nvim/")
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin(s:editor_root . 'bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'l04m33/vlime', {'rtp': 'nvim/'}
call vundle#end()
filetype plugin indent on
