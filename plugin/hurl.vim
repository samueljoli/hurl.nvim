if exists('g:loaded_hurl')
  finish
endif

let g:loaded_hurl = 1

augroup hurl_syntax
  autocmd!
  autocmd FileType hurl lua require'hurl.syntax'.setup()
augroup END

