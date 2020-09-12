" This allows you to visually select a section and then hit @ to run a macro
" on all lines. Only lines which match will change. Without this script the
" macro would stop at lines which don’t match the macro.

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
