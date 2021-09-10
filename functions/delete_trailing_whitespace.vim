" Delete trailing white space on save
func! DeleteTrailingWS()
	exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
