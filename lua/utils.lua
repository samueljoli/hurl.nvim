local utils = {}

function utils.define_syntax()
  vim.cmd('syntax keyword method GET POST PUT DELETE CONNECT OPTIONS TRACE PATCH LINK UNLINK PURGE LOCK UNLOCK PROPFIND VIEW nextgroup=url skipwhite')
  vim.cmd('syntax match url "\\S\\+" contained')
  vim.cmd('syntax match version "HTTP" nextgroup=status skipwhite')
  vim.cmd('syntax match version "HTTP/1\\.0" nextgroup=status skipwhite')
  vim.cmd('syntax match version "HTTP/1]\\.1" nextgroup=status skipwhite')
  vim.cmd('syntax match version "HTTP/2" nextgroup=status skipwhite')
  vim.cmd('syntax match version "HTTP/]\\*" nextgroup=status skipwhite')
  vim.cmd('syntax match status "[0-9]\\+" contained')
  vim.cmd('syntax match comment "#.*$"')
  vim.cmd('syntax match section "\\[QueryStringParams\\]"')
  vim.cmd('syntax match section "\\[FormParams\\]"')
  vim.cmd('syntax match section "\\[MultipartFormData\\]"')
  vim.cmd('syntax match section "\\[Cookies\\]"')
  vim.cmd('syntax match section "\\[Captures\\]"')
  vim.cmd('syntax match section "\\[Asserts\\]"')
  vim.cmd('syntax match section "\\[Options\\]"')
end


function utils.auto_commands()
  vim.cmd('augroup hurl')
  vim.cmd('autocmd!')
  vim.cmd('autocmd BufNewFile,BufRead *.hurl set filetype=hurl')
  vim.cmd('augroup END')

  vim.cmd('augroup hurl_syntax')
  vim.cmd('autocmd!')
  vim.cmd('autocmd FileType hurl lua define_syntax()')
  vim.cmd('augroup END')
end

return utils
