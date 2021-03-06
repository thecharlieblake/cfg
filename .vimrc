" --- Pathogen ---
execute pathogen#infect()
syntax on
filetype plugin indent on

" --- Editor Settings --

" line numbers
set number
" don't copy line numbers
set mouse=a

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" smart settings
set smartcase
set smartindent
set autoindent

" show matching brackets
set showmatch

" highlight current line
set cursorline

" fixes some bug issues
set nocompatible

" text width before wrapping
set tw=79
set fo+=t

" history
set history=1000

" shows current mode
set showmode

" sync clipboards
set clipboard=unnamedplus,autoselect

" search as we go and highlight
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" improve completion options
set completeopt=menuone,menu,longest

" ignore certain files
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" graphical menu of matches in command prompt 
set wildmenu

" --- Syntastic ---
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
map <C-s> :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --- Nerd Tree
map <C-n> :NERDTreeToggle<CR>

" Show 80 column limit
set cc=80

