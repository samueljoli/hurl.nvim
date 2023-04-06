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
  for key, _ in pairs(opts) do
    if not utils.default_options[key] then
      error("plugin options contains unexpected key: " .. key)
    end
  end
end

local function upcase(word)
  return string.upper(string.sub(word, 1, 1)) .. string.sub(word, 2)
end

local function make_custom_hightlight(key, value)
  local custom_highlight = string.format("HurlCustom%s", upcase(key))

  vim.cmd(string.format("highlight %s guifg=%s", custom_highlight, value))

  return custom_highlight
end

function utils.merge(opts)
  for key, value in pairs(opts) do
    local is_valid_hex = string.match(value, "^#(%x%x%x%x%x%x)$") ~= nil

    if is_valid_hex then
      if key == "comment" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "method" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "url" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "version" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "status" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "section" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "operators" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "string" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "query" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "filter" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "predicate" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "template" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "escapeQuote" then
        opts[key] = make_custom_hightlight(key, value)
      end
      if key == "escapeNumberSign" then
        opts[key] = make_custom_hightlight(key, value)
      end
    else
      print(string.format("plugin option: %s, contains invalid hex code: %s", key, value))
    end
  end

  local settings = vim.tbl_deep_extend("force", {}, utils.default_options, opts)

  return settings
end

return utils
