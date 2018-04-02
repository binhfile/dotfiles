set nocompatible              " be iMproved, required
filetype off                  " required
" vim 8.0 @ubuntu: add-apt-repository ppa:jonathonf/vim
" vim-plug: curl -fLo ~/.vim/autoload/plug.vim \
"           --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Syntax "
Plug 'Valloric/YouCompleteMe', {'do' : 'python3.5 ./install.py --clang-completer --go-completer'}
Plug 'rdnetto/YCM-Generator', {'branch':'stable'}
"  use flawfinder, cppcheck, clang-tidy
Plug 'scrooloose/syntastic'
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'

" GUI "
"   Folder tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"   Colorschemes
Plug 'arcticicestudio/nord-vim'

" Utilities "
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'rbgrouleff/bclose.vim'
Plug 'morhetz/gruvbox'

" Language "
Plug 'fatih/vim-go'
" Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/DoxygenToolkit.vim'

" Initialize plugin system
call plug#end()

filetype plugin indent on    " required

" Syntax "
set encoding=utf-8
setglobal fileencoding=utf-8
" Line 
set laststatus=2
set showtabline=1
set noshowmode
set nu
set rnu
set cursorline
set clipboard=unnamedplus
set autoindent
set si "smart indent
"  Tab = 4 Spaces
set expandtab ts=4 sw=4 ai
" Syntastic
let g:syntastic_cpp_checkers=['flawfinder', 'cppcheck', 'clang_tidy']
"  YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python3.5'
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0

"  Clang-Format
let g:clang_format#code_style="file"
let g:clang_format#auto_format_on_insert_leave = 1 " auto format when leave insert mode
let g:clang_format#auto_format = 1  " auto format on save event
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType h ClangFormatAutoEnable
autocmd FileType proto ClangFormatAutoDisable
autocmd FileType go    ClangFormatAutoDisable

" GUI "
"  Vim Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" NERDTree
autocmd VimEnter * NERDTree
" Tagbar
autocmd FileType c TagbarOpen
autocmd FileType cpp TagbarOpen
autocmd FileType h TagbarOpen
autocmd FileType go TagbarOpen
autocmd FileType CMakeLists.txt TagbarOpen
" Color
syntax on
" set t_Co=256
set background=dark
colorscheme nord
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
" Mouse
if has('mouse')
set mouse=a
endif

" Utilities "
"  Auto reload
set autoread
set autowrite 
"  Turnoff backup
set nobackup
set nowb
set noswapfile

" Golang
"   Use goimports for formatting
let g:go_fmt_command = "goimports"
"  Turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Markdown
" let g:vim_markdown_folding_disabled = 1


