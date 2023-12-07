" Welcome to my vimrc..
"
"	- Basic settings derived from: https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
"	- Made on and for MacOS"
"
"       Quick cheat sheet:
"           ggVG = select all text
"           
"
"......................

set mouse=a

" needed for certain schemes
" set background=dark

" use 256 colors
" set t_Co=256

"set termguicolors
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

let g:ale_completion_enabled = 1

"trigger completion manually with <C-x><C-o>.
set omnifunc=ale#completion#OmniFunc

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=6

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=16

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }
" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

  Plug 'preservim/tagbar'

  Plug 'flazz/vim-colorschemes'

  Plug 'felixhummel/setcolors.vim'
  
  Plug 'universal-ctags/ctags'
  
  Plug 'vimoutliner/vimoutliner'
  
  Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  
  Plug 'junegunn/fzf.vim'

  Plug 'vim-scripts/CSApprox'

  Plug 'avelino/flux.vim'

  Plug 'safv12/andromeda.vim'

  Plug 'saltdotac/citylights.vim'

  Plug 'saltdotac/citylights.vim'

  Plug 'd11wtq/macvim256.vim'

  Plug 'dbb/vim-gummybears-colorscheme'

  Plug 'ajmwagar/vim-deus'

  Plug 'junegunn/seoul256.vim'
  
  Plug 'severij/vadelma'

  Plug 'dbb/vim-gummybears-colorscheme'

  Plug 'd11wtq/macvim256.vim'

  Plug 'safv12/andromeda.vim'

  Plug 'avelino/flux.vim'

  Plug 'zanglg/nova.nvim'

  Plug 'J4CKR3D/Hypsteria'

  Plug 'bcat/abbott.vim'

  Plug 'justb3a/vim-smarties'

  Plug 'pangloss/vim-javascript'
  
  Plug 'leafgarland/typescript-vim'

  Plug 'sheerun/vim-polyglot'
  
  Plug 'sainnhe/everforest'
  
  Plug 'karoliskoncevicius/sacredforest-vim'

call plug#end()

" }}}


" ### KEYMAPPING 101:
" map_mode <what_you_type> <what_is_executed>

" ### MODES OF VIM:
"    nnoremap – Allows you to map keys in normal mode.
"    inoremap – Allows you to map keys in insert mode.
"    vnoremap – Allows you to map keys in visual mode.


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
let mapleader = ","

set backspace=indent,eol,start
map <S-o> :TagbarToggle<CR>
inoremap jj <esc>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
" augroup filetype_vim
"    autocmd!
"    autocmd FileType vim setlocal foldmethod=marker
" augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

" Scheme
" colorscheme neodark
" colorscheme SerialExperimentsLain
colorscheme abbott 
