" OPTIONS

set number
set list
set relativenumber
set autoindent
set nowrap
set nohlsearch
set noshowmode
set tabstop=2
set shiftwidth=2
set scrolloff=5
set smarttab
set softtabstop=2
set mouse=a
set termguicolors
set clipboard+=unnamedplus
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md,.ex


" FILETYPES


au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.es6 setf javascript


" KEYBINDINGS


nnoremap ;f <cmd>Telescope find_files theme=ivy<CR>
nnoremap ;t :tabnext<Return><C-w>w
nnoremap ;n :tabnew<Return><C-w>w
nnoremap ;c :tabclose<Return><C-w>w
nnoremap ss :split<Return><C-w>w
nnoremap sv :vsplit<Return><C-w>w
nnoremap <C-a> gg<S-v>G

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" PLUGINS


call plug#begin('~/.config/nvim/plugged')
	" OTHERS
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim' 
	Plug 'neovim/nvim-lspconfig'	
	Plug 'cohama/lexima.vim' 
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'kyazdani42/nvim-web-devicons'

	" AUTO COMPLETION
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'hrsh7th/cmp-nvim-lsp'

	" SNIPPETS
	Plug 'L3MON4D3/LuaSnip'
	Plug 'rafamadriz/friendly-snippets'

	" LANGUAGE SUPPORT
	Plug 'elixir-editors/vim-elixir'
	
	" COLORSCHEME	
	Plug 'ayu-theme/ayu-vim'
	Plug 'svrana/neosolarized.nvim'
	Plug 'tjdevries/colorbuddy.nvim'

	" STATUS LINE
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" GIT
	Plug 'lewis6991/gitsigns.nvim'

	" FILE FINDER 
	Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" PLUGIN CONFIGURATION
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1

lua require('gitsigns').setup()

" COLORSCHEME
colorscheme neosolarized
