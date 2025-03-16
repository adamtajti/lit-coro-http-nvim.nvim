local _MODREV, _SPECREV = "scm", "-1"
---@diagnostic disable-next-line: lowercase-global rockspec global variable
rockspec_format = "3.0"
---@diagnostic disable-next-line: lowercase-global rockspec global variable
package = "lit-coro-http-nvim.nvim"
---@diagnostic disable-next-line: lowercase-global rockspec global variable
version = _MODREV .. _SPECREV

---@diagnostic disable-next-line: lowercase-global rockspec global variable
description = {
	summary = "lit-coro-http-nvim.nvim provides coro-http from lit tuned to lua",
	labels = { "neovim", "plugin", "http" },
	detailed = "lit-coro-http-nvim.nvim provides coro-http from lit tuned to lua",
	homepage = "http://github.com/adamtajti/lit-coro-http-nvim.nvim",
	license = "MIT",
}

---@diagnostic disable-next-line: lowercase-global rockspec global variable
dependencies = {
	"lua == 5.1",
}

---@diagnostic disable-next-line: lowercase-global rockspec global variable
source = {
	url = "git://github.com/adamtajti/lit-coro-http-nvim.nvim",
}

---@diagnostic disable-next-line: lowercase-global rockspec global variable
build = {
	type = "builtin",
}
