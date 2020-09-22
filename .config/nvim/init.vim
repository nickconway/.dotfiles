syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set smartcase
set relativenumber
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set t_Co=256

" Shows the effects of a command incrementally, as you type.
set inccommand=nosplit

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'victorze/foo'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

call plug#end()

set background=dark
" colorscheme hyper

let mapleader=" "

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" Switch to your current theme
let g:airline_theme = 'onedark'
" Always show tabs
set showtabline=2

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>n :wincmd j<CR>
nnoremap <leader>e :wincmd k<CR>
nnoremap <leader>i :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap <C-s> :w<CR>

" Indentation
nnoremap < <<
nnoremap > >>

" which-key
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual'<Space>'<CR>
" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=100

" comment out
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" highlight on yank
augroup highlight_yank
	autocmd!
	autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END
