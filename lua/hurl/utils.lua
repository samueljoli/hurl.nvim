local utils = {}

utils.default_options = {
  comment          = "Comment",
  method           = "Statement",
  url              = "Underlined",
  version          = "Statement",
  status           = "Number",
  section          = "Statement",
  operators        = "Operator",
  string           = "String",
  query            = "Identifier",
  filter           = "Operator",
  predicate        = "Operator",
  template         = "Identifer",
  escapeQuote      = "SpecialChar",
  escapeNumberSign = "SpecialChar"
}

function utils.validate_options(opts)
  for key, value in pairs(opts) do
    if not utils.default_options[key] then
      error("plugin options contains unexpected key: " .. key)
    end

    local found = false

    local highlight_groups = vim.fn.getcompletion('', 'highlight')

    for _, group in ipairs(highlight_groups) do
      if value == group then
        found = true
        break
      end
    end

    if not found then
      error(string.format("hurl.nvim plugin option %s has invalid value of %s", key, value))
    end
  end
end

return utils
