# lit-coro-http-nvim.nvim

This repo is a fork of [luvit/lit](https://github.com/luvit/lit), with the goal of removing all functionalities that are not related to HTTP(S) client and server functionalities and to integrate with NeoVIM's internal libuv interface (`vim.uv`), instead of depending on the libuv (`uv`) module directly.

This task was done years ago in the [coro-http-luv](https://github.com/squeek502/coro-http-luv) repository, although that project was focusing on integrating with `luv` instead of `uv`. I made most of the changes that were present there, while maintaining a fork link in github to `luvit/lit`. At the time of the creation, the `root-ca.dat` remained unchanged, thus I used the same `root-ca.lua` that squeek502 did.

## Changes from the Lit version

- The sources are now in a `lit-coro-http-nvim` module
- `root_ca.dat` in `secure-socket` replaced with `root_ca.lua`, which uses a string literal for the binary data (encoded by [arbitrary-binary-string](https://github.com/squeek502/lua-arbitrary-binary-string))
- `require('uv')` replaced with `vim.uv`

## Usage

```lua
local http = require 'lit-coro-http-nvim.coro-http'
local unpack = table.unpack or unpack

coroutine.wrap(function()
  local res, data = http.request('GET', 'http://localhost/')

  -- status code
  print(res.code)

  -- print headers
  for i = 1, #res do
    local key, value = unpack(res[i])
    print(key, value)
  end

  -- print response body
  print(data)
end)()
```
