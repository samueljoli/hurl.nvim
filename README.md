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

## Screenshots
>[cyberpunk](https://github.com/samueljoli/cyberpunk.nvim)
<img width="584" alt="Screen Shot 2023-04-06 at 6 57 08 PM" src="https://user-images.githubusercontent.com/12755671/230509374-ae1f50cc-ef8f-40c0-9274-b0cfb2c143e8.png">

>[gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
<img width="600" alt="Screen Shot 2023-04-06 at 6 57 29 PM" src="https://user-images.githubusercontent.com/12755671/230509392-df4c0881-52d0-446c-a7d8-bc98b6572524.png">

>[noctic](https://github.com/kartikp10/noctis.nvim)
<img width="587" alt="Screen Shot 2023-04-06 at 6 58 26 PM" src="https://user-images.githubusercontent.com/12755671/230509403-2a1a95ca-4bd7-4f93-90dc-ee237b899276.png">


## Configuration
This plugin allows you to customize several syntax match rules as originally defined by `hurl`:

**Example:**
```lua
  use {
    'samueljoli/hurl.nvim',
    config = function()
      require('hurl').setup({
        method    = "#fffc58",
        url       = "#fffc58",
        query     = "#d57bff",
        operators = "#c592ff",
      })
    end
  }
```

**List of supported syntax match rules:**
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

> If left unconfigured it will fallback to your colorscheme defined highlight groups. Syntax match rule to default highlight group mapping:

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

> 🚨 If passed an invalid hex code, this will utilize the fallback for that provided syntax match rule and print to console helpful information. Refer to vim's `:messages` to view log.


