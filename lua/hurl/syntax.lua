local api = vim.api

local M = {}

function M.setup()
  api.nvim_command("syntax enable")

  api.nvim_command("syntax keyword method GET POST PUT DELETE CONNECT OPTIONS TRACE PATCH LINK UNLINK PURGE LOCK UNLOCK PROPFIND VIEW nextgroup=url skipwhite")
  api.nvim_command("syntax match url \"\\S\\+\" contained")
  api.nvim_command("syntax match version \"HTTP\" nextgroup=status skipwhite")
  api.nvim_command("syntax match version \"HTTP/1\\.0\" nextgroup=status skipwhite")
  api.nvim_command("syntax match version \"HTTP/1\\.1\" nextgroup=status skipwhite")
  api.nvim_command("syntax match version \"HTTP/2\" nextgroup=status skipwhite")
  api.nvim_command("syntax match version \"HTTP/\\*\" nextgroup=status skipwhite")

  api.nvim_command("syntax match comment \"#.*$\"")
  api.nvim_command("syntax match section \"\\[QueryStringParams\\]\"")
  api.nvim_command("syntax match section \"\\[FormParams\\]\"")
  api.nvim_command("syntax match section \"\\[MultipartFormData\\]\"")
  api.nvim_command("syntax match section \"\\[Cookies\\]\"")
  api.nvim_command("syntax match section \"\\[Captures\\]\"")
  api.nvim_command("syntax match section \"\\[Asserts\\]\"")
  api.nvim_command("syntax match section \"\\[Options\\]\"")
  api.nvim_command("syntax match status \"[0-9]\\+\" contained")
  api.nvim_command("syntax keyword operator == != > >= < <= not")
  api.nvim_command("syntax keyword query status url header cookie body jsonpath xpath regex variable duration sha256 md5 bytes")
  api.nvim_command("syntax keyword predicate startsWith endsWith matches exists includes isInteger isFloat isBoolean isString isCollection")
  api.nvim_command("syntax match predicate \"contains\"")
  api.nvim_command("syntax keyword filter count regex urlEncode urlDecode htmlEscape htmlUnescape")
  api.nvim_command("syntax match escapeNumberSign \"\\\\#\"")
  api.nvim_command("syntax match escapeQuote \"\\\\\"\"")
  api.nvim_command("syntax region string start='\"' end='\"' contains=predicate,escapeQuote")
  api.nvim_command("syntax region string start='```' end='```'")
  api.nvim_command("syntax include @jsonSyntax syntax/json.vim")
  api.nvim_command("syntax region json start='{' end='}' contains=@jsonSyntax contained")
  api.nvim_command("syntax region template start='{{' end='}}'")

  api.nvim_command("highlight def link comment Comment")
  api.nvim_command("highlight def link method Statement")
  api.nvim_command("highlight def link url Underlined")
  api.nvim_command("highlight def link version Statement")
  api.nvim_command("highlight def link status Number")
  api.nvim_command("highlight def link section Statement")
  api.nvim_command("highlight def link operators Operator")
  api.nvim_command("highlight def link string String")
  api.nvim_command("highlight def link query Identifier")
  api.nvim_command("highlight def link filter Operator")
  api.nvim_command("highlight def link predicate Operator")
  api.nvim_command("highlight def link template Identifier")
  api.nvim_command("highlight def link escapeQuote SpecialChar")
  api.nvim_command("highlight def link escapeNumberSign SpecialChar")
end

return M
