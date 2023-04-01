local hurl = {}

function hurl.setup()
  -- Set the filetype for Hurl files to "hurl"
  vim.cmd('autocmd BufNewFile,BufRead *.hurl set filetype=hurl')

  -- Load the syntax highlighting rules
  require'hurl.syntax'.setup()
end

return hurl
