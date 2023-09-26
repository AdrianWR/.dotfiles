"                        ..
"                      .::::.
"         ___________ :;;;;:`____________
"         \_________/ ?????L \__________/
"           |.....| ????????> :.......'
"           |:::::| $$$$$$"`.:::::::' ,
"          ,|:::::| $$$$"`.:::::::' .OOS.
"        ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.
"      .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.
"       'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`
"         'D|IIIIII7IIIII7' .DDDDDDDDNNNF`
"           |EEEEEEEEEE7' .DDDDDDDNNNNF`
"           |EEEEEEEEZ' .DDDDDDDDNNNF`
"           |888888Z' .DDDDDDDDNNNF`
"           |8888Z' ,DDDDDDDNNNNF`
"           |88Z'    'DNNNNNNN"
"           '"'        'MMMM"

"----------------------------
"--- Global Configurations --
"----------------------------

"<Leader> Key Definition
let mapleader = ","

set nocompatible
filetype off 
set number
set mouse=a
"set termguicolors


" Install vim.plug automatically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
	Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
	Plug 'tpope/vim-fugitive'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-test/vim-test'
	Plug 'gioele/vim-autoswap'
	Plug 'pbondoer/vim-42header'
	Plug 'itchyny/lightline.vim'
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
	Plug 'github/copilot.vim'
call plug#end()

let g:coc_global_extensions = [
\	'coc-clangd',
\]


"Colorscheme Management
silent! colorscheme gruvbox
set background=dark


"General Indent Options
set noexpandtab
set copyindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set smartindent

"Auto-close preview windows
autocmd CompleteDone * pclose
"Buffer Management Maps
nnoremap <F5> :buffers<CR>:buffer<Space>
"Unsets the <<last search pattern>> register
nnoremap <CR> :noh<CR><CR>:<backspace>

"Remaps for switching windows
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"-----------------------------
"--- $MYVIMRC Configuration --
"-----------------------------

"Easy ~/.vimrc configuration from CLI
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
augroup vimrc
	autocmd! BufWritePost $MYVIMRC source $MYVIMRC "| echom 'Sourced $MYVIMRC'
augroup end

"-----------------------------
"--- NERDTree Configuration --
"-----------------------------

map <C-n> :NERDTreeToggle<CR>
augroup nerdtree
    " Start NERDTree when Vim is started without file arguments.
	"autocmd StdinReadPre * let s:std_in=1
	"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
	"
	" Close the tab if NERDTree is the only window remaining in it.
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

	"" Start NERDTree and put the cursor back in the other window.
	autocmd VimEnter * NERDTree | wincmd p
augroup end


""""""""""""""""""""""""""""""
""" Coc.Nvim Configuration """
""""""""""""""""""""""""""""""

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

