" Made by Wer 
" You can modify as much as you want, this is not licensed afterall lol :D 
" happy customizing!



"-------------------- Plugins Section --------------------
call plug#begin()
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
"Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/xiyaowong/nvim-transparent.git'
Plug 'nvim-lua/plenary.nvim'
Plug 'mrjones2014/load-all.nvim'
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
set guifont=RobotoMono\ NF:h12
set termguicolors
lua require'nvim-tree'.setup()
"lua require'transparent'.setup()

nnoremap <F12> :NvimTreeToggle<CR>
"nnoremap <F12> :NERDTreeToggle<CR>
nnoremap <F10> :FloatermToggle<CR>
nnoremap <ScrollWheelDown> j
nnoremap <ScrollWheelUp> k
nnoremap ! :Dashboard<CR>

"------------------- LightLine Settings ---------------
let g:lightline = {
			\'colorscheme' : 'gruvbox',
			\ }

"------------------ Dashboard settings ---------------
let g:dashboard_default_executive ='clap'
if !has('gui_running')
  set t_Co=256
endif






"-------------- Nvim-Tree Settings -----------------------"

let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }


highlight NvimTreeFolderIcon guibg=green

let g:nvim_tree_add_trailing = 1




"------------------Coc settings -----------------"
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction





