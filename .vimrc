set nocompatible
"set termguicolors
filetype plugin on
syntax on
colorscheme desert
set mouse=a
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noshiftround
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
"runtime! macros/matchit.vim
set hidden
set ttyfast
set laststatus=2
set splitbelow
set showmode
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set t_Co=256
set background=dark
set guicursor=
let g:hybrid_termcolors=256
let g:hybrid_termtrans=1
colorscheme  gruvbox "molokai
let g:rehash256 = 1
"let g:molokai_original = 1
hi Normal ctermbg=none
call plug#begin('~/.vim/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'bagrat/vim-workspace'
Plug 'morhetz/gruvbox'
"Plug 'noahfrederick/vim-laravel'
Plug 'nono/jquery.vim'
Plug 'stanangeloff/php.vim'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'xolox/vim-misc'
Plug 'valloric/youcompleteme'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'yggdroot/indentline'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/L9'
Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/dynamicsigns'
Plug 'valloric/matchtagalways'
Plug 'danro/rename.vim'
"Plug 'skywind3000/quickmenu.vim'
Plug 'lilydjwg/colorizer'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'myusuf3/numbers.vim'
Plug 'chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'roxma/vim-paste-easy'
Plug 'junegunn/vim-peekaboo'
Plug 'dohsimpson/vim-macroeditor'
Plug 'wincent/command-t'
Plug 'scrooloose/syntastic'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'unblevable/quick-scope'
Plug 'mortonfox/nerdtree-clip'
Plug 'diepm/vim-rest-console'
"Plug 'nicwest/qq.vim'
"Plug 'baverman/vial'
"Plug 'baverman/vial-http'
"Plug 'diepm/vim-rest-console'
"Plug 'ajh17/vimcompletesme'
"Plug 'hecal3/vim-leader-guide'
Plug 'liuchengxu/vim-which-key'
call plug#end()
"let g:ycm_python_binary_path = '/usr/bin/python3.6'
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<PageDown>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<PageUp>']
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSearchPaths=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:NERDTreeWinPos = "right"
let NERDTreeShowBookmarks=1
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬,precedes:«,extends:»
let g:vietnam1 = 1
function! Paste()
	if g:vietnam1
		let g:vietnam1 = 0
		set paste
	else
		let g:vietnam1 = 1
		set nopaste
	endif
endfunction
let g:tabtospace = 0
function! Tabtospace()
	if g:tabtospace
		let g:tabtospace = 0
		set expandtab!
	else
		let g:tabtospace = 1
		set expandtab
	endif
endfunction
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#show_splits = 0
set relativenumber
let g:ycm_auto_trigger = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filetype_specific_completion_to_disable = {
			\ '*': 1
			\}
set tags=./tags,tags
augroup vimrc
	autocmd!
	autocmd BufWinEnter,Syntax * syn sync minlines=43 maxlines=300
augroup END
set foldmethod=indent
set winminwidth=20
set foldlevelstart=20
"set cursorline
"set colorcolumn=51,101
autocmd InsertEnter * :NumbersToggle
autocmd InsertLeave * :NumbersToggle
let g:formatdef_my_custom_php = '"php /home/vimojnguoi/.config/composer/vendor/bin/php-cs-fixer fix "'
let g:formatters_php = ['my_custom_php']
"au BufWrite * :Autoformat
"au BufWinEnter *.* :NERDTreeTabsFind
"au BufRead *.* :NERDTreeTabsFind
let g:peekaboo_window = 'botright 30new'
let g:peekaboo_compact=0
command! -nargs=1 MacroDelete call let @<args> = ''
command! -nargs=1 Upadir execute 'ter++close /home/vimojnguoi/pluginvimforgit/upgit.sh <args>'
let g:syntastic_php_checkers = ['php','phpmd']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '/home/vimojnguoi/node_modules/eslint/bin/eslint.js'
let g:airline_theme='zenburn'
let vrc_horizontal_split=1
set linebreak
nnoremap j gj
nnoremap k gk
map <leader>/ :let @/=''<cr>
"map <leader>- :call feedkeys("\<Plug>NERDCommenterToggle")<cr>
"map <leader>q gqip
"map <leader>[ :vertical resize<CR>
"map <leader>] <C-w>=
let g:vrc_curl_opts={
	\'--include': '',
	\'--location': '',
	\'--show-error': '',
	\'--silent': ''
\}
map <C-c> y:call system('xclip -sel clip', @0)<CR>
map <leader>= :'<,'>!/home/vimojnguoi/pluginvimtestapi/jq-linux64<CR>
"map <leader>p :call quickmenu#bottom('Search')<cr>
set textwidth=1000
let g:qs_highlight_on_keys = ['f', 'F']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" Define prefix dictionary
let g:which_key_map =  {}
let g:maplocalleader = ','
"add menu file
let g:which_key_map.f = {
			\'name' : '+File',
			\ 's' : [":w", 'save'] ,
			\ 'w' : [":w !sudo tee %", 'save with sudo'] ,
			\ 'r' : ["call feedkeys(':Rename!')", 'Rename'] ,
			\ 'v' : [":vsplit", 'vsplit window'] ,
			\ 't' : [":tabnew", 'new tab window'] ,
			\ 'q' : [":q", 'close buffer tab split'] ,
			\ 'a' : [":qa!", 'close all buffer tab split'] ,
			\ '0' : [":mksession! ~/.vim/mysession.vim ", 'make session'] ,
			\ '1' : [":source ~/.vim/mysession.vim", 'reopen session'] ,
			\}
"add menu search
let g:which_key_map.s = {
			\'name' : '+Search',
			\ 'f' : [":Files", 'search file'] ,
			\ 'l' : [":BLines", 'search line'] ,
			\ 'i' : [":BTags", 'search index in buffer'] ,
			\ 't' : ["call feedkeys(':Ag ')", 'search text'] ,
			\ 'r' : ["call feedkeys(':\%s/ / /')", 'replace text'] ,
			\ 'c' : [":Commands", 'search commands'] ,
			\ '1' : [":Ag function", 'search function'] ,
			\ '2' : [":Ag public function", 'search public function'] ,
			\ '3' : [":Ag namespace", 'search namespace'] ,
			\ '4' : [":Ag class", 'search class'] ,
			\ 'u' : [":let @/=''", 'unhighlight search text'] ,
			\}
"add menu nerdtree
let g:which_key_map.n = {
			\'name' : '+Nerdtree',
			\ 't' : [":NERDTreeTabsToggle", 'toggle nerdtree'] ,
			\ 'r' : [":NERDTreeRefreshRoot", 'refresh nerdtree'] ,
			\ 'e' : [":NERDTreeTabsFind", 'expandtab nerdtree'] ,
			\}
"add menu resize window
let g:which_key_map.r = {
			\'name' : '+Resize window',
			\ 'f' : [":vertical resize", 'max size vplit'] ,
			\ 'd' : ["<C-w>=", 'default size'] ,
			\}
"add menu edit
let g:which_key_map.e = {
			\'name' : '+Edit',
			\ 'b' : [":Autoformat &filetype", 'beautiful code'] ,
			\ 'c' : ['call feedkeys("\<Plug>NERDCommenterToggle")', 'toggle comment'] ,
			\ '=' : [":EasyAlign=is", 'Align char'] ,
			\}
"add menu debug
let g:which_key_map.d = {
			\'name' : '+Debug',
			\ 'r' : [":call VrcQuery()", 'run debug request'] ,
			\ 'o' : [":call system('test -f test.rest || cp /home/vimojnguoi/pluginvimtestapi/test.rest test.rest') | e test.rest", 'open file request'] ,
			\}
"add menu move buffer
let g:which_key_map.b = {
			\'name' : '+Move buffer',
			\ '1' : ["1gt", 'move to buffer 1'] ,
			\ '2' : ["2gt", 'move to buffer 2'] ,
			\ '3' : ["3gt", 'move to buffer 3'] ,
			\ '4' : ["4gt", 'move to buffer 4'] ,
			\ '5' : ["5gt", 'move to buffer 5'] ,
			\ '6' : ["6gt", 'move to buffer 6'] ,
			\ '7' : ["7gt", 'move to buffer 7'] ,
			\ '8' : ["8gt", 'move to buffer 8'] ,
			\}
"add menu git
let g:which_key_map.g = {
			\'name' : '+Git',
			\ '1' : [":ter++close git diff", 'show diff'] ,
			\ '2' : [":Gblame", 'show commit in line'] ,
			\ '3' : [":GitGutterLineHighlightsToggle", 'toggle highlight diff in buffer'] ,
			\ '4' : [":ter++close /home/vimojnguoi/pluginvimforgit/upgit.sh", 'up to git'] ,
			\ '5' : [":ter++close /home/vimojnguoi/pluginvimforgit/downdefault.sh", 'down to git'] ,
			\ '6' : [":ter++close /home/vimojnguoi/pluginvimforgit/undo.sh", 'undo and redo git'] ,
			\ '7' : [":ter++close /home/vimojnguoi/pluginvimforgit/branch.sh", 'branch'] ,
			\ '8' : ["call feedkeys(':!git merge')", 'merge'] ,
			\ '9' : [":ter++close /home/vimojnguoi/pluginvimforgit/gitconfig.sh", 'config git'] ,
			\}
"add menu confi
let g:which_key_map.c = {
			\'name' : '+Config editor',
			\ 's' : [":UltiSnipsEdit"        , 'edit snippet']        ,
			\ 'a' : ["call feedkeys(':UltiSnipsAddFiletypes')", 'add new snippet'] ,
			\ 'm' : ["call feedkeys(':MacroEdit')", 'edit macro'] ,
			\ 'r' : ["call feedkeys(':MacroDelete')", 'delete macro'] ,
			\ 'o' : [":e /home/vimojnguoi/.config/nvim/init.vim"        , 'open config nvim']        ,
			\ 'c' : [":so % | PlugClean"        , 'Clean Trash']        ,
			\ 'i' : [":so % | PlugInstall"        , 'Install pack']        ,
			\ 'l' : [":set list!"        , 'toggle char hidden']        ,
			\}
call which_key#register(',', 'g:which_key_map')
nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0
			\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"menu search
"call g:quickmenu#current('Search')
"call g:quickmenu#header('Search manager')
"call g:quickmenu#append('Search file', 'Files', '')
"call g:quickmenu#append('Search text in line buffer ','BLines','')
"call g:quickmenu#append('Search text index in buffer','BTags','')
"call g:quickmenu#append('Search text', 'silent !screen -S vim -p 0 -X stuff ":Ag " ', '')
"call g:quickmenu#append('Replace text in buffer','silent !screen -S vim -p 0 -X stuff ":\%s/ / /"','')
"call g:quickmenu#append('Search Commands', 'Commands', '')
"call g:quickmenu#append('Search function', 'Ag function', '')
"call g:quickmenu#append('Search public function', 'Ag public function', '')
"call g:quickmenu#append('Search namespace', 'Ag namespace', '')
"call g:quickmenu#append('Search class', 'Ag class', '')
""menu manager snippet and macro
"call g:quickmenu#current('Snippetmacro')
"call g:quickmenu#header('Snippet and macro manager')
"call g:quickmenu#append('Edit a macro','silent !screen -S vim -p 0 -X stuff ":MacroEdit " ','')
"call g:quickmenu#append('Delete a macro','silent !screen -S vim -p 0 -X stuff ":MacroDelete " ','')
"call g:quickmenu#append('Edit a snippets', 'UltiSnipsEdit', '')
"call g:quickmenu#append('Add a snippets', 'silent !screen -S vim -p 0 -X stuff ":UltiSnipsAddFiletypes " ', '')
""menu nerdtree
"call g:quickmenu#current('nerdtree')
"call g:quickmenu#header('Nerdtree manager')
"call g:quickmenu#append('Toggle nerdtree', 'NERDTreeTabsToggle', '')
"call g:quickmenu#append('Expand nerdtree with buffer', 'NERDTreeTabsFind', '')
"call g:quickmenu#append('Refresh nerdtree', 'NERDTreeRefreshRoot', '')
""menu git
"call g:quickmenu#current('git')
"call g:quickmenu#header('Git manager')
"call g:quickmenu#append('Show diff', ':ter++close git diff', '')
"call g:quickmenu#append('Show commit in line', 'Gblame', '')
"call g:quickmenu#append('Toggle hightlight diff in buffer', 'GitGutterLineHighlightsToggle', '')
"call g:quickmenu#append('Up', ':ter++close /home/vimojnguoi/pluginvimforgit/upgit.sh', '')
"call g:quickmenu#append('Down ', ':ter++close /home/vimojnguoi/pluginvimforgit/dowdefault.sh', '')
"call g:quickmenu#append('Undo and redo(redo first up remote) ', ':ter++close /home/vimojnguoi/pluginvimforgit/undo.sh', '')
"call g:quickmenu#append('Branch', ':ter++close /home/vimojnguoi/pluginvimforgit/branch.sh', '')
"call g:quickmenu#append('Merge', 'silent !screen -S vim -p 0 -X stuff ":\!git merge " ', '')
"call g:quickmenu#append('Config git', ':ter++close /home/vimojnguoi/pluginvimforgit/gitconfig.sh', '')
"map <F1>  :w <CR>
"map <F2>  :call quickmenu#bottom('window') <CR>
"map <F10> :call quickmenu#bottom('nerdtree')<cr>
"map <F11> :call quickmenu#bottom('git')<cr>
"map <F12> :call quickmenu#bottom('Snippetmacro')<cr>

