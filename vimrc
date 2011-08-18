set nocompatible

source ~/.vim/vundlerc " initializes vundle
source ~/.vim/vundles  " load bundles

if has("gui_macvim")       " macvim specific stuff
    set guifont=Monaco:h12 " set font
endif

if has("gui_running")    " gui specific stuff. includes macvim and gvim
    set guioptions=egrt  " removes toolbars
    set colorcolumn=80   " no code after 80 columns!
endif

set nocompatible
set modelines=0

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround
set backspace=indent,eol,start
set scrolloff=5
set nowrap

set encoding=utf-8
set ttyfast

set wildmenu
set wildmode=list:longest

set ruler
set number
set foldmethod=marker
set list
set listchars=tab:▸\ ,eol:¬

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" \v handles regexes like perl
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" clears search highlights
nnoremap <cr> :noh<cr>
" tabs matching brackets
nnoremap <tab> %
vnoremap <tab> %

nnoremap ; :

" strips trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" convert tabs to spaces
nnoremap <leader>T :%s/\t/    /g<cr>:let @/=''<cr>

syntax enable
colorscheme ir_black
set background=dark

" remaps YankRing to <F3>
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <esc>:YRShow<cr>

let g:yankring_history_dir = '~/.vim/tmp'

" Command-Option-(Left/Right) to switch tabs
nnoremap <M-D-Left> :tabp<cr>
nnoremap <M-D-Right> :tabn<cr>
inoremap <M-D-Left> <esc>:tabp<cr>
inoremap <M-D-Right> <esc>:tabn<cr>

set backup 
set backupdir=~/.vim/tmp 
set directory=~/.vim/tmp
set writebackup

" Sets 2-spaces indentation for Ruby
autocmd Filetype ruby setlocal ts=2
autocmd Filetype ruby setlocal ts=2
autocmd Filetype ruby setlocal sts=2

" Sets 2-spaces indentation for YAML
autocmd BufNewFile,BufRead *.yaml,*.yml setf yaml
autocmd Filetype yaml setlocal sw=2
autocmd Filetype yaml setlocal sts=2
autocmd Filetype yaml setlocal sw=2

autocmd BufNewFile,BufRead *.ejs setf html

nnoremap <silent> <F2> :NERDTreeToggle<cr>
inoremap <silent> <F2> <esc>:NERDTreeToggle<cr>

nnoremap <silent> <F1> :Errors<cr>
inoremap <silent> <F1> <esc>:Errors<cr>

let g:user_zen_settings = {
\  'indentation' : '    '
\}

let g:syntastic_enable_signs=1

let g:syntastic_disabled_filetypes=['html']
