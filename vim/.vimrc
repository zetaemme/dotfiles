" Download automatico di VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'maxboisvert/vim-simple-complete'
Plug 'francoiscabrol/ranger.vim'
Plug 'raimondi/delimitmate'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' 
Plug 'majutsushi/tagbar'

call plug#end()

" Impostazioni per lightline e vim-gitbranch
set laststatus=2
set noshowmode

if !has('gui_running')
	set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'darcula',
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

" Shortcuts (Vim Commands)
" Tagbar
nmap <F8> :TagbarToggle<CR>
" Ranger
noremap <C-R> :Ranger <CR>
