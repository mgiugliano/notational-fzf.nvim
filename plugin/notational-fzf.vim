if exists('g:loaded_notationalfzf')
  finish
endif

command! -nargs=* -complete=custom,v:lua.require'notationalfzf.command'.complete_args
            \ Notational lua require("notationalfzf.command")._command(<f-args>)

let g:loaded_notationalfzf = 1
