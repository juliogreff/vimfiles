set nocompatible

source ~/.vim/vundlerc
source ~/.vim/vundles


" UI
syntax enable
colorscheme ir_black
set background=dark
set clipboard=unnamed
set colorcolumn=80
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬
set nowrap
set pastetoggle=<F4>
set relativenumber
set ruler
set scrolloff=5
set showmatch
set smartcase
set ttyfast
set wildignore+=.git\*,.hg\*,.svn\*,*.sql
set wildmenu
set wildmode=list:full

if has("gui_macvim")
    set guifont=Monaco:h12
endif

if has("gui_running")
    " removes toolbars from gui
    set guioptions=egrt
endif


" editing
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4


" file types
autocmd BufNewFile,BufRead *.yaml,*.yml setf yaml
autocmd BufNewFile,BufRead *.clj setf clojure
autocmd BufNewFile,BufRead *.go setf go
autocmd BufNewFile,BufRead *.ejs setf html
autocmd BufNewFile,BufRead *.slim setf slim
autocmd BufNewFile,BufRead *.md setf markdown


" keeps information between sessions
set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set modelines=0
set undodir=~/.vim/tmp
set undofile
set writebackup

set viminfo='10,\"30,:20,%,n~/.viminfo
au BufReadPost * if line("'\"")|execute("normal `\"")|endif


" mappings
vnoremap S :sort<cr>
nmap <tab> %
vmap <tab> %

" very magic search regex
nnoremap / /\v
vnoremap / /\v

" clears last search's highlight
nnoremap <silent> <cr> :nohlsearch<cr>

" opens syntastic location list
nnoremap <F1> :Errors<cr>
inoremap <F1> <esc>:Errors<cr>

" strips trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" converts tabs to spaces
nnoremap <leader>T :%s/\t/    /g<cr>:let @/=''<cr>

" converts quotes between simple and double
nnoremap <leader>' :s/"/'/g<cr>:let @/=''<cr>
nnoremap <leader>" :s/'/"/g<cr>:let @/=''<cr>

" disables arrows
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" redraws screen.
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

" sudo a write
cmap w!! w !sudo tee % >/dev/null


" plugins
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
