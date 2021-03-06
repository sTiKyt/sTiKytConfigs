" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" START OF PLUG SECTION
call plug#begin('~/.config/nvim/autoload/plugged')
	" Better Syntax
	Plug 'sheerun/vim-polyglot'
	" Autopairs for brackets, parenheses and quotes
	Plug 'jiangmiao/auto-pairs'
	" Airline status/tabline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Adds Pydocstring generator
	Plug 'heavenshell/vim-pydocstring', {'do': 'make install'}
	" Whitespace highlighting
	Plug 'ntpeters/vim-better-whitespace'
	" Makes parentheses amd brackets color-coded
	Plug 'junegunn/rainbow_parentheses.vim'
	" Asynchronous displaying of colours in the file
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }	
	" Syntax plugin for plain-text notes
	Plug 'junegunn/vim-journal'
	" Syntax highlighting of toml
	Plug 'cespare/vim-toml'
	" Installation of tender theme
	Plug 'jacoborus/tender.vim'
	" Nodejs extension host
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Coc Jedi for Python
	Plug 'pappasam/coc-jedi', {'do':'yarn install --frozen-lockfile && yarn build'}


	" Add file type icons to Vim plugins, make sure to run it last!
	Plug 'ryanoasis/vim-devicons'
	

	" END OF PLUG SECTION
call plug#end()
