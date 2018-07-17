let s:save_cpo = &cpoptions
set cpoptions-=C

setlocal conceallevel=2

let b:undo_ftplugin = (exists("b:undo_ftplugin") ? b:undo_ftplugin . "|" : "") .
    \ "setlocal conceallevel<"

let &cpoptions = s:save_cpo
unlet s:save_cpo
