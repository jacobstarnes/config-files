
" Search down in to subfolders
"Provides tab-comlplete for all file-related tasks
""set" changes a built in configuration variable
""+=" means append it to the existing value of path
"two starts means 'search through every subdirectory and subdirectory of subdirectories
set path+=**
"show line numbers
set number
"highlight current line
set cursorline
"highlight matching [{()}]
set showmatch
"search as characters are entered
set incsearch
"highlight matches
set hlsearch
"remove highlighted matches
nnoremap <leader><space> :nohlsearch<CR>

"Display all matching files when we tab complete
set wildmenu
"NOW WE CAN:
"-hit tab to :find by partial match
"- Use * to make it fuzzy
"- :b lets you autocomplete any open buffer!

" TAG JUMPING:
" create the 'tags' files (may need to install ctags first) command! MakeTags !ctags -R .
" !ctags exclamation point causes it to run as a shell command.
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
"VIM PLUG:
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/gregsexton/MatchTag.git'
call plug#end()
" SNIPPETS:
" #########
"Turn on filetype intend
"Change tab settings for html files
" #########
filetype indent on
autocmd Filetype html setlocal noexpandtab tabstop=2 sw=2 sts=2
"Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>4jwf>a
nnoremap ,php :-1read $HOME/.vim/.skeleton.php<CR>9ji
"inoremap ( ()
"inoremap <Caps Lock> <Esc>
nnoremap ,s :w<CR>
nnoremap ,br iecho "<br>";<CR><Esc>
nnoremap ; :
nnoremap ,x :q<CR>
inoremap jj <Esc>
inoremap <?php <?php<CR><CR>?><Esc>ko
vnoremap <C-n> :norm 
"colorscheme desert
