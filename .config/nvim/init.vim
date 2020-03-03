call plug#begin('.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', {'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', {'name':'dracula'}
call plug#end()

" colorscheme base16-eighties
" hi Normal guibg=None ctermbg=None
let g:tmux_navigator_save_on_switch = 1

set nu
set smarttab
set expandtab
set mouse=a " For easy pane resize
set hidden
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

let mapleader=","
let g:airline_theme='base16_eighties'


noremap <silent><leader>r :source %<cr>



