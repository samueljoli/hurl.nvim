local utils = require('hurl.utils')

local api = vim.api

local M = {}

function M.setup(opts)

  opts = opts or {}

  -- validate and merge options. will throw if passed invalid hex code
  local settings = utils.merge(opts)

  -- enable syntax
  api.nvim_command("syntax enable")

  -- keywords
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

  -- highlight groups
  api.nvim_command(string.format("highlight def link comment %s", settings.comment))
  api.nvim_command(string.format("highlight def link method %s", settings.method))
  api.nvim_command(string.format("highlight def link url %s", settings.url))
  api.nvim_command(string.format("highlight def link version %s", settings.version))
  api.nvim_command(string.format("highlight def link status %s", settings.status))
  api.nvim_command(string.format("highlight def link section %s", settings.section))
  api.nvim_command(string.format("highlight def link operators %s", settings.operators))
  api.nvim_command(string.format("highlight def link string %s", settings.string))
  api.nvim_command(string.format("highlight def link query %s", settings.query))
  api.nvim_command(string.format("highlight def link filter %s", settings.filter))
  api.nvim_command(string.format("highlight def link predicate %s", settings.predicate))
  api.nvim_command(string.format("highlight def link template %s", settings.template))
  api.nvim_command(string.format("highlight def link escapeQuote %s", settings.escapeQuote))
  api.nvim_command(string.format("highlight def link escapeNumberSign %s", settings.escapeNumberSign))
end

return M

