-- vim-plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug 'itchyny/vim-gitbranch'
Plug 'marko-cerovac/material.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

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
require('material').setup({
    italics = {
		comments = true,
		keywords = true,
		functions = false,
		strings = false,
		variables = false
	},

    high_visibility = {
		lighter = false,
		darker = true
	},

    lualine_style = "default",

	async_loading = true
})

vim.g.material_style = "darker"
vim.cmd 'colorscheme material'

-- LuaLine
require('lualine').setup()

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
