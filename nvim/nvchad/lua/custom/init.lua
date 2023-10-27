-- Map Ctrl + S to save the file in insert mode
vim.api.nvim_set_keymap('i', '<C-S>', '<Esc>:w<CR>i', { noremap = true })
