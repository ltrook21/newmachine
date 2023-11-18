-- Map Ctrl + S to save the file in insert mode
vim.api.nvim_set_keymap('i', '<C-S>', '<Esc>:w<CR>i', { noremap = true })
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Quit Neovim with a single 'Q' press in normal mode
map('n', 'Q', ':qa<CR>', opts)
