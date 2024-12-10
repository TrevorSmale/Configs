" vim-plug plugin manager settings
call plug#begin('~/.vim/plugged')

" Go related plugins
Plug 'fatih/vim-go'       " A Go development plugin for Vim
Plug 'junegunn/fzf.vim'   " Fuzzy finder plugin (optional but useful)
Plug 'preservim/nerdtree' " File explorer (optional)

" Multi-language support and autoformatting
Plug 'sbdchd/neoformat'      " Autoformatter for multiple languages
Plug 'sheerun/vim-polyglot'  " Syntax highlighting for many languages

" Git integration
Plug 'tpope/vim-fugitive'    " Git commands within Vim

call plug#end()

" Enable vim-go features
let g:go_fmt_command = "gopls"  " Use gopls for formatting
let g:go_auto_type_info = 1     " Show Go type info on hover
let g:go_highlight_fields = 1   " Highlight struct fields

" NERDTree configuration
nnoremap <C-n> :NERDTreeToggle<CR>  " Toggle NERDTree with Ctrl-n

" Enable line numbers
set number

" Highlight the current line
set cursorline

" Enable syntax highlighting
syntax on

" Set color scheme (choose your favorite or install custom themes)
colorscheme desert

" Use spaces instead of tabs
set expandtab

" Set the number of spaces per tab
set tabstop=4

" Set the number of spaces used for auto-indenting
set shiftwidth=4

" Enable smart indentation
set smartindent

" Enable auto-indentation
set autoindent

" Highlight matching parentheses
set showmatch

" Enable line wrapping
set wrap

" Display line wrap characters
set list
set listchars=tab:»·,trail:·,extends:>,precedes:<

" Enable mouse support
set mouse=a

" Show the status line
set laststatus=2

" Enable line numbers relative to the cursor
set relativenumber

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Ignore case in search patterns
set ignorecase
set smartcase

" Enable persistent undo
set undofile
set undodir=~/.vim/undodir

" Enable clipboard integration
set clipboard=unnamedplus

" Set a better command line height for displaying messages
set cmdheight=2

" Show line and column numbers in the status line
set ruler

" Enable filetype plugins and indentation
filetype plugin indent on

" Automatically reload files changed outside of Vim
set autoread

" Disable audible bell
set noerrorbells
set visualbell

" Prevent accidental closing of unsaved files
set confirm

" Better scrolling experience
set scrolloff=8
set sidescrolloff=8

" Automatically save and source this file after editing
autocmd BufWritePost ~/.vimrc source ~/.vimrc

" Neoformat configuration for autoformatting
let g:neoformat_enabled_rust = ['rustfmt']
let g:neoformat_enabled_python = ['black']
let g:neoformat_enabled_go = ['gofmt']
let g:neoformat_enabled_php = ['php-cs-fixer']
let g:neoformat_enabled_sql = ['sqlformat']
let g:neoformat_enabled_html = ['tidy']
let g:neoformat_enabled_css = ['tidy']
let g:neoformat_enabled_tailwind = ['prettier']
let g:neoformat_enabled_c = ['clang-format']
let g:neoformat_enabled_cpp = ['clang-format']
let g:neoformat_enabled_yaml = ['yamlfmt']
let g:neoformat_enabled_toml = ['taplo']
let g:neoformat_enabled_xml = ['xmllint']
let g:neoformat_enabled_ansible = ['ansible-lint']
let g:neoformat_enabled_terraform = ['terraform']
let g:neoformat_enabled_markdown = ['mdformat']
let g:neoformat_enabled_ini = ['configparser']

" Autoformat on save
autocmd BufWritePre *.rs,*.py,*.go,*.php,*.sql,*.html,*.css,*.c,*.cpp,*.yaml,*.toml,*.xml,*.yml,*.tf,*.md,*.ini Neoformat


