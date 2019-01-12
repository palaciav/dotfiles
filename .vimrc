" Enable filetype plugins
filetype plugin on
" Enable syntax highlighting and set scheme to badwolf
syntax on
colorscheme badwolf

set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in TAB when editing
set expandtab		" tabs are spaces

set number		" show line numbers
set cursorline		" highlight current line
set wildmenu		" visual autocomplete for command menu

set lazyredraw		" redraw only when necessary
set showmatch		" highlight matching [{()}]

set incsearch		" search as characters are entered
set hlsearch		" highlight matches

set foldenable		" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10	" 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent	" fold based on indent level

" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","	" leader is comma

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" set exceptions for tabs

if has("autocmd")
    augroup styles
        autocmd!
        " Custom filetypes settings: Ruby, Vagrant
        au FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2
        au BufRead,BufNewFile *.json setfiletype javascript
        au BufRead,BufNewFile Vagrantfile,*.yml setfiletype ruby
    augroup END
endif
