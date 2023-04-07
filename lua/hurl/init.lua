local utils = require('hurl.utils')

local hurl = {}

function hurl.setup(opts)
  opts = opts or {}
  -- Set the filetype for Hurl files to "hurl"
  vim.cmd('autocmd BufNewFile,BufRead *.hurl set filetype=hurl')

  if vim.g.loaded_hurl then
    return
  end

  vim.g.loaded_hurl = 1

  utils.validate_options(opts)

  local opts_string = vim.inspect(opts):gsub("%s+", " ")

  -- set autocommand to load syntax file for hurl filetype
  vim.cmd(string.format([[
    augroup hurl_syntax
      autocmd!
      autocmd FileType hurl lua require('hurl.syntax').setup(%s)
    augroup END
  ]], opts_string))
end

return hurl
