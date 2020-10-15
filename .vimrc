"leader
let mapleader =","

"Line numbers
set number
set relativenumber
"Sets tab to 4 spaces
set tabstop=4
set softtabstop=0 noexpandtab

"basic spell cheking
map <leader>o :setlocal spell! spelllang=en_us<CR>
syntax on

"Finds the next '<++>' and deletes and puts in insert by typing 'space' 'tab'
inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l

"Examples of how to used guide 
"quick insert of for loop by typing ',l' in insert mode 
autocmd FileType python inoremap ,z zip()<++><Esc>4hi
autocmd FileType python inoremap ,l for<Space>in<space><++>:<Enter><tab><++><Esc>k0fra<space>

"example when used in with some latex commands
autocmd FileType tex inoremap ,la \begin{align}<Enter>\end{align}<Enter><++><Esc>2ko
autocmd FileType tex inoremap ,li \begin{itemize}<Enter>\end{itemize}<Enter><++><Esc>2ko
autocmd FileType tex inoremap ,i \item 
autocmd FileType tex inoremap ,b \textbf{}<++><Esc>4hi
autocmd FileType tex inoremap ,it \textit{}<++><Esc>4hi
autocmd FileType tex inoremap ,qu \begin{quote}<Enter>\end{quote}<Enter><++><Esc>2ko
autocmd FileType tex inoremap ,m $$<++>4hi
autocmd FileType tex inoremap ,M <Enter>$$ $$<Enter><++><Esc>kf<Space>i 
autocmd FileType tex inoremap ,bi \begin{}<Enter><++><Enter>\end{<++>}<Enter><++><Esc>3kf{a

autocmd FileType tex inoremap ,c \cdot
