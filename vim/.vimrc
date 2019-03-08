call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/spacegray.vim'
Plug 'scrooloose/syntastic'
Plug 'maxboisvert/vim-simple-complete'

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

" Impostazioni per spacegray
let g:spacegray_underline_search = 1
let g:spacegray_use_italics = 1
let g:spacegray_low_contrast = 1

" Impostazioni syntasic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Impostazioni vim-simple-complete
set complete-=t
set complete-=i

" Impostazioni personali
syntax enable
set number
set ts=4
set autoindent

