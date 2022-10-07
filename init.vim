# for neovim

:set number
#:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/sam4llis/nvim-tundra' " Colorscheme tundra
Plug 'https://github.com/catppuccin/nvim' " Colorscheme tundra

# https://github.com/catppuccin/nvim

let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha
lua require("catppuccin").setup()
colorscheme catppuccin