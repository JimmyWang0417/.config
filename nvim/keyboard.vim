" Direction Key
"   i
" j k  l
noremap i k
noremap j h
noremap k j
noremap h i
noremap I 5k
noremap J 5h
noremap K 5j
noremap L 5l
noremap H I
noremap = nzz
noremap - Nzz

" File operation
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <C-a> <Esc>ggVG
map <C-x> <Esc>SQ
map <C-p> <Esc>:e 

" Tabe 
map tn :tabe<CR>
" (jl)
map tj :-tabnext<CR>
map tl :+tabnext<CR>
" (Left,Right,Up,Down)
map t<Left> :-tabnext<CR>
map t<Right> :+tabnext<CR>

" Spliting
" Spliting (jkli)
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map mj <C-w>h
map ml <C-w>l
map mi <C-w>k
map mk <C-w>j
" Spliting (Left,Right,Up,Down)
map s<Left> :set nosplitright<CR>:vsplit<CR>
map s<Right> :set splitright<CR>:vsplit<CR>
map s<Up> :set nosplitbelow<CR>:split<CR>
map s<Down> :set splitbelow<CR>:split<CR>
map m<Left> <C-w>h
map m<Right> <C-w>l
map m<Up> <C-w>k
map m<Down> <C-w>j

" NERDTree
map tt :NERDTree<CR>

" format
map <F3> :call Format()<CR>
func! Format()
exec "w"
    if &filetype == 'c'
        :ClangFormat
    elseif &filetype == 'cpp'
        :ClangFormat
    elseif &filetype == 'python'
        exec '!python -m black %'
        exec 'e'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc 

" Compile
map <F5> :call Compile()<CR>
func! Compile()
exec "w"
    if &filetype == 'c'
        exec '!g++ % -o %<'
    elseif &filetype == 'cpp'
        exec '!g++ -Wall -Wextra -Wshadow -Wconversion -std=c++14 -O2 % -o %<'
    elseif &filetype == 'python'
        exec '!python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc 

" Run
map <F6> :call Run()<CR>
func! Run()
exec "w"
    if &filetype == 'c'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time !python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc


" Compile and Run

map <F7> :call CompileRunGcc()<CR>

func! CompileRunGcc()
exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc 
