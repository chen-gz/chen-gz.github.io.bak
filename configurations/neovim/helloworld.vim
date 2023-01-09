function! CompileAndRun()
    execute "w"
    if &filetype == 'cpp'
        execute "w"
        execute "!cmake -G Ninja -B build ."
        execute "!cmake --build ./build"
        silent execute "vsplit"
        execute "terminal ./build/main"
    endif
    if &filetype == 'python'
        execute "w"
        execute "vsplit"
        execute "terminal python %"
        "execute '!python @%'
    endif
endfunction

function! OpenTerminal()
    execute "w"
    execute "vsplit"
    execute "terminal"
endfunction

command! CompileAndRun call CompileAndRun()
command! OpenTerminal call OpenTerminal()
nnoremap <F5> :CompileAndRun<CR>

nnoremap <C-t> :OpenTerminal<CR>
set conceallevel=0
