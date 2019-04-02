set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dpelle/vim-LanguageTool'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" visual settings
set number          " show line numbers
set mouse=a         " use mouse
set showmatch       " show matching ({[
set tw=80           " wrap at 80 characters
set ruler           " show line, column
set colorcolumn=80  " highlights column 80
syntax on           " sets syntax
set clipboard=unnamedplus

" sets spellcheck use 'setlocal spell' to use
set spelllang=en
set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add

" sets wrapping with arrow keys
set whichwrap+=<,>,[,]

" shortcuts
" cfile
iabbrev cfl #include<stdio.h><CR>#include<stdlib.h><CR><CR>int main(){<Esc>ko<TAB>

" tab settings\u2500\u2500\u2500\u2500\u2500\u2500\u2500
set autoindent                  " keeps the same indent across lines
set backspace=indent,eol,start  " backspace overrides autotab
set tabstop=4                   " sets tab size
set expandtab                   " makes tabs spaces

" aesthetics
colorscheme peachpuff

" key remaps
inoremap { {<CR>}<Esc>ko<TAB>
inoremap [ []<Esc>i

" file specific settings
au BufReadPost *.md setlocal spell
au BufReadPost *.md LanguageToolCheck
au BufReadPost *.ftl set syntax=html
