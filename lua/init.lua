local utils = require('hurl.utils')

local hurl = {}

function hurl.setup()
  utils.define_sync()

  utils.auto_commands()
end

return hurl
