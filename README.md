# hurl.nvim
Lua port of syntax highlighting for [Hurl](https://github.com/Orange-OpenSource/hurl)

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
This plugin allows you to customize several syntax match rules as originally defined by `hurl`. If no configuration is provided, the plugin will use your colorscheme's default highlight groups.

**Example:**
```lua
  use {
    'samueljoli/hurl.nvim',
    config = function()
      require('hurl').setup({
        comment          = "#ebc021", -- default => Comment
        method           = "#fffc58", -- default => Statement
        url              = "#fffc58", -- default => Underlined
        version          = "#032ea7", -- default => Statement
        status           = "#032ea7", -- default => Number
        section          = "#032ea7", -- default => Statement
        operators        = "#c592ff", -- default => Operator
        string           = "#032ea7", -- default => String
        query            = "#d57bff", -- default => Identifier
        filter           = "#032ea7", -- default => Operator
        predicate        = "#032ea7", -- default => Operator
        template         = "#032ea7", -- default => Identifier
        escapeQuote      = "#032ea7", -- default => SpecialChar
        escapeNumberSign = "#032ea7", -- default => SpecialChar
      })
    end
  }
```

<div>
  <details>
    <summary><strong>List of supported syntax match rules:</strong></summary>
    <ul>
      <li><code>comment</code></li>
      <li><code>method</code>
        <ul>
          <li><code>GET</code></li>
          <li><code>POST</code></li>
          <li><code>PUT</code></li>
          <li><code>PATCH</code></li>
          <li><code>DELETE</code></li>
          <li><code>CONNECT</code></li>
          <li><code>OPTIONS</code></li>
          <li><code>TRACE</code></li>
          <li><code>LINK</code></li>
          <li><code>UNLINK</code></li>
          <li><code>PURGE</code></li>
          <li><code>LOCK</code></li>
          <li><code>UNLOCK</code></li>
          <li><code>PROPFIND</code></li>
          <li><code>VIEW</code></li>
        </ul>
      </li>
      <li><code>url</code></li>
      <li><code>version</code>
        <ul>
          <li><code>HTTP</code></li>
          <li><code>HTTP/1.0</code></li>
          <li><code>HTTP/1.1</code></li>
          <li><code>HTTP/2</code></li>
          <li><code>HTTP/*</code></li>
        </ul>
      </li>
      <li><code>status</code>
        <ul>
          <li><code>[0-9]</code></li>
        </ul>
      </li>
      <li><code>section</code>
        <ul>
          <li><code>[Asserts]</code></li>
          <li><code>[Captures]</code></li>
          <li><code>[Cookies]</code></li>
          <li><code>[FormParams]</code></li>
          <li><code>[MultipartFormData]</code></li>
          <li><code>[Options]</code></li>
          <li><code>[QueryStringParams]</code></li>
        </ul>
      </li>
      <li><code>operators</code>
        <ul>
          <li><code>==</code></li>
          <li><code>!=</code></li>
          <li><code>&gt;</code></li>
          <li><code>&gt;=</code></li>
          <li><code>&lt;</code></li>
          <li><code>&lt;=</code></li>
        </ul>
      </li>
      <li><code>string</code></li>
      <li><code>query</code>
        <ul>
          <li><code>status</code></li>
          <li><code>url</code></li>
          <li><code>header</code></li>
          <li><code>cookie</code></li>
          <li><code>body</code></li>
          <li><code>jsonpath</code></li>
          <li><code>xpath</code></li>
          <li><code>regex</code></li>
          <li><code>variable</code></li>
          <li><code>duration</code></li>
          <li><code>sha256</code></li>
          <li><code>md5</code></li>
          <li><code>bytes</code></li>
        </ul>
      </li>
    </ul>
  </details>
</div>

🚨 If an invalid hex code is passed, the plugin will use the fallback syntax match rule and log the key-value pair to the console. To view the log, check Vim's `:messages`.

## Examples

>[cyberpunk](https://github.com/samueljoli/cyberpunk.nvim)
<img width="584" alt="Screen Shot 2023-04-06 at 6 57 08 PM" src="https://user-images.githubusercontent.com/12755671/230509374-ae1f50cc-ef8f-40c0-9274-b0cfb2c143e8.png">

>[gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
<img width="600" alt="Screen Shot 2023-04-06 at 6 57 29 PM" src="https://user-images.githubusercontent.com/12755671/230509392-df4c0881-52d0-446c-a7d8-bc98b6572524.png">

>[noctis](https://github.com/kartikp10/noctis.nvim)
<img width="587" alt="Screen Shot 2023-04-06 at 6 58 26 PM" src="https://user-images.githubusercontent.com/12755671/230509403-2a1a95ca-4bd7-4f93-90dc-ee237b899276.png">

