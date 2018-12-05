set nocompatible        " be iMproved, required
set hlsearch            " highlight search
set number              " show line
set laststatus=2        " Show status line always
set autoread            " Automatically read changed files
set incsearch           " Shows the match while typing
set showcmd             " Show me what I'm typing
" set noswapfile          " Don't use swapfile
" set nobackup            " Don't create annoying backup files
set splitright          " Vertical windows should be split to right
set splitbelow          " Horizontal windows should split to bottom
set autowrite           " Automatically save before :next, :make etc.
set noshowmode          " We show the mode with airline or lightline
set expandtab           " Spaces not tabs
set termguicolors       " Make coloring better
set wildmenu            " Better cmdline completion

filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'airblade/vim-gitgutter'               " show git diff
Plugin 'easymotion/vim-easymotion'            " alternative cursor movement
" Plugin 'junegunn/fzf'                         file fuzzy finding
" Plugin 'majutsushi/tagbar'                    " class outliner
Plugin 'scrooloose/nerdtree'                  " file system explorer
Plugin 'scrooloose/nerdcommenter'             " commenting
" Plugin 'valloric/youcompleteme'               " code completion
Plugin 'vim-airline/vim-airline'              " nice statusline
Plugin 'vim-airline/vim-airline-themes'       " statusline themes
" Plugin 'w0rp/ale'                             " async linter
Plugin 'whatyouhide/vim-gotham'               " dark color scheme
Plugin 'wincent/terminus'

" codefmt
" Plugin 'google/vim-maktaba'
" Plugin 'google/vim-codefmt'
" Plugin 'google/vim-glaive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" call glaive#Install()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append ! to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append ! to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append ! to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set vim theme
syntax enable
colorscheme elflord

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#ale#enabled = 1
" let g:gotham_airline_emphasised_insert = 0

" ale
" let g:ale_completion_enabled = 1
" let g:ale_fix_on_save = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1

" nerd commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" git gutter
set updatetime=100

" ycm
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1

" automatic codefmt
" augroup autoformat_settings
"   " autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
"   " autocmd FileType dart AutoFormatBuffer dartfmt
"   autocmd FileType go AutoFormatBuffer gofmt
"   " autocmd FileType gn AutoFormatBuffer gn
"   autocmd FileType html,css,json AutoFormatBuffer js-beautify
"   " autocmd FileType java AutoFormatBuffer google-java-format
"   autocmd FileType python AutoFormatBuffer yapf
" augroup END

" keyremappings
let mapleader = ","

" normal mode
" plugin activation
nnoremap <Leader>n :NERDTreeToggle<CR>
" nnoremap <Leader>p :FZF<CR>
" nnoremap <Leader>t :TagbarToggle<CR>
" buffer management
nnoremap <tab> :bn<CR>
nnoremap <S-tab> :bp<CR>
nnoremap <S-w> :bd!<CR>
nnoremap QQ ZQ
nnoremap Q :w<CR>
" window management
nnoremap <C-s> <C-w>s
nnoremap <C-v> <C-w>v
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" visual mode
if system('uname -s') == "Darwin\n"
  "OSX
  vnoremap <C-c> :w !pbcopy<CR><CR>
else
  "Linux
  vnoremap <C-c> "+yi
endif

" insert mode
inoremap jj <ESC>
