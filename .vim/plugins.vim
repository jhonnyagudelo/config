call plug#begin('~/.vim/plugged')
"syntax
Plug 'sheerun/vim-polyglot'
Plug 'yuezk/vim-js'

Plug 'maxmellon/vim-jsx-pretty'

Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'


"Status bar

Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"Temas
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"tree
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-repeat'



Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-signify'

"Funcionalidad
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'

"Plug 'gko/vim-coloresque'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \   'do': 'yarn install',
  \   'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
  \ }
"PHP Plugines"
Plug 'editorconfig/editorconfig-vim'
Plug 'noahfrederick/vim-composer'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'ap/vim-css-color'
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
"Plug 'jwalton512/vim-blade'
call plug#end()
