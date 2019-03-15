call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'maxboisvert/vim-simple-complete'
Plug 'francoiscabrol/ranger.vim'
Plug 'raimondi/delimitmate' 

call plug#end()

" Impostazioni per lightline e vim-gitbranch
set laststatus=2

if !has('gui_running')
	set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Impostazioni vim-simple-complete
set complete-=t
set complete-=i

" Impostazioni personali
syntax enable
set number
set ts=4
set autoindent

" Shortcuts (Compile)
map <F5> :w <CR> :!clear && gcc % -o %< && ./%< <CR>
map <F6> :w <CR> :!clear && python3 % <CR>

" Shortcuts (Vim Commands)
" Quit
noremap <C-p> :q <CR>
" Write
noremap <C-l> :w <CR>
" Ranger
noremap <C-R> :Ranger <CR>
