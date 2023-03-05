" CURLIN .vimrc rev. 3
" 02/02/2023

"test123

" settings ======================================================================================================= {{{

" automatically refresh buffer when modified on disk
" source : https://superuser.com/a/1286322
" :set autoread | au CursorHold * checktime | call feedkeys("lh")

" disable compatibility with vi which can cause unexpected issues.
set nocompatible

" enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" enable plugins and load plugin for the detected file type.
filetype plugin on

" load an indent file for the detected file type
filetype indent on

" turn syntax highlighting on.
syntax on

" highlight cursor line underneath the cursor horizontally
set cursorline

" highlight cursor line underneath the cursor vertically
set cursorcolumn

" add numbers to each line on the left-hand side
set number

" set shift width to 4 spaces
set shiftwidth=4

" set tab width to 4 columns
set tabstop=4

" use space characters instead of tabs
set expandtab

" do not save backup files
set nobackup

" do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10

" do not wrap lines. Allow long lines to extend as far as the line goes
set nowrap

" while searching through a file, incrementally highlight matching characters as you type
set incsearch

" ignore capital letters during search
set ignorecase

" override the ignorecase option if searching for capital letters. (Allows specific searches for capital letters)
set smartcase

" show partial command you type in the last line of the screen
set showcmd

" show matching words during a search.
set showmatch

" use highlighting when doing a search
set hlsearch

" set the commands to save in history [default = 20]
set history=1000

" enable auto completion menu after pressing TAB.
set wildmenu

" make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" wildmode will ignore files with these extensions (files that are never usually edited with vim)
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" (settings go here)

" }}}

" plugins ======================================================================================================== {{{

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" vim-plug plugin manager
call plug#begin('~/vim/plugged')

" airline
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline/'   [OLD THEME - 02_02_23]

" gruvbox color scheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'morhetz/gruvbox'    [OLD THEME - 02_02_23]

" nerdTree (w/ custom git plugin)
Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" tmuxline.vim - https://github.com/edkolev/tmuxline.vim
Plug 'edkolev/tmuxline.vim'

" Vimspector debugger
Plug 'puremourning/vimspector'

let g:NERDTreeGitStatusUseNerdFonts = 1

call plug#end()

" (plugins go here)

" }}}

" mappings ======================================================================================================= {{{

" vim-tmux-navigator bindings - https://github.com/christoomey/vim-tmux-navigator
"let g:tmux_navigator_no_mappings = 1
noremap <silent> <C-H> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-J> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-K> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-L> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <C-P> :<C-U>TmuxNavigatePrevious<cr>


" open vim-powered terminal in split window
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" open vim-powered terminal in new tab
map<Leader>T :tab term ++close<cr>
tmap<Leader>T <c-w>:tab term ++close<cr>

" escape key remapped to 'kj'
inoremap kj <esc>

" (mappings go here)

" }}}

" vimscript ====================================================================================================== {{{

" enable code folding (use marker method of folding)
augroup filetype_vim
    autocmd!
    autocmd! FileType vim setlocal foldmethod=marker
augroup END

" (vimscript code goes here)

" }}}

" status line ==================================================================================================== {{{

" lightline status bar theme [wombat]
let g:lightline = { 'colorscheme' : 'wombat' }

" clear status line when .vimrc is reloaded
set statusline=

" show the status on the second to last line
set laststatus=2

" hide '-- INSERT --' that shows on bottom line by default in vim (redundant)
set noshowmode


" }}}

" appearance ===================================================================================================== {{{

" Enable True Colors
if (has('termguicolors'))
    set termguicolors
endif

autocmd vimenter * ++nested colorscheme material
let g:material_theme_style = 'darker-community'
let g:material_terminal_italics = 1


" (appearance settings go here)

" }}}

" END OF .VIMRC

