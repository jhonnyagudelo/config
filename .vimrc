set title
set relativenumber
syntax enable
set number
set clipboard=unnamed
set numberwidth=1
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set noshowmode
set ignorecase
set smartcase
set spelllang=en,es
set backspace=indent,eol,start 
set splitbelow

call plug#begin('~/.vim/pluggend')
"syntax
Plug 'sheerun/vim-polyglot'

Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'

"Status bar
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"Temas
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"tree
Plug 'scrooloose/nerdtree'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'




Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'
"Plug 'gko/vim-coloresque'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \   'do': 'yarn install',
  \   'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
  \ }
"PHP Plugines
Plug 'noahfrederick/vim-composer'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'ap/vim-css-color'
"Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
"Plug 'StanAngeloff/php.vim', { 'for': 'php' }
"Plug 'jwalton512/vim-blade'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contranst_dark = "hard"

let g:closetag_filenames= '*.html, *.js, *.jsx, *.ts, *.tsx, *.php'

let g:javascript_plugin_flow = 1




" Trigger configuration. You need to change this to something other than <tab>
" if you use one of the following:
" " - https://github.com/Valloric/YouCompleteMe
" " - https://github.com/nvim-lua/completion-nvim
 let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/pluggend/ultisnips']
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<S-tab>"



"NERDTree
let NERDTreeQuitOnOpen=1
let g:airline#extensions#ale#enabled = 1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumber=1
let NERDTreeMapOpenInTab='\t'

"Seleccionar todo
nmap <C-a> <Esc>ggVG<CR>     


"kite
let g:kite_supported_languages = ['javascript', 'python']


"coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd filetype javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

"Archivo de configuracion de .vimrc
nmap <F5> :source ~/.vimrc<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

"establece la version php.vim 
let g:php_html=70406

"no cargar respaldado para html dentro de php
let g:php_html_load=0

let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

"Tecla lider
let mapleader=" "
nmap<Leader>s <Plug>(easymotion-s2)
nmap<Leader>nt :NERDTreeFind<CR>
nmap<Leader>w :w<CR>
nmap<Leader>q :q<CR>
nmap<Leader>wq :wq<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)



"Prettier

"nma <leader>py :Prettier<CR>

nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_path = "~/root/node_modules/.bin/prettier"
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Configuracion Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'



"Lightline
let g:lightline = {
	\ 'Active': {
      	\ 	'left':[['mode', 'paste'],[],['relativepath',',modified']],
	\  	'right':[['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
	\ },
	\ 'inactive': {
	\  	'left':[['inactive'], ['relativepath']],
	\	'right':[['bufnum']]
	\ },
	\ 'component': {
	\	'bufnum': '%n',
	\    	'inactive': 'inactive'
	\ },
	\ 'component_function': {
	\   	'gitbranch': 'fugitive#head',
	\	'kitestatus': 'kite#statusline'
	\ },
	\ 'colorscheme': 'gruvbox',
	\ 'subseparator': {
	\   	'left': '',
	\    	'right': ''
	\ }
        \ }


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


"Use ctrl + space to trigger completion 
if &filetype == "javascript" || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
  else
    inoremap <silent><expr> <c-space> coc#refresh()
endif




" Abrir terminal con Ctrl+t
nnoremap <C-t> :call OpenTerminal()<CR>

"" Función para abrir el terminal
function! OpenTerminal()
  let buf_num = bufnr('%')
  let buf_type = getbufvar(buf_num, '&buftype', 'not found')

  if buf_type == 'terminal'
    execute 'q'
  else
    let terminal_height = winheight(0) / 4 

    "execute terminal_height"sp term://powershell"
    execute terminal_height"sp term://zsh"
   
    " let os_term = 'bash'
    "if has('macunix')
      "let os_term = 'zsh'
    "else
      "let os_term = 'powershell'
    "endif
    "execute terminal_height"sp term://"os_term

    execute "set nonu"
    execute "set nornu"
    execute "set nocursorline"
    
    execute "set signcolumn=no"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!




    "Navegar con CTRL + w + up
    execute "tnoremap <buffer> <C-w><Up> <C-\\><C-n><C-w><C-k>"
    "Cerrar el terminal
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>" 
    "Escapar de modo normal para moverse a traves de la salida
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>" 
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
    
    execute "setlocal nobuflisted"

    startinsert!
  endif
endfunction

" Cerrar terminal inmediatamente (sin mostrar código de salida)
augroup terminal_settings
  autocmd!

  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
  
  autocmd TermClose term://*
    \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
    \   call nvim_input('<CR>') |
    \ endif
augroup END


