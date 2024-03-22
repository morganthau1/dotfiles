" Set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Specify plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'

" End of Vundle setup
call vundle#end()

" Enable filetype detection and plugin support
filetype plugin indent on


