syntax enable

set backspace=indent,eol,start			"Make backspace behave like every other editor"
let mapleader = ','				"The default leader is \, but a comma is much better


"----------Visuals---------"
set number
set t_CO=256					"use 256 colors.
colorscheme atom-dark


"----------Search---------"
set hlsearch					"Highlight search matching pattern
set incsearch					"Search automatically by any new input on search mode


"----------Split Management---------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J> 				"use ctrl + j to focus on inferior splitted screen"
nmap <C-K> <C-W><C-K>				"use ctrl + k to focus on superior splitted screen"
nmap <C-H> <C-W><C-H>				"use ctrl + h to focus on left side splitted screen"
nmap <C-L> <C-W><C-L> 				"use ctrl + l to focus on right side splitted screen"


"----------Mappings---------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>		"Make it easy to edit vimrc file
nmap <Leader><space> :nohlsearch<cr>		"Remove highlight from search


"------Auto-Commands----"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %		"Automatically source the Vimrc file on save
augroup END
