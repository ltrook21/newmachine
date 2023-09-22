:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

let mapleader = ","

call plug#begin('~/.config/nvim/')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/sam4llis/nvim-tundra' " Colorscheme tundra
Plug 'https://github.com/catppuccin/nvim' " Colorscheme tundra
Plug 'Luxed/ayu-vim' " ayu vim
Plug 'https://github.com/Shatur/neovim-ayu' " neovim ayu
Plug 'tpope/vim-fugitive' " git tool for nvim
Plug 'tpope/vim-commentary'

call plug#end()


" leader shortcuts
" comments
nnoremap <leader>c :normal gcc<CR>
vnoremap <leader>c :normal gc<CR>
" quit nvim
nnoremap <leader>q :qa!<CR>




set termguicolors       " enable true colors support

set background=light    " for light version of theme
set background=dark     " for either mirage or dark version.
" NOTE: `background` controls `g:ayucolor`, but `g:ayucolor` doesn't control `background`

let g:ayucolor="mirage" " for mirage version of theme
let g:ayucolor="dark"   " for dark version of theme
" NOTE: g:ayucolor will default to 'dark' when not set. 

colorscheme ayu

hi EndOfBuffer guibg=bg guifg=bg " this hides the "~" in the nerdtree menu


" Transparency - Idk If I like it so far...
" hi Normal guibg=NONE ctermbg=NONE
" hi NormalNC

" end transparency
" end theme

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-b> :Bookmark<CR>
let NERDTreeShowBookmarks=1 " open bookmarks when starting up vim

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree



" autoclose:
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
