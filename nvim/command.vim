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

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction