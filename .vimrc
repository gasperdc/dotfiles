syntax on
set rnu
set noerrorbells

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tw=80
set smartindent
set noswapfile
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'ycm-core/YouCompleteMe'
call plug#end()


let g:gruvbox_underline = '1'

augroup my_colours
  autocmd!
  autocmd ColorScheme gruvbox hi SpellBad cterm=reverse
augroup END

autocmd vimenter * ++nested colorscheme gruvbox

let mapleader = " "

" leader-n to toggle line numbers
nmap <leader>n :set nu! <CR>
" leader-w to write all
nmap <leader>w :wa <CR>
" leader-s to enable spell check
nmap <leader>s :setlocal spell spelllang=en_us <CR>
nmap <leader>S :setlocal spell! <CR>
" leader-t to add timestamp
nmap <leader>t  "=strftime("%a %d %b %Y %H:%M")<CR>P
" "+DATE: %Y-%m-%d%nTIME: %H:%M" 
" leader-g to invoke Goyo
nmap <leader>g :Goyo <CR>
" leader- for window operations
nmap <leader>h :wincmd h <CR>
nmap <leader>j :wincmd j <CR>
nmap <leader>l :wincmd l <CR>
nmap <leader>k :wincmd k <CR>
nmap <leader>v :wincmd v <CR>
nmap <leader>q :wincmd q <CR>
" leader-v to open .vimrc in split
nmap <leader>v :split $MYVIMRC<CR>

hi SpellBad cterm=underline
set background=dark
set ruler

        
