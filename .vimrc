" visual settings
set number          " show line numbers
set mouse=a         " use mouse
set showmatch       " show matching ({[
set tw=80           " wrap at 80 characters
set ruler           " show line, column
set colorcolumn=80  " highlights column 80
syntax on           " sets syntax
set clipboard=unnamedplus

" shortcuts
" cfile
iabbrev cfl #include<stdio.h><CR>#include<stdlib.h><CR><CR>int main(){<Esc>ko<TAB>

" tab settings
set autoindent                  " keeps the same indent across lines
set backspace=indent,eol,start  " backspace overrides autotab
set tabstop=4                   " sets tab size
set expandtab                   " makes tabs spaces

" aesthetics
colorscheme koehler 

" key remaps
inoremap { {<CR>}<Esc>ko<TAB>
inoremap [ []<Esc>i

