set background=dark
set noautoindent

" Highlight current line
set cursorline
" Show the filename in the window titlebar
set title
" Show the cursor position
" set ruler
" Highlight dynamically as pattern is typed
set incsearch
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Use relative line numbers
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%121v.\+/

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
autocmd BufWritePre * :%s/\s\+$//e
