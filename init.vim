set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

" '/.config/nvim/plugged'
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursor  s
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
call plug#end()

" Color scheme
:colorscheme jellybeans

" Key bindings
nnoremap <C-b> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

" NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeShowHidden = 1 " show hidden files
" let g:NERDTreeMinimalUI = 1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open new split panes to right and below
set splitright
set splitbelow

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+y
function! OpenTerminal()
  split term://powershell     "//bash on linux, //powershell on windows
  resize 10
endfunction
nnoremap <c-y> :call OpenTerminal()<CR>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-y>
