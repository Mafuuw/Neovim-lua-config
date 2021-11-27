local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local M = {}

local options = { noremap = true, silent = true }
local silent = { silent = true }

-- Map the leader key.
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Navigating.
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-l>', '<C-w>l', options)

-- Quit, close buffers, etc.
map('n', '<leader>q', '<cmd>qa<cr>', silent)
map('n', '<leader>x', '<cmd>x!<cr>', silent)
map('n', '<leader>d', '<cmd>Sayonara<cr>', { silent = true, nowait = true })

-- Save buffer.
map('n', '<leader>w', '<cmd>w<cr>', { silent = true })

-- CHADtree.
map('n', '<leader>v', ':CHADopen<cr>', options)

-- Telescope.
map('n', '<leader>ff', ':Telescope Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>', options)
map('n', '<leader>fg', ':Telescope live_grep<cr>', options)
map('n', '<leader>fb', ':Telescope file_browser<cr>', options)
map('n', '<leader>fh', ':Telescope help_tags<cr>', options)
