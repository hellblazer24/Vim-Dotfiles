" Made by Wer 
" You can modify as much as you want, this is not licensed afterall lol :D 
" 
"
"
"
" happy customizing!



"-------------------- Plugins Section --------------------
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'shinchu/lightline-gruvbox.vim'

call plug#end()


"----------General Settings (Keybinds,Colors,etc...)----------


colorscheme gruvbox-material
set number
set encoding=UTF-8
set background=dark
set laststatus=2
set noshowmode
set ruler
set nowrap
set mouse=a
set guifont="RobotoMono NF"

nnoremap <F12> :NERDTreeToggle<CR>
nnoremap <F10> :FloatermToggle<CR>
nnoremap <ScrollWheelDown> j
nnoremap <ScrollWheelUp> k

"------------------- LightLine Settings ---------------
let g:lightline = {
			\'colorscheme' : 'gruvbox',
			\ }

"------------------ Dashboard settings ---------------
let g:dashboard_default_executive ='clap'
if !has('gui_running')
  set t_Co=256
endif
