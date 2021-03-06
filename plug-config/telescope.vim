augroup MyCocExplorer
  autocmd!
  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exe 'CocCommand explorer ' . d | endif
  " autocmd BufEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exe 'CocCommand explorer ' . d | exec 'Telescope file_browser' | endif
  " autocmd BufEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exec 'Telescope file_browser' | endif
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd BufEnter * if argc() == 0 && !exists("s:std_in") | Telescope file_browser | endif
augroup END
