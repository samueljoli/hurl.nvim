local utils = require('hurl.utils')

local hurl = {}

function hurl.setup()
  vim.cmd('packadd! hurl')

  utils.define_sync()

  utils.auto_commands()
end

return hurl
