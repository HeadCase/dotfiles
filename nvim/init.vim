" Vim config file
"
" Keybindings
source ~/.vim/keymap.vim

" Setup plugin system using vimPlug
let g:python3_host_prog = '/Users/gheadley/.pyenv/versions/3.7.4/bin/python'
let g:python_host_prog = '/Users/gheadley/.pyenv/versions/2.7.16/bin/python'

call plug#begin('~/.vim/plugged')

" Look 'n Feel
Plug 'itchyny/lightline.vim'
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'


call plug#end()

" Plugin customisation

" lightline
let g:lightline = {
      \ 'colorscheme': 'gwh1_solarized'
      \ }
let g:tmuxline_preset = 'powerline'
let g:tmuxline_theme = 'lightline'
autocmd VimEnter * Tmuxline lightline

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
" call deoplete#custom#var('omni', 'input_patterns', {
" 				\ 'tex': g:vimtex#re#deoplete
" 				\})

" Conqueror of Completion
source $HOME/.vim/plug-config/coc.vim

" vim-auto-save
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave"]
" augroup ft_markdown
"   au!
"   au FileType tex,asciidoc let b:auto_save = 1
" augroup END

" vim-ripple
let g:ripple_winpos = 'vertical bo'    " Open REPL on RHS

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


" set background=dark
set background=light
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme solarized8
highlight Comment cterm=italic gui=italic


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

