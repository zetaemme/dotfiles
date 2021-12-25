-- vim-plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'joshdick/onedark.vim'

vim.call('plug#end')

-- Tab settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Indentation
vim.opt.autoindent = true

-- Cursor
vim.opt.cursorline = true

-- Colors
if vim.fn.exists('+termguicolors') then
    vim.cmd [[
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    ]]
end

-- Colorscheme
vim.cmd 'colorscheme onedark'

-- Line Numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Search settings
vim.o.ignorecase = true
vim.o.smartcase = true

-- lightline and vim-gitbranch
vim.opt.laststatus = 2
vim.opt.showmode = false

vim.cmd 'set t_Co=256'

vim.cmd [[
    let g:lightline = {
          \ 'colorscheme': 'onedark',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'gitbranch': 'gitbranch#name'
          \ },
          \ }
]]

-- Keymaps
local keymap = vim.api.nvim_set_keymap

keymap('n', '<c-s>', ':w<CR>', {})
keymap('n', '<c-s>', ':<ESC>w<CR>a', {})

keymap('n', '<c-q>', ':q<CR>', {})
keymap('n', '<c-q>', '<ESC>:q<CR>a', {})

local opts = { noremap = true }
keymap('n', '<c-j>', ':<c-w>j', opts)
keymap('n', '<c-h>', ':<c-w>h', opts)
keymap('n', '<c-k>', ':<c-w>k', opts)
keymap('n', '<c-l>', ':<c-w>l', opts)

