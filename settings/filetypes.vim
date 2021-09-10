" Docker
autocmd BufRead,BufNewFile Dockerfile set tabstop=2|set softtabstop=2|set shiftwidth=2
autocmd BufRead,BufNewFile docker-compose.yml set tabstop=2|set softtabstop=2|set shiftwidth=2

" DHCP
autocmd BufRead,BufNewFile dhcp*.conf set filetype=dhcpd

" Bareos / Bacula
autocmd BufRead,BufNewFile bareos-*.conf,bacula*.conf	set filetype=bareos

" i3wm
autocmd BufRead,BufNewFile ~/.config/i3/config set filetype=conf
