local api = vim.api

local M = {}

function M.setup()
  api.nvim_command("syntax enable")

  -- Define syntax groups
  api.nvim_command("syntax keyword hurlMethod GET POST PUT DELETE CONNECT OPTIONS TRACE PATCH LINK UNLINK PURGE LOCK UNLOCK PROPFIND VIEW nextgroup=hurlURL skipwhite")
  api.nvim_command("syntax match hurlURL '\\S\\+' contained")
  api.nvim_command("syntax match hurlVersion 'HTTP' nextgroup=hurlStatus skipwhite")
  api.nvim_command("syntax match hurlVersion 'HTTP/1\\.0' nextgroup=hurlStatus skipwhite")
  api.nvim_command("syntax match hurlVersion 'HTTP/1\\.1' nextgroup=hurlStatus skipwhite")
  api.nvim_command("syntax match hurlVersion 'HTTP/2' nextgroup=hurlStatus skipwhite")
  api.nvim_command("syntax match hurlVersion 'HTTP/\\*' nextgroup=hurlStatus skipwhite")
  api.nvim_command("syntax match hurlStatus '[0-9]\\+' contained")
  api.nvim_command("syntax match hurlComment '#.*$'")
  api.nvim_command("syntax match hurlSection '\\[QueryStringParams\\]'")
  api.nvim_command("syntax match hurlSection '\\[FormParams\\]'")
  api.nvim_command("syntax match hurlSection '\\[MultipartFormData\\]'")
  api.nvim_command("syntax match hurlSection '\\[Cookies\\]'")
  api.nvim_command("syntax match hurlSection '\\[Captures\\]'")
  api.nvim_command("syntax match hurlSection '\\[Asserts\\]'")
  api.nvim_command("syntax match hurlSection '\\[Options\\]'")

  api.nvim_command("syntax keyword hurlOperator == != > >= < <= not")
  api.nvim_command("syntax keyword hurlQuery hurlStatus hurlURL header cookie body jsonpath xpath regex variable duration sha256 md5 bytes")
  api.nvim_command("syntax keyword hurlPredicate startsWith endsWith matches exists includes isInteger isFloat isBoolean isString isCollection")
  api.nvim_command("syntax match hurlPredicate 'contains'")
  api.nvim_command("syntax keyword hurlFilter count regex urlEncode urlDecode htmlEscape htmlUnescape")
  api.nvim_command("syntax match hurlEscapeNumberSign '\\\\#'")
  api.nvim_command("syntax match hurlEscapeQuote '\\\\\"'")
  api.nvim_command("syntax region hurlString start='\"' end='\"' contains=hurlEscapeQuote")
  api.nvim_command("syntax region hurlString start='```' end='```'")
  api.nvim_command("syntax include @jsonSyntax syntax/json.vim")
  api.nvim_command("syntax region hurlJson start='{' end='}' contains=@jsonSyntax contained")
  api.nvim_command("syntax region hurlTemplate start='{{' end='}}'")

  -- Link syntax groups to highlight groups
  api.nvim_command("highlight link hurlComment Comment")
  api.nvim_command("highlight link hurlMethod Statement")
  api.nvim_command("highlight link hurlURL Underlined")
  api.nvim_command("highlight link hurlVersion Statement")
  api.nvim_command("highlight link hurlStatus Number")
  api.nvim_command("highlight link hurlSection Statement")
  api.nvim_command("highlight link hurlOperator Operator")
  api.nvim_command("highlight link hurlString String")
  api.nvim_command("highlight link hurlQuery Identifier")
  api.nvim_command("highlight link hurlFilter Operator")
  api.nvim_command("highlight link hurlPredicate Operator")
end

return M
