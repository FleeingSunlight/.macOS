syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ruler
set number
set hidden
set nocompatible
syntax enable
filetype plugin indent on

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

let g:qs_highlight_on_keys = ['f', 'F']
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#print_width = 120
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = "false"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <esc> :noh<return><esc>
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

call plug#begin('~/.vim/plugged')
  Plug 'easymotion/vim-easymotion'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'unblevable/quick-scope'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'sheerun/vim-polyglot'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'Yggdroot/indentLine'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'rust-lang/rust.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ntpeters/vim-better-whitespace'
call plug#end()
