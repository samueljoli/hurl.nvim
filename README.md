# hurl.nvim
Neovim port syntax highlighting for [Hurl](https://github.com/Orange-OpenSource/hurl)

## Installation

#### Packer 
```vim
use 'samueljoli/hurl.nvim'
```

#### Plug
```vim
Plug 'samueljoli/hurl.nvim'
```

## Configuration
This plugin allows you to fully customize the following syntax match rules:
+ `comment`
+ `method`
  + `GET`
  + `POST`
  + `PUT`
  + `PATCH`
  + `DELETE`
  + `CONNECT`
  + `OPTIONS`
  + `TRACE`
  + `LINK`
  + `UNLINK`
  + `PURGE`
  + `LOCK`
  + `UNLOCK`
  + `PROPFIND`
  + `VIEW`
+ `url`
+ `version`
  + `HTTP`
  + `HTTP/1.0`
  + `HTTP/1.1`
  + `HTTP/2`
  + `HTTP/*`
+ `status`
  + `[0-9]`
+ `section`
  + `[Asserts]`
  + `[Captures]`
  + `[Cookies]`
  + `[FormParams]`
  + `[MultipartFormData]`
  + `[Options]`
  + `[QueryStringParams]`
+ `operators`
  + `==`
  + `!=`
  + `>`
  + `>=`
  + `<`
  + `<=`
+ `string`
+ `query`
  + `status`
  + `url`
  + `header`
  + `cookie`
  + `body`
  + `jsonpath`
  + `xpath`
  + `regex`
  + `variable`
  + `duration`
  + `sha256`
  + `md5`
  + `bytes`
+ `filter`
  + `count`
  + `regex`
  + `urlEncode`
  + `urlDecode`
  + `htmlEscape`
  + `htmlUnescape`
+ `predicate`
  + `startsWith`
  + `endsWith`
  + `matches`
  + `exists`
  + `includes`
  + `isInteger`
  + `isFloat`
  + `isBoolean`
  + `isString`
  + `isCollection`
+ `template`
  + `{{ }}`
+ `escapeQuote`
+ `escapeNumber`

**Example:**
```lua
  use {
    'samueljoli/hurl.nvim',
    config = function()
      require('hurl').setup({
        method = "#fffc58",
        url = "#fffc58",
        query = "#d57bff",
        operators = "#c592ff",
      })
    end
  }
```

> If left unconfigured it will fallback to your colorscheme defined highlight groups. Default syntax match to highlight group mapping:

```vim
highlight def link comment Comment
highlight def link method Statement
highlight def link url Underlined
highlight def link version Statement
highlight def link status Number
highlight def link section Statement
highlight def link operators Operator
highlight def link string String
highlight def link query Identifier
highlight def link filter Operator
highlight def link predicate Operator
highlight def link template Identifier
highlight def link escapeQuote SpecialChar
highlight def link escapeNumberSign SpecialChar
```

> 🚨 If passed an invalid hex code, this will utilize the fallback for the provided syntax match and print to console helpful information. For debugging purposes refer to vim's `:messages`.


