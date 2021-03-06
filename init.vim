" appearance options
set t_Co=256
set termguicolors
set background=dark

syntax enable
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line wrapping
set wrap
set linebreak

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                       " Indent using spaces instead of tabs
set shiftwidth=2                    " The number of spaces to use for each indent
set softtabstop=2                   " Number of spaces to use for a <Tab> during editing operations

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set number                         " Line numbers

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open new splits to the right and below (feels more natural)
set splitright
set splitbelow
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM Plug
call plug#begin()

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" let g:prettier#quickfix_enabled = 0
" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

Plug 'ayu-theme/ayu-vim'
let ayucolor="mirage"
" Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-surround'

Plug 'Yggdroot/indentLine'

Plug 'airblade/vim-gitgutter'       " Git diff in gutter and stages/undoes hunks.
Plug 'tpope/vim-fugitive'           " A Git wrapper

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'       " Insert or delete brackets, parens, quotes in pair

" Plug 'Valloric/MatchTagAlways'
" let g:mta_use_matchparen_group = 1

Plug 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx, *.tsx"

" Javascript
Plug 'pangloss/vim-javascript'
" let g:javascript_plugin_flow = 1
" set conceallevel=1
Plug 'Quramy/vim-js-pretty-template'

" JSON
Plug 'elzr/vim-json'

" Tailwind
" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'

" Airline
Plug 'vim-airline/vim-airline'

" Themes
Plug 'kaicataldo/material.vim'
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'default'
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'sonph/onehalf'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
let g:palenight_terminal_italics=1
Plug 'rakr/vim-one'
let g:one_allow_italics = 1
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'josuegaleas/jay'
Plug 'rhysd/vim-color-spring-night'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'danro/rename.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'flrnd/candid.vim'

call plug#end()

colorscheme material

let g:airline_theme='material'

" Autocomplete list with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
