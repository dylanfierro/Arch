" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

" Functions {{{
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
augroup FORMATOPTIONS
  autocmd!
  autocmd FileType * set fo-=c fo-=r fo-=o " Disable continuation of comments to the next line
  autocmd FileType * set formatoptions+=j  " Remove a comment leader when joining lines
  autocmd FileType * set formatoptions+=l  " Don't break a line after a one-letter word
  autocmd FileType * set formatoptions+=n  " Recognize numbered lists
  autocmd FileType * set formatoptions-=q  " Don't format comments
  autocmd FileType * set formatoptions-=t  " Don't autowrap text using 'textwidth'
augroup END

" }}}

" Imports {{{
runtime ./plug.vim
runtime ./maps.vim
runtime ./pconf.vim
runtime ./lua/init.lua 
runtime ./lua/user/lsp/init.lua
" }}}

" Vim settings {{{
set linebreak
set breakindent
let &showbreak = "↳ "
set foldmethod=marker foldlevel=0
set tabstop=2
set shiftwidth=2
set ai
set si
set expandtab
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
set cmdheight=2
set display+=lastline
set complete+=kspell
set completeopt=menuone,longest
set exrc
set cursorline
" set relativenumber
" set nu
set nohlsearch
set mouse=a
set hidden
set splitright
set splitbelow
set noerrorbells
set nowrap
set formatoptions+=r
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=2
set noshowmode
" set signcolumn=yes
set number
set updatetime=200
set encoding=UTF-8
set clipboard+=unnamedplus " Copy paste between vim and everything else
set nojoinspaces " don't autoinsert two spaces after '.', '?', '!' for join command
set showcmd " extra info at end of command line
set wildignore+=*/node_modules/**
filetype plugin indent on
set ttyfast
set lazyredraw
let g:sneak#label = 1
highlight Comment cterm=italic gui=italic
" }}}

" Tema {{{
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  " set winblend=0
  " set wildoptions=pum
  " set pumblend=5
  set background=dark
colorscheme hybrid 
endif
" }}}

" Neoscroll {{{
lua require('neoscroll').setup()
"}}}
