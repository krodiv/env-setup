call plug#begin()
  Plug 'preservim/NERDTree'
  Plug 'vim-airline/vim-airline'
  Plug 'https://github.com/ap/vim-css-color'
  Plug 'davidhalter/jedi-vim'
  Plug 'preservim/nerdtree'
  Plug 'vim-scripts/indentpython.vim'
  Plug 'nvie/vim-flake8'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'morhetz/gruvbox'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'christoomey/vim-tmux-navigator'
call plug#end()

set bg=dark
colorscheme gruvbox
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set number
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
set hidden

source $VIMRUNTIME/vimrc_example.vim
