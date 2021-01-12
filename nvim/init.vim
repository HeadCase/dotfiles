" Vim config file
"
" Setup plugin system using vimPlug
let g:python3_host_prog = '/Users/gheadley/.pyenv/versions/3.7.4/bin/python'
let g:python_host_prog = '/Users/gheadley/.pyenv/versions/2.7.16/bin/python'

call plug#begin('~/.vim/plugged')

" Look 'n Feel
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'

" Quality of Life 
Plug 'tpope/vim-commentary'                      
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'                         
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'

" Language support
Plug 'urbainvaes/vim-ripple'
Plug 'lervag/vimtex'
Plug 'tmhedberg/simpylfold'

" Autocomplete & Linting 
Plug 'ncm2/float-preview.nvim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'


call plug#end()

" Plugin customisation

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
let g:airline_solarized_bg='light'
let g:airline#extensions#tmuxline#enables = 0

" UltiSnips
let g:UltiSnipsEditSplit= 'horizontal'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/snips']

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method = 'skim'
" let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_parser_bib_backend = 'bibparse'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \ 'options' : [
    \   '-file-line-error',
    \   '-synctex=0',
    \   '-interaction=nonstopmode',
    \   '-pdf',
    \   '-verbose',
    \ ]
    \}
    " \   '-pdflatex="xelatex --enable-8bit-chars --shell-escape %O %S"',
    " \   '-file-line-error',
    " \   '-synctex=1',
    " \   '-interaction=nonstopmode',
    " \   '-pdf',
    " \   '-verbose',
    " \   '-output-driver=xdvipdfmx -z3',
let g:vimtex_quickfix_mode=0
let g:vimtex_fold_enabled = 1
let g:vimtex_format_enabled = 1

" Deoplete style
call deoplete#custom#var('omni', 'input_patterns', {
				\ 'tex': g:vimtex#re#deoplete
				\})


" vim-auto-save
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave"]
" augroup ft_markdown
"   au!
"   au FileType tex,asciidoc let b:auto_save = 1
" augroup END

"
" ctrlp
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_files = 200000
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore=vendor --ignore images --ignore fonts -g ""'
    let g:ctrlp_use_caching = 0
else
    let g:ctrlp_clear_cache_on_exit = 0
endif

" asciidoctor
let g:asciidoctor_pdf_executable = 'asciidoctor-pdf'
let g:asciidoctor_pdf_themes_path = '~/.adoc'
let g:asciidoctor_folding = 1
let g:asciidoctor_fold_options = 1
let g:asciidoctor_fenced_languages = ['python', 'r']

" ALE
let g:ale_completion_enabled = 0
let g:ale_linters = {
	\ 'python': ['pyls', 'flake8', 'pylint']
	\ }
let g:ale_python_pylint_options = '--rcfile ~/.pylintrc'
let g:ale_fixers = {
			\ 'python': ['black']
			\ }
let g:ale_fix_on_save = 0
nmap <F8> <Plug>(ale_fix)

" call deoplete#custom#option('sources', {
" 	\ '_': ['ale']
" 	\})

" Deoplete
let g:deoplete#enable_at_startup = 1
" let g:float_preview#docked	 = 1
autocmd CompleteDone * silent! pclose!
set completeopt-=preview


let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
" set background=dark
set background=light
colorscheme solarized8

au Filetype python set textwidth=0

" au Filetype tex 
" 	\ set tabstop=2 |
" 	\ set shiftwidth=2 |
" 	\ set softtabstop=2 |

""Set up experience
filetype plugin indent on 
set relativenumber
set number
set wrap
set textwidth=78
set tabstop=2
set expandtab
set smarttab
set ai
set si
set shiftwidth=2
set softtabstop=2
set colorcolumn=80                  " show right margin indicator
set autowrite
set history=700                     " keep 700 lines of command line history
set undolevels=700                  " keep 700 lines of undo
set spell                          	" spell checker
set spellsuggest=10                 " number of alternative spellings
set clipboard=unnamed
set smartcase
setlocal spell spelllang=en_gb
set encoding=utf-8

" Keybindings
map <C-n> :NERDTreeToggle<CR>

" tidy short cut for spelling
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

silent! helptags ALL
 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source ~/.vim/keymap.vim
"
" Plug 'klen/python-mode'
" Plug 'lambdalisue/vim-pyenv'
" Plug 'habamax/vim-asciidoctor'
"
" let g:UltiSnipsSnippetsDir= $HOME . "/.vim/snips"
"
" let g:vimtex_matchparen_enabled = 0
" let g:vimtex_fold_manual = 1
"
" " Autocompletion configuration
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"set nocompatible
"set shortmess+=I                              " turn off opening splash screen
"set nohlsearch                                " don't highlight search results
"set autowrite
"set wrap                                      " auto wrap
"set textwidth=78                              " set wrap width to 78
"set backspace=indent,eol,start                " allow backspace to join lines
"set ts=2                                      " set tapstop to 2 spaces
"set sw=2                                      " set shiftwrap to 2 spaces
"set bs=2                                      " allow backspacing over everything in insert mode
"set viminfo='20,\"50  												" read/write a .viminfo file, don't store more
"set viminfo='20,<50,s10,h,%,n~/.cache/viminfo " than 50 lines of registers
"set ignorecase
"set scrolloff=5							
"set foldenable
"set laststatus=2
